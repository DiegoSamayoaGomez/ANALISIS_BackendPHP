<?php 
//include 'conexion.php'
$conexion = mysqli_connect("localhost", "root","","controlquejas");

$correo="undefined";
$contrasena="undefined";

if (isset($_POST["correo"])){
    $correo = $_POST["correo"]; 
}

if (isset($_POST["contrasena"])){
    $contrasena = $_POST["contrasena"];
}


$query = "SELECT * FROM usuario WHERE correo = '$correo' AND contrasena = '$contrasena'";
$resultado = mysqli_query($conexion, $query);

if($resultado -> num_rows > 0) {
    echo "exitoso"; 
}
else {
    echo "fallido";
}


?>

