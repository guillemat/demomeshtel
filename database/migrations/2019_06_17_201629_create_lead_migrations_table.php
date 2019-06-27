<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLeadMigrationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('lead_migrations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->dateTime('marca_temporal')->nullable();
            $table->string('codigo_solicitud');
            $table->date('fecha')->nullable();
            $table->string('plan');
            $table->string('nombre');
            $table->string('email');
            $table->string('telefono');
            $table->string('direccion');
            $table->string('lat');
            $table->string('long');
            $table->string('edificacion');
            $table->string('origen');
            $table->string('observaciones');
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
        Schema::dropIfExists('lead_migrations');
    }
}
