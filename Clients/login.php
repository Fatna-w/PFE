

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
                        <div class="pass">Forgot Password ?</div>
                       <a href="welcome.php"> <input type="submit" value="login" name="submit"></a>
                        <div class="signlink">
                            Not a membre ? <a href="register.php">sign-up</a><br>
    
                        </div>
                    </form>
                </div>
            </div>
           
            
        </div>
        
        
    </div>
    

</body>
</html>