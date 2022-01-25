<?php
require_once "connection.php";
if (isset($_POST["userupdate"])) {
    $userid = $_GET['Get_Id'];
    $username = $_POST['username'];
    $useremail = $_POST['usemail'];
    $userstatus = $_POST['status'];

    $query = "UPDATE user SET
    username='$username',useremail='$useremail',status='$userstatus'
    where id='$userid'
    ";
    $result = mysqli_query($conn, $query);
    if ($result) {
        header("location:userlist.php");
    } else {
        echo "please chack your query";
    }
} else {
    header("location:userlist.php");
}
