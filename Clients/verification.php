<!DOCTYPE html>
<html lang="en">
<head>
    <?php
    @include('header.php');
    ?>

</head>
<body>
    <div>
       <?php
       @include('navbar.php');
       ?>
            </div>
       
<div class ="verification" style="width:50% " >
<form class="row g-3" >
<div class="col-12">
    <label for="inputAddress" class="form-label"></label>
    <input type="text" class="form-control" id="inputAddress" placeholder="Address mail">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label" ></label>
    <input type="email" class="form-control" id="inputEmail4" placeholder="Nom">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label"></label>
    <input type="password" class="form-control" id="inputPassword4" placeholder="Prenom">
  </div>
  
  <div class="col-12">
    <label for="inputAddress2" class="form-label"></label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Address ">
  </div>
  <div class="col-md-6">
    <label for="inputCity" class="form-label"></label>
    <input type="text" class="form-control" id="inputCity" placeholder="ville">
  </div>
  <div class="col-md-6">
    <label for="inputNum" class="form-label"></label>
    <input type="text" class="form-control" id="inputNum" placeholder="Num">
  </div>
 

  <div class="col-12">
    <button type="submit" class="btn btn-primary" style="border-radius: 15px; padding:15px;" name="valider" >valider la commande</button>
  </div>
</form>
</div>






        
        </body>
    
      <?php @include_once('footer.php'); ?>
    </html>