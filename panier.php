<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>T-VORE - Panier</title>
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/camera.css">
		<link rel="stylesheet" href="css/form.css">
	</head>	
	
	<body>

		<header class="page1">
			<div class="container_12">
				<div class="grid_12">
					<h1><a href="#"><img src="images/logo.png"></a></h1>
					<div class="menu_block">
						<nav>
							<ul class="sf-menu">
								<li class="current men"><a  href="index.php">Accueil</a> <strong class="hover"></strong></li>
								<li class="men1"><a  href="index.php #page3">À propos</a><strong class="hover"></strong></li>
								<li class="men2"><a  href="boutique.php">Boutique</a> <strong class="hover"></strong></li>
								<li class="men3"><a  href="connect\index.html">Connexion</a> <strong class="hover"></strong></li>
								<li class="men4"><a  href="index.php #page4">Nous Contacter</a> <strong class="hover"></strong></li>
								<li class="men5"><a  href="panier.html">Votre Panier</a> <strong class="hover"></strong></li>
							</ul>
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</header>


		<div id="page2" class="content" id="personnel">
			<div class="container_12">
				<div class="grid_12">
					<div class="slogan">
						<h3>Vos commandes</h3>
						<?php  
						session_start();

						var_dump($_SESSION['cart']);

						$wherein = implode(',', $_SESSION['cart']);

						$sql = "
						SELECT * 
						FROM products
						WHERE id IN ($wherein)
						";

						echo "$sql";
						?>
					</div>
				</div>
				
				
			</div>
		</div>

		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="copy">
						<a href="#"><img src="images/footer_logo.png" alt="" width="60"></a>  &copy; 2019 | <a href="#">Privacy Policy</a> <br> Website designed by Judicael/Matteo <a href="admin/index.php" rel="nofollow">Panel Administrateur</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</footer>
	</body>
</html>