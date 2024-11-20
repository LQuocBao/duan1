<div class="main">
                    <div class="main-category">
                        <div class="main-danhmuc">
                            <p>Đơn hàng</p>
                            <!-- <a href="">+ Thêm sản phẩm</a> -->
                        </div>
                        <div class="main-header">
                            <!-- <div class="left-main-header">
                                <p>Đã chọn 3 mục</p>
                                <a href="">Xóa</a>
                            </div> -->
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
                                    <th>Mã</th>
                                    <th>Tên người dùng</th>
                                    <th>Địa chỉ</th>
                                    <th>Số điện thoại</th>
                                    <th>Ngày tạo đơn</th>
                                    <th>Ghi chú</th>
                                    <th>Trạng thái</th>
                                    <th>Xem</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- 1 box -->
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>#1234</td>
                                    <td>Họ và tên</td>
                                    <td>Address</td>
                                    <td>01234567890</td>
                                    <td>01/01/2021</td>
                                    <td>Note</td>
                                    <td><span class="status success">Đã giao hàng</span></td>
                                    <td><a href="../html/adminOrderView.html">Xem</a></td>
                                </tr>
                                <!-- 1 box -->
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>#1234</td>
                                    <td>Họ và tên</td>
                                    <td>Address</td>
                                    <td>01234567890</td>
                                    <td>01/01/2021</td>
                                    <td>Note</td>
                                    <td><span class="status pending">Đang vận chuyển</span></td>
                                    <td><a href="../html/adminOrderView.html">Xem</a></td>
                                </tr>
                                <!-- 1 box -->
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>#1234</td>
                                    <td>Họ và tên</td>
                                    <td>Address</td>
                                    <td>01234567890</td>
                                    <td>01/01/2021</td>
                                    <td>Note</td>
                                    <td><span class="status danger">Hủy đơn hàng</span></td>
                                    <td><a href="../html/adminOrderView.html">Xem</a></td>
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