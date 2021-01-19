<?php
include "db.php";
session_start();
?>
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
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8" id="up_msg">
				<!--Alert from signup form-->
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="panel panel-primary">
					<div class="panel-heading">Product Upload Form</div>
					<div class="panel-body">
					
					<form  action="upproduct.php" method="post" enctype="multipart/form-data">
						<div class="row">
							
							<div class="col-md-6" style="float:left">
								<label for="Pcat">Product Catagory</label>
								<select name="Pcat" class="form-control">
							    <option value="1">Ornaments</option>
							    <option value="2">Weaving</option>
							    <option value="3">Beaded</option>
							    <option value="4">Sewing</option>
							    <option value="5">Furnitures</option>
							    <option value="6">Electronics</option>
							  </select>
								<!-- <input type="number"  name="Pcat"class="form-control"> -->
								<!-- <label for="Pcat"> Select value according to ur choice</label> -->
							</div>
						<!-- </div>
						<div class="row"> -->
							<div class="col-md-6" style="float:right">
								<label for="Pbrand">Product Brand</label>
								<input type="number" value="<?php echo $_SESSION['bid']?>" name="Pbrand"class="form-control">
								
							</div>
						</div>
												<div class="row">
							<div class="col-md-12">
								<label for="p_title">Product Title</label>
								<input type="text"  name="p_title"class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="pprice">Product Price</label>
								<input type="text"  name="pprice"class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="pdes">Product Description</label>
								<input type="text"  name="pdes"class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="files">Product Image</label>
								<input type="file"  name="files"class="form-control">
								

							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="pkey">Product Keywords</label>
								<input type="text" id="pkey" name="pkey"class="form-control">
							</div>
						</div>
						
						<p><br/></p>
						<div class="row">
							<div class="col-md-12">
							
								<button
									type="submiitt" name="submiitt">Upload
								</button>
							</div>
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



















