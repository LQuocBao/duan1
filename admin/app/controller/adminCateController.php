<?php
class CateAdminController
{
    private $data;
    private $category;

    function __construct()
    {
        $this->category = new CategoryModel();
    }
    //view giao diện
    function view($data)
    {
        require_once './app/view/category.php';
    }

    function renderView($view, $data = null)
    {
        $view = './app/view/' . $view . '.php';
        require_once $view;
    }

    function viewCategory()
    {
        $this->data['listcate'] = $this->category->getCate();
        $this->renderView('category', $this->data);
    }

    function viewAddCate()
    {
        $this->renderView('categoryAdd');
    }

    function viewEditCate()
    {
        if (isset($_GET['id']) && ($_GET['id']) > 0) {
            $id = $_GET['id'];
            $this->data['type'] = $this->category->getIdCate($id);
            $this->renderView('categoryEdit', $this->data);
        }
    }

    function updateCate()
    {
        if (isset($_POST['submit'])) {
            $data = [];
            $data['id'] = $_POST['id'];
            $data['name'] = $_POST['name'];
            $data['status'] = $_POST['status'];
            $this->category->upCate($data);
            echo '<script>alert("Đã sửa danh mục thành công")</script>';
            echo '<script>location.href="?page=category"</script>';
        }
    }

    public function addCate()
    {
        if (isset($_POST['submit'])) {
            $data = [];
            $data['name'] = $_POST['name'];
            $data['status'] = $_POST['status'];
            $this->category->insertCate($data);
        }
        echo '<script>alert("Đã thêm danh mục thành công")</script>';
        echo '<script>location.href="?page=category"</script>';
    }
}