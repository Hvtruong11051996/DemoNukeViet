-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2020 at 11:07 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_dienthoai`
--

-- --------------------------------------------------------

--
-- Table structure for table `shop_accessories`
--

CREATE TABLE `shop_accessories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(50) DEFAULT NULL,
  `weight` int(255) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_accessories`
--

INSERT INTO `shop_accessories` (`id`, `name`, `slug`, `image`, `description`, `price`, `weight`) VALUES
(1, 'Tai nghe Iphone', 'tai nghe', NULL, 'tai nghe', 10, 1),
(2, 'Thẻ nhớ', 'the nho', NULL, NULL, NULL, 2),
(3, 'Ốp lưng ', 'op-lung', NULL, NULL, NULL, 3),
(4, 'Sạc Iphone', 'sac iphone', NULL, NULL, NULL, 4),
(6, 'Sạc SamSung', NULL, NULL, NULL, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `shop_accessories_detail`
--

CREATE TABLE `shop_accessories_detail` (
  `id` int(11) NOT NULL,
  `accessories_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(50) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='thông tin phụ kiện';

--
-- Dumping data for table `shop_accessories_detail`
--

INSERT INTO `shop_accessories_detail` (`id`, `accessories_id`, `slug`, `description`, `weight`) VALUES
(2, 0, 'Iphone 2', 'post', 1),
(3, 0, 'Iphone 2 1', 'post', 2),
(4, 0, 'Iphone 2 1 1', 'post', 3),
(5, 0, 'Iphone 2 1 1', 'post', 4),
(6, 0, 'Iphone 2 1 1', 'post', 5),
(7, 0, 'Iphone 2 1 1', 'post', 6),
(8, 0, 'Iphone 2 1 1', 'post', 7),
(9, 0, 'Iphone 2 1 1', 'post', 8),
(10, 0, 'Iphone 2 1 1', 'post', 9),
(11, 0, 'Iphone 2 1 1', 'post', 10),
(12, 0, 'Iphone 2 1 1', 'post', 11);

-- --------------------------------------------------------

--
-- Table structure for table `shop_admin`
--

CREATE TABLE `shop_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `activated` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_category`
--

CREATE TABLE `shop_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_category`
--

