<?php
    class ProAdminController{
        private $product;
        private $data;

        function __construct()
        {
            $this->product = new ProductModel();
        }

        function renderView($view, $data=null){
            $view = './app/view/' . $view .'.php';
            require_once $view;
        }

        function viewPro(){
            $this->data['listpro'] = $this->product->getProduct();
            $this->renderView('product', $this->data);
        }

        function viewEditPro(){
            if(isset($_GET['id']) && ($_GET['id'] > 0)){
                $id = $_GET['id'];
                $this->data['detail'] = $this->product->getIdPro($id);
                $this->renderView('productEdit', $this->data);
            }else{
                $this->renderView('productEdit', $this->data);
            }
        }





        function view(){
            require_once './app/view/product.php';
        }

    }