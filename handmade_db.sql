-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2024 lúc 02:11 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `handmade_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorite`
--

CREATE TABLE `favorite` (
  `id` int(11) NOT NULL,
  `dateFavorite` datetime NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `priceItem` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `idOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orderitems`
--

INSERT INTO `orderitems` (`id`, `quantity`, `priceItem`, `idProduct`, `idOrder`) VALUES
(1, 2, 200000, 40, 1),
(2, 3, 400000, 47, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `dateOrder` date NOT NULL,
  `totalPrice` int(11) NOT NULL,
  `noteUser` text NOT NULL,
  `noteAdmin` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `dateOrder`, `totalPrice`, `noteUser`, `noteAdmin`, `name`, `address`, `phone`, `status`, `idUser`) VALUES
(1, '2024-11-22', 200000, 'Sản phẩm oke', 'Cảm ơn bạn', 'Trần Chí Khanh', 'Tân Xuân, Hóc Môn, Tp HCM', '0376134125', 1, 2),
(2, '2024-11-22', 400000, 'Tôi đề nghị shop kĩ luật bạn Huy', 'Dạ shop em ghi nhận và sẽ xem xét trường hợp nh', 'Quốc Bảo', 'Long An', '0785548882', 1, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `listImages` text DEFAULT NULL,
  `datePost` datetime NOT NULL,
  `view` int(11) DEFAULT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `idCatePost` int(11) NOT NULL,
  `idUserPost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `title`, `text`, `image`, `listImages`, `datePost`, `view`, `description`, `status`, `idCatePost`, `idUserPost`) VALUES
(4, 'Bài Viết DB', 'Bài Viết DB', 'anh.jpg', NULL, '2024-11-21 07:50:54', NULL, 'Bài Viết DB', 0, 2, 1),
(5, 'Bài viết 2', 'HAHA', 'haha.jpg', NULL, '2024-11-21 09:20:12', 2, 'sadfasfae', 0, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `postcate`
--

CREATE TABLE `postcate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `postcate`
--

INSERT INTO `postcate` (`id`, `name`, `status`) VALUES
(2, 'Túi', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcate`
--

CREATE TABLE `productcate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `productcate`
--

INSERT INTO `productcate` (`id`, `name`, `status`) VALUES
(1, 'Tô màu', 1),
(2, 'Phụ kiện', 1),
(3, 'Trang trí', 1),
(4, 'Vòng', 1),
(5, 'Nón', 1),
(6, 'Túi', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcomment`
--

CREATE TABLE `productcomment` (
  `id` int(11) NOT NULL,
  `dateProComment` date NOT NULL,
  `text` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `productcomment`
--

INSERT INTO `productcomment` (`id`, `dateProComment`, `text`, `status`, `idProduct`, `idUser`) VALUES
(1, '2024-11-22', 'Sản phẩm huy bán không như ảnh', 1, 41, 1),
(2, '2024-11-22', 'Sản phẩm tốt lắm shop đẹp nữa', 2, 39, 2),
(3, '2024-11-22', 'Sản phẩm chất lượng cao', 1, 42, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `salePrice` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `listImages` text DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `view` int(11) DEFAULT NULL,
  `idCate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `salePrice`, `description`, `detail`, `image`, `listImages`, `color`, `material`, `quantity`, `status`, `view`, `idCate`) VALUES
(39, 'Gương mori', 50000, NULL, NULL, NULL, 'guong-mori.jpg', NULL, NULL, NULL, 1, 1, NULL, 2),
(40, 'Gương thêu hoa', 120000, NULL, NULL, NULL, 'guong-theu-hoa.jpg', 'guong-theu-hoa1.jpg,\r\nguong-theu-hoa2.jpg,\r\nguong-theu-hoa3.jpg', NULL, NULL, 1, 1, NULL, 2),
(41, 'Cột tóc thêu', 40000, NULL, NULL, NULL, 'cot-toc-theu.jpg', 'cot-toc-theu1.jpg,\r\ncot-toc-theu2.jpg,\r\ncot-toc-theu3.jpg', NULL, NULL, 1, 1, NULL, 2),
(42, 'Móc khóa gỗ vải', 30000, NULL, NULL, NULL, 'moc-khoa-go-vai.jpg', 'moc-khoa-go-vai1.jpg,\r\nmoc-khoa-go-vai2.jpg,\r\nmoc-khoa-go-vai3.jpg,\r\nmoc-khoa-go-vai4.jpg,\r\nmoc-khoa-go-vai5.jpg,\r\nmoc-khoa-go-vai6.jpg,\r\nmoc-khoa-go-vai7.jpg,\r\nmoc-khoa-go-vai8.jpg,\r\nmoc-khoa-go-vai9.jpg', NULL, NULL, 1, 1, NULL, 2),
(43, 'Móc khóa len', 60000, NULL, NULL, NULL, 'moc-khoa-len.jpg', 'moc-khoa-len1.jpg,\r\nmoc-khoa-len2.jpg', NULL, NULL, 1, 1, NULL, 2),
(44, 'Khăn bandana', 165000, NULL, NULL, NULL, 'khan-bandana.jpg', 'khan-bandana1.jpg,\r\nkhan-bandana2.jpg', NULL, NULL, 1, 1, NULL, 2),
(45, 'Cột Srunchies', 265000, NULL, NULL, NULL, 'cot-srunchies.jpg', 'cot-srunchies1.jpg', NULL, NULL, 1, 1, NULL, 2),
(46, 'Dây đeo lý ức', 60000, NULL, NULL, NULL, 'day-deo-ky-uc.jpg', NULL, NULL, NULL, 1, 1, NULL, 4),
(47, 'Hồng Ngọc Lửa', 60000, NULL, NULL, NULL, 'hong-ngoc-lua.jpg', 'hong-ngoc-lua1.jpg', NULL, NULL, 1, 1, NULL, 4),
(48, 'Ngọc xanh đại dương', 60000, NULL, NULL, NULL, 'ngoc-xanh-dai-duong.jpg', 'ngoc-xanh-dai-duong1.jpg', NULL, NULL, 1, 1, NULL, 4),
(49, 'Vòng dây basic', 40000, NULL, NULL, NULL, 'vong-day-basic.jpg', 'vong-day-basic1.jpg,\r\nvong-day-basic2.jpg', NULL, NULL, 1, 1, NULL, 4),
(50, 'Trầm Ngọc Bình Yên', 60000, NULL, NULL, NULL, 'tram-ngoc-binh-yen.jpg', NULL, NULL, NULL, 1, 1, NULL, 4),
(51, 'Lục lạc huyền bí', 60000, NULL, NULL, NULL, 'luc-lac-huyen-bi.jpg', NULL, NULL, NULL, 1, 1, NULL, 4),
(52, 'Combo basic', 200000, NULL, NULL, NULL, 'combo-basic.jpg', NULL, NULL, NULL, 1, 1, NULL, 4),
(53, 'Combo đá hồng', 250000, NULL, NULL, NULL, 'combo-da-hong.jpg', 'combo-da-hong1.jpg', NULL, NULL, 1, 1, NULL, 4),
(54, 'Combo đá, dây trắng', 250000, NULL, NULL, NULL, 'combo-da-day-trang.jpg', 'combo-da-day-trang1.jpg', NULL, NULL, 1, 1, NULL, 4),
(55, 'Combo đá dây đen', 250000, NULL, NULL, NULL, 'combo-da-day-den.jpg', 'combo-da-day-den1.jpg,\r\ncombo-da-day-den2.jpg,\r\ncombo-da-day-den3.jpg', NULL, NULL, 1, 1, NULL, 4),
(56, 'Combo đá xanh', 250000, NULL, NULL, NULL, 'combo-da-xanh.jpg', 'combo-da-xanh1.jpg,\r\ncombo-da-xanh2.jpg', NULL, NULL, 1, 1, NULL, 4),
(57, 'Combo đá tím', 250000, NULL, NULL, NULL, 'combo-da-tim.jpg', NULL, NULL, NULL, 1, 1, NULL, 4),
(58, 'Combo đá dây nâu', 250000, NULL, NULL, NULL, 'combo-da-day-nau.jpg', 'combo-da-day-nau1.jpg,\r\ncombo-da-day-nau2.jpg,\r\ncombo-da-day-nau3.jpg', NULL, NULL, 1, 1, NULL, 4),
(67, 'Túi hoa len', 270000, NULL, NULL, NULL, 'tui-hoa-len.jpg', NULL, NULL, NULL, 1, 1, NULL, 6),
(68, 'Túi popcorn len', 250000, NULL, NULL, NULL, 'tui-popcorn-len.jpg', 'tui-popcorn-len1.jpg', NULL, NULL, 1, 1, NULL, 6),
(69, 'Túi Cinta len', 200000, NULL, NULL, NULL, 'tui-cinta-len.jpg', NULL, NULL, NULL, 1, 1, NULL, 6),
(70, 'Túi vuông len', 180000, NULL, NULL, NULL, 'tui-vuong-len.jpg', 'tui-vuong-len1.jpg,\r\ntui-vuong-len2.jpg', NULL, NULL, 1, 1, NULL, 6),
(71, 'Túi tote len', 180000, NULL, NULL, NULL, 'tui-tote-len.jpg', NULL, NULL, NULL, 1, 1, NULL, 6),
(72, 'Túi 2 dây nhỏ len', 100000, NULL, NULL, NULL, 'IMG_5417.jpg', 'IMG_5411.jpg', NULL, NULL, 1, 1, NULL, 6),
(73, 'Túi xách tay nhỏ len', 150000, NULL, NULL, NULL, 'IMG_5577.jpg', 'IMG_5581.jpg,\r\nIMG_5597.jpg', NULL, NULL, 1, 1, NULL, 6),
(74, 'Túi shouder len', 200000, NULL, NULL, NULL, 'IMG_4315.jpg', NULL, NULL, NULL, 1, 1, NULL, 6),
(75, 'Nón len', 260000, NULL, NULL, NULL, 'IMG_4909.jpg', 'IMG_5279.jpg,\r\nIMG_5391.jpg,\r\nIMG_5404.jpg,\r\nIMG_5406.jpg', NULL, NULL, 1, 1, NULL, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `text` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `star` tinyint(1) NOT NULL,
  `dateRating` datetime NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `address`, `phone`, `name`, `role`, `active`) VALUES
(1, 'huylhps38048@gmail.com', 'haha', NULL, NULL, NULL, 1, 1),
(2, 'chikhanhno@gmail.com', 'tck0376134125', 'Tân Xuân, Hóc Môn. Tp HCM', '0376134125', 'Trần Chí Khanh', 1, 2),
(3, 'khanhtcps38206@gmail.com', 'tck0376134125', 'Quận 12', '0123456789', 'Chí Khanh', 2, 1),
(4, 'chikhanhno1@gmail.com', '123456', 'Tân Xuân Hóc Môn', '1234567890', 'Khanh nè', 2, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idProducts` (`idProduct`);

--
-- Chỉ mục cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProducts` (`idProduct`),
  ADD KEY `idOrders` (`idOrder`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_catePost` (`idCatePost`),
  ADD KEY `idUserPost` (`idUserPost`);

--
-- Chỉ mục cho bảng `postcate`
--
ALTER TABLE `postcate`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `productcate`
--
ALTER TABLE `productcate`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `productcomment`
--
ALTER TABLE `productcomment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProducts` (`idProduct`),
  ADD KEY `idUser` (`idUser`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCate` (`idCate`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idProducts` (`idProduct`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `postcate`
--
ALTER TABLE `postcate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `productcate`
--
ALTER TABLE `productcate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `productcomment`
--
ALTER TABLE `productcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`idOrder`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`idCatePost`) REFERENCES `postcate` (`id`),
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`idUserPost`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `productcomment`
--
ALTER TABLE `productcomment`
  ADD CONSTRAINT `productcomment_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `productcomment_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idCate`) REFERENCES `productcate` (`id`);

--
-- Các ràng buộc cho bảng `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
