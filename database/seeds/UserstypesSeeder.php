<?php

use App\Models\UserType;
use Illuminate\Database\Seeder;

class UserstypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        UserType::create([
            'type' => 'Administrador'
        ]);

        UserType::create([
            'type' => 'Director'
        ]);

        UserType::create([
            'type' => 'Empleado'
        ]);
    }
}
