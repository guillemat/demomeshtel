<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateClientsProyectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('clients_proyects', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('client_id');
            $table->unsignedBigInteger('proyect_id');
            $table->decimal('total', 10, 2);
            $table->decimal('paid', 10, 2);
            $table->timestamps();
            $table->foreign('client_id')
                  ->references('id')->on('clients');
            $table->foreign('proyect_id')
                  ->references('id')->on('proyects');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('clients_proyects', function(Blueprint $table){
            $table->dropForeign('client_id');
            $table->dropForeign('proyect_id');
        });
    }
}
