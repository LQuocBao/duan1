<?php
class postModel{
    private $db;
    function __construct()
    {
        $this->db = new Database();
    }

    function getAllPost(){
        $sql = "SELECT * FROM post";
        return $this->db->getAll($sql);
    }

    function getCateId($postID){
        $sql = "SELECT * FROM postcate WHERE id = ".$postID;
        return $this->db->getOne($sql);
    }

    function insertPost(){
        $sql = "INSERT INTO users(title,text,image,datePost,description,status,idCatePost,idUserPost) VALUE (?,?,?,?,?,?,?,?)";
        
    }
}
?>