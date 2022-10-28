<?php
include "conexion.php";


$apellidos = $_POST["apellidos"];
$nombres = $_POST["nombres"];	
$dpi = $_POST["dpi"];	
$correo = $_POST["correo"];	
$contrasena = $_POST["contrasena"];	
$id_jerarquia = $_POST["id_jerarquia"];	

$query = "INSERT INTO usuario(apellidos, nombres, dpi, correo, contrasena, id_jerarquia) 
VALUES('$apellidos', '$nombres', '$dpi', '$correo', '$contrasena', $id_jerarquia)";
$resultado = mysqli_query($conexion, $query);
//mysqli_query($conexion, $query) or die (mysqli_error($conexion));
//mysqli_close($conexion);

if($resultado) {
    echo "Creación de usuario exitosa";
}
else {
    echo "Creación de usuario fallida";
}



?>