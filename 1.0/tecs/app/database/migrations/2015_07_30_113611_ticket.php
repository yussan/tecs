<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Ticket extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('ticket',function(Blueprint $table){
			$table->engine = 'InnoDB';
			$table->increments('idTicket');
			$table->string('subjectTicket',50);
			$table->string('deskripsiTicket',250);
			$table->enum('statusTicket',[1,0]);
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
		Schema::drop('ticket');
	}

}
