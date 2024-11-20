<div class="main">
    <div class="main-category">
        <div class="main-danhmuc">
            <p>Bài viết</p>
            <a href="../html/adminPostAdd.html">+ Thêm bài viết</a>
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
                    <th>Tiêu đề</th>
                    <th>Lượt xem</th>
                    <th>Ngày đăng</th>
                    <th>Trạng thái</th>
                    <th>Sửa</th>
                </tr>
            </thead>
            <tbody>
                <!-- 1 box -->
                <tr>
                    <td><input type="checkbox"></td>
                    <td>Tên bài viết</td>
                    <td>Lượt xem</td>
                    <td>Ngày đăng</td>
                    <td><span class="status success">Đã đăng</span></td>
                    <td><a href="../html/adminPostEdit.html">Sửa</a></td>
                </tr>
                <!-- 1 box -->
                <!-- <tr>
                                    <td><input type="checkbox"></td>
                                    <td>Tên bài viết</td>
                                    <td>Lượt xem</td>
                                    <td>Ngày đăng</td>
                                    <td><span class="status pending">Đã đăng</span></td>
                                    <td>Sửa</td>
                                </tr> -->
                <!-- 1 box -->
                <tr>
                    <td><input type="checkbox"></td>
                    <td>Tên bài viết</td>
                    <td>Lượt xem</td>
                    <td>Ngày đăng</td>
                    <td><span class="status danger">Chưa đăng</span></td>
                    <td><a href="../html/adminPostEdit.html">Sửa</a></td>
                </tr>
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

</html>