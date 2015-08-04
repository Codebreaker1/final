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
$result = mysql_query("SELECT Id,MessageFrom,MessageText,SendTime FROM messagein");


if (!$result) {
    echo 'Could not run query: ' . mysql_error();
    exit;
}


echo "<table border='1'>
<tr>
<th>Phone number</th>
<th>Body</th>
<th>Time_stamp</th>
<th>Comment</th>
</tr>";

//$row = mysql_fetch_row($result);



while ($row = mysql_fetch_array($result)) { 

//$_SESSION['ab']=$row['MessageFrom'];
//$_SESSION['abc']=$row['MessageText'];
    $fpostid=$row['Id'];
    $posttitle=$row['MessageFrom'];

echo "<tr>";

//echo ('<td><a href="registration.php?id=">' .$row['MessageFrom'].'.</a></td>');

echo "<td> <a href='registration.php?id=$fpostid'> $posttitle</a></td>";
//echo ('<a href="user_account.php?id=' . $id . '">' . $firstName . '</a>');

//echo ('<a href="user_account.php?id=' . $id . '">' . $firstName . '</a>');


//$session_start();

//echo $row['id'];
//echo '<td'"<a href=view_exp.php?compna=",urlencode($row["id"]),">$compname</a>";
echo "<td>" . $row['MessageText'] . "</td>";
echo "<td>" . $row['SendTime'] . "</td>";


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