<?php
session_start();

// Association de l'id client à la variable $id (pour la requête)
$id=$_SESSION["client"];

include("connect.inc.php");

// Requête pour récuperer toutes les infos de l'admin connecté
$req="SELECT PrenomClient, MailClient, MdpClient FROM client Where idclient= '$id'";
$res=mysql_query($req) or die ("Une erreur dans la requête");
$l=mysql_fetch_assoc($res);

// Pour le bandeau
$_SESSION['prenomclient'] = $l["PrenomClient"];


// Si admin différent de 1 (membre non admin)
if($_SESSION["admin"]!=1)
{
	
	header("location:../index.php");
}

?>
<html>
	
	<head>
		
		<meta charset="UTF-8">
	</head>

	<body>

<header>
	Bienvenue <?php echo $_SESSION['prenomclient']; ?>
	<a href="../deconnexion.php">(Se déconnecter)</a>
</header>

<div class="site">

<nav>
		<?php include("nav.html"); ?>
</nav>

<article>

<?php

// Si une page a été selectionné
if(isset($_GET["page"]))
{

	$page=$_GET["page"];
	include("$page.php");
}

else
	{
		// Si aucune page selectionné, affichage de la liste des commandes.
		include("liste_commande.php");
	}
?>

</article>
</div>
</body>
</html>