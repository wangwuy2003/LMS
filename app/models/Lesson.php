<?php

    class Lesson{
        private $id;
        private $course_id;
        private $title;
        private $description;
        private $created_at;
        private $updated_at;

        public function __construct($row){
            $this->id = $row['id'] ?? '';
            $this->course_id = $row['course_id'];
            $this->title = $row['title'];
            $this->description = $row['description'];
            $this->created_at = $row['created_at'] ?? '';
            $this->updated_at = $row['updated_at'] ?? '';
        }

        /**
         * @return mixed|string
         */
        public function getId()
        {
            return $this->id;
        }

        /**
         * @param  mixed|string  $id
         */
        public function setId($id): void
        {
            $this->id = $id;
        }

        /**
         * @return mixed
         */
        public function getCourseId()
        {
            return $this->course_id;
        }

        /**
         * @param  mixed  $course_id
         */
        public function setCourseId($course_id): void
        {
            $this->course_id = $course_id;
        }

        /**
         * @return mixed
         */
        public function getTitle()
        {
            return $this->title;
        }

        /**
         * @param  mixed  $title
         */
        public function setTitle($title): void
        {
            $this->title = $title;
        }

        /**
         * @return mixed
         */
        public function getDescription()
        {
            return $this->description;
        }

        /**
         * @param  mixed  $description
         */
        public function setDescription($description): void
        {
            $this->description = $description;
        }

        /**
         * @return mixed|string
         */
        public function getCreatedAt()
        {
            return $this->created_at;
        }

        /**
         * @param  mixed|string  $created_at
         */
        public function setCreatedAt($created_at): void
        {
            $this->created_at = $created_at;
        }

        /**
         * @return mixed|string
         */
        public function getUpdatedAt()
        {
            return $this->updated_at;
        }

        /**
         * @param  mixed|string  $updated_at
         */
        public function setUpdatedAt($updated_at): void
        {
            $this->updated_at = $updated_at;
        }


    }