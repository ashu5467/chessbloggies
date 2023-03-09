<?php
  require('db.php');
?>
<section class = "design" id = "design">
      <div class = "container">
        <div class = "title">
          <h2 id="topics">Recent Topics</h2>
          <p>recent blogs about topics</p>
        </div>
        <div class = "design-content">
        <?php
        $topicQuery="SELECT * FROM topics ORDER BY id DESC";
        $runTQ=mysqli_query($db,$topicQuery);

        while($post=mysqli_fetch_assoc($runTQ)){
          ?>
          <div class = "design-item">
            <div class = "design-img">
              <img src = "<?=$post['image']?>" alt = "">
              <span><?=date('F jS, Y',strtotime($post['created_at']))?></span>
              <span>Image Courtacy: Google</span>
            </div>
            <div class = "design-title">
              <a href = "topics.php?id=<?=$post['id']?>"><?php echo substr($post['title'],0,30);?>.....</a>
            </div>
          </div>
          <?php
        }
        ?>
        </div>
      </div>
    </section>