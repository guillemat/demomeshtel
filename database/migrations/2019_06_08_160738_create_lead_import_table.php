<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLeadImportTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('lead_import', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name', 120)->nullable();
            $table->string('company', 120)->nullable();
            $table->string('rif', 12)->nullable();
            $table->string('phone_number', 80);
            $table->string('email', 120)->unique();
            $table->string('code', 200)->nullable();
            $table->date('date');
            $table->time('time');
            $table->string('address', 200)->nullable();
            $table->string('lat', 30)->nullable();
            $table->string('long', 30)->nullable();
            $table->string('estructure');
            $table->string('origin');
            $table->string('lead_type');
            $table->string('seller')->nullable();
            $table->string('node')->nullable();
            $table->string('plan');
            $table->boolean('client_exported')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('lead_import');
    }
}
