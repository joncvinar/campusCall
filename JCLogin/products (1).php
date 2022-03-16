<?php 
if(isset($_GET['action']) && $_GET['action']=="add") {
    $id=intval($_GET['id']);
 
    if(isset($_SESSION['cart'][$id])) {
        $_SESSION['cart'][$id]['quantity']++;
    } else { 
        $stmt = $mysqli->prepare("SELECT * FROM Vehicle WHERE id_product = ?");
        $stmt->bind_param("i", $id);
        $stmt->execute();
        $result = $stmt->get_result()->fetch_assoc();
 
        if(isset($result['id_product']) && $result['id_product']) {
            $_SESSION['cart'][$result['id_product']] = array(
                "quantity" => 1,
                "price" => $result['price']
            );
        } else {
            $message="This product id is invalid!";
        }
    } 
} 
   
?> 
<h1>Product List</h1>
<?php 
    if(isset($message)) { 
        echo "<h2>$message</h2>";
    }
?> 
<table> 
    <tr> 
        <th>Name</th> 
        <th>Description</th> 
        <th>Price</th> 
        <th>Action</th> 
    </tr> 
    <?php
        $sql="SELECT * FROM Vehicle ORDER BY Model ASC"; 
        $result = $mysqli->query($sql);
       
        while ($row = $result->fetch_assoc()) {
    ?>
            <tr> 
                <td><?php echo $row['Model'] ?></td> 
                <td><?php echo $row['description'] ?></td> 
                <td><?php echo $row['price'] ?>$</td> 
                <td><a href="shoppingCart.php?page=products&action=add&id=<?php echo $row['id'] ?>">Add to cart</a></td> 
            </tr>
    <?php
        } 
    ?> 
</table>