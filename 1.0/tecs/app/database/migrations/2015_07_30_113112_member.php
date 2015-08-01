<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Member extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('member',function(Blueprint $table){
			$table->engine = 'InnoDB';
			$table->bigIncrements('idMember');
			$table->string('usernameMember',10)->unique();
			$table->text('passwordMember');
			$table->string('emailMember',50)->unique();
			$table->string('fullName',50);
			$table->integer('noRek');
			$table->dateTime('registrationDate');
			$table->timestamps('loginLog');
			$table->enum('verifikasi',[1,0]);
			$table->integer('idFacebook');
			$table->integer('idGoogleplus');
			$table->integer('idBank')->unsigned()->nullable();
			$table->foreign('idBank')->references('idBank')->on('bank')->onDelete('set null');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('member');
	}

}
