<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Review extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('review', function(Blueprint $table){
			$table->engine = 'InnoDB';
			$table->increments('idReview');
			$table->string('kontenReview',200);
			$table->bigInteger('idMember')->unsigned();
			$table->bigInteger('idBarang')->unsigned();
			$table->foreign('idMember')->references('idMember')->on('member')->onDelete('cascade');
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
		Schema::drop('review');
	}

}
