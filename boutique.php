<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
								<li class="men1"><a  href="index.php #page3">À propos</a><strong class="hover"></strong></li>
								<li class="men2"><a  href="boutique.php">Boutique</a> <strong class="hover"></strong></li>
								<li class="men3"><a  href="connect\index.html">Connexion</a> <strong class="hover"></strong></li>
								<li class="men4"><a  href="index.php #page4">Nous Contacter</a> <strong class="hover"></strong></li>
								<li class="men5"><a  href="panier.php">Votre Panier</a> <strong class="hover"></strong></li>
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
			$db=mysql_connect("localhost","root","admin") or die("erreur de connexion serveur");
			mysql_select_db("TVORE",$db) or die("erreur de connexion bdd");
		?>

		<div id="page2" class="content">
			<div class="container_12">
				<div class="grid_12">
					<div class="slogan">
						<h3>T-shirts pour Hommes</h3>
					</div>
				</div>


				
				<?php
				$requete='SELECT t.numTshirt, t.nomtshirt, t.prix, p.cheminImage, r.numRef
				          FROM tshirt AS t
				          INNER JOIN photo AS p ON p.numTshirt = t.numTshirt AND p.parDefaut = 1
				          INNER JOIN reftshirt AS r ON r.numTshirt = t.numTshirt AND r.parDefaut = 1
				          WHERE t.genre=1
				          ORDER BY t.nomtshirt';
				$resultat=mysql_query($requete) or die("erreur requete");
				while ($ligne=mysql_fetch_assoc($resultat)) 
				{
					echo '<a href="developpeur.php?ref='.$ligne["numRef"].'">
					        <div class="grid_3">
				 				<div class="box maxheight">
				 					<img src="photos/'.$ligne["cheminImage"].'">
				 					<div class="text1">'.utf8_encode($ligne["nomtshirt"]).'</div>
				 					<div class="text2">'.$ligne["prix"].' €</div>
				 				</div>
				 		    </div>
				 		  </a>';
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
				$requete='SELECT t.numTshirt, t.nomtshirt, t.prix, p.cheminImage, r.numRef
				          FROM tshirt AS t
				          INNER JOIN photo AS p ON p.numTshirt = t.numTshirt AND p.parDefaut = 1
				          INNER JOIN reftshirt AS r ON r.numTshirt = t.numTshirt AND r.parDefaut = 1
				          WHERE t.genre=2
				          ORDER BY t.nomtshirt';
				$resultat=mysql_query($requete) or die("erreur requete");
				while ($ligne=mysql_fetch_assoc($resultat)) 
				{
					echo '<a href="developpeur.php?ref='.$ligne["numRef"].'">
					        <div class="grid_3">
				 				<div class="box maxheight">
				 					<img src="photos/'.$ligne["cheminImage"].'">
				 					<div class="text1">'.utf8_encode($ligne["nomtshirt"]).'</div>
				 					<div class="text2">'.$ligne["prix"].' €</div>
				 				</div>
				 		    </div>
				 		  </a>';
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
				<?php
				$requete='SELECT t.numTshirt, t.nomtshirt, t.prix, p.cheminImage, r.numRef
				          FROM tshirt AS t
				          INNER JOIN photo AS p ON p.numTshirt = t.numTshirt AND p.parDefaut = 1
				          INNER JOIN reftshirt AS r ON r.numTshirt = t.numTshirt AND r.parDefaut = 1
				          WHERE t.genre=0
				          ORDER BY t.nomtshirt';
				$resultat=mysql_query($requete) or die("erreur requete");
				while ($ligne=mysql_fetch_assoc($resultat)) 
				{
					echo '<a href="developpeur.php?ref='.$ligne["numRef"].'">
					        <div class="grid_3">
				 				<div class="box maxheight">
				 					<img src="photos/'.$ligne["cheminImage"].'">
				 					<div class="text1">'.utf8_encode($ligne["nomtshirt"]).'</div>
				 					<div class="text2">'.$ligne["prix"].' €</div>
				 				</div>
				 		    </div>
				 		  </a>';
		 		}
			?></div>
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


					