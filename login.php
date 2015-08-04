<?php //include('header.php'); ?>
<?php// include('config.php'); ?>



<style>


#wrapper select
{
    margin: 10px;
    padding: 10px; 
    border: 2px solid purple; 
    margin-top: -10px;
    width: 200px;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
    margin-left: 30px;


}

#img{


  margin-left: 100px;
  margin-top: -80px;
}

</style>
<head>

<title>BIID</title>
    <link rel="stylesheet" href="css/button.css">

<script src="dist/sweetalert.min.js"></script> 
<link rel="stylesheet" type="text/css" href="dist/sweetalert.css">


</head>




<p>&nbsp;</p>
<div id="wrapper">
 <div id="img">

   <img src="e-Krishok.PNG" alt="Mountain View" style="width:100px;height:100px;">


    </div>
	<form name="login-form" class="login-form" action="authentication.php" method="post">
	
		<div class="header">
		<h1>Login</h1>
		<span> e-Krishok Extension and Advisory Service</span>
		</div>

    <select id="company" name="company" onchange="ami()"> 
      <option value="1">Admin</option> 
      <option value="2">Agent</option> 
      <option value="3">Company</option> 
   </select>  
	
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
	   swal("", "Admin choosed!", "success")
   }
   
   else if(strUser=="Agent")
   {
	 //  window.alert(strUser);
	 swal("", "Welcome to Agent Panel", "success")
	 
	   window.setTimeout(function(){

        // Move to a new location or you can do something else
       window.location.href = "./agent/login.php";

    }, 1040);
	   
   }
   else
   {
	   //window.alert(strUser);
	   	 swal("", "Welcome to The Company ", "success")

	   window.setTimeout(function(){

        // Move to a new location or you can do something else
       window.location.href = "./company/login.php";

    }, 1040);
	  // window.location.href = "./company/index.php";
   }
   }
</script>
<?php //include('footer.php'); ?>
