<div class="main">
    <div class="main-category">
        <div class="main-danhmuc">
            <p>Thêm sản phẩm</p>
            <a href="?page=product">Quay về</a>
        </div>
        <div class="main-header">
            <div class="right-main-header">
                <input type="text" placeholder="Tìm kiếm">
                <div class="filter"><i class="fa-solid fa-filter"></i></div>
                <div class="sort"><i class="fa-solid fa-arrow-down-a-z"></i></div>
            </div>
        </div>
    </div>
    <!-- xong phần header -->
    <form action="?page=updatepro" method="post" enctype="multipart/form-data">
        <?php extract($data['detail']); ?>
        <div class="main-product">
            <div class="category-main-product">
                <label for="Tên danh mục">Tên sản phẩm</label>
                <input type="text" value="<?= $name ?>" name="name">
            </div>
            <div class="category-main-product">
                <label for="">Giá sản phẩm</label>
                <input type="text" name="price" value="<?= $price ?>">
            </div>
            <div class="category-main-product">
                <label for="">Giá giảm</label>
                <input type="text" name="salePrice" value="<?= $salePrice ?>">
            </div>
            <div class="category-main-product">
                <label for="">Số lượng</label>
                <input type="number" name="quantity" value="<?= $quantity ?>">
            </div>
            <div class="category-main-product">
                <label for="status">Trạng thái</label>
                <select name="status" id="">
                    <option class="status success" value="" <?= ($status === 1) ? 'selected' : '' ?>>Đã hoạt động</option>
                    <option class="status pending" value="" <?= ($status === 2) ? 'selected' : '' ?>>Tạm ngưng</option>
                    <option class="status danger" value="" <?= ($status === 3) ? 'selected' : '' ?>>Đã hủy</option>
                </select>
            </div>
            <div class="category-main-product">
                <label for="">Hình ảnh</label>
                <input type="text" value="<?= $image ?>">
            </div>
            <div class="category-main-product">
                <label for="">Nhóm ảnh</label>
                <input type="text" value="<?= $listImages ?>">
            </div>
        </div>
        <div class="submit-main-product">
            <button type="submit" name="submit">Cập nhật</button>
        </div>
    </form>
</div>
</div>
</div>
</div>
</body>

</html>