<?php

    include APP_ROOT . '/app/models/User.php';
    include APP_ROOT . '/app/config/DBConnect.php';
    class UserService{
        public function getAllUser(): array
        {
            global $conn;
            $sql = "select * from users order by id desc";
            $stmt = $conn->query($sql);

            $users = [];
            foreach($stmt->fetchAll() as $row){
                $user = new User($row);
                $users[] = $user;
            }
            return $users;
        }

        public function store($params){
            global $conn;
            $object = new User($params);
            $sql = "insert into users(name, email, password) values('". $object->getName() . "', '" . $object->getEmail() . "', '" . $object->getPassword() ."')";
            $stmt = $conn->query($sql);
        }

        public function find($params){
            global $conn;
            $sql = "select * from users where id = '$params'";
            $stmt = $conn->query($sql);
            $each = $stmt->fetch();
            return new User($each);
        }

        public function update(array $params){
            global $conn;
            $object = new User($params);
            $sql = "update users set name = '" . $object->getName() . "', email = '" . $object->getEmail() . "', password = '" . $object->getPassword() . "' where id = '" . $object->getId() . "'";
            $stmt = $conn->query($sql);
        }

        public function delete($params){
            global $conn;
            $sql = "delete from users where id = '$params'";
            $stmt = $conn->query($sql);
        }
    }
