<?php
session_start();
define("GPANEL", "YES");
include "config.php";

$email = $_GET["email"];
$password = $_GET["password"];
$email = stripslashes($email);
$password = stripslashes($password);
$email = mysql_real_escape_string($email);
$password = mysql_real_escape_string($password);
$password = md5("$password");

$sql= mysql_query("SELECT * FROM clients WHERE email='$email' and password='$password'");
$count=mysql_num_rows($sql);
if($count=="1"){
$sql_arr = mysql_fetch_array($sql);
$_SESSION["id"]= $sql_arr["id"];
if($_GET["remember"]=="1"){
$_SESSION["remember"]="yes";	
}
if(isset($_SESSION["return_path"])){
echo $_SESSION["return_path"];
} else {
echo 'main.php';
};
}
?>