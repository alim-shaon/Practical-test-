<?php

$conn = mysqli_connect("localhost", "root", "", "project1");
if (!$conn) {
    echo "failed connection";
}
$username = $_POST["username"];
$userpass = $_POST["pass"];
$useremail = $_POST["useremail"];

$s = "SELECT * FROM user WHERE username= '$username'";
$result = mysqli_query($conn, $s);

$num = mysqli_num_rows($result);

if ($num == 1) {
    echo 'username already taken ';
} else {
    $reg = " INSERT INTO user (username ,useremail, password) values ('$username','$useremail','$userpass')";
    mysqli_query($conn, $reg);
    echo 'registration successfully done';
    header('location:userlist.php');
}

mysqli_close($conn);
