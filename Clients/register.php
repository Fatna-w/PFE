

<?php
@include('connexion.php');
if(isset($_POST['submit'])){
    if($_POST['password'] == $_POST['cpassword']){

    $name = $_POST['username'];
    $email = $_POST['email'];
    $pass = md5($_POST['password']);
    $cpass = md5($_POST['cpassword']);
    $query = " INSERT INTO register(username, email, password, cpassword)
    values ('$name', '$email', '$pass', '$cpass') ";
    mysqli_query($conn , $query);
    header('location:welcome.php');

}else{
    $error[] = 'password not matched!';
   
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
                <a href="Home.php"><img src="images/logo site1.png" class="logo2" ></a>
                <div class="form">
                   
                    <form  method="POST">
                        <h1 id="reg">Register</h1>
                        <?php
                          if(isset($error)){
                            foreach($error as $error){
                                echo '<h4 class="error-msg">'.$error.'</h4>';
                          };
                          };
                        ?>     
                            <div class="txt_field">
                            <input  type="text" name ="username" required>
                            <var></var>
                            <label >Username</label>
                        </div>
                        <div class="txt_field">
                            <input type="text" name ="email" required>
                            <var></var>
                            <label >Address Mail</label>
                        </div>
                            <div class="txt_field">
                            <input type="password" name ="password" required>
                            <var></var>
                            <label >Password</label>
                        </div>
                        <div class="txt_field">
                            <input type="password" name ="cpassword" required>
                            <var></var>
                            <label >Confirm password</label>
                        </div>
                        <div class="log">
                            <input type="submit" name="submit" value="login">
                        </div>
                        
                        
                    </form>
                </div>
                
            </div>
           
            
        </div>
        
        
    </div>
    

</body>
</html>


