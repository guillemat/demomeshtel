<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSiteSurveysTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('site_surveys', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('references')->nullable();
            $table->unsignedBigInteger('lead_id');
            $table->unsignedBigInteger('seller_id');
            $table->unsignedBigInteger('plan_id');
            $table->boolean('schedule');
            $table->date('appointment_date');
            $table->enum('appointment_time', ['9:00 am', '1:00 pm', '3:00 pm']);
            $table->unsignedBigInteger('surveyor_id');
            $table->boolean('feasible')->nullable();
            $table->text('observations');
            $table->timestamps();
            $table->foreign('lead_id')
                  ->references('id')->on('leads');
            $table->foreign('seller_id')
                  ->references('id')->on('sellers');
            $table->foreign('plan_id')
                  ->references('id')->on('plans');
            $table->foreign('surveyor_id')
                  ->references('id')->on('surveyors');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('site_surveys', function(Blueprint $table){
            $table->dropForeign('lead_id');
            $table->dropForeign('seller_id');
            $table->dropForeign('plan_id');
            $table->dropForeign('surveyor_id');
        });
    }
}
