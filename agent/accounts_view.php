<?php include('header.php'); ?>
<?php include('dbconn.php'); ?>
<?php include('config.php'); ?>
<?php include('tab.php'); ?>
<?php
error_reporting(0);
session_start();
if (!isset($_SESSION['user'])) {
    header('location:logout.php');
}
$userID = $_SESSION['id'];
$username = $_SESSION['user'];

//echo $userID;

?>  

<html>

		
			
      
		
		
		      <?php
$result = mysql_query("SELECT name,village,upazilla,district,gender,age,contact FROM customers where cust_user_id='$userID'");
if (!$result) {
    echo 'Could not run query: ' . mysql_error();
    exit;
}


echo "<table border='1'>
<tr>
<th>name</th>
<th>village</th>
<th>distrcit</th>
<th>upazilla</th>
<th>gender</th>
<th>age</th>
<th>contact</th>
</tr>";

//$row = mysql_fetch_row($result);



while ($row = mysql_fetch_array($result)) { 



echo "<tr>";
echo "<td>" . $row[0] . "</td>";
echo "<td>" . $row[1] . "</td>";
echo "<td>" . $row[2] . "</td>";
echo "<td>" . $row[3] . "</td>";
echo "<td>" . $row[4] . "</td>";
echo "<td>" . $row[5] . "</td>";
echo "<td>" . $row[6] . "</td>";


echo "</tr>";
}
echo "</table>";
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
   
   
    <div class="content-wrapper" style="margin-top: 0px; border-top: none; padding-left: 8px; padding-right: 8px; width: 782px;">
        
       
       
    </div>


<style>
    .form-horizontal .controls {
        margin-left: 152px;
    }
</style>
<?php include('footer.php'); ?>

</html>