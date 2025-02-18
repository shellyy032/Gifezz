<?php
require_once 'includes/conn.php';

if (!isset($_SESSION["login"])) {
   header("Location: login.php");
   exit;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8" />
   <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <title>Browse Page</title>
   <link rel="stylesheet" href="css/search.css" />
   <link rel="stylesheet" href="css/bootstrap.css" />
   <link rel="stylesheet" href="css/home.css" />

   <style>
      @import url("https://fonts.googleapis.com/css2?family=Edu+AU+VIC+WA+NT+Pre:wght@400..700&family=Fira+Code:wght@300..700&family=Roboto+Condensed:ital,wght@0,100..900;1,100..900&display=swap");
      @import url("https://fonts.googleapis.com/css2?family=Averia+Gruesa+Libre&family=Edu+AU+VIC+WA+NT+Pre:wght@400..700&family=Fira+Code:wght@300..700&family=Roboto+Condensed:ital,wght@0,100..900;1,100..900&display=swap");
   </style>

   <!-- ICON -->
   <script src="https://unpkg.com/feather-icons"></script>
</head>

<body>
   <!-- NAVBAR START -->
   <nav class="navbarr">
      <a href="index.php" class="navbar-logo header">GiFezz</a>

      <div class="navbar-nav primary-font">
         <a href="submit.php">Submit</a>
         <a href="search.php">Browse</a>
         <a href="about.php">About</a>
         <a href="contact.php">Contact</a>
      </div>

      <div class="img header">
         <img src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png" alt="..."
            style="border-radius: 50px;">
         <a href="akun.php">
            <?php
            echo "$_COOKIE[uname]";
            ?>
         </a>
      </div>
   </nav>
   <!-- NAVBAR END -->

   <br id="home">
   <div style="margin-top: 8rem" class="container">
      <form action="" method="POST" class="search-form">
         <input type="text" id="keyword" name="keyword" placeholder="Enter recipient name..." />
      </form>
   </div>


   <section>
      <div id="container">
         <div style="margin-top: 3rem;" class="container boxx">
            <!-- BOX ATAS -->
            <?php
            $query = "SELECT * FROM submit";

            if (isset($_POST["cari"])) {
               $keyword = $_POST['keyword'];
               $query = "SELECT * FROM submit WHERE penerima LIKE '%$keyword%'";
            }

            $result = mysqli_query($conn, $query);
            ?>

            <?php foreach ($result as $row) { ?>
               <div class="confess-box primary-font">
                  <h5>To &nbsp;: <?= $row['penerima'] ?> </h5>
                  <p> <?= $row['pesan'] ?> </p>
                  <h5>From: &nbsp; <?= $row['pengirim'] ?> </h5>
               </div>
            <?php } ?>
         </div>
      </div>
   </section>

   <!-- FOOTER START -->
   <footer>
      <div class="socials">
         <a href="#"><i data-feather="instagram"></i></a>
         <a href="#"><i data-feather="twitter"></i></a>
         <a href="#"><i data-feather="facebook"></i></a>
      </div>

      <div class="links primary-font">
         <a href="#home">Go Up</a>
         <a href="submit.php">Submit</a>
         <a href="search.php">Browse</a>
         <a href="about.php">About</a>
         <a href="">Contact</a>
      </div>

      <div class="credit header" style="font-weight: 400;">
         <p>Created by <span>Kelompok 6</span> | &copy; 2024.</p>
      </div>
   </footer>
   <!-- FOOTER END -->

   <!-- ICON -->
   <script>
      feather.replace();
   </script>

   <script src="js/jquery-3.7.1.min.js"></script>
   <script src="js/search.js"></script>
</body>

</html>