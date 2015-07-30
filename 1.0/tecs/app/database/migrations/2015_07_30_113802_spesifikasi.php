<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Spesifikasi extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('spesifikasi', function($table){
			$table->engine = 'InnoDB';
			$table->bigIncrement('idSpesifikasi');
			$table->string('namaSpesifikasi',100);
			$table->string('ketSpesifikasi',250);
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
		Schema::drop('spesifikasi');
	}

}
