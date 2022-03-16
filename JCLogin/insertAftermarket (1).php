<html>
<head>
  <title>Jonathan's Aftermarket</title>
</head>
<body>
<h1>Jonathan's Aftermarket Entry Results</h1>
<?php
  // create short variable names
  $partSerial=$_POST['partSerial'];
  $partType=$_POST['partType'];
  $Manufacturer=$_POST['Manufacturer'];
  $partNumber=$_POST['partNumber'];


  if (!$partSerial || !$partType || !$Manufacturer || !$partNumber) {
     echo "You have not entered all the required details.<br />"
          ."Please go back and try again.";
     exit;
  }

  if (!get_magic_quotes_gpc()) {
    $partSerial = addslashes($partSerial);
    $partType = addslashes($partType);
    $Manufacturer = addslashes($Manufacturer);
    $partNumber = doubleval($partNumber);

  }
  

  @ $db = new mysqli('localhost', 'cvinarj1_cvinarj1', 'CSIT355-02', 'cvinarj1_jonathanautoworld');

  if (mysqli_connect_errno()) {
     echo "Error: Could not connect to database.  Please try again later.";
     exit;
  }

  $query = "insert into Aftermarket values
            ('".$partSerial."', '".$partType."', '".$Manufacturer."', '".$partNumber."')";
  $result = $db->query($query);

  if ($result) {
      echo  $db->affected_rows." part inserted into database.";
  } else {
  	  echo "An error has occurred.  The item was not added.";
  }

  $db->close();
?>
</body>
</html>
