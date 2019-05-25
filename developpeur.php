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
		<link rel="stylesheet" href="css/developpeur.css">
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
								<li class="men3"><a  href="connect\index.html">Connection</a> <strong class="hover"></strong></li>
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

	<?php
	if (isset($_GET['num']))
	{
	$numTshirt=$_GET['num'];
	$numCouleur=$_GET['couleur'];
	
	$db=mysql_connect("localhost","root","admin") or die("erreur de connection".mysql_error());		/*connection au serveur MySQL*/
	mysql_select_db("TVORE",$db) or die("Erreur de connection à la base T-VORE");		/*ouverture de la base TVORE*/
	$resultat = mysql_query("SELECT nomtshirt, prix FROM tshirt WHERE numTshirt=$numTshirt");
	while ($ligne=mysql_fetch_assoc($resultat)) 
	{
		$nomtshirt=utf8_encode($ligne["nomtshirt"]);
		$prix=$ligne["prix"];
	}


	echo "<div id='page2' class='content'>
		  <div class='container_12'>
				<div class='grid_12'>
						<div class='slogan'>
							<h3>$nomtshirt</h3>
						</div>
					</div>
			
			<div class='photoDiv'>";

	$resultat = mysql_query("SELECT cheminImage FROM photo WHERE numTshirt=$numTshirt and numCouleur=$numCouleur");
	while ($ligne=mysql_fetch_assoc($resultat)) 
	{
		$cheminImage=$ligne["cheminImage"];
		echo "<div class='photo1'>	
				<img src='photos/$cheminImage'>
  			  </div>";
  	}
  	echo "</div>	

				<h2>$prix €</h2>
				
				<div class='listeRoulante'>
				<span class='custom-dropdown custom-dropdown--white'>
    <select class='custom-dropdown__select custom-dropdown__select--white'>
        <option>Couleur</option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
    </select>
</span>

<span class='custom-dropdown custom-dropdown--white'>
    <select class='custom-dropdown__select custom-dropdown__select--white'>
        <option>Taille</option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
    </select>
</span>
</div>

		<div class='validDev'><a data-type='submit'>Ajouter au Panier</a></div>
	</div>
</div>";

		mysql_close($db); /*fermeture de MySQL*/
    }
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
