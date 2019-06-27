<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSurveyReportNodesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('survey_report_nodes', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('survey_report_id');
            $table->unsignedBigInteger('node_id');
            $table->boolean('recommended');
            $table->text('observations');
            $table->timestamps();
            $table->foreign('survey_report_id')
                  ->references('id')->on('survey_reports');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('survey_report_nodes', function(Blueprint $table){
            $table->dropForeign('survey_report_id');
        });
    }
}
