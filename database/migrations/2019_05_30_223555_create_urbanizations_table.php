<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUrbanizationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('urbanizations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('urbanization');
            $table->unsignedBigInteger('municipality_id');
            $table->timestamps();
            $table->foreign('municipality_id')
                  ->references('id')->on('municipalities');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        
        Schema::dropIfExists('urbanizations', function (Blueprint $table) {
            $table->dropForeign('municipality_id');
        });
    }
}
