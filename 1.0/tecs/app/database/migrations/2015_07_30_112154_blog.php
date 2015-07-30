<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Blog extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('blog',function($table){
			$table->engine = 'InnoDB';
			$table->increments('idBlog');
			$table->string('judul',100);
			$table->text('konten');
			$table->dateTime('createdateBlog');
			$table->timestamps('updateBlog');
			$table->integer('idAdmin')->unsigned()->nullable();
			$table->integer('idTag')->unsigned()->nullable();
			$table->foreign('idAdmin')->references('idAdmin')->on('Admin')->onDelete('null');
			$table->foreign('idTag')->references('idTag')->on('tagPost')->onDelete('null');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('blog');
	}

}
