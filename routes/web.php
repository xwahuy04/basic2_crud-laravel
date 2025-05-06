<?php

use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;


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
    return view('login');
});

Route::post('login' , [LoginController::class, 'login']);

Route::get('logout' , [LoginController::class, 'logout']);

Route::get('register' , [RegisterController::class, 'register']);
Route::post('register' , [RegisterController::class, 'store']);

Route::prefix('user/')->group(function (){
    Route::get('list' , [UserController::class, 'index']);
    Route::get('create' , [UserController::class, 'create']);
    Route::post('store' , [UserController::class, 'store']);
    Route::get('edit/{id}' , [UserController::class, 'edit']);
    Route::post('update' , [UserController::class, 'update']);
    Route::get('delete/{id}' , [UserController::class, 'delete']);
    // Route::get('search' , [UserController::class, 'search']);
    Route::get('{id}' , [UserController::class, 'show']);
});