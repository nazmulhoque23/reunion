<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Auth\RegisterController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
})->name('landingPage');

Auth::routes();

Route::get('logout', [AuthController::class,'logout'])->name('logout');
Route::get('/register', [RegisterController::class, 'index'])->name('register');
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
