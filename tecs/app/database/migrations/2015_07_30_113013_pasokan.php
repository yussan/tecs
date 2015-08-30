<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Pasokan extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('pasokan', function(Blueprint $table){
			$table->engine = 'InnoDB';
			$table->bigIncrements('idPasokan');
			$table->integer('rpAwal');
			$table->integer('rpBayar');
			$table->integer('rpKembali');
			$table->dateTime('tglPasokan');
			$table->enum('statusPasokan',[1,0]);
			$table->timestamps('updatePasokan');
			$table->integer('idPemasok')->unsigned()->nullable();
			$table->bigInteger('idBarang')->unsigned()->nullable();
			$table->integer('idAdmin')->unsigned()->nullable();
			$table->foreign('idPemasok')->references('idPemasok')->on('pemasok')->onDelete('set null');
			$table->foreign('idBarang')->references('idBarang')->on('barang')->onDelete('set null');
			$table->foreign('idAdmin')->references('idAdmin')->on('admin')->onDelete('set null');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('pasokan');
	}

}
