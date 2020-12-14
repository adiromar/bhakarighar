-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 14, 2020 at 04:12 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_bhkghar`
--

-- --------------------------------------------------------

--
-- Table structure for table `boost_orders`
--

CREATE TABLE `boost_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `status` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brandId`, `brandName`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'NARS', 'nars', 1, '2020-09-25 11:14:01', '2020-09-25 11:14:01'),
(2, 'FARLIN', 'farlin', 1, '2020-11-18 01:29:08', '2020-11-18 01:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_no` int(55) DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8 NOT NULL,
  `image` varchar(191) CHARACTER SET utf8 DEFAULT NULL,
  `parentId` int(11) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `offered` tinyint(1) NOT NULL DEFAULT '0',
  `banner` varchar(191) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `theme_no`, `name`, `slug`, `image`, `parentId`, `featured`, `offered`, `banner`, `created_at`, `updated_at`) VALUES
(31, NULL, 'Electronics', 'electronics', 'uploads/categories/featured-electronics-vsrHdUhW7U.jpg', 0, 1, 0, NULL, '2020-09-20 06:26:58', '2020-09-22 21:46:08'),
(32, NULL, 'Mobiles', 'mobiles', 'uploads/categories/featured-mobiles-JBfIE2sAaR.png', 0, 1, 0, NULL, '2020-09-22 21:43:58', '2020-09-25 07:27:29'),
(33, NULL, 'Accessories', 'accessories', 'uploads/categories/featured-accessories-gmHJt48OEk.png', 0, 0, 0, NULL, '2020-09-22 21:44:17', '2020-09-22 21:44:17'),
(34, NULL, 'Latest Fashion', 'latest-fashion', 'uploads/categories/featured-latest-fashion-S8btViuwnq.jpg', 0, 1, 0, NULL, '2020-09-25 07:26:58', '2020-09-25 07:26:58'),
(35, NULL, 'Made In Nepal', 'made-in-nepal', 'uploads/categories/featured-made-in-nepal-7YNUHdlbi7.png', 0, 1, 0, NULL, '2020-09-25 10:43:55', '2020-09-25 10:44:47'),
(36, NULL, 'Health and Beauty', 'health-and-beauty', 'uploads/categories/featured-health-and-beauty-1q7uCsymO5.jpg', 0, 1, 0, NULL, '2020-09-25 11:02:27', '2020-09-25 11:02:27'),
(37, NULL, 'Womens Wear', 'womens-wear', 'uploads/categories/featured-womens-wear-uYMPJL5kGj.png', 0, 0, 0, NULL, '2020-09-26 05:54:31', '2020-09-26 05:54:31'),
(38, NULL, 'Jewellery', 'jewellery', 'uploads/categories/featured-jewellery-NuevqYCqqK.png', 37, 0, 0, NULL, '2020-09-26 05:55:02', '2020-09-26 05:55:02'),
(39, NULL, 'Kitchen Utensils', 'kitchen-utensils', 'uploads/categories/featured-kitchen-utensils-2Hczx3UcZH.png', 0, 0, 0, NULL, '2020-09-28 01:16:21', '2020-09-28 01:16:21'),
(40, NULL, 'Fragrance', 'fragrance', 'uploads/categories/featured-fragrance-FnYCIFkC18.png', 0, 0, 0, NULL, '2020-10-04 01:26:53', '2020-10-04 01:26:53'),
(41, NULL, 'Bags', 'bags', 'uploads/categories/featured-bags-TQReKgtI9G.JPG', 0, 1, 0, NULL, '2020-10-04 06:47:01', '2020-10-04 06:47:01'),
(42, NULL, 'Female Hand Bag', 'female-hand-bag', 'uploads/categories/featured-female-hand-bag-v9xv1eWNf7.JPG', 41, 0, 0, NULL, '2020-10-04 06:48:27', '2020-10-04 06:48:27'),
(43, NULL, 'Baby and Toys', 'baby-and-toys', 'uploads/categories/featured-baby-and-toys-0JtEP0NYnp.jpg', 0, 1, 0, NULL, '2020-11-18 01:22:39', '2020-11-18 01:22:39'),
(44, NULL, 'Baby Care', 'baby-care', 'uploads/categories/featured-baby-personal-care-8GNZSlbn08.jpg', 43, 0, 0, NULL, '2020-11-18 01:26:03', '2020-11-18 01:46:38'),
(45, NULL, 'Toys', 'toys', 'uploads/categories/featured-toys-Bx0wFoujV5.jpg', 43, 0, 0, NULL, '2020-11-18 01:50:12', '2020-11-18 01:50:12'),
(46, NULL, 'Baby Wear', 'baby-wear', 'uploads/categories/featured-baby-wear-UHhJpUa2VX.jpg', 43, 0, 0, NULL, '2020-11-29 01:38:07', '2020-12-02 11:04:22'),
(47, NULL, 'Baby Accessories', 'baby-accessories', 'uploads/categories/featured-baby-accessories-7NWsZ8gxTd.jpg', 43, 0, 0, NULL, '2020-11-29 01:51:24', '2020-12-02 11:09:55'),
(48, NULL, 'Cake and Chocolates', 'cake-and-chocolates', 'uploads/categories/featured-cake-and-chocolates-ks7CI7vCpu.jpg', 0, 1, 0, NULL, '2020-12-02 11:00:26', '2020-12-02 11:00:26'),
(49, NULL, 'Nepali Bhancha', 'nepali-bhancha', 'uploads/categories/featured-nepali-bhancha-jMEoBgwUXG.png', 0, 1, 0, NULL, '2020-12-02 12:15:48', '2020-12-02 12:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoryID` int(10) UNSIGNED NOT NULL,
  `productID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deviceToken`
--

CREATE TABLE `deviceToken` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(20) DEFAULT NULL,
  `device` varchar(155) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `khaltis`
--

CREATE TABLE `khaltis` (
  `khalti_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `pre_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `offerName` varchar(155) NOT NULL,
  `offerSubtitle` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `categoryId` int(25) DEFAULT NULL,
  `featuredImage` varchar(255) NOT NULL,
  `status` int(20) NOT NULL,
  `entryDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `theme_no` varchar(55) NOT NULL,
  `user_id` int(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_date` date NOT NULL,
  `shipping_details_id` int(11) NOT NULL,
  `payment_details_id` int(11) NOT NULL,
  `order_status` smallint(6) NOT NULL DEFAULT '1',
  `ordered_by` int(11) DEFAULT NULL,
  `unique_order_identifier` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `shipping_details_id`, `payment_details_id`, `order_status`, `ordered_by`, `unique_order_identifier`, `created_at`, `updated_at`) VALUES
(1, '2020-09-25', 1, 1, 0, NULL, 'fKWgriv9B9xa5ALbIH', '2020-09-25 11:18:32', '2020-11-18 11:29:23'),
(2, '2020-09-25', 2, 2, 0, NULL, 'dV6yGvZq1SSPkG6lTq', '2020-09-25 11:18:52', '2020-09-26 05:50:43'),
(3, '2020-10-04', 3, 3, 1, NULL, 'qsZuSZx5x9AcCC5850', '2020-10-03 23:04:58', '2020-10-03 23:04:58'),
(4, '2020-10-04', 4, 4, 1, NULL, '9OI5wkQOYEN195DnQk', '2020-10-04 00:31:13', '2020-10-04 00:31:13'),
(5, '2020-10-04', 5, 5, 1, NULL, 'H8VFB1scoguvlLYq27', '2020-10-04 04:02:02', '2020-10-04 04:02:02'),
(6, '2020-10-04', 6, 6, 0, NULL, 'CW4iDKYttEh6r7hoIK', '2020-10-04 04:49:15', '2020-10-04 04:50:34'),
(7, '2020-10-04', 7, 7, 1, NULL, 'YONgDd5QBHoMdP4PD5', '2020-10-04 04:57:53', '2020-10-04 04:57:53'),
(8, '2020-10-05', 8, 8, 1, NULL, 'MBTMDFZj1T6OSrSH5k', '2020-10-04 21:07:47', '2020-10-04 21:07:47'),
(9, '2020-10-05', 9, 9, 1, NULL, 'WCtyWdiMJi0LW6oFrt', '2020-10-04 21:11:54', '2020-10-04 21:11:54'),
(10, '2020-10-05', 10, 10, 1, NULL, 'ir4yzhylft21XnPWXR', '2020-10-04 21:14:02', '2020-10-04 21:14:02'),
(11, '2020-10-05', 11, 11, 1, NULL, 'VSDZqz0XLblyXfeqsQ', '2020-10-04 22:45:30', '2020-10-04 22:45:30'),
(12, '2020-10-05', 12, 12, 1, 31, '7hxAL5Ctvk7xNPRb4S', '2020-10-04 23:23:59', '2020-10-04 23:23:59'),
(13, '2020-10-05', 13, 13, 1, 31, 'ki6dD919aHKxjEaaaZ', '2020-10-04 23:31:01', '2020-10-04 23:31:01'),
(14, '2020-10-05', 14, 14, 1, 31, 'jfDD1mcdKho0NUxJO8', '2020-10-05 01:54:55', '2020-10-05 01:54:55'),
(15, '2020-10-05', 15, 15, 1, 31, 'llshJzkSViOx4RHQx5', '2020-10-05 02:08:11', '2020-10-05 02:08:11'),
(16, '2020-10-05', 16, 16, 1, 36, '9rMFy2yu9acy5F4rkX', '2020-10-05 04:37:22', '2020-10-05 04:37:22'),
(17, '2020-10-06', 17, 17, 1, 36, 'xsKI1ESaoqxYiA0tGW', '2020-10-06 01:17:06', '2020-10-06 01:17:06'),
(18, '2020-10-06', 18, 18, 1, 36, 'TxeYjcvgbPwIcCA6is', '2020-10-06 01:19:33', '2020-10-06 01:19:33'),
(19, '2020-10-06', 19, 19, 1, 36, 'Qu5Vn4sp27m3v6K57t', '2020-10-06 01:20:00', '2020-10-06 01:20:00'),
(20, '2020-10-06', 20, 20, 1, 36, 'XuuleIyl4INdHvmWvD', '2020-10-06 01:25:41', '2020-10-06 01:25:41'),
(21, '2020-10-06', 21, 21, 1, 36, 'PYFDPZoWtJOfJFfY1U', '2020-10-06 02:17:48', '2020-10-06 02:17:48'),
(22, '2020-10-06', 22, 22, 1, 36, '57ZZKv2TJJt8KkV2Rw', '2020-10-06 02:18:13', '2020-10-06 02:18:13'),
(23, '2020-10-09', 23, 23, 1, NULL, 'RbSFMS3xXT1kNLsqIJ', '2020-10-09 09:01:26', '2020-10-09 09:01:26'),
(24, '2020-10-09', 24, 24, 1, NULL, 'veo3yT7TPSECuJ53uR', '2020-10-09 09:02:08', '2020-10-09 09:02:08'),
(25, '2020-10-17', 25, 25, 1, NULL, 'Ndi2PhzbVYTIr5XlyE', '2020-10-17 00:41:24', '2020-10-17 00:41:24'),
(26, '2020-10-17', 26, 26, 1, NULL, 'hvQXg5H7xK5RNaSXwp', '2020-10-17 00:41:29', '2020-10-17 00:41:29'),
(27, '2020-10-19', 27, 27, 1, 2, 'va7o4joiCAOVS1RzI9', '2020-10-19 08:05:53', '2020-10-19 08:05:53'),
(28, '2020-10-28', 28, 28, 1, 2, 'psVY7zIiDHIcOwvfze', '2020-10-28 09:42:38', '2020-10-28 09:42:38'),
(29, '2020-11-03', 29, 29, 1, NULL, 'GFS1UDEfCf1yZW8Amh', '2020-11-03 02:36:49', '2020-11-03 02:36:49'),
(30, '2020-11-03', 30, 30, 1, 36, 'JvP4pP5dneVS6NM6D3', '2020-11-03 03:16:17', '2020-11-03 03:16:17'),
(31, '2020-11-03', 31, 31, 1, 36, 'C3wnW50OfGyRHEvJbX', '2020-11-03 03:21:00', '2020-11-03 03:21:00'),
(32, '2020-11-18', 32, 32, 1, NULL, 'jnJCkTpT5WpB7Wk0Fi', '2020-11-18 02:48:48', '2020-11-18 02:48:48'),
(33, '2020-11-19', 33, 33, 1, NULL, '1uTDxEVBgVohfHUIzb', '2020-11-19 01:06:36', '2020-11-19 01:06:36'),
(34, '2020-12-01', 34, 34, 1, NULL, '5HkeCBcRhcSV34fwdh', '2020-11-30 21:16:29', '2020-11-30 21:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `ordersbackup`
--

CREATE TABLE `ordersbackup` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_no` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `product_id`, `order_id`, `quantity`, `rate`, `created_at`, `updated_at`) VALUES
(1, 215, 1, 1, 550, '2020-09-25 11:18:34', '2020-09-25 11:18:34'),
(2, 215, 2, 1, 550, '2020-09-25 11:18:54', '2020-09-25 11:18:54'),
(3, 206, 3, 1, 23000, '2020-10-03 23:04:58', '2020-10-03 23:04:58'),
(4, 215, 4, 1, 550, '2020-10-04 00:31:15', '2020-10-04 00:31:15'),
(5, 218, 4, 1, 550, '2020-10-04 00:31:16', '2020-10-04 00:31:16'),
(6, 217, 4, 1, 1100, '2020-10-04 00:31:21', '2020-10-04 00:31:21'),
(7, 215, 5, 2, 550, '2020-10-04 04:02:03', '2020-10-04 04:02:03'),
(8, 224, 6, 1, 1750, '2020-10-04 04:49:16', '2020-10-04 04:49:16'),
(9, 215, 7, 1, 550, '2020-10-04 04:57:53', '2020-10-04 04:57:53'),
(10, 220, 8, 1, 2300, '2020-10-04 21:07:51', '2020-10-04 21:07:51'),
(11, 209, 8, 1, 550, '2020-10-04 21:07:52', '2020-10-04 21:07:52'),
(12, 226, 8, 1, 400, '2020-10-04 21:07:54', '2020-10-04 21:07:54'),
(13, 220, 9, 1, 2300, '2020-10-04 21:11:55', '2020-10-04 21:11:55'),
(14, 209, 9, 1, 550, '2020-10-04 21:11:56', '2020-10-04 21:11:56'),
(15, 226, 9, 1, 400, '2020-10-04 21:11:57', '2020-10-04 21:11:57'),
(16, 220, 10, 1, 2300, '2020-10-04 21:14:03', '2020-10-04 21:14:03'),
(17, 209, 10, 1, 550, '2020-10-04 21:14:05', '2020-10-04 21:14:05'),
(18, 226, 10, 1, 400, '2020-10-04 21:14:09', '2020-10-04 21:14:09'),
(19, 223, 11, 1, 1300, '2020-10-04 22:45:32', '2020-10-04 22:45:32'),
(20, 208, 11, 1, 1200, '2020-10-04 22:45:34', '2020-10-04 22:45:34'),
(21, 226, 11, 1, 400, '2020-10-04 22:45:36', '2020-10-04 22:45:36'),
(22, 222, 12, 1, 150000, '2020-10-04 23:23:59', '2020-10-04 23:23:59'),
(23, 220, 13, 2, 2300, '2020-10-04 23:31:03', '2020-10-04 23:31:03'),
(24, 217, 14, 2, 1100, '2020-10-05 01:54:58', '2020-10-05 01:54:58'),
(25, 208, 14, 2, 1200, '2020-10-05 01:55:00', '2020-10-05 01:55:00'),
(26, 222, 14, 2, 150000, '2020-10-05 01:55:04', '2020-10-05 01:55:04'),
(27, 226, 14, 2, 400, '2020-10-05 01:55:06', '2020-10-05 01:55:06'),
(28, 216, 14, 2, 500, '2020-10-05 01:55:09', '2020-10-05 01:55:09'),
(29, 209, 14, 2, 550, '2020-10-05 01:55:24', '2020-10-05 01:55:24'),
(30, 223, 14, 2, 1300, '2020-10-05 01:55:26', '2020-10-05 01:55:26'),
(31, 224, 14, 2, 1750, '2020-10-05 01:55:29', '2020-10-05 01:55:29'),
(32, 210, 14, 2, 4200, '2020-10-05 01:55:32', '2020-10-05 01:55:32'),
(33, 221, 14, 2, 2100, '2020-10-05 01:55:38', '2020-10-05 01:55:38'),
(34, 225, 14, 2, 60, '2020-10-05 01:55:39', '2020-10-05 01:55:39'),
(35, 226, 15, 1, 400, '2020-10-05 02:08:12', '2020-10-05 02:08:12'),
(36, 212, 16, 3, 25000, '2020-10-05 04:37:22', '2020-10-05 04:37:22'),
(37, 218, 16, 5, 550, '2020-10-05 04:37:22', '2020-10-05 04:37:22'),
(38, 217, 17, 1, 1100, '2020-10-06 01:17:08', '2020-10-06 01:17:08'),
(39, 218, 17, 10, 550, '2020-10-06 01:17:08', '2020-10-06 01:17:08'),
(40, 223, 17, 8, 1300, '2020-10-06 01:17:08', '2020-10-06 01:17:08'),
(41, 217, 18, 1, 1100, '2020-10-06 01:19:34', '2020-10-06 01:19:34'),
(42, 218, 18, 10, 550, '2020-10-06 01:19:34', '2020-10-06 01:19:34'),
(43, 223, 18, 8, 1300, '2020-10-06 01:19:34', '2020-10-06 01:19:34'),
(44, 217, 19, 1, 1100, '2020-10-06 01:20:00', '2020-10-06 01:20:00'),
(45, 218, 19, 10, 550, '2020-10-06 01:20:01', '2020-10-06 01:20:01'),
(46, 223, 19, 8, 1300, '2020-10-06 01:20:02', '2020-10-06 01:20:02'),
(47, 217, 20, 1, 1100, '2020-10-06 01:25:42', '2020-10-06 01:25:42'),
(48, 218, 20, 10, 550, '2020-10-06 01:25:47', '2020-10-06 01:25:47'),
(49, 223, 20, 8, 1300, '2020-10-06 01:25:48', '2020-10-06 01:25:48'),
(50, 217, 21, 1, 1100, '2020-10-06 02:17:49', '2020-10-06 02:17:49'),
(51, 217, 22, 1, 1100, '2020-10-06 02:18:13', '2020-10-06 02:18:13'),
(52, 207, 23, 1, 75000, '2020-10-09 09:01:26', '2020-10-09 09:01:26'),
(53, 211, 24, 1, 2400, '2020-10-09 09:02:08', '2020-10-09 09:02:08'),
(54, 226, 25, 2, 400, '2020-10-17 00:41:25', '2020-10-17 00:41:25'),
(55, 226, 26, 2, 400, '2020-10-17 00:41:32', '2020-10-17 00:41:32'),
(56, 236, 28, 1, 1250, '2020-10-28 09:42:39', '2020-10-28 09:42:39'),
(57, 235, 29, 1, 450, '2020-11-03 02:36:51', '2020-11-03 02:36:51'),
(58, 215, 30, 1, 550, '2020-11-03 03:16:18', '2020-11-03 03:16:18'),
(59, 250, 30, 1, 400, '2020-11-03 03:16:20', '2020-11-03 03:16:20'),
(60, 249, 30, 1, 270, '2020-11-03 03:16:21', '2020-11-03 03:16:21'),
(61, 248, 30, 1, 550, '2020-11-03 03:16:21', '2020-11-03 03:16:21'),
(62, 218, 30, 1, 550, '2020-11-03 03:16:22', '2020-11-03 03:16:22'),
(63, 244, 31, 1, 500, '2020-11-03 03:21:01', '2020-11-03 03:21:01'),
(64, 251, 32, 2, 170, '2020-11-18 02:48:48', '2020-11-18 02:48:48'),
(65, 215, 32, 1, 550, '2020-11-18 02:48:48', '2020-11-18 02:48:48'),
(66, 237, 33, 1, 1250, '2020-11-19 01:06:36', '2020-11-19 01:06:36'),
(67, 226, 34, 1, 400, '2020-11-30 21:16:30', '2020-11-30 21:16:30'),
(68, 215, 34, 1, 550, '2020-11-30 21:16:32', '2020-11-30 21:16:32');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail_new`
--

CREATE TABLE `order_detail_new` (
  `id` int(10) UNSIGNED NOT NULL,
  `orderId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_new`
--

CREATE TABLE `order_new` (
  `id` int(10) UNSIGNED NOT NULL,
  `clientName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userEmail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingAddress` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentStatus` int(11) NOT NULL,
  `paymentDate` date DEFAULT NULL,
  `unique_order_identifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `status_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_updates`
--

CREATE TABLE `order_updates` (
  `order_update_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `comment_msg` text NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `commented_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `payment_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`payment_id`, `payment_method_id`, `amount`, `payment_date`, `status`) VALUES
(1, 1, '0.00', '2020-09-25 17:03:31', 0),
(2, 1, '0.00', '2020-09-25 17:03:52', 0),
(3, 1, '0.00', '2020-10-04 04:49:57', 0),
(4, 1, '0.00', '2020-10-04 06:16:12', 0),
(5, 1, '0.00', '2020-10-04 09:47:01', 0),
(6, 1, '0.00', '2020-10-04 10:34:14', 0),
(7, 1, '0.00', '2020-10-04 10:42:53', 0),
(8, 1, '0.00', '2020-10-05 02:52:42', 0),
(9, 1, '0.00', '2020-10-05 02:56:54', 0),
(10, 1, '0.00', '2020-10-05 02:59:01', 0),
(11, 1, '0.00', '2020-10-05 04:30:28', 0),
(12, 1, '0.00', '2020-10-05 05:08:59', 0),
(13, 1, '0.00', '2020-10-05 05:15:59', 0),
(14, 1, '0.00', '2020-10-05 07:39:53', 0),
(15, 1, '0.00', '2020-10-05 07:53:11', 0),
(16, 1, '0.00', '2020-10-05 10:22:21', 0),
(17, 1, '0.00', '2020-10-06 07:02:06', 0),
(18, 1, '0.00', '2020-10-06 07:04:32', 0),
(19, 1, '0.00', '2020-10-06 07:04:59', 0),
(20, 1, '0.00', '2020-10-06 07:10:41', 0),
(21, 1, '0.00', '2020-10-06 08:02:48', 0),
(22, 1, '0.00', '2020-10-06 08:03:11', 0),
(23, 1, '0.00', '2020-10-09 14:46:25', 0),
(24, 1, '0.00', '2020-10-09 14:47:08', 0),
(25, 1, '0.00', '2020-10-17 06:26:23', 0),
(26, 1, '0.00', '2020-10-17 06:26:28', 0),
(27, 1, '0.00', '2020-10-19 13:50:51', 0),
(28, 1, '0.00', '2020-10-28 15:27:38', 0),
(29, 1, '0.00', '2020-11-03 08:21:46', 0),
(30, 1, '0.00', '2020-11-03 09:01:16', 0),
(31, 1, '0.00', '2020-11-03 09:05:59', 0),
(32, 1, '0.00', '2020-11-18 08:33:48', 0),
(33, 1, '0.00', '2020-11-19 06:51:36', 0),
(34, 1, '0.00', '2020-12-01 03:01:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `payment_name` varchar(45) DEFAULT NULL,
  `payment_status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productimages`
--

CREATE TABLE `productimages` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productimages`
--

INSERT INTO `productimages` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 215, 'nars-makeup-primer-4780354W4e3Eec.jpg', '2020-09-25 11:16:10', '2020-09-25 11:16:10'),
(2, 216, 'hand-made-slik-thread-designer-stud-earring-set-80578Q6vDxVBD.jpg', '2020-09-26 06:05:40', '2020-09-26 06:05:40'),
(3, 217, '12-piece-brush-set-4221601DceMzA.jpg', '2020-09-26 07:13:19', '2020-09-26 07:13:19'),
(4, 218, 'eyebrow-kit-women-beauty-product-58111HN5anTVp.jpg', '2020-09-26 07:17:43', '2020-09-26 07:17:43'),
(5, 219, 'manicure-set-72997oeaJKZRM.jpg', '2020-09-27 06:31:19', '2020-09-27 06:31:19'),
(6, 220, 'yoke-pattern-designs-35990DylDCsvb.jpg', '2020-09-27 06:56:40', '2020-09-27 06:56:40'),
(7, 221, 'latest-kurti-design-106852bke3xxPP.jpg', '2020-09-27 06:59:55', '2020-09-27 06:59:55'),
(10, 226, 'd-bag-17535hLZZHBfA.JPG', '2020-10-04 06:54:23', '2020-10-04 06:54:23'),
(11, 225, 'gift-pack-small-605685icvwIHyJ.png', '2020-10-04 22:10:33', '2020-10-04 22:10:33'),
(14, 227, 'plain-t-shirt-83865h3TyOBOP.jpeg', '2020-10-08 04:11:36', '2020-10-08 04:11:36'),
(15, 228, 'laptop-case-18671bVcTHj1y.jpg', '2020-10-08 04:48:13', '2020-10-08 04:48:13'),
(16, 229, 'solid-colored-simple-shoulder-bag-5053RMJ6oo6L.jpg', '2020-10-08 05:14:16', '2020-10-08 05:14:16'),
(17, 230, 'handmade-pu-leather-tote-bag-3326X21AeTcW.jpg', '2020-10-08 05:26:15', '2020-10-08 05:26:15'),
(18, 231, 'canvas-hand-bag-with-tulip-embellishment-2881ojaVtplD.jpg', '2020-10-08 05:39:10', '2020-10-08 05:39:10'),
(19, 231, 'canvas-hand-bag-with-tulip-embellishment-9043et34mEhb.jpg', '2020-10-08 05:44:48', '2020-10-08 05:44:48'),
(20, 231, 'canvas-hand-bag-with-tulip-embellishment-9283kZ0do7Rv.jpg', '2020-10-08 05:45:22', '2020-10-08 05:45:22'),
(21, 232, 'dhaka-mobile-case-231336gmMA7K8.png', '2020-10-08 05:51:39', '2020-10-08 05:51:39'),
(22, 233, 'canvas-purse-7452mzvWRqVw.jpg', '2020-10-08 06:58:39', '2020-10-08 06:58:39'),
(23, 234, 'multi-colored-rainbow-sling-bag-10493vCMFqjzw.jpg', '2020-10-08 07:04:18', '2020-10-08 07:04:18'),
(25, 236, 'denim-shoulder-bag-5543sjcew6XP.jpg', '2020-10-08 07:17:30', '2020-10-08 07:17:30'),
(26, 237, 'backpack-large-size-mini-size-4622S7xnXtuG.jpg', '2020-10-08 07:22:50', '2020-10-08 07:22:50'),
(27, 237, 'backpack-large-size-mini-size-6852U3XPT1M2.jpg', '2020-10-08 07:23:46', '2020-10-08 07:23:46'),
(30, 238, 'mini-size-bagpack-4947o9nP5cvA.jpg', '2020-10-09 00:51:18', '2020-10-09 00:51:18'),
(32, 239, 'canvas-tote-bag-46832GWDvwus1.jpg', '2020-10-15 03:54:15', '2020-10-15 03:54:15'),
(33, 239, 'canvas-tote-bag-33700Xi5sTiRI.jpg', '2020-10-15 03:55:06', '2020-10-15 03:55:06'),
(34, 239, 'canvas-tote-bag-296228KdVRyC6.jpg', '2020-10-15 03:55:56', '2020-10-15 03:55:56'),
(35, 240, 'bamboo-charcoal-black-peel-off-mask-34810BCQU5R0C.jpg', '2020-10-15 05:58:00', '2020-10-15 05:58:00'),
(37, 241, 'miss-five-6-in-1-eyeliner-powder-makeup-pallete-44258rESiMlcg.jpg', '2020-10-15 09:38:27', '2020-10-15 09:38:27'),
(38, 235, 'recycled-duffle-bag-84066ZHxZrh9o.jpg', '2020-10-15 22:14:51', '2020-10-15 22:14:51'),
(39, 235, 'recycled-duffle-bag-87212WcQzy5Oq.jpg', '2020-10-15 22:15:55', '2020-10-15 22:15:55'),
(40, 244, 'kylie-matte-liquid-foundation-255055behICR7.jpg', '2020-10-16 02:00:50', '2020-10-16 02:00:50'),
(42, 245, 'semi-sweet-chocolate-bar-eyeshadow-32888C3wTv2cN.jpg', '2020-10-16 02:12:20', '2020-10-16 02:12:20'),
(43, 249, 'kiss-beauty-lipgloss-palette-51925trZQx19A.jpg', '2020-10-16 03:47:41', '2020-10-16 03:47:41'),
(45, 253, '3-d-cotton-sockbear-169182PcI8wAyW.jpeg', '2020-11-29 01:32:00', '2020-11-29 01:32:00'),
(46, 254, '3-d-cotton-sockpenguin-214944aMlrxk6j.jpg', '2020-11-29 02:09:11', '2020-11-29 02:09:11'),
(47, 255, 'adhering-ear-cleaner-elder-18710aEURH78X.jpg', '2020-11-29 02:17:17', '2020-11-29 02:17:17'),
(48, 256, 'adhering-ear-cleaner-newborn-51439ljSEl77j.jpg', '2020-11-29 02:19:14', '2020-11-29 02:19:14'),
(49, 257, 'anti-mosquito-patch-32011XyOof9WP.jpeg', '2020-11-29 02:25:53', '2020-11-29 02:25:53'),
(50, 258, 'baby-bath-foam-450ml-101456kAdbpkBz.jpg', '2020-11-29 02:35:50', '2020-11-29 02:35:50'),
(51, 259, 'baby-bath-towel-216852hyuSHjlL.jpg', '2020-11-30 00:34:39', '2020-11-30 00:34:39'),
(52, 260, 'baby-booties-471-7032jlYu662U.jpg', '2020-11-30 00:43:55', '2020-11-30 00:43:55'),
(53, 261, 'baby-carry-cotcar-seat-885a-158243AwqWszBK.jpg', '2020-11-30 00:53:12', '2020-11-30 00:53:12'),
(54, 262, 'baby-chair-683779ls0Fkq0W.png', '2020-11-30 01:02:36', '2020-11-30 01:02:36'),
(55, 263, 'baby-foot-cover-19690XSmbbLRn.jpg', '2020-11-30 01:10:50', '2020-11-30 01:10:50'),
(56, 264, 'baby-gloves-12443H6gtBIiJ.jpg', '2020-11-30 01:26:50', '2020-11-30 01:26:50'),
(57, 265, 'baby-hat-159932s7pbe8Jg.gif', '2020-11-30 01:33:24', '2020-11-30 01:33:24'),
(58, 266, 'farlin-feeding-set-bowl-top-242a-214565bvS3xxzn.jpg', '2020-11-30 01:59:03', '2020-11-30 01:59:03'),
(59, 267, 'baby-lotion-140ml-76210mvenxcWB.jpg', '2020-11-30 02:08:41', '2020-11-30 02:08:41'),
(60, 268, 'farlin-baby-oil-140ml-229101psOMXawn.gif', '2020-11-30 04:47:41', '2020-11-30 04:47:41'),
(61, 269, 'baby-powder-100gms-8097UarXIRzb.jpg', '2020-11-30 04:53:03', '2020-11-30 04:53:03'),
(62, 270, 'baby-shampoo-250ml-717896TxOnlZu.jpg', '2020-12-01 05:04:17', '2020-12-01 05:04:17'),
(63, 271, 'baby-shampoo-450ml-39702P755vIFS.jpg', '2020-12-01 05:10:10', '2020-12-01 05:10:10'),
(64, 272, 'baby-sheet-431-2400732GY7JhTe.jpg', '2020-12-01 06:07:51', '2020-12-01 06:07:51'),
(65, 273, 'baby-shoes-leather-108105xSHYFjtP.jpg', '2020-12-02 10:38:05', '2020-12-02 10:38:05'),
(66, 274, 'baby-shoes1-825041clnIctXm.png', '2020-12-02 10:44:40', '2020-12-02 10:44:40'),
(67, 275, 'baby-shoes2-108002gjHfCdKI.gif', '2020-12-02 10:54:27', '2020-12-02 10:54:27'),
(68, 276, 'baby-shoes366-542712b8N5b3js.png', '2020-12-02 11:00:05', '2020-12-02 11:00:05'),
(69, 277, 'sutkeri-masala-90024qFdu0W29.jpg', '2020-12-02 12:26:33', '2020-12-02 12:26:33'),
(70, 278, 'baby-sleeping-bag-17746kNQLhh15.jpg', '2020-12-11 01:58:07', '2020-12-11 01:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `productName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(10,2) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `availableItems` int(11) DEFAULT NULL,
  `parentId` int(11) NOT NULL DEFAULT '0',
  `featuredImage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortDesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `highlights` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `entryDate` date NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `deal_of_week` int(20) DEFAULT NULL,
  `dow_datetime` datetime DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `newProduct` tinyint(1) NOT NULL DEFAULT '0',
  `discountPercent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actualRate` int(11) NOT NULL,
  `merchantId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nosReview` int(11) NOT NULL DEFAULT '0',
  `avgRating` double(8,3) NOT NULL,
  `totalSoldQuantity` int(11) NOT NULL DEFAULT '0',
  `productTags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `theme_no` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `slug`, `unit`, `rate`, `categoryId`, `categoryName`, `availableItems`, `parentId`, `featuredImage`, `shortDesc`, `highlights`, `description`, `entryDate`, `quantity`, `featured`, `deal_of_week`, `dow_datetime`, `user_id`, `newProduct`, `discountPercent`, `actualRate`, `merchantId`, `nosReview`, `avgRating`, `totalSoldQuantity`, `productTags`, `keywords`, `theme_no`, `brand_id`, `created_at`, `updated_at`) VALUES
(211, 'womens wear', 'womens-wear', 'pcs', 2400.00, 34, 'Latest Fashion', 3, 0, 'featured-womens-wear-eH3Xw5Jd.jpg', 'asdas das', NULL, NULL, '2020-09-25', 3, 1, NULL, NULL, 2, 1, '0', 2400, '2', 0, 0.000, 0, NULL, NULL, NULL, NULL, '2020-09-25 07:42:27', '2020-09-25 07:42:27'),
(215, 'NARS Makeup Primer', 'nars-makeup-primer', 'pcs', 550.00, 36, 'Health and Beauty', 5, 0, 'featured-nars-makeup-primer-M9yU1be1.jpg', 'dummy content', 'makeup primer', 'detail content', '2020-09-25', 5, 1, 1, '2020-09-30 05:38:00', 2, 1, '30', 580, '2', 0, 0.000, 0, NULL, 'makeup primer', NULL, 1, '2020-09-25 11:16:10', '2020-09-26 06:14:48'),
(216, 'Hand Made Slik Thread Designer Stud Earring Set', 'hand-made-slik-thread-designer-stud-earring-set', 'pcs', 500.00, 33, 'Accessories', 5, 0, 'featured-hand-made-slik-thread-designer-stud-earring-set-hRfW0cTN.jpg', 'short description', 'earring, silk thread designer earring, stud earring set', 'long description', '2020-09-26', 5, 0, 1, '2020-10-20 05:00:00', 2, 1, '50', 550, '2', 0, 0.000, 0, NULL, 'earring, silk thread designer earring, stud earring set', NULL, NULL, '2020-09-26 06:05:39', '2020-09-26 06:09:34'),
(217, '12 Piece Brush Set', '12-piece-brush-set', 'set', 1100.00, 36, 'Health and Beauty', 2, 0, 'featured-12-piece-brush-set-n2vMuCsM.jpg', 'SD', '12 piece brush set, brush set, makeup brush', 'MD', '2020-09-26', 2, 1, NULL, NULL, 2, 1, '100', 1200, '2', 0, 0.000, 0, '["2"]', '12 piece brush set, brush set, makeup brush', NULL, NULL, '2020-09-26 07:13:16', '2020-09-26 07:13:16'),
(218, 'Eyebrow Kit Women Beauty Product', 'eyebrow-kit-women-beauty-product', 'pcs', 550.00, 36, 'Health and Beauty', 10, 0, 'featured-eyebrow-kit-women-beauty-product-Gly8YZqm.jpg', 'SD', 'Eyebrow kit,', 'MD', '2020-09-26', 10, 1, NULL, NULL, 2, 1, '250', 800, '2', 0, 0.000, 0, '["2","1"]', 'Eyebrow kit,', NULL, NULL, '2020-09-26 07:17:42', '2020-09-26 07:17:42'),
(219, 'Manicure Set', 'manicure-set', 'set', 1300.00, 36, 'Health and Beauty', 5, 0, 'featured-manicure-set-85sxA5n0.jpg', 'SD', 'Manicure Set,', 'MD', '2020-09-27', 5, 0, NULL, NULL, 2, 1, '200', 1500, '2', 1, 0.000, 0, '["1"]', 'Manicure Set,', NULL, NULL, '2020-09-27 06:31:18', '2020-10-06 01:04:18'),
(220, 'Yoke pattern Designs', 'yoke-pattern-designs', 'pcs', 2300.00, 37, 'Womens Wear', 5, 0, 'featured-yoke-pattern-designs-diRXdtS4.jpg', 'SD', 'Yoke pattern designs', 'MD', '2020-09-27', 5, 0, 1, '2020-10-27 18:31:00', 2, 1, '200', 2500, '2', 0, 0.000, 0, '["2"]', 'Yoke pattern designs', NULL, NULL, '2020-09-27 06:56:38', '2020-09-27 07:02:12'),
(221, 'Latest kurti design', 'latest-kurti-design', 'pcs', 2100.00, 33, 'Accessories', 7, 0, 'featured-latest-kurti-design-8lhe47Lj.jpg', 'SD', 'Latest kurti design', 'MD', '2020-09-27', 7, 0, 1, '2020-10-27 18:31:00', 2, 1, '100', 2200, '2', 0, 0.000, 0, NULL, 'Latest kurti design', NULL, NULL, '2020-09-27 06:59:55', '2020-09-27 07:01:53'),
(225, 'Gift Pack Small', 'gift-pack-small', 'pcs', 60.00, 36, 'Health and Beauty', 2, 0, 'featured-gift-pack-small-fDyTPjAy.png', 'Short Description', NULL, NULL, '2020-10-04', 2, 0, NULL, NULL, 2, 1, '20', 80, '2', 1, 0.000, 0, '["2"]', NULL, NULL, NULL, '2020-10-04 01:23:44', '2020-10-05 00:22:30'),
(226, 'D-Bag', 'd-bag', 'pcs', 400.00, 42, 'Female Hand Bag', 5, 0, 'featured-d-bag-rjIRqiyd.JPG', 'Name: D-Bag \r\nSize: 16cmx20cmx3xcm\r\nColor: Sage Green \r\nHandmade in Nepal', 'female hand bag, hand bag', 'Name: D-Bag \r\nSize: 16cmx20cmx3xcm\r\nColor: Sage Green \r\nCountry of origin: Handmade in Nepal\r\nMaterial: Outside- Sage green fabric, inner-polyester, beautiful hand knitted flowers. \r\nFeatures:  Can use as make up pouch, and can make side also, have both stripes for making side as well as carrying in hand', '2020-10-04', 5, 1, NULL, NULL, 2, 1, '50', 450, '2', 0, 0.000, 0, NULL, 'female hand bag, hand bag', NULL, NULL, '2020-10-04 06:54:23', '2020-10-04 06:54:23'),
(227, 'Plain T-shirt', 'plain-t-shirt', 'pcs', 900.00, 37, 'Womens Wear', 5, 0, 'featured-plain-t-shirt-Lpl12pQ1.jpeg', 'Color: Black | White\r\nSize: S | M | L\r\nGender: Female', 'T-shirt, Women\'s wear, Female', 'Color: Black | White\r\nSize: S | M | L\r\nCotton T-shirt for summer.\r\nMade in Nepal.', '2020-10-08', 5, 0, NULL, NULL, 2, 1, '100', 1000, '2', 0, 0.000, 0, '["1"]', 'T-shirt, Women\'s wear, Female', NULL, NULL, '2020-10-08 04:05:26', '2020-10-08 07:32:08'),
(228, 'Laptop Case', 'laptop-case', 'pcs', 1500.00, 41, 'Bags', 10, 0, 'featured-laptop-case-XkqsKUgl.jpg', 'Size: 27cmx32cmx5cm, \r\nMade of Hemp with tribal fabrics, \r\nHas several document holder pockets inside.', 'Laptop case, Laptop bag,Laptop cases, Laptop bags', 'Size: 27cmx32cmx5cm, \r\nMaterial: Hemp,\r\nDesign: Tribal patterns,\r\nDurable, Extremely portable, Protective case.', '2020-10-08', 10, 0, NULL, NULL, 2, 1, NULL, 1500, '2', 0, 0.000, 0, '["2"]', 'Laptop case, Laptop bag,Laptop cases, Laptop bags', NULL, NULL, '2020-10-08 04:48:13', '2020-10-09 00:34:27'),
(229, 'Solid-Colored Simple Shoulder Bag', 'solid-colored-simple-shoulder-bag', 'pcs', 1300.00, 42, 'Female Hand Bag', 5, 0, 'featured-solid-colored-simple-shoulder-bag-9QlaeOV6.jpg', 'Size: 25cmx37cmx11cm;\r\nMaterial: Heavy cotton; \r\nAvailable Colors: Green | Red | Brown;\r\nHas 3 pockets', 'Shoulder bag, Shoulder bags, Colored bag, bag, Solid color', 'Size: 25cmx37cmx11cm; Material: Heavy Cotton; Texture: Matte;  Available Colors: Green | Red | Brown; Multilayer interior compartment; Stylish and Contemporary Look', '2020-10-08', 5, 0, NULL, NULL, 2, 1, NULL, 1300, '2', 0, 0.000, 0, '["2"]', 'Shoulder bag, Shoulder bags, Colored bag, bag, Solid color', NULL, NULL, '2020-10-08 05:14:16', '2020-10-09 00:33:53'),
(230, 'Handmade PU Leather Tote bag', 'handmade-pu-leather-tote-bag', 'pcs', 2200.00, 33, 'Accessories', 5, 0, 'featured-handmade-pu-leather-tote-bag-SpQF7dd3.jpg', 'Size: 28cmx30cmx10cm, \r\nMaterials: Rakxins/Pu, \r\nAvailable colors: Pink | Maroon, \r\nHas 2 pockets.', 'Shoulder bag, Tote bag, PU Leather bag, Female Hand bag', 'Size: 28cmx30cmx10cm, \r\nMaterials: Rakxins/Pu, \r\nAvailable colors: Pink | Maroon, \r\nHas 2 pockets, \r\nComes with zipped compartments, \r\nDurable, \r\nCan be used for both casual and formal purpose', '2020-10-08', 5, 0, NULL, NULL, 2, 1, NULL, 2200, '2', 0, 0.000, 0, '["2"]', 'Shoulder bag, Tote bag, PU Leather bag, Female Hand bag', NULL, NULL, '2020-10-08 05:26:15', '2020-10-09 00:16:37'),
(231, 'Canvas Hand Bag With Tulip Embellishment', 'canvas-hand-bag-with-tulip-embellishment', 'pcs', 800.00, 42, 'Female Hand Bag', 10, 0, 'featured-canvas-hand-bag-with-tulip-embellishment-GvGldqnv.jpg', 'Size: 26cmx33cmx7cm,\r\nFabrics: Canvas / Cotton, \r\nAvailable colors:  Green | Red | White | Black | Blue | Brown | Denim', 'Hand bag, Hand bag with tulip, Canvas Hand Bag', 'Size: 26cmx33cmx7cm,\r\nFabrics: Canvas / Cotton, \r\nAvailable colors:  Green | Red | White | Black | Blue | Brown | Denim ,\r\nConsists Leather Trim,\r\nSmooth Finish.', '2020-10-08', 10, 0, NULL, NULL, 2, 1, NULL, 800, '2', 0, 0.000, 0, '["2"]', 'Hand bag, Hand bag with tulip, Canvas Hand Bag', NULL, NULL, '2020-10-08 05:39:10', '2020-10-15 02:31:36'),
(232, 'Dhaka Mobile Case', 'dhaka-mobile-case', 'pcs', 320.00, 42, 'Female Hand Bag', 10, 0, 'featured-dhaka-mobile-case-eT8cDYmE.png', 'Size: 17cmx11cm,\r\nMaterials: Handloomed Dhaka', 'Bag, Mobile case, Dhaka,  Female bag, Dhaka Mobile Case', 'Size: 17cmx11cm,\r\nMaterials: Handloomed Dhaka,\r\nMade in Nepal, \r\nBeautifully weaved by experienced Artisans,\r\nTraditional look.', '2020-10-08', 10, 0, NULL, NULL, 2, 1, NULL, 320, '2', 0, 0.000, 0, '["2"]', 'Bag, Mobile case, Dhaka,  Female bag, Dhaka Mobile Case', NULL, NULL, '2020-10-08 05:51:38', '2020-10-09 00:15:53'),
(233, 'Canvas Purse', 'canvas-purse', 'pcs', 350.00, 42, 'Female Hand Bag', 8, 0, 'featured-canvas-purse-DomkgriE.jpg', 'Size: 19cmx27cm, \r\nMaterial: Canvas, \r\nColor: White.', 'Canvas Purse, Female hand bag, Purse, Canvas', 'Size: 19cmx27cm, \r\nMaterial: Canvas, \r\nColor: White.', '2020-10-08', 8, 0, NULL, NULL, 2, 1, NULL, 350, '2', 0, 0.000, 0, '["2"]', 'Canvas Purse, Female hand bag, Purse, Canvas', NULL, NULL, '2020-10-08 06:58:38', '2020-10-09 00:17:32'),
(234, 'Multi-Colored Rainbow Sling Bag', 'multi-colored-rainbow-sling-bag', 'pcs', 850.00, 42, 'Female Hand Bag', 10, 0, 'featured-multi-colored-rainbow-sling-bag-Ec7Y4u9r.jpg', 'Size:  26cmx28cmx5cm,\r\nMaterials: Handloomed Multi-color Fabrics', 'Multi-Colored Rainbow Sling Bag, Sling bag, Rainbow colored, Multicolored', 'Size:  26cmx28cmx5cm,\r\nMaterials: Handloomed Multi-color Fabrics,\r\nFunctions as zipped pocket,\r\nCurved Design, Stylish and Unique.', '2020-10-08', 10, 0, NULL, NULL, 2, 1, NULL, 850, '2', 0, 0.000, 0, '["2"]', 'Multi-Colored Rainbow Sling Bag, Sling bag, Rainbow colored, Multicolored', NULL, NULL, '2020-10-08 07:04:18', '2020-10-09 00:32:36'),
(235, 'Recycled  Duffle Bag', 'recycled-duffle-bag', 'pcs', 450.00, 41, 'Bags', 15, 0, 'featured-recycled-duffle-bag-FpWLauJg.jpg', 'Handmade Recycled Bag.\r\nMaterial: Jute.', 'Recycled  Duffle Bag, Duffle bag, bag, Bag,', 'Material: Jute, \r\nHandmade,\r\nAdjustable straps,\r\nEco-friendly material.', '2020-10-08', 15, 0, NULL, NULL, 2, 1, NULL, 450, '2', 0, 0.000, 0, '["2"]', 'Recycled  Duffle Bag, Duffle bag, bag, Bag,', NULL, NULL, '2020-10-08 07:11:27', '2020-10-15 22:18:08'),
(236, 'Denim Shoulder Bag', 'denim-shoulder-bag', 'pcs', 1250.00, 42, 'Female Hand Bag', 10, 0, 'featured-denim-shoulder-bag-Rbl2AkP5.jpg', 'Size 41cmx26cmx14cm,\r\nMaterials: Denim and Cotton fabrics,\r\nColors: Black | Red.', 'Denim Shoulder Bag, Bag, Shoulder bag, Denim, Denim bag', 'Size 41cmx26cmx14cm,\r\nMaterials: Denim and Cotton fabrics,\r\nColors: Black | Red. \r\nUnique and can be ordered for custom design or prints.', '2020-10-08', 10, 0, NULL, NULL, 2, 1, NULL, 1250, '2', 0, 0.000, 0, '["2"]', 'Denim Shoulder Bag, Bag, Shoulder bag, Denim, Denim bag', NULL, NULL, '2020-10-08 07:17:30', '2020-10-09 00:31:19'),
(237, 'Large Size Backpack', 'large-size-backpack', 'pcs', 1250.00, 41, 'Bags', 15, 0, 'featured-backpack-large-size-mini-size-Ds4vTn20.jpg', 'Size: 36cmx29cmx7cm \r\nMaterials : Rakxin / PU, \r\nColors: Green | Brown | Blue', 'Backpack (Large size & Mini size), Bagpack, Female bagpack', 'Size: 36cmx29cmx7cm \r\nMaterials : Rakxin / PU, \r\nColors: Green | Brown | Blue,\r\nAvailable in both mini and large sizes.', '2020-10-08', 15, 0, NULL, NULL, 2, 1, NULL, 1250, '2', 0, 0.000, 0, '["2"]', 'Backpack (Large size & Mini size), Bagpack, Female bagpack', NULL, NULL, '2020-10-08 07:22:50', '2020-10-09 00:52:54'),
(238, 'Mini Size Bagpack', 'mini-size-bagpack', 'pcs', 1000.00, 41, 'Bags', 10, 0, 'featured-mini-size-bagpack-q3atdwaP.jpg', 'Size : 23cmx18cmx8cm,\r\nMaterials : Rakxin / PU, \r\nColors : Green, Brown, Blue', 'Mini Size Bagpack, Bagpack, Mini bagpack', 'Size : 23cmx18cmx8cm,\r\nMaterials : Rakxin / PU, \r\nColors : Green, Brown, Blue', '2020-10-09', 10, 0, NULL, NULL, 2, 1, NULL, 1000, '2', 0, 0.000, 0, '["2"]', 'Mini Size Bagpack, Bagpack, Mini bagpack', NULL, NULL, '2020-10-09 00:51:18', '2020-10-09 05:52:42'),
(239, 'Canvas Tote Bag', 'canvas-tote-bag', 'pcs', 800.00, 42, 'Female Hand Bag', 3, 0, 'featured-canvas-tote-bag-GLZ9Tv5c.jpg', 'Material: Canvas, \r\nHand embroidered canvas tote bag.', 'Canvas Tote Bag, Hand bag, Tote bag, Canvas bag', 'Made in Nepal from local product.', '2020-10-15', 3, 0, NULL, NULL, 2, 1, '0', 800, '2', 0, 0.000, 0, '["2"]', 'Canvas Tote Bag, Hand bag, Tote bag, Canvas bag', NULL, NULL, '2020-10-15 03:51:51', '2020-10-15 05:09:28'),
(240, 'Bamboo Charcoal Mask', 'bamboo-charcoal-mask', 'pcs', 850.00, 36, 'Health and Beauty', 5, 0, 'featured-bamboo-charcoal-black-peel-off-mask-EArMer9Q.jpg', 'Bamboo Charcoal Black Peel-Off Face Mask', 'Peel-Off Black Mask, Face mask, Bamboo mask, Charcoal mask', NULL, '2020-10-15', 5, 0, NULL, NULL, 2, 1, '0', 850, '2', 0, 0.000, 0, '["2"]', 'Peel-Off Black Mask, Face mask, Bamboo mask, Charcoal mask', NULL, NULL, '2020-10-15 05:58:00', '2020-10-15 06:05:43'),
(241, 'Miss Five 6 in 1 Eyeliner Powder Makeup Pallete', 'miss-five-6-in-1-eyeliner-powder-makeup-pallete', 'pcs', 550.00, 36, 'Health and Beauty', 5, 0, 'featured-miss-five-6-in-1-eyeliner-powder-makeup-pallete-OaGDByyo.jpg', '6 in 1 Eyeliner Powder Makeup Pallete. Waterproof, Long lasting Brown Natural Colour.', 'Miss Five 6 in 1 Eyeliner Makeup Pallete, Miss five, Eyeliner makeup pallete', NULL, '2020-10-15', 5, 0, NULL, NULL, 2, 1, '0', 550, '2', 0, 0.000, 0, '["2"]', 'Miss Five 6 in 1 Eyeliner Makeup Pallete, Miss five, Eyeliner makeup pallete', NULL, NULL, '2020-10-15 09:37:49', '2020-10-15 09:38:27'),
(242, '5 Piece Makeup Brush Set', '5-piece-makeup-brush-set', 'set', 450.00, 36, 'Health and Beauty', 5, 0, 'featured-5-piece-makeup-brush-set-rDcJy3a4.jpg', 'Set of 5 makeup brush.', 'Makeup Brush Set, Makeup Brush', NULL, '2020-10-15', 5, 0, NULL, NULL, 2, 1, '0', 450, '2', 0, 0.000, 0, '["2"]', 'Makeup Brush Set, Makeup Brush', NULL, NULL, '2020-10-15 09:44:41', '2020-10-15 09:45:50'),
(243, 'Miss Five Eyeliner and Eyebrow Powder', 'miss-five-eyeliner-and-eyebrow-powder', 'pcs', 550.00, 36, 'Health and Beauty', 5, 0, 'featured-miss-five-eyeliner-and-eyebrow-powder-hMpYKYxM.jpg', 'Miss Five Eyeliner And Eyebrow Powder (2 in 1).', 'Miss Five Eyeliner and Eyebrow Powder, Miss five, Eyeliner and eyebrow powder', NULL, '2020-10-15', 5, 0, NULL, NULL, 2, 1, '0', 550, '2', 0, 0.000, 0, '["2"]', 'Miss Five Eyeliner and Eyebrow Powder, Miss five, Eyeliner and eyebrow powder', NULL, NULL, '2020-10-15 09:54:09', '2020-10-15 09:54:09'),
(244, 'Kylie Matte Liquid Foundation', 'kylie-matte-liquid-foundation', 'pcs', 500.00, 36, 'Health and Beauty', 5, 0, 'featured-kylie-matte-liquid-foundation-dfP6Ns6Z.jpg', 'Kylie Matte Liquid Foundation - 35 ml', 'Kylie Matte Liquid Foundation, Liquid foundation, Matte liquid foundation', NULL, '2020-10-16', 5, 0, NULL, NULL, 2, 1, '0', 500, '2', 0, 0.000, 0, '["2"]', 'Kylie Matte Liquid Foundation, Liquid foundation, Matte liquid foundation', NULL, NULL, '2020-10-16 02:00:50', '2020-10-16 02:00:50'),
(245, 'Semi-Sweet Chocolate Bar Eyeshadow', 'semi-sweet-chocolate-bar-eyeshadow', 'pcs', 450.00, 36, 'Health and Beauty', 5, 0, 'featured-semi-sweet-chocolate-bar-eyeshadow-3EwZOGgF.jpg', 'Eye-shadow collection with 16 different shades. \r\nWarmer and deeper shades of rich pigment.', 'Semi-Sweet Chocolate Bar Eyeshadow, Semi-sweet eyeshadow, Eyeshadow', NULL, '2020-10-16', 5, 0, NULL, NULL, 2, 1, '0', 450, '2', 0, 0.000, 0, '["2"]', 'Semi-Sweet Chocolate Bar Eyeshadow, Semi-sweet eyeshadow, Eyeshadow', NULL, NULL, '2020-10-16 02:10:44', '2020-10-16 03:16:22'),
(246, 'The Balm Nude Dude Eyeshadow Palette', 'the-balm-nude-dude-eyeshadow-palette', 'pcs', 650.00, 36, 'Health and Beauty', 5, 0, 'featured-the-balm-nude-dude-eyeshadow-palette-iFgfMx2w.jpg', 'The Balm\'s latest addition to the Nude series....Nude Dude. Get a quick look using any combination of these triple milled shadows.\r\nThe amazing palette consists of 12 beautiful shadows that make wearing nudes sexy! These satiny smooth colors can be applied beautifully.', 'The Balm Nude Dude Eyeshadow Palette, Eyeshadow pallete, The Balm, Nude Dude', NULL, '2020-10-16', 5, 0, NULL, NULL, 2, 1, '50', 700, '2', 0, 0.000, 0, '["2"]', 'The Balm Nude Dude Eyeshadow Palette, Eyeshadow pallete, The Balm, Nude Dude', NULL, NULL, '2020-10-16 02:36:56', '2020-10-16 02:36:56'),
(247, 'The Balm Nude Tude Eyeshadow Palette', 'the-balm-nude-tude-eyeshadow-palette', 'pcs', 650.00, 36, 'Health and Beauty', 5, 0, 'featured-the-balm-nude-tude-eyeshadow-palette-fTiYLIxs.jpg', 'The Balm\'s latest addition to the Nude series....Nude Tude. Get a quick look using any combination of these triple milled shadows.\r\nThe amazing palette consists of 12 beautiful shadows that make wearing nudes sexy! These satiny smooth colors can be applied beautifully.', 'The Balm Nude Tude Eyeshadow Palette, The Balm, Eyeshadow palette', NULL, '2020-10-16', 5, 0, NULL, NULL, 2, 1, '50', 700, '2', 0, 0.000, 0, '["2"]', 'The Balm Nude Tude Eyeshadow Palette, The Balm, Eyeshadow palette', NULL, NULL, '2020-10-16 02:42:28', '2020-10-16 02:42:28'),
(248, 'Huda Beauty Eyebrow Powder Stamp', 'huda-beauty-eyebrow-powder-stamp', 'pcs', 550.00, 36, 'Health and Beauty', 5, 0, 'featured-huda-beauty-eyebrow-powder-stamp-f00e2lNq.jpg', 'The country\'s first original seal eyebrow powder beauty makeup.\r\nBlack technology.', NULL, NULL, '2020-10-16', 5, 0, NULL, NULL, 2, 1, '0', 550, '2', 0, 0.000, 0, '["2"]', NULL, NULL, NULL, '2020-10-16 02:50:14', '2020-10-16 02:50:14'),
(249, 'Kiss Beauty Lipgloss Palette', 'kiss-beauty-lipgloss-palette', 'pcs', 270.00, 36, 'Health and Beauty', 5, 0, 'featured-kiss-beauty-lipgloss-palette-N2Yrhrlj.jpg', 'Kiss Beauty Lipgloss Palette', 'Kiss Beauty Lipgloss Palette, Lipgloss palette, Kiss beauty', NULL, '2020-10-16', 5, 0, NULL, NULL, 2, 1, '0', 270, '2', 0, 0.000, 0, '["2"]', 'Kiss Beauty Lipgloss Palette, Lipgloss palette, Kiss beauty', NULL, NULL, '2020-10-16 03:47:40', '2020-10-16 04:21:59'),
(250, 'Usha Shine Bronzer', 'usha-shine-bronzer', 'pcs', 400.00, 36, 'Health and Beauty', 5, 0, 'featured-usha-shine-bronzer-x4bXidAY.jpg', 'Can be used for contour or highlight to achieve a sun baked professional glow.', 'Usha Shine Bronzer, Usha bronzer, Bronzer', NULL, '2020-10-16', 5, 0, NULL, NULL, 2, 1, '0', 400, '2', 0, 0.000, 0, NULL, 'Usha Shine Bronzer, Usha bronzer, Bronzer', NULL, NULL, '2020-10-16 04:04:12', '2020-10-16 04:04:12'),
(251, 'Farlin 360 EAR PICK 20Pcs', 'farlin-360-ear-pick-20pcs', 'pcs', 170.00, 44, 'Baby Personal Care', 5, 0, 'featured-farlin-360-ear-pick-20pcs-2YREcl8m.jpg', 'Rotates 360° to remove earwax.\r\nClean baby ears without pushing in and compacting ear box.\r\nStart using this fantastic ear pick you will stay away from cotton buds.\r\nSoft tips: baby as well as other members of the family.\r\nScratch away ear itchiness.', 'FARLIN, EAR PICK, 360 EAR PICK, BABY EAR BUD', 'Please keep in places which your baby cannot reach.\r\nDo not let your baby use this product, also clean babies\' ear by caregivers.\r\nDo not place near fire or direct sunlight.\r\nThis product is designed for one time use, for better hygiene do not reuse it.\r\nDo not push the ear cleaner too deep into the ear, as it might cause damage to your ear.', '2020-11-18', 5, 1, NULL, NULL, 2, 1, '0', 170, '2', 0, 0.000, 0, NULL, 'FARLIN, EAR PICK, 360 EAR PICK, BABY EAR BUD', NULL, 2, '2020-11-18 01:31:00', '2020-11-18 01:31:41'),
(253, '3-D COTTON SOCK(PENGUIN)', '3-d-cotton-sockpenguin', 'pcs', 260.00, 46, 'Baby Wear', 5, 0, 'featured-3-d-cotton-sockbear-BzjFO414.jpeg', 'Farlin 3D cotton bear sock is just what you need to keep your baby’s feet warm. The design keeps your baby’s feet comfortable while allowing free movement of toes. Available in a cute teddy bear theme design, it has all the features to keep your baby snug and happy.', '3-D COTTON SOCK(BEAR', '1-Suitable for newborn to 6 months plus\r\n2-Stretchy weave in both directions for maximum comfort\r\n3-Tubular foot for easy dressing\r\n4-Cute design gives more likable bearing to the baby', '2020-11-29', 5, 0, NULL, NULL, 2, 1, '0', 260, '2', 0, 0.000, 0, NULL, '3-D COTTON SOCK(BEAR', NULL, 2, '2020-11-29 01:32:00', '2020-11-29 02:10:18'),
(254, '3-D COTTON SOCK(BEAR)', '3-d-cotton-sockbear', 'pcs', 260.00, 46, 'Baby Wear', 5, 0, 'featured-3-d-cotton-sockpenguin-G7ZXIOev.jpg', 'Farlin 3D cotton bear sock is just what you need to keep your baby’s feet warm. The design keeps your baby’s feet comfortable while allowing free movement of toes. Available in a cute teddy bear theme design, it has all the features to keep your baby snug and happy.', '3-D COTTON SOCK(Penguin)', 'Suitable for newborn to 6 months plus\r\nStretchy weave in both directions for maximum comfort\r\nTubular foot for easy dressing\r\nCute design gives more likable bearing to the baby', '2020-11-29', 5, 0, NULL, NULL, 2, 1, '0', 260, '2', 0, 0.000, 0, NULL, '3-D COTTON SOCK(Penguin)', NULL, NULL, '2020-11-29 02:09:10', '2020-11-29 02:14:15'),
(255, 'ADHERING EAR CLEANER-ELDER', 'adhering-ear-cleaner-elder', 'package', 365.00, 44, 'Baby Care', 5, 0, 'featured-adhering-ear-cleaner-elder-EhxKaFiP.jpg', 'The Farlin Adhering Ear Cleaner is great device to clean your little ones ears! The rounded tip is suitable for cleaning dirt around the ear painlessly. Any insects or foreign objects that have gone inside the ear can be easily removed as they immediately stick to the adhesive part. A good firm hold due to the hexagonal handle!', 'ADHERING EAR CLEANER-ELDER', 'The bigger round-tip is suitable for cleaning the dirt in older children\'s ear canal.\r\nInstantly stick out the insects and foreign objects.\r\nDisposability is mush hygienic.\r\nThe hexagonal handle makes holding firmer and safer.', '2020-11-29', 5, 0, NULL, NULL, 2, 1, '0', 365, '2', 0, 0.000, 0, NULL, 'ADHERING EAR CLEANER-ELDER', NULL, 2, '2020-11-29 02:17:16', '2020-11-29 02:17:16'),
(256, 'ADHERING EAR CLEANER-NEWBORN', 'adhering-ear-cleaner-newborn', 'package', 365.00, 44, 'Baby Care', 5, 0, 'featured-adhering-ear-cleaner-newborn-bJmLDUqB.jpg', 'The Farlin Adhering Ear Cleaner is great device to clean your little ones ears! The rounded tip is suitable for cleaning dirt around the ear painlessly. Any insects or foreign objects that have gone inside the ear can be easily removed as they immediately stick to the adhesive part. A good firm hold due to the hexagonal handle!', 'ADHERING EAR CLEANER-NEWBORN', 'The bigger round-tip is suitable for cleaning the dirt in older children\'s ear canal.\r\nInstantly stick out the insects and foreign objects.\r\nDisposability is mush hygienic.\r\nThe hexagonal handle makes holding firmer and safer.', '2020-11-29', 5, 0, NULL, NULL, 2, 1, '0', 365, '2', 0, 0.000, 0, NULL, 'ADHERING EAR CLEANER-NEWBORN', NULL, 2, '2020-11-29 02:19:14', '2020-11-29 02:19:14'),
(257, 'ANTI-MOSQUITO PATCH', 'anti-mosquito-patch', 'package', 455.00, 44, 'Baby Care', 5, 0, 'featured-anti-mosquito-patch-8tP0NFmU.jpeg', 'The anti mosquito patch is durable and protects up to 72 hours. It is DEET free, safe and effective.', 'ANTI-MOSQUITO PATCH', 'The anti mosquito patch is durable and protects up to 72 hours.\r\nIt is DEET free, safe and effective.\r\nThe patch is made from strong 3M adhesive.\r\nIt contains 100% natural ingredients like soy ink.\r\nThe mosquito repellent patch is SGS approved and has no side effects. It is suitable for entire family including pets. The patch can be used indoor and outdoor. The best part is that it does not cause any skin irritation as there is no skin contact.', '2020-11-29', 5, 0, NULL, NULL, 2, 1, '0', 455, '2', 0, 0.000, 0, NULL, 'ANTI-MOSQUITO PATCH', NULL, 2, '2020-11-29 02:25:53', '2020-11-29 02:25:53'),
(258, 'BABY BATH FOAM 450ML', 'baby-bath-foam-450ml', 'pcs', 860.00, 44, 'Baby Care', 5, 0, 'featured-baby-bath-foam-450ml-leeAktOX.jpg', 'Farlin Baby Bath Foam 250ml is high quality, durable, long lasting, easy to use and brilliantly designed to ease the mose tidiest tasks while the baby grows. A perfect gift for any mother, this product will make life simpler and give you more time to spend with your little one.', 'BABY BATH FOAM 450ML', 'Contains extract comomile\r\nUltra-mild and gentle for tender skin of your baby\r\nCleans without drying or irritating tender skin, leaving baby skin soft and smooth\r\nComes with a pure and gentle cleanser\r\nIdeal for everyday use for your baby as well as for you\r\nClinically tested', '2020-11-29', 5, 0, NULL, NULL, 2, 1, '0', 860, '2', 0, 0.000, 0, NULL, 'BABY BATH FOAM 450ML', NULL, 2, '2020-11-29 02:35:50', '2020-11-29 02:35:50'),
(259, 'BABY BATH TOWEL', 'baby-bath-towel', 'pcs', 1170.00, 46, 'Baby Wear', 5, 0, 'featured-baby-bath-towel-vnrLfE5e.jpg', 'Farlin BF-307A is a soft and comfortable baby bath towel for your little baby. With 100% pure cotton fabric, this product is comfortable, soft and excellent absorbent of water.', 'BABY BATH TOWEL', 'Baby bath towel for your little ones.\r\n100% pure cotton.\r\nComfortable, excellent absorbency.\r\nComfortable & soft, fits perfectly for baby.\r\n118cm x 62cm dimensions.', '2020-11-30', 5, 0, NULL, NULL, 2, 1, '0', 1170, '2', 0, 0.000, 0, NULL, 'BABY BATH TOWEL', NULL, 2, '2020-11-30 00:34:38', '2020-11-30 00:34:38'),
(260, 'BABY BOOTIES 471', 'baby-booties-471', 'pcs', 590.00, 33, 'Accessories', 5, 0, 'featured-baby-booties-471-hqrtzCUB.jpg', 'Size- Small-11.5cm(0-3)m, Medium-12cm (4-6)m, Large-12.5cm(7-9)m,', 'baby shoes, baby boots, baby unisex boots', 'Sole accords with baby\'s foot type; comfortable space enables free activity of toes.\r\nThe vamp is made of superior ventilate material, bright color is lively and cute, to express baby\'s vigor.\r\nSoft padded in the ankle opening, can wrap up baby\'s ankle for protection and comfort properties.\r\nVelcro type: two-way Velcro fixing can fit fully suitable for the baby\'s instep adjustably, comfortable, and non-loosing.\r\nShoestring type: active, adjustable to fit most suitably for baby\'s feet.\r\nComfortable and with easy-to-adjust fixing buckle\r\nAnti- Slip Design', '2020-11-30', 5, 1, NULL, NULL, 2, 1, '0', 590, '2', 0, 0.000, 0, NULL, 'baby shoes, baby boots, baby unisex boots', NULL, NULL, '2020-11-30 00:43:55', '2020-11-30 01:20:04'),
(261, 'BABY CARRY COT/CAR SEAT 885A', 'baby-carry-cotcar-seat-885a', 'pcs', 11000.00, 44, 'Baby Care', 58, 0, 'featured-baby-carry-cotcar-seat-885a-31OftGmO.jpeg', 'Farlin-Baby Carry Cot/Car Seat will protect and take care of your baby safety, while driving or outing.', 'BABY CARRY COT/CAR SEAT 885A', 'Carry Cot\r\nAdjustable seat belt.\r\nWith removable and washable cover.\r\nThe handle of the carry cot can be swiveled to be armrest when used as a car seat that is suitable for baby up to 8-12 months old.\r\nBack base compartment with cover to store small toys, feeding bottles, etc.\r\nCan be put in the stroller model BF-885A to become a travel system.', '2020-11-30', 58, 0, NULL, NULL, 2, 1, '0', 11000, '2', 0, 0.000, 0, NULL, 'BABY CARRY COT/CAR SEAT 885A', NULL, 2, '2020-11-30 00:53:10', '2020-11-30 00:53:10'),
(262, 'BABY CHAIR', 'baby-chair', 'pcs', 10900.00, 47, 'Baby Accessories', 5, 0, 'featured-baby-chair-teRHZtPI.jpg', 'To cut mess to a minimum, it is designed with smooth surfaces and no nooks and crannies where food can collect. The safety table fits snugly against your child’s tummy and prevents food from falling into his or her lap. The detachable tray is easy to take off and can be washed by hand or in the dishwasher.', 'BABY CHAIR', 'Safety belt included\r\n2 positions footrest\r\nRemovable roomy table\r\nPVC Waterproof Seat fabric\r\nEasy to clean \r\nSpacious dining tray', '2020-11-30', 5, 0, NULL, NULL, 2, 1, '0', 10900, '2', 0, 0.000, 0, NULL, 'BABY CHAIR', NULL, 2, '2020-11-30 01:02:35', '2020-11-30 01:02:35'),
(263, 'BABY FOOT COVER', 'baby-foot-cover', 'pcs', 340.00, 46, 'Baby Wear', 5, 0, 'featured-baby-foot-cover-H3iyqSla.jpg', 'This Foot cover is 100% cotton fabric with high absorbency.Avaliable in Blue & Pink color.', 'BABY FOOT COVER', 'Keeps warm and comfortable.\r\nProtects newborn baby\'s foot.\r\nAllows free movement of toes.\r\nSoft and smooth for baby\'s delicate foot.\r\nSuitable for 0 to 6 months children', '2020-11-30', 5, 0, NULL, NULL, 2, 1, '0', 340, '2', 0, 0.000, 0, NULL, 'BABY FOOT COVER', NULL, 2, '2020-11-30 01:10:50', '2020-11-30 01:15:26'),
(264, 'BABY GLOVES', 'baby-gloves', 'pcs', 240.00, 46, 'Baby Wear', 5, 0, 'featured-baby-gloves-a7NJ9iz6.jpg', 'Farlin BF-545 Baby Gloves keep your new-born baby\'s hands warm and comfortable while allowing free movement of fingers. Available in delicate colors and beautiful designs, it has all the right features to keep your baby snug and happy.', 'baby glove, glove', '100% pure cotton fabric with high absorbency.\r\nSoft and smooth for baby\'s delicate hands.\r\nKeeps warm and protects newborn baby\'s hand and fingers.', '2020-11-30', 5, 0, NULL, NULL, 2, 1, '0', 240, '2', 0, 0.000, 0, NULL, 'baby glove, glove', NULL, 2, '2020-11-30 01:26:49', '2020-11-30 01:26:49'),
(265, 'BABY HAT', 'baby-hat', 'pcs', 375.00, 46, 'Baby Wear', 5, 0, 'featured-baby-hat-NGzp5Bvr.jpg', 'Farlin Baby Hat BF-565 are just what you need to keep your new-born baby\'s head protected and warm. The design keeps your baby\'s head comfortable while protecting the baby\'s tender scalp. Available in delicate colours and cute designs, it has all the right features to keep your baby snug and happy.', 'baby hat,topi', '100% pure cotton with high absorbency.\r\nSoft and smooth.\r\nComfortable and easy-to-use.', '2020-11-30', 5, 0, NULL, NULL, 2, 1, '0', 375, '2', 0, 0.000, 0, NULL, 'baby hat,topi', NULL, 2, '2020-11-30 01:33:24', '2020-11-30 01:33:24'),
(266, 'Farlin Feeding Set Bowl TOP-242A', 'farlin-feeding-set-bowl-top-242a', 'pcs', 850.00, 47, 'Baby Accessories', 5, 0, 'featured-farlin-feeding-set-bowl-top-242a-HRs855sz.jpg', 'Farlin TOP-242A Feeding Set (Bowl) is a bowl cutly design for babies with 360 degree-no angle limitation.Wide base design in it is firm and avoids getting turned over.Soft grip in it is easy to hold and fits perfectly with top 242A-1 weaning mat Moms around the world want their new-born to steal the spotlight like celebrity babies. You can make your toddlers little stars by enhancing their sheer cuteness. Your babies can become fashion icon at such a tender age with stylish and safe accessories from Farlin.', 'baby feeding  bowl. BABY LEARNING BOWL', '360° angle rotation, no angle limitation\r\nSoft grip is easy -to-hold.\r\nWide base design is firm\r\nAdjustable according to baby\'s dining angle\r\nAvoids bowl from getting turned over\r\nAvailable in different colours\r\nSuitable for wide age & baby use.\r\nCute design for baby\'s\r\nFits in perfect with top 242A-1 weaning mat', '2020-11-30', 5, 0, NULL, NULL, 2, 1, '0', 850, '2', 0, 0.000, 0, NULL, 'baby feeding  bowl. BABY LEARNING BOWL', NULL, 2, '2020-11-30 01:59:02', '2020-11-30 01:59:02'),
(267, 'BABY LOTION 140ML', 'baby-lotion-140ml', 'pcs', 595.00, 44, 'Baby Care', 5, 0, 'featured-baby-lotion-140ml-X7U6M3dy.jpg', 'Farlin Top-158 Baby Lotion - 140ml is a gentle moisturizing lotion for baby\'s body. Regular use make skin soft and healthy as well as babies smell good after bath. Manufactured from natural substances, contains moisturizing and enriching substances which is good for baby\'s delicate skin and also prevent rashes in the skin.', 'baby lotion.lotion', 'Gentle moisturizing lotion for baby’s body\r\nSpecial formula for baby’s delicate skin\r\nGood for baby’s delicate skin and also prevent rashes in the skin\r\nGood odor, make baby feel fresh without greasiness\r\nPure and mild, contains moisturizing and enriching natural substances\r\nAbsorbed speedily to keep skin smooth and soft .', '2020-11-30', 5, 0, NULL, NULL, 2, 1, '0', 595, '2', 0, 0.000, 0, NULL, 'baby lotion.lotion', NULL, 2, '2020-11-30 02:08:41', '2020-11-30 02:08:41'),
(268, 'FARLIN BABY OIL 140ML', 'farlin-baby-oil-140ml', 'pcs', 595.00, 44, 'Baby Care', 5, 0, 'featured-farlin-baby-oil-140ml-9YR1pNCi.gif', 'Farlin Top-173 Baby Oil - 140ml is a gentle baby oil that contains moisturizing and enriching substances to keep skin smooth and soft. Apply directly to baby\'s skin after bath and diaper changes or use in bath water. This oil can also be used for adults to remove eye make-up, bath oil or as a body moisturizer.', 'farlin baby oil, baby oil,', 'Moisturizing and enriching substance keep skin smooth and soft\r\nUse in bath water or apply to baby’s skin after bath and diaper changes\r\nAlso for adults to remove eye makeup, as a bath oil and aas a body moisturizer', '2020-11-30', 5, 0, NULL, NULL, 2, 1, '0', 595, '2', 0, 0.000, 0, NULL, 'farlin baby oil, baby oil,', NULL, 2, '2020-11-30 04:47:41', '2020-11-30 04:47:41'),
(269, 'BABY POWDER 100GMS', 'baby-powder-100gms', 'pcs', 595.00, 44, 'Baby Care', 5, 0, 'featured-baby-powder-100gms-SL1aa6Qh.jpg', 'Make Your Baby Feel Fresh, Soft And Comfortable With This Farlin Baby Powder. This Powder Is Fine And Pure Giving Skin A Velvety Touch. Also Keeps Baby Skin Dry For A Longer Period. features: -used After Bath And While Diaper Change -keeps Skin Free Of Nappy And Sweat Rashes -clinically Proven To Be Safe, Gentle And Mild -allergy And Dermatologist Tested -100 Gm Bottle.', 'farlin baby powder, baby powder', 'The powder is fine and pure.\r\nGives a velvety softness to the skin.\r\nKeeps cool from rash.', '2020-11-30', 5, 0, NULL, NULL, 2, 1, '0', 595, '2', 0, 0.000, 0, NULL, 'farlin baby powder, baby powder', NULL, 2, '2020-11-30 04:53:02', '2020-11-30 04:53:02'),
(270, 'BABY SHAMPOO 250ML', 'baby-shampoo-250ml', 'pcs', 595.00, 44, 'Baby Care', 5, 0, 'featured-baby-shampoo-250ml-V2nk1o1j.jpg', 'Farlin Top-172 Baby Shampoo - 250ml contains the ingredients of abstracts from coconut oil is very pure and mild which gently cleans hair, leaving it soft, healthy and shiny. Ideal for everyday use for you and your baby.', 'baby shampoo, shampoo', 'Gently cleans hair\r\nContains the extracts of pure coconut oil\r\nLeaves hair soft, healthy and shiny\r\nIdeal for everyday use for you and your', '2020-12-01', 5, 0, NULL, NULL, 2, 1, '0', 595, '2', 0, 0.000, 0, NULL, 'baby shampoo, shampoo', NULL, 2, '2020-12-01 05:04:17', '2020-12-01 05:04:17'),
(271, 'BABY SHAMPOO 450ML', 'baby-shampoo-450ml', 'pcs', 595.00, 44, 'Baby Care', 5, 0, 'featured-baby-shampoo-450ml-6LSesWzZ.jpg', 'Farlin Top-172 Baby Shampoo - 250ml contains the ingredients of abstracts from coconut oil is very pure and mild which gently cleans hair, leaving it soft, healthy and shiny. Ideal for everyday use for you and your baby.', 'baby shampoo, shampoo', 'The formula - abstracts from coconut oil is very pure and mild\r\nGently cleans hair, leaving it soft, healthy, and shiny\r\nIdeal for everyday use for your baby as well as for you', '2020-12-01', 5, 0, NULL, NULL, 2, 1, '0', 595, '2', 0, 0.000, 0, NULL, 'baby shampoo, shampoo', NULL, 2, '2020-12-01 05:10:10', '2020-12-01 05:10:10'),
(272, 'BABY SHEET 431', 'baby-sheet-431', 'pcs', 385.00, 44, 'Baby Care', 5, 0, 'featured-baby-sheet-431-stowjYL7.jpg', 'The greatest hope by Farlin is to satisfy every baby’s need. Carried on by this hope, Farlin strives to provide parents around the world with the best possible baby products. Being the first baby care brand that owned a hospital, every Farlin new creation has behind it a network of medical and technological expertise. Together they design products which support babies in their development in the best way possible', 'baby sheet, waterproof baby sheet', 'Made up of waterproof plastic material\r\nUsed as changing mat or cot sheet for baby\'s bed', '2020-12-01', 5, 0, NULL, NULL, 2, 1, '0', 385, '2', 0, 0.000, 0, NULL, 'baby sheet, waterproof baby sheet', NULL, 2, '2020-12-01 06:07:50', '2020-12-01 06:07:50'),
(273, 'BABY SHOES - LEATHER', 'baby-shoes-leather', 'pcs', 1990.00, 46, 'Baby Wear', 5, 0, 'featured-baby-shoes-leather-acdgggKc.gif', 'Comfortable and with easy to adjust fixing buckle.\r\nCute design gives more likable bearing to the baby.\r\nSole accords with baby\'s foot type, comfortable space enables free activity of toes.\r\nSoft padded in the ankle opening, can wrap up baby\'s ankle for protection and comfort properties.\r\nMade of leather.\r\nLeightweight.\r\nAnti-slip.\r\nSize: 13.5cm', 'baby shoes, shoes, baby shoes leather', 'Moms around the world want their new-born to steal the spotlight like celebrity babies. You can make your toddlers little stars by enhancing their sheer cuteness. Your babies can become fashion icon at such a tender age with stylish and safe accessories from Farlin.', '2020-12-02', 5, 0, NULL, NULL, 2, 1, '0', 1990, '2', 0, 0.000, 0, NULL, 'baby shoes, shoes, baby shoes leather', NULL, 2, '2020-12-02 10:38:05', '2020-12-02 10:38:05'),
(274, 'BABY SHOES1', 'baby-shoes1', 'pcs', 1920.00, 46, 'Baby Wear', 5, 0, 'featured-baby-shoes1-tTi64jNm.png', 'High quality comfortable foot wear for your baby\r\nCan be used when your baby starts walking\r\nHard-wearing\r\nSoft and ventilative\r\nWalks freely and comfortably\r\nIt suits with the shape of baby’s foot\r\nAvailable in different sizes and colors', 'baby shoes, baby footwear', 'Farlin BF-368-1 Baby Shoes is a high quality comfortable foot wear for your baby and can be used when your baby starts walking. Available in different sizes and two colors, this baby shoes is a perfect choice for your baby\'s first steps.', '2020-12-02', 5, 0, 1, '2020-12-10 00:09:00', 2, 1, '0', 1920, '2', 0, 0.000, 0, NULL, 'baby shoes, baby footwear', NULL, 2, '2020-12-02 10:44:40', '2020-12-02 12:39:53'),
(275, 'BABY SHOES2', 'baby-shoes2', 'pcs', 1920.00, 46, 'Baby Wear', 5, 0, 'featured-baby-shoes2-LirasaGJ.gif', 'Farlin BF-368-2 Baby Shoes is a high quality comfortable foot wear for your baby and can be used when your baby starts walking. Available in different sizes and two colors, this baby shoes is a perfect choice for your baby\'s first steps.', 'baby shoes, baby footwear', 'High quality comfortable foot wear for your baby\r\nCan be used when your baby starts walking\r\nHard-wearing\r\nSoft and ventilative\r\nWalks freely and comfortably\r\nIt suits with the shape of baby’s foot\r\nAvailable in different sizes and colors', '2020-12-02', 5, 0, NULL, NULL, 2, 1, '0', 1920, '2', 0, 0.000, 0, NULL, 'baby shoes, baby footwear', NULL, 2, '2020-12-02 10:54:27', '2020-12-02 10:54:27'),
(276, 'BABY SHOES366', 'baby-shoes366', 'pcs', 450.00, 46, 'Baby Wear', 5, 0, 'featured-baby-shoes366-18uK4rii.png', 'Baby shoe is comfortable walking which helps your baby to walk freely and suits the shape of your baby\'s foot.', 'baby shoes, baby footwear', 'Hard-wearing\r\nSoft and ventilative\r\nWalks freely and comfortably\r\nIt suits with the shape of baby’s foot.', '2020-12-02', 5, 0, NULL, NULL, 2, 1, '0', 450, '2', 0, 0.000, 0, NULL, 'baby shoes, baby footwear', NULL, 2, '2020-12-02 11:00:05', '2020-12-02 11:00:05'),
(277, 'Sutkeri Masala', 'sutkeri-masala', 'kg', 2000.00, 49, 'Nepali Bhancha', 1, 0, 'featured-sutkeri-masala-cPccyrlk.jpg', 'This postpartum food(powdered mixture of herbs and immune booster) is typically eaten one or two tablespoons at a time in the morning and evening along  with warm milk.\r\nIt is beneficial to those women who have health  problems  such as excessive bleeding, pain in lower abdomen and back pain. It is used as ayurvedic medicine which can be taken by men as well as women.', 'sutkeri masala, postpartum food, hygienic postpartum food', '100% Natural and Homemade.\r\n✅✅ 100% Vegetarian.\r\n✅✅ 100% chemical Free.\r\n✅✅ Fresh and organic.\r\n✅✅ Boost Immune system.\r\n✅✅ Ready to Eat.\r\n✅✅ More than 450+ Satisfied Family.\r\n✅✅ Home Delivery in almost all Major Cities.', '2020-12-02', 1, 1, 1, '2020-12-31 12:00:00', 2, 1, '0', 2000, '2', 0, 0.000, 0, NULL, 'sutkeri masala, postpartum food, hygienic postpartum food', NULL, NULL, '2020-12-02 12:26:33', '2020-12-02 12:37:00'),
(278, 'BABY SLEEPING BAG', 'baby-sleeping-bag', 'pcs', 3950.00, 47, 'Baby Accessories', 5, 0, 'featured-baby-sleeping-bag-ThfjavXb.jpg', 'Farlin BF-505 Baby Sleeping Bag is a convenient and comfortable product for your baby\'s beautiful nights. It provides excellent warmth to your baby and is also suitable for outdoor use.', 'baby sleeping bag. sleeping bag', 'Keep warm while sleeping\r\nConvenient and comfortable\r\nProvides excellent warmth to your baby\r\nAlso suitable for outgoing\r\nPillow included', '2020-12-11', 5, 0, NULL, NULL, 2, 1, '0', 3950, '2', 0, 0.000, 0, NULL, 'baby sleeping bag. sleeping bag', NULL, 2, '2020-12-11 01:58:06', '2020-12-11 01:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `products_tags`
--

CREATE TABLE `products_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `tags_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_tags`
--

INSERT INTO `products_tags` (`id`, `product_id`, `tags_id`, `created_at`, `updated_at`) VALUES
(1, 209, 2, NULL, NULL),
(2, 217, 2, NULL, NULL),
(3, 218, 2, NULL, NULL),
(4, 218, 1, NULL, NULL),
(5, 219, 1, NULL, NULL),
(6, 220, 2, NULL, NULL),
(7, 222, 2, NULL, NULL),
(8, 224, 2, NULL, NULL),
(9, 225, 2, NULL, NULL),
(10, 227, 1, NULL, NULL),
(11, 228, 2, NULL, NULL),
(12, 229, 2, NULL, NULL),
(13, 230, 2, NULL, NULL),
(14, 231, 2, NULL, NULL),
(15, 232, 2, NULL, NULL),
(16, 233, 2, NULL, NULL),
(17, 234, 2, NULL, NULL),
(18, 235, 2, NULL, NULL),
(19, 236, 2, NULL, NULL),
(20, 237, 2, NULL, NULL),
(21, 238, 2, NULL, NULL),
(22, 239, 2, NULL, NULL),
(23, 240, 2, NULL, NULL),
(24, 241, 2, NULL, NULL),
(25, 242, 2, NULL, NULL),
(26, 243, 2, NULL, NULL),
(27, 244, 2, NULL, NULL),
(28, 245, 2, NULL, NULL),
(29, 246, 2, NULL, NULL),
(30, 247, 2, NULL, NULL),
(31, 248, 2, NULL, NULL),
(32, 249, 2, NULL, NULL),
(33, 252, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `fName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `fName`, `mName`, `lName`, `street`, `city`, `phone`, `created_at`, `updated_at`) VALUES
(1, 2, 'supp', 'l', 'supplier', 'baker street', 'london', '8745125545', NULL, NULL),
(2, 1, 'admin', 'l', 'site adm', 'baker street 23', 'london', '8745125545', NULL, NULL),
(3, 3, 'user', 'l', 'site usr', 'street 23', 'uk', '8745125545', NULL, NULL),
(4, 16, 'aditya', 'k', 'bhattarai', 'balkot, bhaktapur', 'bhaktapur', '9841203040', '2020-07-17 20:25:20', '2020-07-17 20:25:20'),
(5, 17, 'Nikhil', NULL, 'Dhakal', 'Dudhpati', 'Bhaktapur', '9841377539', '2020-07-19 02:37:24', '2020-07-19 02:37:24'),
(6, 18, 'Ram', NULL, 'Thapa', 'Lalitpur, Sunakothi', 'Lalitpur', '9849651254', '2020-07-22 00:07:16', '2020-07-22 00:07:16'),
(7, 19, 'Pathivara', NULL, 'Admin', 'Ktm', 'Ktm', '9841102030', '2020-07-22 00:07:16', '2020-07-22 00:07:16'),
(8, 20, 'nfffj', NULL, 'hhhxxhhhh', 'hhjjjcc', 'hxncncnc', '97766797667', '2020-09-03 00:32:54', '2020-09-03 00:32:54'),
(9, 21, 'ram', 'sadasd', 'narayan', 'sadasd', 'asd asdas', '9841253620', '2020-09-03 00:38:39', '2020-09-03 00:38:39'),
(10, 22, 'ram123433', NULL, 'narayan', 'kathmandu', 'bhaktapur', '9841547858', '2020-09-03 00:40:13', '2020-09-03 00:40:13'),
(11, 23, 'Rajan', NULL, 'whrestga', 'lumbini', 'lalitpur', '98441222333', '2020-09-03 00:40:41', '2020-09-03 00:40:41'),
(12, 24, 'Sauji', 'Kumar', 'Napit', 'Mahalaxmi-8, Lubhu', 'Morang', '9849399058', '2020-09-03 00:45:25', '2020-09-03 00:45:25'),
(13, 25, 'gghddy', NULL, 'hxgzgz', 'ghshs', 'former', '984255566', '2020-09-03 00:53:27', '2020-09-03 00:53:27'),
(14, 26, 'Hari', 'DMT', 'Shankar', 'Lalitpur, Sunakothi', 'Lalitpur', '9849651254', '2020-09-03 06:04:28', '2020-09-03 06:04:28'),
(15, 27, 'keshar', NULL, 'shamsher', 'milup', 'lanbf', '984155266', '2020-09-03 06:06:53', '2020-09-03 06:06:53'),
(16, 28, 'bbcnnn', NULL, 'xcjh', 'hhhhfh', 'xiii', '66554676', '2020-09-03 06:14:59', '2020-09-03 06:14:59'),
(17, 29, 'chamey', NULL, 'xhxjjf', 'xjccfu', 'fjfffj', '5464475', '2020-09-03 06:27:55', '2020-09-03 06:27:55'),
(18, 30, 'kkgg', NULL, 'jcccc', 'क्ज्ज्क्क्क्ज', 'र्‍उफुज्ज', '31466464', '2020-09-03 06:28:35', '2020-09-03 06:28:35'),
(19, 31, 'Sadiksha', NULL, 'Dahal', 'Gangahiti marg', 'Kathmandu', '9823786483', '2020-10-04 22:26:59', '2020-10-04 22:26:59'),
(20, 32, 'Amy', NULL, 'Whitehouse', 'Ganesthan', 'Kathmandu', '9823786483', '2020-10-05 02:16:38', '2020-10-05 02:16:38'),
(21, 33, 'Amanda', NULL, 'Berry', 'chinatown', 'New York', '12345678', '2020-10-05 02:20:35', '2020-10-05 02:20:35'),
(22, 34, 'manny', NULL, 'hunt', 'chabahil', 'Kathmandu', '982', '2020-10-05 02:36:14', '2020-10-05 02:36:14'),
(23, 35, 'Sadi', NULL, 'hal', 'gshss', 'Kathmandu', '6532148', '2020-10-05 02:46:40', '2020-10-05 02:46:40'),
(24, 36, 'Sadiksha', NULL, 'Dahal', 'Gangahiti Marg', 'Kathmandu', '9819994902', '2020-10-05 04:19:08', '2020-10-05 04:19:08'),
(25, 37, 'Prakriti', NULL, 'Raut', 'abc', 'Kathmandu', '98426785', '2020-10-06 23:18:46', '2020-10-06 23:18:46'),
(26, 38, 'Anant', NULL, 'User', 'Saraswatinagar', 'kathmandu', '9819994902', '2020-11-03 20:28:42', '2020-11-03 20:28:42'),
(27, 39, 'Mary', NULL, 'Anne', 'Chakrapath', 'Kathmandu', '12345678', '2020-11-03 20:31:26', '2020-11-03 20:31:26'),
(28, 40, 'abcd', NULL, 'efghi', 'qrst', 'mnop', '1234', '2020-11-03 22:49:11', '2020-11-03 22:49:11'),
(29, 41, 'abc', NULL, 'efg', 'city', 'ktm', '9823786483', '2020-11-03 23:14:01', '2020-11-03 23:14:01'),
(30, 42, 'abc', NULL, 'efg', 'city', 'ktm', '1234567891', '2020-11-03 23:19:45', '2020-11-03 23:19:45'),
(31, 43, 'abc', NULL, 'ppp', 'jfd', 'vbjd', '1234', '2020-11-03 23:25:12', '2020-11-03 23:25:12'),
(32, 44, 'hij', NULL, 'klm', 'djfj678', 'ktm3', '1', '2020-11-03 23:46:55', '2020-11-03 23:46:55'),
(33, 45, 'mno', NULL, 'qr', 'hsjd', 'hfdj', '1', '2020-11-04 00:36:32', '2020-11-04 00:36:32'),
(34, 46, 'Chandan', NULL, 'Pokharel', 'Madhumara', 'Biratnagar', '9779842030369', '2020-11-19 01:08:47', '2020-11-19 01:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating` mediumint(9) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `product_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 2, 225, 4, NULL, NULL),
(2, 36, 210, 4, NULL, NULL),
(3, 36, 219, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `reviewTitle` varchar(191) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `reviewDesc` text CHARACTER SET utf8 NOT NULL,
  `pros` varchar(191) CHARACTER SET utf8 DEFAULT NULL,
  `cons` varchar(191) CHARACTER SET utf8 DEFAULT NULL,
  `rating` double(3,2) NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(191) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8 DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `reviewTitle`, `email`, `reviewDesc`, `pros`, `cons`, `rating`, `userId`, `productId`, `productName`, `status`, `verified`, `created_at`, `updated_at`) VALUES
(1, 'Beautiful', 'supplier@gmail.com', 'Lovely product for a small gift.', NULL, NULL, 4.00, 2, 225, NULL, NULL, 0, '2020-10-05 00:22:29', '2020-10-05 00:22:29'),
(2, 'Sadiksha', 'dahalsadikshya30@gmail.com', 'Nice product.', NULL, NULL, 4.00, 36, 210, NULL, NULL, 0, '2020-10-06 01:03:05', '2020-10-06 01:03:05'),
(3, 'abc', 'dahalsadikshya30@gmail.com', 'fhsefhshfsiAJWQSK', NULL, NULL, 3.00, 36, 219, NULL, NULL, 0, '2020-10-06 01:04:17', '2020-10-06 01:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Supplier', NULL, NULL),
(3, 'Guest', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, '1', '1', NULL, NULL),
(2, '2', '2', NULL, NULL),
(3, '3', '3', NULL, NULL),
(4, '4', '2', NULL, NULL),
(5, '5', '3', NULL, NULL),
(6, '6', '2', NULL, NULL),
(7, '7', '2', NULL, NULL),
(8, '8', '2', NULL, NULL),
(9, '9', '2', NULL, NULL),
(10, '10', '2', NULL, NULL),
(11, '11', '2', NULL, NULL),
(12, '12', '2', NULL, NULL),
(13, '13', '2', NULL, NULL),
(14, '14', '2', NULL, NULL),
(15, '15', '2', NULL, NULL),
(16, '16', '2', NULL, NULL),
(17, '17', '3', NULL, NULL),
(18, '18', '3', NULL, NULL),
(19, '19', '2', NULL, NULL),
(20, '20', '2', NULL, NULL),
(21, '21', '3', NULL, NULL),
(22, '22', '3', NULL, NULL),
(23, '23', '3', NULL, NULL),
(24, '24', '3', NULL, NULL),
(25, '25', '2', NULL, NULL),
(26, '26', '3', NULL, NULL),
(27, '27', '2', NULL, NULL),
(28, '28', '2', NULL, NULL),
(29, '29', '3', NULL, NULL),
(30, '30', '3', NULL, NULL),
(31, '31', '3', NULL, NULL),
(32, '32', '3', NULL, NULL),
(33, '33', '3', NULL, NULL),
(34, '34', '3', NULL, NULL),
(35, '35', '3', NULL, NULL),
(36, '36', '3', NULL, NULL),
(37, '37', '3', NULL, NULL),
(38, '38', '3', NULL, NULL),
(39, '39', '3', NULL, NULL),
(40, '40', '3', NULL, NULL),
(41, '41', '3', NULL, NULL),
(42, '42', '3', NULL, NULL),
(43, '43', '3', NULL, NULL),
(44, '44', '3', NULL, NULL),
(45, '45', '3', NULL, NULL),
(46, '46', '3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_details`
--

CREATE TABLE `shipping_details` (
  `shipping_details_id` int(11) NOT NULL,
  `client_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `state` int(1) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `shipping_type_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_details`
--

INSERT INTO `shipping_details` (`shipping_details_id`, `client_name`, `email`, `address`, `city`, `state`, `zipcode`, `phone`, `shipping_type_id`, `customer_id`) VALUES
(1, 'Priyash Pokharel', 'splashp@gmail.com', 'Madhyapur Thimi', 'Gatthaghar', 3, 44600, 9802071810, NULL, NULL),
(2, 'Priyash Pokharel', 'splashp@gmail.com', 'Madhyapur Thimi', 'Gatthaghar', 3, 44600, 9802071810, NULL, NULL),
(3, 'lok man singh', 'lokman@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Priyash Pokharel', 'splashp@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Renuka Acharya', 'renu.acharyaa@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'pk p', 'ppeshal@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'jff fjfdd', 'tigig', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Sadiksha Dahal', '190018@softwarica.edu.np', 'Chabahil-10', 'Kathmandu', 3, NULL, 98237864839, NULL, NULL),
(9, 'Sadiksha Dahal', '190018@softwarica.edu.np', 'Chabahil-10', 'Kathmandu', 3, NULL, 9823786483, NULL, NULL),
(10, 'Sadiksha Dahal', '190018@softwarica.edu.np', 'Chabahil-10', 'Kathmandu', 3, NULL, 9823786483, NULL, NULL),
(11, 'Sadiksha Dahal', '190018@softwarica.edu.np', 'Chabahil-10', 'Kathmandu', 3, NULL, 9823786412, NULL, NULL),
(12, 'Sadiksha Dahal', '190018@softwarica.edu.np', NULL, NULL, NULL, NULL, NULL, NULL, 31),
(13, 'Sadiksha Dahal', '190018@softwarica.edu.np', NULL, NULL, NULL, NULL, NULL, NULL, 31),
(14, 'Sadiksha Dahal', '190018@softwarica.edu.np', NULL, NULL, NULL, NULL, NULL, NULL, 31),
(15, 'Sadiksha Dahal', '190018@softwarica.edu.np', NULL, NULL, NULL, NULL, NULL, NULL, 31),
(16, 'Sadiksha Dahal', '190018@softwarica.edu.np', 'Chabahil-10', 'Kathmandu', 3, NULL, 9823786483, NULL, 36),
(17, 'Sadiksha Dahal', '190018@softwarica.edu.np', 'Chabahil-10', 'Kathmandu', 3, NULL, 9823786483, NULL, 36),
(18, 'Sadiksha Dahal', '190018@softwarica.edu.np', 'Chabahil-10', 'Kathmandu', 3, NULL, 9823786483, NULL, 36),
(19, 'Sadiksha Dahal', '190018@softwarica.edu.np', 'Chabahil-10', 'Kathmandu', 3, NULL, 9823786483, NULL, 36),
(20, 'Sadiksha Dahal', '190018@softwarica.edu.np', 'Chabahil-10', 'Kathmandu', 3, NULL, 9823786483, NULL, 36),
(21, 'Sadiksha Dahal', '190018@softwarica.edu.np', 'Chabahil-10', 'Kathmandu', 3, NULL, 9823786483, NULL, 36),
(22, 'Sadiksha Dahal', '190018@softwarica.edu.np', 'Chabahil-10', 'Kathmandu', 3, NULL, 9823786483, NULL, 36),
(23, 'Bidhan Ojha', 'ojhabidhan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'b h', 'oks', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Priyash Pokharel', 'splashp@gmail.com', 'Gatthaghar', 'thimi', 3, 66440, 9802030338, NULL, NULL),
(26, 'Priyash Pokharel', 'splashp@gmail.com', 'Gatthaghar', 'thimi', 3, 66440, 9802030338, NULL, NULL),
(27, 'supp supplier', 'bgff', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(28, 'Priyash Pokharel', 'splashp@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(29, 'Sadiksha Dahal', 'dahalsadikshya30@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Sadiksha Dahal', 'dahalsadikshya30@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 36),
(31, 'Sadiksha Dahal', 'dahalsadikshya30@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 36),
(32, 'Priyash', 'splashp@gmail.com', 'gatthaghar', 'gatthaghar', 3, 66440, 9802030338, NULL, NULL),
(33, 'Chandan Pokharel', 'pokharel_c@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Tulasi', 'tdahal2012@gmail.com', 'ktm', 'kathmandu', 5, 988, 9880, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_rate`
--

CREATE TABLE `shipping_rate` (
  `id` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `information` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_type`
--

CREATE TABLE `shipping_type` (
  `shipping_id` int(11) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `approx_days` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `siteName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteLogo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aboutUs` text COLLATE utf8mb4_unicode_ci,
  `privacyPolicy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyrightText` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'CopyRight © 2020',
  `socialLinks` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacts` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `siteName`, `siteLogo`, `aboutUs`, `privacyPolicy`, `copyrightText`, `socialLinks`, `contacts`, `created_at`, `updated_at`) VALUES
(1, 'Bhakari Ghar', 'uploads/site-logo-bhakari-ghar-loui8Tba.png', 'About Us', 'Our Privacy Policy', 'Bhakari Ghar | All Rights Reserved', '{"facebook":"https:\\/\\/facebook.com","twitter":"https:\\/\\/twitter.com","youtube":"https:\\/\\/youtube.com"}', '[{"name":"Contact Name","contactNo":"9841-123456"}]', '2020-10-04 01:43:41', '2020-10-04 01:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `sliderId` int(10) UNSIGNED NOT NULL,
  `textMain` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `textSecondary` text COLLATE utf8mb4_unicode_ci,
  `sliderImage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `productId` int(20) DEFAULT NULL,
  `categoryName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `showSlider` tinyint(1) NOT NULL DEFAULT '1',
  `sliderTheme` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`sliderId`, `textMain`, `textSecondary`, `sliderImage`, `categoryId`, `productId`, `categoryName`, `showSlider`, `sliderTheme`, `created_at`, `updated_at`) VALUES
(1, 'Original Laptop', NULL, 'slider-slider-8O1wR3AjQT.png', NULL, 236, NULL, 1, NULL, '2020-09-24 07:44:08', '2020-10-17 23:58:44'),
(2, 'Mobile Phone Micro', NULL, 'slider-n-kpKVLeaneA.png', NULL, 228, NULL, 1, NULL, '2020-09-24 07:44:55', '2020-10-18 00:02:46'),
(3, 'HAPPY VIJAYA DASHAMI', 'TEST', 'slider-l-yXD0umJwOt.jpg', NULL, 234, NULL, 0, NULL, '2020-10-25 02:14:04', '2020-12-02 11:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_us` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wechat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `user_id`, `detail`, `about_us`, `address`, `email`, `phone`, `facebook_link`, `skype`, `viber`, `wechat`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'BHAKARI GHAR', 'Bhakari Ghar, with a view to simplify your shopping features you the products Made In Nepal locally with love and local flavor.', 'Madhyapur Thimi-03, Gatthaghar Bhaktapur', 'bhakarighar@gmail.com', '9823429970', 'https://www.facebook.com/bhakarighar/', NULL, NULL, NULL, 'uploads/suppliers/1601051739-bhakari-ghar.png', '2020-09-25 10:50:39', '2020-09-26 06:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `info`, `created_at`, `updated_at`) VALUES
(1, 'Stock Clearance', 'stock-clearance', NULL, '2020-09-24 07:10:33', '2020-09-24 07:10:33'),
(2, 'Festive Offer', 'festive-offer', NULL, '2020-09-24 07:10:47', '2020-09-24 07:10:47');

-- --------------------------------------------------------

--
-- Table structure for table `themeslist`
--

CREATE TABLE `themeslist` (
  `themeId` int(10) UNSIGNED NOT NULL,
  `themeName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `themeNumber` int(11) NOT NULL,
  `themeImage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suspend` tinyint(1) NOT NULL DEFAULT '0',
  `assign_theme` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `api_token`, `remember_token`, `suspend`, `assign_theme`, `created_at`, `updated_at`) VALUES
(1, 'Encoderslab', 'encoderslab@gmail.com', '$2y$10$Z1AfMIJQ1rA1e53ii..q1.QLjM8KShK8Dnpk.BlNJ/Nk7o8QUz8w.', 'cmKpTBJsS6DozjtMXZ4L3SwsQDDRy3FsjmD0iSDx1FJpfcoXCj8BicXRDMoi', 'BZiclcVNTfGJXHCOMSIU1nKRJSxdgFyRcttAyHAgAMWRWcZ2LI1XSb9MKQIV', 0, NULL, NULL, '2020-09-01 20:35:21'),
(2, 'supplier', 'supplier@gmail.com', '$2y$10$tFUXztii0G7i3/Us0KNrJeT8MeoLs3ep4sxfrYk3PqeIwH1qPhOyO', 'F01eWdGRl893GgpBsprHidChMSlIPgwnhEBnrgtrqjUpi5uUSE7f6Dw6j2jJ', 'Qcxkm3OdQzusAGTNVh6RROQXn2z7VqO6n0xOBaadehdvWXgZVXOQRVro1fWS', 0, 7, NULL, '2020-10-08 01:00:52'),
(3, 'customer', 'customer@gmail.com', '$2y$10$PyAaRFKHIwTFdxbg898viupQre.PJu/ELBA0H84KZk.7YR/0MYKJK', 'iboMHb47lJ0SNU4MwOJKsacBc9kl9wd6KWQozBi5szTQOnkIEG8epPOOp34s', 'W2Q4aOsLuDGSVXBiXjozP5L0ukwObMZvQIFJcNjnFl9OhxrQyoTVJmhpNBz3', 0, NULL, NULL, '2020-08-26 21:46:38'),
(4, 'supplier', 'supplier_new@gmail.com', '$2y$10$GcBHcA3o8lnjYMbTPqaBjuAglxoIKnjPYYVnBk2CPxnPj2skjC1xy', NULL, NULL, 0, NULL, NULL, '2020-08-02 13:16:38'),
(5, 'user 8', 'user8@gmail.com', '$2y$10$llr0pl2MgF8TOxjQmPU1ceFNmKhznu/XRik1cfUzOrHLmzbPAixA6', NULL, NULL, 0, NULL, NULL, '2020-08-02 13:16:38'),
(16, 'eddie123', 'bhattaraiaditya99@gmail.com', '$2y$10$NUXxPvRuPwqMwwSUgh3V1uV5H5qKtwJEdR6V82PbLdsEO5MzJgRee', NULL, 'qOlqGz1PykX3DLPRXFtcrXqAAwDChWVlga3vfjEtC1HhSFqSq5dHlk0nSQjb', 0, NULL, '2020-07-17 20:25:15', '2020-08-02 13:16:38'),
(17, 'nickarsenal007', 'nickarsenal007@gmail.com', '$2y$10$k/XNBTFnMDvHWChthk1cie2rxr.dP00xTAfK0vBtcFLPvqT8DUUly', NULL, 'VfsdfXcH0nVAo2hpUwaxaVgOlBkXC3oloNVl8bhQY7pDV0GAnJGOBrghKp9A', 0, NULL, '2020-07-19 02:37:22', '2020-08-02 13:16:38'),
(18, 'ramayan', 'cijik81852@romails.net', '$2y$10$sC6J46uXuJnvWUsUQ2WRaeNKINPXTGB7kTehoFoWosuUWzKSJYccS', 'NzVhEuL8C4JTPDI9vRrJsNcqqQFGJZqRdgbZJ5tbT7AAOwsfDb2yYwvCffdV', 'Ni3eMwBDmTixHmNbRgSVvCnljhzqG6PC5xnuBLJ4o1ElhedUczAvH0qUtG99', 1, NULL, '2020-07-22 00:07:14', '2020-08-02 13:16:38'),
(19, 'Pathivara', 'pathivarahardware2065@gmail.com', '$2y$10$VzsXN32xNR7OqoaXT0VqXu3XNf6btxhzL7yTG7zh9LKzfxojSsyzW', '3avN4LYVbxwPjGWOd4aIeJOEWwdTJobQw65czZPf2hM6kKwGeljvSvoSORkQ', 'ArAldogSV4Upz0Mxdf4ez3HP4PmlGIhaCUmnN7W1rqJihG6C3tEtJFweLdQU', 0, NULL, NULL, '2020-08-26 02:10:37'),
(20, 'jjjdjjdjd', 'jdjjdfjjj', '$2y$10$oUskE9cx./0L41a6/T8vHO/qEwyEiakeM4OY/kPWuuS0L0KawhMYG', NULL, NULL, 0, NULL, '2020-09-03 00:32:53', '2020-09-03 00:32:53'),
(21, 'supplier@gmail.com', 'ram@ram.com', '$2y$10$J1zXI1srKcuucU/MrpOwSewROuNxsVjJrHNMhckiSn1ftVbk3jYfG', NULL, 'GTcRH3GaP3uGUMYvs1HxAvFoC9sOVQQNwcQTsCP8M1W0sbXmYpCqu2aCY4Dy', 0, NULL, '2020-09-03 00:38:38', '2020-09-03 00:38:38'),
(22, 'supplier22@gmail.com', 'max123@gmail.com', '$2y$10$xXNvhuxcF0uw.XahHDnuC.MqkbvvEbTZ.3DifTSdsud67GzgeJj3G', NULL, 'DfHCzO0odpcX3Zo25jLg7H1jgqXKj4YBIf4E78bTtetX03OqOB7e1LS3TKDl', 0, NULL, '2020-09-03 00:40:12', '2020-09-03 00:40:12'),
(23, 'rajanov', 'rajan@gmail.com', '$2y$10$rvKgpapNCRsHei8r.Xn.WOQjznJUqNBMiZw4aqpTy5cJI41IBOqQe', '7xVbA46rmGxpdP7AsRqW85tNA5NtqzB9mLjizDxHGnY43SfLnVvYJu0F4GKQ', 'd38ad5IPO4nEi3qbzA0JPUYqHyNtz8bKHgBfgFNx3JvQgyGoDaNtUhLJ6LOg', 0, NULL, '2020-09-03 00:40:40', '2020-09-03 06:32:05'),
(24, 'sauji', 'perifin458@wonrg.com', '$2y$10$DTLYEvMbCRjUO9PZjVw7NugD22usjtxL5A0gl12ulr44Wm2YKbb/W', NULL, 'bT8pV8cTUBhOVneWkxy0na4woOlBh1XyqrC5mgG8m6bHeXE0nzwDx1urCLt5', 0, NULL, '2020-09-03 00:45:24', '2020-09-03 00:45:24'),
(25, 'polop', 'polop@gmail.com', '$2y$10$BoRmF6W7O8y2CAMYyR741uCMqGz4rOFSEfP6BieN9mh2xnKa4e3gS', NULL, NULL, 0, NULL, '2020-09-03 00:53:27', '2020-09-03 00:53:27'),
(26, 'shankar', 'shankarhari@gmail.com', '$2y$10$iW85cvASKNlgQy9iM/LdOuqm0cqIw3mNLMcqW4BeQo/IkZ.WDzZQG', NULL, NULL, 0, NULL, '2020-09-03 06:04:27', '2020-09-03 06:04:27'),
(27, 'keshar', 'keshar@tesmnil.nom', '$2y$10$0xAu56WLDvXgEjSsojifNeOgeyuDFBdmEHzuQCAWTTgEQwrXTJDRm', NULL, NULL, 0, NULL, '2020-09-03 06:06:53', '2020-09-03 06:06:53'),
(28, 'hfffj', 'yeddyy', '$2y$10$ADp7tq.mIB3MpK9Sed3/4ObWTubt.qaSsR.sqpiPVdYB.qYOs8n3m', NULL, NULL, 0, NULL, '2020-09-03 06:14:59', '2020-09-03 06:14:59'),
(29, 'jdddddff', 'ncccjc', '$2y$10$56mo1.6VMmbna6eWA8jp7edGRZM/C8jRDxuCUhHzNO36OT4xRZB06', NULL, NULL, 0, NULL, '2020-09-03 06:27:55', '2020-09-03 06:27:55'),
(30, 'jcjccccc', 'igfjffj', '$2y$10$RuxTGrUB6gnaZkhON74wce.S8ctZcabu/ZuaxD1mzpxKW39wZNB/m', NULL, NULL, 0, NULL, '2020-09-03 06:28:35', '2020-09-03 06:28:35'),
(31, 'Sadiksha_dahal', '190018@softwarica.edu.np', '$2y$10$f1klowUIfgi0PIcgrRktY.AU.arY5aDRO7bcr8S.RE8qmofZxRgoq', 'VpVQE2fClhuwheTj3c7vn43CKkWJfYn4M6eIJTiKq0OaLw674p6Blsk4IJYa', NULL, 0, NULL, '2020-10-04 22:26:58', '2020-10-04 22:28:13'),
(32, 'Amy', 'vanoc81520@pickybuys.com', '$2y$10$aojHBwanaBOJyNiML3KGTOMGNFyfuX6.P2H7WsAfXjaa7YJN982hy', 'Ruv5lfZEJfDjutunmJEPOqnbx3nabO8GdMUdnu4TzEfM7gVtPrSg2vRcoMgL', NULL, 0, NULL, '2020-10-05 02:16:37', '2020-10-05 02:17:28'),
(33, 'Amanda', 'tawowex439@trendtivia.com', '$2y$10$gibpIfPsmhxxob6GxRwKDeSxYEjhyWTN9r8VnXaxpvyzgmqSDwmim', 'ErnFPHNzYFZH72N6KMZwhet5zyY7JbdOOBlEFfaBM2k481Kiwmn0bge9Pkca', NULL, 0, NULL, '2020-10-05 02:20:33', '2020-10-05 02:21:14'),
(34, 'manny', 'tedasep734@trendtivia.com', '$2y$10$k.eShGnnGEEoJMWPvMaG/euZKjsGumrAFQm/zL4BFDevfOGAw6sXu', 'XcEERb0VTMSkzHNbzP9DEcj60RnjIEKqMyTAhceXZhf2U7S2Cr0NxryKgTtf', NULL, 0, NULL, '2020-10-05 02:36:13', '2020-10-05 02:36:48'),
(35, 'Sadi', 'doyapa3589@treeheir.com', '$2y$10$wdhBArDaKyvIQ/ysHazpBehY.rxFSB2Pf5H9Poqaj1Eccu4alKdgi', 'qIxmtQ5CHawkYoeamznDDspnxOxtYslJrJXxnHGpfXaCPxuJlyhouxAtsJ8E', NULL, 0, NULL, '2020-10-05 02:46:39', '2020-10-05 02:47:10'),
(36, '190018', 'dahalsadikshya30@gmail.com', '$2y$10$CqRfp9Cp/hpPfktCzJ.BXuHCqNmqHlptzRzM8vlMwSUH10KkUhVHu', 'RaMm08Y9kaM0NaMBFmOAGMRG5encb5k4sqnuhLnzHjw9KHarCfTTKl5NZ2bW', 'qjrOwOI8xgMggrDLhDv7SuejJfD9oUziSrinGvd7OrtCo47oFB3smmYwDjLM', 0, NULL, '2020-10-05 04:19:08', '2020-11-04 01:26:30'),
(37, 'Prakriti Raut', 'prakritiraut66@gmail.com', '$2y$10$dopV/2RaPGv/vFrLPOYOQ.nYvB7Rsf0SiNl2.pqR5LGBdsGwjF8JW', NULL, NULL, 0, NULL, '2020-10-06 23:18:46', '2020-10-06 23:18:46'),
(38, 'Anant!2', 'feyalaj759@fw025.com', '$2y$10$XNmwqVYyY78bbjF3MtB5m.JPy.s34D5ajLG/FlbzFhqXKSjG19RIa', 'SoRU8Tsm2cnsIDvu1DDonYF9V6Ff5VR6Bjlgns98D6xRPKw680PS0NZbGF7C', NULL, 0, NULL, '2020-11-03 20:28:41', '2020-11-03 20:29:09'),
(39, 'Mary', 'yasod69269@soowz.com', '$2y$10$bgtVuKxFS7b9sm5kXJc6EuCmMffd2IGuqYQ9rmmUVX3rDBkuqNm2S', 'QSOZlO2Cw2BKMikqwC7BC44KBF0oqfq9ksQ482T28nhleLUlVHAIQa17RaQq', NULL, 0, NULL, '2020-11-03 20:31:26', '2020-11-03 20:31:52'),
(40, 'Abc', 'mawav57430@soowz.com', '$2y$10$3km0Fn1NsKSTv3Imvt.RL..1TXmM8zvszEQDPaCy2qMaphpbLm5I2', NULL, NULL, 0, NULL, '2020-11-03 22:49:10', '2020-11-03 22:49:10'),
(41, 'cba', 'The user can be registered using temporary or fake mails.', '$2y$10$AjMlz/0kee4LnUOzlbSmy.fNo7aHDYdZJvY2RcLgVsRno.o4QP44q', NULL, NULL, 0, NULL, '2020-11-03 23:14:01', '2020-11-03 23:14:01'),
(42, 'bca', 'nosatok822@fw025.com', '$2y$10$JmcKNzRmj0L3TYTB2hroVOu4JpLXIpx.Eo4wdLw3lNLrJ07Tyquwy', 'PdPO4ccsHg6IxG0X0ZlXCVoPzhzwj6cPjLWa7a21PFza7jp5aWyosRfyKHTX', NULL, 0, NULL, '2020-11-03 23:19:45', '2020-11-03 23:19:59'),
(43, 'mbd', 'neyeya1659@fw025.com', '$2y$10$Rlhb.WCXvjqBBD2rJIIMyuRQzHvZ6ZXWgQA3YvJMgAzZPsC0sDEzC', 'gm9P8wIdgMAE0Yew2N9rz3ztjCgdxhgr3yXrBKBp7XLujJZha89nKM4x3v49', NULL, 0, NULL, '2020-11-03 23:25:12', '2020-11-03 23:25:28'),
(44, 'jfdfhj', 'canok68592@soowz.com', '$2y$10$/YwAU/2SLmFrWVc9vsjZxOqqkUTojggNK/vYqrsPGw6JcZEFCQX16', 'w5iAuIRZe6jtY2G2cYAzYahY6vHUAbd3m3AMy0pCgyHe3VASqaUOLrwKlXzP', NULL, 0, NULL, '2020-11-03 23:46:54', '2020-11-03 23:47:18'),
(45, 'mon', 'bovipo7699@fw025.com', '$2y$10$erDaMwU5T9OF/E1tVwKs5Op/5ts82R5siI01igLvZkwp12hnmsnGu', 'jIPdQD65UBJQPxHb8iVzDCCVosYuInH74Lq93dTyqmKnL5y0Zrkc69YqfJUN', NULL, 0, NULL, '2020-11-04 00:36:32', '2020-11-04 00:36:52'),
(46, 'chandan', 'pookharel_c@yahoo.com', '$2y$10$lD2hGXyThbqZI90jI3zx0.tMFCZTRhBhXtXeLGQvlxVzwu4fydMzu', NULL, NULL, 0, NULL, '2020-11-19 01:08:47', '2020-11-19 01:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `userId`, `productId`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 2, 205, 0, '2020-09-22 21:52:34', '2020-09-22 21:52:34'),
(2, 36, 205, 0, '2020-10-06 00:52:36', '2020-10-06 00:52:36'),
(3, 36, 226, 0, '2020-10-06 00:52:56', '2020-10-06 00:52:56'),
(4, 36, 217, 0, '2020-10-06 00:52:56', '2020-10-06 00:52:56'),
(5, 36, 206, 0, '2020-10-06 00:53:08', '2020-10-06 00:53:08'),
(6, 36, 215, 0, '2020-10-06 00:57:22', '2020-10-06 00:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `zone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headquarter` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boost_orders`
--
ALTER TABLE `boost_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deviceToken`
--
ALTER TABLE `deviceToken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khaltis`
--
ALTER TABLE `khaltis`
  ADD PRIMARY KEY (`khalti_id`),
  ADD KEY `khaltis_user_id_index` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_unique_order_identifier_unique` (`unique_order_identifier`);

--
-- Indexes for table `ordersbackup`
--
ALTER TABLE `ordersbackup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `order_detail_new`
--
ALTER TABLE `order_detail_new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_new`
--
ALTER TABLE `order_new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `order_updates`
--
ALTER TABLE `order_updates`
  ADD PRIMARY KEY (`order_update_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_tags`
--
ALTER TABLE `products_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_details`
--
ALTER TABLE `shipping_details`
  ADD PRIMARY KEY (`shipping_details_id`);

--
-- Indexes for table `shipping_rate`
--
ALTER TABLE `shipping_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_type`
--
ALTER TABLE `shipping_type`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`sliderId`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themeslist`
--
ALTER TABLE `themeslist`
  ADD PRIMARY KEY (`themeId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boost_orders`
--
ALTER TABLE `boost_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `deviceToken`
--
ALTER TABLE `deviceToken`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `khaltis`
--
ALTER TABLE `khaltis`
  MODIFY `khalti_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;
--
-- AUTO_INCREMENT for table `products_tags`
--
ALTER TABLE `products_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `shipping_details`
--
ALTER TABLE `shipping_details`
  MODIFY `shipping_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `shipping_rate`
--
ALTER TABLE `shipping_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shipping_type`
--
ALTER TABLE `shipping_type`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `sliderId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
