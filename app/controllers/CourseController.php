<?php
    include APP_ROOT . '/app/services/CourseService.php';

    class CourseController{
        public function index(){
            //goi course service
            $courseService = new CourseService();
            $courses = $courseService->getAllCourse();

            //hien thi view
            include APP_ROOT . '/app/views/course/index.php';
        }

        public function create(){
            include APP_ROOT . '/app/views/course/create.php';
        }

        public function store(){
            (new CourseService())->store($_POST);

            header("location:?c=course");
        }

        public function edit(){
            $id = $_GET['id'];
            $course = (new CourseService())->find($id);

            include APP_ROOT . '/app/views/course/edit.php';
        }

        public function update(){
            (new CourseService())->update($_POST);
            header("location:?c=course");
        }

        public function delete(){
            $id = $_GET['id'];
            (new CourseService())->delete($id);
            header("location:?c=course");
        }
    }