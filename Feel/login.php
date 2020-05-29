<?php
						// $con=mysqli_connect("localhost","root","","hungry");
						// if(isset($_POST['signin']))
						// {
							
						// 	$q="select type from signup where email='".$_POST['your_name']."' and password='".$_POST['your_pass']."'";
						// 	$data=mysqli_query($con,$q);
						// while($dd=mysqli_fetch_array($data))
						// {
							
						// 	if($dd['type']=='user'){
						// 		header("location:user/userhomer.php");
						// 	}
						// 	elseif($dd['type']=='admin'){
						// 		header("location:admin/adminhomer.php");
								
						// 	}
						// 	else{
						// 		echo "invalid user";
						// 	}
						// }
							
						// }
						session_start();
    $connection=mysqli_connect('localhost','root','','hotal_man');
    if(isset($_POST['signin']))
    {
       
  $q= mysqli_query($connection,"select usertype from tbl_login where email='".$_POST['email']."'and password='".$_POST['pass']."'");
        if($a=mysqli_fetch_array($q))
        {
            if($a['usertype']=="user")
      {
      header("location:User/userhome.php");
      $_SESSION["favcolor"] = $_POST['email'];

      }
       else if($a['usertype']=="admin")
       {
         header("location:Admin/adminhome.php");
         $_SESSION["favcolor"] = $_POST['email'];
       }
        }

        else
    {
           echo "<script>alert('Invailed User')</script>";
        }
       
    }
    
						?>
<?php include "header.php";?>
	 <!-- Sing in  Form
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="images/signin-image.jpg" alt="sing up image"></figure>
                        <a href="register.php" class="signup-image-link">Create an account</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Login</h2>
                        <form method="POST" class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="email" name="your_name" id="your_name" placeholder="Your Email"/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="your_pass" id="your_pass" placeholder="Password"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                            </div>
                        </form>
					 -->
                     <br><br><br>
                     <section id="contact" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">
	
          
           
          
         

                    <div class="wow fadeInUp col-md-6 col-sm-12" data-wow-delay="0.4s">
                    <figure><img src="images/signin-image.jpg" alt="sing up image"></figure>
                       
                    </div>    

                    <div class="col-md-6 col-sm-12">

                         <div class="col-md-12 col-sm-12">
                              <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                                   <h2>Login Here</h2>
                              </div>
                         </div>

                         
                         <form  method="post" class="wow fadeInUp" id="contact-form" role="form" data-wow-delay="0.8s">

                             
                              <h6 class="text-success">Your message has been sent successfully.</h6>
                              
                           
                              <h6 class="text-danger">E-mail must be valid and message must be longer than 1 character.</h6>

                              <div class="col-md-12 col-sm-12">
                                   <input type="email" class="form-control" id="cf-name" name="email" placeholder="Email address">
                              </div>
                              
                              <div class="col-md-12 col-sm-12">
                                   <input type="password" class="form-control" id="cf-email" name="pass" placeholder="Password">
                              </div>


                              <div class="col-md-12 col-sm-12">
                                   
                             
                                  

                                   <input type="submit" class="btn btn-danger btn-block form-submit" id="cf-submit" name="signin" value="Log In ">
                              </div>
                         </form>
                    </div>

               </div>
          </div>
     </section>          


						
						
						
					
                        <div class="social-login">
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>

    <?php include "footer.php";?>
    