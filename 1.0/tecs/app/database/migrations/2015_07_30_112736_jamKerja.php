<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class JamKerja extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('JamKerja',function($table){
			$table->engine = 'InnoDB';
			$table->increments('idJamkerja');
			$table->string('hari',10);
			$table->time('jamMulai');
			$table->time('jamSelesai');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('jamKerja');
	}

}
