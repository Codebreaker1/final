<?php
include('dbconn.php');
$name= $_POST['name'];
$login= md5 ($_POST['login']);
$email= $_POST['email'];
$phone= $_POST['phone'];
$sql = "insert into user_auth (username , password , contact_num, email, prev) values('$name', '$login' , '$phone', '$email', 'nuser'  ) ";

if (!mysql_query($sql)) {
	die('Error: ' . mysql_error());
}

mysql_close();
header ('location:login.php' );
?>