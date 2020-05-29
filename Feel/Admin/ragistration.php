<?php
session_start();

if(isset($_SESSION['favcolor']))
{

}
else
{
	header("location:../login.php");
}
?>
<html>
<?php include "header1.php";?>
		
<hr>

	<div class="row">
	<div class="col-sm-12 bg-info">
	<h1 class="text-center" style="color:red">Hotel User Details</h2>
	<table class="table table-bordered table-responsive">
		<tr>
			<th>Id</th>
			<th>Person Name</th>
			<th>Address</th>
			<th>Mobile</th>
            <th>Email</th>
            <th>Password</th>
            
			<th colspan="2">Action</th>
		</tr>
		
	<?php
		
	$q=	mysqli_query($conn,"select * from tbl_signup");
		while($a=mysqli_fetch_array($q))
			
		{
			?>
			
			<tr>
				<td><?php echo $a['id']?></td>
				<td><?php echo $a['name']?></td>
				<td><?php echo $a['address']?></td>
				<td><?php echo $a['mobile']?></td>
                <td><?php echo $a['email']?></td>
                <td><?php echo $a['password']?></td>
                
				<td><a href="ragistration.php?dd=<?php echo $a['id']?>" class="btn btn-danger">Delete</a></td>
			</tr>
			
			<?php
		}
	
	?>
	
	</table>
	</div>
    </div>
	<?php

	if(isset($_GET['dd']))
 {
	 
	 $d1=mysqli_query($conn,"delete from tbl_signup where id ='".$_GET['dd']."'");
	 if($d1)
	{
		echo "<script>alert('Data deleted')</script>";
		
	}
	else
	{
	echo "<h3 class='text-warning'>Data Not Deleted</h3>";	
	}
	
 }
 ?>
 
 <?php include "footer.php";?>
</html>