<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Models\leadMigration;
use Illuminate\Http\Request;

class LeadMigrationController extends Controller
{
    public function receiveData(Request $request){
        //Guardo la información en variables locales
        \Log::info($request->all());
        $obj = leadMigration::create([
            'marca_temporal' => $request->input('lead.marca_temporal'),
            'codigo_solicitud' => $request->input('lead.codigo_solicitud'),
            'fecha' => $request->input('lead.fecha'),
            'plan'  => $request->input('lead.plan'),
            'nombre' => $request->input('lead.nombre'),
            'email' => $request->input('lead.email'),
            'telefono' => $request->input('lead.telefono'),
            'direccion' => $request->input('lead.direccion'),
            'lat' => $request->input('lead.lat'),
            'long' => $request->input('lead.long'),
            'edificacion' => $request->input('lead.edificacion'),
            'origen' => $request->input('lead.origen'),
            'observaciones' => $request->input('lead.observaciones'),
        ]);
        \Log::notice($obj);
        /*
        $id               = $request->input('lead.id');
        $marca_temporal   = $request->input('lead.marca_temporal');
        $nombre           = $request->input('lead.nombre');
        $codigo_solicitud = $request->input('lead.codigo_solicitud');
        $fecha            = $request->input('lead.fecha');
        $plan             = $request->input('lead.plan');
        $email            = $request->input('lead.email');
        $telefono         = $request->input('lead.telefono');
        $direccion        = $request->input('lead.direccion');
        $lat              = $request->input('lead.lat');
        $long             = $request->input('lead.long');
        $edificacion      = $request->input('lead.edificacion');
        $origen           = $request->input('lead.origen');
        $observaciones    = $request->input('lead.observaciones');
        
        
        
        //Crear el objeto leadMigration y hacer las asignaciones
        $lead = new leadMigration();
        $lead->marca_temporal = $marca_temporal;
        $lead->nombre = $nombre;
        $lead->codigo_solicitud = $codigo_solicitud;
        $lead->fecha = $fecha;
        $lead->plan = $plan;
        $lead->email = $email;
        $lead->telefono = $telefono;
        $lead->direccion = $direccion;
        $lead->lat = $lat;
        $lead->long = $long;
        $lead->edificacion = $edificacion;
        $lead->origen = $origen;
        $lead->observaciones = $observaciones;
        $lead->save();
           
         
        $myfile = fopen("prueba.txt", "a+");
        fwrite($myfile, $info . '.\n');
        fclose($myfile); 
        // Creacion en la base de datos 
        DB::insert("INSERT INTO ´meshteldemo´.´lead_migrations´ ('marca_temporal', 'codigo_solicitud',
         'fecha', 'plan', 'nombre', 'email', 'telefono', 'direccion', 'lat', 'long', 'edificacion', 'origen', 
         'observaciones') VALUES (:marca_temporal, :codigo_solicitud, :fecha, :plan, :nombre, :email, :telefono,
         :direccion, :lat, :long, :edificacion, :origen, :observaciones)", [
           'marca_temporal' => $request->input('lead.marca_temporal'),
           'codigo_solicitud' => $request->input('lead.codigo_solicitud'),
           'fecha' => $request->input('lead.fecha'),
           'plan'  => $request->input('lead.plan'),
           'nombre' => $request->input('lead.nombre'),
           'email' => $request->input('lead.email'),
           'telefono' => $request->input('lead.telefono'),
           'direccion' => $request->input('lead.direccion'),
           'lat' => $request->input('lead.lat'),
           'long' => $request->input('lead.long'),
           'edificacion' => $request->input('lead.edificacion'),
           'origen' => $request->input('lead.origen'),
           'observaciones' => $request->input('lead.observaciones'),
       ]) ;
          */
    }

    public function nuevoLead(){
       leadMigration::create([
            'marca_temporal' => '1986-04-07 05:19:29',
            'codigo_solicitud' => '#PB6JMZPELPE',
            'fecha' => '2006-01-12',
            'plan'  => '#BandaAncha 10mbps',
            'nombre' => 'Miss Linnea Wisozk II',
            'email' => 'vandervort.boris@gmail.com',
            'telefono' => '(994) 792-7527 ',
            'direccion' => '902 83866 America Street Murrayshire, AR 97501',
            'lat' => '10.494074',
            'long' => '-67.130281',
            'edificacion' => 'Casa/Town House ',
            'origen' => '@TraficoCaracas',
            'observaciones' => 'Ut neque esse maxime itaque velit aut similique consequatur eum quidem..\n',
        ]);
    }
    public function show(){
        $myfile = fopen("prueba.txt", "a+");
        $text = fread($myfile,filesize("prueba.txt"));
        fclose($myfile);
        return $text;
    }

    
    public function sendData(){
        
        $registro = [
            'lead' => [
                'marca_temporal' => '1986-04-07 05:19:29',
                'codigo_solicitud' => '#PB6JMZPELPE',
                'fecha' => '2006-01-12',
                'plan'  => '#BandaAncha 10mbps',
                'nombre' => 'Guillermo Mata',
                'email' => 'ghmp1975555@gmail.com',
                'telefono' => '(212) 792-1319 ',
                'direccion' => 'Santa Monica America Street Murrayshire, AR 97501',
                'lat' => '10.494074',
                'long' => '-67.130281',
                'edificacion' => 'Casa/Town House ',
                'origen' => '@TraficoCaracas',
                'observaciones' => 'Ut neque esse maxime itaque velit aut similique consequatur eum quidem',
            ],
        ];
        $data = json_encode($registro);
        $curl = curl_init();
        
        curl_setopt_array($curl, array(
            CURLOPT_URL => "http://demo-meshtel.local/api/receiveData",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30000,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            //CURLOPT_POSTFIELDS => json_encode($data),
            CURLOPT_POSTFIELDS => $data,
            CURLOPT_HTTPHEADER => array(
                // Set here required headers
                "accept: */*",
                "accept-language: en-US,en;q=0.8",
                'content-type: application/json',
            ),
        ));
        
        $response = curl_exec($curl);
        $err = curl_error($curl);
        
        curl_close($curl);
        
        if ($err) {
            echo "cURL Error #:" . $err;
        } else {
            print_r(json_decode($response, true));
        }
        
        return $registro;

    }
}

