<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Merk extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('merk', function($table){
			$table->engine = 'InnoDB';
			$table->increments('idMerk');
			$table->string('namaMerk',100);
			$table->timestamps('updateMerk');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('merk');
	}

}
