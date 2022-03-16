<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body{ font: 14px sans-serif; text-align: center; }
    </style>
</head>


<body>
    <h1 class="my-5">Hi, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Welcome to Jonathan's autoWorld!.</h1>

</body>
</html>
<body>
  <h1>Jonathan's Vehicles</h1>

  <form action="results.php" method="post">
    Choose Search Type:<br />
    <select name="searchtype">
      <option value ="Available">Available
      <option value="VIN">VIN
      <option value="Sedan">Sedan
      <option value="Truck">Truck
      <option value="Manufacturer">Manufacturer
      <option value="Model">Model
      <option value="Year">Year
      <option value="Fuel Type">Fuel Type
      <option value="Price">Price
      <option value="Used">USED
    </select>
    <br />
    Enter Search Term:<br />
    <input name="searchterm" type="text" size="40">
    <br />
    <input type="submit" name="submit" value="Search">
  </form>

</body>
<br>

<h1>Jonathan's Aftermarket Parts</h1>

  <form action="aftermarketresults.php" method="post">
    Choose Search Type:<br />
    <select name="searchtype">
      <option value="Available">Available    
      <option value="Part Serial">partSerial
      <option value="Part Type">partType
      <option value="Manufacturer">Manufacturer
      <option value="Part Number">partNumber

    </select>
    <br />
    Enter Search Term:<br />
    <input name="searchterm" type="text" size="40">
    <br />
    <input type="submit" name="submit" value="Search">
  </form>
<br>

    <p>
        
        <a href="logout.php" class="btn btn-danger ml-1">Sign Out of Your Account</a>
    </p>
  
  