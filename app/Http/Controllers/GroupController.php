<?php

namespace App\Http\Controllers;

use App\Models\CarDriver;
use App\Models\Location;
use App\Models\Request as ModelsRequest;
use App\Models\TimeET;
use Carbon\Carbon;
use Illuminate\Http\Request;
use GuzzleHttp\Client;
use SebastianBergmann\CodeCoverage\Driver\Driver;

class GroupController extends Controller
{
    public function index()
    {
        $listGroup = \App\Models\Group::where('status', 0)->orderBy('start', 'asc')->get();

        return view('groups.index', compact('listGroup'));
    }

    public function automaticArrange(Request $request)
    {
        // lấy ngày đầu tiên và ngày cuối cùng của tuần tới
        // $startOfWeek = Carbon::now()->addWeek()->startOfWeek()->toDateString();

        // $endOfWeek = Carbon::now()->addWeek()->endOfWeek()->toDateString();

        $startOfWeek = \Carbon\Carbon::create(2024, 11, 18)->startOfDay();
        $endOfWeek = \Carbon\Carbon::create(2024, 11, 22)->endOfDay();

        // xử lí lấy toàn bộ request trong tuần tới
      
        $morningRequest = \App\Models\Request::whereTime('datetime', '<', '12:00:00')
            ->get();
        $afternoonRequest = \App\Models\Request::whereTime('datetime', '>=', '12:00:00')
            ->get();
        //    $freeRequest = \App\Models\Request::whereBetween('datetime', [$startOfWeek, $endOfWeek])->whereTime('datetime', '<', '12:00:00')->where(function ($query) {
        //     $query->whereNull('province_to')
        //           ->orWhereNull('province_from');
        //     })->get();
        // $this->updateRequest($morningRequest);
        // $this->updateRequest($afternoonRequest);
        // $freeRequest = \App\Models\Request::whereTime('datetime', '<', '12:00:00')->where(function ($query) {
        // $query->whereNull('province_to')
        //       ->orWhereNull('province_from');
        // })->get();

        $this->groupMorningRequest($morningRequest);
        $this->groupAfternoonRequest($afternoonRequest);

        // $this->createFreeGroup($freeRequest);
        $this->agreeArrange();


        return redirect()->route('groups.index');
    }

    private function updateRequest($listRequest)
    {
        $listTimeET = TimeET::all();
        foreach ($listRequest as $request) {
            $existTime = $listTimeET->filter(function ($item) use ($request) {
                return ($item->from_id == $request->location_from_id && $item->to_id == $request->location_to_id) || ($item->from_id == $request->location_to_id && $item->to_id == $request->location_from_id);
            })->first();

            if ($existTime) {
                ModelsRequest::where('id', $request->id)->update([
                    'time_et' => $existTime->time_et,
                ]);
            }

            $this->updateDistanceToDestination($request->location_from_id, $request->location_to_id, $request->id);
        }
    }

    private function createFreeGroup($freeRequests)
    {
        if ($freeRequests->count() == 0) {
            return;
        }

        $requestTime = $freeRequests->sortBy('datetime')->first();

        $group = \App\Models\Group::create([
            'start' => $requestTime->datetime,
            'end' => "",
            'location_from_name' => "",
            'location_to_name' => "",
            'province_from' => "",
            'province_to' => "",
        ]);

        foreach ($freeRequests as $request) {
            $request->group_id = $group->id;
            $request->save();
        }
    }

    private function groupMorningRequest($morningRequest)
    {
        // gom nhóm những request trong buổi sáng theo tiêu trí ngày - địa điểm đến - tỉnh thành đi
        $groupMorningRequests = $morningRequest->groupBy(function ($item) {
            $date = \Carbon\Carbon::parse($item->datetime)->format('Y-m-d');
            return $date . '|' . $item->location_to_id . '|' . $item->province_from;
        });

        // xử lí insert data vào các nhóm
        $this->createGroup($groupMorningRequests);
    }

