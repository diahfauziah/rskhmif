<?php
include 'database.php';
function load_data(){
	$pdo = Database::connect();
	$query = 'SELECT surat.nomorsurat, pembuat.nama, surat.isisurat, surat.pj, surat.kepada, EXTRACT(MONTH FROM surat.tanggal), EXTRACT(YEAR FROM surat.tanggal) FROM surat NATURAL JOIN pembuat WHERE surat.pembuat = pembuat.idpembuat ORDER BY surat.nomorsurat DESC';
	foreach ($pdo->query($query) as $row){
		echo '<tr>';
		echo '<td>'.$row['nomorsurat'].'/'.$row['nama'].'/HMIF/'.convert_month($row['EXTRACT(MONTH FROM surat.tanggal)']).'/'.$row['EXTRACT(YEAR FROM surat.tanggal)'].'</td>';
		echo '<td>'.$row['isisurat'].'</td>';
		echo '<td>'.$row['pj'].'</td>';
		echo '<td>'.$row['kepada'].'</td>';
		echo '</tr>';
	}	
}

function convert_month($angka){
	switch ($angka) {
		case 1:
			# code...
			return 'I';
			break;
		case 2:
			# code...
			return 'II';
			break;
		case 3:
			# code...
			return 'III';
			break;
		case 4:
			# code...
			return 'IV';
			break;
		case 5:
			# code...
			return 'V';
			break;
		case 6:
			# code...
			return 'VI';
			break;
		case 7:
			# code...
			return 'VII';
			break;
		case 8:
			# code...
			return 'VIII';
			break;
		case 9:
			# code...
			return 'IX';
			break;
		case 10:
			# code...
			return 'X';
			break;
		case 11:
			# code...
			return 'XI';
			break;
		case 12:
			# code...
			return 'XII';
			break;
		default:
			# code...
			return '';
			break;
	}
}
?>