<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])=="")
    {   
    header("Location: index.php"); 
    }
    else{

if(isset($_POST['Update']))
{
$sid=intval($_GET['expenseid']);
$expensehead=$_POST['expensehead'];
$expensedate=$_POST['expensedate']; 
$amount=$_POST['amount'];
$descr=$_POST['descr'];
$sql="update expense set expense_head=:expensehead,expense_date=:expensedate,Amount=:amount,description=:descr where id=:sid";
$query = $dbh->prepare($sql);
$query->bindParam(':expensehead',$expensehead,PDO::PARAM_STR);
$query->bindParam(':expensedate',$expensedate,PDO::PARAM_STR);
$query->bindParam(':amount',$amount,PDO::PARAM_STR);
$query->bindParam(':descr',$descr,PDO::PARAM_STR);
$query->bindParam(':sid',$sid,PDO::PARAM_STR);
$query->execute();

$msg="expense info updated successfully";
  header("Location: expenses.php"); 
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Edit expense </title>
        <link rel="stylesheet" href="css/bootstrap.min.css" media="screen" >
        <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" >
        <link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen" >
        <link rel="stylesheet" href="css/lobipanel/lobipanel.min.css" media="screen" >
        <link rel="stylesheet" href="css/prism/prism.css" media="screen" >
        <link rel="stylesheet" href="css/select2/select2.min.css" >
        <link rel="stylesheet" href="css/main.css" media="screen" >
        <script src="js/modernizr/modernizr.min.js"></script>
    </head>
    <body class="top-navbar-fixed">
        <div class="main-wrapper">

            <!-- ========== TOP NAVBAR ========== -->
  <?php include('includes/topbar.php');?> 
            <!-- ========== WRAPPER FOR BOTH sidEBARS & MAIN CONTENT ========== -->
            <div class="content-wrapper">
                <div class="content-container">

                    <!-- ========== LEFT sidEBAR ========== -->
                   <?php include('includes/leftbar.php');?>  
                    <!-- /.left-sidebar -->

                    <div class="main-page">

                     <div class="container-fluid">
                            <div class="row page-title-div">
                                <div class="col-md-6">
                                    <h2 class="title">Edit expense</h2>
                                
                                </div>
                                
                                <!-- /.col-md-6 text-right -->
                            </div>
                            <!-- /.row -->
                            <div class="row breadcrumb-div">
                                <div class="col-md-6">
                                    <ul class="breadcrumb">
                                        <li><a href="dashboard.php"><i class="fa fa-home"></i> Home</a></li>
                                        <li> expense</li>
                                        <li class="active">Edit expense</li>
                                    </ul>
                                </div>
                             
                            </div>
                            <!-- /.row -->
                        </div>
                        <div class="container-fluid">
                           
                        <div class="row">
                                    <div class="col-md-12">
                                        <div class="panel">
                                            <div class="panel-heading">
                                                <div class="panel-title">
                                                    <h5>Edit expense</h5>
                                                </div>
                                            </div>
                                            <div class="panel-body">
<?php if($msg){?>
<div class="alert alert-success left-icon-alert" role="alert">
 <strong>Well done!</strong><?php echo htmlentities($msg); header("Location: expense.php");?>
 </div><?php } 
else if($error){?>
    <div class="alert  left-icon-alert" role="alert">
                                            <strong>Oh snap!</strong> <?php echo htmlentities($error); ?>
                                        </div>
                                        <?php } ?>
                                        <form class="form-horizontal" method="post">

 <?php
$sid=intval($_GET['expenseid']);
$sql = "SELECT * from expense where id=:sid";
$query = $dbh->prepare($sql);
$query->bindParam(':sid',$sid,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $inco)
{   ?>                                               
                                        <div class="form-group">
                                           <label for="default" class="col-sm-2 control-label">Change Expense type</label>
                                           <div class="col-sm-6"> 
                                                <select name="expensehead" class="form-control"  required="required">
                                                        <option name="expensehead" value="<?php echo htmlentities($inco->expense_head); ?>"><?php echo htmlentities($inco->expense_head); ?></option>
                                                        <?php $sql = "SELECT * from expense_type";
$query = $dbh->prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
foreach($results as $result)
{   ?>
                                                        <option name="expensehead" name="expensehead" value="<?php echo htmlentities($inco->expense_head); ?>">
                                                            <?php echo htmlentities($result->expense_head); ?>
                                                        </option>
                                                        <?php }} ?>
                                                    </select>
                                            </div>
                                                    
                                        </div>
                                                    <div class="form-group">
                                                        <label for="default" class="col-sm-2 control-label">Amount</label>
                                                        <div class="col-sm-6">
 <input type="text" name="amount" class="form-control" value="<?php echo htmlentities($inco->Amount);?>"  id="default" placeholder="amount" required="required">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="default" class="col-sm-2 control-label">Date</label>
                                                        <div class="col-sm-6">
 <input type="date" name="expensedate" class="form-control" value="<?php echo htmlentities($inco->expense_date);?>"  id="default" placeholder="date" required="required">
                                                        </div>
                                                    </div>
                                                       <div class="form-group">
                                                        <label for="default" class="col-sm-2 control-label">Description</label>
                                                        <div class="col-sm-6">
 <input type="text" name="descr" class="form-control" value="<?php echo htmlentities($inco->description);?>"  id="default" placeholder="descripn" required="required">
                                                        </div>
                                                    </div>

                                                    <?php }} ?>

                                                    
                                                    <div class="form-group">
                                                        <div class="col-sm-offset-2 col-sm-10">
                                                            <button type="submit" name="Update" class="btn btn-primary" >Update</button>
                                                        </div>
                                                    </div>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.col-md-12 -->
                                </div>
                    </div>
                </div>
                <!-- /.content-container -->
            </div>
            <!-- /.content-wrapper -->
        </div>
        <!-- /.main-wrapper -->
        <script src="js/jquery/jquery-2.2.4.min.js"></script>
        <script src="js/bootstrap/bootstrap.min.js"></script>
        <script src="js/pace/pace.min.js"></script>
        <script src="js/lobipanel/lobipanel.min.js"></script>
        <script src="js/iscroll/iscroll.js"></script>
        <script src="js/prism/prism.js"></script>
        <script src="js/select2/select2.min.js"></script>
        <script src="js/main.js"></script>
        <script>
            $(function($) {
                $(".js-states").select2();
                $(".js-states-limit").select2({
                    maximumSelectionLength: 2
                });
                $(".js-states-hide").select2({
                    minimumResultsForSearch: Infinity
                });
            });
            
if ( window.history.replaceState ) {
  window.history.replaceState( null, null, window.location.href );
}

        </script>
    </body>
</html>
<?PHP } ?>
