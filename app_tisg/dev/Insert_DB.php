<?php

//LLAMAMOS AL ARCHIVO 'Connect_DB', para denominar a la var '$mysql'
include 'Connect_DB.php';

//INSERCION DE DATOS EN LA TABLA 'USUARIOS'

   if( isset($_POST['Username'] ) && isset($_POST['Email']) && isset($_POST['Telefono'] ) 
    && isset($_POST['Pass'] )){
        
        $name=$_POST['Username'];
        $email=$_POST['Email'];
        $Telefono = $_POST["Telefono"];
        $pass=sha1($_POST['Pass']);
        include "mail.php";
        if($enviado){
            $query = "INSERT INTO Usuarios 
                    (Username,          Email,          Telefono,          Pass,    Confirmado,     Codigo) 
        VALUES('" . $Username . "','" . $Email . "','" . $Telefono . "','" . $Pass . "','NO','" . $Codigo . "')";
        $resultado = $mysql->query($query);
        //Verificando si se inserto los datos correctamente en la tabla
        if ($resultado == true) {
        echo 'El usuario se registro satisfactoriamente';
        } else {
        echo 'Error al conectar con el usuario';
        }
        }else{
            echo "no se pudo enviar el email";
    }
}
