<div class="main">
    <div class="main-category">
        <div class="main-danhmuc">
            <p>Sản Phẩm</p>
            <a href="../html/adminProAdd.html">+ Thêm sản phẩm</a>
        </div>
        <div class="main-header">
            <div class="left-main-header">
                <p>Đã chọn 3 mục</p>
                <a href="">Xóa</a>
            </div>
            <div class="right-main-header">
                <input type="text" placeholder="Tìm kiếm">
                <div class="filter"><i class="fa-solid fa-filter"></i></div>
                <div class="sort"><i class="fa-solid fa-arrow-down-a-z"></i></div>
            </div>
        </div>
    </div>
    <!-- Body chính (Cứ sửa những cột trong bảng, nếu dư thì cứ xóa, nó tự nhảy) -->
    <!--không cần phải css thêm -->
    <div class="main-product">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox"></th>
                    <th>ID</th>
                    <th>Hình Ảnh</th>
                    <th>Hình Phụ</th>
                    <th>Tên Sản Phẩm</th>
                    <th>Giá Gốc</th>
                    <th>Giá Giảm</th>
                    <th>Số lượng</th>
                    <th>Trạng thái</th>
                    <th>Sửa</th>
                </tr>
            </thead>
            <tbody>
                <!-- 1 box -->
                <?php foreach ($data['listpro'] as $item) {
                    extract($item);
                    $images = !empty($listImages) ? explode(',', $listImages) : [];
                ?>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td><?= $id ?></td>
                        <td><img src="../public/image/<?= $image ?>" alt="" width="100px" height="100px"></td>
                        <td><?php if (!empty($images)): ?>
                                <?php foreach ($images as $img): ?>
                                    <img src="../public/image/<?= trim($img) ?>"
                                        alt="Ảnh phụ"
                                        width="30px" height="30px"
                                        class="thumbnail"
                                        onclick="openPopup('../public/image/<?= trim($img) ?>')">
                                <?php endforeach; ?>
                            <?php else: ?>
                                Chưa có ảnh
                            <?php endif; ?>
                        </td>
                        <td><?= $name ?></td>
                        <td><?= number_format($price, 0, ',', '.') ?></td>
                        <td><?= number_format($salePrice, 0, ',', '.') ?></td>
                        <td><?= $quantity ?></td>
                        <?php
                        if ($status === 1) echo '<td><span class="status success">Đang hoạt động</span></td>';
                        if ($status === 2) echo '<td><span class="status pending">Tạm ngưng</span></td>';
                        if ($status === 0) echo '<td><span class="status danger">Đã hủy</span></td>';
                        ?>
                        <td><a href="?page=editpro&id=<?= $id ?>">Sửa</a></td>
                    </tr>
                <?php } ?>
                <!-- Popup Container -->
                <div id="popup" class="popup" onclick="closePopup()">
                    <span class="close-btn">&times;</span>
                    <img id="popup-img" class="popup-content" alt="Popup Image">
                </div>
            </tbody>
        </table>
    </div>
    <!-- button chuyển trang -->
    <div class="main-turnpage">
        <button class="prev">1</button>
        <button class="next">2</button>
        <button class="nextpage">></button>
    </div>
</div>
</div>
</div>
</div>
</body>
<script src="public/js/popup.js"></script>

</html>