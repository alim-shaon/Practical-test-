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
    <title>Document</title>
</head>
<body>
    <section class="form-container">
        <div class="form">
            <form action="login_validation.php" method="post" class="login-form">

                <input type="email" name="useremail" placeholder="user email" required>
                <input type="password" name="pass" placeholder="user password"required>
                <input name="login" class="bg-success text-white" type="submit" value="login">
            </form>

        </div>
    </section>


</body>
</html>
