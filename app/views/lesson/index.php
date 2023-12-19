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
    <h3 class="text-center my-5 text-success">Quản lý bài học</h3>
    <a href="?c=lesson&a=create" class="btn btn-success">Thêm mới</a>
    <table class="table table-hover">
        <thead>
        <tr>
            <th scope="col">Mã</th>
            <th scope="col">Mã khóa học</th>
            <th scope="col">Tên bài học</th>
            <th scope="col" class="text-center">Xem chi tiết</th>
            <th scope="col">Sửa</th>
            <th scope="col">Xóa</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach($lessons as $lesson): ?>
            <tr>
                <td><?= $lesson->getId() ?></td>
                <td><?= $lesson->getCourseid() ?></td>
                <td><?= $lesson->getTitle() ?></td>
                <td>
                    <div class="text-center">
                        <a href="">
                            <i class="bi bi-eye-fill"></i>
                        </a>
                    </div>
                </td>
                <td>
                    <a href="?c=lesson&a=edit&id=<?= $lesson->getId() ?>">
                        <i class="bi bi-pencil-square"></i>
                    </a>
                </td>
                <td>
                    <a href="?c=lesson&a=delete&id=<?= $lesson->getId() ?>">
                        <i class="bi bi-trash3" style="color: red"></i>
                    </a>
                </td>
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
</div>
</body>
</html>