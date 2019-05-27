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
	  $IdClient = $_SESSION["client"];
      $db=mysql_connect("localhost","root","admin") or die("erreur de connection".mysql_error());		/*connection au serveur MySQL*/
   	  mysql_select_db("TVORE",$db) or die("Erreur de connection à la base T-VORE");		/*ouverture de la base TVORE*/
   	?>
		<div id="page2" class="content" id="personnel">
			<div class="container_12">
				<div class="grid_12">
					<div class="slogan">
						<h3>Votre panier</h3>
						<?php
						  $IdClient = $_SESSION["client"];
						  if (isset($_POST['ajoutPanier']))
						  {
						  	$numRef = $_POST['ref'];
						    mysql_query("INSERT INTO panier (IdClient, numRef) VALUES ($IdClient, $numRef)") or die("erreur requete");
						  }
						  $requete = "SELECT p.numRef, r.stock, t.nomTshirt, t.prix, c.libelleCouleur, ta.libelleTaille
						              FROM panier AS p
						              INNER JOIN reftshirt AS r ON r.numRef = p.numRef
						              INNER JOIN tshirt AS t ON t.numTshirt = r.numTshirt
						              INNER JOIN couleur AS c ON c.numCouleur = r.numCouleur
						              INNER JOIN taille AS ta ON ta.numTaille = r.numTaille
						              WHERE p.IdClient = $IdClient
						              ORDER BY t.nomTshirt, c.libelleCouleur, ta.numTaille";
						  $resultat = mysql_query($requete) or die("erreur requete");
						  echo "<table>
						          <tr class='refCol'><th>Référence</th><th>Nom</th><th>Couleur</th><th>Taille</th><th>Prix</th></tr>
						       ";
							while ($ligne=mysql_fetch_assoc($resultat)) 
							{
								$numRef=$ligne["numRef"];
								$nomTshirt=utf8_encode($ligne["nomTshirt"]);
								$libelleCouleur=$ligne["libelleCouleur"];
								$libelleTaille=$ligne["libelleTaille"];
								$prix=$ligne["prix"];
							    echo '<tr><td class="refCol2"><a href="?ref='.$numRef.'">'.$numRef.'</a></td><td>'.$nomTshirt.'</td><td>'.$libelleCouleur.'</td><td>'.$libelleTaille.'</td><td>'.$prix.'</td></tr>
							         ';
						  	}
						  	echo "</table>
						  	     ";

						  $requete = "SELECT SUM(t.prix) AS total
						              FROM panier AS p
						              INNER JOIN reftshirt AS r ON r.numRef = p.numRef
						              INNER JOIN tshirt AS t ON t.numTshirt = r.numTshirt
						              WHERE p.IdClient = $IdClient";
						  $resultat = mysql_query($requete) or die("erreur requete");
							while ($ligne=mysql_fetch_assoc($resultat)) 
							{
								$total=$ligne["total"];
							    echo "<h2>Prix total : $total</h2>";
						  	}

							echo '<div>
							        <form method="post" action="finCommande.php">
							          <input type="submit" value="Valider la commande" name="valider" class="validDev">
							        </form>
							      </div>';

                     	  mysql_close($db); /*fermeture de MySQL*/

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