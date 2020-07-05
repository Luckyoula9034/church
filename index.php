<?php
session_start();
error_reporting(0);
include('includes/config.php');?><!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>crystal de' tech church system</title>
        <link rel="stylesheet" href="css/bootstrap.min.css" media="screen" >
        <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" >
        <link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen" >
        <link rel="stylesheet" href="css/icheck/skins/flat/blue.css" >
        <link rel="stylesheet" href="css/main.css" media="screen" >
        <script src="js/modernizr/modernizr.min.js"></script>
    </head>
    <body class="">
        <div class="main-wrapper">

            <div class="login-bg-color bg-black-300">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="panel login-box">
                            <div class="panel-heading">
                                <div class="panel-title text-center">
                                    <h4>crystal de' tech church system</h4>
                                </div>
                            </div>

                                   <div class="form-group mt-20">
                                        <div class="">
                                      
                                            <a href="find-eulogy.php"> <button type="submit" class="btn btn-success btn-labeled pull-right">Members<span class="btn-label btn-label-right"><i class="fa fa-check"></i></span></button></a>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>

                                    <div class="form-group mt-20">
                                        <div class="">
                                      
                                            <a href="login-secretary.php"> <button type="submit" class="btn btn-success btn-labeled pull-right">Secretary<span class="btn-label btn-label-right"><i class="fa fa-check"></i></span></button></a>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>


                                   <div class="form-group mt-20">
                                        <div class="">
                                      
                                            <a href="login-accountant.php"> <button type="submit" class="btn btn-success btn-labeled pull-right">Acoountant<span class="btn-label btn-label-right"><i class="fa fa-check"></i></span></button></a>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
    
                                    <div class="form-group mt-20">
                                        <div class="">
                                      
                                            <a href="login-pastor.php"> <button type="submit" class="btn btn-success btn-labeled pull-right">Pastor<span class="btn-label btn-label-right"><i class="fa fa-check"></i></span></button></a>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>

                                       <div class="col-sm-6">
                                                               <a href="logout.php">log out</a>
                                                            </div>
                                </form>

                                <hr>
  
                            </div>
                            <p class="text-muted text-center"><small>Copyright © crystal de tech 2020</small></p>
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-md-6 col-md-offset-3 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /. -->

        </div>
        <!-- /.main-wrapper -->

        <!-- ========== COMMON JS FILES ========== -->
        <script src="js/jquery/jquery-2.2.4.min.js"></script>
        <script src="js/jquery-ui/jquery-ui.min.js"></script>
        <script src="js/bootstrap/bootstrap.min.js"></script>
        <script src="js/pace/pace.min.js"></script>
        <script src="js/lobipanel/lobipanel.min.js"></script>
        <script src="js/iscroll/iscroll.js"></script>

        <!-- ========== PAGE JS FILES ========== -->
        <script src="js/icheck/icheck.min.js"></script>

        <!-- ========== THEME JS ========== -->
        <script src="js/main.js"></script>
        <script>
            $(function(){
                $('input.flat-blue-style').iCheck({
                    checkboxClass: 'icheckbox_flat-blue'
                });
            });
        </script>

        <!-- ========== ADD custom.js FILE BELOW WITH YOUR CHANGES ========== -->
    </body>
</html>
