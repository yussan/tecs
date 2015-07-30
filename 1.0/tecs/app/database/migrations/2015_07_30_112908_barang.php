<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Barang extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('barang', function($table){
			$table->engine = 'InnoDB';
			$table->bigIncrements('idBarang');
			$table->string('namaBarang',100);
			$table->integer('harga');
			$table->integer('diskon');
			$table->integer('berat');
			$table->integer('stok');
			$table->string('keterangan',100);
			$table->timestamps('updateInfo');
			$table->string('gambar',100);
			$table->dateTime('tglUpload');
			$table->integer('idKategori')->unsigned();
			$table->integer('idMerk')->unsigned();
			$table->integer('idAdmin')->unsigned()->nullable();
			$table->foreign('idKategori')->references('idKategori')->on('mainKategori')->onDelete('cascade');
			$table->foreign('idMerk')->references('idMerk')->on('merk')->onDelete('cascade');
			$table->foreign('idAdmin')->references('idAdmin')->on('admin')->onDelete('null');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('barang');
	}

}
