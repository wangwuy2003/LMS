<?php
    class Course{
        private $id;
        private $title;
        private $description;

        public function __construct($row){
            $this->id = $row['id'] ?? '';
            $this->title = $row['title'];
            $this->description = $row['description'];
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


    }
