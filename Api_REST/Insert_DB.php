<?php

//LLAMAMOS AL ARCHIVO 'Connect_DB', para denominar a la var '$mysql'
include 'Connect_DB.php';

//INSERCION DE DATOS EN LA TABLA 'USUARIOS'
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    $Nombres = $_POST["Nombres"];
    $Username = $_POST["Username"];
    $Email = $_POST["Email"];
    $Pass = $_POST["Pass"];

    //Creamos el query de insercion de datos en la tabla deseada
    $query = "INSERT INTO Usuarios 
              (Nombres,              Username,           Email,          Pass) 
    VALUES('" . $Nombres . "','" . $Username . "','" . $Email . "','" . $Pass . "')";
    $resultado = $mysql->query($query);

    //Verificando si se inserto los datos correctamente en la tabla
    if ($resultado == true) {
        echo 'El usuario se registro satisfactoriamente';
    } else {
        echo 'Error al conectar con el usuario';
    }
}
