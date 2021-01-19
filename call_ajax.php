<?php
session_start();
include "db.php";
if(! isset($_SESSION["bid"])){
$s1=$_REQUEST["n"];
$select_query="SELECT * FROM products WHERE product_keywords LIKE '%".$s1."%'";
$sql=mysqli_query($con,$select_query) or die (mysql_error());
$s="";
while($row=mysqli_fetch_array($sql))
{
            $pro_id    = $row['product_id'];
            $pro_cat   = $row['product_cat'];
            $pro_brand = $row['product_brand'];
            $pro_title = $row['product_title'];
            $pro_price = $row['product_price'];
            $pro_image = $row['product_image'];
            echo "
                <div class='col-md-4'>
                            <div class='panel panel-info'>
                                <div class='panel-heading'>$pro_title</div>
                                <div class='panel-body'>
                                    <img src='product_images/$pro_image' style='width:160px; height:250px;'/>
                                </div>
                                <div class='panel-heading'>tk.$pro_price.00
                                    <button pid='$pro_id' style='float:right;' id='product' class='btn btn-danger btn-xs'>AddToCart</button>
                                </div>
                            </div>
                        </div>  
            ";

	// $s=$s."
	// <a class='link-p-colr' href='view.php?products=".$row['product_id']."'>
	// 	<div class='live-outer'>
 //            	<div class='live-im'>
 //                	<img src='product_images/".$row['product_image']."'/>
 //                </div>
 //                <div class='live-product-det'>
 //                	<div class='live-product-name'>
 //                    	<p>".$row['product_title']."</p>
 //                    </div>
 //                    <div class='live-product-price'>
	// 					<div class='live-product-price-text'><p>Tk.".number_format($row['product_price'])."</p></div>
 //                    </div>
 //                </div>
 //            </div>
	// </a>
	// "	;
}
}
else if(isset($_SESSION["bid"])){
    $s1=$_REQUEST["n"];
$select_query="SELECT * FROM videos WHERE vid_title LIKE '%".$s1."%'";
$sql=mysqli_query($con,$select_query) or die (mysql_error());
$s="";
while($row=mysqli_fetch_array($sql))
{
            $pro_id    = $row['vid_id'];
            $pro_cat   = $row['vid_cat'];
          
            $pro_title = $row['vid_title'];
           
            $pro_image = $row['vid_vid'];
            echo "
               <div class='col-md-8' >
                            <div class='panel panel-info'>
                                <div class='panel-heading'>$pro_title</div>
                                <div class='panel-body'>
                                    <video width='400' controls><source src='product_images/".$pro_image."' type='video/webm'></video>
                                </div>
                                <div class='panel-heading'>
                                    <button pid='$pro_id' style='float:right;' id='product' class='btn btn-danger btn-xs'>AddToCart</button>
                                </div>
                            </div>
                        </div>  
            ";

    // $s=$s."
    // <a class='link-p-colr' href='view.php?products=".$row['product_id']."'>
    //  <div class='live-outer'>
 //             <div class='live-im'>
 //                 <img src='product_images/".$row['product_image']."'/>
 //                </div>
 //                <div class='live-product-det'>
 //                 <div class='live-product-name'>
 //                     <p>".$row['product_title']."</p>
 //                    </div>
 //                    <div class='live-product-price'>
    //                  <div class='live-product-price-text'><p>Tk.".number_format($row['product_price'])."</p></div>
 //                    </div>
 //                </div>
 //            </div>
    // </a>
    // "    ;
}
}
// echo $s;
?>