<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\SpaController;


//Auth::routes();
/*
Route::group(['middleware'=>'auth'],  function(){
    // esta ruta dispara el controlador home, solo si esta autenticado lo levanta, sino abra login
    Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

});
*/


Route::get('/{any}', [SpaController::class, 'index'])->where('any', '.*');

//Route::get('/',[PostController::class,'index'])->name('posts.index');

//Route::get('/{any?}', function () {
//    return view('spa');
//})->where('any', '.*');

