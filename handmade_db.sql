-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 18, 2024 lúc 05:37 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.1.25

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `dateOrder` datetime NOT NULL,
  `totalPrice` int(11) NOT NULL,
  `noteUser` text NOT NULL,
  `noteAdmin` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `idCatePost` int(11) NOT NULL,
  `idUserPost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `postcate`
--

CREATE TABLE `postcate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `dateProComment` datetime NOT NULL,
  `text` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `postcate`
--
ALTER TABLE `postcate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `productcate`
--
ALTER TABLE `productcate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `productcomment`
--
ALTER TABLE `productcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
