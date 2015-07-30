<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class SubKategori extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('SubKategori', function($table){
			$table->engine = 'InnoDB';
			$table->increments('idSubkategori');
			$table->string('namaSubkategori');
			$table->timestamps('updateSubkategori');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('subKategori');
	}

}
