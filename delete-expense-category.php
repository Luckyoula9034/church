<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])=="")
    {   
    header("Location: index.php"); 
    }
    else{
	    if($_POST['DelId']) {
	        $DelId = $_POST['DelId'];
	        $sql="DELETE FROM expense_type WHERE id='$DelId'";
	        $query = $dbh->prepare($sql);
				$query->bindParam(':sid',$sid,PDO::PARAM_STR);
				$query->execute();
				echo "successfully delete";
				exit();
	        if ($rowcount > 0) {
	            echo "success";
	        } else {
	            echo "false";
	        }   
	    }
} 
    ?> 
