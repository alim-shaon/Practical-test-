<?php
$conn = mysqli_connect("localhost", "root", "", "project1");

if (!$conn) {
    die(" Connection Error ");
}

if (isset($_POST['csvsubmit'])) {
    $userid = $_GET['Get_Id'];
    $file_name = $_POST['filename'];
    $filename = $_FILES['file_csv']["tmp_name"];
    if ($_FILES["file_csv"]["size"] > 0) {
        $file = fopen($filename, "r");

        while (($getData = fgetcsv($file, 10000, ",")) !== false) {
            $query = "INSERT INTO all_files (number,first_name,last_name,email,state,zip,file_name,user_id)
            VALUES
            ('$getData[0]','$getData[1]','$getData[2]','$getData[3]','$getData[4]','$getData[5]','$file_name','$userid')
            ";
            $result = mysqli_query($conn, $query);
            if (!$result) {
                echo "invalid file";
            } else {
                header('location:../user.php');
            }
        }
        fclose($file);
    }
}

$conn->close();
