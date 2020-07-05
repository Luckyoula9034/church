<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])=="")
    {   
    header("Location: index.php"); 
    }
    else{
if(isset($_POST['submit']))
{
$IncomeType=$_POST['Incometype'];
$description =$_POST['indesc'];  
$status=1;
$sql="INSERT INTO  income_type(income_head,descr) VALUES(:Incometype,:indesc)";
$query = $dbh->prepare($sql);
$query->bindParam(':Incometype',$IncomeType,PDO::PARAM_STR);
$query->bindParam(':indesc',$description,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$msg="Income Type added successfully";
}
else 
{
  $new_url = add_query_arg( 'success', 1, get_permalink() );
    wp_redirect( $new_url, 303 );
    exit;
}

}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Income Type</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" media="screen">
    <link rel="stylesheet" href="css/font-awesome.min.css" media="screen">
    <link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen">
    <link rel="stylesheet" href="css/lobipanel/lobipanel.min.css" media="screen">
    <link rel="stylesheet" href="css/prism/prism.css" media="screen">
    <link rel="stylesheet" href="css/select2/select2.min.css">
    <link rel="stylesheet" href="css/main.css" media="screen">
    <script src="js/modernizr/modernizr.min.js"></script>
</head>

<body class="top-navbar-fixed">
    <div class="main-wrapper">

        <!-- ========== TOP NAVBAR ========== -->
        <?php include('includes/topbar.php');?>
        <!-- ========== WRAPPER FOR BOTH SIDEBARS & MAIN CONTENT ========== -->
        <div class="content-wrapper">
            <div class="content-container">

                <!-- ========== LEFT SIDEBAR ========== -->
                <?php include('includes/leftbar.php');?>
                <!-- /.left-sidebar -->

                <div class="main-page">

                    <div class="container-fluid">
                        <div class="row page-title-div">
                            <div class="col-md-6">
                                <h2 class="title">Income Type</h2>

                            </div>

                            <!-- /.col-md-6 text-right -->
                        </div>
                        <!-- /.row -->
                        <div class="row breadcrumb-div">
                            <div class="col-md-6">
                                <ul class="breadcrumb">
                                    <li><a href="dashboard.php"><i class="fa fa-home"></i> Home</a></li>

                                    <li class="active">Income Type</li>
                                </ul>
                            </div>

                        </div>
                        <!-- /.row -->
                    </div>
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel">
                                    <div class="panel-body">
                                       
                                        <form class="form-horizontal" method="post">

                                            <div class="form-group">
                                                <label for="default" class="col-sm-2 control-label">Income Type</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="Incometype" class="form-control" id="Incometype" required="required" autocomplete="off">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="default" class="col-sm-2 control-label">Description</label>
                                                <div class="col-sm-10">
                                                    <textarea type="text" name="indesc" class="form-control" id="indesc" required="required" autocomplete="off"></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <button type="submit" name="submit" class="btn btn-primary">Add</button>
                                                </div>
                                            </div>
                                        </form>

                                    </div>
                                </div>


                                <div class="panel-body p-20">
                                                <form method="post">
                                                <table id="example" class="display table table-striped table-bordered" cellspacing="0" width="100%">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>Income Type</th>
                                                            <th>Description</th>
                                                            <th>Action</th>
                                                            
                                                        </tr>
                                                    </thead>
                                                    <tfoot>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>Income Type</th>
                                                            <th>Description</th>
                                                            <th>Action</th>
                                                            
                                                        </tr>
                                                    </tfoot>
                                                    <tbody>
<?php $sql = "SELECT * FROM income_type";

    $query = $dbh->prepare($sql);
    $query->execute();
    $results=$query->fetchAll(PDO::FETCH_OBJ);
    $cnt=1;
    if($query->rowCount() > 0)
    {
    foreach($results as $result)
    {   
?>
<tr>
 <td><?php echo htmlentities($cnt);?></td>
                                                            <td><?php echo htmlentities($result->income_head);?></td>
                                                             <td><?php echo htmlentities($result->descr);?></td>
                                                  
<td scope="row">
<a href="edit-income-type.php?incometypeid=<?php echo htmlentities($result->id);?>"><i class="fa fa-edit" title="Edit Record"></i> </a> 
<button type="button" class="DelMe btn btn-danger btn-sm fa fa-times " data-id="<?php echo htmlentities($result->id);?>" onclick="window.alert('Are you sure you want to delete this?')" ></button>

</td>
</tr>

<?php $cnt=$cnt+1;}} ?>
                                                       
                                                    
                                                    </tbody>
                                                </table>

                                         </form>
                                                <!-- /.col-md-12 -->
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
                $('#example').DataTable();

                $('#example2').DataTable( {
                    "scrollY":        "300px",
                    "scrollCollapse": true,
                    "paging":         false
                } );

                $('#example3').DataTable();
            });
            //Deleting income rows using delete-row.php
            $(document).ready(function(){

        $(".DelMe").on('click', function(){
             var $button = $(this);
            var DelId =$(this).data('id');       
            var dataString = 'DelId='+ DelId;
                $.ajax({
                async: false,
                type: "POST",
                url: "delete-income-category.php",
                data: dataString,
                cache: false,
                success: function(callback)
        {
            location.reload();
            table.row( $button.parents('tr') ).remove().draw();
        },
        error: function(status)
        {
            console.log(status);
        }


            });
        });
});
//Avoiding resubmissions after reload
            if ( window.history.replaceState ) {
  window.history.replaceState( null, null, window.location.href );
}
        
        </script>
</body>

</html>
<?PHP } ?>

