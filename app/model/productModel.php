<?php
class ProductModel
{
    private $db;

    function __construct()
    {
        $this->db = new Database();
    }

    function getProduct()
    {
        $sql = "SELECT * FROM products";
        return $this->db->getAll($sql);
    }

    function get_all_pro_cate($id)
    {
        $sql = "SELECT * FROM products WHERE idCate = '$id'";
        return $this->db->getAll($sql);
    }

    function getIdPro($id){
        if($id > 0 ){
            $sql =  "SELECT * FROM products WHERE id = $id";
            return $this->db->getOne($sql);
        }else{
            return null;
        }
    }
}
