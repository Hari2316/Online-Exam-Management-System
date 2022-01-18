<?php 
    $filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/inc/header.php');
?>

    <style>
        .adminpanel{
            border: 1px solid #dddddd;
            border-radius: 12px;
            color: #999999;
            margin: 44px auto 0;
            padding: 110px;
            width: 694px;
        }
    </style>

<div class="main">
<h1 style="text-align: center;color:purple">Admin Panel</h1>
    <div class="adminpanel">
        <h2 style="text-align: center;color:purple">Welcome to Admin Panel.</h2>
        <p style="text-align: center;color:purple">You can manage your user and online exam system from here..</p>
    </div>


	
</div>
<?php include 'inc/footer.php'; ?>