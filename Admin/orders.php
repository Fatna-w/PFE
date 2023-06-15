<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Administration</title>
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

        <div class="container" style="width:70%; margin-left:23%;">
        <h1 style="color: #40492e;margin-left: 20px; border-bottom: #40492e solid 3px;width: 90%;padding-bottom: 20px; margin-bottom:50px;">Orders</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Address</th>
                        <th>City</th>
                        <th>Phone</th>
                        <th>Product</th>
                        <th>Quantity</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    // Establish a database connection
                    $host = "localhost";
                    $name = "root";
                    $pass = "";
                    $db = "pfe";
                    $conn = mysqli_connect($host, $name, $pass, $db);

                    // Fetch orders and product names from the database
                    $sql = "SELECT o.id, o.nom, o.address, o.ville, o.num, p.title AS product_name, oi.quantity
                            FROM orders o
                            INNER JOIN order_items oi ON o.id = oi.order_id
                            INNER JOIN products p ON oi.product_id = p.id";
                    $result = mysqli_query($conn, $sql);

                    // Generate table rows dynamically
                    while ($row = mysqli_fetch_assoc($result)) {
                        echo "<tr>";
                        echo "<td>" . $row['nom'] . "</td>";
                        echo "<td>" . $row['address'] . "</td>";
                        echo "<td>" . $row['ville'] . "</td>";
                        echo "<td>" . $row['num'] . "</td>";
                        echo "<td><a href='order_details.php?order_id=" . $row['id'] . "'>" . $row['product_name'] . "</a></td>";
                        echo "<td>" . $row['quantity'] . "</td>";
                        echo "</tr>";
                    }

                    // Close the database connection
                    mysqli_close($conn);
                    ?>
                </tbody>
            </table>
        </div>

        <!-- Include Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
