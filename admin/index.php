<?php session_start();

// Détermine si il y a une valeur dans la variable de session
switch ($_SESSION)
{
	case empty($_SESSION["admin"]):
		$_SESSION["admin"]=0;
		break;
}

if (isset($_SESSION["admin"]))
{

if($_SESSION["admin"]== 1)
	{
		header("location:panel.php");
	}

	else
	{

echo'
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="back.css">
		<meta charset="UTF-8">
	</head>
<body>

	<div id="connexion">
		<table>
			<form method="POST" action="connexion.php">
				<tr>
					<b>Veuillez vous connecter</b>
				</tr>
				<tr>
					<td>Email :</td><td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>Mot de passe : </td><td><input type="password" name="mdp"></td>
				</tr>
				<td>
					<input type="submit" value="Se connecter">
				</td>
				<td align="right">
					<a href="../index.php">Revenir à l\'accueil</a>
				</td>

			</form>
		</table>
	</div>
</body>
</html>';

	}
}
	else
	{
		$_SESSION["admin"]=0;
		header("location:index.php");
	}
?>