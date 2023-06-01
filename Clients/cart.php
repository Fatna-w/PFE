<?php
@include('connexion.php');
session_start();

if (isset($_POST['add'])) {
    $id = $_POST['id'];
    $image = $_POST['img'];
    $name = $_POST['name'];
    $quantity = $_POST['quantity'];
    $prix = $_POST['prix'];
    $product = array('img' => $image, 'name' => $name, 'quantity' => $quantity, 'prix' => $prix);
    $_SESSION['cart'][] = $product;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php include_once 'header.php'; ?>
</head>

<body>
    <?php include_once 'navbar.php'; ?>
    <h1 class="panier_txt">PANIER</h1>

    <div class="panier">
        <table class="table table-striped" style="width: 70%">
            <tr>
                <th>Product</th>
                <th>Name</th>
                <th>Prix</th>
                <th>Quantite</th>
                <th>Action</th>
            </tr>
            <?php
            if (isset($_SESSION['cart'])) {
                foreach ($_SESSION['cart'] as $product) {
                    echo "<tr>";
                    echo "<td><img height=150 src='images/" . $product['img'] . "'></td>";
                    echo "<td>" . $product['name'] . "</td>";
                    echo "<td>" . $product['prix'] . "</td>";
                    echo "<td>" . $product['quantity'] . "</td>";
                    echo "<td></td>";
                    echo "</tr>";
                }
            }
            ?>
        </table>
    </div>

    <?php include_once 'footer.php'; ?>
</body>

</html>