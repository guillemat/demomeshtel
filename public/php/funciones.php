<?php 


if(isset($_GET['data'])){
    $id               = $_GET['data']['lead.id'];
    $marca_temporal   = $_GET['data']['lead.marca_temporal'];
    $nombre           = $_GET['data']['lead.nombre'];
    $codigo_solicitud = $_GET['data']['lead.codigo_solicitud'];
    $fecha            = $_GET['data']['lead.fecha'];
    $plan             = $_GET['data']['lead.plan'];
    $email            = $_GET['data']['lead.email'];
    $telefono         = $_GET['data']['lead.telefono'];
    $direccion        = $_GET['data']['lead.direccion'];
    $lat              = $_GET['data']['lead.lat'];
    $long             = $_GET['data']['lead.long'];
    $edificacion      = $_GET['data']['lead.edificacion'];
    $origen           = $_GET['data']['lead.origen'];
    $observaciones    = $_GET['data']['lead.observaciones'];

    $conection = new mysqli( 'localhost','root' ,'2gu1ll35', 'meshteldemo' );

    if($connection->connect_errno){
        die("Error de conexión: " . $conection->connect_errno);
    }

    $sql = sprintf('INSERT INTO lead_migrations (marca_temporal, codigo_solicitud, fecha, plan,
    nombre, email, telefono, direccion, lat, long, edificacion, origen, observaciones)
    VALUES ($marca_temporal, $codigo_solicitud, $fecha, $plan, $nombre, $email, $telefono,
     $direccion, $lat, $long, $edificacion, $origen, $observaciones)');

    $conection->query($sql);

    $conection->close();



}