<?php
/*
 * Mysql Database connection string:
 */
global $conn;
$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "pharma_row";

// Create connection
$conn       = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


//$sqlconn = new PDO("sqlsrv:Server=WIN-13940KHES2G\SQLSVR2008;Database=ad", "", "");
//$sql = "SELECT emp_id,emp_name FROM dbo.Emp_info";
