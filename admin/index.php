<?php //include('header.php'); ?>
<?php// include('config.php'); ?>

<head>


    <link rel="stylesheet" href="../css/button.css">




</head>

<p>&nbsp;</p>
<div id="wrapper">

	<form name="login-form" class="login-form" action="authentication.php" method="post">
	
		<div class="header">
		<h1>Admin login</h1>
		<span>Fill out the form below to login to my super awesome imaginary control panel.</span>
		</div>
	
		<div class="content">
		<input name="username" type="text" class="input username" placeholder="Username" />
		<div class="user-icon"></div>
		<input name="password" type="password" class="input password" placeholder="Password" />
		<div class="pass-icon"></div>		
		</div>

		<div class="footer">
		<input type="submit" name="submit" value="Login" class="button" />
 
 </div>
	
	</form>

</div>   

<script>
    function validateForm()
    {      
        var uname=document.forms["loginForm"]["username"].value;
        if (uname==null || uname=="")
        {
            alert("Username is required.");
            return false;
        }
        
        var pass=document.forms["loginForm"]["password"].value;
        if (pass==null || pass=="")
        {
            alert("Password is required.");
            return false;
        }
    }
</script>
<?php //include('footer.php'); ?>
