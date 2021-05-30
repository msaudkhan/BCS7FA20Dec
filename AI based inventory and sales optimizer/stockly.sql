-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2021 at 07:41 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockly`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brand` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`) VALUES
(1, 'testb');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fkShopId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'test 1');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `city` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL,
  `cnic` text COLLATE utf8_unicode_ci NOT NULL,
  `fkShopId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `city`, `address`, `phone`, `cnic`, `fkShopId`, `status`) VALUES
(1, 'adil', 'attock', 'aaaa', '0307567617', '3710165561263', 1, 1),
(2, 'usman', 'attock', 'vpo attock ', '0211223344', '3710122112345', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL,
  `fkProductId` int(11) NOT NULL,
  `fkCustomerId` int(11) NOT NULL,
  `orderDate` varchar(25) NOT NULL,
  `quantity` int(11) NOT NULL,
  `fkShopId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `fkProductId`, `fkCustomerId`, `orderDate`, `quantity`, `fkShopId`) VALUES
(31, 1, 1, '2021-04-12', 2, 1),
(32, 1, 1, '2021-04-12', 5, 1),
(33, 1, 1, '2021-04-12', 1, 1),
(34, 1, 1, '2021-04-12', 1, 1),
(35, 1, 1, '2021-05-12', 1, 1),
(36, 1, 1, '2021-04-12', 1, 1),
(37, 1, 1, '2021-05-12', 1, 1),
(38, 1, 1, '2021-05-12', 1, 1),
(39, 1, 1, '2021-05-12', 1, 1),
(40, 1, 1, '2021-05-12', 1, 1),
(41, 1, 2, '2021-05-12', 2, 1),
(42, 1, 2, '2021-05-12', 1, 1),
(43, 1, 2, '2021-05-18', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category` text COLLATE utf8_unicode_ci NOT NULL,
  `brand` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `total_quantity` int(100) NOT NULL,
  `purchase_price` int(100) NOT NULL,
  `selling_price` int(100) NOT NULL,
  `barcode` text COLLATE utf8_unicode_ci NOT NULL,
  `img_url` varchar(20000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category`, `brand`, `name`, `description`, `total_quantity`, `purchase_price`, `selling_price`, `barcode`, `img_url`) VALUES
(1, 'test 1', 'testb', 'test', 'desctipn', 19, 1000, 500, '112233', 'images/1188012255_1618488483.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `shopkeeper`
--

CREATE TABLE `shopkeeper` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `phone` text NOT NULL,
  `profileImage` varchar(255) DEFAULT '',
  `shopName` varchar(255) DEFAULT '',
  `address` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shopkeeper`
--

INSERT INTO `shopkeeper` (`id`, `name`, `email`, `password`, `phone`, `profileImage`, `shopName`, `address`) VALUES
(1, 'Adeel ahmed', 'adeel@gmail.com', '123456', '03490565797', '565437763_1619934771.jpeg', 'adeels', 'attocj city');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `city` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL,
  `cnic` text COLLATE utf8_unicode_ci NOT NULL,
  `fkShopId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `name`, `city`, `address`, `phone`, `cnic`, `fkShopId`, `status`) VALUES
(1, 'adil khan', '3710188776661', 'address village', '03075676617', '3710188776661', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vendororders`
--

CREATE TABLE `vendororders` (
  `vendorOrderId` int(11) NOT NULL,
  `fkVendorId` int(11) NOT NULL,
  `Description` varchar(5000) NOT NULL,
  `complete` varchar(255) NOT NULL,
  `requestDate` varchar(255) NOT NULL,
  `completeDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendororders`
--

INSERT INTO `vendororders` (`vendorOrderId`, `fkVendorId`, `Description`, `complete`, `requestDate`, `completeDate`) VALUES
(8, 1, 'please bring 1 packet of surf\n', '1', '29-04-2021', '2021-05-17'),
(9, 1, 'please bring 1 packet of surf\n', '1', '29-04-2021', '2021-05-18'),
(11, 1, 'please bring 1 packet of surf\n', '0', '29-04-2021', '0'),
(12, 1, 'please bring some things', '0', '02-05-2021', '0'),
(13, 1, 'Adil please Bring tjhings', '0', '15-05-2021', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkShopId` (`fkShopId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `fkProductId` (`fkProductId`),
  ADD KEY `fkCustomerId` (`fkCustomerId`),
  ADD KEY `fkShopId` (`fkShopId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopkeeper`
--
ALTER TABLE `shopkeeper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkShopId` (`fkShopId`);

--
-- Indexes for table `vendororders`
--
ALTER TABLE `vendororders`
  ADD PRIMARY KEY (`vendorOrderId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shopkeeper`
--
ALTER TABLE `shopkeeper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendororders`
--
ALTER TABLE `vendororders`
  MODIFY `vendorOrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`fkShopId`) REFERENCES `shopkeeper` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`fkProductId`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`fkCustomerId`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`fkShopId`) REFERENCES `shopkeeper` (`id`);

--
-- Constraints for table `vendor`
--
ALTER TABLE `vendor`
  ADD CONSTRAINT `vendor_ibfk_1` FOREIGN KEY (`fkShopId`) REFERENCES `shopkeeper` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
