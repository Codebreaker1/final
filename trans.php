<?php
include('dbconn.php');
Session_start();
$tref= $_POST['tref'];
$tac= $_POST['tac'];
$ubal= $_POST['bal'];
$uid= $_SESSION['id'];
$sql = mysql_query("select * from account where ac_number=".$tref);
$row= mysql_fetch_array($sql);
$t_cid= $row['customer_id'];
$row = mysql_num_rows($sql);
date_default_timezone_set('Asia/dhaka');
$t = time();
$t = date("Y-m-d H:i:s", $t);
if ($row == 1){
if ($ubal >= $tac ){
	$sql ="update account set balance=".$ubal."-".$tac." where customer_id=$uid" ;
	if (!mysql_query($sql)) {
	die('Error: ' . mysql_error());
	}
	$sql ="insert into transaction (transaction_type , amount, time, transaction_account, customer_id) values ('Wire Transfer-Out', $tac,'$t', $tref , $uid ) " ;
	if (!mysql_query($sql)) {
	die('Error: ' . mysql_error());
	}
	$sql ="update account set balance=balance+$tac where ac_number=$tref" ;
	if (!mysql_query($sql)) {
	die('Error: ' . mysql_error());
	}
	$sql ="insert into transaction (transaction_type , amount, time, transaction_account, customer_id) values ('Wire Transfer-IN', $tac, '$t' , $tref , $t_cid ) " ;
	if (!mysql_query($sql)) {
	die('Error: ' . mysql_error());
	}
}else{
	echo "insufficient fund";
}
}else{
	echo "invalid account";
}

mysql_close();

header ('location:send.php' );
?>