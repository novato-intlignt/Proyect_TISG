<?php
    include "./Connect_DB.php";
    $Email = $_POST['Email'];
    $Codigo = $_POST['Codigo'];
    $res = $mysql->query("SELECT * FROM Usuarios WHERE 
    Email ='$Email' 
    AND
    Codigo ='$Codigo'
    ") or die($mysql->error);
    if(mysqli_num_rows($res) > 0){
        $mysql->query("UPDATE Usuarios SET Confirmado = 'SI' WHERE Email = '$Email'");
        echo 'SE HA VERIFICADO LOS DATOS, ya puedes <a href="../public/login.html">iniciar sesion</a>';
    }else{
        echo "Codigo invalido";
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>CodeConfirm</title>
    <link rel="shortcut icon" href="../public/assets/icons/logo-favicon.ico" />
    <meta charset="UTF-8">
    
</head>

<body>

</body>

</html>