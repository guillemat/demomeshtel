<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Node extends Model
{
    //Relaciones con Users
    public function users(){
        return $this->belongsTo('App\Models\User');
    }

    //Relaciones con NodesAddresses
    public function node_address(){
        return $this->belongsTo('App\Models\NodeAddress');
    }

    //Relaciones con Infrastructures
    public function infrastructures(){
        return $this->belongsTo('App\Models\Infrastructure');
    }

    //Relaciones con NodesAntennas
    /*Recordar el camio de las tablas intermedias a fin de de que queden ordenadas por
    orden alfabetico y en singular, ejemplo: antennaNode*/
    public function antennas(){
        return $this->belongsToMany('App\Models\Antennas', 'nodes_antennas', 'node_id', 'antenna_id');
    }

    //Relaciones con NodesEquipments
    public function equipments(){
        return $this->belongsToMany('App\Models\Equipments', 'nodes_equipments', 'node_id', 'equipment_id'); 
    }

    //Relaciones con Leads
    public function lead(){
        return $this->belongsTo('App\Models\NodeAddress');
    }

    //Relaciones con NodeMedias

    //Relaciones con SurveyReportNodes

    //Relaciones con Proyects




}
