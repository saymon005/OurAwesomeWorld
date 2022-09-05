<!-------------------------------------------------------------------- header -------------------------------------------------->
<?php include 'include/header.php';?>
<!-------------------------------------------------------------------- header end -------------------------------------------------->

     <!-------------------------------------------------------------------- Navigation -------------------------------------------------->

     <?php include_once('include/navbar.php'); ?>

    <!-------------------------------------------------------------------- Navigation End-------------------------------------------------->


    <!-------------------------------------------------------------------- Banner Section -------------------------------------------------->
    <?php include_once('include/banner.php'); ?>
    <!-------------------------------------------------------------------- Banner Section End -------------------------------------------------->

<!-- --------------------------------------------------------booking section starts  ----------------------------------------->

<section class="booking">

   <form action="book_form.php" method="post" class="book-form">

      <div class="flex">
         <div class="inputBox">
            <span>Name :</span>
            <input type="text" placeholder="enter your name" name="name">
         </div>
         <div class="inputBox">
            <span>Email :</span>
            <input type="email" placeholder="enter your email" name="email">
         </div>
         <div class="inputBox">
            <span>Phone :</span>
            <input type="number" placeholder="enter your number" name="phone">
         </div>
         <div class="inputBox">
            <span>Address :</span>
            <input type="text" placeholder="enter your address" name="address">
         </div>
         <div class="inputBox">
            <span>Where to :</span>
            <input type="text" placeholder="place you want to visit" name="location">
         </div>
         <div class="inputBox">
            <span>How many :</span>
            <input type="number" placeholder="number of guests" name="guests">
         </div>
         <div class="inputBox">
            <span>Arrival Date :</span>
            <input type="date" name="arrivals">
         </div>
         <div class="inputBox">
            <span>Leaving Date :</span>
            <input type="date" name="leaving">
         </div>
      </div>

      <input type="submit" value="submit" class="btn" name="send">

   </form>

</section>

<!-- booking section ends -->


<!-- booking section ends -->
    <!-------------------------------------------------------------------- Footer Section-------------------------------------------------->
<?php include_once('include/footer.php'); ?>
<!-------------------------------------------------------------------- Footer Section-------------------------------------------------->
