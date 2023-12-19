<?php
    include APP_ROOT.'/app/services/LessonService.php';
    include APP_ROOT . '/app/services/CourseService.php';
    class LessonController{
        public function index(){
            //goi lesson service
            $lessonService = new LessonService();
            $lessons = $lessonService->getAllLessons();

            //goi view
            include APP_ROOT . '/app/views/lesson/index.php';
        }

        public function create(){
            $courses = (new CourseService())->getAllCourse();
            include APP_ROOT . '/app/views/lesson/create.php';
        }

        public function store(){
            (new LessonService())->store($_POST);
            header("Location:?c=lesson");
        }

        public function edit(){
            $id = $_GET['id'];
            $lesson =  (new LessonService())->find($id);
            $courses = (new CourseService())->getAllCourse();
            include APP_ROOT . '/app/views/lesson/edit.php';
        }

        public function update(){
            (new LessonService())->update($_POST);
            header("location:?c=lesson");
        }

        public function delete(){
            $id = $_GET['id'];
            (new LessonService())->delete($id);
            header("Location:?c=lesson");
        }

    }
