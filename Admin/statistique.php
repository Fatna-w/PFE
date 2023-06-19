<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Administration</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Statistics Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        .card-icon {
            font-size: 2rem;
            margin-right: 0.5rem;
        }
    </style>
</head>

<body>
    <div class="d-flex align-items-center" style="margin-top: 100px;">
        <nav class="bg-dark text-white position-fixed start-0 top-0 bottom-0" style="width: 300px;">
            <ul class="nav flex-column">
                <li class="logo">
                <a href="dashboard.php"><img alt="" src="../Clients/images//logo site1.png" class=" mb-5 img-fluid" style="width: 200px; margin-left: 20px; margin-top: 30px; "></a>
                </li>
                <li class="nav-item ms-5">
                    <a class="nav-link text-white fs-5" href="product.php"><i class="fa fa-cube"></i> Products</a>
                </li>
                <li class="nav-item ms-5">
                    <a class="nav-link text-white fs-5" href="orders.php"><i class="fa fa-shopping-cart"></i> Orders</a>
                </li>
                <li class="nav-item ms-5">
                    <a class="nav-link text-white fs-5" href="statistique.php"><i class="fa fa-bar-chart"></i> Statistics</a>
                </li>
            </ul>
        </nav>

        <div class="container" style="margin-left:23%; ">
        <h1 style="color: #40492e;margin-left: 20px; border-bottom: #40492e solid 3px;width: 90%;padding-bottom: 20px; margin-bottom:50px;">Statistics</h1>
        <div class="row" >
            <?php
            // Establish a database connection
            $host = "localhost";
            $name = "root";
            $pass = "";
            $db = "pfe";
            $conn = mysqli_connect($host, $name, $pass, $db);
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            // Retrieve the number of orders
            $ordersQuery = "SELECT COUNT(*) AS total_orders FROM orders";
            $ordersResult = $conn->query($ordersQuery);
            $ordersRow = $ordersResult->fetch_assoc();
            $totalOrders = $ordersRow['total_orders'];

            // Retrieve the number of clients
            $clientsQuery = "SELECT COUNT(*) AS total_clients FROM contactus";
            $clientsResult = $conn->query($clientsQuery);
            $clientsRow = $clientsResult->fetch_assoc();
            $totalClients = $clientsRow['total_clients'];

            // Retrieve the number of products
            $productsQuery = "SELECT COUNT(*) AS total_products FROM products";
            $productsResult = $conn->query($productsQuery);
            $productsRow = $productsResult->fetch_assoc();
            $totalProducts = $productsRow['total_products'];

            // Close the database connection
            $conn->close();
            ?>

            <!-- Display the statistics using Bootstrap cards -->
            <div class="col-sm-4" st>
                <div class="card bg-primary text-white">
                    <div class="card-body">
                        <h5 class="card-title">
                            <i class="fas fa-shopping-cart card-icon"></i>Total Orders
                        </h5>
                        <p class="card-text"><?php echo $totalOrders; ?></p>
                    </div>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="card bg-success text-white">
                    <div class="card-body">
                        <h5 class="card-title">
                            <i class="fas fa-users card-icon"></i>Total Clients
                        </h5>
                        <p class="card-text"><?php echo $totalClients; ?></p>
                    </div>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="card bg-info text-white">
                    <div class="card-body">
                        <h5 class="card-title">
                            <i class="fas fa-box card-icon"></i>Total Products
                        </h5>
                        <p class="card-text"><?php echo $totalProducts; ?></p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    </div>
    <!-- Include Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>