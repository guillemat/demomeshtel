<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNodesAddressesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nodes_addresses', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('urbanization_id');
            $table->string('street', 150)->nullable();
            $table->string('building', 100)->nullable();
            $table->string('reference')->nullable();
            $table->timestamps();
            $table->foreign('urbanization_id')
                  ->references('id')
                  ->on('urbanizations');
                  
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('nodes_addresses', function(Blueprint $table){
            $table->dropForeign('urbanization_id');
        });
    }
}
