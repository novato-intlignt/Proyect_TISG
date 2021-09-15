<?php
// DESTINATARIO
$to = 'destinatario@email.com';
// TITULO
$subject = "Gracias por registrarse con nosotros";

// CODIGO aleatorio
$Codigo = rand(100000,999999);

// MENSAJE del correo
$message = '
<html>
<head>
    <meta charset="UTF8" />
  <title>Gracias por registrarte!</title>
</head>
<body>
  <p>Tu cuenta esta por crearse, para corroborar la informacion registrada, verifica en el sigiuente enlace</p>
  <p>
  ------------------------
  Username: '.$Username.'
  Correo: '.$Email.'
  ------------------------
  </p> Clic aqui:
  <a href="http://127.0.0.1/app_tisg/public/auth.php?Email='.$Email.'"> Verificar cuenta </a>
  <p>Tu codigo de verificacion es:</p>
 <h2>---'.$Codigo.'---</h2>
  
</body>
</html>
';
// Para enviar un correo HTML, debe establecerse la cabecera Content-type
$headers = 'From: noreply@example.com' . "\r\n";
$headers.= "Reply-to: noreply@example.com" . "\r\n";
$headers.= "X-Mailer: PHP/". phpversion();

//VERIFICAMOS EL ENVIO DEL E-mail
$Enviado = false;
if(mail($to, $subject, $message, $headers)){
  $enviado = true;
}
?>