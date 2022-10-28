<?php
//SELECT * FROM quejas WHERE estado = "EN PROCESO" ORDER BY fecha DESC;

include 'conexion.php';
$estado = $_GET['estado'];
//$fecha = $_GET['fecha'];

$query = "SELECT * FROM quejas WHERE estado = '$estado' ORDER BY fecha ASC";
//$query = "SELECT * FROM quejas WHERE estado = '$estado'";
//$query = "SELECT * FROM quejas WHERE estado = '$estado'";
$resultado = $conexion -> query($query);

while($fila=$resultado ->fetch_array()){
    $listado[] = array_map('utf8_encode', $fila);
}

echo json_encode($listado);
$resultado -> close();


?>