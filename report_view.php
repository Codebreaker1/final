<style type="text/css">
table.table_data_view{ font-size:14px;}
table.table_data_view tr td{ background:#ffffff; border-bottom:1px dashed #666666; border-right:1px dashed #666666; padding:2px;}
table.table_data_view tr td:first-child{border-left:1px dashed #666666;}
table.table_data_view tr th{ background:#ffffff; border-top:1px  dashed #666666; border-bottom:1px dashed #666666; border-right:1px dashed #666666; padding:2px;}
table.table_data_view tr th:first-child{border-left:1px dashed #666666;}
table.table_data_view tr:last-child th{border-top:none;}
</style>
<?php 
include('header.php');
include('dbconn.php');
include ('config.php');
Session_start();
$userID= $_SESSION['id']; 
//$userID=13;  
$type=$_POST['type'];
$from_date=$_POST['from_date'];
$to_date=$_POST['to_date'];
if($type=='all')
{
?>
	<h4 style="margin:0px; text-align:center; font-weight:normal;">All Transaction Report Date <?php echo $from_date; ?> To <?php echo $to_date; ?></h4>
	<table class="table_data_view" style="width:100%;" cellspacing="1">
    	<tr>
        	<th>Transaction Type</th>
            <th>Amount</th>
            <th>Time</th>
        </tr>

<?php
            $query=mysql_query("SELECT transaction_type,amount,time FROM transaction WHERE customer_id = $userID and time between '".$from_date." 00:00:00' and '".$to_date." 23:59:59'");
            $total_cash=0;
            while($row=mysql_fetch_array($query))
            {
                $total_cash=$total_cash+$row['amount'];

            ?>
            <tr>
                    <td style="text-align:right"><?php echo $row['transaction_type']; ?></td>
                    <td style="text-align:right"><?php echo $row['amount']; ?></td>
                    <td style="text-align:right"><?php echo $row['time']; ?></td>
            </tr>
			
        <?php
            }?>
			
			<tr>
			     <td colspan="1">total</td>
				 <td><?php echo $total_cash; ?></td>
			</tr>
			<?php
		}
?>

