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
$checkIfThisUserHasProfile = "SELECT id FROM user_profile WHERE user_id=" . $userID;
$result = mysql_query($checkIfThisUserHasProfile);
$count = mysql_num_rows($result);
if ($count <= 0) { // if this user has no profile.
    ?>

<html>
<head>


    <link rel="stylesheet" href="css/button.css">




</head>
<body>


<div>
<header>

	<h1>

			e-Krishok Extension and Advisory Service

	</h1>

	<h3>Welcome!   <?php
	
	echo $username;
	?>

</h3>
</header>
<div id="menu">
<ul>
<li><a href="navigation.php">Home</a></li></ul>
<ul><li><a href="#">Code</a>
<ul>
<li><a href="./pro/registration.php">Genarate</a></li>    <!--This is in drop downmenu-->
<li><a href="codelist.php">List</a></li>    <!--This is in drop downmenu-->
</ul>
</li>
</ul>
</li></ul>  
<ul>
<li><a href="#">Registration</a>    <!--This is in main menu-->
<ul>
<li><a href="registration.php">New</a></li>    <!--This is in drop downmenu-->
<!--This is in drop downmenu-->
</ul>
</li>
<li><a href="#">View </a>    <!--This is in main menu-->
<ul>

<li><a href="accounts_view.php">Customers</a></li>    <!--This is in drop downmenu-->
<li><a href="message.php">Messages</a></li>
<li><a href="companyview.php">Companies</a></li>
<li><a href="agentview.php">Agents</a></li>    <!--This is in drop downmenu-->
</ul>
</li>

</ul>

<ul><li><a href="logout.php">Logout</a></li></ul>

</div>



</body>
<div id="img">
<img src="../e-Krishok.PNG" alt="Mountain View" style="width:100px;height:100px;" >

</div>
</html>

	
	
	
    <div class="content-wrapper" style="padding-top: 101px;">
        <div class="fancyDiv">
      
			
			
        </div>
		
		
		      <?php

?>
	

    </div>
	
	
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