<?php
require("..\db.php");
$za="AG133";

$userquery="SELECT * FROM users";
$runUQ=mysqli_query($db,$userquery);
$post=mysqli_fetch_assoc($runUQ);
$idpost=$post['id'];
$BLOGTITLE="";
$BLOGCONTENT="";


if(isset($_POST['submit'])){

  if(isset($_POST['blog-title'])){
    $BLOGTITLE=$_REQUEST['blog-title'];
  }
  
  if(isset($_POST['blog-content'])){
    $BLOGCONTENT=$_REQUEST['blog-content'];
  }
  
}

$blogQuery="INSERT INTO posts VALUES(NULL,'$BLOGTITLE','$BLOGCONTENT','current_timestamp()',".$idpost.")";

if($BLOGTITLE != null && $BLOGCONTENT != null){
  $runBQ=mysqli_query($db,$blogQuery) or die("Error occured");
  $blogQuery="";
  $BLOGCONTENT=null;$BLOGTITLE=null;
  ?><script>clearInp();</script><?php
}
?>
<script>clearInp();</script>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="AdminStyle.css">
    <link rel="stylesheet" href="..\includes\all.css">
    <link rel="stylesheet" href="..\includes\style.css">
    <script src="..\includes/all.js"></script>
    <title>Dashboard</title>
</head>
<body class="dashboard-body" onload="document.addblogform.reset();">
 
<center>
<div class="card" style="width: 18rem;">
  <img src="../<?=$post['image']?>" class="card-img-top" alt="...">
  <div class="card-body">
    <h3 class="card-title"><?=$post['first_name']." ".$post['last_name']?></h3>
    <p class="card-text"><?=$post['post']?></p>
  </div>
</div>
</center>
<hr>
<h2>Add your blog here<a id="dropButton"><i class="fa fa-sort-desc"></i></a></h2>
      <div class="form-a" id="addblog" style="display:none;">
      <form action="" method="post" name="addblogform" id="addblogform">
        <label for="blog-title">Enter title</label><br>
        <textarea  id="blog-title" name="blog-title" cols="100" autocomplete="off"></textarea><br>
        <label for="blog-content">Content</label><br>
        <textarea  id="blog-content" name="blog-content" cols="100" rows="30" autocomplete="off"></textarea><br>
        <label for="blog-image" disabled>Select image</label>
        <input type="file"disabled><br>
        <input type="submit" name="submit" id="submit">
        <br>
        <h1><a id="upButton"><i class="fa fa-sort-asc"></i></a></h1>
      </form>
      </div>
      <script type="text/javascript">
        document.getElementById("dropButton").onclick = function() {
            document.getElementById("addblog").style.display="block";
            document.getElementById("dropButton").style.display = "none";    
        }
        document.getElementById("upButton").onclick = function() {
            document.getElementById("addblog").style.display = "none";
            document.getElementById("dropButton").style.display = "block";
        }
        function clearInp(){
          document.getElementByTagName('textarea').value="";
          document.getElementByTagName('input').value="";
          document.getElementById('addblogform').reset();
        }
  </script>
<hr>
<div class="container">
<?php
$postQuery="SELECT * FROM posts WHERE created_by=1 ORDER BY id DESC LIMIT 9";
$runPQ=mysqli_query($db,$postQuery);
while($post=mysqli_fetch_assoc($runPQ)){?>
<div class="blog-content">
    <div class="card" style="width: 18rem;">
  <div class="card-body">
  <h2><?php echo substr($post['title'],0,15); ?>.....</h2>
  <p><?php echo substr($post['content'],0,150); ?>....</p>
  </div>
</div>
</div>
<?php
}
?>
</div>
</body>
</html>
<script>clearInp();</script>