﻿<?php 
session_start();
echo "<html>";
	echo "<head>";
		echo '<meta charset="utf-8">';
		echo '<title>T-VORE - Site de vente de T-Shirt</title>';
		echo '<link rel="icon" href="images/favicon.ico">';
		echo '<link rel="shortcut icon" href="images/favicon.ico" />';
		echo '<link rel="stylesheet" href="css/style.css">';
	echo '<link rel="stylesheet" href="css/camera.css">';
	echo '	<link rel="stylesheet" href="css/form.css">';
	echo '</head>';

	echo '<body>';

		echo '<header class="page1">';
			echo '<div class="container_12">';
				echo '<div class="grid_12">';
					echo '<h1><a href="#"><img src="images/logo.png"></a></h1>';
					echo '<div class="menu_block">';
					echo '	<nav>';
						echo '	<ul class="sf-menu">';
							echo '	<li class="current men"><a  href="index.php">Accueil</a> <strong class="hover"></strong></li>';
							echo '	<li class="men1"><a  href="#page3">À propos</a><strong class="hover"></strong></li>';
								echo '<li class="men2"><a  href="boutique.php">Boutique</a> <strong class="hover"></strong></li>';

								

								if (empty($_SESSION['admin'])) {
									echo '<li class="men3"><a  href="connect\index.html">Connexion</a> <strong class="hover"></strong></li>';
									
								
									}

									else {
								echo '<li class="men3"><a href="deconnexion.php">Déconnexion</a> <strong class="hover"></strong></li>';
								
								 
								}

								 ?>

								<li class="men4"><a  href="#page4">Nous Contacter</a> <strong class="hover"></strong></li>
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

		<div id="page1" class="content">
			<img src="images/ban.jpg" alt="">
			<div class="ic"></div>
			<div class="container_12">
				<div class="grid_12">
					
					<div class="socials">
						<a href="https://www.facebook.com/T-Vore-329462687718812"></a>
						<a href="https://twitter.com/vore_t"></a>
						<a href="https://plus.google.com/"></a>
						<a href="https://fr.linkedin.com/"></a>
					</div>
				</div>
			</div>
		</div>
		<div id="page2" class="content" id="personnel">
			<div class="container_12">
				<div class="grid_12">
					<div class="slogan">
						<h3>Le personnel de l'organisation</h3>
						
					</div>
				</div>
				<div class="grid_3">
					<div class="box maxheight">
						<img src="images/box_img1.jpg" alt="">
						<div class="text1"><a href="#">Laura Stegner</a></div>Responsable Production
						<div class="socials1">
							<a href="#"></a>
							<a href="#"></a>
							<a href="#"></a>
							<a href="#"></a>
						</div>
					</div>
				</div>
				<div class="grid_3">
					<div class="box maxheight">
						<img src="images/box_img2.jpg" alt="">
						<div class="text1"><a href="#">Anton Stegner</a></div>PDG
						<div class="socials1">
							<a href="#"></a>
							<a href="#"></a>
							<a href="#"></a>
							<a href="#"></a>
						</div>
					</div>
				</div>
				<div class="grid_3">
					<div class="box maxheight">
						<img src="images/box_img3.jpg" alt="">
						<div class="text1"><a href="#">Lisa Haddon </a></div>Directeur Commercial
						<div class="socials1">
							<a href="#"></a>
							<a href="#"></a>
							<a href="#"></a>
							<a href="#"></a>
						</div>
					</div>
				</div>
				<div class="grid_3">
					<div class="box maxheight">
						<img src="images/box_img4.jpg" alt="">
						<div class="text1"><a href="#">Bradley Grosh</a></div>Comptable
						<div class="socials1">
							<a href="#"></a>
							<a href="#"></a>
							<a href="#"></a>
							<a href="#"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="page3" class="content">
			<div class="container_12">
				<div class="grid_12">
					<div class="slogan">
						<h3>À Propos</h3>
						<div class="text1">
							Plateforme internationale de vente de t-shirts, nous sommes le lieu idéal pour tous ceux souhaitant s'habiller de manière moderne. Que ce soient des t-shirts en rapport avec la pop-culture ou des t-shirts geek, laissez libre cours à vos envies en mode. Grâce à notre site intuitif, naviguez aisément entre nos offres et personnalisez facilement vos t-shirts. En plus, de grandes entreprises ou marques de renom font déjà confiance à la qualité élevée de nos impressions et notre service client primé. Alors qu'attendez-vous ? 
							<p>Et portez ce que vous voulez !</p>
						</div>
					</div>
				</div>
				<div class="grid_3">
					<div class="box maxheight1">
						<img src="images/box1_img1.png" alt="">
						<div class="text1">Une boutique variée</div>Nous offrons une gamme importante de t-shirts aux designs uniques afin de satisfaire toutes les envies.
					</div>
				</div>
				<div class="grid_3">
					<div class="box maxheight1">
						<img src="images/box1_img2.png" alt="">
						<div class="text1">Livraison</div>Avec une livraison rapide et gratuite, T-VORE vend et livre aussi ses produits sur tout le continent Européen.
					</div>
				</div>
				<div class="grid_3">
					<div class="box maxheight1">
						<img src="images/box1_img3.png" alt="">
						<div class="text1">Qualité</div>T-VORE offre aussi la possibilité de personnaliser vos t-shirts sur un tissu de qualité pour un prix modeste. 
					</div>
				</div>
				<div class="grid_3">
					<div class="box maxheight1">
						<img src="images/box1_img4.png" alt="">
						<div class="text1">Site Web</div>Notre site internet a été conçu de manière à être intuitif pour le client tout en nous permettant de lui offrir tous nos produits. 
					</div>
				</div>
			</div>
		</div>
		
		<div id="page4" class="content">
			<div class="container_12">
				<div class="grid_12">
					<div class="slogan">
						<h3>Nous contacter</h3>
					</div>
				</div>
				<div class="clear"></div>
				<div class="map">
					<div class="grid_3">
						<div class="text1">Addresse</div>
						<address>
							<dl>
								<dt>La companie T-VORE<br>
								1 Rue des écoles,<br>
								Port-Saint-Louis, 13230.
								</dt>
								<dd><span>Téléphone:</span>04 42 15 85 93</dd>
								<dd><span>Téléphone:</span>06 95 45 23 65</dd>
								<dd><span>FAX:</span>01 25 68 96  85</dd>
								<dd>E-mail: <a href="#" class="link-1">mail@tvore.fr</a></dd>
							</dl>
						</address>
					</div>
					<div class="grid_3">
						<div class="text1">&nbsp;</div>
						<figure class="">
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d592.2000382876173!2d4.803669176579657!3d43.38667912814793!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a5c409f95edcfcb!2sLYCEE+PRIVE+HENRI+LEROY!5e0!3m2!1sfr!2sfr!4v1555597245010!5m2!1sfr!2sfr" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>



						</figure>
					</div>
					<div class="grid_5 prefix_1">
						<div class="text1">Posez nous une question</div>
						<form id="form">
						<div class="success_wrapper">
						<div class="success">Contact form submitted!<br>
						<strong>We will be in touch soon.</strong> </div></div>
						<fieldset>
						<label class="name">
						<input type="text" value="Nom:">
						<br class="clear">
						<span class="error error-empty">*Ce n'est pas un nom valide.</span><span class="empty error-empty">*This field is required.</span> </label>
						<label class="email">
						<input type="text" value="E-mail:">
						<br class="clear">
						<span class="error error-empty">*This is not a valid email address.</span><span class="empty error-empty">*This field is required.</span> </label>
						<label class="message">
						<textarea>Message:</textarea>
						<br class="clear">
						<span class="error">*The message is too short.</span> <span class="empty">*This field is required.</span> </label>
						<div class="clear"></div>
						<div class="btns"><a data-type="submit">Envoyez</a>
						<div class="clear"></div>
						</div></fieldset></form>
					</div>
					<div class="clear"></div>
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