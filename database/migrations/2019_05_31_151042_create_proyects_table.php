<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProyectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('proyects', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('site_survey_id');
            $table->unsignedBigInteger('client_id');
            $table->unsignedBigInteger('node_id');
            $table->float('total_estimate', 10, 2);
            $table->boolean('cancelled');
            $table->timestamps();
            $table->foreign('site_survey_id')
                  ->references('id')->on('site_surveys');
            $table->foreign('client_id')
                  ->references('id')->on('clients');
            $table->foreign('node_id')
                  ->references('id')->on('nodes');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('proyects', function(Blueprint $table){
            $table->dropForeign('site_survey_id');
            $table->dropForeign('client_id');
            $table->dropForeign('node_id');
        });
    }
}
