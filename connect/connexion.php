<?php
session_start();

$email=$_POST["email"];
$mdp=$_POST["mdp"];

$mdp=md5($mdp);

include("connect.inc.php");

$req="select idClient, MdpClient from CLIENT where MailClient ='$email'";

$res = mysql_query($req) or die ("erreur".mysql_error());
$m=mysql_fetch_assoc($res);

if ($m["MdpClient"] == $mdp)
{
	
	//header("location:moncompte.php");
	echo '<meta http-equiv="refresh" content="0; URL=..\index.php">';
	$_SESSION["client"]= $m["idClient"];

		if($m["idClient"] < 3)
		{
			$admin=1;
			
			//$_SESSION["admin"] = 1;
		}
		else
		{
			$admin=0;
			//$_SESSION["admin"] = 0;
		}
}
else
{

	//header("location:compte_erreur.php");
	echo '<meta http-equiv="refresh" content="0; URL=..\indexerreur.html">';

}
$_SESSION['admin'] = $admin;

?>