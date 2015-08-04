<?php include('header.php'); ?>
<?php include('dbconn.php'); ?>
<html>
<head>
<title>Employee home page</title>

</head>

<body>
<div>
<h1>Add Customer Form</h1>

<br><br><br>
<?php include("config.php"); ?>


<form method="post" action="add.php">
   <table>
   <tr><td>Customer Name</td><td><input type="text" name="name"></td></tr>
   <tr><td>Password</td><td><input type="text" name="login"></td></tr>
   <tr><td>Email</td><td><input type="email" name="email"></td></tr>
   <tr><td>Phone</td><td><input type="number" name="phone"></td></tr>
   
   <tr><td></td><td><input type="submit" name="submit" value="Add Customer"></td></tr>
   </table>
</form>
<p class = "err"><?php
if(isset($_POST['submit'])){ 
	echo $msg;
	}
?>
<?php //require_once('footer.php') ?>
</div>
</body>
</html>