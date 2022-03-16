<?php
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'cvinarj1_cvinarj1');
define('DB_PASSWORD', 'CSIT355-02');
define('DB_NAME', 'cvinarj1_jonathanautoworld');
 

$link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);
 
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>