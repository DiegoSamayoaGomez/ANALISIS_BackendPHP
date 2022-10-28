<?php

    class conexion 
    {
        function Conectar()
        {
          $mysqli = new mysqli("localhost", "root","","controlquejas");
          
          if($mysqli->connect_errno)
          {
            echo "Error Al conectar a la Base de datos ".$mysqli->connect_errno;
          } 
          return $mysqli; 
        }
    }
?>