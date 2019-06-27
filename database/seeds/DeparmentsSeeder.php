<?php

use App\Models\Deparment;
use Illuminate\Database\Seeder;

class DeparmentsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Deparment::create([
            'description' => 'Ventas'
        ]);
        Deparment::create([
            'description' => 'Operaciones'
        ]);
        Deparment::create([
            'description' => 'Administración'
        ]);        
        Deparment::create([
            'description' => 'Recursos Humanos'
        ]);
        
    }
}