    private function groupAfternoonRequest($afternoonRequest)
    {
        $groupAfternoonRequests = $afternoonRequest->groupBy(function ($item) {
            $date = \Carbon\Carbon::parse($item->datetime)->format('Y-m-d');
            return $date . '|' . $item->location_from_id . '|' . $item->province_to;
        });

        $this->createGroup($groupAfternoonRequests, false);
    }

    private function updateDistanceToDestination($from, $to, $requestId)
    {

        $locationFrom = Location::find($from);
        $locationTo  = Location::find($to);

        $baseUrl = 'https://atlas.microsoft.com/route/directions/json';
        $queryParams = [
            'api-version' => '1.0',
            'query' => $locationFrom->coordinates . ':' . $locationTo->coordinates,
            'report' => 'effectiveSettings',
            'subscription-key' => '3BrozkErr1znyKln8YrvsVWp7f7n3Jw9Wle8C4VaoLsZW7VZ4ajWJQQJ99BAACYeBjFy8cuZAAAgAZMP2Kng',
        ];

        try {
            $client = new Client();
            $response = $client->get($baseUrl, [
                'query' => $queryParams,
            ]);

            // Parse JSON response
            $data = json_decode($response->getBody(), true);

            // Lấy thời gian di chuyển (travelTimeInSeconds)
            $travelTimeInSeconds = $data['routes'][0]['summary']['travelTimeInSeconds'] ?? null;

            if ($travelTimeInSeconds  === null) {
                return response()->json([
                    'error' => 'Không tìm thấy thời gian di chuyển trong response.'
                ], 400);
            }

            ModelsRequest::where('id', $requestId)->update([
                'time_et' => $travelTimeInSeconds,
            ]);

            return response()->json($data);
        } catch (\Exception $e) {
            return response()->json([
                'error' => $e->getMessage(),
            ], 500);
        }
    }

    private function createGroup($groupedRequests, $isGroupMorning = true)
    {
        $listCarDriver = \App\Models\CarDriver::all();
        // xử lí sort bên trong $groupedRequests
        foreach ($groupedRequests as $key => $requests) {
            $requests = $this->sortRequestInGroup($requests);
            // cần xử lí nếu nhóm nào quá số người chở của tài xế cần tách nhóm mới
            $carDriver = $listCarDriver
                ->where('parking_lot', $requests[0]->province_from)
                ->sortByDesc('seat_limit')
                ->first();

            $group1 = $requests;
            $group2 = null;
            $totalRequests = $requests->count();
            if ($carDriver &&  $totalRequests > $carDriver->seat_limit) {
                $half = intdiv($totalRequests, 2); // Chia nguyên cho 2
                if ($totalRequests % 2 !== 0) {
                    $half += 1; // Nếu lẻ, nhóm 1 sẽ nhiều hơn nhóm 2 đúng 1 người
                }
                $group1 = $requests->take($half)->values();
                $group2 = $requests->skip($half)->values();
            }

            $this->insertGroup($group1, $isGroupMorning);

            if ($group2 && $group2->count() > 0) {
                $this->insertGroup($group2, $isGroupMorning);
            }
        }
    }

    private function insertGroup($requests, $isGroupMorning)
    {
        $locationFromNames = $isGroupMorning ? $requests->pluck('location_from_name')->implode(', ') : $requests[0]->location_from_name;
        $locationToNames = $isGroupMorning ? $requests[0]->location_to_name : $requests->pluck('location_to_name')->implode(', ');
        $requestTime = $isGroupMorning ? $requests->sortBy('datetime')->first() : $requests->sortByDesc('datetime')->first();

        $listPointOfRequest = $this->getListPointOfRequest($requests);

        $listDatimeET = [];
        $end =  Carbon::parse($requestTime->datetime)->addSeconds($requestTime->time_et);

        if (count($listPointOfRequest) > 1) {
            $listDatimeET = $this->calculateTravelTimeWithGuzzle($listPointOfRequest, $requestTime->datetime);
            $end = Carbon::parse(end($listDatimeET))->addSeconds($requests->last()->time_et);
        }

        $group = \App\Models\Group::create([
            'start' => $requestTime->datetime,
            'end' => $end,
            'location_from_name' => $locationFromNames,
            'location_to_name' => $locationToNames,
            'province_from' => $requests[0]->province_from,
            'province_to' => $requests[0]->province_to,
            'priority' => $requests->min('priority_user'),
        ]);

        foreach ($requests as $key => $request) {
            \App\Models\Request::where('id', $request->id)->update([
                'group_id' => $group->id,
                'start' => count($listPointOfRequest) > 1 ? Carbon::createFromFormat('Y-m-d H:i:s', $listDatimeET[$key])->format('H:i:s') : Carbon::createFromFormat('Y-m-d H:i:s', $requestTime->datetime)->format('H:i:s')
            ]);
        }
    }

