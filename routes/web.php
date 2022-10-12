<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\RegistrationController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\BasicController;
use App\Http\Controllers\FrontController;

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
Route::get('/', [FrontController::class,'index'])->name('landingPage');
// Route::get('/', function () {
//     return view('welcome');
// })->name('landingPage');

Auth::routes();

Route::get('logout', [AuthController::class,'logout'])->name('logout');
Route::get('/register', [RegistrationController::class, 'index'])->name('register');
Route::post('payment-gateway', [RegistrationController::class, 'store'])->name('register.store');
Route::get('/registerCategory', [RegistrationController::class, 'registerCategory']);
Route::get('success-url', [RegistrationController::class, 'verifyPayment'])->name('success-url');

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/payment', [PaymentController::class, 'index'])->name('payment');

//dashboard
Route::get('/basic-info', [BasicController::class, 'index'])->name('basic-info.index');
Route::post('/basic-info/logo', [BasicController::class, 'logostore'])->name('basic-info.logo');
Route::delete('/basic-info/logo/{id}',[BasicController::class,'logodestroy'])->name('basic-info.logodelete');

Route::post('/basic-info/slider', [BasicController::class, 'sliderstore'])->name('basic-info.slider');
Route::delete('/basic-info/slider/{id}',[BasicController::class,'sliderdestroy'])->name('basic-info.sliderdelete');

Route::post('/basic-info/about', [BasicController::class, 'aboutstore'])->name('basic-info.about');
Route::delete('/basic-info/about/{id}',[BasicController::class,'aboutdestroy'])->name('basic-info.aboutdelete');


