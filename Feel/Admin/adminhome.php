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
	<body>
	<?php include "header1.php";?>
	<br><br><br><br><br>
<hr>
<h1 class="text-center" style="color:red">Welcome To Admin Page</h1>
<hr>
		
<?php include "footer.php";?>

	</body>
</html>