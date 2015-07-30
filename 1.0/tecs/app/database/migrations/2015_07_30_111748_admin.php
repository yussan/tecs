<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Admin extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('admin', function($table){
			$table->engine = 'InnoDB';
			$table->increments('idAdmin');
			$table->string('usernameAdmin',10)->unique();
			$table->text('passwordAdmin');
			$table->string('namaAdmin',50);
			$table->enum('bagian',['admin','karyawan']);
			$table->string('emailAdmin',50)->unique();
			$table->timestamps('updateProfile');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('admin');
	}

}
