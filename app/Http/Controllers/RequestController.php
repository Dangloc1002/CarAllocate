<?php

namespace App\Http\Controllers;

use DateTime;
use Illuminate\Http\Request;

class RequestController extends Controller
{
    public function __construct()
    {
        $this->status = [
            'Waitting' => 0,
            'Arranged' => 1,
            'Canceled' => 2,
        ];
    }
    
    public function index()
    {
        $requests = \App\Models\Request::all();
        return view('requests.index', compact('requests'));
    }

    public function create()
    {
        $locations = \App\Models\Location::all();
        $groups = \App\Models\Group::all();
        $drivers = \App\Models\CarDriver::all();
        $userPriorities = \App\Models\UserPriority::all();
        return view('requests.create', compact('locations', 'groups', 'userPriorities', 'drivers'));
    }

    public function store(Request $request)
    {
        $data = $request->only(['passenger_id', 'guest', 'datetime', 'driver_id', 'location_from_id', 'location_to_id', 'phone', 'email', 'has_lunch', 'note']);

        $datetime = DateTime::createFromFormat('m/d/Y h:i A', $data['datetime']);
        $data['datetime'] = $datetime->format('Y-m-d H:i:s');

        // $driver = \App\Models\CarDriver::where('id', $request->get('driver_id'))->first();
        // $data['driver_name'] = $driver->driver_name;

        $passenger = \App\Models\UserPriority::where('id', $request->get('passenger_id'))->first();
        $data['passenger'] = $passenger->name;

        $locationFrom = \App\Models\Location::where('id', $request->get('location_from_id'))->first();
        $data['location_from_name'] = $locationFrom->name;

        $locationTo = \App\Models\Location::where('id', $request->get('location_to_id'))->first();
        $data['location_to_name'] = $locationTo->name;

        $data['status'] = $this->status['Waitting'];

        \App\Models\Request::create($data);
        return redirect()->route('requests.index')->with('success', 'Request created successfully.');
    }

    public function show($id)
    {
        $request = \App\Models\Request::find($id);
        return view('requests.show', compact('request'));
    }

    public function edit($id)
    {
        $request = \App\Models\Request::find($id);
        $locations = \App\Models\Location::all();
        $groups = \App\Models\Group::all();
        $userPriorities = \App\Models\UserPriority::all();
        return view('requests.edit', compact('request', 'locations', 'groups', 'userPriorities'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'location_id' => 'required',
            'group_id' => 'required',
            'user_priority_id' => 'required',
            'description' => 'required',
        ]);

        $request = \App\Models\Request::find($id);
        $request->update($request->all());
        return redirect()->route('requests.index')->with('success', 'Request updated successfully.');
    }

    public function destroy($id)
    {
        $request = \App\Models\Request::find($id);
        $request->delete();
        return redirect()->route('requests.index')->with('success', 'Request deleted successfully.');
    }
}
