<?php
//LLAMAMOS AL ARCHIVO 'CONSTANTS.PHP, PARA OBTENER LOS VALORES DEL HOST
include 'Constants_DB.php';
//connecting to mysql database
$mysql = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);
if ($mysql->connect_error) {
    die('Error de conexion');
} else {
    echo 'conexion esitosa';
}