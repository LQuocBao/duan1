<?php
require_once 'app/view/menu.php';
require_once 'app/view/category.php';
require_once '../app/model/database.php';
$db = new Database();

if(isset($_GET['page'])){
    $page = $_GET['page'];
    switch ($page){
        case 'menu'
    }
}