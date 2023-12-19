<?php
    include APP_ROOT . '/app/config/DBConnect.php';
    include APP_ROOT . '/app/models/Course.php';

    class CourseService{
        public function getAllCourse(): array
        {
            global $conn;
            $sql = "select * from courses";
            $stmt = $conn->query($sql);

            $courses = [];
            while($row = $stmt->fetch()){
                $course = new Course($row);
                $courses[] = $course;
            }
            return $courses;
        }

        public function rowCount(): int
        {
            global $conn;
            $sql = "select * from courses order by  id desc";
            $stmt = $conn->query($sql);
            return $stmt->rowCount();
        }
        public function store($course): void
        {
            global $conn;
            $object = new Course($course);
            $sql = "insert into courses(title, description) values('". $object->getTitle() . "', '" . $object->getDescription() . "')";
            $stmt = $conn->query($sql);
        }

        public function find($params): \Course
        {
            global $conn;
            $sql = "select * from courses where id = '$params'";
            $stmt = $conn->query($sql);
            $each = $stmt->fetch();
            return new Course($each);
        }

        public function update(array $params): void
        {
            global $conn;
            $object = new Course($params);
            $sql = "update courses set title = '" . $object->getTitle() . "', description = '" . $object->getDescription()  . "' where id = '" . $object->getId() . "'";
            $stmt = $conn->query($sql);
        }

        public function delete($params): void
        {
            global $conn;
            $sql = "delete from courses where id = '$params'";
            $stmt = $conn->query($sql);
        }
    }
