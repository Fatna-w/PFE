<?php
@include('connexion.php');
if(isset($_POST['submit'])){
    $name = $_POST['firstname'];
    $lname = $_POST['lastname'];
    $email = $_POST['email'];
    $mobile = $_POST['mobile'];
    $message = $_POST['message'];
    $query = " INSERT INTO contactus(firstname, lastname, email, mobile,message )
    values ('$name','$lname','$email','$mobile','$message')";
    mysqli_query($conn,$query);

   


}


?>


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
        </div>
        <div class="container">
            <form  method="POST" >
                <h1>Contact Us Form</h1>
                <input type="text" id="firstName" placeholder="First Name" name="firstname" required>
                <input type="text" id="lastName" placeholder="lastName" name="lastname" required> 
                <input type="email" id="email" placeholder="Email" name="email" required>
                <input type="text" id="mobile" placeholder="Mobile" name="mobile" required>
                <h4>Type Your Message Here...</h4>
             
                <textarea name="message"  required></textarea>
                <input type="submit" value="Send" id="button" name="submit">
            </form>


        </div>
        <br>
        <br>
        <br>
        <br>
       
        <?php
        @include('footer.php');
        ?>
      
        
       
</body>
    
    
    </html>