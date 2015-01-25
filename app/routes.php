<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', function()
{
	return 'What\'s app world';//route biasa
});
Route::get('profile/{nama}',function($nama){
	return 'Profile nama : '.$nama;//route dengan parameter
});
Route::get('user/{nama?}',function($nama='kosong'){
	//optional route parameters, jika para meter tidak diisi maka akan diganti null
	return 'Profile nama : '.$nama;
});
//test controller
Route::get('home','home@index');//home controller
//controller dengan parameter
Route::get('students/{name}','home@students');
//double parameters
Route::get('v/{id}/{name}','home@v');