<?php
//SELECT * FROM quejas WHERE estado = "EN PROCESO" ORDER BY fecha DESC;

include 'conexion.php';
$estado = $_POST["estado"];
$fecha = $_POST["fecha"];

$query = "SELECT * FROM quejas WHERE estado = '".$estado."' ORDER BY fecha '".$fecha."'";

$resultado = mysqli_query($conexion, $query);


?>