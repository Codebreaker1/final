<?php include('header.php'); ?>
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




<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="app.js"></script>
<script type="text/javascript" src="jsDatePick.min.1.3.js"></script>
<link rel="stylesheet" type="text/css" href="jsDatePick_ltr.min.css" />
<script type="text/javascript">
	window.onload = function()
	{
		new JsDatePick(
		{
			useMode:2,
			target:"from_date",
			dateFormat:"%Y-%m-%d"
		});
		new JsDatePick(
		{
			useMode:2,
			target:"to_date",
			dateFormat:"%Y-%m-%d"
		});
	};	
</script>
	<div class="div_data_view" id="report_page" style="margin:0px 20px 20px 0px; width:705px;">
        <div class="data_insert">
        	From <input type="text" readonly="readonly" id="from_date" /> 
            To <input type="text" readonly="readonly" id="to_date" /> 
            Type 
            <select name="report_type" id="report_type">
            	<option value="">Select</option>
            	<option value="all">All</option>
            </select>
            <input type="button" class="button" value="Find" onclick="find_report()" />        
        </div>
	<div id="change_only" style="height:350px; overflow:auto; margin:10px;">
    </div>    
        <br />
		<a href="navigation.php" class="button">Back</a>
        <br />
    </div>


</html>