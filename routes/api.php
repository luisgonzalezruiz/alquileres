<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Api;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\RubroController;
use App\Http\Controllers\Api\CategoriaController;


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

// aqui vamos a meter lo que vamos a proteger via token
Route::group(['middleware' => 'auth:api'], function() {
    //Route::get('productos',[ProductosController::class,'index'])->name('produtos.index');
    //Route::post('productos',[ProductosController::class,'store']);
    //Route::get('categorias',[CategoriaController::class,'index']);
    //Route::get('categorias/{id}',[CategoriaController::class,'show']);
    //Route::post('categorias',[CategoriaController::class,'store']);
    //Route::put('categorias/{id}',[CategoriaController::class,'update']);
    //Route::delete('categorias/{id}',[CategoriaController::class,'destroy']);
});

/*
Route::get('rubros',[RubroController::class,'index']);
Route::get('rubros/{id}',[RubroController::class,'show']);
Route::post('rubros',[RubroController::class,'store']);
Route::put('rubros/{id}',[CategoriaController::class,'update']);
Route::delete('rubros/{id}',[RubroController::class,'destroy']);
*/
Route::namespace('App\\Http\\Controllers\\API')->group(function () {
    Route::apiResources([
        'rubros' => 'RubroController',
    ]);
});


Route::get('categorias',[CategoriaController::class,'index']);
Route::get('categorias/{id}',[CategoriaController::class,'show']);
Route::post('categorias',[CategoriaController::class,'store']);
Route::put('categorias/{id}',[CategoriaController::class,'update']);
Route::delete('categorias/{id}',[CategoriaController::class,'destroy']);




