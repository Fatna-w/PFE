<?php
@include('connexion.php');

if(isset($_POST['submit'])){
    $email = $_POST['email'];
    $pass = $_POST['nvpassword'];
    $conPass = $_POST['cnvpassword'];

    $req = "SELECT * FROM register WHERE email='$email'";
    $result = mysqli_query($conn, $req);

    if(mysqli_num_rows($result) > 0){
        if($pass == $conPass){
            $updateQuery = "UPDATE register SET password='$pass' WHERE email='$email'";
            $updateResult = mysqli_query($conn, $updateQuery);
            
            if($updateResult){
                header('Location: welcome.php');
                exit();
            } else {
                echo "Error updating password: " . mysqli_error($conn);
            }
        } else {
            echo "Passwords do not match.";
        }
    } else {
        echo "User not found.";
    }
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
    <div class="banner">
        <div class="content2">
            <div class="login1">
                <a href="Home.php"><img src="images/logo site1.png" class="logo1" ></a>
                <div class="form">
                   
                    <form method="POST" action="forgot.php">
                        <h1>Forgot password</h1>
      
                        <div class="txt_field">
                            <input type="email" name="email"required >
                            <var></var>
                            <label >Your Email</label>
                        </div>
                        <div class="txt_field">
                            <input type="password" name="nvpassword"required >
                            <var></var>
                            <label >New password</label>
                        </div>
                        <div class="txt_field">
                            <input type="password" name="cnvpassword"required >
                            <var></var>
                            <label >confirm password</label>
                        </div>
                        <div class="form-group">
                       <a href=""> <input type="submit" value="Send" name="submit"></a>
                    </form>
                    <br> 
                </div>
            </div>
           
            
        </div>
        
        
    </div>
    

</body>
</html>