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

$courseCreation = "INSERT INTO `allthecourses` (`Coursename`, `Courseid`, `Teacherid`, `Semester`) VALUES (?, ?, ?, ?)";
// sql to create table
$tableCreation = "CREATE TABLE $name (
studentid INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
studentsname VARCHAR(30) NOT NULL,
studentemail VARCHAR(30) NOT NULL,
reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)";
$stmt1 = $con->prepare($tableCreation); 
$stmt1->execute();
$stmt = $con->prepare($courseCreation); 
$stmt->bind_param('ssss', $_POST['coursename'], $_POST['courseid'], $_SESSION['id'], $_POST['coursetime']);
$stmt->execute();
header('Location: teacherhome.php');


?>