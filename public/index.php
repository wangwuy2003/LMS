<?php
    include '../app/config/config.php';

    require_once '../app/config/config.php';
    include_once APP_ROOT . '/app/config/DBConnect.php';

//    include APP_ROOT . '/app/controllers/UserController.php';
//
//    $controller = new UserController();
//    $controller->index();

    $controller = $_GET['c'] ?? 'home';
    $action = $_GET['a'] ?? 'index';

    $controller= ucfirst($controller); #Home
    $controllerClass =$controller . "Controller"; #HomeController

    $path = "controllers/" . $controllerClass    . ".php";
    include_once APP_ROOT . '/app/' . $path;
    $controllerInstance = new $controllerClass();
    $controllerInstance->$action();

