
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
		<?php

		include'conn.php';
		?>
		<?php include "header.php";?>
				
		

<div class="container">
	<h1 class="text-center" style="color:red;">ORDER FEEL HUNGRY</h1><br>
	<form method="POST" action="purchase.php">
		<table class="table table-striped table-bordered">
			<thead>
				<th class="text-center"><input type="checkbox" id="checkAll"></th>
				<th>Image</th>
				<th>Category</th>
				<th>Product Name</th>
				<th>Price</th>
				<th>Quantity</th>
			</thead>
			<tbody>
				<?php 
					$sql="select * from product left join category on category.categoryid=product.categoryid order by product.categoryid asc, productname asc";
					$query=$conn->query($sql);
					$iterate=0;
					while($row=$query->fetch_array()){
						?>
						<tr>
							<td class="text-center"><input type="checkbox" value="<?php echo $row['productid']; ?>||<?php echo $iterate; ?>" name="productid[]" style=""></td>
							<td><a href="<?php if(empty($row['photo'])){echo "upload.jpg";} else{echo $row['photo'];} ?>"><img src="<?php if(empty($row['photo'])){echo "upload.jpg";} else{echo $row['photo'];} ?>" height="50px" width="70px"></a></td>
							<td><?php echo $row['catname']; ?></td>
							<td><?php echo $row['productname']; ?></td>
							<td class="text-right">&#x20A8; <?php echo number_format($row['price'], 2); ?></td>
							<td><input type="text" class="form-control" name="quantity_<?php echo $iterate; ?>"></td>
						</tr>
						<?php
						$iterate++;
					}
				?>
			</tbody>
		</table>
		
		<div class="row">
			<div class="col-md-3">
				<input type="text" name="customer" class="form-control" placeholder="Customer Name" required>
				</div>
				<div class="col-md-3">
				<input type="text" name="address" class="form-control" placeholder="Customer address" required>
				</div>
				<div class="col-md-3">
                                <input type="number" name="mobile"id="name"class="form-control" pattern="^\d{10}$"  placeholder="Your 10 digit mobile no" required />
				
				</div>
			</div>
		<br>
			<div class="col-md-2" style="margin-left:500px;">
				<button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-floppy-disk"></span> Save</button>
			</div>
		</div>	
	
	</form>
	<br>
	<script type="text/javascript">
	$(document).ready(function(){
		$("#checkAll").click(function(){
	    	$('input:checkbox').not(this).prop('checked', this.checked);
		});
	});
</script>
	<footer  class="container-fluid" id="footer" data-stellar-background-ratio="0.8" width="100%" style="background-color:black;">
          <div class="container-fluid">
               <div class="row">

                    <div class="col-md-3 col-sm-8">
                         <div class="footer-info">
                              <div class="section-title">
                                   <h2 class="wow fadeInUp" data-wow-delay="0.2s">Find us</h2>
                              </div>
                              <address class="wow fadeInUp" data-wow-delay="0.4s">
                                   <p>127/25 Nirala nagar,<br> Kanpur(208014)<br>Uttar Pradesh</p>
                              </address>
                         </div>
                    </div>

                    <div class="col-md-3 col-sm-8">
                         <div class="footer-info">
                              <div class="section-title">
                                   <h2 class="wow fadeInUp" data-wow-delay="0.2s">Reservation</h2>
                              </div>
                              <address class="wow fadeInUp" data-wow-delay="0.4s">
                                   <p>07784845243 | 09648799958</p>
                                   <p><a href="amarishojha85@gmail.com">feelhungry.com</a></p>
                                   <p>LINE:7x24 </p>
                              </address>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-8">
                         <div class="footer-info footer-open-hour">
                              <div class="section-title">
                                   <h2 class="wow fadeInUp" data-wow-delay="0.2s">Open Hours</h2>
                              </div>
                              <div class="wow fadeInUp" data-wow-delay="0.4s">
                                   <p>Monday: Closed</p>
                                   <div>
                                        <strong>Tuesday to Friday</strong>
                                        <p>7:00 AM - 9:00 PM</p>
                                   </div>
                                   <div>
                                        <strong>Saturday - Sunday</strong>
                                        <p>11:00 AM - 10:00 PM</p>
                                   </div>
                              </div>
                         </div>
                    </div>

                    <div class="col-md-2 col-sm-4">
                         <ul class="wow fadeInUp social-icon" data-wow-delay="0.4s">
                              <li><a href="#" class="fa fa-facebook-square" attr="facebook icon"></a></li>
                              <li><a href="#" class="fa fa-twitter"></a></li>
                              <li><a href="#" class="fa fa-instagram"></a></li>
                              <li><a href="#" class="fa fa-google"></a></li>
                         </ul>

                         <div class="wow fadeInUp copyright-text" data-wow-delay="0.8s"> 
                              <p><br>Copyright &copy; 2018 <br>Feel Hungry 
                              
                              <br><br>Design:Amarish,Saumya,Anjana,Shashank <a rel="nofollow" href="" target="_parent"></a></p>
                         </div>
                    </div>
                    
               </div>
          </div>
     </footer>


    
     <script src="js/jquery.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/jquery.stellar.min.js"></script>
     <script src="js/wow.min.js"></script>
     <script src="js/owl.carousel.min.js"></script>
     <script src="js/jquery.magnific-popup.min.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/custom.js"></script>



	

	
	

</body>


</html>