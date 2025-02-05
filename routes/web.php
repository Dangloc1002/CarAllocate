<?php

use Illuminate\Routing\Router;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return redirect()->route('requests.index');
});

Route::get('/list-request', [App\Http\Controllers\RequestController::class, 'index'])->name('requests.index');
Route::get('/create-request', [App\Http\Controllers\RequestController::class, 'create'])->name('requests.create');
Route::post('/store-request', [App\Http\Controllers\RequestController::class, 'store'])->name('requests.store');
Route::get('/edit-request/{id}', [App\Http\Controllers\RequestController::class, 'store'])->name('requests.edit');
Route::delete('/delete-request/{id}', [App\Http\Controllers\RequestController::class, 'destroy'])->name('requests.delete');

Route::get('/list-group', [App\Http\Controllers\GroupController::class, 'index'])->name('groups.index');
Route::get('/automatic-arrange', [App\Http\Controllers\GroupController::class, 'automaticArrange'])->name('groups.automatic-arrange');
Route::get('/aggree-arrange', [App\Http\Controllers\GroupController::class, 'agreeArrange'])->name('groups.aggree-arrange');

//user
Route::get('/user', [App\Http\Controllers\UserController::class, 'index'])->name('user.index');
//location
Route::get('/location', [App\Http\Controllers\LocationController::class, 'index'])->name('location.index');
//car
Route::get('/car', [App\Http\Controllers\CarController::class, 'index'])->name('car.index');

//create matrix locations
Route::get('/create-matrix', [App\Http\Controllers\GroupController::class, 'generateTimeETForLocation'])->name('matrix.create');