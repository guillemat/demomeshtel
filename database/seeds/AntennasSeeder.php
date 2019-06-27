<?php

use App\Models\Antenna;
use Illuminate\Database\Seeder;

class AntennasSeeder extends Seeder
{    
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Antenna::create([
            'model' => 'IsoBeam ISO‑BEAM‑620',
            'max_range' => '',
            'brand' => 'airFIBER'
        ]);
        Antenna::create([
            'model' => 'airFIBER AF‑MPx8',
            'max_range' => '',
            'brand' => 'airFIBER'
        ]);
        Antenna::create([
            'model' => 'airFIBER X AF‑5G34‑S45',
            'max_range' => '',
            'brand' => 'airFIBER'
        ]);
        Antenna::create([
            'model' => 'LiteBeam AC GEN2 LBE‑5AC‑Gen2',
            'max_range' => '',
            'brand' => 'airMAX'
        ]);
        Antenna::create([
            'model' => 'NanoBeam AC NBE‑5AC‑Gen2',
            'max_range' => '',
            'brand' => 'airMAX'
        ]);
        Antenna::create([
            'model' => 'PowerBeam AC GEN2 PBE‑5AC‑Gen2',
            'max_range' => '',
            'brand' => 'airMAX'
        ]);
        Antenna::create([
            'model' => 'LiteBeam M5 LBE‑M5‑23',
            'max_range' => '',
            'brand' => 'airMAX'
        ]);
        Antenna::create([
            'model' => 'PowerBeam PBE‑M5‑620',
            'max_range' => '',
            'brand' => 'airMAX'
        ]);
        Antenna::create([
            'model' => 'PowerBeam M5 ISO PBE‑M5‑400‑ISO',
            'max_range' => '',
            'brand' => 'irMAX'
        ]);
    }
}

