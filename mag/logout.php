<?php
session_start();
$con = mysqli_connect("localhost", "root", "", "flood") or die(mysqli_error($con));
$username = $_SESSION['username'];
$sql = "UPDATE `signin` SET `loginstatus`=0 WHERE `username`='$username'";
$res = mysqli_query($con, $sql);
header("refresh: 0.01; url=login_page.php");
?> 