<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFollowingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('followings', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('lead_id')->nullable();
            $table->unsignedBigInteger('client_id')->nullable();
            $table->unsignedBigInteger('seller_id');
            $table->unsignedBigInteger('following_type_id');
            $table->text('message');
            $table->date('next_contact')->nullable();
            $table->timestamps();
            $table->foreign('lead_id')
                  ->references('id')->on('leads');
            $table->foreign('client_id')
                  ->references('id')->on('clients');
            $table->foreign('seller_id')
                  ->references('id')->on('sellers');
            $table->foreign('following_type_id')
                  ->references('id')->on('followings_types');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('followings', function(Blueprint $table){
            $table->dropForeig('lead_id');
            $table->dropForeig('client_id');
            $table->dropForeig('seller_id');
            $table->dropForeig('following_type_id');
        });
    }
}
