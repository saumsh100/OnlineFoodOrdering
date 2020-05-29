-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2020 at 10:33 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotal_man`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `catname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `catname`) VALUES
(4, 'BREAKFAST'),
(5, 'LUNCH'),
(6, 'DINNER'),
(7, 'BEVERAGES'),
(9, ''),
(10, ''),
(11, ''),
(12, ''),
(13, ''),
(14, '');

-- --------------------------------------------------------

--
-- Table structure for table `hotaldetails1`
--

CREATE TABLE `hotaldetails1` (
  `rating` double DEFAULT NULL,
  `hotalname` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotaldetails1`
--

INSERT INTO `hotaldetails1` (`rating`, `hotalname`, `image`, `description`) VALUES
(4.2, 'Citi club', 'citi.png', 'Simple rooms ,Some with setting areas');

-- --------------------------------------------------------

--
-- Table structure for table `hotaldetails2`
--

CREATE TABLE `hotaldetails2` (
  `hotalname` varchar(100) DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotaldetails2`
--

INSERT INTO `hotaldetails2` (`hotalname`, `product`, `price`, `discount`, `image`) VALUES
('Citi club', 'Chao Min', 80, '15', 'Chao-Min_11024.jpg'),
('Citi club', 'Idali Dosa', 120, '10', 'italidosa.jpg'),
('Citi club', 'Briyani', 100, '14', 'briyani.jpg'),
('Citi club', 'Sabji Puri', 35, '5%', 'purisabji.jpg'),
('Citi club', 'Fried rice', 50, '00', 'fried rice.jpg'),
('Citi club', 'momos', 90, '24', ''),
('Citi club', 'momos', 250, '25', 'DSC_0124.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(1) NOT NULL,
  `productname` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `productname`, `price`, `photo`) VALUES
(14, 4, 'Pancake Tacos with Cheese and ', 400, 'upload/pancake_breakfast_tacos400_1539096003.jpg'),
(16, 5, 'Beef & Broccoli Stir-Fry', 360, 'upload/brocollibeef_1539096616_1539097842.jpg'),
(17, 5, 'Spaghetti', 400, 'upload/spagetti_1539097965.png'),
(18, 7, 'Mojito', 200, 'upload/http _cdn.cnn.com_cnnnext_dam_assets_170224172523-mojito_1539097580.jpg'),
(20, 6, 'Slow Cooker Orange Chicken ', 450, 'upload/slow-cooker-chicken-recipes-orange-1533576720_1539097827.jpg'),
(21, 4, 'Eggs in a Basket', 375, 'upload/egg_in_a_hole_recipe400_1539096098.jpg'),
(22, 4, 'Full English Breakfast', 600, 'upload/1145_1539096763.jpg'),
(23, 7, 'Coca-Cola', 80, 'upload/cocacola_1539097796.jpg'),
(29, 4, 'sanwich', 500, 'user/uploaddownload_1587619623.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseid` int(11) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `total` double NOT NULL,
  `date_purchase` datetime NOT NULL,
  `address` varchar(220) NOT NULL,
  `mobile` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseid`, `customer`, `total`, `date_purchase`, `address`, `mobile`) VALUES
(20, 'saumya', 4950, '2020-04-19 23:50:03', '', 0),
(21, 'ss', 995, '2020-04-21 11:06:19', '', 0),
(22, 'ss', 0, '2020-04-21 11:24:58', '', 0),
(23, 's', 0, '2020-04-21 11:36:46', '', 0),
(24, 'ss', 0, '2020-04-21 18:18:33', '', 0),
(25, 'ss', 0, '2020-04-21 18:19:49', '', 0),
(26, 'ss', 0, '2020-04-21 18:20:12', '', 0),
(27, 'saumya', 0, '2020-04-21 18:27:37', '', 0),
(28, 'ss', 24000, '2020-04-21 23:42:31', '', 0),
(29, 'saumya', 14000, '2020-04-22 00:01:07', 'kanpur', 1232446578),
(30, 'anjana', 160, '2020-04-22 13:42:38', 'kanpur', 1232446578),
(31, 'anjali', 880, '2020-04-22 14:09:28', 'kanpur', 1232446578),
(32, 'anjali', 375, '2020-04-22 14:30:57', 'kanpur', 1232446578),
(33, 'anjana', 0, '2020-04-22 15:50:16', 'noida', 123),
(34, 'omji', 160, '2020-04-22 17:27:09', '', 0),
(35, 'omji', 160, '2020-04-22 17:32:24', '', 0),
(36, 'omji', 400, '2020-04-22 17:35:02', '', 0),
(37, 'omji', 400, '2020-04-22 17:36:37', '', 0),
(38, 'omji', 400, '2020-04-22 17:42:02', '', 0),
(39, 'anjali', 0, '2020-04-22 17:53:37', ' ', 0),
(40, 'anjana', 160, '2020-04-22 20:00:50', ' ', 0),
(41, '1232446578', 160, '2020-04-22 20:08:02', ' ', 0),
(42, 's', 2250, '2020-04-22 20:11:11', 'fxfgcg ', 1232446578),
(43, 'omji', 450, '2020-04-23 10:36:27', 'barra8 ', 1232446578),
(44, 'saumya', 200, '2020-04-23 11:15:20', 'noida ', 1232446578),
(45, 'ss', 310, '2020-04-25 00:48:23', 'kanpur ', 1232446578),
(46, 'ss', 310, '2020-04-25 00:49:55', 'kanpur ', 1232446578),
(47, 'ss', 310, '2020-04-25 00:50:03', 'kanpur ', 1232446578),
(48, 'anjali', 310, '2020-05-05 19:13:07', 'delhi ', 1234567),
(49, 'ss', 500, '2020-05-09 11:59:57', 'govind nagar ', 2147483647),
(50, 'ss', 685, '2020-05-10 19:24:20', 'barra ', 2147483647),
(51, 'ss', 200, '2020-05-28 15:37:04', 'barra ', 2147483647),
(52, 'ss', 200, '2020-05-28 16:38:58', 'barra ', 2147483647),
(53, 'ss', 450, '2020-05-28 23:28:14', 'barra ', 2147483647),
(54, 'ss', 360, '2020-05-29 12:25:52', 'barra ', 2147483647),
(55, 'ss', 0, '2020-05-29 12:38:30', 'barra ', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_detail`
--

CREATE TABLE `purchase_detail` (
  `pdid` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_detail`
--

INSERT INTO `purchase_detail` (`pdid`, `purchaseid`, `productid`, `quantity`) VALUES
(13, 8, 15, 2),
(14, 8, 17, 2),
(15, 8, 18, 2),
(16, 9, 15, 3),
(17, 10, 14, 0),
(18, 10, 17, 0),
(19, 11, 15, 12),
(20, 11, 21, 0),
(21, 11, 17, 0),
(22, 12, 20, 2),
(23, 12, 23, 8),
(24, 13, 21, 3),
(25, 13, 22, 5),
(26, 14, 15, 2),
(27, 14, 21, 2),
(28, 15, 21, 3),
(29, 15, 22, 5),
(30, 15, 14, 2),
(31, 16, 21, 0),
(32, 16, 22, 5),
(33, 16, 16, 2),
(34, 17, 16, 2),
(35, 17, 17, 3),
(36, 18, 15, 12),
(37, 19, 15, 12),
(38, 19, 21, 3),
(39, 19, 14, 3),
(40, 20, 21, 2),
(41, 20, 22, 7),
(42, 21, 15, 2),
(43, 21, 21, 1),
(44, 22, 27, 1),
(45, 22, 26, 1),
(46, 23, 25, 1),
(47, 24, 28, 1),
(48, 24, 27, 1),
(49, 25, 28, 1),
(50, 25, 27, 1),
(51, 26, 28, 1),
(52, 26, 27, 1),
(53, 27, 28, 1),
(54, 27, 17, 0),
(55, 28, 22, 40),
(56, 29, 18, 70),
(57, 30, 23, 2),
(58, 31, 16, 2),
(59, 31, 23, 2),
(60, 32, 21, 1),
(61, 33, 14, 0),
(62, 34, 23, 2),
(63, 35, 23, 2),
(64, 36, 17, 1),
(65, 37, 17, 1),
(66, 38, 17, 1),
(67, 0, 17, 0),
(68, 0, 17, 0),
(69, 39, 17, 0),
(70, 40, 23, 2),
(71, 41, 23, 2),
(72, 42, 20, 5),
(73, 43, 20, 1),
(74, 44, 18, 1),
(75, 45, 15, 1),
(76, 46, 15, 1),
(77, 47, 15, 1),
(78, 48, 15, 1),
(79, 49, 29, 1),
(80, 50, 15, 1),
(81, 50, 21, 1),
(82, 51, 18, 1),
(83, 52, 18, 1),
(84, 53, 20, 1),
(85, 54, 16, 1),
(86, 55, 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `id` int(10) NOT NULL,
  `person_name` varchar(100) NOT NULL,
  `hotelname` varchar(100) NOT NULL,
  `itemname` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `totalamount` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`id`, `person_name`, `hotelname`, `itemname`, `price`, `discount`, `quantity`, `totalamount`, `address`) VALUES
(1, 'uvaishkhan20@gmail.com', 'Citi club', 'Chao Min', '80', '15', '2', '160', 'fgj'),
(2, 'uvaishkhan20@gmail.com', 'Citi club', 'Chao Min', '80', '15', '2', '160', 'h'),
(3, 'uvaishkhan20@gmail.com', 'Citi club', 'Chao Min', '80', '15', '3', '240', 'anpur'),
(4, 'mohan@gmail.com', 'Citi club', 'Idali Dosa', '120', '10', '2', '240', 'kanpur'),
(5, 'sohan@gamil.com', 'Citi club', 'Chao Min', '80', '15', '2', '160', 'gjfgf'),
(6, 'shipra@gmail.com', 'Citi club', 'Chao Min', '80', '15', '2', '160', 'unnao'),
(8, 'shipra@gmail.com', 'Citi club', 'Chao Min', '80', '15', '1', '80', 'unnao'),
(9, 'sohan@gamil.com', 'Citi club', 'Chao Min', '80', '15', '3', '240', 'govind nagar'),
(11, 'amarishojha@gmail.com', 'Citi club', 'Briyani', '100', '14', '3', '300', '127/25 A U block, Nirala nagar'),
(12, 'amarishojha@gmail.com', 'Citi club', 'Idali Dosa', '120', '10', '2', '240', '127/25 A U block, Nirala nagar'),
(13, 'amarishojha@gmail.com', 'Citi club', 'Briyani', '100', '14', '--Select Quantity--', '', ''),
(14, 'amarishojha@gmail.com', 'Citi club', 'Briyani', '100', '14', '2', '200', 'kanpur polytechnic'),
(15, 'sonalsinghchauhan3@gmal.com', 'Citi club', 'Idali Dosa', '120', '10', '3', '360', 'shastri nagar'),
(16, 'amarishojha@gmail.com', 'Citi club', 'Idali Dosa', '120', '10', '--Select Quantity--', '', ''),
(17, 'amarishojha@gmail.com', 'Citi club', 'Idali Dosa', '120', '10', '--Select Quantity--', '', ''),
(18, 'amarishojha@gmail.com', 'Citi club', 'Sabji Puri', '35', '5%', '--Select Quantity--', '', ''),
(19, 'amarishojha@gmail.com', 'Citi club', 'Chao Min', '80', '15', '2', '160', 'govind nagar'),
(20, 'monit@gmail.com', 'Citi club', 'Idali Dosa', '120', '10', '2', '240', 'nirala  nagar'),
(21, 'amarishojha@gmail.com', 'Citi club', 'Idali Dosa', '120', '10', '--Select Quantity--', '', ''),
(22, 'saumya.shukla0001@gmail.com', 'Citi club', 'Idali Dosa', '120', '10', '--Select Quantity--', '', ''),
(23, 'saumya.shukla0001@gmail.com', 'Citi club', 'Chao Min', '80', '15', '--Select Quantity--', '', ''),
(24, 'saumya.shukla0001@gmail.com', 'Citi club', 'Idali Dosa', '120', '10', '--Select Quantity--', '', ''),
(25, 'saumya.shukla0001@gmail.com', 'Citi club', 'Chao Min', '80', '15', '2', '160', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `usertype` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`usertype`, `email`, `password`) VALUES
('admin', 'admin@gmail.com', 'admin'),
('user', 'mohan@gmail.com', '1245'),
('user', 'sohan@gamil.com', '12345'),
('user', 'shipra@gmail.com', '12345'),
('user', 'admin@gmail.com', ''),
('user', 'saumya.shukla0001@gmail.com', ''),
('user', 'samu.shivendra@gmail.com', ''),
('user', 'amarishojha85@gmail.com', ''),
('user', 'monit@gmail.com', '00000'),
('user', 'monit@gmail.com', ''),
('user', 'monit@gmail.com', '00000'),
('user', 'amarishojha@gmail.com', '000000'),
('user', 'sonalsinghchauhan3@gmal.com', '123456'),
('user', 'monit@gmail.com', '208014'),
('user', 'amarishojha@gmail.com', '00000'),
('user', 'saumya.shukla0001@gmail.com', 'saumya@123'),
('user', 'mohan@gmail.com', '12345'),
('user', 'ss@gmail.com', '12345'),
('user', 'saumya.shukla0001@gmail.com', '12345'),
('user', 'amarishojha85@gmail.com', '00000'),
('user', 'saumya.shukla0001@gmail.com', '123'),
('user', 'saumya.shukla0001@gmail.com', '123'),
('user', 'saumya.shukla0001@gmail.com', '1234'),
('user', 'saumya.shukla0001@gmail.com', '1234'),
('user', 'saumya.shukla0001@gmail.com', '1234'),
('user', 'amarishojha@gmail.com', '00000'),
('user', 'jita@gmail.com', '123'),
('user', 'sita2@gmail.com', '12345'),
('user', 'jita@gmail.com', '1234'),
('user', 'jita@gmail.com', '4567'),
('user', 'babita@gmail.com', '1234'),
('user', 'reeta@gmail.com', '1234'),
('user', 'sita@gmail.com', '4567'),
('user', 'ss1@gmail.com', '12345'),
('user', 'laxmi@gmail.com', '1234'),
('user', 'ss1@gmail.com', '12345'),
('user', 'reeta12@gmail.com', '1234'),
('user', 'babita@gmail.com', '123456789'),
('user', 'tt@gmail.com', '1234'),
('admin', 'saumya.shukla001@gmail.com', 'saumya0205'),
('user', 'tt@gmail.com', '12345'),
('user', 'ff@gmail.com', '5678'),
('user', 'gg@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_signup`
--

CREATE TABLE `tbl_signup` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `repass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_signup`
--

INSERT INTO `tbl_signup` (`id`, `name`, `address`, `mobile`, `email`, `password`, `repass`) VALUES
(28, 'sohan', 'kanpur', '775577', 'sohan@gamil.com', '12345', NULL),
(29, 'shipra', 'kanpur', '9777757557', 'shipra@gmail.com', '12345', NULL),
(30, 'uvaish', 'dfsdf', '34539999999', 'admin@gmail.com', '12345', NULL),
(31, 'saumya', '127/25 A U block, Nirala nagar', '7784845243', 'saumya.shukla0001@gmail.com', '0000', NULL),
(32, 'shivam', 'govind nagar', '654123987', 'samu.shivendra@gmail.com', '123456', NULL),
(33, 'Amarish ojha', '127/25 A U block', '7784845243', 'amarishojha85@gmail.com', '00000', NULL),
(34, 'monit', 'nirala nagrar kanpur', '123456789', 'monit@gmail.com', '00000', NULL),
(35, 'monit', 'nirala nagr kanpur', '6307120447', 'monit@gmail.com', '00000', NULL),
(36, 'monit', 'nirala nagr kanpur', '6307120447', 'monit@gmail.com', '00000', NULL),
(37, 'Amarish ojha', '127/25 A U block', '7784845243', 'amarishojha@gmail.com', '000000', NULL),
(38, 'Sonal chauhan', 'shastri nagar', '9026461881', 'sonalsinghchauhan3@gmal.com', '123456', NULL),
(39, 'monit', 'nirala nagar', '6394543978', 'monit@gmail.com', '208014', NULL),
(40, 'Amarish ojha', '127/25 A U block', '7784845243', 'amarishojha@gmail.com', '00000', NULL),
(41, 'saumya', 'kanpur', '1232446578', 'saumya.shukla0001@gmail.com', 'saumya@123', NULL),
(42, 'guru ji', 'govind nagar', '1234567', 'mohan@gmail.com', '12345', NULL),
(43, 'saumya', 'noida', '1232446578', 'ss@gmail.com', '12345', NULL),
(44, 'saumya', 'barra', '389389109393', 'saumya.shukla0001@gmail.com', '12345', NULL),
(45, 'amarish', 'govind nagar', '456123789', 'amarishojha85@gmail.com', '00000', NULL),
(46, 'saumya', 'govind nagar', '389389109393', 'saumya.shukla0001@gmail.com', '123', NULL),
(47, 'saumya', 'govind nagar', '389389109393', 'saumya.shukla0001@gmail.com', '123', NULL),
(48, 'saumya', 'govind nagar', '389389109393', 'saumya.shukla0001@gmail.com', '1234', NULL),
(49, 'saumya', 'barra', '389389109393', 'saumya.shukla0001@gmail.com', '1234', NULL),
(50, 'saumya', 'barra', '123456789', 'saumya.shukla0001@gmail.com', '1234', NULL),
(51, 'amarish', 'nirala nagar ', '7784845243', 'amarishojha@gmail.com', '00000', NULL),
(52, 'jita', 'barra', '389389109393', 'jita@gmail.com', '123', NULL),
(53, 'sita', 'kanpur', '389389109393', 'jita@gmail.com', '4567', '4567'),
(54, 'babita', 'barra', '389389109393', 'babita@gmail.com', '1234', '4567'),
(55, 'reeta', 'barra', '389389109393', 'reeta@gmail.com', '1234', '4567'),
(56, 'radhe', 'barra', '7784845243', 'sita@gmail.com', '4567', '1234'),
(57, 'sameeksh', 'kanpur', '1234567', 'ss1@gmail.com', '12345', '5678'),
(58, 'laxmi', 'kanpur', '57992202020', 'laxmi@gmail.com', '1234', '5678'),
(59, 'reeta12', 'kanpur', '7784845243', 'ss1@gmail.com', '12345', '5678'),
(60, 'reeta12', 'kanpur', '7784845243', 'reeta12@gmail.com', '1234', '5678'),
(61, 'babita12', 'kanpur', '57992202020', 'babita@gmail.com', '123456789', '1234'),
(62, '', '', '1234567890', 'tt@gmail.com', '1234', '1234'),
(63, 'saumya', '', '1234567890', 'tt@gmail.com', '12345', '12345'),
(64, 'saumya', '', '1234567890', 'ff@gmail.com', '5678', '5678'),
(65, 'tt', 'govind nagar', '1234567890', 'gg@gmail.com', '1234', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `hotaldetails1`
--
ALTER TABLE `hotaldetails1`
  ADD PRIMARY KEY (`hotalname`);

--
-- Indexes for table `hotaldetails2`
--
ALTER TABLE `hotaldetails2`
  ADD KEY `hotalname` (`hotalname`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  ADD PRIMARY KEY (`pdid`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_signup`
--
ALTER TABLE `tbl_signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  MODIFY `pdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_signup`
--
ALTER TABLE `tbl_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hotaldetails2`
--
ALTER TABLE `hotaldetails2`
  ADD CONSTRAINT `hotaldetails2_ibfk_1` FOREIGN KEY (`hotalname`) REFERENCES `hotaldetails1` (`hotalname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
