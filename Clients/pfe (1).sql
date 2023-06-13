-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 12:17 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pfe`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `date`) VALUES
(1, 'Tables', '2023-03-29 01:28:30'),
(2, 'Chairs', '2023-03-29 01:28:30'),
(3, 'Lights', '2023-03-29 01:29:10'),
(4, 'Acces', '2023-03-29 01:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `firstname`, `lastname`, `email`, `mobile`, `message`) VALUES
(1, 'faical', 'lagliti', 'fafa@gmail.com', '0988764432', 'sdfgh'),
(2, 'fatna', 'ait', 'fatnalagliti@gmail.com', '0623456787', 'fghjkl');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `address_mail` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `num` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `address_mail`, `nom`, `prenom`, `address`, `ville`, `num`, `created_at`) VALUES
(5, 'naxdh@gmail.com', 'dfgh', 'sdfghj', 'dnlkjh', 'sdfghj', '0987654', '2023-06-11 15:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `created_at`) VALUES
(12, 5, 19, 2, '2023-06-11 15:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `prix` int(255) NOT NULL,
  `categorie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `img`, `name`, `title`, `description`, `prix`, `categorie`) VALUES
(1, 'acces1.jpg', 'acces1', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 200, 'product'),
(2, 'chair3.jpg', 'chair3', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 1200, 'product'),
(3, 'table1.jpg', 'table1', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 120, 'product'),
(4, 'table7.jpg', 'table7', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 120, 'product'),
(5, 'chair6.jpg', 'chair6', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 1900, 'product'),
(6, 'acces5.jpg', 'acces5', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 120, 'product'),
(7, 'chair9.jpg', 'chair9', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 200, 'product'),
(8, 'table9.jpg', 'table9', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 120, 'product'),
(9, 'acces4.jpg', 'acces4', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 274, 'product'),
(10, 'table1.jpg', 'table1', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 120, 'tables'),
(11, 'table2.jpg', 'table2', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 120, 'tables'),
(12, 'table3.jpg', 'table3', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 120, 'tables'),
(13, 'table4.jpg', 'table4', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 120, 'tables'),
(14, 'table5.jpg', 'table5', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 120, 'tables'),
(15, 'table6.jpg', 'table6', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 120, 'tables'),
(16, 'table7.jpg', 'table7', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\n\nto add more information about your product such as\n\nsizing, material, care and cleaning instructions.\n\nThis is also a great space to write what makes\n\nthis product special and how your customers can\n\nbene', 120, 'tables'),
(17, 'table8.jpg', 'table8', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 120, 'tables'),
(18, 'table9.jpg', 'table9', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 120, 'tables'),
(19, 'chair1.jpg', 'chair1', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 1200, 'chairs'),
(20, 'chair2.jpg', 'chair2', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 2300, 'chairs'),
(21, 'chair3.jpg', 'chair3', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 1200, 'chairs'),
(22, 'chair4.jpg', 'chair4', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 800, 'chairs'),
(23, 'chair5.jpg', 'chair5', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 750, 'chairs'),
(24, 'chair6.jpg', 'chair6', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 1900, 'chairs'),
(25, 'chair7.jpg', 'chair7', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 230, 'chairs'),
(26, 'chair8.jpg', 'chair8', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 654, 'chairs'),
(27, 'chair9.jpg', 'chair9', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 200, 'chairs'),
(28, 'light1.jpg', 'light1', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 120, 'lights'),
(29, 'light2.jpg', 'light2', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 130, 'lights'),
(30, 'light3.jpg', 'light3', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 200, 'lights'),
(31, 'light4.jpg', 'light4', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 125, 'lights'),
(32, 'light5.jpg', 'light5', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 145, 'lights'),
(33, 'light6.jpg', 'light6', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 230, 'lights'),
(34, 'light7.jpg', 'light7', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 130, 'lights'),
(35, 'light8.jpg', 'light8', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 300, 'lights'),
(36, 'light9.jpg', 'light9', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 145, 'lights'),
(37, 'acces1.jpg', 'acces1', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 200, 'acces'),
(38, 'acces2.jpg', 'acces1', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 100, 'acces'),
(39, 'acces3.jpg', 'acces3', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 120, 'acces'),
(40, 'acces4.jpg', 'acces4', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 250, 'acces'),
(41, 'acces5.jpg', 'acces5', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 120, 'acces'),
(42, 'acces6.jpg', 'acces6', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 233, 'acces'),
(43, 'acces7.jpg', 'acces7', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 275, 'acces'),
(44, 'acces8.jpg', 'acces8', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 550, 'acces'),
(45, 'acces9.jpg', 'acces9', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', 99, 'acces');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cpassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `email`, `password`, `cpassword`) VALUES
(0, 'fghj', 'fatnalagliti@gmail.com', 'ff139135e9673b9900e05d33e8414338', 'ff139135e9673b9900e05d33e8414338'),
(0, 'wolfie', 'fatnalagliti@gmail.com', 'b9988ac0657bd59579696249f4440b97', 'b9988ac0657bd59579696249f4440b97'),
(0, 'fatnnnna', 'fat@gmail.com', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b'),
(0, 'sdfghj', 'fat@gmail.com', '011a3f9d4c064457eadbc748859e41a0', '011a3f9d4c064457eadbc748859e41a0'),
(0, 'ilham', 'mee@gmail.com', '787f2bff3a2bfce9dc670242b1abdfa4', '787f2bff3a2bfce9dc670242b1abdfa4'),
(0, 'ilhamq', 'afqqqa@gmail.com', '599cbe6ac6f67bb870764711955081eb', '599cbe6ac6f67bb870764711955081eb'),
(0, 'ilhamq', 'afqqqa@gmail.com', '6ba667f2e5fb6e2e9a9edd14f49a3d53', '6ba667f2e5fb6e2e9a9edd14f49a3d53'),
(0, 'mee', 'nn@gmail.com', 'a9acfd18ca46f79654de9e22f551101c', 'a9acfd18ca46f79654de9e22f551101c'),
(0, 'mee', 'nn@gmail.com', 'a9acfd18ca46f79654de9e22f551101c', 'a9acfd18ca46f79654de9e22f551101c'),
(0, 'meeww', 'nnw@gmail.com', '040b7cf4a55014e185813e0644502ea9', '040b7cf4a55014e185813e0644502ea9'),
(0, 'faical', 'faical@gmail.com', '05d251ea28c5be9426611a121db0c92a', '05d251ea28c5be9426611a121db0c92a'),
(0, 'fofa', 'fofa@gmail.com ', '8be187c9221945e994312880a1eb8233', '8be187c9221945e994312880a1eb8233');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
