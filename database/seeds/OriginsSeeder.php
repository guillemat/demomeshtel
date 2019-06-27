<?php

use App\Models\Origin;
use Illuminate\Database\Seeder;

class OriginsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Origin::create([
            'origin' => 'WhasApp'
        ]);

        Origin::create([
            'origin' => 'Redes Sociales'
        ]);

        Origin::create([
            'origin' => 'Por un amigo'
        ]);

        Origin::create([
            'origin' => 'Busqueda Google'
        ]);

        Origin::create([
            'origin' => 'Mercadolibre'
        ]);

        Origin::create([
            'origin' => 'Vía @TraficoCaracas'
        ]);

        Origin::create([
            'origin' => 'Otro medio'
        ]);
    }
}
