<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Wishlist extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('wishlist', function(Blueprint $table){
			$table->engine = 'InnoDB';
			$table->text('wishlist'); //json
			$table->bigInteger('idMember')->unsigned();
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
		Schema::drop('wishlist');
	}

}
