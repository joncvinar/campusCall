<?php
// We need to use sessions, so you should always start sessions using the below code.
session_start();
$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'root';
$DATABASE_PASS = '';
$DATABASE_NAME = 'phplogin';
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
$name = $_POST['coursename'];
// If the user is not logged in redirect to the login page...
if (!isset($_SESSION['loggedin'])) {
	header('Location: index.php');
	exit;
}

$addstudents = "INSERT INTO """"COURSENAME"""" (`studentid`, `studentname`, `stduentemail`, `reg_date`) VALUES (?, ?, ?, current_timestamp())";
// sql to create table



$stmt = $con->prepare($addstudents); 
$stmt->bind_param('sss', $_POST['studentid'], $_POST['studentname'], $_POST['stduentemail']);
$stmt->execute();
header('Location: tables-general.php');


?>