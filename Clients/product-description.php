<?php
@include('connexion.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <?php include_once 'header.php';

    session_start();

    if (isset($_POST['add'])) {
        $productId = $_POST['id'];
        $productImg = $_POST['img'];
        $productName = $_POST['name'];
        $productPrice = $_POST['prix'];
        $quantity = $_POST['quantity'];

        // hnaya kn criyiw wa7d array fin ghan7to gaa3 les item li f cart
        $order = array(
            'id' => $productId,
            'img' => $productImg,
            'name' => $productName,
            'price' => $productPrice,
            'quantity' => $quantity
        );

        // hnaya kanchofo wach deja kayn chi produit f cart wla 5awya

        if (!isset($_SESSION['cart'])) {

            // la kant 5awya k initializiwha b array 5awi
            $_SESSION['cart'] = array();
        }

        //la kan dak array deja kayn donc deja kayn chi produit fih. ghi aknzido item jdid dyalna
        $_SESSION['cart'][] = $order;

       
        exit();
    }

    ?>
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
                <form action="cart.php" method="post">
                    <input type="hidden" name="id" value="<?php echo $row['id']; ?>">
                    <input type="hidden" name="img" value="<?php echo $row['img']; ?>">
                    <input type="hidden" name="name" value="<?php echo $row['title']; ?>">
                    <input type="hidden" name="prix" value="<?php echo $row['prix']; ?>">
                    <label for="quantity">Quantity:</label><br>
                    <input value="1" type="number" id="quantity" name="quantity" min="1" max="300">
                    <h2></h2>
                    <p>
                        <?php echo $row['description']; ?>
                    </p>
                    <br>
                    <button type="submit" class="btn btn-primary" name="add">Add To Cart</button>
                </form>

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