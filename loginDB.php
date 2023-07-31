<?php
include_once 'connection.php';
session_start();
// $username=$_GET['student_user'];
// $pass=$_GET['student_pass'];
$user = $_POST["admin_user"];  
$pass = $_POST["admin_pass"];
    
    $sql = "select * from user where u_name='$user' and u_pwd='$pass' ";
    $result = mysqli_query($conn,$sql); 
    if(mysqli_num_rows($result)>0)
    {
       header("Location:insert_job.php");
      }
    else {  echo "<script> alert('Username or Password Not Valid'); window.location='login.php';</script>";
}

mysqli_close($conn);
?>