<?php
include 'conexion.php';

$descripcion = $_POST["descripcion"];
$imagen = $_POST["imagen"];
$estado = $_POST["estado"];
//Fecha
$id_categoria = $_POST["id_categoria"];
$id_usuario = $_POST["id_usuario"];

$query = "INSERT INTO quejas(descripcion, imagen, estado, fecha, id_categoria, id_usuario) 
VALUES('$descripcion', '$imagen', '$estado', now(), $id_categoria, $id_usuario)";
mysqli_query($conexion, $query) or die (mysqli_error($conexion));
mysqli_close($conexion);



?>