<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8">
		<title>T-VORE - Developpeur</title>
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="css/boutique.css">
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
								<li class="current men"><a  href="index.html">Accueil</a> <strong class="hover"></strong></li>
								<li class="men1"><a  href="index.html #page3">À propos</a><strong class="hover"></strong></li>
								<li class="men2"><a  href="boutique.html">Boutique</a> <strong class="hover"></strong></li>
								<li class="men3"><a  href="#">Connection</a> <strong class="hover"></strong></li>
								<li class="men4"><a  href="index.html #page4">Nous Contacter</a> <strong class="hover"></strong></li>
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

	<?php
	if (isset($_POST['dev']))
	{
	$num=$_POST['NumTshirt'];
	$nom=$_POST['nomtshirt']; 
	$prix=$_POST['prix'];
	$couleur=$_POST['numcouleur'];
	$taille=$_POST['numtaille'];
	$photo=$_POST['photo'];
	$stock=$_POST['stock'];
	}
	$db=mysql_connect("localhost","root","toor") or die("erreur de connection".mysql_error());		/*connection au serveur MySQL*/
	mysql_select_db("TVORE",$db) or die("Erreur de connection à la base T-VORE");		/*ouverture de la base TVORE*/
	$nom = mysql_query("SELECT nomtshirt FROM TSHIRT WHERE NumTshirt=$num");
		
		echo"<div id='page2' class='content'>
			<div class='container_12'>
				<div class='grid_12'>
					<div class='slogan'>
						echo<h3>$require='SELECT $nom FROM TSHIRT WHERE $num='1'</h3>';
					</div>
				</div>
				
				<img src='photos/devGris/devGris.jpg'>

			</div>
		</div>";
		mysql_close($db) /*fermeture de MySQL*/

?>
		

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