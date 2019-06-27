<?php
use App\Models\Equipment;
use Illuminate\Database\Seeder;

class EquipmentsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=0;$i<10;$i++){
            Equipment::create([
                'model' => $this->randEquipment(),
                'ports_number' => $this->randPort()
            ]);
        }
    }

    protected function randEquipment(){
        $number = rand(1,2);
        if($number == 1){
            $equipment = 'UniFi security Router'; 
        }else{
            $equipment = 'EdgeMAX EdgeSwitch Lite';
        }
        return $equipment;
    }

    protected function randPort(){
        $number = rand(1,6);
        switch($number){
            case 1:
                $port = '4';
                break;
            case 2:
                $port = '8';
                break;
            case 3:
                $port = '12';
                break; 
            case 4:
                $port = '16';
                break;
            case 5:
                $port = '24';
                break;
            case 6:
                $port = '48';
                break;
        }
        return $port;
    }
}
