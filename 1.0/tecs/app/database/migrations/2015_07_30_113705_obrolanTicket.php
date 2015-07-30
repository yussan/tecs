<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ObrolanTicket extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('obrolanTicket',function($table){
			$table->engine = 'InnoDB';
			$table->integer('idTicket');
			$table->string('kontenObrolanticket',200);
			$table->dateTime('createdateObrolanticket');
			$table->timestamps('updateObrolanticket');
			$table->integer('idAdmin')->unsigned();
			$table->bigInteger('idMember')->unsigned();
			$table->foreign('idAdmin')->references('idAdmin')->on('admin')->onDelete('cascade');
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
		Schema::drop('obrolanTicket');
	}

}
