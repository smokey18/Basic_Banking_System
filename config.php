<?php

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "basic_bank";

	$conn = mysqli_connect($servername, $username, $password, $dbname);

	if(!$conn){
		die("Can't connect to database");
	}

?>