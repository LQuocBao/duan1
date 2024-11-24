<?php
class postController
{
    private $postModel;
    private $postCateModel;
    function __construct()
    {
        $this->postModel = new postModel();
        $this->postCateModel = new postCateModel();
    }
    function view()
    {
        $postDB = $this->postModel->getAllPost();

        foreach ($postDB as &$post) {
            // lấy tên danh mục cảu bài viết
            $catePost = $this->postModel->getCateId($post['idCatePost']);
            $post['catePost'] = $catePost['name'];

            // Xử lý View không để trống
            if ($post['view'] === null) {
                $post['view'] = 0;
            } else {
                $post['view'] = $post['view'];
            };
            // xử lý trạng thái
            $statusHtml = '';
            if ($post['status'] === 1) {
                $statusHtml = '<span class="status success">Đã đăng</span>';
            } else if ($post['status'] === 2) {
                $statusHtml = '<span class="status pending">Tạm ngưng</span>';
            } else if ($post['status'] === 3) {
                $statusHtml = '<span class="status danger">Chưa đăng</span>';
            }
            $post['status'] = $statusHtml;
        }
        require_once 'app/view/post.php';
    }
    function addPost()
    {
        $listCatePost = $this->postCateModel->getAllCatePost();
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $date = date('Y-m-d H:i:s');
        if (isset($_POST['submitForm'])) {
            $dataForm = [];
            $dataForm['title'] = $_POST['tieuDe'];
            $dataForm['text'] = $_POST['noiDung'];
            $dataForm['datePost'] = $date;
            $dataForm['description'] = $_POST['moTaNgan'];
            $dataForm['status'] = $_POST['status'];
            $dataForm['idCatePost'] = $_POST['danhMuc'];
            $dataForm['idUserPost'] = 1;
        }
        require_once 'app/view/postAdd.php';
    }
    function editPost()
    {
        require_once 'app/view/postEdit.php';
    }
}
