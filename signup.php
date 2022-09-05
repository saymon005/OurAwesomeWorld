<!-------------------------------------------------------------------- header -------------------------------------------------->
<?php include 'include/header.php';?>
<!-------------------------------------------------------------------- header end -------------------------------------------------->

     <!-------------------------------------------------------------------- Navigation -------------------------------------------------->

<?php include_once('include/navbar.php');?>
<!-------------------------------------------------------------------- Navigation End-------------------------------------------------->
<body class="signup">
    <div class="container form-container">
        <div class="form-holder">
            <form action="" method="POST">
                <label for="username"><b>Username</b></label>
                <input type="text" name="username" placeholder="username*" required />
                <label for="email"><b>Email</b></label>
                <input type="email" name="gmail" placeholder="gmail*" required />
                <label for="password"><b>Password</b></label>
                <input type="password" name="password" placeholder="password*" required />
                <input type="submit" class="btn btn-primary btn-lg" value="signup" />
            </form>
        </div>
        <?php
        if (isset($_SESSION['login'])) {
            //header('Location: http://localhost:8080/ourawesomeworld/');
            echo "<script>window.location.href='http://localhost:8080/ourawesomeworld/'</script>";
        }
        if (!empty($_POST)) {
            $username2 = $_POST['username'];
            $gmail = $_POST['gmail'];
            $password2 = md5($_POST['password']);
            $userExists = 1;
            $gmailExists = 1;

            $sql = "SELECT * FROM login WHERE username='$username2'";
            $sql2 = "SELECT * FROM login WHERE gmail='$gmail'";
            $result = $db->query($sql);
            $result2 = $db->query($sql2);

            if ($result->num_rows == 0){
                $userExists = 0;
            }

            if ($result2->num_rows == 0) {
                $gmailExists = 0;
            }

            if ($userExists == 0 AND $gmailExists == 0) {
                if (!isset($_SESSION['login'])) {
                    $sql2 = "INSERT INTO login (username,password,gmail) VALUES('$username2','$password2','$gmail')";
                    $result = $db->query($sql2);
                    $_SESSION['login'] = true;
                    $_SESSION['username'] = $username;
                    $_SESSION['password'] = $password;
                    echo "<script>window.location.href='http://localhost:8080/ourawesomeworld/'</script>";
                }
            } else if($userExists == 1 AND $gmailExists == 1){
                ?><p class="text-black" style="color: white;">Username and Gmail Exists</p><?php
            }

            else if($userExists == 1){
                ?><p class="text-black" style="color: white;">Username Exists</p><?php
            }

            else if($gmailExists == 1){
                ?><p class="text-black" style="color: white;">Gmail Exists</p><?php
            }
        }
        ?>
    </div>
    <!-------------------------------------------------------------------- Footer Section-------------------------------------------------->
<?php include_once('include/footer.php'); ?>
<!-------------------------------------------------------------------- Footer Section-------------------------------------------------->
</body>