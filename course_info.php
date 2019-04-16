<?php

require "commons.php";

if(!isset($_SESSION["signed_in"]) || empty($_SESSION["signed_in"])) {
	header("Location: login.php");
	exit();
}


try {
	$dbh = new PDO("mysql:host=localhost;charset=utf8;dbname=". DB_DB, DB_USER, DB_PASS);
	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$sth = $dbh->prepare("SELECT id, name FROM courses");
	$sth->execute();
	$courses = $sth->fetchAll();

	if(isset($_GET["course_id"])) {
		$sql = "
			SELECT * FROM courses
			WHERE id = '". $_GET["course_id"] ."'
		";
		$sth = $dbh->prepare($sql);
		$sth->execute();
		$specificCourse = $sth->fetchAll(PDO::FETCH_ASSOC);
		$specificCourseCoulmns = array_keys($specificCourse[0]);
	}

} catch (PDOException $e) {
    exit("DB Error!: " . $e->getMessage() . "<br/>");
}

include "view/header.php";
include "view/course_info.php";
include "view/footer.php";

?>