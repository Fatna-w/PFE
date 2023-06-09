<?php
include('connexion.php');
session_start();

if (isset($_POST['valider'])) {

  $addressMail = $_POST['address_mail'];
  $nom = $_POST['nom'];
  $prenom = $_POST['prenom'];
  $address = $_POST['address'];
  $ville = $_POST['ville'];
  $num = $_POST['num'];

  $insertOrderQuery = "INSERT INTO orders (address_mail, nom, prenom, address, ville, num)
   VALUES ('$addressMail', '$nom', '$prenom', '$address', '$ville', '$num')";
  $conn->query($insertOrderQuery);

  $orderId = $conn-> insert_id;

  if (isset($_SESSION['cart'])) {
    foreach ($_SESSION['cart'] as $product) {
      $productId = $product['id'];
      $quantity = $product['quantity'];
      $insertOrderItemQuery = "INSERT INTO order_items (product_id, quantity, order_id)
      VALUES ('$productId', '$quantity', '$orderId')";
      $conn->query($insertOrderItemQuery);
    }
  }
  
  unset($_SESSION['cart']);

  header("Location: thank-you.php");
  exit();
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
  <?php include('header.php'); ?>
</head>

<body>
  <?php include('navbar.php'); ?>

  <div class="info-client" >
    <h2 >INFORMATION</h2>
  </div>

  <div class="verification" style="width: 70%" >
    <form class="row g-3" method="post">
      <div class="col-12">
        <label for="inputAddress" class="form-label"></label>
        <input type="text" class="form-control" id="inputAddress" placeholder="Address mail" name="address_mail" required>
      </div>
      <div class="col-md-6">
        <label for="inputEmail4" class="form-label"></label>
        <input type="text" class="form-control" id="inputEmail4" placeholder="Name" name="nom" required>
      </div>
      <div class="col-md-6">
        <label for="inputPassword4" class="form-label"></label>
        <input type="text" class="form-control" id="inputPassword4" placeholder="Family Name" name="prenom" required>
      </div>
      <div class="col-12">
        <label for="inputAddress2" class="form-label"></label>
        <input type="text" class="form-control" id="inputAddress2" placeholder="Address" name="address" required>
      </div>
      <div class="col-md-6">
        <label for="inputCity" class="form-label"></label>
        <input type="text" class="form-control" id="inputCity" placeholder="city" name="ville" required>
      </div>
      <div class="col-md-6">
        <label for="inputNum" class="form-label"></label>
        <input type="text" class="form-control" id="inputNum" placeholder="Number" name="num" required>
      </div>
      <div class="col-12">
        <button type="submit" class="btn btn-primary" name="valider">Valider la commande</button>
      </div>
    </form>
  </div>
  <div>
    <br>
    <h4 style="background-color:#d3d292; padding:20px;" align="center">payment on delivry</h4>
  </div>

  <?php include_once('footer.php'); ?>
</body>

</html>