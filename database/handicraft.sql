-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2019 at 05:05 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `handicraft`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(15, 'Zaber Craft', 'Zaber', 'Mohammad', 'zabermd5972@gmail.com', 'f4f4fadf0e47ea8a22c8d496f5b1cb2a', '1234567890', 'Mohakhali', '66'),
(16, 'Hridoy Crafts', 'Hridoy', 'Arafat', 'hridoyarafat@gmail.com', 'f4f4fadf0e47ea8a22c8d496f5b1cb2a', '1234567890', 'Khilgaon', '55'),
(17, 'Goriber Craft', 'Shuva', 'Chowdhury', 'shuvachy@gmail.com', 'f4f4fadf0e47ea8a22c8d496f5b1cb2a', '1234567890', 'Mohakhali', '66'),
(18, 'Stanley Craft', 'Stanley', 'Dip', 'drstanley@gmail.com', 'f4f4fadf0e47ea8a22c8d496f5b1cb2a', '1234567890', 'Banani', '11'),
(19, 'Dipi', 'Ban', 'Ly', 'st@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', 'Bashabo,Dhaka', '55');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `total_amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amt`) VALUES
(1, 1, '0', 0, 'Samsung Dous 2', 'samsung mobile.jpg', 1, 5000, 5000),
(2, 2, '0', 0, 'iPhone 5s', 'iphone mobile.jpg', 1, 25000, 25000),
(3, 47, '0', 4, 'Ring Type', 'ring.jpg', 1, 1500, 1500),
(4, 47, '0', 7, 'Ring Type', 'ring.jpg', 1, 1500, 1500),
(5, 48, '0', 11, 'Beaded', 'box.jpg', 1, 500, 500),
(6, 50, '0', 11, 'Beaded', 'Doll.jpg', 1, 400, 400),
(7, 52, '0', 11, 'Beaded', 'Flower.jpg', 1, 450, 450);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Ornaments'),
(2, 'Weaving'),
(3, 'Beaded'),
(4, 'Sewing'),
(5, 'Furnitures'),
(6, 'Electronics');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(48, 3, 15, 'Beaded', 500, 'Fully hand made', 'box.jpg', 'Box'),
(50, 3, 16, 'Beaded', 400, 'Pair of Doll', 'Doll.jpg', 'Doll'),
(52, 3, 17, 'Beaded', 450, 'Flower', 'Flower.jpg', 'Flower'),
(53, 3, 15, 'Beaded', 700, 'fruit bowl', 'fruit_bowl.jpg', 'Bowl'),
(54, 3, 16, 'Beaded', 300, 'Pen-Pencil Holder', 'Pen-Pencil Holder.jpg', 'Holder'),
(55, 6, 17, 'lamp dinning room light hall', 1000, 'lamp dinning room light hall', 'lamp dinning room light hall.jpg', 'lamp light'),
(56, 6, 15, 'wall design', 800, 'wall design', 'wall design.jpg', 'wall design'),
(57, 6, 16, 'clock', 2500, 'Premium Clock', 'clock.jpeg', 'clock'),
(58, 5, 15, 'Bone Inla MOP Furniture', 2000, 'Bone Inla MOP Furniture', 'Bone Inla MOP Furniture.jpg', 'Bone Inla MOP Furniture'),
(59, 5, 15, 'Bone Inla MOP Furniture', 2000, 'Bone Inla MOP Furniture', 'Bone Inla MOP Furniture.jpg', 'Bone Inla MOP Furniture'),
(60, 5, 16, 'cane furnitures', 2200, 'cane furnitures', 'cane furnitures.jpg', 'cane furnitures'),
(61, 5, 17, 'chair', 2050, 'chair', 'chair.jpg', 'chair'),
(62, 5, 15, 'quran holder', 750, 'quran holder', 'quran holder.jpg', 'quran holder'),
(63, 5, 16, 'sofa set', 7500, 'sofa set', 'sofa set.jpg', 'Premium Sofa Set'),
(64, 2, 18, 'Weaving', 100, 'mini bowl', 'mini bowl.jpg', 'bowl'),
(65, 2, 18, 'Weaving', 300, 'basket made from bamboo rattan', 'basket made from bamboo rattan.jpg', 'basket'),
(66, 2, 18, 'Weaving', 400, 'basket', 'basket.jpg', 'basket'),
(67, 2, 18, 'Weaving', 600, 'Wine bottle', 'bottle.jpg', 'bottle'),
(80, 6, 16, 'colorful decorated light', 600, 'colorful decorated light', 'light.jpg', 'colorful light electronics'),
(81, 5, 19, 'relaxing chair', 2000, 'handmade bamboo relaxing chair', 'relaxing chair.jpg', 'handmade bamboo relaxing chair'),
(82, 5, 19, 'relaxing chair', 2000, 'handmade bamboo relaxing chair', 'relaxing chair.jpg', 'handmade bamboo relaxing chair'),
(83, 4, 19, 'pillow cover', 500, 'pillow cover', 'pillow cover.jpg', 'pillow cover'),
(84, 4, 19, 'pillow cover', 500, 'pillow cover', 'pillow cover.jpg', 'pillow cover'),
(85, 2, 19, 'hand fan', 100, 'hand fan', 'hand fan.jpg', 'hand fan'),
(90, 6, 19, 'light holder', 500, 'light holder', 'light holder.jpg', 'light holder'),
(91, 1, 19, 'jewellery set', 2000, 'jewellery set', 'jewellery set.jpg', 'jewellery set');

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `tool_id` int(100) NOT NULL,
  `tool_title` varchar(200) NOT NULL,
  `tool_price` int(11) NOT NULL,
  `tool_des` text NOT NULL,
  `tool_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`tool_id`, `tool_title`, `tool_price`, `tool_des`, `tool_image`) VALUES
(1, 'bambo', 250, 'bambo', 'bambo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(9, 'Sayed', 'Sakin', 'sayedsakin11@gmail.com', 'f4f4fadf0e47ea8a22c8d496f5b1cb2a', '1234567890', 'Mohakhali', '65'),
(10, 'Shah', 'Rifat', 'shahrifat11@gmail.com', 'f4f4fadf0e47ea8a22c8d496f5b1cb2a', '1234567890', 'Mohakhali', '67'),
(11, 'Bijoy', 'Arafat', 'bijoy11@gmail.com', '0e572feccc2afb40250bba15a8fd199e', '1234567890', 'Bashabo,Dhaka', '22');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `vid_id` int(11) NOT NULL,
  `vid_cat` int(100) NOT NULL,
  `vid_des` varchar(100) NOT NULL,
  `vid_vid` text NOT NULL,
  `vid_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`vid_id`, `vid_cat`, `vid_des`, `vid_vid`, `vid_title`) VALUES
(1, 1, 'Beaded Ornaments', 'beaded_necklace.mp4', 'Beaded Necklace Orament'),
(4, 3, 'Bag', 'beaded_bag.mp4', 'Beaded Bag'),
(5, 5, 'Furniture', 'furniture.mp4', 'Bamboo Chair( Furniture )'),
(6, 6, 'Light Holder', 'electronic.mp4', 'Electronic Light Holder'),
(7, 4, 'Sewing', 'sewing.mp4', 'Cotton Basket by Sewing'),
(8, 2, 'Wall Hanging', 'weaving.mp4', 'Weaving Wall Hanging');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`tool_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`vid_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `tool_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `vid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
