<form method="POST" action="panel.php?page=ajout_produit_confirm" enctype="multipart/form-data">
<table>
<!-- Formulaire -->
<!-- <tr>
	<td><b>Image : </b></td>
	<td><input name="fichier" type="file"></td>
</tr> -->
<tr>
	<td><b>Nom Tshirt : </b></td>
	<td><input type="text" name="nomt"></td>
</tr>

<tr>
	<td><b>Prix : </b></td>
	<td><input type="text" name="prix" size="2"></td> 
</tr>

<tr>
	<td><b> Genre : </b></td>
	<td><input type="number" name="genre" size="3" min="1" max="2"></td>
</tr>

</select>
<tr>
	<td><input type="submit" value="Valider"></td>
</tr>
</table>
</form>