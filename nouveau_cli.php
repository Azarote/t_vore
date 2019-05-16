<?php 
$nom=$_POST['nom'];
$prenom=$_POST['prenom'];
$adresse=$_POST['adresse'];
$cp=$_POST['cp'];
$ville=$_POST['ville'];
$tel=$_POST['tel'];
$mail=$_POST['mail'];
$mdp1=$_POST['mdp1'];
$mdp2=$_POST['mdp2'];


$mdp1=md5($mdp1);
$mdp2=md5($mdp2);

include("connect.inc.php");
$adresse = str_replace("'", "\'", $adresse);
if ( $mdp1 == $mdp2 )
{
$req="insert into client (NomClient, PrenomClient, adresseclient, CpClient, Villeclient, TelClient, MailClient, MdpClient) values ('$nom', '$prenom', '$adresse', '$cp', '$ville', '$tel', '$mail', '$mdp2')";
mysql_query($req) or die ("erreur".mysql_error());

echo '<meta http-equiv="refresh" content="0; URL=ins_confirmation.php">';
//header("location:ins_confirmation.php");
}
else
{
echo '<meta http-equiv="refresh" content="0; URL=index.php">';
//header("location:index.php");
}


?>