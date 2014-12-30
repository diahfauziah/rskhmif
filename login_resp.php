<?php

if(!empty($_POST)){
	$username = $_POST['Username'];
	$password = $_POST['Password'];

	$c_uname = "HMIF";
	$c_pass = "SuRaT";

	if(($username == $c_uname) && ($password == $c_pass)){
		header("Location: form.php");
	}

	else {
		$errormessage = "Username atau Password salah.";
		echo $errormessage;
	}


}

?>