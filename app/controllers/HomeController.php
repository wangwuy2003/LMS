<?php
    include APP_ROOT.'/app/services/LessonService.php';
    include APP_ROOT . '/app/services/CourseService.php';
    include APP_ROOT . '/app/services/UserService.php';
    class HomeController {
        public function index() {
            $lesson = (new LessonService())->rowCount();
            $course = (new CourseService())->rowCount();
            $user = (new UserService())->rowCount();

            include APP_ROOT . '/app/views/home/index.php';
        }
    }
