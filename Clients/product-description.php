<?php
@include('connexion.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <?php include_once 'header.php'; ?>
</head>

<body>
    <div>
        <?php include_once 'navbar.php'; ?>
    </div>

    <div class="product1">
        <div class="description-product">
            <h2>Product/organiser l'espace autour</h2>
        </div>

        <div class="prod1-img">
            <?php
            if (isset($_GET['id'])) {
                $productId = $_GET['id'];
                $query = "SELECT * FROM products WHERE id = $productId";
                $result = mysqli_query($conn, $query);
                $row = mysqli_fetch_assoc($result);
            }
            ?>

            <img src="images/<?php echo $row['img']; ?>" alt="">

            <div class="discp-prod">
                <h1><?php echo $row['title']; ?></h1>
                <h3><?php echo $row['prix']; ?></h3>
                <form action="">
                    <label for="quantity">Quantity:</label><br>
                    <input type="number" id="quantity" name="quantity" min="1" max="300">
                </form>
                <h2></h2>
                <p>
                    <?php echo $row['description'];?>
                </p>
                <br>
                <a href="cart.php" name="add">Add To Cart</a>
            </div>
        </div>
    </div>
    
   
    <br>
    <br>
    <div class="menu-product">
        <ul class="menu">
            <li><a href="tables.php">TABLE</a></li>
            <li><a href="chairs.php">CHAIRS</a></li>
            <li><a href="lights.php">LIGHTS</a></li>
            <li><a href="acces.php">ACCES</a></li>
            <br>
            <br>

        </ul>
    </div>

    
    <?php include_once 'footer.php'; ?>
</body>

</html>