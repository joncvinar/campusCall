<?php
$db_host="localhost";
$db_user="cvinarj1_cvinarj1";
$db_password="CSIT355-02";
$db_name="cvinarj1_jonathanautoworld";

try
{
    $db=new PDO("mysql:host={$db_host};dbname={$db_name}",$db_user,$db_password);
    $db->setAttrubute(PDO::AATR_EERMODE, PDO::ERRMODE_EXCEPTION);
    
}
catch(PDOEXCEPTION $e)
{
    $e->getMessage();
}
?>