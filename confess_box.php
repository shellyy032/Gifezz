<?php
require_once "../includes/conn.php";

$keyword = $_GET["keyword"];

$query = "SELECT * FROM submit WHERE penerima LIKE '%$keyword%'";
$result = mysqli_query($conn, $query);
?>

<div style="margin-top: 3rem;" class="container boxx">
   <?php foreach ($result as $row) { ?>
      <div class="confess-box primary-font">
         <h5>To &nbsp;: <?= $row['penerima'] ?> </h5>
         <p> <?= $row['pesan'] ?> </p>
         <h5>From: &nbsp; <?= $row['pengirim'] ?> </h5>
      </div>
   <?php } ?>
</div>