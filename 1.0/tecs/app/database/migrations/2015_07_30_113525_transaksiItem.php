<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class TransaksiItem extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('transaksiItem', function($table){
			$table->engine = 'InnoDB';
			$table->integer('qBarang');
			$table->integer('subTotal');
			$table->bigInteger('idBarang')->unsigned()->nullable();
			$table->foreign('idBarang')->references('idBarang')->on('barang')->onDelete('null');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('transaksiItem');
	}

}
