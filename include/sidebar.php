<div class="col-md-3 pb-5">
<div class="category">
          <h2 class="pb-3">Category</h2>
<?php 
          $categoryQuery="SELECT * FROM category ";
          $runCQ=mysqli_query($db,$categoryQuery);
          while($category=mysqli_fetch_assoc($runCQ)){
            ?>
  
          <ul class="category-list justify-content-center">
              <li class="list-items" >
                  <a href="/category?id=<?php echo $category['id']?> "> <?=$category['name']?> </a>
                  <span></span>
              </li>

          </ul>
     
      <?php
            
        }
        
        ?>
 </div>      
      <!--------Category---------->
      <!--------Popular Posts---------->
      <?php include 'include/postsidebar.php';?>
      <!--------Popular Posts---------->

      <!--------Newsletter---------->

        <div class="newsletter">
          <h2>Search</h2>
          <div class="form-element">
              <input type="search" name="search" class="input-element" placeholder="Search">
              <button class="btn form-btn" type="submit">Search</button>
          </div>
      </div>
      <!--------Newsletter---------->
      <!--------Popular Tags---------->
      <div class="popular-tags">
        <h2>Popular Tags</h2>
        <div class="tags flex-row">
            <span class="tag" >Cities</span>
            <span class="tag" >Festival</span>
            <span class="tag" >Trecking</span>
            <span class="tag" >Hill</span>
            <span class="tag" >Beaches</span>
            <span class="tag">Cruises</span>

        </div>
    </div>
      <!--------Popular Tags---------->