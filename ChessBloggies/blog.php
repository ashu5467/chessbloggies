<?php
  require('function.php');
?>
<section class = "blog">
  <div class = "container">

    <div class = "blog-content">
        <?php
          $postQuery="SELECT * FROM posts ORDER BY id DESC LIMIT 9";
          $runPQ=mysqli_query($db,$postQuery);
          while($post=mysqli_fetch_assoc($runPQ)){
            $image_arr=getImageByPost($db,$post['id']);
            ?>
              <div class = "blog-item">
                <div class = "blog-img">
                  <img src = "images/<?=$image_arr['image']?>" alt = "">
                </div>
                <div class = "blog-text">
                  <span><?=date('F jS, Y',strtotime($post['created_at']))?></span>
                  <h2><?php echo substr($post['title'],0,25); ?>.....</h2>
                  <p><?php echo substr($post['content'],0,150); ?>....</p>
                  <a href = "post.php?id=<?php echo $post['id']; ?>">Read More</a>
                </div>
              </div>
            <?php
          }
        ?>
    </div>
  </div>
</section>