    private function getListPointOfRequest($requests)
    {
        $listLocation = Location::pluck('coordinates', 'id')->toArray();
        $points = [];
        foreach ($requests as $request) {
            $points[] =  $listLocation[$request->location_from_id];
        }

        return $points;
    }

    private function calculateTravelTimeWithGuzzle($points, $startTime)
    {
        // Khởi tạo client Guzzle
        $client = new Client();

        // Tạo query cho API (nối các điểm lại với dấu :)
        $query = implode(':', $points);

        // API Azure Maps
        $apiUrl = 'https://atlas.microsoft.com/route/directions/json';
        $apiKey = '3BrozkErr1znyKln8YrvsVWp7f7n3Jw9Wle8C4VaoLsZW7VZ4ajWJQQJ99BAACYeBjFy8cuZAAAgAZMP2Kng'; // Thay bằng subscription-key thực của bạn

        // Convert thời gian bắt đầu (7h30 PM) sang định dạng ISO8601
        $departureTime = date('Y-m-d\TH:i:s', strtotime($startTime));

        // Gửi request tới Azure Maps
        $response = $client->get($apiUrl, [
            'query' => [
                'api-version' => '1.0',
                'query' => $query,
                'departureTime' => $departureTime,
                'subscription-key' => $apiKey,
            ],
        ]);

        // Xử lý response
        $data = json_decode($response->getBody(), true);
        $routes = $data['routes'][0]['legs'];

        // Tính thời gian tại từng điểm
        $currentTime = strtotime($startTime); // Thời gian hiện tại (giây)
        $result[] = date('Y-m-d H:i:s', $currentTime);
        foreach ($routes as $index => $route) {
            $travelDuration = $route['summary']['travelTimeInSeconds']; // Thời gian di chuyển
            $currentTime += $travelDuration; // Cộng thêm thời gian di chuyển

            // $result[] = [
            //     'point' => $points[$index + 1], // Điểm đến (b, c, ...)
            //     'arrivalTime' => date('H:i:s', $currentTime), // Thời gian đến
            //     'travelDuration' => $travelDuration, // Thời gian di chuyển (giây)
            // ];
            $result[] =  date('Y-m-d H:i:s', $currentTime);
        }

        return $result;
    }

    // sắp xếp các request trong 1 nhóm dựa vào độ ưu tiên:
    // Guest sẽ được đón trước nếu cùng Guest thì dựa vào priority_level(ASC)
    // THK sẽ được đón sau đó, nếu cùng THK thì dựa vào priority_level(ASC)
    // Cuối cùng sẽ là THKVN, nếu cùng THKVN sẽ dựa vào priority_level nhưng sẽ sort theo DESC 

    private function sortRequestInGroup($groupedRequests)
    {
        // Nhóm các phần tử theo time_et trước để giữ các time_et giống nhau gần nhau
        $groupedByTime = $groupedRequests->groupBy('time_et');

        // Sắp xếp từng nhóm theo role_user DESC, sau đó giữ nguyên thứ tự time_et
        $sortedGroups = $groupedByTime->map(function ($requests) {
            return $requests->sortByDesc('role_user')->values();
        });

        // Gộp các nhóm theo thứ tự time_et giảm dần
        return $sortedGroups->sortKeysDesc()->flatten(1);
    }

