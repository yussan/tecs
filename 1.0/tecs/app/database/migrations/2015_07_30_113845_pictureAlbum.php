<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class PictureAlbum extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('pictureAlbum', function($table){
			$table->engine = 'InnoDB';
			$table->bigIncrements('idPicture');
			$table->string('namaPicture',200);
			$table->bigInteger('idBarang')->unsigned();
			$table->foreign('idBarang')->references('idBarang')->on('barang')->onDelete('cascade');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('pictureAlbum');
	}

}
