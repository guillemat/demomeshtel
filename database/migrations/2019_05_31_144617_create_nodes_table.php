<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNodesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nodes', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('description');
            $table->unsignedBigInteger('node_address_id')->nullable();
            $table->string('azimut', 60)->nullable();
            $table->string('tilt', 60)->nullable();
            $table->string('lat', 60)->nullable();
            $table->string('long', 60)->nullable();
            $table->date('last_visit')->nullable();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->timestamps();
            $table->foreign('node_address_id')
                  ->references('id')
                  ->on('nodes_addresses');
            $table->foreign('user_id')
                  ->references('id')
                  ->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('nodes', function(Blueprint $table){
            $table->dropForeign('node_address_id');
            $table->dropForeign('user_id');
        });
    }
}
