<?php

use App\Models\LeadType;
use Illuminate\Database\Seeder;

class LeadTypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        LeadType::create([
            'type' => 'Residencial'
        ]);

        LeadType::create([
            'type' => 'Empresarial'
        ]);
    }
}
