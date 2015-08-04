<?php include('header.php'); ?>
<?php include('dbconn.php'); ?>

<div class="content-wrapper" style="border-top: none; padding-left: 100px; width: 698px; padding-bottom: 20px;">
<div class="title" style="margin: 22px 0px 40px -70px;">Registration</div>
    <form name="regiForm" class="form-horizontal" method="POST" onsubmit="return validateForm()" action="insert_user_auth_info.php">
        <div class="control-group">
            <label class="control-label">Username</label>
            <div class="controls">
                <input id="username" name="username" type="text" placeholder="Username" />
                <div id="divCheckUsernameFilled" style="float: left; clear: both;"></div>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Password</label>
            <div class="controls">
                <input id="password" name="password" type="password" placeholder="Password"/>
                <div id="divCheckPasswordFilled" style="float: left; clear: both;"></div>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Repeat Password</label>
            <div class="controls">
                <input id="repeatPassword" name="repeatPassword" type="password" placeholder="Repeat Password"/>
                <div id="divCheckPasswordMatch" style="float: left; clear: both;"></div>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Contact</label>
            <div class="controls">
                <input name="contactNum" type="text" placeholder="Contact Number"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">E-Mail</label>
            <div class="controls">
                <input id="email" name="email" type="text" placeholder="E-Mail"/>
                <div id="divCheckEmailFilled" style="float: left; clear: both;"></div>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label">City</label>
            <div class="controls">
                <select name="city" class="city">
                    <option selected="selected" value="no">Select City</option>
                    <?php
                    $sql4 = mysql_query("select * from city");
                    $count4 = mysql_num_rows($sql4);
                    if ($count4 > 0) {
                        while ($row4 = mysql_fetch_array($sql4)) {
                            $cid = $row4['id'];
                            $city = $row4['city'];
                            echo '<option value="' . $cid . '">' . $city . '</option>';
                        }
                    }
                    ?>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Area</label>
            <div class="controls">
                <select name="area" class="area">
                    <option selected="selected">Select Area</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <button type="submit" class="btn">Register</button>
                <a class="btn" href="login.php" onClick="return confirmCancel()">Cancel</a>
            </div>
        </div>
    </form>
</div>
<script>
    
    function confirmCancel(){
        $info=confirm("Are you sure to cancel?");
        if($info==true)
            return true;
        else
            return false;
    }
    
    $(document).ready(function()
    {
        $(".city").change(function()
        {
            var id=$(this).val();
            var dataString = 'id='+ id;

            $.ajax
            ({
                type: "POST",
                url: "ajax_city.php",
                data: dataString,
                cache: false,
                success: function(html)
                {
                    $(".area").html(html);
                }
            });
            
        });
    });
        
</script>

<script>
    function validateForm()
    {      
        var uname=document.forms["regiForm"]["username"].value;
        if (uname==null || uname=="")
        {
            alert("Username is required.");
            $("#divCheckUsernameFilled").html("<font color='red'><b>Username is required!</b></font>");
            return false;            
        }
        
        var pass=document.forms["regiForm"]["password"].value;
        if (pass==null || pass=="")
        {
            alert("Password is required.");
            $("#divCheckPasswordFilled").html("<font color='red'><b>Password is required!</b></font>");
            return false;       
        }
        
        var rpass=document.forms["regiForm"]["repeatPassword"].value;
        if (rpass==null || rpass=="")
        {
            alert("Repeat Password is required.");
            $("#divCheckPasswordMatch").html("<font color='red'><b>Repeat Password is required!</b></font>");
            return false;           
        }
        
        var email=document.forms["regiForm"]["email"].value;
        if (email==null || email=="")
        {
            alert("E-Mail is required.");
            $("#divCheckEmailFilled").html("<font color='red'><b>Email is required!</b></font>");
            return false;           
        }
         
        // email validation--
        var atpos=email.indexOf("@");
        var dotpos=email.lastIndexOf(".");
        if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length)
        {
            alert("Invalid E-Mail!");
            return false;
        }
        // end email validation--        
           
        var password = $("#password").val();
        var confirmPassword = $("#repeatPassword").val();

        if (password != confirmPassword){
            alert("Password Did Not Matched!");
            return false;
        }
    }
</script>

<script>  
    // password matching while typing.
    $(document).ready(function () {
        $("#repeatPassword").keyup(checkPasswordMatch);
    });
    function checkPasswordMatch() {
        var password = $("#password").val();
        var confirmPassword = $("#repeatPassword").val();
        
        if(confirmPassword=="")
            $("#divCheckPasswordMatch").html("<font color='red'><b>Confirm Password is required!</b></font>");
        else if (password != confirmPassword)
            $("#divCheckPasswordMatch").html("<font color='red'><b>Password do not match!</b></font>");
        else
            $("#divCheckPasswordMatch").html("<font color='green'><b>Password match.</b></font>");
    }
    //end mathching while typing.
</script>

<script>  
    // email validating while typing.
    $(document).ready(function () {
        $("#email").keyup(checkEmailValidity);
    });
    function checkEmailValidity() {
        var email = $("#email").val();
        var atpos=email.indexOf("@");
        var dotpos=email.lastIndexOf(".");
        if(email=="")
            $("#divCheckEmailFilled").html("<font color='red'><b>E-Mail is required!</b></font>");
        else if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length)
        {
            $("#divCheckEmailFilled").html("<font color='red'><b>Invalid E-Mail!</b></font>");
        }else{
            $("#divCheckEmailFilled").html("");
        }
    }
    //email validating while typing.
</script>

<script>  
    // username empty checking while typing.
    $(document).ready(function () {
        $("#username").keyup(checkUsernameFilled);
    });
    function checkUsernameFilled() {
        var username = $("#username").val();
    
        if (username == "")
            $("#divCheckUsernameFilled").html("<font color='red'><b>Username is required!</b></font>");
        else
            $("#divCheckUsernameFilled").html("");
    }
    //username empty checking while typing.
</script>

<script>  
    // password empty checking while typing.
    $(document).ready(function () {
        $("#password").keyup(checkPasswordFilled);
    });
    function checkPasswordFilled() {
        var username = $("#password").val();
    
        if (username == "")
            $("#divCheckPasswordFilled").html("<font color='red'><b>Password is required!</b></font>");
        else
            $("#divCheckPasswordFilled").html("");
    }
    //password empty checking while typing.
</script>

<?php include('footer.php'); ?>