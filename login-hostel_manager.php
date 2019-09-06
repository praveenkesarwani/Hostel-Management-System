<?php

if (isset($_POST['login'])) {

  require 'dbcon.php';

  $username = $_POST['username'];
  $password = $_POST['pwd'];

  if (empty($username) || empty($password)) {
    header("Location:login-hostel_manager.php?error=emptyfields");
    exit();
  }
  else {
    $sql = "SELECT *FROM Hostel_Manager WHERE Username = '$username'";
    $result = mysqli_query($conn, $sql);
    if($row = mysqli_fetch_assoc($result)){
      if($password !== $row['Pwd']){
        header("Location:login-hostel_manager.php?error=wrongpwd");
        exit();
      }
      else if($password == $row['Pwd']) {

        //session_start();
        $_SESSION['hostel_man_id'] = $row['Hostel_man_id'];
        $_SESSION['fname'] = $row['Fname'];
        $_SESSION['lname'] = $row['Lname'];
        $_SESSION['mob_no'] = $row['Mob_no'];
        $_SESSION['username'] = $row['Username'];
        $_SESSION['hostel_id'] = $row['Hostel_id'];
        $_SESSION['email'] = $row['Email'];
        $_SESSION['isadmin'] = $row['Isadmin'];
        $_SESSION['PSWD'] = $row['Pwd'];

        //Just for checking if session variables are working properly
        if(isset($_SESSION['username'])){
          echo "<script type='text/javascript'>alert('Set')</script>";
        }
        else {
          echo "<script type='text/javascript'>alert('Not SET')</script>";
        }
        //echo $_SESSION['lname'];
        if($_SESSION['isadmin']==0){
          header("Location:home_manager.php?login=success");
        }
        else {
          header("Location:admin/admin_home.php?login=success");
        }
        //exit();
      }
      else {
        header("Location:login-hostel_manager.php?error=strangeerr");
        exit();
      }
    }
    else{
      header("Location:login-hostel_manager.php?error=nouser");
      exit();
    }
  }

}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>HMS</title>
    <!-- meta tags -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="keywords" content="Art Sign Up Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates,
		Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"
    />
    <!-- /meta tags -->
    <!-- custom style sheet -->
    <link href="web/css/style.css" rel="stylesheet" type="text/css" />
    <!-- /custom style sheet -->
    <!-- fontawesome css -->
    <link href="web/css/fontawesome-all.css" rel="stylesheet" />
    <!-- /fontawesome css -->
    <!-- google fonts-->
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <!-- /google fonts-->

</head>


<body>
    <h1>Hostel Room Allocation System</h1>
    <div class=" w3l-login-form">
        <h2>Hostel-Manager/Admin Login</h2>
        <form action="" method="POST">
            <div class=" w3l-form-group">
                <label>Username:</label>
                <div class="group">
                    <i class="fas fa-user"></i>
                    <input type="text" class="form-control" name="username" placeholder="Username" required="required" />
                </div>
            </div>
            <div class=" w3l-form-group">
                <label>Password:</label>
                <div class="group">
                    <i class="fas fa-unlock"></i>
                    <input type="password" class="form-control" name="pwd" placeholder="Password" required="required" />
                </div>
            </div>
            <!--<div class="forgot">
                <a href="#">Forgot Password?</a>
                <p><input type="checkbox">Remember Me</p>
            </div>-->
            <button type="submit" name="login">Login</button>
        </form>
          <p class=" w3l-register-p">Login as<a href="index.php" class="register"> Student</a></p>
      <!--  <p class=" w3l-register-p">Don't have an account?<a href="signup.php" class="register"> Sign up</a></p>-->
    </div>
    <footer>
        <p class="copyright-agileinfo"> &copy; All Rights Reserved | Design by
            <a href="https://www.linkedin.com/in/praveen-kesarwani-22298a145/" style="text-decoration:none;">Praveen Kesarwani</a></p>
    </footer>

</body>

</html>
