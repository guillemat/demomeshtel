<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class leadMigration extends Model
{
    protected $fillable = [
        'marca_temporal',
        'codigo_solicitud',
        'fecha',
        'plan',
        'nombre',
        'email',
        'telefono',
        'direccion',
        'lat',
        'long',
        'edificacion',
        'origen',
        'observaciones'
    ];
}
