<?php

namespace App\Http\Controllers;

use App\Models\UserPriority;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        $listUser = UserPriority::all();
        return view('users.index', compact('listUser'));
    }
}
