<?php 
if(isset($_GET['page'])){
    $pages=array("Vehicle", "cart");
 
    if(in_array($_GET['page'], $pages)) {
        $_page=$_GET['page'];
    } else {
        $_page="Vehicle";
    }
} else {
    $_page="Vehicle";
}
?>


<html xmlns="http://www.w3.org/1999/xhtml"> 
<head> 
       
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
    <link rel="stylesheet" href="css/reset.css" /> 
    <link rel="stylesheet" href="css/style.css" /> 
    <script type = "text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js"></script>
       
    <title>Shopping cart</title> 
    <script type ="text/javascript">
    $(function(){
        
    });
    </script>
   
</head> 
   
<body> 
       
    <div id="container"> 
    <h1>The shopping cart goes here!</h1>
    <h1>Use Update</h1>
   
        <div id="main"> 
        <?php require($_page.".php"); ?> 
        <?php 
$sql="SELECT * FROM Vehicle ORDER BY model ASC"; 
$result = $link->query($sql);
       
while ($row = $result->fetch_assoc()) {
?> 
    <tr> 
        <td><?php echo $row['Vehicle'] ?></td> 
        <td><?php echo $row['description'] ?></td> 
        <td><?php echo $row['price'] ?>$</td> 
        <td><a href="shoppingCart.php?page=products&action=add&id=<?php echo $row['id_product'] ?>">Add to cart</a></td> 
    </tr> 
<?php 
}
?>
        
               
        </div><!--end main-->
           
        <div id="sidebar"> 
               
        </div><!--end sidebar-->
   
    </div><!--end container-->
   
</body> 
</html>
