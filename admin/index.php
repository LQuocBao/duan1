<?php
require_once '../app/model/database.php';
require_once '../app/model/productCateModel.php';
require_once '../app/model/productModel.php';
require_once 'app/controller/adminCateController.php';
require_once 'app/controller/adminProController.php';
require_once 'app/view/menu.php';
$db = new Database();
if (isset($_GET['page'])) {
    $page = $_GET['page'];
    switch ($page) {
        case 'category':
            $category = new CateAdminController();
            $category->viewCategory();
            break;
        case 'editcate':
            $editcate = new CateAdminController();
            $editcate->viewEditCate();
            break;
        case 'updatecate':
            $updatecate = new CateAdminController();
            $updatecate->updateCate();
            break;
        case 'viewaddcate':
            $viewaddcate = new CateAdminController();
            $viewaddcate->viewAddCate();
            break;
        case 'addcate':
            $addcate = new CateAdminController();
            $addcate->addCate();
            break;
        case 'deletecate':
            $deletecate = new CateAdminController();
            $deletecate->delCate();
            break;
        case 'product':
            $product = new ProAdminController();
            $product->viewPro();
            break;
        case 'editpro':
            $editpro = new ProAdminController();
            $editpro->viewEditPro();
            break;
        default:
            $category = new CateAdminController();
            $category->viewCategory();
            break;
    }
} else {
    $category = new CateAdminController();
    $category->viewCategory();
}