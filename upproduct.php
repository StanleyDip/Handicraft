<!DOCTYPE html>
<html>
<head>
<style>
a:link, a:visited {
  background-color: #ff66e5;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: #4da6ff;
}
</style>
</head>
</html>
<?php
include "db.php";
if (isset($_POST['submiitt'])) {
$file=$_FILES;
$fileName=$_FILES['files']['name'];
$fileTmpName=$_FILES['files']['tmp_name'];
$fileSize=$_FILES['files']['size'];
$fileError=$_FILES['files']['error'];
$fileType=$_FILES['files']['type'];

$fileExt=explode('.',$fileName);
$fileActualExt=strtolower(end($fileExt));



  

 // $fileNameNew=uniqid('',true).".".$fileActualExt;
  
   
 
  
     
  $Pcat= mysqli_real_escape_string( $con , $_POST['Pcat']);
  $Pbrand = mysqli_real_escape_string( $con , $_POST['Pbrand']);
  $p_title = mysqli_real_escape_string( $con , $_POST['p_title']);
  $pprice = mysqli_real_escape_string( $con , $_POST['pprice']);
  $pdes = mysqli_real_escape_string( $con , $_POST['pdes']);
  $pkey = mysqli_real_escape_string( $con , $_POST['pkey']);
  
   if(empty($Pcat) || empty($Pbrand) || empty($p_title) || empty($pprice) || empty($pdes) ||
  empty($pkey)){
      echo "
      <div class='alert alert-warning'>
        <a href='action1.php' class='close' data-dismiss='alert' aria-label='close'>&times;</a><b>Please Fill-up all the fields..!</b>
      </div>
    ";
    exit();
    header("location:action1.php");
  }
  else{




 $fileDestination='product_images/'.$fileName;
    move_uploaded_file($fileTmpName, $fileDestination);

  $sql = "INSERT INTO products(product_id, product_cat, product_brand, product_title, product_price, product_desc, product_image, product_keywords) VALUES ('','$Pcat','$Pbrand','$p_title','$pprice','$pdes','$fileName','$pkey')";
          
          mysqli_query($con , $sql);
       		 echo "<div style='background-color:lightblue' align='center'>
          <p>Your Product has been uploaded successfully. Now click </p>
          <a href='profile2.php'><span class='glyphicon glyphicon-home'></span>Home</a>
          </div>";
          exit();
          header("Location: ../upload.php");
 }
        }
      ?>

      


 <!--       $allowed=array('jpg','jpeg','png');
if (in_array($fileActualExt, $allowed)) {
  if ($fileError===0) {
    if($fileSize<1000000000){
    $fileNameNew=uniqid('',true).".".$fileActualExt;
    $fileDestination='product_images/'.$fileNameNew;
    move_uploaded_file($fileTmpName, $fileDestination);

    }
    else{
    echo"File too big!";
  }
  }
  else{
    echo"There was a error upolading file";
  }
}
else{
  echo"You can not upload file of this type";
}
  -->
   
