<?php
  require('db.php');
  require('function.php');
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Topics</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font awesome icon -->
    <link rel="stylesheet" href="includes/all.css">
    <link rel="stylesheet" href="includes/style.css">
    <script src="includes/all.js"></script>
  </head>
  <body>
    <?php 
        include_once('navbar.php');
    
        $topic_id=$_GET['id'];
        $topicQuery="SELECT * FROM topics WHERE id = $topic_id";
        $runTQ=mysqli_query($db,$topicQuery);
        $post=mysqli_fetch_assoc($runTQ);
        //$image_arr=getImageByPost($db,$post['id']);
        ?>
        <div class = "container">
            <div class = "design-item">
              <div class = "design-img">
                <br>
                <img src = "<?=$post['image']?>" alt = "">
                <span ><?=date('F jS, Y',strtotime($post['created_at']))?></span>
                <span>Image Courtacy: Google</span>
              </div>
              <div class = "design-title">
                <h2><?=$post['title']?></h2>
                <p><?php echo $post['content']; ?></p>
              </div>
            </div>
        </div>
      <?php
        include_once('footer.php');
      ?>
  </body>
</html>