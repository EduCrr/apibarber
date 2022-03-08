<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\BarberController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('/ping', function(){
    return['pong' => true];
});

//rota login

Route::get('/401', [AuthController::class, 'unauthorized'])->name('login');
Route::get('/random', [BarberController::class, 'createRandom']);

//login
Route::post('/auth/login', [AuthController::class, 'login']);
Route::post('/auth/logout', [AuthController::class, 'logout']);
Route::post('/auth/refresh', [AuthController::class, 'refresh']);

//info de user
Route::get('/user', [UserController::class, 'read']); //info user
Route::put('/user', [UserController::class, 'update']);
Route::post('/user/avatar', [UserController::class, 'updateAvatar']);
//cadastro
Route::post('/user', [AuthController::class, 'create']);    
//favortios
Route::get('/user/favorites', [UserController::class, 'favorites']);
Route::post('/user/favorite', [UserController::class, 'toggleFavorites']);
Route::get('/user/appointments', [UserController::class, 'getAppointments']); //meus agendamentos



//info de barbeiros
Route::get('/barbers', [BarberController::class, 'list']);
Route::get('/barber/{id}', [BarberController::class, 'one']);
Route::post('/barber/{id}/appointment', [BarberController::class, 'setAppointment']); //agendar corte de cabelo

//busca
Route::get('/search', [BarberController::class, 'search']);

