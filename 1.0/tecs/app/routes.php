<?php
/*TEST UP*/
Route::get('profile/{nama}',function($nama){
	return 'Profile nama : '.$nama;//route dengan parameter
});
Route::get('user/{nama?}',function($nama='kosong'){
	//optional route parameters, jika para meter tidak diisi maka akan diganti null
	return 'Profile nama : '.$nama;
});
//controller dengan parameter
Route::get('students/{name}','Home@students');
//double parameters
Route::get('v/{id}/{name}','Home@v');
//test base view
Route::get('welcome','Home@welcome');

/*FOR PUBLIC*/
Route::get('/','Home@index');

/*TRANSACTIONS*/

/*MEMBER ONLY*/

/*ADMIN ONLY*/
Route::get('admin','Admin@index');//login page
