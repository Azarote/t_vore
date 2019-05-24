<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>T-VORE - Boutique</title>
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="css/boutique.css">
		<link rel="stylesheet" href="css/camera.css">
		<link rel="stylesheet" href="css/form.css">
		<link rel="stylesheet" type="text/css" href="css/boutiqueBox.css">
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
								<li class="men1"><a  href="#">À propos</a><strong class="hover"></strong></li>
								<li class="men2"><a  href="boutique.php">Boutique</a> <strong class="hover"></strong></li>
								<li class="men3"><a  href="connect\index.php">Connection</a> <strong class="hover"></strong></li>
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


		<div id="page2" class="content">
			<div class="container_12">
				<div class="grid_12">
					<div class="slogan">
						<h3>T-shirts pour Hommes</h3>
					</div>
				</div>


				
				<?php

				$db=mysql_connect("localhost","root","admin") or die("erreur de connexion serveur");
				mysql_select_db("TVORE",$db) or die("erreur de connexion bdd");

				$requete='SELECT NumTshirt, nomtshirt, prix, photo FROM TSHIRT WHERE numsexe=1'or die("erreur requete");
				$resultat=mysql_query($requete);
				while ($ligne=mysql_fetch_assoc($resultat)) 
				{
								
				echo '
		 		<a href="developpeur.php?num='.$ligne["NumTshirt"].'"><div class="grid_3">
		 			<div class="box maxheight">
		 				'.$ligne["photo"].'
		 				<div class="text1">'.$ligne["nomtshirt"].'</div>'.$ligne["prix"].'
		 			€</div>
		 		</div></a>
		 	';
}
			?></div>
		 </div>
				
			

		<div id="page3" class="content"> 
			<div class="container_12">
				<div class="grid_12">
					<div class="slogan">
						<h3>T-shirts pour Femmes</h3>
					</div>
				</div>
								<?php

				$db=mysql_connect("localhost","root","admin") or die("erreur de connexion serveur");
				mysql_select_db("TVORE",$db) or die("erreur de connexion bdd");

				$requete='SELECT NumTshirt, nomtshirt, prix, photo FROM TSHIRT WHERE numsexe=2'or die("erreur requete");
				$resultat=mysql_query($requete);
				while ($ligne=mysql_fetch_assoc($resultat)) 
				{
								
				echo '
		 		<a href="developpeur.php?num='.$ligne["NumTshirt"].'"><div class="grid_3">
		 			<div class="box maxheight">
		 				'.$ligne["photo"].'
		 				<div class="text1">'.$ligne["nomtshirt"].'</div>'.$ligne["prix"].'
		 			€</div>
		 		</div></a>
		 	';
}
			?></div>
		 </div>
		
		<div id="page4" class="content">
			<div class="container_12">
				<div class="grid_12">
					<div class="slogan">
						<h3>Goodies</h3>
							</div>
				</div>
				<a href="#"><div class="grid_3">
					<div class="box maxheight1">
						<img src="photos/goodies/coussinOurs.jpg" alt="">
						<div class="text1">Coussin Ours</div>17,99€
					</div>
				</div></a>
				<a href="#"><div class="grid_3">
					<div class="box maxheight1">
						<img src="photos/goodies/mugCode.jpg" alt="">
						<div class="text1">Mug de Développeur</div>14,99€
					</div>
				</div></a>
				<a href="#"><div class="grid_3">
					<div class="box maxheight1">
						<img src="photos/goodies/sacSport.jpg" alt="">
						<div class="text1">Sac de Sport</div>24,99€
					</div>
				</div></a>
				<a href="#"><div class="grid_3">
					<div class="box maxheight1">
						<img src="photos/goodies/tapisSouris.jpg" alt="">
						<div class="text1">Tapi de Souris Ramen </div>24,99€
					</div>
				</div></a>
				<a href="#"><div class="grid_3">
					<div class="box maxheight1">
						<img src="photos/goodies/coussinOurs.jpg" alt="">
						<div class="text1">Coussin Ours</div>17,99€
					</div>
				</div></a>
				<a href="#"><div class="grid_3">
					<div class="box maxheight1">
						<img src="photos/goodies/mugCode.jpg" alt="">
						<div class="text1">Mug de Développeur</div>14,99€
					</div>
				</div></a>
				<a href="#"><div class="grid_3">
					<div class="box maxheight1">
						<img src="photos/goodies/sacSport.jpg" alt="">
						<div class="text1">Sac de Sport</div>24,99€
					</div>
				</div></a>
				<a href="#"><div class="grid_3">
					<div class="box maxheight1">
						<img src="photos/goodies/tapisSouris.jpg" alt="">
						<div class="text1">Tapi de Souris Ramen </div>24,99€
					</div>
				</div></a>
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


					