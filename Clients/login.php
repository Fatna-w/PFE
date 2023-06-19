

<?php
@include('connexion.php');
  session_start();
  if(isset($_POST['submit'])){
    $name = $_POST['username'];
    $pass = md5($_POST['password']);
    $query = " SELECT * FROM register WHERE username ='$name' && password = '$pass' ";
    if(mysqli_num_rows(mysqli_query($conn, $query))){
        $_SESSION ['username'] = $name ;
        header('location:welcome.php');

    }else{
        $error[] = 'name or password incorrect!!';
    }


    //login Admine

if (isset($_SESSION['admin_logged_in']) && $_SESSION['admin_logged_in'] === true) {
    header("Location:/Admin/dashboard.php");
    exit;
}


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!empty($_POST['username']) && !empty($_POST['password'])) {
        $admin_username = 'admin';
        $admin_password = '1234'; 
        if ($_POST['username'] === $admin_username && $_POST['password'] === $admin_password) {
            $_SESSION['admin_logged_in'] = true; 
            header("Location: /Admin/dashboard.php"); 
            exit;
        } else {
            $error_message = "Invalid username or password.";
        }
    } else {
        $error_message = "Please enter both username and password.";
    }
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
                <br>
                <br>
                <br>
                <a href="Home.php"><img src="images/logo site1.png" class="logo1" ></a>
                <div class="form">
                   
                    <form method="POST">
                        <h1>Login</h1>
                        <?php
                          if(isset($error)){
                            foreach($error as $error){
                                echo '<h4 class="error-msg">'.$error.'</h4>';
                          };
                          };
                        ?>
      
                        <div class="txt_field">
                            <input type="text" name="username"required >
                            <var></var>
                            <label >Username</label>
                        </div>
                            <div class="txt_field">
                            <input type="password" name="password" required>
                            <var></var>
                            <label >Password</label>
                        </div>
                      <a href="forgot.php"><div class="pass">Forgot Password ?</div></a>  
                       <a href="welcome.php"> <input type="submit" value="login" name="submit"></a>
                        <div class="signlink">
                            Not a membre ? <a href="register.php">sign-up</a><br>
                        </div>
                    </form>
                </div>
                <div class="col-12">
                <a href="Home.php"><button type="submit" class="btn btn-primary"  style="margin-left: 0;">Continue without login</button></a>  
                </div>
        
            </div>
           
            
        </div>
        
    </div>
    

</body>
</html>