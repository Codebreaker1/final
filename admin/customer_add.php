<?php include('header.php'); ?>
<?php include('dbconn.php'); ?>
<html>
<head>
<title>Employee home page</title>
</head>

<body>
<div>
<h1>Add Customer Form</h1>
<div id="menu">
<ul>
<li><a href="navigation.php">Home</a></li></ul>
<ul>
<li><a href="#">Insert</a>    <!--This is in main menu-->
<ul>
<
<li><a href="accounts_add.php">Account</a></li>    <!--This is in drop downmenu-->
</ul>
</li>
<li><a href="#">View </a>    <!--This is in main menu-->
<ul>

<li><a href="accounts_view.php">Account</a></li>    <!--This is in drop downmenu-->
<li><a href="transaction_view.php">Transactions</a></li>    <!--This is in drop downmenu-->
</ul>
</li>
</ul>

<ul><li><a href="navigation.php">Logout</a></li></ul>
</div>
<br><br><br>
<?php include("config.php");




 ?>


<form method="post" action="add.php">
   <table>
   <tr><td>Customer Name</td><td><input type="text" name="name"></td></tr>
   <tr><td>Login</td><td><input type="text" name="login"></td></tr>
   <tr><td>Email</td><td><input type="email" name="email"></td></tr>
   <tr><td>Phone</td><td><input type="number" name="phone"></td></tr>
   <tr><td>ssn no</td><td><input type="number" name="ssnno"></td></tr>
   <tr><td>Address</td><td><input type="textarea" name="address"></td></tr>
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