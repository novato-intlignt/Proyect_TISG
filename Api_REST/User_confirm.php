<?php
    include "./Connect_DB.php";
    $Username = $_POST['Username'];
    $Pass = sha1($_POST['Pass']);
    $res = $mysql->query("SELECT * FROM Usuarios WHERE 
        Username ='$Username' AND
        Pass ='$Pass' AND
        Confirmado = 'SI'
    ") or die($mysql->error);
    if(mysqli_num_rows($res) > 0){
        header('Location: ../public/admin_dash.html');
    }else{
        echo "Sesion invalida";
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>UserConfirm</title>
    <link rel="shortcut icon" href="../public/assets/icons/logo-favicon.ico" />
    <meta charset="UTF-8">
</head>

<body>

</body>

</html>