    // ví dụ đi từ A, B, C qua X, thì set time từ A-X, B-X, C-X cái nào to nhất láy time đó, với mỗi địa điểm A,B,C để di chuyển tới mất khoảng 30 P
    // Tổng thời gian di chuyển từ A,B,C qua X là 30 * 3 + thời gian lớn nhất từ A, B, C qua X 
    private function getEndTimeGroup($locationFromName, $locationToName, $dateTimeStart)
    {
        // lấy danh sách timeET của hệ thống
        $timeET = \App\Models\TimeET::all();

        $arrayLocationFrom = explode(',', $locationFromName);

        $arrayLocationTo = explode(',', $locationToName);

        $arrayMultipleLocation = count($arrayLocationFrom) >= count($arrayLocationTo) ? $arrayLocationFrom : $arrayLocationTo;
        $onlyLocation =  count($arrayLocationFrom) < count($arrayLocationTo) ? $arrayLocationFrom[0] : $arrayLocationTo[0];

        $listTime = [];
        foreach ($arrayMultipleLocation as $multipleLocationItem) {
            // Lọc các bản ghi có location_from_name và location_to_name phù hợp
            $timeEt = $timeET->where('location_from_name', $onlyLocation)
                ->where('location_to_name', $multipleLocationItem)->first();

            if ($timeEt) {
                // Lưu bản ghi vào mảng kết quả
                $listTime[] = $timeEt->time;
            }
        }

        // sort thời gian theo thứ tự từ lớn đến nhỏ
        rsort($listTime);

        $totalTime = count($arrayLocationFrom) * 30;

        if (count($listTime) > 0) {
            $totalTime += $listTime[0];
        }

        return $dateTimeStart->addMinutes($totalTime);
    }

    public function agreeArrange()
    {
        $listDriver = \App\Models\CarDriver::all();
        $groupedDrivers = $listDriver->groupBy('parking_lot')
            ->map(function ($group) {
                return $group->sortBy('car_priority');
            });

        $listGroup = \App\Models\Group::where('status', 0)
            ->with('groupRequests')
            ->get();

        // sort group theo độ ưu tiên 
        $listGroup = $listGroup->map(function ($group) {
            $group->min_priority = $group->groupRequests->min('priority_user');
            return $group;
        })->sortBy('min_priority')->values();

        // danh sách những tài xế chở khách vào buổi sáng, phục vụ cho việc ưu tiên khứu hồi vào buổi chiều
        $driverInTrip = [];
        $roundTripDestination = [];
        $timeDriverBlock = [];

        foreach ($listGroup as $key => $group) {
            $drivers = $groupedDrivers[trim($group->province_from)] ?? null;

            if (!$group->province_from || !$group->province_to || !$drivers) {
                continue;
            }

            $drivers = $drivers->filter(function ($driver) use ($group) {
                return $driver->seat_limit >= $group->groupRequests->count();
            })->sortBy('car_priority')->values();


            $oldDriverId = null;
            // ưu tiên tài xế khứu hồi
            if (array_key_exists($group->location_from_name . $group->province_to, $roundTripDestination)) {

                $oldDriverId = $roundTripDestination[$group->location_from_name . $group->province_to];
                // check thêm thời gian của người đó có nằm trong list block hay không
                $oldDriverId = $this->checkTimeDriverBlock($timeDriverBlock[$oldDriverId], $group->start, $group->end) ? null : $oldDriverId;

                // check xe có đủ chỗ không
                $oldDriverId = $oldDriverId ? (CarDriver::find($oldDriverId)->seat_limit >= $group->groupRequests->count() ? $oldDriverId : null) : null;
            }

            if ($oldDriverId) {
                $driverInTrip[$oldDriverId] = array_key_exists($oldDriverId, $driverInTrip) ? $driverInTrip[$oldDriverId] + 1 : 1;

                \App\Models\Group::where('id', $group->id)->update([
                    'driver_id' => $oldDriverId,
                    'driver_name' => $listDriver->where('id', $oldDriverId)->first()->driver_name,
                    'status' => 0,
                ]);

                $timeDriverBlock[$oldDriverId][] =  ['from' => $group->start, 'to' => $group->end];

                $roundTripDestination[$group->location_to_name . $group->province_from] = $oldDriverId;

                continue;
            }

            foreach ($drivers as $k => $driver) {
                // check trong danh sách các driver này, nếu driver nào bị block time thì chuyển sang driver khác
                if (array_key_exists($driver->id, $timeDriverBlock) && $this->checkTimeDriverBlock($timeDriverBlock[$driver->id],  $group->start, $group->end)) {
                    continue;
                }

                // check nếu tài xế chưa hoàn thành chuyến khứu hồi thì bỏ qua
                if (!$oldDriverId && array_key_exists($driver->id, $driverInTrip) && $driverInTrip[$driver->id] % 2 != 0) {
                    continue;
                }

                $driverId = $oldDriverId ?? $driver->id;

                $driverInTrip[$driverId] = array_key_exists($driverId, $driverInTrip) ? $driverInTrip[$driverId] + 1 : 1;



                \App\Models\Group::where('id', $group->id)->update([
                    'driver_id' => $driverId,
                    'driver_name' => $listDriver->where('id', $driverId)->first()->driver_name,
                    'status' => 0,
                ]);

                $timeDriverBlock[$driver->id][] =  ['from' => $group->start, 'to' => $group->end];

                $roundTripDestination[$group->location_to_name . $group->province_from] = $driver->id;
                break;
            }
        }

        return redirect()->route('groups.index');
    }

