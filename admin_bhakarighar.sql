-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 20, 2020 at 04:20 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_pathivara`
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
(18, 30, 'kkgg', NULL, 'jcccc', 'क्ज्ज्क्क्क्ज', 'र्‍उफुज्ज', '31466464', '2020-09-03 06:28:35', '2020-09-03 06:28:35');

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
(30, '30', '3', NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `sliderId` int(10) UNSIGNED NOT NULL,
  `textMain` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `textSecondary` text COLLATE utf8mb4_unicode_ci,
  `sliderImage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` int(11) NOT NULL,
  `productId` int(20) DEFAULT NULL,
  `categoryName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `showSlider` tinyint(1) NOT NULL DEFAULT '1',
  `sliderTheme` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Encoderslab', 'encoderslab@gmail.com', '$2y$10$Z1AfMIJQ1rA1e53ii..q1.QLjM8KShK8Dnpk.BlNJ/Nk7o8QUz8w.', 'cmKpTBJsS6DozjtMXZ4L3SwsQDDRy3FsjmD0iSDx1FJpfcoXCj8BicXRDMoi', 'qvgywfuIbGFdnGQImwPCrMLyS3rDyVvXtOqjlc61re8Opxj0XQcPNkoEEkhr', 0, NULL, NULL, '2020-09-01 20:35:21'),
(2, 'supplier', 'supplier@gmail.com', '$2y$10$tFUXztii0G7i3/Us0KNrJeT8MeoLs3ep4sxfrYk3PqeIwH1qPhOyO', 'Etb8Q1AuxlbY6jdg1k8iiqIQ0wMLSgNtfPow7VJfYDfq3GsTKU6BMVHoGb0E', 'QiHLUI88KGkFoLOfwDfMgi8ieRtmO8RDLBY1dSH7fLsGKGYkJ1bKNpGq11um', 0, 7, NULL, '2020-09-12 04:34:01'),
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
(30, 'jcjccccc', 'igfjffj', '$2y$10$RuxTGrUB6gnaZkhON74wce.S8ctZcabu/ZuaxD1mzpxKW39wZNB/m', NULL, NULL, 0, NULL, '2020-09-03 06:28:35', '2020-09-03 06:28:35');

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
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `deviceToken`
--
ALTER TABLE `deviceToken`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `khaltis`
--
ALTER TABLE `khaltis`
  MODIFY `khalti_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
--
-- AUTO_INCREMENT for table `products_tags`
--
ALTER TABLE `products_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `shipping_details`
--
ALTER TABLE `shipping_details`
  MODIFY `shipping_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
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
  MODIFY `sliderId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
