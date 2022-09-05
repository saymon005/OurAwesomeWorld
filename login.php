<!-------------------------------------------------------------------- header -------------------------------------------------->
<?php include 'include/header.php';?>
<!-------------------------------------------------------------------- header end -------------------------------------------------->

     <!-------------------------------------------------------------------- Navigation -------------------------------------------------->

     <?php include_once('include/navbar.php'); ?>

    <!-------------------------------------------------------------------- Navigation End-------------------------------------------------->
<body class="login">
    <div class="container form-container login">
        <div class="form-holder">
            <form action="" method="POST">
                <label for="email"><b>Email</b></label>
                <input type="email" name="gmail" placeholder="gmail..." required />
                <label for="password"><b>Password</b></label>
                <input type="password" name="password" placeholder="password..." required />
                <input type="submit" class="btn btn-primary btn-lg" value="Login" />
            </form>
        </div>

        <?php
        if (isset($_SESSION['login'])) {
            echo "<script>window.location.href='http://localhost:8080/ourawesomeworld/'</script>";
        }
        if (!empty($_POST)) {
            $gmail = $_POST['gmail'];
            $password = md5($_POST['password']);

            $sql = "SELECT * FROM login WHERE gmail='$gmail' AND password='$password'";
            $result = $db->query($sql);
            //print_r($result);
            if ($result->num_rows ==1 ) {
                //$result = $result->fetch_assoc();
                $sql2 = "SELECT username FROM login WHERE gmail='$gmail' AND password='$password'";
                $result2 = $db->query($sql2);
                $result2 = $result->fetch_assoc();

                if (!isset($_SESSION['login'])) {
                    $_SESSION['login'] = true;
                    $_SESSION['username'] = $result['username'];
                    $_SESSION['gmail'] = $gmail;
                    echo "<script>window.location.href='http://localhost:8080/ourawesomeworld/'</script>";
                }
            } else {
                ?><p class="text-white">User Haven't Registered Yet</p><?php
            }
        }
        ?>

    </div>
    <!-------------------------------------------------------------------- Footer Section-------------------------------------------------->
<?php include_once('include/footer.php'); ?>
<!-------------------------------------------------------------------- Footer Section-------------------------------------------------->
    </body>