<?php

session_start();
unset($_SESSION['user']); 
session_destroy();
$user = $_SESSION['user'];

if ($_SESSION['user'] == ""){

  header('location:../login.php');

}

?>
