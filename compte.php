<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>T-VORE - Site de vente de T-Shirt</title>
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/camera.css">
		<link rel="stylesheet" href="css/form.css">
		<script src="cleave.min.js"></script>

		

		
	</head>
	<body>

		<header class="page1">
			<div class="container_12">
				<div class="grid_12">
					<h1><a href="#"><img src="images/logo.png"></a></h1>
					<div class="menu_block">
						<nav>
							<ul class="sf-menu">
								<li class="current men"><a  href="index.html">Accueil</a> <strong class="hover"></strong></li>
								<li class="men1"><a  href="#">À propos</a><strong class="hover"></strong></li>
								<li class="men2"><a  href="boutique.html">Boutique</a> <strong class="hover"></strong></li>
								<li class="men3"><a  href="#">Se Connecter</a> <strong class="hover"></strong></li>
								<li class="men4"><a  href="#">Nous Contacter</a> <strong class="hover"></strong></li>
								<li class="men5"><a  href="#">Votre Panier</a> <strong class="hover"></strong></li>
							</ul>
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</header>

		<div id="page1" class="content">
			<img src="images/ban.jpg" alt="">
			<div class="ic"></div>
			<div class="container_12">
				<div class="grid_12">
					<?php
session_start();

if(isset ($_SESSION["membre"]))

{
	//header("location:moncompte.php");
	echo '<meta http-equiv="refresh" content="0; URL=index.html">';
}
else
{


?>
<html>
<head>
<!-- <link rel="stylesheet" type="text/css" href="style.css">
 -->	<meta charset="UTF-8">

	<title>Mon compte</title>


</head>
<body>


<div id="formulaire">
<section>
	<table align="center" id="formulaire">
<form action="connexion.php"  method="POST">
	<tr>
		<td>Identifiant : </td>
	
		<td><input type="text" name="pseudo" size="15"></td>
	</tr>
	<tr>	
		<td>Mot de passe : </td>

		<td><input type="password" name="mdp" size="15"></td>

	</tr>
	<tr>
		<td><input type="submit" value="Se connecter"></td>

	</tr>

</form>
</table>

<p align="center">Vous n'êtes pas inscrit ? <a href="inscription.php">Cliquez ici</a> pour vous inscrire !
</section>	
	
</div>	
	
	
	
</div>
</body>

</html>

<?php
}
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















