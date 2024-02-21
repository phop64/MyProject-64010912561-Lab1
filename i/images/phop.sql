-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 22, 2023 at 07:46 AM
-- Server version: 5.7.15-log
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phop`
--
CREATE DATABASE IF NOT EXISTS `phop` DEFAULT CHARACTER SET tis620 COLLATE tis620_thai_ci;
USE `phop`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `c_id` int(4) NOT NULL,
  `c_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `c_name`) VALUES
(1, 'stationery'),
(2, 'bag'),
(3, 'uniform'),
(4, 'shoe'),
(5, 'book');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `p_id` int(7) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `p_detail` text NOT NULL,
  `p_price` int(7) NOT NULL,
  `p_img` varchar(200) NOT NULL,
  `p_type` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_name`, `p_detail`, `p_price`, `p_img`, `p_type`) VALUES
(1, 'black_belt', 'เข็มขัดสีดำ', 200, '1.jpg', 3),
(2, 'toygun', 'ปืนยิงโป้งๆ', 500, '2.jpg', 1),
(3, 'sword', 'มีดฟันฉับๆ', 150, '3.jpg', 1),
(4, 'colors12', 'สีไม้24สี', 40, '4.jpg', 1),
(5, 'nike_black', 'nikeรุ่นสีดำ', 2000, '5.jpg', 4),
(6, 'nike_blue', 'เกิบnikeสีฟ้า', 2500, '6.jpg', 4),
(7, 'pant', 'กางเกง', 250, '7.jpg', 3),
(8, 'skirt', 'กระโปรงสั้น', 250, '8.jpg', 3),
(9, 'note_book', 'สมุดจด', 20, '9.jpg', 5),
(10, 'pen_blue', 'ปากกาน้ำเงิน', 15, '10.jpg', 1),
(11, 'pensil_2B', 'ดินสอ2B', 15, '11.jpg', 1),
(12, 'staed', 'ยางลบ', 5, '12.jpg', 1),
(13, 'coolbag', 'กระเป๋าเท่ๆ', 500, '13.jpg', 2),
(14, 'shirt_white', 'เสื้อเชิ้ตสีขาว', 350, '14.jpg', 3),
(15, 'colors_water', 'สีน้ำ', 50, '15.jpg', 1),
(16, 'nanyang', 'รองเท้านันยาง', 300, '16.jpg', 4),
(17, 'puma', 'รองเท้าPuma', 3400, '17.jpg', 4),
(18, 'reebok', 'รองเท้าreebok', 3000, '18.jpg', 4),
(19, 'converse', 'รองเท้าConverse', 2500, '19.jpg', 4),
(20, 'adidas', 'รองเท้า adidas', 3000, '20.jpg', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `c_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
