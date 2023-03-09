<?php
  require('db.php');
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ChessBloggies</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font awesome icon -->
    <link rel="stylesheet" href="includes/all.css">
    <link rel="icon" href="images/logo.jpg" type="image/icon type">
    <link rel="stylesheet" href="includes/style.css">
    <script src="includes/all.js"></script>
  </head>
  <body>
    <header>
      <?php 
        include_once('navbar.php');
        include_once('banner.php');
      ?>
    </header>
    <?php 
      include_once('design.php');
    ?>
    <div class = "title">
      <h2>Latest Blogs</h2>
      <p  id = "blogs">recent blogs about chess</p>
    </div>
    <?php 
      include_once('blog.php'); 
      include_once('about.php');
      include_once('footer.php');
    ?>
   <a href="#top" class="move_to_top">Move to top</a>
</body>
</html>