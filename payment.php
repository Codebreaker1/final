<?php include('header.php'); ?>
<?php include('dbconn.php'); ?>
<?php include('config.php'); ?>

<html>
<head>


    <link rel="stylesheet" href="../css/button.css">




</head>
<div id="menu">
<ul>
<li><a href="navigation.php">Home</a></li></ul>
<ul>
<li><a href="transaction.php">Transactions</a>    <!--This is in main menu-->
</li>
<li><a href="payment.php">View Loan</a>    <!--This is in main menu-->

</li>
</ul>
<ul><li><a href="report.php">Statement</a></li></ul>
<ul><li><a href="send.php">Send Money</a></li></ul>
<ul><li><a href="logout.php">Logout</a></li></ul>
</div>
<?php
error_reporting(0);
session_start();
if (!isset($_SESSION['user'])) {
    header('location:logout.php');
}
?>
<?php
$userID = $_SESSION['id'];
//echo $userID;

?>


<div class="majhe">
<?php
$result = mysql_query("SELECT loan_amount,monthly_installment,interest_rate,loan_remaining FROM loan_account WHERE customer_id = '$userID'");
if (!$result) {
    echo 'Could not run query: ' . mysql_error();
    exit;
}


echo "<table border='1'>
<tr>
<th>loan_amount</th>
<th>installment</th>
<th>interest_rate</th>
<th>loan_remaining</th>
</tr>";

//$row = mysql_fetch_row($result);
$add=0;
while ($row = mysql_fetch_array($result)) { 

echo "<tr>";
echo "<td>" . $row[0] . "</td>";
echo "<td>" . $row[1] . "</td>";
echo "<td>" . $row[2] . "</td>";
echo "<td>" . $row[3] . "</td>";

echo "</tr>";
}


$result = mysql_query("SELECT loan_id, monthly_installment * interest_rate + loan_remaining AS age_died FROM loan_account WHERE customer_id = '$userID'");
if (!$result) {
    echo 'Could not run query: ' . mysql_error();
    exit;
}

while ($row = mysql_fetch_array($result)) { 

echo "<tr>";
echo "<td>". "Total balance"."</td>";
echo "<td>";
echo "<td>";
echo "<td>" . $row[1] . "</td>";


echo "</tr>";
}
echo "</table>";
?>

</div>
</html>