<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProyectEquipmentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('proyect_equipments', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('proyect_id');
            $table->unsignedBigInteger('infrastructure_id');
            $table->unsignedBigInteger('equipment_id');
            $table->unsignedBigInteger('proyect_hardware_id');
            $table->unsignedBigInteger('antenna_id');
            $table->bigInteger('quantity');
            $table->float('cost', 10, 2);
            $table->timestamps();
            $table->foreign('proyect_id')
                  ->references('id')->on('proyects');
            $table->foreign('infrastructure_id')
                  ->references('id')->on('infrastructures');
            $table->foreign('equipment_id')
                  ->references('id')->on('equipments');
            $table->foreign('proyect_hardware_id')
                  ->references('id')->on('proyect_hardware');
            $table->foreign('antenna_id')
                  ->references('id')->on('antennas');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('proyect_equipments', function(Blueprint $table){
            $table->dropForeign('proyect_id');
            $table->dropForeign('infrastructure_id');
            $table->dropForeign('equipment_id');
            $table->dropForeign('proyect_hardware_id');
            $table->dropForeign('antenna_id');
        });
    }
}
