<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Transaksi extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('transaksi', function($table){
			$table->engine = 'InnoDB';
			$table->bigIncrements('idTransaksi');
			$table->dateTime('tglTransaksi');
			$table->enum('statusKirim',[1,0]);
			$table->string('alamatLengkap',200);
			$table->enum('statusBayar',[1,0]);
			$table->integer('totalBayar');
			$table->integer('idBank')->unsigned()->nullable();
			$table->bigInteger('idMember')->unsigned()->nullable();
			$table->foreign('idBank')->references('idBank')->on('bank')->onDelete('null');
			$table->foreign('idMember')->references('idMember')->on('member')->onDelete('null');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('transaksi');
	}

}
