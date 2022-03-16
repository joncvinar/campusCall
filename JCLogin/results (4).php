<html>
<head>
  <title>Jonathan's autoworld</title>
</head>
<body>
<h1>Vehicles Results</h1>
<?php
  // create short variable names
  $searchtype=$_POST['searchtype'];
  $searchterm=trim($_POST['searchterm']);

  if (!$searchtype || !$searchterm) {

     echo 'You have not entered search details.  Please go back and try again.';
     exit;
  }

  if (!get_magic_quotes_gpc()){
    $searchtype = addslashes($searchtype);
    $searchterm = addslashes($searchterm);
  }

  @ $db = new mysqli('localhost', 'cvinarj1_cvinarj1', 'CSIT355-02', 'cvinarj1_jonathanautoworld');

  if (mysqli_connect_errno()) {
     echo 'Error: Could not connect to database.  Please try again later.';
     exit;
  }

  $query = "select * from Vehicle where ".$searchtype." like '%".$searchterm."%'";
  $result = $db->query($query);

  $num_results = $result->num_rows;

  echo "<p>Cars Found: ".$num_results."</p>";

  for ($i=0; $i <$num_results; $i++) {
     $row = $result->fetch_assoc();
     echo "<p><strong>".($i+1).". VIN: ";
     echo htmlspecialchars(stripslashes($row['VIN']));
     echo "</strong><br />Sedan: ";
     echo stripslashes($row['Sedan']);
     echo "<br />Truck: ";
     echo stripslashes($row['Truck']);
     echo "<br />Manufacturer: ";
     echo stripslashes($row['Manufacturer']);
     echo "</strong><br />Model: ";
     echo stripslashes($row['Model']);
     echo "</strong><br />Year: ";
     echo stripslashes($row['Year']);
     echo "</strong><br />Fuel Type: ";
     echo stripslashes($row['Fuel Type']);
     echo "</strong><br />Price: ";
     echo stripslashes($row['Price']);
     echo "</strong><br />Used: ";
     echo stripslashes($row['USED']);
     echo "</strong><br />Available: ";
     echo stripslashes($row['Available']);
     
     echo "</p>";
  }
  $result->free();
  $db->close();

?>

</form>

        
        </br>
        <br>
       <form action="shoppingCart.php" method="POST">
<p><button type="Submit" name="submit"> Let's Shop!</button></p>

</form>
