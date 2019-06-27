<?php

use App\Models\Municipality;
use Illuminate\Database\Seeder;

class MunicipalitiesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Municipality::create([
            'municipality' => 'Libertador'
        ]);

        Municipality::create([
            'municipality' => 'El Hatillo'
        ]);

        Municipality::create([
            'municipality' => 'Baruta'
        ]);

        Municipality::create([
            'municipality' => 'Sucre'
        ]);

        Municipality::create([
            'municipality' => 'Chacao'
        ]);

        Municipality::create([
            'municipality' => 'Los Salias'
        ]);
    }
}
