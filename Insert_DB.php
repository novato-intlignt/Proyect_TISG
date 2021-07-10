<?php

//LLAMAMOS AL ARCHIVO 'Connect_DB', para denominar a la var '$mysql'
include 'Connect_DB.php';

//INSERCION DE DATOS EN LA TABLA 'USUARIOS'
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    $Nombres = $_POST["Nombres"];
    $Username = $_POST["Username"];
    $Email = $_POST["Email"];
    $Pass = $_POST["Pass"];

    $query = "INSERT INTO Usuarios 
              (Nombres,              Username,           Email,          Pass) 
    VALUES('" . $Nombres . "','" . $Username . "','" . $Email . "','" . $Pass . "')";
    $resultado = $mysql->query($query);

    //verificando si se inserto los datos correctamente
    if ($resultado == true) {
        echo 'El usuario se registro satisfactoriamente';
    } else {
        echo 'Error al conectar con el usuario';
    }
}
