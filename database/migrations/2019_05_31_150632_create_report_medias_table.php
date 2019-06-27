<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReportMediasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('report_medias', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('site_survey_id');
            $table->string('photo')->nullable();
            $table->string('video')->nullable();
            $table->timestamps();
            $table->foreign('site_survey_id')
                  ->references('id')->on('site_surveys');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('report_medias', function(Blueprint $table){
            $table->dropForeign('site_survey_id');
        });
    }
}
