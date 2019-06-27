<?php

use App\Models\Plan;
use Illuminate\Database\Seeder;

class PlansSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Plan::create([
            'plan' => '#Standart',
            'lead_type_id' => '1'
        ]);
        Plan::create([
            'plan' => '#BandaAncha 5mbps',
            'lead_type_id' => '1'
        ]);
        Plan::create([
            'plan' => '#BandaAncha 10mbps',
            'lead_type_id' => '1'
        ]);
        Plan::create([
            'plan' => '#UltraBandaAncha 15mbps',
            'lead_type_id' => '1'
        ]);
        Plan::create([
            'plan' => '#UltraBandaAncha 20mbps',
            'lead_type_id' => '1'
        ]);
        Plan::create([
            'plan' => '#UltraBandaAncha 50mbps',
            'lead_type_id' => '1'
        ]);
        Plan::create([
            'plan' => '#StartUp',
            'lead_type_id' => '2'
        ]);
        Plan::create([
            'plan' => '#PYME10',
            'lead_type_id' => '2'
        ]);
        Plan::create([
            'plan' => '#PYME20',
            'lead_type_id' => '2'
        ]);
        Plan::create([
            'plan' => '#Master20',
            'lead_type_id' => '2'
        ]);
        Plan::create([
            'plan' => '#Master30',
            'lead_type_id' => '2'
        ]);
        Plan::create([
            'plan' => '#Master50',
            'lead_type_id' => '2'
        ]);
        
    }
}
