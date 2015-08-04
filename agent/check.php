<?php
error_reporting(0);
session_start();
if (!isset($_SESSION['user'])) {
    header('location:logout.php');
}
$userID = $_SESSION['id'];
$username = $_SESSION['user'];

//echo $_SESSION['ab'];
//echo $_SESSION['abc'];
//echo $posttitle;

//echo $username;






?>