
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
	<head>
	<?php include "header.php";?>
		<title>My Home</title>
		
		
		
		<h2 class="text-center" style="color:red;">Your Booking Details</h2>
		<div class="row">
        <div class="col-md-4"></div>
		<?php
		
		$connection=mysqli_connect('localhost','root','','hotal_man');
		$q=	mysqli_query($connection,"select * from purchase order by purchaseid desc ");
		if($a=mysqli_fetch_array($q))
			
		{
			?>
			
			<div class="col-md-4">
			<table class="table table-bordered">
			<tr>
        
      <tr>
        <td>User Name:</td>
        <td><?php echo $a['customer']?></td>
       </tr>
      <tr>
        <td>total:</td>
        <td><?php echo $a['total']?></td>
       </tr>
       <tr>
        <td>date_purchase:</td>
        <td><?php echo $a['date_purchase']?></td>
       </tr>
      <tr>
        <td>address</td>
        <td><?php echo $a['address']?></td>
       </tr>
       <tr>
        <td>mobile no:</td>
        <td><?php echo $a['mobile']?></td>
       </tr>
      
      <tr>
      <th colspan="2">
        <center>
        <input type="submit" value="Print it.." class="btn btn-danger"  onclick="window.print()">
        </center>
      </th>
      </tr>
    
  </table>
			</div>
			
			<?php
		}
	
	?>
	 <div class="col-md-4"></div>
	</div>

	
	<?php include "footer.php";?>

	</body>
</html>