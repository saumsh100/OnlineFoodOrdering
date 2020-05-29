<?php 

session_start();
if(isset($_SESSION['favcolor']))
{

}
else{
	header("location:../login.php");
}
?>



<html>

<head>

     <title>The Feel Hungry House</title>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="author" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">
     <link rel="stylesheet" href="css/animate.css">
     <link rel="stylesheet" href="css/owl.carousel.css">
     <link rel="stylesheet" href="css/owl.theme.default.min.css">
     <link rel="stylesheet" href="css/magnific-popup.css">

     
     <link rel="stylesheet" href="../css/templatemo-style.css">
   
     
     
     
     
</head>
<body>

<?php include "header.php";?>











  
		
		<h2 class="text-center" style="color:white;">Hotel Details</h2>
		
		<?php
		$connection=mysqli_connect('localhost','root','','hotal_man');
	$q=	mysqli_query($connection,"select * from hotaldetails1");
		while($a=mysqli_fetch_array($q))
			
		{
			?>
			
			
		<center>	<img src="img/hotel.jpg"<?php echo $a['image']?>" class="img-thumbnail img-responsive"/>
			<p class="text-center"style="color:white"><?php echo $a['rating']?></p>
				<h4  class="text-center"style="color:black"><?php echo $a['hotalname']?></h4>
				
			<p  class="text-center"style="color:black">	<?php echo $a['description']?></p>
				
					<a href="order.php?$hp=<?php echo $a['hotalname']?>" class="btn btn-danger">Order Now</a>
					
				</center>
				
			</div>
			
			<?php
		}
	
	?>
	<?php include "footer.php";?>
	

	</body>
</html>