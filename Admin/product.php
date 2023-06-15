<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Administration</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <div class="d-flex align-items-center" style="margin-top: 100px;">
        <nav class="bg-dark text-white position-fixed start-0 top-0 bottom-0" style="width: 250px;">
            <ul class="nav flex-column">
                <li class="logo">
                    <img alt="" src="../Clients/images//logo site1.png" class=" mb-5 img-fluid" style="width: 200px; margin-left: 20px; margin-top: 30px; ">
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




        <div class="container  " style="width:70%; margin-left:23%; ">
        <h1 style="color: #40492e;margin-left: 20px; border-bottom: #40492e solid 3px;width: 100%;padding-bottom: 20px; margin-bottom:50px;">Products</h1>
            <div class="text-end mb-3">
                <a href="add_product.php" class="btn btn-primary" style="background-color: #4f5a42; border: 0px; margin-top:5px; ">Add New Product</a>
            </div>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Image</th>
                        <th>Name</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Category</th>
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

                    // Fetch products from the database
                    $sql = "SELECT * FROM products";
                    $result = mysqli_query($conn, $sql);

                    // Generate table rows dynamically
                    while ($row = mysqli_fetch_assoc($result)) {
                        echo "<tr>";
                        echo "<td>" . $row['id'] . "</td>";
                        echo "<td><img height=150 src='../Clients/images//".$row['img'] . "'></td>";
                        echo "<td>" . $row['name'] . "</td>";
                        echo "<td>" . $row['title'] . "</td>";
                        echo "<td>" . $row['description'] . "</td>";
                        echo "<td>" . $row['prix']."$" . "</td>";
                        echo "<td>" . $row['categorie'] . "</td>";
                        echo "</tr>";
                    }

                    // Close the database connection
                    mysqli_close($conn);
                    ?>
                </tbody>
            </table>
        </div>

    </div>
    <!-- Include Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>