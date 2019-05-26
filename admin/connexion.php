<html>
	<meta charset="UTF-8">
<?php 
session_start();

$email=$_POST["email"];
$mdp=$_POST["mdp"];

$mdp=md5($mdp);

include("connect.inc.php");

$req="SELECT IdClient, NomClient, MailClient, MdpClient FROM CLIENT Where MailClient='$email' AND MdpClient='$mdp'";
$res=mysql_query($req) or die ("Une erreur dans la requête");
$l=mysql_fetch_assoc($res);

$_SESSION["client"]=$l["IdClient"];

// Si le résultat de la requête n'est pas vide (si le couple email/mot de passe existe dans la base de données)
if(!empty($l))

{

	if ($l["IdClient"] < 3)
		{
			//header('location: panel.php');
			//$URL="panel.php";
			//echo "<script type='text/javascript'>document.location.href='{$URL}';</script>";
			//echo '<META HTTP-EQUIV="refresh" content="0;URL=' . $URL . '">';
			echo '<meta http-equiv="refresh" content="0; URL=panel.php">';
			$admin=1;
		}

	else
		{
			//header("location: ../index.html");
			echo '<meta http-equiv="refresh" content="0; URL=../index.html">';
			$admin=0;
		}
}

else
{
	//header("location:erreur.html");
	echo '<meta http-equiv="refresh" content="0; URL=erreur.html">';
}

$_SESSION['nom'] = $l["NomClient"];
$_SESSION['admin'] = $admin;

?>

</html>