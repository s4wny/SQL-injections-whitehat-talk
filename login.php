<?php

require 'commons.php';

// Login
if(isset($_POST["submit"])) {
	try {
    	$dbh = new PDO("mysql:host=localhost;charset=utf8;dbname=". DB_DB, DB_USER, DB_PASS);
    	$sth = $dbh->prepare("
    		SELECT COUNT(*) FROM users
    		WHERE email='". $_POST['email'] ."'
    		AND password='". $_POST['password'] ."'
		");
		$sth->execute();
		
		// Email and password matched with a entry in the users table!
		if($sth->fetchColumn() == 1) {
			$_SESSION["signed_in"] = $_POST['email'];
			header("Location: course_info.php");
			exit;
		}

		$error = 'Invalid email or password!';
	} catch (PDOException $e) {
	    exit("DB Error!: " . $e->getMessage() . "<br/>");
	}
}

include "view/header.php";
include "view/login.php";
include "view/footer.php";

?>