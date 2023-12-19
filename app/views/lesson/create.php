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
    <h3 class="text-center text-success my-3">Thêm bài học</h3>
    <form method="POST" action="?c=lesson&a=store">
        <div class="mb-3">
            <label for="inputCourse" class="form-label">Khóa học</label>
            <select class="form-select" aria-label="Default select example" name="course_id">
                <?php foreach($courses as $course): ?>
                    <option value="<?php echo $course->getId() ?>">
                        <?php echo $course->getTitle() ?>
                    </option>
                <?php endforeach; ?>
            </select>
        </div>
        <div class="mb-3">
            <label for="inputTitle" class="form-label">Tên bài học</label>
            <input type="text" class="form-control" id="inputTitle" aria-describedby="emailHelp" name="title">
        </div>
        <div class="mb-3">
            <label for="inputDescription" class="form-label">Mô tả</label>
            <input type="text" class="form-control" id="inputDescription" aria-describedby="emailHelp" name="description">
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>
</div>
</body>
</html>