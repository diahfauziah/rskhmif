<?php
include 'database.php';

	function opsi_pembuat(){
		$con = Database::connect();
		$query = 'SELECT nama, namapanjang, kepengurusan FROM pembuat ORDER BY idpembuat ASC';
		foreach ($con->query($query) as $row) {
			echo '<option>';
			echo '('.$row['nama'].') '.$row['namapanjang'].' '.$row['kepengurusan'].'-'.($row['kepengurusan']+1);
			echo '</option>';
		}
	}

	function surat_baru(){
		echo 'post berhasil';
	}

?>