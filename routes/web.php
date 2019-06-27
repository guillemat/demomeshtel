<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/show', 'leadMigrationController@show');

//Route::post('/receiveData/', 'leadMigrationController@receiveData');

Route::get('/nuevoLead', 'leadMigrationController@nuevoLead');

Route::get('/sendData', 'leadMigrationController@sendData');


Route::get('/create', function (){
    \Log::notice(App\Models\leadMigration::create([
        'marca_temporal' => '1986-04-07 05:19:29',
        'codigo_solicitud' => '#PB6JMZPELPE',
        'fecha' => '2006-01-12',
        'plan'  => '#BandaAncha 10mbps',
        'nombre' => 'Guillermo Mata',
        'email' => 'ghmp1975@gmail.com',
        'telefono' => '(212) 792-1319 ',
        'direccion' => 'Santa Monica America Street Murrayshire, AR 97501',
        'lat' => '10.494074',
        'long' => '-67.130281',
        'edificacion' => 'Casa/Town House ',
        'origen' => '@TraficoCaracas',
        'observaciones' => 'Ut neque esse maxime itaque velit aut similique consequatur eum quidem..',
    ]));
});
