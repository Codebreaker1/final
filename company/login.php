<?php //include('header.php'); ?>
<?php// include('config.php');





 ?>

<head>


    <link rel="stylesheet" href="css/button.css">

<script src="dist/sweetalert.min.js"></script> 
<link rel="stylesheet" type="text/css" href="dist/sweetalert.css">


</head>




<p>&nbsp;</p>
<div id="wrapper">
<button type="button" id="asi" onclick="window.history.back();">Back</button>
	<form name="login-form" class="login-form" action="authentication.php" method="post">
	
		<div class="header">
		<h1>Login</h1>
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
	
	
	
   
   function ami(){
	   
	   var e = document.getElementById("company");
   var strUser = e.options[e.selectedIndex].text;
   
   if(strUser=="Admin")
   {
	   swal("Good job!", "Admin choosed!", "success")
   }
   
   else if(strUser=="Agent")
   {
	 //  window.alert(strUser);
	 swal("Good job!", "You clicked the button!", "success");
	 
	   window.setTimeout(function(){

        // Move to a new location or you can do something else
       window.location.href = "./agent/index.php";

    }, 1040);
	   
   }
   else
   {
	   //window.alert(strUser);
	   	 swal("Good job!", "You clicked the button!", "success");

	   window.setTimeout(function(){

        // Move to a new location or you can do something else
       window.location.href = "./company/index.php";

    }, 1040);
	  // window.location.href = "./company/index.php";
   }
   }
</script>
<?php //include('footer.php'); ?>
