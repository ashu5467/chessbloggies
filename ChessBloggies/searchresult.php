<?php
  require('db.php');
  require('function.php');
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Search Result</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font awesome icon -->
    <link rel="stylesheet" href="includes/all.css">
    <link rel="stylesheet" href="includes/style.css">
    <script src="includes/all.js"></script>
  </head>
  <body>
    <?php 
        include_once('navbar.php');
    ?>
    <br>
        <?php
        if(isset($_GET['search'])){
            $searchkey=$_GET['search'];
            $postQuery="SELECT * FROM posts WHERE title LIKE '%".$searchkey."%' ORDER BY id DESC";
        }
        else{
            $postQuery="SELECT * FROM posts ORDER BY id DESC";
        } 
        $runPQ=mysqli_query($db,$postQuery);
        $post=mysqli_fetch_assoc($runPQ);
        while($post=mysqli_fetch_assoc($runPQ)){
          $image_arr=getImageByPost($db,$post['id']);
            ?>
              <div class = "blog-item">
                <div class = "blog-img">
                  <img src = "images/<?=$image_arr['image']?>" alt = "">
                  <span><i class = "far fa-heart"></i></span>
                </div>
                <div class = "blog-text">
                  <span><?=date('F jS, Y',strtotime($post['created_at']))?></span>
                  <h2><?=$post['title']?></h2>
                  <p><?php echo substr($post['content'],0,150); ?>....</p>
                  <a href = "post.php?id=<?php echo $post['id']; ?>">Read More</a>
                </div>
              </div>
            <?php
          }
        include_once('footer.php');
      ?>
  </body>
</html>