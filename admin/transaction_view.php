<?php include('header.php'); ?>
<?php include('dbconn.php'); ?>
<?php include('config.php'); ?>
<?php include('tab.php'); ?>

<html>

		
			
        </div>
		
		
		      <?php
$result = mysql_query("SELECT transaction_account,transaction_type,amount,time FROM transaction");
if (!$result) {
    echo 'Could not run query: ' . mysql_error();
    exit;
}


echo "<table border='1'>
<tr>
<th>Account no</th>
<th>Current Balance</th>
<th>Amount</th>
<th>transaction time</th>
</tr>";

//$row = mysql_fetch_row($result);

while ($row = mysql_fetch_array($result)) { 

echo "<tr>";
echo "<td>" . $row[0] . "</td>";
echo "<td>" . $row[1] . "</td>";
echo "<td>" . $row[2] . "</td>";
echo "<td>" . $row[3] . "</td>";


echo "</tr>";
}
echo "</table>";
?>
		

    </div>
	
	<div class="keno">
	

	
	
	
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