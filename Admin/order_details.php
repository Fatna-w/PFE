<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Order Details</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

    <div class="d-flex align-items-center" style="margin-top: 100px;">
        <nav class="bg-dark text-white position-fixed start-0 top-0 bottom-0" style="width: 300px;">
            <ul class="nav flex-column">
                <li class="logo">
                <img alt="" src="../Clients/images//logo site1.png" class=" mb-5 img-fluid" style="width: 200px; margin-left: 20px; margin-top: 30px; ">
                </li>
                <li class="nav-item ms-5">
                    <a class="nav-link text-white fs-5" href="product.php"><i class="fa fa-cube"></i> Products</a>
                </li>
                <li class="nav-item ms-5">
                    <a class="nav-link text-white fs-5" href="#"><i class="fa fa-shopping-cart"></i> Orders</a>
                </li>
                <li class="nav-item ms-5">
                    <a class="nav-link text-white fs-5" href="statistique.php"><i class="fa fa-bar-chart"></i> Statistics</a>
                </li>
            </ul>
        </nav>
    <div class="container " style="margin-left:25%; margin-top:5px;">
    <h1 style="color: #40492e;margin-left: 20px; border-bottom: #40492e solid 3px;width: 90%;padding-bottom: 20px; margin-bottom:50px;">Order Details</h1>
        <div style="background:#E6E5A3; width:60%; border-radius:15px; padding:30px;">
        <?php
        // Establish a database connection
        $host = "localhost";
        $name = "root";
        $pass = "";
        $db = "pfe";
        $conn = mysqli_connect($host, $name, $pass, $db);

        // Retrieve the order_id parameter from the URL query string
        $order_id = $_GET['order_id'];

        // Fetch the order details from the database
        $sql = "SELECT o.id, o.address_mail, o.nom, o.prenom, o.address, o.ville, o.num, o.created_at, 
                p.title AS product_name, p.prix AS product_prix, oi.quantity
                FROM orders o
                INNER JOIN order_items oi ON o.id = oi.order_id
                INNER JOIN products p ON oi.product_id = p.id
                WHERE o.id = $order_id";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) > 0) {
            // Display the order details
            $row = mysqli_fetch_assoc($result);
            echo "<p><strong>Order ID:</strong> " . $row['id'] . "</p>";
            echo "<p><strong>Email:</strong> " . $row['address_mail'] . "</p>";
            echo "<p><strong>First Name:</strong> " . $row['prenom'] . "</p>";
            echo "<p><strong>Last Name:</strong> " . $row['nom'] . "</p>";
            echo "<p><strong>Address:</strong> " . $row['address'] . "</p>";
            echo "<p><strong>City:</strong> " . $row['ville'] . "</p>";
            echo "<p><strong>Phone Number:</strong> " . $row['num'] . "</p>";
            echo "<p><strong>Created At:</strong> " . $row['created_at'] . "</p>";
            echo "<p><strong>Product:</strong> " . $row['product_name'] . "</p>";
            echo "<p><strong>Quantity:</strong> " . $row['quantity'] . "</p>";

            // Calculate the total for the order
            $total = $row['product_prix'] * $row['quantity'];
            echo "<p><strong>Total:</strong> $" . $total . "</p>";
        } else {
            // No order found with the given order_id
            echo "<p>No order found with the provided ID.</p>";
        }

        // Close the database connection
        mysqli_close($conn);
        ?>

        <a href="orders.php" class="btn btn-primary" style="background-color:#4f5a42; border:0px; ">Back to Orders</a>
    </div>

    <br>
    <br>
    <br>
    <br>
    <!-- Include Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>