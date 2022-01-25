<?php
require_once "connection.php";

if (isset($_GET['del_Id'])) {
    $userid = $_GET['del_Id'];
    $query = "DELETE FROM user WHERE id='" . $userid . "'";
    $result = mysqli_query($conn, $query);
    if ($result) {
        header("location:userlist.php");
    } else {
        echo ' Please Check Your Query ';
    }
} else {
    header("location:userlist.php");
}
echo "hello from edit";
