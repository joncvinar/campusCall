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

  $query = "select * from Aftermarket where ".$searchtype." like '%".$searchterm."%'";
  $result = $db->query($query);

  $num_results = $result->num_rows;

  echo "<p>Aftermarket Parts Found: ".$num_results."</p>";

  for ($i=0; $i <$num_results; $i++) {
     $row = $result->fetch_assoc();
     echo "<p><strong>".($i+1).". Part Serial: ";
     echo htmlspecialchars(stripslashes($row['partSerial']));
     echo "</strong><br />Part Type: ";
     echo stripslashes($row['partType']);
     echo "<br />Manufacturer: ";
     echo stripslashes($row['Manufacturer']);
     echo "<br />partNumber: ";
     echo stripslashes($row['partNumber']);
     echo "</p>";
  }

  $result->free();
  $db->close();

?>
</body>
</html>
