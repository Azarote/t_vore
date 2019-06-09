<?php  
session_start();
echo '<!DOCTYPE html>';
echo '<html>';
	echo '<head>';
		echo '<meta charset="utf-8">';
		echo '<title>T-VORE - T-shirt</title>';
		echo '<link rel="icon" href="images/favicon.ico">';
		echo '<link rel="shortcut icon" href="images/favicon.ico" />';
		echo '<link rel="stylesheet" href="css/boutique.css">';
		echo '<link rel="stylesheet" href="css/camera.css">';
		echo '<link rel="stylesheet" href="css/form.css">';
		echo '<link rel="stylesheet" href="css/developpeur.css">';
	echo '</head>';
	
	echo '<body>';

		echo '<header class="page1">';
			echo '<div class="container_12">';
				echo '<div class="grid_12">';
					echo '<h1><a href="#"><img src="images/logo.png"></a></h1>';
					echo '<div class="menu_block">';
						echo '<nav>';
							echo '<ul class="sf-menu">';
								echo '<li class="current men"><a  href="index.php">Accueil</a> <strong class="hover"></strong></li>';
								echo '<li class="men1"><a  href="index.php #page3">À propos</a><strong class="hover"></strong></li>';
								echo '<li class="men2"><a  href="boutique.php">Boutique</a> <strong class="hover"></strong></li>';
								if (empty($_SESSION['admin'])) {
									echo '<li class="men3"><a  href="connect\index.html">Connexion</a> <strong class="hover"></strong></li>';
									
								
									}

									else {
								echo '<li class="men3"><a href="deconnexion.php">Déconnexion</a> <strong class="hover"></strong></li>';
								
								 
								}
								?>
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
	if (isset($_GET['ref']))
	{
	$numRef=$_GET['ref'];
	
	$db=mysql_connect("localhost","root","admin") or die("erreur de connection".mysql_error());		/*connection au serveur MySQL*/
	mysql_select_db("TVORE",$db) or die("Erreur de connection à la base T-VORE");		/*ouverture de la base TVORE*/
	$resultat = mysql_query("SELECT r.numTshirt, r.numCouleur, r.stock, t.nomtshirt, t.prix, c.libelleCouleur, ta.libelleTaille
		                     FROM reftshirt AS r
		                     INNER JOIN tshirt AS t ON t.numTshirt = r.numTshirt
		                     INNER JOIN couleur AS c ON c.numCouleur = r.numCouleur
		                     INNER JOIN taille AS ta ON ta.numTaille = r.numTaille
		                     WHERE r.numRef=$numRef") or die("erreur requete");
	while ($ligne=mysql_fetch_assoc($resultat)) 
	{
		$numTshirt=$ligne["numTshirt"];
		$numCouleur=$ligne["numCouleur"];
		$stock=$ligne["stock"];
		$nomtshirt=utf8_encode($ligne["nomtshirt"]);
		$prix=$ligne["prix"];
		$libelleCouleur=$ligne["libelleCouleur"];
		$libelleTaille=$ligne["libelleTaille"];
	}


	echo "<div id='page2' class='content'>
		  <div class='container_12'>
				<div class='grid_12'>
						<div class='slogan'>
							<h3>$nomtshirt $libelleCouleur $libelleTaille</h3>
							<h3>Quantité en stock $stock</h3>
						</div>
					</div>
			
			<div class='photoDiv'>";

	$resultat = mysql_query("SELECT cheminImage FROM photo WHERE numTshirt=$numTshirt and numCouleur=$numCouleur") or die("erreur requete");
	while ($ligne=mysql_fetch_assoc($resultat)) 
	{
		$cheminImage=$ligne["cheminImage"];
		echo "<div class='photo1'>	
				<img src='photos/$cheminImage'>
  			  </div>";
  	}
  	echo "</div>	

				<h2>$prix €</h2>";

	// On recherche les autres références
	$requete = "SELECT r.numRef, r.stock, c.libelleCouleur, ta.libelleTaille
                FROM reftshirt AS r
                INNER JOIN couleur AS c ON c.numCouleur = r.numCouleur
                INNER JOIN taille AS ta ON ta.numTaille = r.numTaille
                WHERE r.numTshirt=$numTshirt AND r.numRef != $numRef
                ORDER BY c.libelleCouleur, ta.numTaille";
	$resultat = mysql_query($requete) or die("erreur requete");

    // Tester si il y a un résultat

	echo "<div>D'autres références existent pour cet article :</div>

	    <table>
	        <tr class='refCol'><th> Référence </th> <th> Couleur </th> <th> Taille </th> <th> Quantité </th></tr>
	     ";
	while ($ligne=mysql_fetch_assoc($resultat)) 
	{
		$numRef2=$ligne["numRef"];
		$stock=$ligne["stock"];
		$libelleCouleur=$ligne["libelleCouleur"];
		$libelleTaille=$ligne["libelleTaille"];
	    echo '<tr><td class="refCol2"><a href="?ref='.$numRef2.'">'.$numRef2.'</a></td><td>'.$libelleCouleur.'</td><td>'.$libelleTaille.'</td><td>'.$stock.'</td></tr>
	         ';
  	}
  	echo "</table>";

	echo '<div>
	        <form method="post" action="panier.php">
	          <input type="hidden" value="'.$numRef.'" name="ref">
	          <input type="submit" value="Ajouter au panier" name="ajoutPanier" class="validDev">
	        </form>
	      </div>
	</div>
</div>';

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
