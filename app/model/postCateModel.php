<?php
    class postCateModel{
        private $db;
        function __construct()
        {
            $this->db = new Database();
        }

        function getAllCatePost(){
            $sql = "SELECT * FROM postcate";
            return $this->db->getAll($sql);
        }
    }
?>