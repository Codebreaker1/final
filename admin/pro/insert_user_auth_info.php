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
<div class="content-wrapper" style="border-top: none; padding-left: 10px; width: 698px; padding-bottom: 82px;">

    <?php
    $filters = array
        (
        "username" => array
            (
            "filter" => FILTER_SANITIZE_STRING,
            "options" => array
                (
                "min_range" => 1,
                "max_range" => 10
            )
        ),
        "password" => array
            (
            "filter" => FILTER_SANITIZE_STRING,
            "options" => array
                (
                "min_range" => 1
            )
        ),
        "repeatPassword" => array
            (
            "filter" => FILTER_SANITIZE_STRING,
            "options" => array
                (
                "min_range" => 1
            )
        ),
        "contactNum" => array
            (
            "filter" => FILTER_SANITIZE_STRING,
            "options" => array
                (
                "min_range" => 0,
                "max_range" => 12
            )
        ),
        "area" => array
            (
            "filter" => FILTER_VALIDATE_INT
        ),
        "city" => array
            (
            "filter" => FILTER_VALIDATE_INT
        ),
    );

    $inputs = filter_input_array(INPUT_POST, $filters);

    if (!$inputs["username"]) {
        echo("<div class='alert alert-error'>Username is required and max. range is 10.</div>");
    } elseif (!$inputs["password"]) {
        echo("<div class='alert alert-error'>Password is required.</div>");
    } else {

        $username = $inputs['username'];
        $password = $inputs['password'];
        $contactNumber = $_POST["contact"];
        $email = $_POST['email'];

		$city = $_POST["qualify"];
        $age = $_POST["age"];
		$num=$_POST["sdf"];
        $comment=$_POST["comment"];

        $result=mysql_query("SELECT MAX(pid) AS cd from product");

        if (!$result) {
    echo 'Could not run query: ' . mysql_error();
    exit;
}

///        $f=mysql_query($code) or die(mysql_error());
   //     echo $f;

$row = mysql_fetch_array($result); 
$larg=$row["cd"];
$new = dechex($larg+1);
//echo $larg;

       // echo $code;
		
	     $sqlCheckEmptyUser="SELECT * FROM user_auth";
         echo $userID;
        $queryCheckEmptyUser=mysql_query($sqlCheckEmptyUser) or die(mysql_error());
        $countCheckEmptyUser=mysql_num_rows($queryCheckEmptyUser);
        
        if($countCheckEmptyUser>0){
			
            $query = "INSERT INTO product(company_name, category, name, weight,Price,quantity,codee) VALUES('$username', '$password', '$contactNumber', '$email', '$city','$age','$new')";
            
            }
		
		
		else
		{
			        echo '<a class="btn" href="registration.php">Go Back</a>';
					

		}
        //$area = $inputs['area'];

        // Check if user_auth table is empty. If empty, then make the first logged in user as SUPER ADMIN. Else make this user as a NORMAL USER (member).
      
            
            // End checking.
        
        $sql = mysql_query($query) or die(mysql_error());
        if ($sql) {
                
            ?>
            <div class="alert alert-success">
                <script type="text/javascript">
                    function Redirect()
                    {
                        window.location="../navigation.php";
                    }
                    document.write("Registration is successful, redirected to login page in 2 sec.");
                    setTimeout('Redirect()', 2000);
                </script>
            </div>
            <?php
        }
    }

    if (!$inputs) {
        echo '<a class="btn" href="registration.php">Go Back</a>';
    }
    ?> 
</div>
<?php include('footer.php'); ?>

