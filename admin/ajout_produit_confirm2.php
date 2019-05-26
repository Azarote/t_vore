<?php

// Récupère les informations saisies 
$idt=$_POST["idt"];
$idc=$_POST["idc"]; 
// Récupère l'image inseré par l'utilisateur
if(isset($_FILES['fichier']["name"]))
{ 
     $dossier = '../photos/nouveau/';
     $fichier = basename($_FILES['fichier']['name']);
     move_uploaded_file($_FILES['fichier']['tmp_name'], $dossier . $fichier);
	
	// Récupère le chemin de l'image afin de l'inserer dans la base de données
     $img = 'photos/nouveau/' . $_FILES['fichier']['name'] . '';

}

include("connect.inc.php");

// Requête d'insertion dans la base de données 
$req="INSERT INTO photo (numPhoto, numTshirt, numCouleur, cheminImage)
values('', '$idt', '$idc', '$img')";

// Vérifie que la requête ait bien été effectué

if($q=mysql_query($req) or die ("erreur".mysql_error()))
{

	echo "La photo a bien été ajouté";
	echo '<meta http-equiv="refresh" content="0; URL=panel.php">';

}
else
{
	echo "La photo n'a pas été ajouté suite à une erreur dans la requête";
}




?>