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
        <div>
            <form action="">
                <h1>information</h1>
                <input type="text" id="firstName" placeholder="First Name" name="firstname" required>
                <input type="text" id="lastName" placeholder="lastName" name="lastname" required> 
                <input type="email" id="email" placeholder="Email" name="email" required>
                <input type="text" id="mobile" placeholder="Mobile" name="mobile" required>
            </form>

        </div>







        
        </body>
    
      <?php @include_once('footer.php'); ?>
    </html>