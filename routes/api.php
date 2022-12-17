<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Api;

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

/*
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//Route::post('login', [Api\AuthController::class, 'login']);

Route::post('login', [Api\AuthController::class, 'login']);
Route::post('logout', [Api\AuthController::class, 'logout']);

Route::post('test', [Api\AuthController::class, 'test']);

/*
Route::namespace('App\\Http\\Controllers\\Api')->group(function () {
    Route::post('/login', 'AuthController@login');
    Route::middleware('auth:api')->post('/logout', 'AuthController@logout');
});
*/