-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 13, 2022 at 06:38 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `Detail_ID` int(11) NOT NULL,
  `Order_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`Detail_ID`, `Order_ID`, `Product_ID`) VALUES
(5, 4, 3),
(6, 4, 8),
(7, 4, 25);

-- --------------------------------------------------------

--
-- Table structure for table `orderproduct`
--

CREATE TABLE `orderproduct` (
  `ID` int(11) NOT NULL,
  `FName` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `Lname` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Address` text COLLATE utf8_unicode_ci NOT NULL,
  `Mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orderproduct`
--

INSERT INTO `orderproduct` (`ID`, `FName`, `Lname`, `Address`, `Mobile`) VALUES
(4, 'supapat', 'pongdara', '19/39', '0815265781');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `price` float NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `image`) VALUES
(1, 'กรอสซูลาร์', 'แร่', 200, 'https://i.ibb.co/3p72VS6/250px-Garnet-Crystal-USGOV.jpg'),
(2, 'กลอโคดอต', 'แร่', 110, 'https://i.ibb.co/MBcrBKZ/download-1.jpg'),
(3, 'กะรุน,คอรันดัม', 'แร่', 500, 'https://i.ibb.co/pJ8cPHf/images-1.jpg'),
(4, 'กาลีนา', 'แร่', 700, 'https://i.ibb.co/3p72VS6/250px-Garnet-Crystal-USGOV.jpg'),
(5, 'กำมะถัน', 'แร่', 1000, 'https://i.ibb.co/FgYGg6c/download.jpg'),
(6, 'กิบบ์ไซต์', 'แร่', 60, 'https://i.ibb.co/SmT6ymp/images-2.jpg'),
(7, 'เกย์เซอไรต์', 'แร่', 130, 'https://i.ibb.co/pLMS4nX/images-3.jpg'),
(8, 'เกลือหิน', 'แร่', 450, 'https://i.ibb.co/QvNxgJg/images-4.jpg'),
(9, 'เกอไทต์', 'แร่', 200, 'https://i.ibb.co/wcMT853/images-5.jpg'),
(10, 'แกรไฟต์,แร่ดินสอดำ', 'แร่', 780, 'https://i.ibb.co/TBRtSZJ/images-6.jpg'),
(11, 'โกเมน,การ์เนต', 'แร่', 250, 'https://i.ibb.co/cFHCXD8/images-7.jpg'),
(12, 'ไกคีไลต์', 'แร่', 200, 'https://i.ibb.co/3p72VS6/250px-Garnet-Crystal-USGOV.jpg'),
(13, 'คริสโทบาไลต์', 'แร่', 200, 'https://i.ibb.co/pJ8cPHf/images-1.jpg'),
(14, 'คริโซคอลลา', 'แร่', 150, 'https://i.ibb.co/SmT6ymp/images-2.jpg'),
(15, 'คริโซเบริน', 'แร่', 300, 'https://i.ibb.co/FgYGg6c/download.jpg'),
(16, 'คริโซเพรส', 'แร่', 350, 'https://i.ibb.co/pLMS4nX/images-3.jpg'),
(17, 'คริโซไทล์', 'แร่', 400, 'https://i.ibb.co/3p72VS6/250px-Garnet-Crystal-USGOV.jpg'),
(18, 'คริโซไลต์', 'แร่', 400, 'https://i.ibb.co/QvNxgJg/images-4.jpg'),
(19, 'คลอไรต์', 'แร่', 120, 'https://i.ibb.co/FgYGg6c/download.jpg'),
(20, 'คลีฟแลนไดต์', 'แร่', 150, 'https://i.ibb.co/wcMT853/images-5.jpg'),
(21, 'ควอตซ์', 'แร่', 175, 'https://i.ibb.co/SmT6ymp/images-2.jpg'),
(22, 'คอลโลเฟน', 'แร่', 200, 'https://i.ibb.co/3p72VS6/250px-Garnet-Crystal-USGOV.jpg'),
(23, 'คาร์นัลไลต์', 'แร่', 600, 'https://i.ibb.co/pLMS4nX/images-3.jpg'),
(24, 'คาร์เนเลียน', 'แร่', 100, 'https://i.ibb.co/QvNxgJg/images-4.jpg'),
(25, 'คาร์บอเนต', 'แร่', 600, 'https://i.ibb.co/TBRtSZJ/images-6.jpg'),
(26, 'คาร์โนไทต์', 'แร่', 200, 'https://i.ibb.co/pJ8cPHf/images-1.jpg'),
(27, 'คาลซิโดนี', 'แร่', 700, 'https://i.ibb.co/MBcrBKZ/download-1.jpg'),
(28, 'คาลาไมน์', 'แร่', 800, 'https://i.ibb.co/cFHCXD8/images-7.jpg'),
(29, 'คาลแคนไทต์', 'แร่', 500, 'https://i.ibb.co/G75GpF0/images-8.jpg'),
(30, 'คาลโคไซต์', 'แร่', 100, 'https://i.ibb.co/3p72VS6/250px-Garnet-Crystal-USGOV.jpg'),
(31, 'คาลโคไพไรต์', 'แร่', 200, 'https://i.ibb.co/SmT6ymp/images-2.jpg'),
(32, 'คาลีไบต์', 'แร่', 100, 'https://i.ibb.co/pJ8cPHf/images-1.jpg'),
(33, 'คิวไพรต์', 'แร่', 400, 'https://i.ibb.co/pLMS4nX/images-3.jpg'),
(34, 'คิโนไอต์', 'แร่', 700, 'https://i.ibb.co/QvNxgJg/images-4.jpg'),
(35, 'คิโรไวต์', 'แร่', 750, 'https://i.ibb.co/3p72VS6/250px-Garnet-Crystal-USGOV.jpg'),
(36, 'คุนไซต์', 'แร่', 200, 'https://i.ibb.co/wcMT853/images-5.jpg'),
(37, 'เคโอลิน,แร่ดินขาว', 'แร่', 145, 'https://i.ibb.co/3p72VS6/250px-Garnet-Crystal-USGOV.jpg'),
(38, 'เคโอลิไนต์', 'แร่', 175, 'https://i.ibb.co/TBRtSZJ/images-6.jpg'),
(39, 'แคทูไฮโลไพต์', 'แร่', 250, 'https://i.ibb.co/cFHCXD8/images-7.jpg'),
(40, 'แคบาไซต์', 'แร่', 225, 'https://i.ibb.co/wcMT853/images-5.jpg'),
(41, 'แคลไซต์', 'แร่', 275, 'https://i.ibb.co/pLMS4nX/images-3.jpg'),
(42, 'แคลิฟอร์ไนต์', 'แร่', 175, 'https://i.ibb.co/SmT6ymp/images-2.jpg'),
(43, 'โครซิโดไลต์', 'แร่', 450, 'https://i.ibb.co/QvNxgJg/images-4.jpg'),
(44, 'โครไมต์', 'แร่', 425, 'https://i.ibb.co/3p72VS6/250px-Garnet-Crystal-USGOV.jpg'),
(45, 'โคลัมเบต – แทนทาเลต', 'แร่', 475, 'https://i.ibb.co/FgYGg6c/download.jpg'),
(46, 'โคลัมไบต์', 'แร่', 500, 'https://i.ibb.co/MBcrBKZ/download-1.jpg'),
(47, 'โคเวลไลต์', 'แร่', 400, 'https://i.ibb.co/pJ8cPHf/images-1.jpg'),
(48, 'ไคยาไนต์', 'แร่', 300, 'https://i.ibb.co/3p72VS6/250px-Garnet-Crystal-USGOV.jpg'),
(49, 'ไคลโนคลอร์', 'แร่', 200, 'https://i.ibb.co/SmT6ymp/images-2.jpg'),
(50, 'ไคแอสโทไลต์', 'แร่', 100, 'https://i.ibb.co/3p72VS6/250px-Garnet-Crystal-USGOV.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`Detail_ID`);

--
-- Indexes for table `orderproduct`
--
ALTER TABLE `orderproduct`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `Detail_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orderproduct`
--
ALTER TABLE `orderproduct`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
