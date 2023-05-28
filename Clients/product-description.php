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

            <img src="product/<?php echo $row['img']; ?>" alt="">

            <div class="discp-prod">
                <h1><?php echo $row['title']; ?></h1>
                <h3><?php echo $row['prix']; ?></h3>
                <form action="">
                    <label for="quantity">Quantity:</label><br>
                    <input type="number" id="quantity" name="quantity" min="1" max="300">
                </form>
                <h2></h2>
                <p>
                    <?php echo $row['description']; ?>
                </p>
                <br>
                <a href="#">Add To Cart</a>
            </div>
        </div>
    </div>

    <br>
    <br>
    <br>
    <br>
    <br>

    <?php include_once 'footer.php'; ?>
</body>
</html>
