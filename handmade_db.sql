-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:8889
-- Thời gian đã tạo: Th10 26, 2024 lúc 07:52 AM
-- Phiên bản máy phục vụ: 8.0.35
-- Phiên bản PHP: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorite`
--

CREATE TABLE `favorite` (
  `id` int NOT NULL,
  `dateFavorite` datetime NOT NULL,
  `idUser` int NOT NULL,
  `idProduct` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `favorite`
--

INSERT INTO `favorite` (`id`, `dateFavorite`, `idUser`, `idProduct`) VALUES
(1, '2024-11-25 09:34:50', 3, 39),
(2, '2024-11-25 09:34:50', 1, 41);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int NOT NULL,
  `quantity` int NOT NULL,
  `priceItem` int NOT NULL,
  `idProduct` int NOT NULL,
  `idOrder` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orderitems`
--

INSERT INTO `orderitems` (`id`, `quantity`, `priceItem`, `idProduct`, `idOrder`) VALUES
(1, 2, 100000, 39, 1),
(2, 1, 60000, 43, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `dateOrder` date NOT NULL,
  `totalPrice` int NOT NULL,
  `noteUser` text COLLATE utf8mb4_general_ci NOT NULL,
  `noteAdmin` text COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `idUser` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `dateOrder`, `totalPrice`, `noteUser`, `noteAdmin`, `name`, `address`, `phone`, `status`, `idUser`) VALUES
(1, '2024-11-25', 100000, '', '', 'Trần Chí Minh', '51/17 Tân Lập 2, Hiệp Phú, TP Thủ Đức', '0933661897', 0, 1),
(2, '2024-11-24', 60000, '', '', 'Lê Hoàng Huy', 'TP Hồ Chí Minh', '0123456789', 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `text` text COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `listImages` text COLLATE utf8mb4_general_ci,
  `datePost` datetime NOT NULL,
  `view` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `idCatePost` int NOT NULL,
  `idUserPost` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `title`, `text`, `image`, `listImages`, `datePost`, `view`, `description`, `status`, `idCatePost`, `idUserPost`) VALUES
