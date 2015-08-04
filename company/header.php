<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <head>
    <?php error_reporting(0); ?>
        <script src="bootstrap/js/bootstrap.js"></script>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="custom/css/custom.css" rel="stylesheet" type="text/css" />
        <!--script src="custom/js/jquery.js"></script-->
        <script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="application.js"></script>
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
        
        <title>XSystem</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        
        <div class="body-wrapper">
        <div class="main-wrapper">
       
      