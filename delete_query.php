<?php
	require_once 'connection/connect.php';
	
	$id = $_POST['id'];
	
	$conn->query("DELETE FROM `member` WHERE `mem_id` = '$id'");
	
?>