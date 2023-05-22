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

    <div class="product-img">
        <?php
        if ($result) {
            while ($row = mysqli_fetch_assoc($result)) {
                echo '<a href=""><img src="Acces/acces1.jpg" alt=""></a>';
                echo '<div class="description">';
                echo '<p>' . $row['description'] . '<br><br>' . $row['prix'] . '</p>';
                echo '</div>';
                
            }
            mysqli_free_result($result);
        }
        ?>
    </div>

    <div class="menu-product">
        <ul class="menu">
            
            <li><a href="tables.php">TABLE</a></li>
            <li><a href="chairs.php">CHAIRS</a></li>
            <li><a href="lights.php">LIGHTS</a></li>
            <li><a href="acces.php">ACCES</a></li>
            <br>
            
        </ul>
    </div>

    <?php @include_once('footer.php'); ?>
</body>

</html>

<?php
mysqli_close($conn);
?>