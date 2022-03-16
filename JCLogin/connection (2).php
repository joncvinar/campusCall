<?php   
    $server="localhost"; 
    $user="cvinarj1_cvinarj1"; 
    $pass="CSIT355-02"; 
    $db="cvinarj1_jonathanautoworld"; 
       
    $mysqli = new mysqli($server, $user, $pass, $db);
 
    if($mysqli->connect_error) {
        die("Cannot connect to the mysql.");
    }
?>