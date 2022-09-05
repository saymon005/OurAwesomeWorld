<?php

   //$connection = mysqli_connect('localhost','root','','book_db');
   require('include/db.php');
   
   if (!isset($_SESSION['login'])) {
      echo "<script>window.location.href='http://localhost:8080/ourawesomeworld/login.php'</script>";
  }
   if(isset($_POST['send'])){
      $name = $_POST['name'];
      $email = $_POST['email'];
      $phone = $_POST['phone'];
      $address = $_POST['address'];
      $location = $_POST['location'];
      $guests = $_POST['guests'];
      $arrivals = $_POST['arrivals'];
      $leaving = $_POST['leaving'];

      $request = "INSERT INTO book(name, email, phone, address, location, guests, arrivals, leaving) values('$name','$email','$phone','$address','$location','$guests','$arrivals','$leaving') ";
      mysqli_query($db, $request);

      header('location:book.php'); 

   }else{
      echo 'something went wrong please try again!';
   }

?>