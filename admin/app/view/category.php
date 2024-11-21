<div class="main">
    <form action="?page=deletecate" method="post" id="delete-form"> <!-- Form gửi dữ liệu xóa -->
        <div class="main-category">
            <div class="main-danhmuc">
                <p>Danh mục</p>
                <a href="?page=viewaddcate">+ Thêm danh mục</a>
            </div>
            <div class="main-header">
                <div class="left-main-header">
                    <p id="selected-count">Đã chọn 0 mục</p>
                    <button type="submit" id="delete-btn" style="display: none;">Xóa</button> <!-- Nút Xóa -->
                </div>
                <div class="right-main-header">
                    <input type="text" placeholder="Tìm kiếm">
                    <div class="filter"><i class="fa-solid fa-filter"></i></div>
                    <div class="sort"><i class="fa-solid fa-arrow-down-a-z"></i></div>
                </div>
            </div>
        </div>

        <div class="main-product">
            <table>
                <thead>
                    <tr>
                        <th><input type="checkbox" id="select-all"></th> <!-- Checkbox chọn tất cả -->
                        <th>ID</th>
                        <th>Danh mục</th>
                        <th>Trạng thái</th>
                        <th>Sửa</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($data['listcate'] as $item) {
                        extract($item); ?>
                        <tr>
                            <td>
                                <input type="checkbox" class="item-checkbox" name="delete_ids[]" value="<?= $id ?>"> <!-- Checkbox từng mục -->
                            </td>
                            <td><?= $id ?></td>
                            <td><?= $name ?></td>
                            <?php
                            if ($status === 1) echo '<td><span class="status success">Đang hoạt động</span></td>';
                            if ($status === 2) echo '<td><span class="status pending">Tạm ngưng</span></td>';
                            if ($status === 3) echo '<td><span class="status danger">Đã hủy</span></td>';
                            ?>
                            <td><a href="?page=editcate&id=<?= $id ?>">Sửa</a></td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </form>
    <div class="main-turnpage">
        <button class="prev">1</button>
        <button class="next">2</button>
        <button class="nextpage">></button>
    </div>
</div>

</div>
</div>
</div>
<script>
    document.addEventListener('DOMContentLoaded', () => {
        const selectAllCheckbox = document.getElementById('select-all');
        const itemCheckboxes = document.querySelectorAll('.item-checkbox');
        const deleteBtn = document.getElementById('delete-btn');
        const selectedCount = document.getElementById('selected-count');

        // Hàm cập nhật số lượng đã chọn
        const updateSelectedCount = () => {
            const checkedCount = document.querySelectorAll('.item-checkbox:checked').length;
            selectedCount.textContent = `Đã chọn ${checkedCount} mục`;
            deleteBtn.style.display = checkedCount > 0 ? 'inline-block' : 'none'; // Hiển thị nút xóa nếu có mục được chọn
        };

        // Xử lý chọn tất cả checkbox
        selectAllCheckbox.addEventListener('change', function() {
            const isChecked = this.checked;
            itemCheckboxes.forEach((checkbox) => {
                checkbox.checked = isChecked;
            });
            updateSelectedCount();
        });

        // Xử lý checkbox từng mục
        itemCheckboxes.forEach((checkbox) => {
            checkbox.addEventListener('change', updateSelectedCount);
        });

        // Cập nhật trạng thái ban đầu
        updateSelectedCount();
    });
</script>
</body>

</html>