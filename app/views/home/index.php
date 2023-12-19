<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Hệ thống quản lý nội dung</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
</head>
<body>
<?php
    include_once APP_ROOT.'/app/views/menu.php';
?>
<div class="container text-center my-5">
    <div class="row">
        <div class="col">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">Khóa học</h5>
                    <p class="card-text"><?= $course ?></p>
                    <a href="?c=course" class="btn btn-primary">Quản lý</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">Khóa học</h5>
                    <p class="card-text"><?= $course ?></p>
                    <a href="?c=course" class="btn btn-primary">Quản lý</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">Người dùng</h5>
                    <p class="card-text"><?= $user ?></p>
                    <a href="?c=user" class="btn btn-primary">Quản lý</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
