<?php 
if(isset($_GET['Email'] )){
	$Email = $_GET['Email'];
}else{
	header('Location: login.html');
}
?>

<!DOCTYPE html>
<html>

<head>
	<title>Auth</title>
	<link rel="shortcut icon" href="assets/icons/logo-favicon.ico" />
	<link rel="stylesheet" type="text/css" href="css/auth_styles.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
	<img class="wave" src="assets/images/wave.png">
	<div class="container">
		<div id="particles-js"></div>
		<div class="img">
			<img src="assets/images/auth_img.svg">
		</div>
		<div class="login-content">
			<form action="../dev/Code_confirm.php" method="POST">
				<img src="assets/images/avatar.svg">
				<h2 class="title">Authenticate</h2>
				<div class="input-div one">
					<div class="i">
						<i class="fa fa-code"></i>
					</div>
					<div class="div">
						<h5>Code</h5>
						<input type="number" class="input" autocomplete="off" name="Codigo" require>
						<input type="hidden" class="input" autocomplete="off" id="Email" name="Email" value="<?php echo $Email;?>">
					</div>
				</div>
				<a href="#">Resend code?</a>
				<div class="register">
					<input type="submit" class="btn" value="Register" >
				</div>
			</form>
		</div>
		<script src="http://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>
		<!-- stats.js lib -->
		<script src="js/particles.js"></script>
	</div>
	<script type="text/javascript" src="js/auth_script.js"></script>
</body>

</html>