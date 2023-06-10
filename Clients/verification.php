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

  $orderId = $conn->insert_id;

  if (isset($_SESSION['cart'])) {
    foreach ($_SESSION['cart'] as $product) {
      $productId = $product['id'];
      $quantity = $product['quantity'];


      $insertOrderItemQuery = "INSERT INTO order_items (product_id, quantity, order_id)
       VALUES ('$productId', '$quantity', '$orderId')";
      $conn->query($insertOrderItemQuery);
    }
  }

  // Clear the cart after the order has been placed
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

  <div class="info-client">
    <h2>INFORMATION</h2>
  </div>

  <div class="verification" style="width: 50%">
    <form class="row g-3" method="post">
      <div class="col-12">
        <label for="inputAddress" class="form-label">Address mail</label>
        <input type="text" class="form-control" id="inputAddress" placeholder="Address mail" name="address_mail" required>
      </div>
      <div class="col-md-6">
        <label for="inputEmail4" class="form-label">Nom</label>
        <input type="text" class="form-control" id="inputEmail4" placeholder="Nom" name="nom" required>
      </div>
      <div class="col-md-6">
        <label for="inputPassword4" class="form-label">Prenom</label>
        <input type="text" class="form-control" id="inputPassword4" placeholder="Prenom" name="prenom" required>
      </div>
      <div class="col-12">
        <label for="inputAddress2" class="form-label">Address</label>
        <input type="text" class="form-control" id="inputAddress2" placeholder="Address" name="address" required>
      </div>
      <div class="col-md-6">
        <label for="inputCity" class="form-label">Ville</label>
        <input type="text" class="form-control" id="inputCity" placeholder="Ville" name="ville" required>
      </div>
      <div class="col-md-6">
        <label for="inputNum" class="form-label">Num</label>
        <input type="text" class="form-control" id="inputNum" placeholder="Num" name="num" required>
      </div>
      <div class="col-12">
        <button type="submit" class="btn btn-primary" name="valider">Valider la commande</button>
      </div>
    </form>
  </div>

  <?php include_once('footer.php'); ?>
</body>

</html>