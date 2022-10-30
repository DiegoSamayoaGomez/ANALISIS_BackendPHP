<?php
//include 'conexion.php'
//$conexion = mysqli_connect("localhost", "root","","controlquejas");

$conexion = mysqli_connect("bnltxzejf6qnxll0xjii-mysql.services.clever-cloud.com",
 "u9vvluuiobf0rl09",
 "sn3cwuhPNa27LMV1Sbeh",
 "bnltxzejf6qnxll0xjii");

//Codigo
$descripcion = $_POST["descripcion"];
$imagen = $_POST["imagen"];
//$estado = $_POST["estado"];
//$fecha = $_POST["fecha"];
//$estado= 'EN PROCESO';
//Fecha
$id_categoria = $_POST["id_categoria"];
$id_usuario = $_POST["id_usuario"];

$query = "INSERT INTO quejas(descripcion, imagen, estado, fecha, id_categoria, id_usuario)

VALUES('$descripcion', '$imagen', 'EN PROCESO', now(), '$id_categoria', $id_usuario)";
mysqli_query($conexion, $query) or die (mysqli_error($conexion));
mysqli_close($conexion);



?>