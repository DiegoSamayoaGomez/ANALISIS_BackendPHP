<?php

include 'conexion.php';

$query = "SELECT descripcion, imagen, estado, fecha, id_categoria, id_usuario FROM quejas ORDER BY fecha DESC";
//$query = "SELECT * FROM quejas ORDER BY fecha ASC";
//SELECT `id_queja`, `descripcion`, `imagen`, `estado`, `fecha`, `id_categoria`, `id_usuario` FROM `quejas` WHERE 1



$resultado = $conexion -> query($query);

while($fila=$resultado ->fetch_array()){
    $listado[] = array_map('utf8_encode', $fila);
}

echo json_encode($listado);
$resultado -> close();

?>