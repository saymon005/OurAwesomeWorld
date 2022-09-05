

 <?php include 'include/header.php';?>
 <?php include 'include/navbarsecond.php';?>

 <section class="About-section">
    

      
        
        <!--------About---------->


        <div class="container">
        <div class="row">


    <?php
        $sql = "SELECT * FROM about";
      $about = mysqli_query($db, $sql);

      while( $row = mysqli_fetch_assoc( $about )) {
        
        $title=$row['title'];
        $img = $row['picture'];
        $description = $row['description'];
        
      ?>
       <h2 class="about-title"><?php echo $title ?></h2>
     <div class="container">
       <div class="row">
         <div class="col-md-6">
           <div class="img">
                <img src="./images/about.jpg" alt="about">
           </div>
         </div>
         <div class="col-md-6">
           <p><?php echo $description?></p>
           </div>
       </div>
     </div>


       

            <?php 
        } 
        
        ?>

        <h5>You are not alone. Over the past eleven years, I’ve helped millions of people answer those questions and travel more for less with time tested and proven tips and advice. By using this website, you can spend less time searching the Internet and being overwhelmed with information and more time doing the one thing you want to do: travel more.

      </h5>
            
        </div>
    </div>
    </section>
      <!--------About---------->

<?php include 'include/footer.php';?>
