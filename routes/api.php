<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Api;
use App\Http\Controllers\Api\AuthController;


//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});


//Route::post('login', [Api\AuthController::class, 'login']);
//Route::post('logout', [Api\AuthController::class, 'logout']);

Route::group(['prefix' => 'auth'], function () {

    Route::post('login', [AuthController::class,'login'])->name('login');
    Route::post('register', [AuthController::class,'register'])->name('register');

    Route::group(['middleware' => 'auth:api'], function() {
        Route::get('logout', [AuthController::class,'logout'])->name('logout');
        Route::get('user', [AuthController::class,'user'])->name('user');

    });

});

Route::group(['middleware' => 'auth:api'], function() {
    //Route::get('productos',[ProductosController::class,'index'])->name('produtos.index');
    //Route::post('productos',[ProductosController::class,'store']);
});

//Route::post('test', [Api\AuthController::class, 'test']);

/*
Route::namespace('App\\Http\\Controllers\\Api')->group(function () {
    Route::post('/login', 'AuthController@login');
    Route::middleware('auth:api')->post('/logout', 'AuthController@logout');
});
*/
