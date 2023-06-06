<?php
@include('connexion.php'); 
session_start();

if (isset($_GET['delete'])) {
    $id = $_GET['id'];
    foreach ($_SESSION['cart'] as $key => $product) {
        if ($product['id'] === $id) { 
            unset($_SESSION['cart'][$key]); 
            break; 
        }
    }
    
    $_SESSION['cart'] = array_values($_SESSION['cart']); 
}

header("Location: cart.php");
exit(); 
?>
