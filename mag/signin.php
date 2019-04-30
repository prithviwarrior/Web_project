<?php

    session_start();

    $con = mysqli_connect("localhost", "root", "", "flood") or die(mysqli_error($con));

    $username = $_POST['user'];
    $password = $_POST['pass'];

    $_SESSION['username'] = $username;      //to use username on different pages
    /*
    $result1 = mysql_query("SELECT password FROM signup WHERE username = '$username'");
    $result2 = mysql_query("SELECT username FROM signup WHERE password = '$password'");
    */

    $check_u = "select * from `signup` where username = '$username'";
    $res_u = mysqli_query($con,$check_u) or die(mysqli_error($con));
    $check_p = "select * from `signup` where username = '$username' and rpassword = '$password'";
    $res_p = mysqli_query($con,$check_p) or die(mysqli_error($con));

    if(mysqli_num_rows($res_u) == 0)
    {
      echo "<script type='text/javascript'>alert('Incorrect username!!');</script>";
      header("refresh: 0.01; url=login_page.php");
    }

    else if(mysqli_num_rows($res_p) == 0)
    {
      echo "<script type='text/javascript'>alert('Incorrect password!!');</script>";
      header("refresh: 0.01; url=login_page.php");
    }

    /*
    if($username == $result2 && $password == $result1) 
    { 
        $_SESSION["logged_in"] = true; 
        $_SESSION["naam"] = $name; 
        header("refresh: 0.01; url=mag/index.html");
    }
    else
    {
        echo'The username or password are incorrect!';
    }
    */

    else
    {  
      $sql2 = "SELECT * FROM `signin` WHERE `username`='$username'";
      $res2 = mysqli_query($con, $sql2);
      if(mysqli_num_rows($res2) == 1)
      {
      //echo "<script type='text/javascript'>alert('Logged in successfully!!');</script>";
      $sql = "UPDATE `signin` SET `loginstatus`=1 WHERE `username`='$username'";
    $res = mysqli_query($con, $sql);
      header("refresh: 0.01; url=index.php");
      }
      else
      {
        $sql3 = "INSERT INTO `signin`(`loginstatus`,`username`) VALUES(1,'$username')";
    $res3 = mysqli_query($con, $sql3);
    header("refresh: 0.01; url=index.php");
      }
    }
?>