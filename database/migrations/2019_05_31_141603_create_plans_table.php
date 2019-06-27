<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePlansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('plans', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('plan');
            $table->unsignedBigInteger('lead_type_id')->nullable();
            $table->timestamps();
            $table->foreign('lead_type_id')
                  ->references('id')
                  ->on('lead_types');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        
        Schema::dropIfExists('plans', function(Blueprint $table){
            $table->dropForeign('lead_type_id');
        });
        
    }
}
