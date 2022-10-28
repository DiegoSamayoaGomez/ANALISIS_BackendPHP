<?php


$conexion = new mysqli("localhost", "root","","controlquejas");
if($conexion->connect_errno)
{
  echo "Error Al conectar a la Base de datos ";
} 



?>