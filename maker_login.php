<!DOCTYPE html>
<html>
	<head>
		<style>
			
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #087fa4;
  border: none;
  color: #FFFFFF;
 text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 300px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}


		</style>
		<meta charset="UTF-8">
		<title>Handicraft Store</title>
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
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8" id="signup_msg">
				<!--Alert from signup form-->
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="panel panel-primary">
					<div class="panel-heading">Select User Type For Login</div>
					<div class="panel-body">
					
					<form method="post">
						<div class="row">
						
</div>
				<?php  
					
				echo'<div style="float:left">
                                             
						<input type="button"class="button"  value="Buyer" onclick="window.location=\'login.php\'" />
                                                  </div>';
                                               echo'    <div style="float:right">
						<input type="button" class="button" value="Maker" onclick="window.location=\'login2.php\'" />
						
					        </div>';
				
				?>
				
			</div>
					</div>
					</form>
					<div class="panel-footer">© 2019 Online Handicrafts All Rights Reserved</div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
</body>
</html>



















