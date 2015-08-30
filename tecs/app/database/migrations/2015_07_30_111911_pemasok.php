<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Pemasok extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('pemasok', function($table){
			$table->engine = 'InnoDB';
			$table->increments('idPemasok');
			$table->string('namaPemasok',100);
			$table->string('kontakPemasok',12);
			$table->timestamps('updatePemasok');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('pemasok');
	}

}
