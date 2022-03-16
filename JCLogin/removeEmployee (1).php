<?php>
require_once "config.php";
if(isset($_POST['delete'])){

$id = $_POST['id'];

$query = "DELETE FROM users WHERE id='$_POST[id]'";

$query_run = mysqli_query($link, $query);

if($query_run){
echo "User deleted!";
}
else{
echo "User was not deleted!";
}
}
?>
