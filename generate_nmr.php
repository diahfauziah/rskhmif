<?php
include 'database.php';

if(!empty($_POST)){
	$pembuat = $_POST['opsipembuat'];
	$pj = $_POST['pj'];
	$hal = $_POST['perihal'];
	$tujuan = $_POST['tujuan'];
	$con = Database::connect();
	$nmr = "SELECT nomorsurat FROM surat ORDER BY nomorsurat DESC LIMIT 1"; 
	
	echo $nmr;
	// $nmr = $nmr + 1; 
	
	mysql_query("INSERT INTO surat (isisurat, kepada, pj, nomorsurat) VALUES ($hal, $tujuan, $pj, $nmr)");
	//header("Location: list.php");
}

?>