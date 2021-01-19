
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Online Handicraft</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
	</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">	
			<div class="navbar-header">
				<a href="#" class="navbar-brand">Handicraft Store</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="index.php"><span class="glyphicon glyphicon-home"></span>Home</a></li>
				<li><a href="index.php"><span class="glyphicon glyphicon-modal-window"></span>Product</a></li>
			</ul>
		</div>
	</div>
	<p><br/></p>
	<p><br/></p>
	<p><br/></p>
	<div class="container-fluid">
		<div align="center">
						<div style="width:300px;">
							<div class="panel panel-primary">
								<div class="panel-heading">Login</div>
								<div class="panel-heading">
									<label for="email">Email</label>
									<input type="email" class="form-control" id="email" required/>
									<label for="email">Password</label>
									<input type="password" class="form-control" id="password" required/>
									<p><br/></p>
									<a href="#" style="color:white; list-style:none;">Forgotten Password</a>
									<input type="submit" class="btn btn-success" style="float:right;" id="login2" value="Login">
								</div>
								<div class="panel-footer" id="e_msg"></div>
							</div>
							</div>
						</div>
					</ul>
				</li> 
						</div>
											<?php
include "db.php";

session_start();

if(isset($_POST["userLogin"])){
	$email = mysqli_real_escape_string($con,$_POST["userEmail"]);
	$password = md5($_POST["userPassword"]);
	$sql = "SELECT * FROM brands WHERE email = '$email' AND password = '$password'";
	$run_query = mysqli_query($con,$sql);
	$count = mysqli_num_rows($run_query);
	if($count == 1){
		$row = mysqli_fetch_array($run_query);
		$_SESSION["bid"] = $row["brand_id"];
		$_SESSION["name"] = $row["first_name"];
			echo "maker";
}
}
?>



						
					</div>
					</form>
					<div class="panel-footer" style="text-align: center;">© 2019 Online Handicrafts All Rights Reserved</div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
</body>
</html>



















