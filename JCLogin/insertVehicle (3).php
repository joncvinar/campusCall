<html>
<head>
  <title>Jonathan's Vehicles</title>
</head>
<body>
<h1>Jonathan's Vehicles Entry Results</h1>
<?php
  // create short variable names
  $PID=$_POST['VIN'];
  $PName=$_POST['Sedan'];
  $PDescription=$_POST['Truck'];
  $Quantity=$_POST['Manufacturer'];

  if (!$PID || !$Quantity) {
     echo "You have not entered all the required details.<br />"
          ."Please go back and try again.";
     exit;
  }

  if (!get_magic_quotes_gpc()) {
    $PID = addslashes($PID);
    $PName = addslashes($PName);
    $PDescription = addslashes($PDescription);
    $Quantity = doubleval($Quantity);
  }

  @ $db = new mysqli('localhost', 'cvinarj1_cvinarj1', 'CSIT355-02', 'cvinarj1_Vehicles');

  if (mysqli_connect_errno()) {
     echo "Error: Could not connect to database.  Please try again later.";
     exit;
  }

  $query = "insert into Vehicle values
            ('".$PID."', '".$PName."', '".$PDescription."', '".$Quantity."')";
  $result = $db->query($query);

  if ($result) {
      echo  $db->affected_rows." car inserted into database.";
  } else {
  	  echo "An error has occurred.  The item was not added.";
  }

  $db->close();
?>
</body>
</html>
