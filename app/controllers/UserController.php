<?php

    include APP_ROOT . '/app/services/UserService.php';
    class UserController{
        public function index(){
            //lay du lieu tu user service
            $users = (new UserService())->getAllUser();

            //view
            include APP_ROOT . '/app/views/user/index.php';
        }

        public function create(){
            include APP_ROOT . '/app/views/user/create.php';
        }

        public function store(): void
        {
            (new UserService())->store($_POST);
            header("location:?c=user");
        }

        public function edit(){
            $id = $_GET['id'];
            $user =  (new UserService())->find($id);

            include APP_ROOT . '/app/views/user/edit.php';
        }

        public function update(){
            (new UserService())->update($_POST);
            header("location:?c=user");
        }

        public function delete(){
            $id = $_GET['id'];
            (new UserService())->delete($id);
            header("location:?c=user");
        }
    }
