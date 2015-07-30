<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Rate extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('rate',function($table){
			$table->engine = 'InnoDB';
			$table->bigInteger('idMember')->unsigned();
			$table->text('nilaiRate');
			$table->foreign('idMember')->references('idMember')->on('member')->onDelete('cascade');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('rate');
	}

}
