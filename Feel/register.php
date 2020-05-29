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
                         <li><a href="index.php" class="smoothScroll">Home</a></li>
                         <li><a href="#about" class="smoothScroll">About</a></li>
                         
                         <li><a href="#contact" class="smoothScroll">Contact</a></li>
                         <li><a href="register.php" class="smoothScroll">Sign Up</a></li>
                         <li><a href="login.php" class="smoothScroll">Login</a></li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                         <li><a href="#">Call Now! <i class="fa fa-phone"></i> +917784845243</a></li>
                         <a href="#footer" class="section-btn">Address</a>
                    </ul>
               </div>

          </div>
     </section>
<br><br><br><br>
    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div style="float: right">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form method="POST" class="register-form" id="register-form">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="name" placeholder="Your Name"required/>
                            </div>

                             <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="address" id="name" placeholder="Your Address"required/>
                            </div>
                             <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="number" name="mobile" id="name" pattern="^\d{10}$"  placeholder="Your 10 digit mobile no" required/>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email"required>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" placeholder="Password" required>
                                <div id="erpass"></div>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="repass" id="repass" placeholder="Repeat your password" required>
                                <div id="erpass"></div>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" required/>
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Register"/>
                            </div>
                        </form>
                    </div>
                </div>
               
						<?php
						// $con=mysqli_connect("localhost","root","","hungry");
						// if(isset($_POST['signup']))
						// {
							
						// 	$q="insert into signup(name,email,password,cpassword,type)
						// 	values('".$_POST['name']."','".$_POST['email']."','".$_POST['pass']."','".$_POST['re_pass']."','user')";
						// 	$a=mysqli_query($con,$q);
						// 	if($a){
						// 		echo "Your Signup Success";
						// 	}
						// 	else{
						// 		echo "Your Signup Fail";
						// 	}
							
							
                        // }
                  
						
                        $connection=mysqli_connect('localhost','root','','hotal_man');
    if (isset($_POST['signup'])) 
    
    {
      
        $q2= mysqli_query($connection,"select * from tbl_signup where email='".$_POST['email']."'and name='".$_POST['name']."'");
        
       if(mysqli_num_rows( $q2)>0){
           echo " <script> alert('username already exist,please try another')</script>";
exit();
       }
       else{
           
           $q= mysqli_query($connection,"INSERT INTO tbl_signup( name, address,mobile ,email,password,repass)
             VALUES ('".$_POST['name']."','".$_POST['address']."','".$_POST['mobile']."','".$_POST['email']."','".$_POST['pass']."','".$_POST['repass']."')");
              $q1= mysqli_query($connection,"INSERT INTO tbl_login(usertype,email,password)
              VALUES ('user','".$_POST['email']."','".$_POST['pass']."')");
            if($_POST['pass']!=$_POST['repass'])
            {
         echo "<script>alert('the passwords is not matching')</script> "  ;
                print '<meta http-equiv="refresh" content="1; url=register.php"> ';
                exit();    
            }
             
            
             if($q && $q1)
            
            {
                                echo "<script> alert('Your Registration Successfull.')</script>";
                                
            }
            else{
                echo "<script> alert('Your Registration Fail.')</script>";
            }
    }
}
    
          
            ?>
                    </div>
                    <div style="float-left">
                    <div class="signup-image">
                        <figure><img src="images/signup-image.jpg" alt="sing up image"></figure>
                        <a href="login.php" class="signup-image-link">I am already member</a>
                    </div>
                </div>
                </div>
            </div>
        </section>
        <?php include "footer.php";?>
         <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>