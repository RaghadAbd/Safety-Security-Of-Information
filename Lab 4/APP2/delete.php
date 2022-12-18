<?php
if(isset($_GET["id"])){
	$id = $_GET["id"];

// Include the database configuration file 
	include_once 'dbConfig.php'; 


	$sql = "DELETE FROM visitor_logs WHERE id=$id";
	$db->query($sql);

}

header("location: /Lab 4/APP2/VisitorInformationApp1.php");
exit;
?>