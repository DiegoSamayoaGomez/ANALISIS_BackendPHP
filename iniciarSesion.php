<?php

include 'conexion.php';

$correo = $_POST["correo"];
$contrasena = $_POST["contrasena"];


$query = "SELECT * FROM usuario WHERE correo = $correo AND contrasena = $contrasena";
$resultado = mysqli_query($conexion, $query);


if($resultado -> num_rows > 0) {
    echo "Ingreso exitoso";
}
else {
    echo "Ingreso fallido";
}

?>