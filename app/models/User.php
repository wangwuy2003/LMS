<?php
    class User{
        private $id;
        private $name;
        private $email;
        private $password;
        private $created_at;
        private $updated_at;

        public function __construct($row){
            $this->id = $row['id'] ?? '';
            $this->name = $row['name'];
            $this->email = $row['email'];
            $this->password = $row['password'];
        }

        public function getId(): mixed
        {
            return $this->id;
        }

        public function setId(mixed $id): void
        {
            $this->id = $id;
        }

        public function getName(): mixed
        {
            return $this->name;
        }

        public function setName(mixed $name): void
        {
            $this->name = $name;
        }

        public function getEmail(): mixed
        {
            return $this->email;
        }

        public function setEmail(mixed $email): void
        {
            $this->email = $email;
        }

        public function getPassword(): mixed
        {
            return $this->password;
        }

        public function setPassword(mixed $password): void
        {
            $this->password = $password;
        }

        /**
         * @return mixed
         */
        public function getCreatedAt()
        {
            return $this->created_at;
        }

        /**
         * @param  mixed  $created_at
         */
        public function setCreatedAt($created_at): void
        {
            $this->created_at = $created_at;
        }

        /**
         * @return mixed
         */
        public function getUpdatedAt()
        {
            return $this->updated_at;
        }

        /**
         * @param  mixed  $updated_at
         */
        public function setUpdatedAt($updated_at): void
        {
            $this->updated_at = $updated_at;
        }


    }