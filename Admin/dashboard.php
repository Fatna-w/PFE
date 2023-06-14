<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Simple Sidebar Menu Using HTML & CSS</title>
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
                    <img alt="" src="../Clients/images//logo site1.png" class="rounded-circle mb-5 img-fluid" style="width: 240px; ">
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




        <div class="d-flex align-items-center" style="margin-left: 300px;">
            <!--#include file="sidebar.html" -->
            <div class="wrapper ms-5">
                <div class="section">
                    <div class="box-area">
                        <h2 class="text-dark">Homepage</h2>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- Include Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>