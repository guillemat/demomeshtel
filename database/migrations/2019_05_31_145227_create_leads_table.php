<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLeadsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('leads', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name', 120)->nullable();
            $table->string('company', 120)->nullable();
            $table->string('rif', 12)->nullable();
            $table->string('phone_number', 80);
            $table->string('email', 120)->unique();
            $table->string('request_code', 200)->nullable();
            $table->boolean('fai')->nullable();
            $table->boolean('proyected')->nullable();
            $table->date('date');
            $table->time('time');
            $table->string('address', 200)->nullable();
            $table->string('lat', 30)->nullable();
            $table->string('long', 30)->nullable();
            $table->unsignedBigInteger('urbanization_id')->nullable();
            $table->unsignedBigInteger('estructure_id');
            $table->unsignedBigInteger('origin_id');
            $table->unsignedBigInteger('lead_type_id');
            $table->unsignedBigInteger('seller_id')->nullable();
            $table->unsignedBigInteger('node_id')->nullable();
            $table->unsignedBigInteger('plan_id');
            $table->boolean('asigned_to_selling')->nullable();
            $table->boolean('give_up_lead')->nullable();
            $table->boolean('imposible_lead')->nullable();
            $table->text('observation');
            $table->boolean('48h_promise')->nullable();
            $table->boolean('client_exported')->nullable();
            $table->timestamps();
            $table->foreign('urbanization_id')->references('id')->on('urbanizations');
            $table->foreign('estructure_id')->references('id')->on('estructures');
            $table->foreign('origin_id')->references('id')->on('origins');
            $table->foreign('lead_type_id')->references('id')->on('lead_types');
            $table->foreign('seller_id')->references('id')->on('sellers');
            $table->foreign('node_id')->references('id')->on('nodes');
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
        Schema::dropIfExists('leads', function(Blueprint $table){
            $table->dropForeign('urbanization_id');
            $table->dropForeign('estructure_id');
            $table->dropForeign('origin_id');
            $table->dropForeign('lead_type_id');
            $table->dropForeign('seller_id');
            $table->dropForeign('node_id');
            $table->dropForeign('plan_id');
        });
    }
}
