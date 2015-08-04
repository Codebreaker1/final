<?php include('header.php'); ?>
<?php include('dbconn.php'); ?>
<?php include("config.php"); ?>
<html>
<head>


    <link rel="stylesheet" href="../css/button.css">




</head>
<div id="menu">
<ul>
<li><a href="navigation.php">Home</a></li></ul>
<ul>
<li><a href="transaction.php">Transactions</a>    <!--This is in main menu-->

</li>
<li><a href="payment.php">View Loan</a>    <!--This is in main menu-->

</li>
</ul>
<ul><li><a href="report.php">Statement</a></li></ul>
<ul><li><a href="send.php">Send Money</a></li></ul>
<ul><li><a href="logout.php">Logout</a></li></ul>


</div>

<head>
<title>Transfer Balance page</title>

</head>

<body>
<div>
<h1>Transfer Balance page</h1>

<br><br><br>
<?php 
	Session_start();
	$sql = mysql_query("select * from account where customer_id=". $_SESSION['id'])  ;
	$row= mysql_fetch_array($sql);
?>
	<h1>Transfer Balance page : <?php echo $row['balance']; ?></h1>

<form method="post" action="trans.php">
   <table>
   <tr><td>Transfer account no</td><td><input type="text" name="tref"></td></tr>
   <tr><td>Transfer amount</td><td><input type="text" name="tac"></td></tr>
   <input type="hidden" name="bal" value="<?php echo $row['balance']; ?>"
 
   
   <tr><td></td><td><input type="submit" name="submit" value="send"></td></tr>
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