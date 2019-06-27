<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Deparment extends Model
{
    //Relaciones con Charges
    public function charges(){
        return $this->hasMany('App\Models\Charges');
    }
}
