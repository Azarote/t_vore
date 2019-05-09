<table border="1">
	<caption><h3>Liste membres</h3></caption>
<form action="panel.php?page=modif_membre" method="POST">


<?php

include("connect.inc.php");

$req="SELECT *
FROM client
";

$res=mysql_query($req) or die ("Il y a eu une erreur lors de la requête.");

while ($ligne=mysql_fetch_assoc($res))
{

	echo '<tr><td>' . $ligne["IdClient"] . ''; echo "</td>";
	echo '<td>' . $ligne["PrenomClient"]  . ''; echo "</td> ";
	echo '<td>' . $ligne["NomClient"]  . ''; echo "</td> ";
	echo '<td>' . $ligne["adresseclient"]  . ''; echo "</td> ";
	echo '<td>' . $ligne["CpClient"]  . ''; echo "</td> ";
	echo '<td>' . $ligne["Villeclient"]  . ''; echo "</td> ";
	echo '<td>' . $ligne["TelClient"]  . ''; echo "</td> ";
	echo '<td>' . $ligne["MailClient"]  . ''; echo "</td> ";
	echo '<td><input type="radio" name="id" value="' . $ligne["IdClient"]  . '"> '; echo "</td></tr> ";
}

?>
<tr><td colspan="9" align="center"><input type="submit" name="modif" value="modifier">&nbsp&nbsp<input type="submit" name="supp" value="Supprimer"></td></tr>		

</form>

</table>