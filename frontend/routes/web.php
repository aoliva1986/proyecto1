<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UsuarioController;
use App\Http\Controllers\MarcarController;

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
use GuzzleHttp\Client;

Route::get('/', function () {    

    return view('login');

});
//Route::post('/login',[UsuarioController::class, 'store']);->name('acceso');
//Route::post('/login/store',[UsuarioController::class, 'store']);


//Route::post('/marcar','UsuarioController@store');

//Route::post('/marcar', [UsuarioController::class,'store']);
//Route::get('/marcar', [UsuarioController::class,'index']);

Route::get('/usuario',[UsuarioController::class,'create']);
Route::post('/usuario',[UsuarioController::class,'store']);

Route::post('/crear',[UsuarioController::class,'crear']);
Route::get('/crear',[UsuarioController::class,'create']);
//Route::get('/crear',[UsuarioController::class,'index']);

Route::get('/login',[UsuarioController::class,'index']);

Route::get('/marcar',[UsuarioController::class,'index']);
Route::post('/marcar',[UsuarioController::class,'registro']);


