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
		Route::get('latest','APIController@lattestItem');//order by lattest item + limit + offset 
		Route::get('bestbuy','APIController@bestbuyItem');//order by bestbuy item + limit + offset
		Route::get('favorited','APIController@favoritedItem');//order by favorited item + limit + offset
		Route::get('search','APIController@searhItem');//search item by keyword/mainkat/subkat + limit + offset
		Route::get('list','APIController@listItem');//get list of item + mainkat/subkat + limit + offset
		Route::post('wishlist','APIController@wishlist');//add / remove wish list
		Route::post('diskusi','APIController@diskusiItem');//diskusi item
		Route::post('rate','APIController@rate');//rate item
	});
	//for transaksi
	Route::group(['prefix'=>'transaksi'],function(){
		Route::get('action','APIController@actionTransaksi');//add / delete
		Route::get('list','APIController@listTransaksi');//listing
	});
	//for konfirmasi
	Route::group(['prefix'=>'konfirmasi'],function(){
		Route::get('action','APIController@actionKonformasi');//add / delete
		Route::get('list','APIController@listKonfirmasi');//listing
	});
});

/*FOR PUBLIC*/
Route::get('/','Home@index');

/*TRANSACTIONS*/

/*MEMBER ONLY*/

/*ADMIN ONLY*/
Route::get('admin','Admin@index');//login page
