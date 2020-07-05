<?php
include('includes/config.php');
if(!empty($_POST["classid"])) 
{
 $cid=intval($_POST['classid']);
 if(!is_numeric($cid)){
 
 	echo htmlentities("invalid Assembly");exit;
 }
 else{
 $stmt = $dbh->prepare("SELECT memberName,id FROM members WHERE assemblyId= :id order by memberName");
 $stmt->execute(array(':id' => $cid));
 ?><option value="">Select Name </option><?php
 while($row=$stmt->fetch(PDO::FETCH_ASSOC))
 {
  ?>
  <option value="<?php echo htmlentities($row['id']); ?>"><?php echo htmlentities($row['memberName']); ?></option>
  <?php
 }
}

}
// Code for Subjects
if(!empty($_POST["classid1"])) 
{
 $cid1=intval($_POST['classid1']);
 if(!is_numeric($cid1)){
 
  echo htmlentities("invalid assembly");exit;
 }
 else{
 $status=0;	
 $stmt = $dbh->prepare("SELECT branch.branchName,branch.id FROM branchcombination join  branch on  branch.id=branchcombination.branchId WHERE branchcombination.assemblyId=:cid and branchcombination.status!=:stts order by branch.branchName");
 $stmt->execute(array(':cid' => $cid1,':stts' => $status));
 
 while($row=$stmt->fetch(PDO::FETCH_ASSOC))
 {?>
  <p> <?php echo htmlentities($row['branchName']); ?><input type="text"  name="age[]" value="" class="form-control" required="" placeholder="Enter age" autocomplete="off"></p>
  
<?php  }
}
}


?>

<?php

if(!empty($_POST["studclass"])) 
{
 $id= $_POST['studclass'];
 $dta=explode("$",$id);
$id=$dta[0];
$id1=$dta[1];
 $query = $dbh->prepare("SELECT memberId,assemblyId FROM membersummary WHERE memberId=:id1 and assemblyId=:id ");
//$query= $dbh -> prepare($sql);
$query-> bindParam(':id1', $id1, PDO::PARAM_STR);
$query-> bindParam(':id', $id, PDO::PARAM_STR);
$query-> execute();
$results = $query -> fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query -> rowCount() > 0)
{ ?>
<p>
<?php
echo "<span style='color:red'> summary Already Declare .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
 ?></p>
<?php }


  }?>


