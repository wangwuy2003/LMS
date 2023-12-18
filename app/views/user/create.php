<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Hệ thống quản lý</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
</head>
<body>
<?php
    include_once  APP_ROOT . '/app/views/menu.php';
?>
<div class="container">
    <h3 class="text-center text-success my-3">Thêm người dùng</h3>
    <form method="POST" action="?c=user&a=store">
        <div class="mb-3">
            <label for="inputName" class="form-label">Họ tên</label>
            <input type="text" class="form-control" id="inputName" aria-describedby="emailHelp" name="name">
        </div>
        <div class="mb-3">
            <label for="inputEmail" class="form-label">Email</label>
            <input type="text" class="form-control" id="inputEmail" aria-describedby="emailHelp" name="email">
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Mật khẩu</label>
            <input type="password" class="form-control" id="exampleInputPassword1" name="password">
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>
</div>
</body>
</html>