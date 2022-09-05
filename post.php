<?php include 'include/header.php';?>
<?php include 'include/navbarsecond.php';?>




    <!-------------------------------------------------------------------- Post Section start -------------------------------------------------->
<section class="post-section">
      <div class="container m-auto pt-5 row">    
        <div class="col-md-9">

      
          <?php
          if(isset($_GET['search'])){
            $keyword = $_GET['search'];
            $postQuery = "SELECT * FROM posts WHERE title LIKE '%$keyword%' ORDER BY id DESC LIMIT $result, $post_per_page";
          }
          else if(!empty($_GET)){

          
           $post_id=$_GET['id'];
           
           $postQuery="SELECT * FROM posts WHERE id=$post_id";
           $runPQ=mysqli_query($db,$postQuery);
           while($post=mysqli_fetch_assoc($runPQ)){
            ?>
  
          
            <div class="posts">
              <div class="post-content">
                  <div class="post-image">
                      <div>
                          <img src="./images/<?php echo $post['pictures']?>" class="img" alt="blog1">
                      </div>
                      <div class="post-info flex-row">
                          <span><i class="fas fa-user text-gray"></i>&nbsp;&nbsp;Admin</span>
                          <span><i class="fas fa-calendar-alt text-gray"></i>Posted on <?php echo date('F d ,Y',strtotime($post['created_at']))?></span>
                          <span>2 Commets</span>
                          <span><?=getCategory($db, $post['category_id'])?></span>
                      </div>
                  </div>
                  <div class="post-title">
                      <h3><?php echo $post['title']?></h3>
                      <p><?php echo $post['content']?></p>
                      <div class="addthis_inline_share_toolbox_fxxc"></div>
                      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                       Comment on this
                      </button>
                  </div>
              </div>
              </div>
              </div>   
              <?php
          }
        }
        else{
              header("location: http://localhost:8080/ourawesomeworld/");
        }

          ?>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Your Comment</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form action="include/addcomment.php" method = "post">
  <div class="form-group">
    <label for="exampleInputname">Name</label>
    <input type="name" class="form-control" name = "name" id="exampleInputname" aria-describedby="nameHelp" placeholder="name">
  </div>
  <div class="form-group">
    <label for="exampleInputcomment">Comment</label>
    <input type="text" class="form-control" name = "comment" id="exampleInputcomment" placeholder="Comment">
  </div>
  <input type="hidden" name = "post_id" value="<?=$post_id?>">
  <button type="submit" name="addcomment" class="btn btn-primary">Add Comment</button>
</form>
      </div>
    </div>
  </div>
</div>

        <!-------------------------------------------------------------------- Post Section End -------------------------------------------------->
<!-------------------------------------------------------------------- Comments Section Start -------------------------------------------------->
        <div class ="col-md-3">
          <div class="popular-post">
          <?php

  
if(isset($_GET['id'])){
  ?>
  <div class="card mb-3">
    <h2 class="card-header bg-success text-light">Comments</h2>
    <?php
    $comments=getComments($db,$post_id);

    if(count($comments)<1){
      echo '<div class="card-body"><p class="text-center card-text">No Comments..</p></div>';
    }

    foreach($comments as $comment){
      ?>
      <div class="card-body">
      <h5 class="card-title" style="margin-bottom: 0;"><?=$comment['name']?></h5>
      <span class="text-secondary"><small><?=date('F jS, Y', strtotime($comment['created_at']))?></small></span>
      <p class="card-text"><?=$comment['comment']?></p>
    </div>
      <?php
    }
    ?>
    
  </div>
    
    <?php
}
  ?>
          </div>
        </div>
<!-------------------------------------------------------------------- Comments Section End -------------------------------------------------->
<!-------------------------------------------------------------------- Sidebar Section start -------------------------------------------------->
            <div class="col-md-3">
                    <!--------Related Posts---------->
                    <div class="popular-post">
                <h2>Related Post</h2> 
                <?php 
                $pquery="SELECT * FROM posts WHERE category_id= 2 ORDER BY id DESC";
                  $prun=mysqli_query($db,$pquery);
                  while($rpost=mysqli_fetch_assoc($prun)){
                    if($rpost['id']==$post_id){
                      continue;
                    }
                    ?>
                  <div class="post-content" >
                        <div class="post-image">
                            <div>

                                <img src="./images/<?=$rpost['pictures']?>" class="img" alt="blog1">
                            </div>
                            <div class="post-info flex-row">
                                <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;<?=date('F d ,Y',strtotime($rpost['created_at']))?></span>
                                <span>2 Commets</span>
                            </div>
                        </div>
                        <div class="post-title">
                        <h3><a href="post.php?id=<?=$rpost['id']?>"><?=$rpost['id']?><?=$rpost['title']?></a> </h3> 
                        </div>
                    </div>

                    <?php
                  
                  }
                  ?>
              </div>
            </div>
            <!--------Related Posts end---------->


<!-------------------------------------------------------------------- Sidebar Section end -------------------------------------------------->

    </section>

    <!-------------------------------------------------------------------- Post Section End -------------------------------------------------->

    
    <!-------------------------------------------------------------------- Footer Section-------------------------------------------------->
    <?php include_once('include/footer.php'); ?>
    <!-------------------------------------------------------------------- Footer Section-------------------------------------------------->

<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-62c98872b9789e36"></script>


    
  
   