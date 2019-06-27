<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserType extends Model
{
    protected $table = 'users_types';
    //

    //Relaciones con users
    public function users(){
        return $this->hasMany('App\Models\User');
    }
}
