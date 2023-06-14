    <?php
    include('connexion.php');
    session_start();

    if (isset($_POST['add'])) {
        $id = $_POST['id'];
        $image = $_POST['img'];
        $name = $_POST['name'];
        $quantity = $_POST['quantity'];
        $prix = $_POST['prix'];
        $product = array('id' => $id, 'img' => $image, 'name' => $name, 'quantity' => $quantity, 'prix' => $prix);
        $_SESSION['cart'][] = $product;
        

    }

    if (isset($_POST['delete'])) {
        $id = $_POST['id'];
        if (isset($_SESSION['cart'])) {
            foreach ($_SESSION['cart'] as $key => $product) {
                if ($product['id'] == $id) {
                    unset($_SESSION['cart'][$key]);
                    break;
                }
            }
        }
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
            <table class="table table-hover" style="width: 75%">
                <tr>
                    <th>Product</th>
                    <th>Name</th>
                    <th>Prix</th>
                    <th>Quantite</th>
                    <th>Action</th>
                </tr>
                <?php
                $numbers = 0;
                if (isset($_SESSION['cart'])) {
                    foreach ($_SESSION['cart'] as $product) {
                        $quantity = $product['quantity'];
                        $prix = $product['prix'];
                        $total = $quantity * $prix;
                        $numbers += $total;

                        echo "<tr>";
                        echo "<td><img height=150 src='images/" . $product['img'] . "'></td>";
                        echo "<td>" . $product['name'] . "</td>";
                        echo "<td>" . $total . "$" . "</td>";
                        echo "<td>" . $product['quantity'] . "</td>";
                        echo "<td>";
                        echo "<form action=\"\" method=\"post\">";
                        echo "<input type=\"hidden\" name=\"id\" value=\"" . $product['id'] . "\">";
                        echo "<button type='submit' class='btn btn-danger' name='delete'>DELETE</button>";
                        echo "</form>";
                        echo "</td>";
                        echo "</tr>";
                    }
                }
                ?>
            </table>
            <table class=" table table-bordered" style="width :30%">
                <th style="font-weight:bolder">Total</th>
                <th style="font-weight:bolder"><?php echo $numbers; ?> $</th>
            </table>
            <br>
            <br>
            <br>
            <div align="center">
             

                    <a href="product.php"><button type="button" class="btn btn-primary btn-lg">Continue shopping</button></a>

                    <a href="verification.php"><button type="submit" class="btn btn-secondary btn-lg"  name="checkout">Checkout</button></a>
            </div>
            <br>
            <br>

        </div>

    </body>

    </html>