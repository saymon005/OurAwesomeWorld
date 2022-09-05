

 <?php include 'include/header.php';?>
 <?php include 'include/navbarsecond.php';?>

 <body class="member-section">
    
 <h2 class="member-header">Meet Out Team</h2>
      
        
        <!--------Team---------->


        <div class="container">
        <div class="row">


    <?php
        $sql = "SELECT * FROM member";
      $member = mysqli_query($db, $sql);

      while( $row = mysqli_fetch_assoc( $member )) {
        
        $id=$row['id'];
        $name = $row['name'];
        $dept = $row['department'];
        $institution = $row['institution'];
        $social = $row['social'];
      ?>
     

      <!--------Team---------->
            <div class="profile" >				
				<div ><img src="./assets/team/saymon.png" alt="Saymon Islam Iftikar" ></div>
				<div >
					<h4 class="pt-4" ><?php echo $name ?></h4>
					<p >Department: <?php echo $dept ?></p>
                    <p >Department: <?php echo $institution ?></p>
                    
					
                        
                    </div> 
            </div>

            <?php 
        } 
        
        ?>
            
        </div>
    </div>
      </body>


<?php include 'include/footer.php';?>
