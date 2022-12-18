<?php
// (A) GET IMAGE INFO
$file = __DIR__ . DIRECTORY_SEPARATOR . "img/cate.jpg";
$fileData = exif_read_data($file);

// (B) READ & OUTPUT IMAGE
ob_start();
header("Content-Type: " . $fileData["MimeType"]);
header("Content-Length: " . $fileData["FileSize"]);
readfile($file);
ob_end_flush();



// Include the database configuration file 
include_once 'dbConfig.php'; 
 
// Get current page URL 
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://"; 
$currentURL = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'] . $_SERVER['QUERY_STRING']; 
 
// Get server related info 
$user_ip_address = $_SERVER['REMOTE_ADDR']; 

 
// Insert visitor log into database 
$sql = "INSERT INTO visitor_logs2 (page_url, user_ip_address, created) VALUES (?,?,NOW())"; 
$stmt = $db->prepare($sql); 
$stmt->bind_param("ss", $currentURL, $user_ip_address); 
$insert = $stmt->execute(); 