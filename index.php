<?php
include 'dbcon.php';
if(isset($_POST['submit']))
{
$email = $_POST['email'];
$password = $_POST['pwd'];
if($_SERVER["REQUEST_METHOD"] == "POST"){
$getquery = mysqli_query($conn , "select * FROM student where email = '$email' and Pwd = '$password'")
or die("Failed to query database ".mysqli_error());
$row = mysqli_fetch_assoc($getquery );
if(mysqli_num_rows($getquery) > 0)
{
    if($row['email']==$email && $row['Pwd']==$password)
    {
    if($row['email']!=null && $row['Pwd']!=null){
        //session_start();
        $_SESSION['email'] = $row['email'];
        $_SESSION['id'] = $row['Student_id'];
        $_SESSION['fname'] = $row['Fname'];
        $_SESSION['lname'] = $row['Lname'];
        $_SESSION['mob_no'] = $row['Mob_no'];
        $_SESSION['department'] = $row['Dept'];
        $_SESSION['year_of_study'] = $row['Year_of_study'];
        $_SESSION['hostel_id'] = $row['Hostel_id'];
        $_SESSION['room_id'] = $row['Room_id'];
        /*if(isset($_SESSION['department'])){
          echo "<script type='text/javascript'>alert('Set')</script>";
        }
        else {
          echo "<script type='text/javascript'>alert('Not SET')</script>";
        }*/
        
        echo "<script>window.location = 'home.php'</script>'";
    }
    }
    else
    {
        echo "<script>alert('Email or Password is incorrect!!!');window.location='index.php'</script>";
    }
}
else{
    echo "<script>alert('Email or Password is incorrect!!!');window.location='index.php'</script>";
}
}
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title> Hostel Management System</title>
    <!-- meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="keywords"
        content="Art Sign Up Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates,
		Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
    <!-- /meta tags -->

    <!-- custom style sheet -->
    <link href="web/css/style.css" rel="stylesheet" type="text/css" />
    <!-- /custom style sheet -->

    <!-- fontawesome css -->
    <link href="web/css/fontawesome-all.css" rel="stylesheet" />
    <!-- /fontawesome css -->

    <!-- google fonts-->
    <link
        href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <!-- /google fonts-->

</head>

<body>
    <h1>Hostel Room Allocation System</h1>
    <div class="w3l-login-form">
        <h2>STUDENT LOGIN</h2>
        <form action="" method="POST">
            <div class=" w3l-form-group">
                <label>Student Email ID:</label>
                <div class="group">
                    <i class="fas fa-user"></i>
                    <input type="text" class="form-control" name="email" placeholder="Email ID" required="required" />
                </div>
            </div>
            <div class=" w3l-form-group">
                <label>Password:</label>
                <div class="group">
                    <i class="fas fa-unlock"></i>
                    <input type="password" class="form-control" name="pwd" placeholder="Password"
                        required="required" />
                </div>
            </div>
            <!-- <div class="forgot">
                <a href="#">Forgot Password?</a>
                <p><input type="checkbox">Remember Me</p>
            </div>
            -->
            <button type="submit" name="submit">Login</button>
        </form>
        <p class=" w3l-register-p">Login as<a href="login-hostel_manager.php" class="register"> Hostel-Manager/Admin</a>
        </p>
        <p class=" w3l-register-p">Don't have an account?<a href="signup.php" class="register"> Sign up</a></p>
    </div>

    <footer>
        <p class="copyright-agileinfo"> &copy; All Rights Reserved | Design by
            <a href="https://www.linkedin.com/in/praveen-kesarwani-22298a145/" style="text-decoration:none;">Praveen Kesarwani</a></p>
    </footer>
</body>
</html>