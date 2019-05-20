<?php 
//connexion au serveur MySql
$db=mysql_connect("localhost","root","admin") or die ("erreur de connexion".mysql_error());
//connexion à la base TVORE
mysql_select_db("TVORE",$db) or die ("erreur de connexion à la base de données");

 ?>