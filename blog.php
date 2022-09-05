<?php include 'include/header.php';?>
<?php include 'include/navbarsecond.php';?>

<div class="container pt-5">
    <div class="row">
    
      
                <!--------Popular Posts---------->
     
                <?php 
          $postQuery="SELECT * FROM posts ORDER BY id DESC ";
          $runPQ=mysqli_query($db,$postQuery);
          while($post=mysqli_fetch_assoc($runPQ)){
            ?>
  
  <div class="col-md-4 p-5 ">
            <div class="posts">
              <div class="post-content">
                  <div class="post-image">
                      <div>
                          <img src="./images/<?=$post['pictures']?>" class="img" alt="blog1">
                      </div>
                     
                  </div>
                  <div class="post-title">
                     <h3><a href="post.php?id=<?=$post['id']?>"><?=$post['id']?><?=$post['title']?></a> </h3> 
                      
                  </div>
              </div>
              </div>
              </div>
              <?php
            
          }
          
          ?>
      <!--------Popular Posts---------->
        
    </div>
</div>
<?php include 'include/footer.php';?>