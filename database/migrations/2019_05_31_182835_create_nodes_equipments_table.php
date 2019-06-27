<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNodesEquipmentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nodes_equipments', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('node_id');
            $table->unsignedBigInteger('equipment_id');
            $table->timestamps();
            $table->foreign('node_id')
                  ->references('id')->on('nodes');
            $table->foreign('equipment_id')
                  ->references('id')->on('equipments');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('nodes_equipments', function(Blueprint $table){
            $table->dropForeign('node_id');
            $table->dropForeign('equipment_id');
        });
    }
}