INSERT INTO `shop_category` (`id`, `name`, `image`, `description`, `weight`, `created_at`, `updated_at`) VALUES
(1, 'Iphone', '', NULL, 1, NULL, NULL),
(2, 'SamSung', '', NULL, 3, NULL, NULL),
(3, 'Nokia', '', NULL, 4, NULL, NULL),
(4, 'OPPO', '', NULL, 5, NULL, NULL),
(5, 'Xiaomi', '', NULL, 6, NULL, NULL),
(6, 'ViVo', '', NULL, 7, NULL, NULL),
(7, 'Realme', '', NULL, 8, NULL, NULL),
(8, 'Vsmart', '', NULL, 9, NULL, NULL),
(9, 'HuaWei', '', NULL, 10, NULL, NULL),
(10, 'Mobel', '', NULL, 11, NULL, NULL),
(13, 'BlackBery', '', 'Thương hiệu bảo mật', 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_news`
--

CREATE TABLE `shop_news` (
  `id` int(10) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date_set` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shop_order`
--

CREATE TABLE `shop_order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_set` date DEFAULT NULL,
  `weight` int(50) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_order`
--

INSERT INTO `shop_order` (`order_id`, `user_id`, `product_id`, `image`, `note`, `address`, `phone_number`, `date_set`, `weight`) VALUES
(4, 1, 1, NULL, 'note 1', '', '', '2020-11-26', 1),
(5, 2, 2, NULL, 'note 2', '', '', '2020-11-26', 2),
(6, 3, 3, NULL, 'note 3', '', '', '2020-11-26', 3),
(7, 4, 4, NULL, 'note 4', '', '', '2020-11-26', 4),
(8, 5, 5, NULL, 'note 5', '', '', '0000-00-00', 5),
(9, 6, 6, NULL, 'note 6', '', '', '2020-11-12', 6),
(10, 7, 7, NULL, 'note 7', '', '', '2020-11-08', 7),
(11, 8, 8, NULL, 'note 8', '', '', '2020-11-12', 8),
(12, 9, 9, NULL, 'note 9', '', '', '2020-11-17', 9),
(13, 10, 10, NULL, NULL, 'note 10', '', '2020-11-13', 10);

-- --------------------------------------------------------

--
-- Table structure for table `shop_order_details`
--

CREATE TABLE `shop_order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(100) DEFAULT NULL,
  `total_money` float DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `weight` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_order_details`
--

INSERT INTO `shop_order_details` (`id`, `order_id`, `total_money`, `quantity`, `weight`) VALUES
(3, 1, 111111, 1, 1),
(4, 2, 2222220, 2, 1),
(5, 3, 333333000, 3, 1),
(6, 4, 44444400, 4, 1),
(7, 5, 55555600, 5, 1),
(8, 6, 6666670000, 66, 1),
(9, 7, 7777780000, 7, 1),
(10, 8, 88888900, 8, 1),
(11, 9, 100000000, 9, 1),
(12, 10, 10000000000, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_phone_details`
--

CREATE TABLE `shop_phone_details` (
  `id` int(10) NOT NULL,
  `product_id` int(10) DEFAULT NULL,
  `screen` varchar(255) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `operating` varchar(255) DEFAULT NULL,
  `front_camera` varchar(10) DEFAULT NULL,
  `rear_camera` varchar(10) DEFAULT NULL,
  `cpu` varchar(10) DEFAULT NULL,
  `ram` varchar(10) DEFAULT NULL,
  `internal_memory` varchar(50) DEFAULT NULL,
  `sim` varchar(50) DEFAULT NULL,
  `battery_capacity` varchar(50) DEFAULT NULL,
  `weight` int(50) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_phone_details`
--

INSERT INTO `shop_phone_details` (`id`, `product_id`, `screen`, `image`, `operating`, `front_camera`, `rear_camera`, `cpu`, `ram`, `internal_memory`, `sim`, `battery_capacity`, `weight`) VALUES
(2, 0, 'Full HD 1080', NULL, 'IOS 13', '6M', '', '', '', '', '', '', 1),
(3, 0, 'Full HD 1080', NULL, 'IOS 13', '6M', '13M', '', '', '', '', '', 2),
(4, 0, 'Full HD 1080', NULL, 'IOS 13', '6M', '13M', '', '12', '', '', '', 3),
(5, 0, 'Full HD 1080', NULL, 'IOS 13', '6M', '13M', '', '12', '', '12', '', 4),
(6, 0, 'Full HD 1080', NULL, 'IOS 13', '6M', '13M', '', '12', '', '12', '3600', 5),
(7, 0, 'Full HD 2040', NULL, 'IOS', '6M', '13M', '', '12', '', '12', '3600', 6),
(8, 0, 'Full HD 2040', NULL, 'IOS', '6M', '13M', '', '12', '', '12', '3600', 7),
(9, 0, 'Full HD 2040', NULL, 'IOS', '6M', '13M', '', '12', '', '12', '3600', 8),
(10, 0, 'Full HD 2040', NULL, 'IOS', '6M', '13M', '', '12', '', '12', '3600', 9),
(11, 0, 'Full HD 2040', NULL, 'IOS', '6M', '13M', '', '12', '', '12', '3600', 10),
(12, 0, 'Full HD 2040', NULL, 'IOS', '6M', '13M', '', '12', '', '12', '3600', 11);

-- --------------------------------------------------------

--
-- Table structure for table `shop_products`
--

CREATE TABLE `shop_products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `sell_price` float NOT NULL DEFAULT 0,
  `category_id` int(50) NOT NULL,
  `weight` int(50) DEFAULT 1,
  `addtime` int(50) DEFAULT 0,
  `updatetime` int(50) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_products`
--

INSERT INTO `shop_products` (`product_id`, `name`, `slug`, `image`, `description`, `price`, `sell_price`, `category_id`, `weight`, `addtime`, `updatetime`) VALUES
(22, 'Iphone 1', 'Iphone', '', 'thương hiệu', 10, 10, 1, 1, 1605924969, 0),
(23, 'Iphone 2', 'Iphone', '', 'thương hiệu', 10, 10, 5, 3, 1605924972, 0),
(24, 'Iphone 3', 'Iphone', '', 'thương hiệu', 10, 10, 1, 4, 1605924976, 0),
(25, 'Iphone 4', 'Iphone', '', 'thương hiệu', 10, 10, 1, 5, 1605924980, 0),
(33, 'Iphone 5', 'Iphone', '', 'thương hiệu', 10, 10, 1, 6, 1606013471, 0),
(34, 'Iphone 6', 'Iphone', '', 'thương hiệu', 10, 10, 1, 7, 1606013474, 0),
(35, 'Iphone 7', 'Iphone', '', 'thương hiệu', 10, 10, 1, 8, 1606013478, 0),
(36, 'Iphone 8', 'Iphone', '', 'thương hiệu', 10, 10, 1, 9, 1606013481, 0),
(37, 'Iphone 9', 'Iphone', '', 'thương hiệu', 10, 10, 1, 10, 1606013484, 0),
(38, 'Iphone 10', 'Iphone', '', 'ok', 11, 33, 6, 11, 1606013544, 0),
(39, 'Iphone 11', 'Iphone', '', 'ok', 11, 33, 6, 12, 1606013548, 0),
(40, 'Iphone 12', 'Iphone', '', 'ok', 11, 33, 6, 13, 1606013552, 0),
(41, 'Iphone 13', 'Iphone', '', 'ok', 11, 33, 6, 14, 1606013554, 0),
(42, 'Iphone 14', 'Iphone', '', 'ok', 11, 33, 6, 15, 1606013557, 0),
(43, 'Iphone 15', 'Iphone', '', 'ok', 11, 33, 6, 16, 1606013560, 0),
(44, 'Nokia 1082', 'Nokia', '', 'Ngon', 10, 10, 3, 2, 1606382847, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_user`
--

CREATE TABLE `shop_user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_user`
--

INSERT INTO `shop_user` (`user_id`, `name`, `email`, `address`, `phone_number`) VALUES
(1, 'truong', '', '', ''),
(2, 'truongdz96', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shop_accessories`
--
ALTER TABLE `shop_accessories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_products` (`name`);

--
-- Indexes for table `shop_accessories_detail`
--
ALTER TABLE `shop_accessories_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_admin`
--
ALTER TABLE `shop_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `name_2` (`name`);

--
-- Indexes for table `shop_news`
--
ALTER TABLE `shop_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_order`
--
ALTER TABLE `shop_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `name` (`product_id`),
  ADD KEY `status` (`note`),
  ADD KEY `phone` (`phone_number`),
  ADD KEY `status_2` (`note`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `shop_order_details`
--
ALTER TABLE `shop_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `shop_phone_details`
--
ALTER TABLE `shop_phone_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `shop_products`
--
ALTER TABLE `shop_products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `name` (`name`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `shop_user`
--
ALTER TABLE `shop_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shop_accessories`
--
ALTER TABLE `shop_accessories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shop_accessories_detail`
--
ALTER TABLE `shop_accessories_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shop_admin`
--
ALTER TABLE `shop_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `shop_news`
--
ALTER TABLE `shop_news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_order`
--
ALTER TABLE `shop_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `shop_order_details`
--
ALTER TABLE `shop_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shop_phone_details`
--
ALTER TABLE `shop_phone_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shop_products`
--
ALTER TABLE `shop_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `shop_user`
--
ALTER TABLE `shop_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
