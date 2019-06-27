<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePortsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ports', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('node_equipment_id');
            $table->integer('port_number');
            $table->string('description');
            $table->boolean('status');
            $table->timestamps();
            $table->foreign('node_equipment_id')->references('id')->on('nodes_equipments');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ports', function(Blueprint $table){
            $table->dropForeign('node_equipment_id');
        });
    }
}
