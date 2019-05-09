<table>
	
<?php 
$id=$_POST['id'];

if(isset($_POST['modif']))

{


include("connect.inc.php");

$req="SELECT * FROM client WHERE IdClient ='$id'";
$res=mysql_query($req) or die ("Il y a eu une erreur lors de la requête.");
$ligne=mysql_fetch_assoc($res);

echo '<form action="panel.php?page=modification" method="POST">';
echo'<tr><td><input type="hidden" name="id" value="'. $ligne["IdClient"] .'">'; echo '</td></tr> ';
echo '<tr><td> Nom:'; echo '</td>';

echo '<td><input type="text" name="nom" value="'. $ligne["NomClient"] .'" size="15">'; echo '</td></tr> ';
echo '<tr><td>Prenom:'; echo'</TD>';
echo '<td><input type="text" name="prenom" value="'. $ligne["PrenomClient"] .'" size="15">'; echo '</td></tr> ';
echo '<tr><td>Adresse:'; echo'</TD>';
echo '<td><input type="text" name="adresse" value="'. $ligne["adresseclient"] .'"size="35">'; echo '</td></tr> ';
echo '<tr><td>Code postal:'; echo'</TD>';
echo '<td><input type="text" name="cp" value="'. $ligne["CpClient"] .'"size="5">'; echo '</td></tr> ';
echo '<tr><td>Ville:'; echo'</TD>';
echo '<td><input type="text" name="ville" value="'. $ligne["Villeclient"] .'">'; echo '</td></tr> ';
echo '<tr><td>Mail:'; echo'</TD>';
echo '<td><input type="text" name="mail" value="'. $ligne["MailClient"] .'"size="35">'; echo '</td></tr> ';

echo '<tr><td colspan="9" align="center"><input type="submit" name="modifier" value="modifier"></form></td></tr>';


}
else
{
	if (isset($_POST['supp']))
	
	{
	
	include("connect.inc.php");
	$requete="DELETE FROM client WHERE IdClient ='$id'";
	$supp=mysql_query($requete) or die ("Il y a eu une erreur lors de la requête.");
	echo ' Vous avez supprimé le membre. </br></br><a href="panel.php">Retour accueil</a>';
	
	}
	
	else
	
	{
	
	echo 'Il y a eu une erreur lors de la suppression du membre.';

	}
}

?>