<?php

use App\Models\Infrastructure;
use Illuminate\Database\Seeder;

class InfrastructuresSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Infrastructure::create([
            'description' => 'Postes'
        ]);

        Infrastructure::create([
            'description' => 'Hs'
        ]);

        Infrastructure::create([
            'description' => 'Pantallas'
        ]);
    }
}
