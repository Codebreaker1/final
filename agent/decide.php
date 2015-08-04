<?php include('header.php'); ?>
<?php include('dbconn.php'); ?>

<?php
error_reporting(0);
session_start();
if (!isset($_SESSION['user'])) {
    header('location:logout.php');
}
$userID = $_SESSION['id'];
$username = $_SESSION['user'];

//echo $username;

?>

<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
<head>
<link rel="stylesheet" type="text/css" href="a.css">
</head>


  <div class="testbox">
  <h1>Registration</h1>

    <form name="regiForm" class="form-horizontal" method="POST" onsubmit="return validateForm()" action="registration.php">
      <hr>
  <hr>
 <button type="submit" class="button">received</button>
 <br>
 <br>
  <button type="fail" class="button1">switchedoff</button>
  <button type="fail1" class="button2">didnt pickup </button>
  <button type="fail2" class="button3">received by others</button>
</div>




<?php include('footer.php'); ?>