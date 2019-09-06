<?php

if (isset($_POST['hm_signup_submit'])) {

  require '../dbcon.php';

  $username= $_POST['hm_uname'];
  $fname = $_POST['hm_fname'];
  $lname = $_POST['hm_lname'];
  $mobile = $_POST['hm_mobile'];
  $hostel_name = $_POST['hostel_name'];
  $email = $_POST['Email'];
  $password = $_POST['pass'];
  $cnfpassword = $_POST['confpass'];


  if($password !== $cnfpassword){
    header("Location: ../admin/create_hm.php?error=passwordcheck");
    exit();
  }
  else {

    $sql = "SELECT Username FROM hostel_manager WHERE Username=?";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt, $sql)){
      header("Location: ../admin/create_hm.php?error=sqlerror");
      exit();
    }
    else {
      mysqli_stmt_bind_param($stmt, "s", $username);
      mysqli_stmt_execute($stmt);
      mysqli_stmt_store_result($stmt);
      $resultCheck = mysqli_stmt_num_rows($stmt);
      if ($resultCheck > 0) {
        header("Location: ../admin/create_hm.php?error=userexists");
        exit();
      }
      else {
      //  $sql = "INSERT INTO Hostel_Manager (Student_id, Fname, Lname, Mob_no, Dept, Year_of_study, Pwd) VALUES (?, ?, ?, ?, ?, ?, ?)";
        //$sql = "INSERT INTO Hostel_Manager (Username, Fname, Lname, Mob_no, Hostel_id, Email, Pwd, Isadmin) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        //$stmt = mysqli_stmt_init($conn);

          //$hashedPwd = password_hash($password, PASSWORD_DEFAULT);
          $sql = "SELECT *FROM hostel WHERE Hostel_name = '$hostel_name'";
          $result = mysqli_query($conn, $sql);
          if($row = mysqli_fetch_assoc($result)){
            $HostelID = $row['Hostel_id'];
            $zz = 0;
            $sql = "INSERT INTO hostel_manager (Username, Fname, Lname, Mob_no, Hostel_id,Hostel_name, Email, Pwd, Isadmin)
             VALUES ('$username', '$fname', '$lname', '$mobile', '$HostelID','$hostel_name', '$email', '$password', '$zz')";
          //  mysqli_stmt_bind_param($stmt, "ssssssss",'$username', $fname, $lname, $mobile, $HostelID, $email, $hashedPwd, $zz);
          //  mysqli_stmt_execute($stmt);
          $result = mysqli_query($conn, $sql);
          if($result){
            echo "<script>alert('Appointed Succesfully!!!');window.location='../admin/create_hm.php?added=success";
          }
          else {
            header("Location: ../admin/create_hm.php?added=failure");
          }

          //  exit();
          }
          else {
            header("Location: ../admin/create_hm.php?error=nohostel");
            exit();
          }


      }
    }

  }
  mysqli_stmt_close($stmt);
  mysqli_close($conn);

}
