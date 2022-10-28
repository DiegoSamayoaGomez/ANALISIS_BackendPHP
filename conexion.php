<?php

    class conexion 
    {
        function Conectar()
        {
          $mysqli = new mysqli("bnltxzejf6qnxll0xjii-mysql.services.clever-cloud.com", //HOST
           "u9vvluuiobf0rl09",//USUARIO
           "sn3cwuhPNa27LMV1Sbeh",//Contraseña
           "bnltxzejf6qnxll0xjii");//Nombre de BDD

           
          //$mysqli = new mysqli("localhost", "root","","controlquejas");
          
          if($mysqli->connect_errno)
          {
            echo "Error Al conectar a la Base de datos ".$mysqli->connect_errno;
          } 
          return $mysqli; 
        }
    }
?>