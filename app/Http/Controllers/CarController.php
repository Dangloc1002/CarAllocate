<?php

namespace App\Http\Controllers;

use App\Models\CarDriver;
use App\Models\UserPriority;
use Illuminate\Http\Request;

class CarController extends Controller
{
    public function index()
    {
        $cars = CarDriver::all();
        return view('cars.index', compact('cars'));
    }
}
