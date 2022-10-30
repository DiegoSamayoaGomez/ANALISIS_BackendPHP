<?php

/* CONEXION LOCAL
$conexion = new mysqli("localhost", "root","","controlquejas");
if($conexion->connect_errno)
{
  echo "Error Al conectar a la Base de datos ";
} 

*/

//Conexion a Clever CLoud
$conexion = new mysqli("bnltxzejf6qnxll0xjii-mysql.services.clever-cloud.com",
 "u9vvluuiobf0rl09",
 "sn3cwuhPNa27LMV1Sbeh",
 "bnltxzejf6qnxll0xjii");
if($conexion->connect_errno)
{
  echo "Error Al conectar a la Base de datos ";
} 




?>