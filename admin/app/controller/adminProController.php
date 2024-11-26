<?php
class ProAdminController
{
    private $product;
    private $data;

    function __construct()
    {
        $this->product = new ProductModel();
    }

    function renderView($view, $data = null)
    {
        $view = './app/view/' . $view . '.php';
        require_once $view;
    }

    function viewPro()
    {
        $this->data['listpro'] = $this->product->getProduct();
        $this->renderView('product', $this->data);
    }

    function viewEditPro()
    {
        if (isset($_GET['id']) && ($_GET['id'] > 0)) {
            $id = $_GET['id'];
            $this->data['detail'] = $this->product->getIdPro($id);
            $this->renderView('productEdit', $this->data);
        } else {
            $this->renderView('productEdit', $this->data);
        }
    }

    function updatePro()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $data = []; // Tạo mảng dữ liệu để lưu vào database

            // Thu thập dữ liệu từ form
            $data['id'] = $_POST['id'];
            $data['name'] = $_POST['name'];
            $data['price'] = $_POST['price'];
            $data['salePrice'] = $_POST['salePrice'];
            $data['quantity'] = $_POST['quantity'];
            $data['status'] = $_POST['status'];

            // Xử lý hình ảnh
            $current_image = $_POST['current_image'];
            $uploaded_image = $_FILES['image'];

            if ($uploaded_image['error'] === UPLOAD_ERR_OK) {
                // Tạo tên file và di chuyển file mới
                $image_name = time() . '-' . basename($uploaded_image['name']);
                $target_dir = "../public/image/";
                $target_file = $target_dir . $image_name;

                if (move_uploaded_file($uploaded_image['tmp_name'], $target_file)) {
                    $data['image'] = $target_file; // Dùng đường dẫn ảnh mới
                } else {
                    $data['image'] = $current_image; // Nếu upload thất bại, giữ nguyên ảnh cũ
                }
            } else {
                $data['image'] = $current_image; // Nếu không upload file, giữ nguyên ảnh cũ
            }

            // Xử lý nhóm ảnh (nếu cần)
            $data['listImages'] = $_POST['listImages']; // Có thể kiểm tra hoặc xử lý thêm nếu là danh sách

            // Gọi model để cập nhật sản phẩm
            $this->product->upProduct($data);

            // Chuyển hướng về trang danh sách sản phẩm
            header("Location: ?page=product");
            exit();
        }
    }


    function view()
    {
        require_once './app/view/product.php';
    }
}
