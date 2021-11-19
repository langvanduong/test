-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2021 at 01:38 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `year`) VALUES
(1, 'Mercedes', '2000'),
(2, 'BMW', '2004'),
(3, 'Audi', '2001');

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
(1, 4, 1, 31990000),
(2, 4, 1, 31990000),
(3, 4, 1, 31990000),
(4, 44, 1, 1890000),
(5, 15, 1, 260000),
(6, 1, 4, 3490000),
(7, 35, 1, 590000);

-- --------------------------------------------------------

--
-- Table structure for table `danhgia`
--

CREATE TABLE `danhgia` (
  `MaSP` int(11) NOT NULL,
  `MaND` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SoSao` int(11) NOT NULL,
  `BinhLuan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhgia`
--

INSERT INTO `danhgia` (`MaSP`, `MaND`, `SoSao`, `BinhLuan`, `NgayLap`) VALUES
(4, '2', 4, 'Hoàng trần đẹp trai', '2021-05-09 19:28:13'),
(4, '2', 1, 'Chưa tốt! cần cải thiện nhiều', '2021-05-09 19:29:30'),
(2, '2', 4, 'Giảm giá 500k , quá gắt <3', '2021-05-07 19:31:48'),
(46, '2', 4, 'Đỏ may mắn <3', '2020-05-16 19:32:58'),
(44, '4', 5, 'wow, giá rẻ cấu hình ngon đây rồi <3', '2020-05-16 19:38:03'),
(4, '4', 4, 'đẹp', '2019-05-16 19:47:56'),
(2, '4', 3, 'aaa sơn cmn tùng <3', '2021-05-03 19:48:46'),
(44, '4', 3, 'Ram có 1GB tiếc quá', '2019-05-20 19:49:20'),
(46, '4', 2, 'Pin khá tệ ', '2021-03-16 19:49:44'),
(15, '4', 4, 'mua vài chục cái về cho con cháu chọi nhau chơi :v', '2021-01-13 19:52:14'),
(3, '6', 3, 'tuyet dep', '2021-05-10 09:35:40'),
(3, '6', 5, 'Pin dung duoc khoang 2 tieng', '2021-05-10 09:37:42'),
(3, '6', 1, 'Roi 1 lan ma khong sao', '2021-05-10 09:39:23'),
(35, '6', 4, 'Cuc re', '2021-05-10 09:41:24');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PhuongThucTT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaND`, `NgayLap`, `NguoiNhan`, `SDT`, `DiaChi`, `PhuongThucTT`, `TongTien`, `TrangThai`) VALUES
(1, 6, '2021-05-10 04:42:50', 'nguyentan', '0156987412', 'Thu Duc', '1', 31990000, 'Đang xử lý'),
(2, 6, '2021-05-10 04:45:44', '123', '0336910404', '456', '1', 31990000, 'Đã xử lý'),
(3, 2, '2021-05-10 04:58:17', 'hoan', '012345678', 'thu duc', '1', 31990000, 'Đang giao'),
(4, 6, '2021-05-10 05:27:42', 'lang van duong', '0336910404', 'thon 5', '1', 1890000, 'Đã xử lý'),
(5, 6, '2021-05-10 05:36:51', 'aasdas', '2134654', 'xas', '1', 260000, 'Đơn hàng mới'),
(6, 6, '2021-05-10 05:44:27', 'lang van duong', '0336910404', 'thon 5', '1', 13960000, 'Đơn hàng mới'),
(7, 2, '2021-06-09 00:39:58', 'lang van duong', '0336910404', 'thon 5', '1', 590000, 'Đơn hàng mới');

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LoaiKM` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GiaTriKM` float NOT NULL,
  `NgayBD` datetime NOT NULL,
  `NgayKT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `NgayKT`) VALUES
(1, 'Không khuyến mãi', 'Nothing', 0, '2021-05-09 00:00:00', '2021-06-09 00:00:00'),
(2, 'Giảm giá', 'GiamGia', 500000, '2021-05-09 00:00:00', '2021-06-09 00:00:00'),
(3, 'Giá rẻ online', 'GiaReOnline', 650000, '2021-05-09 00:00:00', '2021-06-09 00:00:00'),
(4, 'Trả góp', 'TraGop', 0, '2021-05-09 00:00:00', '2021-05-09 00:00:00'),
(5, 'Mới ra mắt', 'MoiRaMat', 0, '2021-05-09 00:00:00', '2021-06-09 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`) VALUES
(1, 'Apple', 'Apple.jpg', 'Các sản phẩm của Apple'),
(2, 'Coolpad', 'Coolpad.png', 'Các sản phẩm của coolpad'),
(3, 'HTC', 'HTC.jpg', 'Các sản phẩm đến từ HTC'),
(4, 'Itel', 'Itel.jpg', 'Các sản phẩm của Itel'),
(5, 'Mobell', 'Mobell.jpg', 'Các sản phẩm của mobell'),
(6, 'Vivo', 'Vivo.jpg', 'Các sản phẩm của Vivo'),
(7, 'Oppo', 'Oppo.jpg', 'Camara Selphi cuc chat tu Oppo'),
(8, 'SamSung', 'Samsung.jpg', 'Khuyen mai lon tu SamSung'),
(9, 'Phillips', 'Philips.jpg', 'Cac san pham tuyet dep tu Phillip'),
(10, 'Nokia', 'Nokia.jpg', 'Các sản phẩm đến từ thương hiệu Nokia'),
(11, 'Motorola', 'Motorola.jpg', 'Motorola is the best'),
(12, 'Mobiistar', 'Mobiistar.jpg', 'Các sản phẩm đến từ thương hiệu Mobiistar'),
(14, 'Xiaomi', 'Xiaomi.png', 'Các sản phẩm đến từ thương hiệu Xiaomi');

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Ho` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ten` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`) VALUES
(1, 'Lang', 'Duong', 'Nam', '0336910404', '1610578@hcmut.edu.vn', 'Thu Duc', 'langduong', '123', 1, 1),
(2, 'Nguyễn', 'Hoàn', 'Nam', '0377601559', 'hoannguyen@gmail.com', 'Thu Duc', 'hoan', '123', 2, 1),
(5, 'Tran', 'Nam', 'Nam', '0331569874', 'namtran@gmail.com', 'Thu Duc', 'namtran', '123', 1, 1),
(6, 'Nguyen', 'Tan', 'Nam', '0156987412', '123@gmail.com', 'Thu Duc', 'tannguyen', '123', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ChiTietQuyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Admin', 'Admin system'),
(2, 'Customer', 'Khách hàng có tài khoản');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `TenSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MaKM` int(11) NOT NULL,
  `Details` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh`, `MaKM`, `Details`, `SoSao`, `SoDanhGia`, `TrangThai`) VALUES
