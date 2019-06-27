<?php

use App\Models\Charge;
use Illuminate\Database\Seeder;

class ChargesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Charge::create([
            'description' => 'Director',
        ]);

        Charge::create([
            'description' => 'Gerente de Ventas',
        ]);

        Charge::create([
            'description' => 'Analista de TSS',
        ]);

        Charge::create([
            'description' => 'Analista de Ventas',
        ]);

        Charge::create([
            'description' => 'Surveyor',
        ]);

        Charge::create([
            'description' => 'Gerente de Operaciones',
        ]);

        Charge::create([
            'description' => 'Instalador',
        ]);

        Charge::create([
            'description' => 'Analista de Operaciones',
        ]);

        Charge::create([
            'description' => 'Analista de Prefactibilidad',
        ]);

    }
}
