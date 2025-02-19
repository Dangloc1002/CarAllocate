<?php

namespace App\Http\Controllers;

use App\Models\Location;
use App\Models\UserPriority;
use Illuminate\Http\Request;

class LocationController extends Controller
{
    public function index()
    {
        $locations = Location::all();
        return view('locations.index', compact('locations'));
    }
}
