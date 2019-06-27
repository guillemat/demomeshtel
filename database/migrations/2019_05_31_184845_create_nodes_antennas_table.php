<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNodesAntennasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nodes_antennas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('node_id');
            $table->unsignedBigInteger('antenna_id');
            $table->timestamps();
            $table->foreign('node_id')->references('id')->on('nodes');
            $table->foreign('antenna_id')->references('id')->on('antennas');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('nodes_antennas', function(Blueprint $table){
            $table->dropForeign('node_id');
            $table->dropForeign('antenna_id');
        });
    }
}
