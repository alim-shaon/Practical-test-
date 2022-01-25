<?php
session_start();
$conn = mysqli_connect("localhost", "root", "", "project1");

if (!$conn) {
    echo "failed connection";
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $useremail = $_POST["useremail"];
    $pass = $_POST["pass"];

    $sql = "SELECT * FROM user WHERE useremail='$useremail' AND password='$pass'";

    //VERIFY WHETHER USER AND PASSWORD EXISTS
    $result = mysqli_query($conn, $sql);

    $row = mysqli_fetch_array($result);

    if ($row["usertype"] == "user") {
        $username = $row["username"];
        //set session variable
        $_SESSION["username"] = $username;

        header('location:user.php');
    } else if ($row["usertype"] == "admin") {
        $username = $row["username"];
        //set session variable
        $_SESSION["username"] = $username;

        header('location:admin.php');
    } else {
        echo "username or pass incorrent";
        // header('location:login.php');
    }

}

// $file = $_FILES['csvfile'];

$conn->close();
