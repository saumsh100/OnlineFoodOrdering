<?php include('conn.php'); ?>
<!DOCTYPE html>

<html lang="en">
<head>

     <title>The Feel Hungry House</title>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="author" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">
     <link rel="stylesheet" href="css/animate.css">
     <link rel="stylesheet" href="css/owl.carousel.css">
     <link rel="stylesheet" href="css/owl.theme.default.min.css">
     <link rel="stylesheet" href="css/magnific-popup.css">

     
     <link rel="stylesheet" href="css/templatemo-style.css">
   
     
     
     
     

</head>
<body>

     
     <!-- <section class="preloader">
          <div class="spinner">

               <span class="spinner-rotate"></span>
               
          </div>
     </section> -->


     
     <section class="navbar custom-navbar navbar-fixed-top" role="navigation" style="background-color:#000000">
          <div class="container">

               <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                    </button>

                                                            
    <span class="blinking">FEEL HUNGRY</span>
    <style type="text/css"> 
    .blinking{
    animation:blinkingText .7s infinite;
    font-size: 30px;
    margin-top: -50px;
    font-family:serif;
}
@keyframes blinkingText{
    0%{     color:yellow;}
    49%{    color:red }
    50%{    color:blue; }
    99%{    color:aqua;}
    100%{   color:green;}

}
</style>
               </div>

               
               <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-nav-first">
                    <li><a href="../index.php"  style="color:white">Home</a></li>
	  <li><a href="adminhome.php"  style="color:white">adminhome</a></li>
     <li><a href="product.php"  style="color:white">items </a></li>
	 <li><a href="sales.php"  style="color:white">Hotel's Item Booking Details</a></li>
	 <li><a href="ragistration.php"  style="color:white">Hotel's Registration</a></li>

                    <ul class="nav navbar-nav navbar-right">
                    <li><a href="login.php"  style="color:white"><span class="glyphicon glyphicon-user"></span><?php echo $_SESSION["favcolor"]; ?></a></li>

    
<li><a href="../logout.php" style="color:white" name="logout" onclick='logout()'><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                    </ul>
               </div>

          </div>
     </section>
<br><br><br><br>