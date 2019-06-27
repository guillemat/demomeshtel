<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePaymentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payments', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('client_proyect_id');
            $table->decimal('total', 10, 2);
            $table->timestamps();
            $table->foreign('client_proyect_id')
                  ->references('id')->on('clients_proyects');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('payments', function(Blueprint $table){
            $table->dropForeign('client_proyect_id');
        });
    }
}
