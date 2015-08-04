<?php include('header.php'); ?>
<?php include('dbconn.php'); ?>
<?php include('config.php'); ?>
<?php
error_reporting(0);
session_start();
if (!isset($_SESSION['user'])) {
  header('location:logout.php');
}
?>
<?php
$userID = $_SESSION['id'];
$username = $_SESSION['user'];

//echo $username;
//$checkIfThisUserHasProfile = "SELECT aid FROM user_profile WHERE user_id=" . $userID;
//$result = mysql_query($checkIfThisUserHasProfile);
$count = mysql_num_rows($result);
if ($count <= 0) { // if this user has no profile.
    ?>

<html>
<head>


    <link rel="stylesheet" href="css/a.css">

<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">



</head>
<body>


<div>
<header>
  
</header>
<div id="head">
  <h3>Welcome! company <?php
  
  echo $username;
  ?></h3>
  </div>
<div id="menu">
<ul>
<li><a href="navigation.php">Home</a></li></ul>
<ul>
<li><a href="#">Registration</a>    <!--This is in main menu-->
<ul>
<li><a href="registration.php">Product </a></li>    <!--This is in drop downmenu-->
</ul>
</li>
<li><a href="#">View </a>    <!--This is in main menu-->
<ul>

<li><a href="accounts_view.php">customer</a></li>  
<li><a href="message.php">message</a></li>    <!--This is in drop downmenu-->
  <!--This is in drop downmenu-->
   <!--This is in drop downmenu-->
</ul>
</li>
</ul>

<ul><li><a href="logout.php">Logout</a></li></ul>

</div>

<div id="img">
<img src="../e-Krishok.PNG" alt="Mountain View" style="width:100px;height:100px;" >

</div>
<div id="para">

<p> e-Krishok Extension and Advisory Service </p>
</div>



</div>
</body>


</html>

	
	
	<script >



$('.bxslider').bxSlider({
  auto: true,
  autoControls: true
});
</script>
    
	
    <script>  
        function confirmCancel(){
            $info=confirm("Are you sure to cancel?");
            if($info==true)
                return true;
            else
                return false;
        }
		
		myFunction()
		{
			
			window.open('http://www.google.com');
			
		}
    </script>
    <?php
} else { // if user already has a profile
    ?>
   
    
    <?php
}
?>


<?php include('footer.php'); ?>

</html>