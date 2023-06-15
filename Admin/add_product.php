<?php
// Check if the form is submitted
if (isset($_POST['submit'])) {
    // Get form data
    $name = $_POST['name'];
    $title = $_POST['title'];
    $description = $_POST['description'];
    $price = $_POST['price'];
    $category = $_POST['category'];
    
    // Check if file is uploaded successfully
    if (isset($_FILES['image']) && $_FILES['image']['error'] === UPLOAD_ERR_OK) {
        $image = $_FILES['image']['name'];
        $image_tmp = $_FILES['image']['tmp_name'];

        // Directory where the image will be saved
        $target_dir = "images/";
        $target_path = $target_dir . basename($image);

        // Move the uploaded image to the target directory
        if (move_uploaded_file($image_tmp, $target_path)) {
            // Establish a database connection
            $host = "localhost";
            $username = "root";
            $password = "";
            $db = "pfe";
            $conn = mysqli_connect($host, $username, $password, $db);
            
            if (!$conn) {
                die("Connection failed: " . mysqli_connect_error());
            }

            // Prepare the INSERT query
            $sql = "INSERT INTO products (name, title, description, prix, categorie, img) VALUES (?, ?, ?, ?, ?, ?)";

            // Create a prepared statement
            $stmt = mysqli_prepare($conn, $sql);

            // Bind the parameters with the form data
            mysqli_stmt_bind_param($stmt, "ssssss", $name, $title, $description, $price, $category, $image);

            // Execute the statement
            $result = mysqli_stmt_execute($stmt);

            // Check if the query was successful
            if ($result) {
                echo "<div class='mt-4 alert alert-success'>Product added successfully!</div>";
            } else {
                echo "<div class='mt-4 alert alert-danger'>Failed to add product.</div>";
            }

            // Close the statement and the database connection
            mysqli_stmt_close($stmt);
            mysqli_close($conn);
        } else {
            echo "<div class='mt-4 alert alert-danger'>Failed to upload image.</div>";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<a href="product.php" class="btn btn-primary" style=" margin-left:80%; margin-top:30px; background-color: #4f5a42; border:0px;"><-- Back to Product</a>

    <div class="container mt-4" >
        <h1 style="color: #40492e;margin-left: 20px;margin-top: 30px; border-bottom: #40492e solid 3px;width: 90%;padding-bottom: 20px; margin-bottom:50px;">Add Product</h1>
        <form method="POST" enctype="multipart/form-data" style="width:70%; margin-left: 40px; " >
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="mb-3">
                <label for="title" class="form-label">Title</label>
                <input type="text" class="form-control" id="title" name="title" required>
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <textarea class="form-control" id="description" name="description" required></textarea>
            </div>
            <div class="mb-3">
                <label for="price" class="form-label">Price</label>
                <input type="number" class="form-control" id="price" name="price" required>
            </div>
            <div class="mb-3">
                <label for="category" class="form-label">Category</label>
                <input type="text" class="form-control" id="category" name="category" required>
            </div>
            <div class="mb-3">
                <label for="image" class="form-label">Image</label>
                <input type="file" class="form-control" id="image" name="image" required>
            </div>
            <button style="background-color: #4f5a42; border:0px; margin-top:20px;" type="submit" class="btn btn-primary" name="submit">Add Product</button>
        </form>
    </div>
    <br>
    <br>
    <br>
    <br>

    <!-- Include Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
