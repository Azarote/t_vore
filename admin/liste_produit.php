<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="table.css">
</head>
<body>




<table class="zui-table" align="center" style="color: black;" >
<center><h3>Liste des produits</h3></center>
<form method="POST" action="panel.php?page=modif_produit">
<tr align="center">
	<td><b>NumTshirt</b></td>
	<td><b>Nom</b></td>
	<td><b>Prix</b></td>
	<td><b>Stock</b></td>
</tr>
<?php

include("connect.inc.php");

$req="SELECT tshirt.numTshirt , tshirt.nomtshirt, stock, prix FROM tshirt, reftshirt
WHERE tshirt.numTshirt = reftshirt.numTshirt
group by numTshirt";

$res=mysql_query($req) or die ("Il y a eu une erreur lors de la requête");

	
	while($l=mysql_fetch_assoc($res))
		{
			echo '<tr align="center"><td>' . $l["numTshirt"] . ''; echo "</td>";
			echo '<td>' . $l["nomtshirt"]  . ''; echo "</td> ";
			echo '<td>' . $l["prix"]  . ' €'; echo "</td>";
			echo '<td>' . $l["stock"] . ''; echo "</td>";
		
		}


?>

</form>
</table>
</body>
</html>