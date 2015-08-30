<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class MainKategori extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('MainKategori', function(Blueprint $table){
			$table->engine = 'InnoDB';
			$table->increments('idKategori');
			$table->string('namaKategori',100);
			$table->integer('idSubkategori')->unsigned();
			$table->timestamps('updateMainkategori');
			$table->foreign('idSubkategori')->references('idSubkategori')->on('subKategori')->onDelete('cascade');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('mainKategori');
	}

}
