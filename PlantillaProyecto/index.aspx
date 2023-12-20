<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PlantillaProyecto.index" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Iniciar sesion</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="login_css/image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_css/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_css/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_css/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="login_css/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_css/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_css/css/util.css">
	<link rel="stylesheet" type="text/css" href="login_css/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="Assets/img/logo-transparente.png" alt="IMG"/>
				</div>

				<form class="login100-form validate-form">
					<span class="login100-form-title">
						Iniciar Sesion
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Usuario">
						<input class="input100" type="text" id="txtuser" placeholder="Usuario">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Ingresa tu contraseña">
						<input class="input100" type="password" id="txtpwd" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" id="btnLogin">
							Iniciar Sesion
						</button>
					</div>

					<%--<div class="text-center p-t-12">
						<span class="txt1">s
							Forgot
						</span>
						<a class="txt2" href="#">
							Username / Password?
						</a>
					</div>--%>

					<%--<div class="text-center p-t-136">
						<a class="txt2" href="#">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>--%>
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="login_css/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="login_css/vendor/bootstrap/js/popper.js"></script>
	<script src="login_css/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="login_css/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="login_css/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
    </script>
<!--===============================================================================================-->
	<script src="login_css/js/main.js"></script>
    <script src="Plugins/sweetalert2.all.min.js"></script>
		<script src="JS/JSIndex.js"></script>
	    <script src="Plugins/CookieJS/js.cookie.min.js"></script>
</body>
</html>