(1, 'Khăn Bandana Handmade Sunflower', '<ul class=\"productPost-details\">\r\n                                <li><strong>Chất liệu:</strong> Sợi len cotton tự nhiên mềm mại, thoáng khí, và cực kỳ dễ chịu khi tiếp xúc với da, mang đến cảm giác thư giãn tuyệt đối.</li>\r\n                                <li><strong>Màu sắc:</strong> Nền trắng kem tinh tế kết hợp với họa tiết hoa hướng dương vàng rực rỡ, tạo nên một sự kết hợp hoàn hảo giữa sự nhẹ nhàng và nổi bật.</li>\r\n                                <li><strong>Kích thước:</strong> 55 x 55 cm (có thể điều chỉnh theo yêu cầu, rất linh hoạt để phù hợp với phong cách và nhu cầu sử dụng của bạn).</li>\r\n                                <li><strong>Khối lượng:</strong> 200g (vừa phải, không quá nặng nhưng đủ để bạn cảm nhận sự mềm mại và chất lượng của sản phẩm).</li>\r\n                            </ul>\r\n                    \r\n                            <!-- Công dụng -->\r\n                            <div class=\"productPost-usage\">\r\n                                <h2>Công dụng tuyệt vời của khăn Bandana</h2>\r\n                                <p class=\"check-item\"><strong>Phụ kiện thời trang đa năng:</strong> Không chỉ là một món đồ phụ kiện đơn giản, khăn Bandana Handmade Sunflower chính là điểm nhấn giúp bạn tạo dựng phong cách riêng biệt. Bạn có thể quàng nó quanh cổ để giữ ấm trong những buổi chiều thu mát mẻ, hoặc dùng làm băng đô cài tóc để tôn lên vẻ dịu dàng và thanh thoát. Chưa hết, khăn còn có thể được dùng để buộc túi xách hoặc thắt lưng, tạo nên sự cá tính và khác biệt, giúp bạn tỏa sáng trong mọi hoàn cảnh.</p>\r\n                                <!-- Thêm các công dụng khác ở đây -->\r\n                            </div>\r\n                    \r\n                            <!-- Ý nghĩa sản phẩm -->\r\n                            <div class=\"productPost-meaning\">\r\n                                <h2>Ý nghĩa sâu sắc của khăn Bandana Handmade Sunflower</h2>\r\n                                <p class=\"check-item\"><strong>Tôn vinh sự sáng tạo và thủ công tinh xảo:</strong> Mỗi chiếc khăn Bandana không chỉ là một món đồ thời trang mà còn là một tác phẩm nghệ thuật, được tạo ra từ đôi bàn tay khéo léo của những nghệ nhân thủ công. Họa tiết hoa hướng dương, được thêu tay cẩn thận, không chỉ mang đến vẻ đẹp thanh thoát mà còn chứa đựng những giá trị tinh thần. Hoa hướng dương là biểu tượng của sự lạc quan, sức sống và hy vọng, khiến chiếc khăn trở thành một món đồ không thể thiếu trong bộ sưu tập của những người yêu thích sự tinh tế và ý nghĩa sâu sắc.</p>\r\n                                <p class=\"check-item\"><strong>Gắn kết con người với thiên nhiên:</strong> Được làm từ sợi len tự nhiên, chiếc khăn mang lại cảm giác mềm mại, thoải mái và thân thiện với làn da. Không chỉ vậy, sự hiện diện của hoa hướng dương trên chiếc khăn khiến bạn cảm nhận được sự gần gũi với thiên nhiên, như một lời nhắc nhở về vẻ đẹp thuần khiết của thế giới xung quanh. Chiếc khăn không chỉ đẹp về hình thức mà còn mang trong mình một thông điệp về sự hòa hợp giữa con người và thiên nhiên.</p>\r\n                                <p class=\"check-item\"><strong>Hướng tới phong cách sống bền vững:</strong> Trong một thế giới đang ngày càng chú trọng đến việc bảo vệ môi trường, khăn Bandana Handmade Sunflower là sản phẩm lý tưởng cho những ai đang tìm kiếm những món đồ vừa đẹp mắt vừa thân thiện với hành tinh. Chất liệu len cotton tự nhiên, an toàn và tái chế, giúp giảm thiểu tác động tiêu cực đến môi trường. Đây là một món đồ không chỉ có giá trị về mặt thời trang mà còn thể hiện cam kết sống bền vững của bạn.</p>\r\n                                <p class=\"check-item\"><strong>Vẻ đẹp tinh tế nhưng gần gũi:</strong> Khăn Bandana Handmade Sunflower không cần phải quá cầu kỳ để thể hiện sự sang trọng. Với thiết kế đơn giản nhưng đầy cảm hứng, khăn mang đến vẻ đẹp tinh tế và gần gũi, phù hợp với nhiều đối tượng người dùng. Đây là sự kết hợp hoàn hảo giữa giá trị thủ công truyền thống và xu hướng thời trang hiện đại, mang lại một sản phẩm vừa đẹp vừa có ý nghĩa.</p>\r\n                            </div>\r\n\r\n                            <div class=\"productPost-additional\">\r\n                                <h2>Tại sao bạn nên sở hữu khăn Bandana Handmade này?</h2>\r\n                                <p class=\"check-item\"><strong>Thiết kế độc đáo:</strong> Mỗi chiếc khăn Bandana Handmade Sunflower là một tác phẩm nghệ thuật đặc biệt, với từng họa tiết hoa hướng dương được thêu tay tỉ mỉ. Chính vì vậy, mỗi chiếc khăn đều mang một phong cách riêng biệt, không giống bất kỳ sản phẩm nào khác. Đây chính là điểm nhấn giúp bạn thể hiện cá tính và phong cách riêng biệt của mình.</p>\r\n                                <p class=\"check-item\"><strong>Độ bền vượt trội:</strong> Với chất liệu sợi len cotton tự nhiên, chiếc khăn không chỉ mềm mại mà còn rất bền, không dễ bị hư hỏng hay phai màu theo thời gian. Bạn có thể sử dụng chiếc khăn này hàng ngày mà không phải lo lắng về độ bền của nó.</p>\r\n                                <p class=\"check-item\"><strong>Dễ dàng bảo quản:</strong> Một trong những ưu điểm lớn của khăn Bandana là sự dễ dàng trong việc bảo quản. Bạn có thể giặt tay hoặc giặt máy ở chế độ nhẹ mà không lo sợi vải bị xơ hay mất màu. Khăn vẫn giữ được hình dáng và vẻ đẹp nguyên vẹn sau nhiều lần giặt.</p>\r\n                                <p class=\"check-item\"><strong>Phong cách thời thượng:</strong> Khăn Bandana Handmade Sunflower là món đồ không thể thiếu trong tủ đồ của những người yêu thích thời trang. Nó không chỉ làm nổi bật phong cách của bạn mà còn giúp bạn luôn tự tin và thu hút ánh nhìn trong mọi dịp.</p>\r\n                                <p class=\"check-item\"><strong>Phụ kiện không lỗi mốt:</strong> Đây là sản phẩm lý tưởng cho mọi mùa trong năm. Với thiết kế vượt thời gian và dễ dàng kết hợp với mọi trang phục, khăn Bandana Handmade Sunflower sẽ luôn là món đồ yêu thích và không bao giờ lỗi mốt.</p>\r\n                            </div>', 'khan-bandana.jpg', NULL, '2024-11-25 09:32:18', 10, ' Khăn bandana len tại Trạm Nhỏ Xinh mang đến sự kết hợp hoàn hảo giữa ấm áp và thời trang. Chất liệu len mềm mịn giúp bạn giữ ấm và tạo điểm nhấn cho mọi bộ trang phục. Phù hợp với nhiều phong cách, khăn bandana là món phụ kiện không thể thiếu cho vẻ ngoài năng động và sành điệu.', 1, 2, 2),
(2, 'Túi Handmade Shoulder Len', '<ul class=\"productPost-details\">\r\n                    <li><strong>Chất liệu:</strong> Sợi len cotton tự nhiên, mềm mại và bền bỉ, mang đến cảm giác thoải mái khi sử dụng.</li>\r\n                    <li><strong>Màu sắc:</strong> Trắng tinh khiết, dễ dàng phối hợp với nhiều trang phục khác nhau, mang đến vẻ đẹp trang nhã và tinh tế.</li>\r\n                    <li><strong>Kích thước:</strong> 25 x 20 x 10 cm, phù hợp với nhu cầu sử dụng hàng ngày, dễ dàng mang theo mọi lúc mọi nơi.</li>\r\n                    <li><strong>Khối lượng:</strong> 400g, tạo cảm giác vững chắc và chắc chắn khi sử dụng mà không quá nặng nề.</li>\r\n                </ul>\r\n                \r\n    \r\n                <!-- Công dụng -->\r\n                <div class=\"productPost-usage\">\r\n                    <h2>Công dụng</h2>\r\n                    <p class=\"check-item\"><strong>Phù hợp cho mọi dịp:</strong> Chiếc túi này không chỉ là món phụ kiện thời trang mà còn là người bạn đồng hành lý tưởng trong mọi hoạt động hàng ngày. Bạn có thể dễ dàng mang theo túi khi đi làm, đi chơi, đi học hay đi dạo phố mà không lo thiếu sự tiện dụng.</p>\r\n                    <p class=\"check-item\"><strong>Phong cách thời trang đa dạng:</strong> Với thiết kế tối giản, chiếc túi dễ dàng kết hợp với nhiều trang phục khác nhau. Dù bạn theo đuổi phong cách vintage, tối giản hay hiện đại, chiếc túi này đều có thể làm nổi bật phong cách cá nhân của bạn.</p>\r\n                    <p class=\"check-item\"><strong>Độ bền vượt trội:</strong> Túi được làm từ sợi len tự nhiên bền đẹp, chịu được tác động mạnh mẽ từ môi trường bên ngoài. Khả năng chịu lực và độ bền của túi đảm bảo rằng bạn có thể sử dụng túi hàng ngày mà không lo bị hư hỏng.</p>\r\n                    <p class=\"check-item\"><strong>Dễ dàng bảo quản và vệ sinh:</strong> Túi len mềm mại, dễ dàng giặt tay và bảo quản. Bạn không cần phải lo lắng về việc túi bị bẩn, vì chất liệu len giúp túi giữ được độ mới mẻ qua thời gian sử dụng.</p>\r\n                    <p class=\"check-item\"><strong>Đặc biệt trong những ngày mưa:</strong> Nhờ khả năng chống thấm nhẹ, túi có thể chịu được những cơn mưa nhẹ mà không làm ảnh hưởng đến chất lượng của sản phẩm. Đây là một ưu điểm lớn cho những ai thường xuyên di chuyển ngoài trời.</p>\r\n                </div>\r\n    \r\n                <!-- Ý nghĩa sản phẩm -->\r\n                <div class=\"productPost-meaning\">\r\n                    <h2>Ý nghĩa sản phẩm</h2>\r\n                    <p class=\"check-item\"><strong>Biểu tượng của sự sáng tạo và thủ công tinh tế:</strong> Mỗi chiếc túi không chỉ là một món đồ thời trang mà còn là một tác phẩm nghệ thuật, thể hiện sự khéo léo và tỉ mỉ của các nghệ nhân thủ công. Sự kết hợp giữa chất liệu tự nhiên và bàn tay tài hoa của người thợ tạo nên một sản phẩm độc đáo, mang đậm dấu ấn cá nhân.</p>\r\n                    <p class=\"check-item\"><strong>Một lời cam kết với môi trường:</strong> Sản phẩm này không chỉ đơn thuần là một chiếc túi đẹp mà còn là một hành động thiết thực trong việc bảo vệ hành tinh. Việc sử dụng các chất liệu tái chế không chỉ giảm thiểu tác động tiêu cực đến môi trường mà còn thể hiện trách nhiệm của chúng ta trong việc bảo vệ thiên nhiên cho thế hệ tương lai.</p>\r\n                    <p class=\"check-item\"><strong>Tôn vinh phong cách sống đơn giản:</strong> Sự đơn giản trong thiết kế nhưng lại vô cùng tinh tế chính là minh chứng cho một phong cách sống tối giản nhưng đầy ý nghĩa. Túi Handmade Shoulder Len là món đồ lý tưởng cho những ai yêu thích phong cách sống đơn giản.</p>\r\n                    <p class=\"check-item\"><strong>Kết nối con người với thiên nhiên:</strong> Được làm từ sợi len tự nhiên, chiếc túi này không chỉ mang đến cảm giác dễ chịu, thoải mái khi sử dụng mà còn là sự kết nối gần gũi với thiên nhiên. Mỗi lần sử dụng chiếc túi này, bạn không chỉ cảm nhận được vẻ đẹp của sự tinh tế mà còn cảm nhận được sự tươi mới, gần gũi mà thiên nhiên mang lại.</p>\r\n                </div>\r\n    \r\n                <!-- Nội dung bổ sung -->\r\n                <div class=\"productPost-additional\">\r\n                    <h2>Lý do bạn không thể bỏ qua chiếc túi Handmade này</h2>\r\n                    <p class=\"check-item\"><strong>Sự tinh xảo trong từng đường kim mũi chỉ:</strong> Mỗi chiếc túi đều được làm thủ công tỉ mỉ bởi những người thợ lành nghề, đảm bảo sự độc đáo và chất lượng cao nhất. Không có chiếc túi nào giống nhau, và chính điều đó tạo nên giá trị riêng biệt cho từng sản phẩm.</p>\r\n                    <p class=\"check-item\"><strong>Độ bền vượt thời gian:</strong> Túi được làm từ chất liệu sợi len tự nhiên, mang lại độ bền cao và khả năng chịu lực ấn tượng. Dù bạn mang theo sách vở đi học hay đồ dùng cá nhân, chiếc túi này vẫn luôn đồng hành cùng bạn.</p>\r\n                    <p class=\"check-item\"><strong>Chống thấm nhẹ, sẵn sàng cho mọi thời tiết:</strong> Với khả năng chống thấm nhẹ, chiếc túi vẫn giữ được vẻ đẹp nguyên vẹn trong những ngày mưa nhẹ, giúp bạn an tâm sử dụng mọi lúc, mọi nơi.</p>\r\n                    <p class=\"check-item\"><strong>Phong cách sống bền vững:</strong> Bằng việc lựa chọn sản phẩm này, bạn không chỉ sở hữu một món đồ đẹp mà còn góp phần bảo vệ môi trường. Sản phẩm được làm từ sợi len tái chế, giúp giảm thiểu rác thải và bảo vệ hành tinh.</p>\r\n                    <p class=\"check-item\"><strong>Món quà đầy ý nghĩa:</strong> Đây là món quà tuyệt vời cho những người thân yêu, hoặc cho chính bản thân bạn, để thể hiện sự yêu thích đối với sự tinh tế và phong cách sống tối giản. Một món quà không chỉ đẹp về hình thức mà còn mang giá trị tinh thần sâu sắc.</p>\r\n                </div>', 'tui-shouder-len.jpg', NULL, '2024-11-25 09:33:52', 10, 'Túi Handmade Shoulder Len tại Trạm Nhỏ Xinh là sự kết hợp hoàn hảo giữa nét đẹp thủ công và phong cách hiện đại. Được làm từ len chất lượng cao, túi mềm mại nhưng chắc chắn, dây đeo vai thoải mái và màu sắc tinh tế, mang đến vẻ ngoài thời trang, phù hợp cho những ai yêu thích sự độc đáo và cá tính.', 1, 6, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `postcate`
--

CREATE TABLE `postcate` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `postcate`
--

INSERT INTO `postcate` (`id`, `name`, `status`) VALUES
(1, 'Tô màu', 0),
(2, 'Phụ kiện', 1),
(3, 'Trang trí', 0),
(4, 'Vòng tay', 1),
(5, 'Nón len', 0),
(6, 'Túi len', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcate`
--

CREATE TABLE `productcate` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `productcate`
--

INSERT INTO `productcate` (`id`, `name`, `status`) VALUES
(1, 'Tô màu', 1),
(2, 'Phụ kiện', 1),
(3, 'Trang trí', 1),
(4, 'Vòng tay', 1),
(5, 'Nón len', 1),
(6, 'Túi len', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcomment`
--

CREATE TABLE `productcomment` (
  `id` int NOT NULL,
  `dateProComment` date NOT NULL,
  `text` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `idProduct` int NOT NULL,
  `idUser` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `productcomment`
--

INSERT INTO `productcomment` (`id`, `dateProComment`, `text`, `status`, `idProduct`, `idUser`) VALUES
(1, '2024-11-24', 'Sản phẩm đẹp', 1, 39, 1),
(2, '2024-11-24', 'Sản phẩm đẹp', 1, 40, 1),
(3, '2024-11-24', 'Sản phẩm đẹp', 1, 41, 1),
(4, '2024-11-24', 'Sản phẩm đẹp', 1, 42, 1),
(5, '2024-11-24', 'Sản phẩm đẹp', 1, 43, 1),
(6, '2024-11-24', 'Sản phẩm đẹp', 1, 44, 1),
(7, '2024-11-24', 'Sản phẩm đẹp', 1, 45, 1),
(8, '2024-11-24', 'Sản phẩm đẹp', 1, 46, 1),
(9, '2024-11-24', 'Sản phẩm đẹp', 1, 47, 1),
(10, '2024-11-24', 'Sản phẩm đẹp', 1, 48, 1),
(11, '2024-11-24', 'Sản phẩm đẹp', 1, 49, 1),
(12, '2024-11-24', 'Sản phẩm đẹp', 1, 50, 1),
(13, '2024-11-24', 'Sản phẩm đẹp', 1, 51, 1),
(14, '2024-11-24', 'Sản phẩm đẹp', 1, 52, 1),
(15, '2024-11-24', 'Sản phẩm đẹp', 1, 53, 1),
(16, '2024-11-24', 'Sản phẩm đẹp', 1, 54, 1),
(17, '2024-11-24', 'Sản phẩm đẹp', 1, 55, 1),
(18, '2024-11-24', 'Sản phẩm đẹp', 1, 56, 1),
(19, '2024-11-24', 'Sản phẩm đẹp', 1, 57, 1),
(20, '2024-11-24', 'Sản phẩm đẹp', 1, 58, 1),
(21, '2024-11-24', 'Sản phẩm đẹp', 1, 67, 1),
(22, '2024-11-24', 'Sản phẩm đẹp', 1, 68, 1),
(23, '2024-11-24', 'Sản phẩm đẹp', 1, 69, 1),
(24, '2024-11-24', 'Sản phẩm đẹp', 1, 70, 1),
(25, '2024-11-24', 'Sản phẩm đẹp', 1, 71, 1),
(26, '2024-11-24', 'Tịt dời', 1, 39, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `salePrice` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `detail` text COLLATE utf8mb4_general_ci,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `listImages` text COLLATE utf8mb4_general_ci,
  `color` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `material` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `quantity` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `view` int DEFAULT NULL,
  `idCate` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `salePrice`, `description`, `detail`, `image`, `listImages`, `color`, `material`, `size`, `quantity`, `status`, `view`, `idCate`) VALUES
(39, 'Gương mori', 50000, NULL, NULL, NULL, 'guong-mori.jpg', NULL, 'Vải bạc', 'Kim loại', '0', 1, 1, NULL, 2),
(40, 'Gương thêu hoa', 120000, NULL, NULL, NULL, 'guong-theu-hoa.jpg', 'guong-theu-hoa1.jpg,\r\nguong-theu-hoa2.jpg,\r\nguong-theu-hoa3.jpg', 'Vải thêu', 'Kim loại', '0', 1, 1, NULL, 2),
(41, 'Cột tóc thêu', 40000, NULL, NULL, NULL, 'cot-toc-theu.jpg', 'cot-toc-theu1.jpg,\r\ncot-toc-theu2.jpg,\r\ncot-toc-theu3.jpg', 'Không', 'Vải thun', '0', 1, 1, NULL, 2),
(42, 'Móc khóa gỗ vải', 30000, NULL, NULL, NULL, 'moc-khoa-go-vai.jpg', 'moc-khoa-go-vai1.jpg,\nmoc-khoa-go-vai2.jpg,\nmoc-khoa-go-vai3.jpg,\nmoc-khoa-go-vai4.jpg', 'Không', 'Gỗ', '0', 1, 1, NULL, 2),
(43, 'Móc khóa len', 60000, NULL, NULL, NULL, 'moc-khoa-len.jpg', 'moc-khoa-len1.jpg,\r\nmoc-khoa-len2.jpg', 'Không', 'Len', '0', 1, 1, NULL, 2),
(44, 'Khăn bandana', 165000, NULL, NULL, NULL, 'khan-bandana.jpg', 'khan-bandana1.jpg,\r\nkhan-bandana2.jpg', 'Xanh lá, Trắng', 'Len', '0', 1, 1, NULL, 2),
(45, 'Cột Srunchies', 265000, NULL, NULL, NULL, 'cot-srunchies.jpg', 'cot-srunchies1.jpg', 'Trắng, Đen', 'Vải', '0', 1, 1, NULL, 2),
(46, 'Dây đeo lý ức', 60000, NULL, NULL, NULL, 'day-deo-ky-uc.jpg', NULL, 'Xanh ngọc', 'Dây đá', '0', 1, 1, NULL, 4),
(47, 'Hồng Ngọc Lửa', 60000, NULL, NULL, NULL, 'hong-ngoc-lua.jpg', 'hong-ngoc-lua1.jpg', 'Đỏ', 'Dây đá', '0', 1, 1, NULL, 4),
(48, 'Ngọc xanh đại dương', 60000, NULL, NULL, NULL, 'ngoc-xanh-dai-duong.jpg', 'ngoc-xanh-dai-duong1.jpg', 'Xanh dương', 'Dây đá', '0', 1, 1, NULL, 4),
(49, 'Vòng dây basic', 40000, NULL, NULL, NULL, 'vong-day-basic.jpg', 'vong-day-basic1.jpg,\r\nvong-day-basic2.jpg', 'Trắng', 'Dây đá', '0', 1, 1, NULL, 4),
(50, 'Trầm Ngọc Bình Yên', 60000, NULL, NULL, NULL, 'tram-ngoc-binh-yen.jpg', NULL, 'Trăng, nâu', 'Dây đá', '0', 1, 1, NULL, 4),
(51, 'Lục lạc huyền bí', 60000, NULL, NULL, NULL, 'luc-lac-huyen-bi.jpg', NULL, 'Đen tím', 'Dây đá', '0', 1, 1, NULL, 4),
(52, 'Combo basic', 200000, NULL, NULL, NULL, 'combo-basic.jpg', NULL, 'Đen', 'Dây đá', '0', 1, 1, NULL, 4),
(53, 'Combo đá hồng', 250000, NULL, NULL, NULL, 'combo-da-hong.jpg', 'combo-da-hong1.jpg', 'Hồng', 'Dây đá', '0', 1, 1, NULL, 4),
(54, 'Combo đá, dây trắng', 250000, NULL, NULL, NULL, 'combo-da-day-trang.jpg', 'combo-da-day-trang1.jpg', 'Trắng', 'Dây đá', '0', 1, 1, NULL, 4),
(55, 'Combo đá dây đen', 250000, NULL, NULL, NULL, 'combo-da-day-den.jpg', 'combo-da-day-den1.jpg,\r\ncombo-da-day-den2.jpg,\r\ncombo-da-day-den3.jpg', 'Đen', 'Dây đá', '0', 1, 1, NULL, 4),
(56, 'Combo đá xanh', 250000, NULL, NULL, NULL, 'combo-da-xanh.jpg', 'combo-da-xanh1.jpg,\r\ncombo-da-xanh2.jpg', 'Xanh biển', 'Dây đá', '0', 1, 1, NULL, 4),
(57, 'Combo đá tím', 250000, NULL, NULL, NULL, 'combo-da-tim.jpg', NULL, 'Tím', 'Dây đá', '0', 1, 1, NULL, 4),
(58, 'Combo đá dây nâu', 250000, NULL, NULL, NULL, 'combo-da-day-nau1.jpg', 'combo-da-day-nau2.jpg,\ncombo-da-day-nau3.jpg', 'Nâu', 'Dây đá', '0', 1, 1, NULL, 4),
(67, 'Túi hoa len', 270000, NULL, NULL, NULL, 'tui-hoa-len.jpg', NULL, 'Trắng xanh', 'Len', '0', 1, 1, NULL, 6),
(68, 'Túi popcorn len', 250000, NULL, NULL, NULL, 'tui-popcorn-len.jpg', 'tui-popcorn-len1.jpg', 'Trắng, đỏ', 'Len', '0', 1, 1, NULL, 6),
(69, 'Túi Cinta len', 200000, NULL, NULL, NULL, 'tui-cinta-len.jpg', NULL, 'Trắng', 'Len', '0', 1, 1, NULL, 6),
(70, 'Túi vuông len', 180000, NULL, NULL, NULL, 'tui-vuong-len.jpg', 'tui-vuong-len1.jpg,\r\ntui-vuong-len2.jpg', 'Nâu, Hồng', 'Len', '0', 1, 1, NULL, 6),
(71, 'Túi tote len', 180000, NULL, NULL, NULL, 'tui-tote-len.jpg', NULL, 'Nâu', 'Len', '0', 1, 1, NULL, 6),
(72, 'Túi 2 dây nhỏ len', 100000, NULL, NULL, NULL, 'tui-2-day-nho-len.jpg', 'tui-2-day-nho-len1.jpg', 'Trắng, xanh lá mạ', 'Len', '0', 1, 1, NULL, 6),
(73, 'Túi xách tay nhỏ len', 150000, NULL, NULL, NULL, 'tui-xach-tay-nho-len.jpg', 'tui-xach-tay-nho-len1.jpg,\ntui-xach-tay-nho-len2.jpg', 'Xanh dương, Vàng', 'Len', '0', 1, 1, NULL, 6),
(74, 'Túi shouder len', 200000, NULL, NULL, NULL, 'tui-shouder-len.jpg', NULL, 'Trắng', 'Len', '0', 1, 1, NULL, 6),
(75, 'Nón len', 260000, NULL, NULL, NULL, 'non-len.jpg', 'non-len1.jpg,\nnon-len2.jpg,\nnon-len3.jpg,\nnon-len4.jpg', 'Xanh da trời, Nâu, Trắng', 'Len', '0', 1, 1, NULL, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int NOT NULL,
  `text` text COLLATE utf8mb4_general_ci,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `star` tinyint(1) NOT NULL,
  `dateRating` datetime NOT NULL,
  `idUser` int NOT NULL,
  `idProduct` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `text`, `image`, `star`, `dateRating`, `idUser`, `idProduct`) VALUES
(1, 'Quá xứng đáng', NULL, 5, '2024-11-25 09:35:16', 1, 39),
(2, 'Tốt', NULL, 4, '2024-11-25 10:43:40', 3, 39);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `address`, `phone`, `name`, `role`, `active`) VALUES
(1, 'minhtcps38149@gmail.com', '123', '51/17 Tân Lập 2, Hiệp Phú, TP Thủ Đức', '0933661897', 'Trần Chí Minh', 0, 0),
(2, 'baolqps38243@gmail.com', '123', 'Khu vực 4, Thị trấn Hiệp Hòa, Đức Hòa, Long An', '0785548882', 'Lâm Quốc Bảo', 1, 1),
(3, 'huylhps38048@gmail.com', '123', '121 Bến Vân Đồn, phường 9 Quận 4, TP Hồ Chí Minh', '0373190273', 'Lê Hoàng Huy', 0, 2);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `postcate`
--
ALTER TABLE `postcate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `productcate`
--
ALTER TABLE `productcate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `productcomment`
--
ALTER TABLE `productcomment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
