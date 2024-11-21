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

        // function 





        function view(){
            require_once './app/view/product.php';
        }

    }