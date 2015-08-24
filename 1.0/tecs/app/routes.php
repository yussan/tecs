<?php
/*API*/
Route::group(['prefix'=>'api'],function(){
	//for member
	Route::group(['prefix'=>'member'],function(){
		Route::post('login','APIController@login');//member login
		Route::post('register','APIController@register');//member login
	});
	//for barang
	Route::group(['prefix'=>'barang'],function(){
		Route::get('/','APIController@barang');//get list of item + mainkat/subkat + limit + offset
		Route::get('/kategori/{namakategori}','APIController@barang');//get list of item + mainkat/subkat + limit + offset
		Route::get('/kategori/{namakategori}/{subkategori}','APIController@barang');//get list of item + mainkat/subkat + limit + offset
		Route::get('latest','APIController@barang');//order by lattest item + limit + offset
		Route::get('bestbuy','APIController@barang');//order by bestbuy item + limit + offset
		Route::get('favorited','APIController@barang');//order by favorited item + limit + offset
		Route::post('wishlist','APIController@wishlist');//add / remove wish list
		Route::post('diskusi','APIController@diskusiItem');//diskusi item
		Route::post('rate','APIController@rate');//rate item
	});
	//for transaksi
	Route::group(['prefix'=>'transaksi'],function(){
		Route::post('action','APIController@actionTransaksi');//add / delete :: [PUT / DELETE]
		Route::post('list','APIController@listTransaksi');//listing :: [POST]
	});
	//for konfirmasi
	Route::group(['prefix'=>'konfirmasi'],function(){
		Route::put('action','APIController@actionKonformasi');//add / delete :: [PUT / DELETE]
		Route::delete('action','APIController@actionKonformasi');//add / delete :: [PUT / DELETE]
		Route::post('list','APIController@listKonfirmasi');//listing :: POST
	});
});

/*FOR PUBLIC*/
Route::get('/','Home@index');

/*TRANSACTIONS*/

/*MEMBER ONLY*/

/*ADMIN ONLY*/
Route::get('admin','Admin@index');//login page
