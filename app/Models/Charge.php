<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Charge extends Model
{
    //Relaciones con users
    public function users(){
        return $this->hasMany('App\Models\User');
    }

    //Relaciones con Deparments
    public function deparments(){
        return $this->belongsTo('App\Models\Deparment');
    }
}
