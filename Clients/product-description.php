<!DOCTYPE html>
<html lang="en">
<head>
<?php
        @include_once('header.php');
        ?>
</head>
<body>
    <div>

    <?php
        @include_once('navbar.php');
        ?>
            
            </div> 
<div class="product1">
<div class="description-product">
                <h2>Product/organiser lespace autou</h2>
            </div>
            <?php
            if(isset($_GET['id'])){
                $productId = $_GET['id'];
                $query="SELECT * FROM products where id = $productId";
                $result=mysqli_query($conn,$query);
                $rowProDetails=mysqli_fetch_row($result);
                ?>
            <div class="prod1-img">
                <img src="product/ <?php echo $rowProDetails['img'];?> " alt="">
                
                <div class="discp-prod">
                <h1><?php echo $rowProDetails['title'];?> </h1>
                   <h3><?php echo $rowProDetails['prix'];?></h3>
                   <form action="">
                   <label for="quantity" >Quantity 
                   </label><br>
                <input type="number" id="quantity" name="quantity" min="1" max="300">
                   </form>
                   <h2></h2>
                   <p>
                   <?php echo $rowProDetails['description'];
                   ?> 
                   </p><br>
               
                  
                 <a href="#">Add To Cart</a>
                </div>
               
            </div>
       <?php } ?>
      
</div>
            
            <br>
            <br>
            <br>
            <br>

            <?php
     @include_once('footer.php');
         ?>
    </body>
    
    </html>
           
            