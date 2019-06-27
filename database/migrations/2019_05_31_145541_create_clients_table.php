<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateClientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('clients', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->boolean('residential');
            $table->string('name', 120);
            $table->string('company', 120);
            $table->string('rif', 12)->nullable();
            $table->string('phone_number', 80);
            $table->string('email', 120)->unique();
            $table->string('request_code', 200)->nullable();
            $table->string('address', 200)->nullable();
            $table->unsignedBigInteger('urbanization_id')->nullable();
            $table->unsignedBigInteger('origin_id');
            $table->unsignedBigInteger('lead_id');
            $table->unsignedBigInteger('seller_id')->nullable();
            $table->unsignedBigInteger('plan_id');
            $table->timestamps();
            $table->foreign('urbanization_id')->references('id')->on('urbanizations');
            $table->foreign('origin_id')->references('id')->on('origins');
            $table->foreign('lead_id')->references('id')->on('leads');
            $table->foreign('seller_id')->references('id')->on('sellers');
            $table->foreign('plan_id')->references('id')->on('plans');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('clients', function(Blueprint $table){
            $table->dropForeign('urbanization_id');
            $table->dropForeign('origin_id');
            $table->dropForeign('lead_id');
            $table->dropForeign('seller_id');
            $table->dropForeign('plan_id');
        });
    }
}
