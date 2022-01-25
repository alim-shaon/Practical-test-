<?php
require_once "connection.php";
if (isset($_GET['Get_Id'])) {
    $userid = $_GET['Get_Id'];
    $query = "SELECT * FROM user WHERE id='" . $userid . "'";
    $result = mysqli_query($conn, $query);

    while ($row = mysqli_fetch_assoc($result)) {
        $userid = $row['id'];
        $username = $row['username'];
        $usemail = $row['useremail'];
        $userstatus = $row['status'];
    }
}
echo "hello from edit";

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <!-- bootatrap -->
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Edit Form</title>
</head>
<body>
    <section class="form-container">
        <div class="form">
            <form action="userupdate.php?Get_Id=<?php echo $userid ?>" method="post" class="login-form">
                <input type="text" name="username" placeholder="user name" required value="<?php echo $username ?>">
                <input type="email" name="usemail" placeholder="user email" required value="<?php echo $usemail ?>">
                <input type="text" name="status" placeholder="user status"required value="<?php echo $userstatus ?>">
                <input name="userupdate" class="bg-success text-white" type="submit" value="Update">
            </form>

        </div>
    </section>


</body>
</html>
