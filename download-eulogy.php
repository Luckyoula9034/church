<?php
namespace Dompdf;
require_once 'dompdf/autoload.inc.php';
session_start();
ob_start();
require_once('includes/configpdo.php');
error_reporting(0);
?>

<html>
<style>
body {
  padding: 4px;
  text-align: center;
}

table {
  width: 100%;
  margin: 10px auto;
  table-layout: auto;
}

.fixed {
  table-layout: fixed;
}

table,
td,
th {
  border-collapse: collapse;
}

th,
td {
  padding: 1px;
  border: solid 1px;
  text-align: center;
}


</style>
<?php $idNo=$_SESSION['idNo'];
$assemblyid=$_SESSION['assemblyid'];
$qery = "SELECT   members.memberName,members.IdNo,members.RegDate,members.memberId,members.Status,members.assemblyName,assembly.Section from members join assembly on assembly.id=members.assemblyId where members.RollId=? and members.assemblyId=?";
$stmt21 = $mysqli->prepare($qery);
$stmt21->bind_param("ss",$rollid,$classid);
$stmt21->execute();
                 $res1=$stmt21->get_result();
                 $cnt=1;
                   while($result=$res1->fetch_object())
                  {  ?>
<p><b>member Name :</b> <?php echo htmlentities($eulogy->memberName);?></p>
<p><b>member  IdNo :</b> <?php echo htmlentities($eulogy->IdNo);?>
<p><b>member assembly:</b> <?php echo htmlentities($eulogy->assemblyName);?>(<?php echo htmlentities($eulogy->location);?>)
<?php }

    ?>
 <table class="table table-inverse" border="1">
                      
                                                <table class="table table-hover table-bordered">
                                                <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>branch</th>    
                                                            <th>age</th>
                                                        </tr>
                                               </thead>
  


                                                  
                                                  <tbody>
<?php                                              
// Code for result
 $query ="select m.memberName,m.IdNo,m.assemblyId,m.age,branchId,branch.branchName from (select me.memberName,me.IdNo,me.ClassId,tr.age,branchId from members as me join  eulogy as tr on tr.memberId=me.memberId) as t join branch on branch.id=t.branchId where (t.IdNo=? and t.assemblyId=?)";
$stmt = $mysqli->prepare($query);
$stmt->bind_param("ss",$idNo,$assemblyid);
$stmt->execute();
                 $res=$stmt->get_eulogy();
                 $cnt=1;
                   while($row=$res->fetch_object())
                  {

    ?>

                                                    <tr>
                                                <td ><?php echo htmlentities($cnt);?></td>
                                                      <td><?php echo htmlentities($row->branchName);?></td>
                                                      <td><?php echo htmlentities($totalage=$row->age);?></td>
                                                    </tr>
<?php 
$totlcount+=$totalage;
$cnt++;}
?>
<tr>
                                                <th scope="row" colspan="2">Total age</th>
<td><b><?php echo htmlentities($totlcount); ?></b> out of <b><?php echo htmlentities($outof=($cnt-1)*100); ?></b></td>
                                                        </tr>
<tr>
                                                <th scope="row" colspan="2">Percentage age</th>           
                                                            <td><b><?php echo  htmlentities($totlcount*(100)/$outof); ?> %</b></td>
                                                             </tr>

                            </tbody>
                        </table>
                    </div>
</html>

<?php
$html = ob_get_clean();
$dompdf = new DOMPDF();
$dompdf->setPaper('A4', 'landscape');
$dompdf->load_html($html);
$dompdf->render();
//dompdf->stream("",array("Attachment" => false));
$dompdf->stream("eulogy.pdf");
?>