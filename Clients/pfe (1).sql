-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 08:19 PM
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
-- Table structure for table `acces`
--

CREATE TABLE `acces` (
  `id` int(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `Qte` varchar(255) NOT NULL,
  `prix` varchar(255) NOT NULL,
  `remise` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `acces`
--

INSERT INTO `acces` (`id`, `img`, `categorie`, `name`, `description`, `Qte`, `prix`, `remise`, `date`) VALUES
(1, 'acces1.jpg', 'Acces', 'acces1', 'organiser lespace autour\r\n', '60', '200$', '0', '2023-03-29'),
(2, 'acces2.jpg', 'Acces', 'acces2', 'organiser lespace autour\r\n', '55', '100$', '0', '2023-03-29'),
(3, 'acces3.jpg', 'Acces', 'acces3', 'organiser lespace autour\r\n', '24', '120$', '0', '2023-03-29'),
(4, 'acces4.jpg', 'Acces', 'acces4', 'organiser lespace autour\r\n', '15', '250$', '0', '2023-03-29'),
(5, 'acces5.jpg', 'Acces', 'acces5', 'organiser lespace autour\r\n', '12', '120$', '0', '2023-03-29'),
(6, 'acces6.jpg', 'Acces', 'acces6', 'organiser lespace autour\r\n', '75', '235$', '0', '2023-03-29'),
(7, 'acces7.jpg', 'Acces', 'acces7', 'organiser lespace autour\r\n', '16', '275$', '0', '2023-03-29'),
(8, 'acces8.jpg', 'Acces', 'acces8', 'organiser lespace autour\r\n', '59', '550$', '0', '2023-03-29'),
(9, 'acces9.jpg', 'Acces', 'acces9', 'organiser lespace autour\r\n', '42', '99$', '0', '2023-03-29');

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
-- Table structure for table `chairs`
--

CREATE TABLE `chairs` (
  `id` int(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `Qte` varchar(255) NOT NULL,
  `prix` varchar(255) NOT NULL,
  `remise` varchar(255) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `chairs`
--

INSERT INTO `chairs` (`id`, `img`, `description`, `name`, `categorie`, `Qte`, `prix`, `remise`, `date`) VALUES
(1, 'chair1.jpg', 'organiser lespace autour', 'chair1', 'chairs', '123', '1200$', '0', '2023-04-19 23:32:15.000000'),
(2, 'chair2.jpg', 'organiser lespace autour', 'chair2', 'chairs', '34', '2300$', '0', '2023-03-29 00:00:00.000000'),
(3, 'chair3.jpg', 'organiser lespace autour', 'chair3', 'chairs', '25', '1200$', '0', '2023-03-29 00:00:00.000000'),
(4, 'chair4.jpg', 'organiser lespace autour', 'chair4', 'chairs', '70', '800$', '0', '2023-03-29 00:00:00.000000'),
(5, 'chair5.jpg', 'organiser lespace autour', 'chair5', 'chairs', '12', '750$', '0', '2023-03-28 03:58:36.000000'),
(6, 'chair6.jpg', 'organiser lespace autour', 'chair6', 'chairs', '34', '1900$', '0', '2023-03-29 00:00:00.000000'),
(7, 'chair7.jpg', 'organiser lespace autour', 'chair7', 'chairs', '98', '230$', '0', '2023-03-29 00:00:00.000000'),
(8, 'chair8.jpg', 'organiser lespace autour', 'chair8', 'chairs', '35', '654$', '0', '2023-03-29 00:00:00.000000'),
(9, 'chair9.jpg', 'organiser lespace autour', 'chair9', 'chairs', '45', '200$', '0', '2023-03-29 00:00:00.000000');

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
-- Table structure for table `lights`
--

CREATE TABLE `lights` (
  `id` int(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `Qte` varchar(255) NOT NULL,
  `prix` varchar(255) NOT NULL,
  `remise` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `lights`
--

INSERT INTO `lights` (`id`, `img`, `categorie`, `name`, `description`, `Qte`, `prix`, `remise`, `date`) VALUES
(1, 'light1.jpg', 'Lights', 'light1', 'organiser lespace autour', '123', '120$', '0', '2023-03-29'),
(2, 'light2.jpg', 'Lights', 'light2', 'organiser lespace autour', '140', '130$', '0', '2023-03-29'),
(3, 'light3.jpg', 'Lights', 'light3', 'organiser lespace autour', '140', '200$', '0', '2023-03-29'),
(4, 'light4.jpg', 'Lights', 'light4', 'organiser lespace autour', '20', '125$', '0', '2023-03-29'),
(5, 'light5.jpg', 'Lights', 'light5', 'organiser lespace autour', '100', '145$', '0', '2023-03-29'),
(6, 'light6.jpg', 'Lights', 'light6', 'organiser lespace autour', '111', '230$', '0', '2023-03-29'),
(7, 'light7.jpg', 'Lights', 'light7', 'organiser lespace autour', '10', '180$', '0', '2023-03-29'),
(8, 'light8.jpg', 'Lights', 'light8', 'organiser lespace autour', '30', '300$', '0', '2023-03-29'),
(9, 'light9.jpg', 'Lights', 'light9', 'organiser lespace autour', '70', '145$', '0', '2023-03-29');

-- --------------------------------------------------------

--
-- Table structure for table `panier`
--

CREATE TABLE `panier` (
  `id` int(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `prix` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `catg_prd` int(11) DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prix` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `qte` varchar(255) NOT NULL,
  `prix_remise` decimal(20,2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `catg_prd`, `img`, `nom`, `prix`, `description`, `qte`, `prix_remise`, `date`) VALUES
(1, 0, 'acces1.jpg', 'acces1', '200$', 'organiser lespace autour', '60', '0.00', '2023-05-27 20:04:13'),
(2, NULL, 'chair3.jpg', 'chair3', '1200$', 'organiser lespace autour', '25', '0.00', '2023-05-27 20:05:23'),
(3, NULL, 'table1.jpg', 'table1', '120$', 'organiser lespace autour', '120', '0.00', '2023-05-27 20:06:07'),
(4, NULL, 'table7.jpg', 'table7', '120$', 'organiser lespace autour', '100', '0.00', '2023-05-27 20:06:50'),
(5, NULL, 'chair6.jpg', 'chair6', '1900$', 'organiser lespace autour', '34', '0.00', '2023-05-27 20:07:42'),
(6, NULL, 'acces5.jpg', 'acces5', '120$', 'organiser lespace autour', '12', '0.00', '2023-05-27 20:08:42'),
(7, NULL, 'chair9.jpg', 'chair9', '200$', 'organiser lespace autour', '25', '0.00', '2023-05-27 20:09:32'),
(8, NULL, 'table9.jpg', 'table9', '120$', 'organiser lespace autour', '90', '0.00', '2023-05-27 20:10:21'),
(9, NULL, 'acces4.jpg', 'acces4', '275$', 'organiser lespace autour', '16', '0.00', '2023-05-28 19:39:32');

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
  `prix` varchar(255) NOT NULL,
  `categorie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `img`, `name`, `title`, `description`, `prix`, `categorie`) VALUES
(1, 'acces1.jpg', 'acces1', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '200$', 'product'),
(2, 'chair3.jpg', 'product2', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '1200$', 'product'),
(3, 'table1.jpg', 'product3', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '120$', 'product'),
(4, 'table7.jpg', 'product4', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '120$', 'product'),
(5, 'chair6.jpg', 'product5', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '1900$', 'product'),
(6, 'acces5.jpg', 'product6', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '120$', 'product'),
(7, 'chair9.jpg', 'product7', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '200$', 'product'),
(8, 'table9.jpg', 'product8', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '120$', 'product'),
(9, 'acces4.jpg', 'product9', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '274$', 'product'),
(10, 'table1.jpg', 'table1', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '120$', 'tables'),
(11, 'table2.jpg', 'table2', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '120$', 'tables'),
(12, 'table3.jpg', 'table3', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '120$', 'tables'),
(13, 'table4.jpg', 'table4', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '120$', 'tables'),
(14, 'table5.jpg', 'table5', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '120$', 'tables'),
(15, 'table6.jpg', 'table6', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '120$', 'tables'),
(16, 'table7.jpg', 'table7', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\n\nto add more information about your product such as\n\nsizing, material, care and cleaning instructions.\n\nThis is also a great space to write what makes\n\nthis product special and how your customers can\n\nbene', '120$', 'tables'),
(17, 'table8.jpg', 'table8', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '120$', 'tables'),
(18, 'table9.jpg', 'table9', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '120$', 'tables'),
(19, 'chair1.jpg', 'chair1', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '1200$', 'chairs'),
(20, 'chair2.jpg', 'chair2', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '2300$', 'chairs'),
(21, 'chair3.jpg', 'chair3', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '1200$', 'chairs'),
(22, 'chair4.jpg', 'chair4', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '800$', 'chairs'),
(23, 'chair5.jpg', 'chair5', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '750$', 'chairs'),
(24, 'chair6.jpg', 'chair6', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '1900$', 'chairs'),
(25, 'chair7.jpg', 'chair7', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '230$', 'chairs'),
(26, 'chair8.jpg', 'chair8', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '654$', 'chairs'),
(27, 'chair9.jpg', 'chair9', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '200$', 'chairs'),
(28, 'light1.jpg', 'light1', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '120$', 'lights'),
(29, 'light2.jpg', 'light2', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '130$', 'lights'),
(30, 'light3.jpg', 'light3', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '200$', 'lights'),
(31, 'light4.jpg', 'light4', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '125$', 'lights'),
(32, 'light5.jpg', 'light5', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '145$', 'lights'),
(33, 'light6.jpg', 'light6', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '230$', 'lights'),
(34, 'light7.jpg', 'light7', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '130$', 'lights'),
(35, 'light8.jpg', 'light8', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '300$', 'lights'),
(36, 'light9.jpg', 'light9', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '145$', 'lights'),
(37, 'acces1.jpg', 'acces1', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '200$', 'acces'),
(38, 'acces2.jpg', 'acces1', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '100$', 'acces'),
(39, 'acces3.jpg', 'acces3', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '120$', 'acces'),
(40, 'acces4.jpg', 'acces4', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '250$', 'acces'),
(41, 'acces5.jpg', 'acces5', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '120$', 'acces'),
(42, 'acces6.jpg', 'acces6', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '233$', 'acces'),
(43, 'acces7.jpg', 'acces7', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '275$', 'acces'),
(44, 'acces8.jpg', 'acces8', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '550$', 'acces'),
(45, 'acces9.jpg', 'acces9', 'Organic Canvas Tote Bag', 'I\'m a product detail. I\'m a great place\r\n\r\nto add more information about your product such as\r\n\r\nsizing, material, care and cleaning instructions.\r\n\r\nThis is also a great space to write what makes\r\n\r\nthis product special and how your customers can\r\n\r\nbene', '99$', 'acces');

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
(0, 'faical', 'faical@gmail.com', '05d251ea28c5be9426611a121db0c92a', '05d251ea28c5be9426611a121db0c92a');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(255) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `prix` varchar(255) NOT NULL,
  `Qte` varchar(255) NOT NULL,
  `remise` varchar(255) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `categories`, `img`, `name`, `description`, `prix`, `Qte`, `remise`, `date`) VALUES
(1, 'Tables', 'table1.jpg', 'table1', 'organiser lespace autour', '120$', '120', '0', '2023-03-28 03:54:57.000000'),
(2, 'Tables', 'table2.jpg', 'table2', 'organiser lespace autour', '120$', '100', '0', '2023-03-28 03:54:57.000000'),
(3, 'Tables', 'table3.jpg', 'table3', 'organiser lespace autour', '120$', '20', '0', '2023-03-28 03:56:52.000000'),
(4, 'Tables', 'table4.jpg', 'table4', 'organiser lespace autour', '120$', '90', '0', '2023-03-28 03:57:34.000000'),
(5, 'Tables', 'table5.jpg', 'table5', 'organiser lespace autour', '120$', '220', '0', '2023-03-28 03:58:36.000000'),
(6, 'Tables', 'table6.jpg', 'table6', 'organiser lespace autour', '120$', '120', '0', '2023-03-28 03:54:57.000000'),
(7, 'Tables', 'table7.jpg', 'table7', 'organiser lespace autour', '120$', '100', '0', '2023-03-28 03:54:57.000000'),
(8, 'Tables', 'table8.jpg', 'table8', 'organiser lespace autour', '120$', '20', '0', '2023-03-28 03:56:52.000000'),
(9, 'Tables', 'table9.jpg', 'table9', 'organiser lespace autour', '120$', '90', '0', '2023-03-28 03:57:34.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chairs`
--
ALTER TABLE `chairs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
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
-- AUTO_INCREMENT for table `chairs`
--
ALTER TABLE `chairs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `panier`
--
ALTER TABLE `panier`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
