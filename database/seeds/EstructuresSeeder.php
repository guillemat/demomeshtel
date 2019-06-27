<?php

use App\Models\Estructure;
use Illuminate\Database\Seeder;

class EstructuresSeeder extends Seeder
{
    
    
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $estructuresTypes = [
            'Casa/Town House',
            'Local Comercial',
            'Edificio',
            'Galpón',
        ];
        
        foreach($estructuresTypes as $estructure){
            Estructure::create([
                'Estructure' => $estructure
            ]);
        }

    }
}
