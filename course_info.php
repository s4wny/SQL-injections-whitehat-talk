<?php

require "commons.php";

if(!isset($_SESSION["signed_in"]) || empty($_SESSION["signed_in"])) {
	header("Location: login.php");
	exit();
}

include "view/header.php";
include "view/course_info.php";
include "view/footer.php";

?>