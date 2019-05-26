<?php

// Récupère les informations saisies 
$nomt=$_POST["nomt"];
$prix=$_POST["prix"];
$genre=$_POST["genre"];
 
// Récupère l'image inseré par l'utilisateur
/*if(isset($_FILES['fichier']["name"]))
{ 
     $dossier = '../img/produits/';
     $fichier = basename($_FILES['fichier']['name']);
     move_uploaded_file($_FILES['fichier']['tmp_name'], $dossier . $fichier);
	
	// Récupère le chemin de l'image afin de l'inserer dans la base de données
     $img = 'img/produits/' . $_FILES['fichier']['name'] . '';

}*/

include("connect.inc.php");

// Requête d'insertion dans la base de données 
$req="INSERT INTO tshirt (numTshirt, nomtshirt, prix, genre)
values('', '$nomt', '$prix', '$genre')";

// Vérifie que la requête ait bien été effectué

$req2="SELECT MAX(numTshirt) AS 'numt' from tshirt";
$res=mysql_query($req2) or die ("Il y a eu une erreur lors de la requête");

if($q=mysql_query($req) or die ("erreur".mysql_error()))
{

	echo "Le produit a bien été ajouté";
	while($l=mysql_fetch_assoc($res))
		{
			echo "<br>";
			echo 'L\'id du tshirt est = ' .$l["numt"];
			echo "<br>";
			echo "Retenez le";
			echo "<br>";
			echo '<form action="ajout_produit2.php"><input type="submit" value="Suivant"></form>';
		
		}

}
else
{
	echo "Le produit n'a pas été ajouté suite à une erreur dans la requête";
}




?>