    // $startTime nằm trong khoảng $from - $to.
    // $endTime nằm trong khoảng $from - $to.
    // $from nằm trong khoảng $startTime - $endTime.
    // $to nằm trong khoảng $startTime - $endTime.
    private function checkTimeDriverBlock($timeDriverBlock, $startTime, $endTime)
    {
        $startTime = Carbon::parse($startTime);
        $endTime = Carbon::parse($endTime);

        foreach ($timeDriverBlock as $block) {
            $from = Carbon::parse($block['from']);
            $to = Carbon::parse($block['to']);

            // Kiểm tra nếu hai khoảng thời gian giao nhau
            if (
                $startTime->between($from, $to) ||
                $endTime->between($from, $to) ||
                $from->between($startTime, $endTime) ||
                $to->between($startTime, $endTime)
            ) {
                return true;
            }
        }

        return false;
    }

    public function generateTimeETForLocation()
    {
        $locations = Location::all();
        for ($i = 0; $i < $locations->count(); $i++) {
            for ($j = $i + 1; $j < $locations->count(); $j++) {
                $location1 = $locations[$i];
                $location2 = $locations[$j];

                $baseUrl = 'https://atlas.microsoft.com/route/directions/json';
                $queryParams = [
                    'api-version' => '1.0',
                    'query' => $location1->coordinates . ':' . $location2->coordinates,
                    'report' => 'effectiveSettings',
                    'subscription-key' => '3BrozkErr1znyKln8YrvsVWp7f7n3Jw9Wle8C4VaoLsZW7VZ4ajWJQQJ99BAACYeBjFy8cuZAAAgAZMP2Kng',
                ];

                $client = new Client();
                $response = $client->get($baseUrl, [
                    'query' => $queryParams,
                ]);

                // Parse JSON response
                $data = json_decode($response->getBody(), true);

                // Lấy thời gian di chuyển (travelTimeInSeconds)
                $travelTimeInSeconds = $data['routes'][0]['summary']['travelTimeInSeconds'] ?? null;

                TimeET::create([
                    'from_id' => $location1->id,
                    'to_id' => $location2->id,
                    'time_et' => $travelTimeInSeconds,
                ]);
            }
        }
    }
}
