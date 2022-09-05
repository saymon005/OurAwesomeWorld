

<!-------------------------------------------------------------------- header -------------------------------------------------->
<?php include 'include/header.php';?>
<!-------------------------------------------------------------------- header end -------------------------------------------------->

     <!-------------------------------------------------------------------- Navigation -------------------------------------------------->

     <?php include_once('include/navbar.php'); ?>

    <!-------------------------------------------------------------------- Navigation End-------------------------------------------------->


    <!-------------------------------------------------------------------- Banner Section -------------------------------------------------->
    <?php include_once('include/banner.php'); ?>
    <!-------------------------------------------------------------------- Banner Section End -------------------------------------------------->


    <!-------------------------------------------------------------------- Post Section start -------------------------------------------------->
<section class="post-section">
    <div>
      <div class="container m-auto pt-5 row">
          <div class="col-md-9">

          <?php 
          $postQuery="SELECT * FROM posts ORDER BY id DESC LIMIT $result,$post_per_page";
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
                          <span><i class="fas fa-user text-gray"></i>&nbsp;&nbsp;</span>
                          <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;<?php echo date('F d ,Y',strtotime($post['created_at']))?></span>
                          <span>2 Commets</span>
                          <span><?=getCategory($db, $post['category_id'])?></span>
                      </div>
                  </div>
                  <div class="post-title">
                      <a href="post.php?id=<?php echo $post['id']?>"><?php echo $post['title']?></a>
                      <p class="text-trancate"> <?php echo $post['content']?></p>
                      <a href="post.php?id=<?php echo $post['id']?>">
                      <button class="btn post-btn">Read More &nbsp; <i class="fas fa-arrow-right"></i></button></a>
                  </div>
              </div>
              </div>
              <?php
            
          }
          
          ?>
              <!---------------Pagination-------------->

              <?php
              if(isset($_GET['search'])){
                $keyword = $_GET['search'];
                $q = "SELECT * FROM posts WHERE title LIKE '%$keyword%'";
              }else{
                $q="SELECT * FROM posts";
              }
          
          $r=mysqli_query($db,$q);
          $total_posts=mysqli_num_rows($r);
          $total_pages=ceil($total_posts/$post_per_page);
        ?>
              
       <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">

          <?php
          if($page>1){
            $switch="";

          }else{
            $switch="disabled";
          }
          ?>
          <li class="page-item <?=$switch?>">
            <a class="page-link" href="?page=<?=$page-1?>" tabindex="-1" aria-disabled="true"><</a>
          </li>
          <?php
                   for($ppage=1;$ppage<=$total_pages;$ppage++){
                ?>
               
                    <li class="page-item"><a class="page-link" href="?page=<?php echo $ppage ?>"><?php echo $ppage ?></a></li>
                    <?php
                  }
                  
          ?>
                   


                   <?php
          if($page<$total_pages){
            $nswitch="";

          }else{
            $nswitch="disabled";
          }
          ?>

          <li class="page-item<?=$nswitch?> ">
            <a class="page-link" href="?page=<?php echo $page+1?>">></a>
          </li>
        </ul>
</nav>

              <!---------------Pagination-------------->

</div>
        <!-------------------------------------------------------------------- Post Section End -------------------------------------------------->

<!-------------------------------------------------------------------- Sidebar Section start -------------------------------------------------->
<?php include_once('include/sidebar.php'); ?>
<!-------------------------------------------------------------------- Sidebar Section end -------------------------------------------------->


            
    </div>
  </div>
</section>

    
<!-------------------------------------------------------------------- Footer Section-------------------------------------------------->
<?php include_once('include/footer.php'); ?>
<!-------------------------------------------------------------------- Footer Section-------------------------------------------------->
