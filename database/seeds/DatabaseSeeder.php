<?php

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        //Para vaciar las tablas
        $this->vaciaTablas([
            'charges',
            'users_types',
            'municipalities',
            'origins',
            'lead_types', 
            'urbanizations',
            'plans',
            'infrastructures',
            'antennas',
            'deparments',
            'equipments',
            'estructures',
            
        ]);
        // $this->call(UsersTableSeeder::class);
        $this->call([
            ChargesSeeder::class,
            UserstypesSeeder::class,
            MunicipalitiesSeeder::class,
            OriginsSeeder::class,
            LeadTypesSeeder::class,
            UrbanizationsSeeder::class,
            PlansSeeder::class,
            InfrastructuresSeeder::class,
            AntennasSeeder::class,
            DeparmentsSeeder::class,
            EquipmentsSeeder::class,
            EstructuresSeeder::class,

            ]);

    }

    public function vaciaTablas(array $tables){
        foreach($tables as $table){
            DB::statement('SET FOREIGN_KEY_CHECKS = 0;');
            DB::table($table)->truncate();
            DB::statement('SET FOREIGN_KEY_CHECKS = 0;');
        }
    }
}
