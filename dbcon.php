<?php
session_start();
$servername="localhost";
$username="root";
$dbpassword="";
$dbname="login";

//create connection
$conn=new mysqli($servername,$username,$dbpassword,$dbname);
if(mysqli_connect_errno()){
    echo 'failed to connect';
}

//check connection
if(!mysqli_select_db($conn,'login')){
    echo 'something went wrong';
}
?>