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




        <div class="d-flex align-items-center" style="margin-left: 300px;">
            <div class="wrapper ms-5">
                <div class="section">
                    <div class="box-area">
                    <h1 style="color: #40492e;margin-left: 20px; border-bottom: #40492e solid 3px;width: 90%;padding-bottom: 20px; margin-bottom:50px;">Home Page</h1>
                    <p align="center" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size:30px; margin-top:100px;">
Welcome, admin, <br>
to your personal dashboard space! Step into a realm of control and oversight, <br>
where you hold the key to managing your system with ease.
 
</p>
 <a href="/Clients/Home.php"> <button type="submit" class="btn btn-primary"  style="margin-left: 45%; margin-top:30px;">Deconnexion</button> </a>
                    </div>
                </div>
            </div>
        </div>

        

    </div>
    <!-- Include Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>