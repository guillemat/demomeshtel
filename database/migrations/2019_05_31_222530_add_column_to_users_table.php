<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            //
            $table->unsignedBigInteger('charge_id')
                  ->after('phone_number')
                  ->nullable();
            $table->unsignedBigInteger('user_type_id')
                  ->after('phone_number')
                  ->nullable();
            $table->foreign('user_type_id')
                  ->references('id')
                  ->on('users_types')
                  ->onDelete('cascade');
            $table->foreign('charge_id')
                  ->references('id')
                  ->on('charges')
                  ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropForeign('charge_id');;
            $table->dropForeign('user_type_id');
        });
    }
}
