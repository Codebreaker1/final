<?php include('header.php'); ?>
<?php include('dbconn.php'); ?>
<?php include('check.php'); ?>


<?php
error_reporting(0);
session_start();
if (!isset($_SESSION['user'])) {
    header('location:logout.php');
}
$userID = $_SESSION['id'];
$username = $_SESSION['user'];

echo $_GET['MessageFrom'];


?>

<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
<head>
<link rel="stylesheet" type="text/css" href="a.css">
</head>


 <div class="testbox">
  <h1>Registration</h1>

    <form name="regiForm" class="form-horizontal" method="POST" onsubmit="return validateForm()" action="insert_user_auth_info.php">
      <hr>
  <hr>
    <label id="icon" for="name"><i class="icon-user"></i></label>
  <input type="text" name="username" id="name" placeholder="Name" required/>
   <label id="icon" for="name"><i class="icon-shield"></i></label>
  <input type="text" name="password" id="password" placeholder="Village" required/>

 <label id="icon" for="name"><i class="icon-envelope "></i></label>
  <input type="text" name="email" id="email" placeholder="Upazilla" required/>

  <label id="icon" for="name"><i class="icon-shield"></i></label>
  <input type="text" name="contact" id="name" placeholder="District" required/>
  
   <label id="icon" for="name"><i class="icon-shield"></i></label>
  <input type="text" name="qualify" id="qualify" placeholder="Gender" required/>

  <label id="icon" for="name"><i class="icon-shield"></i></label>
  <input type="text" name="age" id="age" placeholder="age" required/>

  <label id="icon" for="name"><i class="icon-shield"></i></label>
  <input type="text" name="sdf" id="sdf" placeholder="Contact" required/>

  <label id="icon" for="name"><i class="icon-shield"></i></label>
  <input type="text" name="comment" id="comment" placeholder="comment" required/>
   <p>By clicking Register, you agree on our <a href="#">terms and condition</a>.</p>
 <button type="submit" class="button">Register</button>
</div>




<?php include('footer.php'); ?>