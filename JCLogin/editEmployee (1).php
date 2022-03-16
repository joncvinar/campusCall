

<?php>
require_once "config.php";
if(isset($_POST['update'])){

$id = $_POST['id'];

$query = "UPDATE users SET username='$_POST[username]'
 WHERE id='$_POST[id]'";

$query_run = mysqli_query($link, $query);

if($query_run){
echo "Info updated";
}
else{
echo "Didnt update!";
}
}
?>
