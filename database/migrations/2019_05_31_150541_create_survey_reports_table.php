<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSurveyReportsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('survey_reports', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('site_survey_id');
            $table->unsignedBigInteger('surveyor_id');
            $table->text('observations');
            $table->timestamps();
            $table->foreign('site_survey_id')
                  ->references('id')->on('site_surveys');
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
        Schema::dropIfExists('survey_reports', function(Blueprint $table){
            $table->dropForeign('site_survey_id');
            $table->dropForeign('surveyor_id');
        });
    }
}
