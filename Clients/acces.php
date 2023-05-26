<?php
@include('connexion.php');

$query = "SELECT * FROM acces";
$result = mysqli_query($conn, $query);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php @include_once('header.php'); ?>
</head>

<body>
    <div>
        <?php @include_once('navbar.php'); ?>
    </div>

    <div>
        <img src="images/accces.png" class="product">
    </div>
    <style>
        .par{
            margin-inline-start:63%;
            text-align: center;
            font-size: 15px;
            font-family: cursive;

           
        }
        .product-img{
            margin-left: -12%;
           
        }
    </style>
   

<div class="product-img">
    <div class="container">
        <div class="row">
    <?php
    if ($result) {
        $count = 0;
        while ($row = mysqli_fetch_assoc($result)) {
            if ($count % 3 == 0) {
                echo '<div class="row">';
            }
            echo '<div class="col-sm-4">';
            echo '<a href=""><img src="Acces/'. $row['img'] . '" alt=""></a>';
            echo '<p class="par">' . $row['description'] . '<br><br>' . $row['prix'] . '</p>';
            echo '</div>';
            $count++;
            if ($count % 3 == 0) {
                echo '</div>';
            }
        }
        mysqli_free_result($result);
    }
    ?>
    </div>
</div>
</div>
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

   
</body>
<?php @include_once('footer.php'); ?>
</html>

<?php
mysqli_close($conn);
?>