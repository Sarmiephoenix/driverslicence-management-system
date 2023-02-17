<!DOCTYPE html>
<html>
<head>
<title>Driver's Licence Registration System</title>
<!--css-->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/ken-burns.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/animate.min.css" type="text/css" media="all" />
<!--css-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="RTO WEB TEMPLATE" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--js-->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--js-->
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Cagliostro' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--webfonts-->
</head>
<body>
	<!--header-->
		<div class="header">
			<div class="container">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
				<!---Brand and toggle get grouped for better mobile display--->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<div class="navbar-brand">
								<h1><a href="index.php"><span>Drivers Licence Registration System</span></a></h1>
							</div>
						</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<nav class="link-effect-2" id="link-effect-2">
								<ul class="nav navbar-nav">
									<li><a href="index.php"><span data-hover="Home">Home</span></a></li>
									<li><a href="dscno.php"><span data-hover="DSC">Dsc No</span></a></li>
									<!--<li><a href="click_llr.php"><span data-hover="LLR">LLR</span></a></li>-->
									<li><a href="click_registration.php"><span data-hover="Registration">Registration</span></a></li>
									<li><a href="click_dl.php"><span data-hover="DL">DL</span></a></li>
									<li><a href="complaint.php"><span data-hover="Complaint">Complaint</span></a></li>
									<li><a href="gallery.html"><span data-hover="Gallery">Gallery</span></a></li>
								</ul>
							</nav>
						</div>
					</div>
				</nav>
			</div>
		</div>
	<!--header-->
	<!-- banner -->

	<!--content-->
		<div class="content">
			<!--banner-bottom-->

			<!--student-->
			<div class="student-w3ls">
				<div class="container">
					<h3 class="tittle">Driver's Registration</h3>
					<div class="student-grids">
						<div class="col-md-6 student-grid">
							<h4>Get Your Driving School Certificate Number</h4>
								<p><form action="dscno.php" method="post">
          				<br><br><br>
          				
						<table>
						<?php
						function createRandomVal() {
	                         $chars = "62399000986023456789";
	                         srand((double)microtime()*1000000);
	                         $i = 0;
	                         $pass = '' ;
	                    while ($i <= 10) {
		                   $num = rand() % 33;
		                   $tmp = substr($chars, $num, 1);
		                   $pass = $pass . $tmp;
		                   $i++;
	                      }
	                   return $pass;
                            }
                        $rd = createRandomVal();
						
						?>
						<tr><td>Dsc number:</td><td><input type="text" name="aad" value="<?php echo $rd; ?>" ></td></tr>
						<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
						<tr><td>Firstname:</td><td><input type="text" name="fn"></td></tr>
						<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
						<tr><td>Middlename:</td><td> <input type="text" name="mn"></td></tr>
						<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
						<tr><td>Lastname:</td><td><input type="text" name="ln"></td></tr>
						<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
						<tr><td>Sex: </td><td><input type="radio" name="sex" value="male" />Male
				<input type="radio" name="sex" value="female" />Female</td></tr>
				<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
						<tr><td>Date of Birth:</td><td> <input type="date" name="dob"></td></tr>
						<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
						<tr><td>Phone No:</td><td> <input type="text" name="pn"></td></tr>
						<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
						<tr><td>Email:</td><td><input type="text" name="em"></td></tr>
						<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
						<tr><td>Address:</td><td><textarea class="form-control" name="address" id="address" rows="3"></textarea></td></tr>
						<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
						<tr><td></td><td><button type="submit"  name="submit1" class="btn btn-primary">Submit</button></td></tr>
						
						</table>
										
          			</form>	</p>
					<?php   
				$conn = mysqli_connect("localhost","root","");
				if (mysqli_connect_errno())
				{
					echo "Failed to connect to MySQL: " . mysqli_connect_error();
				}

				mysqli_select_db($conn,"dbms_p1");
				if(isset($_POST['submit1'])){
						
					$aad=$_POST["aad"];
					$fn=$_POST["fn"];
					$mn=$_POST["mn"];
					$ln=$_POST["ln"];
					$sex=$_POST["sex"];
					$dob=$_POST["dob"];
					$pn=$_POST["pn"];
					$em=$_POST["em"];
					$address=$_POST["address"];
					
					$sql="insert into citizen(first_name,middle_name,last_name, dscn, gender, dob, phone_no, mail_id, address) values ('$fn','$mn','$ln','$aad','$sex','$dob','$pn','$em','$address')";
					$result = $conn->query($sql);
					if (mysqli_affected_rows($conn)==1) {
								echo ("<SCRIPT LANGUAGE='JavaScript'>
								window.alert('Registration was successful!!')
								window.location.href='dscno.php'
								</SCRIPT>");
					}
					else
					{
						echo ("<SCRIPT LANGUAGE='JavaScript'>
								window.alert('Error adding record!!')
								window.location.href='dscno.php'
								</SCRIPT>");
					}
				}
				
					
?>
								<p></p>


						</div>
						<div class="col-md-3 student-grid">
							<img src="images/llr1.jpg" class="img-responsive">
						</div>
						<div class="col-md-3 student-grid">
							<img src="images/llr2.jpg" class="img-responsive">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<!--student-->
		</div>
		<!--content-->
		<!--footer-->
			<div class="footer-w3">
				<div class="container">
					<div class="footer-grids">
						<div class="col-md-8 footer-grid">
							<h4>About Us</h4>
							<p>  The Mission of the Corps is to Regulate, Enforce and Coordinate all Road Traffic and Safety Management activities through: - Sustained public enlightenment - Promotion of stakeholder’s cooperation - Robust data management - Improved vehicle administration - Prompt rescue services - Effective patrol operation</span></p>
						</div>
						<div class="col-md-4 footer-grid">
						<h4>Information</h4>
							<ul>
								<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>FRSC Headquater</li>
								<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>0700 - 2255 - 3772</li>
								<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:frsc@gov.ng"> frsc@gov.ng</a></li>
								<li><i class="glyphicon glyphicon-time" aria-hidden="true"></i>Mon-Sat 10:00 hr to 17:00 hr</li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		<!--footer-->
		<!---copy--->
			<div class="copy-section">
				<div class="container">
					<div class="social-icons">
						<a href="#"><i class="icon1"></i></a>
						<a href="#"><i class="icon2"></i></a>
						<a href="#"><i class="icon3"></i></a>
						<a href="#"><i class="icon4"></i></a>
					</div>
				</div>
			</div>
			<!---copy--->
</body>
</html>
