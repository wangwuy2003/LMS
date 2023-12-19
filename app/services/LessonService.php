<?php
    include APP_ROOT.'/app/config/DBConnect.php';
    include APP_ROOT.'/app/models/Lesson.php';

    class LessonService
    {
        public function getAllLessons(): array
        {
            global $conn;
            $sql = "select * from lessons order by  id desc";
            $stmt = $conn->query($sql);

            $lessons = [];
            while ($row = $stmt->fetch()) {
                $lesson = new Lesson($row);
                $lessons[] = $lesson;
            }
            return $lessons;
        }

        public function rowCount(): int
        {
            global $conn;
            $sql = "select * from lessons order by  id desc";
            $stmt = $conn->query($sql);
            return $stmt->rowCount();
        }

        public function store($params)
        {
            global $conn;
            $object = new Lesson($params);
            $sql = "insert into lessons(course_id, title, description) values('".$object->getCourseid()."', '".$object->getTitle()."', '".$object->getDescription()."')";
            $stmt = $conn->query($sql);
        }

        public function find($params)
        {
            global $conn;
            $sql = "select * from lessons where id = '$params'";
            $stmt = $conn->query($sql);
            $each = $stmt->fetch();
            return new Lesson($each);
        }

        public function update(array $params){
            global $conn;
            $object = new Lesson($params);
            $sql = "update lessons set course_id = '" . $object->getCourseId() . "', title = '" . $object->getTitle() . "', description = '" . $object->getDescription() . "' where id = '" . $object->getId() . "'";
            $stmt = $conn->query($sql);
        }

        public function delete($params){
            global $conn;
            $sql = "delete from lessons where id = '$params'";
            $stmt = $conn->query($sql);
        }
    }
