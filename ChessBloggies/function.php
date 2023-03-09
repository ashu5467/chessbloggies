<?php
function getImageByPost($db,$post_id){
    $query="SELECT * FROM images WHERE post_id=$post_id ";
    $run=mysqli_query($db,$query);
    $data= mysqli_fetch_assoc($run);
    return $data;
}
?>