(1, 8, 'SamSung Galaxy J4+', 3490000, 10, '/shop/public/images/product/small-size/j4.jpg', 4, 'IPS LCD, 6.0\', HD+', 0, 0, 1),
(2, 7, 'Oppo F9', 7690000, 10, '/shop/img/products/oppo-f9-red-600x600.jpg', 2, 'LTPS LCD, 6.3\', Full HD+', 4, 2, 1),
(3, 10, 'Nokia 5.1 Plus', 4790000, 10, '/shop/img/products/nokia-51-plus-black-18thangbh-400x400.jpg', 2, 'IPS LCD, 5.8\', HD+', 3, 3, 1),
(4, 1, 'iPhone X 256GB Silver', 31990000, 10, '/shop/img/products/iphone-x-256gb-silver-400x400.jpg', 3, 'OLED, 5.8\', Super Retina', 3, 3, 1),
(5, 8, 'Samsung Galaxy J8', 6290000, 10, '/shop/img/products/samsung-galaxy-j8-600x600-600x600.jpg', 2, 'Super AMOLED, 6.0\', HD+', 0, 0, 1),
(6, 8, 'Samsung Galaxy A8+ (2018)', 11990000, 10, '/shop/img/products/samsung-galaxy-a8-plus-2018-gold-600x600.jpg', 2, 'Super AMOLED, 6\', Full HD+', 0, 0, 1),
(7, 7, 'Oppo A3s 32GB', 4690000, 10, '/shop/img/products/oppo-a3s-32gb-600x600.jpg', 4, 'IPS LCD, 6.2\', HD+', 0, 0, 1),
(8, 14, 'Xiaomi Mi 8 Lite', 6690000, 10, '/shop/img/products/xiaomi-mi-8-lite-black-1-600x600.jpg', 4, 'IPS LCD, 6.26\', Full HD+', 0, 0, 1),
(9, 1, 'iPad 2018 Wifi 32GB', 8990000, 10, '/shop/img/products/ipad-wifi-32gb-2018-thumb-600x600.jpg', 4, 'LED-backlit LCD, 9.7p\'\'', 0, 0, 1),
(10, 14, 'Xiaomi Mi 8', 12990000, 10, '/shop/img/products/xiaomi-mi-8-1-600x600.jpg', 1, 'IPS LCD, 6.26\', Full HD+', 0, 0, 1),
(11, 1, 'iPhone 7 Plus 32GB', 17000000, 10, '/shop/img/products/iphone-7-plus-32gb-hh-600x600.jpg', 3, 'LED-backlit IPS LCD, 5.5\', Retina HD', 0, 0, 1),
(12, 12, 'Mobiistar X', 3490000, 10, '/shop/img/products/mobiistar-x-3-600x600.jpg', 4, 'IPS LCD, 5.86\', HD+', 0, 0, 1),
(13, 12, 'Mobiistar E Selfie', 2490000, 10, '/shop/img/products/mobiistar-e-selfie-300-1copy-600x600.jpg', 1, 'IPS LCD, 6.0\', HD+', 0, 0, 1),
(14, 12, 'Mobiistar Zumbo S2 Dual', 2850000, 10, '/shop/img/products/mobiistar-zumbo-s2-dual-300x300.jpg', 5, 'IPS LCD, 5.5\', Full HD', 0, 0, 1),
(15, 12, 'Mobiistar B310', 260000, 10, '/shop/img/products/mobiistar-b310-orange-600x600.jpg', 5, 'LCD, 1.8\', QQVGA', 4, 1, 1),
(16, 14, 'Xiaomi Redmi Note 5', 5690000, 10, '/shop/img/products/xiaomi-redmi-note-5-pro-600x600.jpg', 5, 'IPS LCD, 5.99\', Full HD+', 0, 0, 1),
(17, 14, 'Xiaomi Redmi 5 Plus 4GB', 4790000, 10, '/shop/img/products/xiaomi-redmi-5-plus-600x600.jpg', 1, 'IPS LCD, 5.99\', Full HD+', 0, 0, 1),
(21, 10, 'Nokia black future', 999999000, 10, 'https://cdn.tgdd.vn/Products/Images/42/22701/dien-thoai-di-dong-Nokia-1280-dienmay.com-l.jpg', 2, '4K, Chống nước, Chống trầy', 0, 0, 1),
(22, 8, 'Samsung Galaxy A7 (2018)', 8990000, 10, 'https://cdn.tgdd.vn/Products/Images/42/194327/samsung-galaxy-a7-2018-128gb-black-400x400.jpg', 4, 'Super AMOLED, 6.0\', Full HD+', 0, 0, 1),
(30, 6, 'Vivo V9', 7490000, 10, 'https://cdn.tgdd.vn/Products/Images/42/155047/vivo-v9-2-1-600x600-600x600.jpg', 2, 'IPS LCD, 6.3\', Full HD+', 0, 0, 1),
(31, 6, 'Vivo V11', 10990000, 10, 'https://cdn.tgdd.vn/Products/Images/42/188828/vivo-v11-600x600.jpg', 4, 'Super AMOLED, 6.41\', Full HD+', 0, 0, 1),
(32, 6, 'Vivo Y71', 3290000, 10, 'https://cdn.tgdd.vn/Products/Images/42/158585/vivo-y71-docquyen-600x600.jpg', 4, 'IPS LCD, 6.0\', HD+', 0, 0, 1),
(33, 6, 'Vivo Y85', 4990000, 10, 'https://cdn.tgdd.vn/Products/Images/42/156205/vivo-y85-red-docquyen-600x600.jpg', 2, 'IPS LCD, 6.22\', HD+', 0, 0, 1),
(34, 5, 'Mobell M789', 550000, 10, 'https://cdn.tgdd.vn/Products/Images/42/92016/mobell-m789-8-300x300.jpg', 1, 'TFT, 2.4\', 65.536 màu', 0, 0, 1),
(35, 5, 'Mobell Rock 3', 590000, 10, 'https://cdn.tgdd.vn/Products/Images/42/112837/mobell-rock-3-2-300x300.jpg', 1, 'TFT, 2.4\', 65.536 màu', 4, 1, 1),
(36, 5, 'Mobell S60', 1790000, 10, 'https://cdn.tgdd.vn/Products/Images/42/193271/mobell-s60-red-1-600x600.jpg', 5, 'LCD, 5.5\', FWVGA', 0, 0, 1),
(37, 4, 'Itel P32', 1890000, 10, 'https://cdn.tgdd.vn/Products/Images/42/186851/itel-p32-gold-600x600.jpg', 1, 'IPS LCD, 5.45\', qHD', 0, 0, 1),
(38, 4, 'Itel A32F', 1350000, 10, 'https://cdn.tgdd.vn/Products/Images/42/193990/itel-a32f-pink-gold-600x600.jpg', 5, 'TFT, 5\', FWVGA', 0, 0, 1),
(39, 4, 'Itel it2123', 160000, 10, 'https://cdn.tgdd.vn/Products/Images/42/146651/itel-it2123-d-300-300x300.jpg', 1, 'TFT, 1.77\', 65.536 màu', 0, 0, 1),
(40, 4, 'Itel it2161', 170000, 10, 'https://cdn.tgdd.vn/Products/Images/42/193989/itel-it2161-600x600.jpg', 5, 'TFT, 1.77\', WVGA', 0, 0, 1),
(41, 2, 'Coolpad N3D', 2390000, 10, 'https://cdn.tgdd.vn/Products/Images/42/193504/coolpad-n3d-blue-600x600.jpg', 5, 'IPS LCD, 5.45\', HD+', 0, 0, 1),
(42, 3, 'HTC U12 life', 7690000, 10, 'https://cdn.tgdd.vn/Products/Images/42/186397/htc-u12-life-1-600x600.jpg', 5, 'Super LCD, 6\', Full HD+', 0, 0, 1),
(43, 2, 'Coolpad N3 mini', 1390000, 10, 'https://cdn.tgdd.vn/Products/Images/42/193503/coolpad-n3-mini-600x600.jpg', 5, 'IPS LCD, 5\', WVGA', 0, 0, 1),
(44, 2, 'Coolpad N3', 1890000, 10, 'https://cdn.tgdd.vn/Products/Images/42/193502/coolpad-n3-gray-1-600x600.jpg', 5, 'IPS LCD, 5.45\', HD+', 4, 2, 1),
(45, 11, 'Motorola Moto C 4G', 1290000, 10, 'https://cdn.tgdd.vn/Products/Images/42/109099/motorola-moto-c-4g-300-300x300.jpg', 1, 'TFT, 5\', FWVGA', 0, 0, 1),
(46, 1, 'iPhone Xr 128GB', 24990000, 10, 'https://cdn.tgdd.vn/Products/Images/42/191483/iphone-xr-128gb-red-600x600.jpg', 3, 'IPS LCD, 6.1\', IPS LCD, 16 triệu màu', 3, 2, 1),
(47, 1, 'iPhone 8 Plus 64GB', 20990000, 10, 'https://cdn.tgdd.vn/Products/Images/42/114110/iphone-8-plus-hh-600x600.jpg', 4, 'LED-backlit IPS LCD, 5.5\', Retina HD', 0, 0, 1),
(48, 1, 'iPhone Xr 64GB', 22990000, 10, 'https://cdn.tgdd.vn/Products/Images/42/190325/iphone-xr-black-400x460.png', 3, 'IPS LCD, 6.1\', IPS LCD, 16 triệu màu', 0, 0, 1),
(49, 1, 'iPhone 8 Plus 256GB', 25790000, 10, 'https://cdn.tgdd.vn/Products/Images/42/114114/iphone-8-plus-256gb-red-600x600.jpg', 2, 'LED-backlit IPS LCD, 4.7\', Retina HD', 0, 0, 1),
(50, 1, 'abc', 25790000, 2, '/shop/public/images/product/large-size/iphone-7-plus-32gb-hh-600x600.jpg', 4, 'abc', 2, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Indexes for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD KEY `MaSP` (`MaSP`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaND`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`),
  ADD KEY `MaQuyen` (`MaQuyen`);

--
-- Indexes for table `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `LoaiSP` (`MaLSP`),
  ADD KEY `MaKM` (`MaKM`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`);

--
-- Constraints for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Constraints for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
