-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2023 at 09:24 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `adType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adstartTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adservicetype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_status` int NOT NULL DEFAULT '0',
  `packageId` int DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `resubstatus` int NOT NULL DEFAULT '0',
  `renewstatus` int NOT NULL DEFAULT '0',
  `member_status` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `title`, `link`, `packageName`, `price`, `description`, `adType`, `duration`, `adstartTime`, `adservicetype`, `image`, `profile_image`, `profile_status`, `packageId`, `customerId`, `resubstatus`, `renewstatus`, `member_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Enim fugiat veritati', 'Magna sunt do deseru', 'platinum', NULL, 'Aspernatur in conseq', 'sale', '5184000', '1686726995', 'service', 'ads/1845109452.jpg', NULL, 0, 1, 4, 0, 0, 0, 1, '2023-06-10 09:18:04', '2023-06-14 07:16:35'),
(2, 'Veniam recusandae', 'Magni ut velit solut', 'platinum', NULL, 'Neque tempor adipisc', 'rent', '18143905', '1686818768', 'promotional', 'ads/eadc016123.jpg', NULL, 0, 4, 5, 0, 0, 1, 1, '2023-06-15 08:45:54', '2023-06-15 08:47:43'),
(3, 'Temporibus deserunt', 'Est quis atque nemo', 'regular', NULL, 'Aperiam voluptas ull', 'buy', '31536000', '1686992805', 'service', 'ads/49d00d0826.png', NULL, 0, 9, 5, 0, 0, 1, 1, '2023-06-17 09:03:29', '2023-06-17 09:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailPhone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `customerType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `businessType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tradelince` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `mailPhone`, `nid`, `address`, `customerType`, `password`, `companyName`, `image`, `profile_image`, `profile_status`, `businessType`, `tradelince`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dipankar Biswas', 'dipankar@gmail.com', '646546516745', 'Dhaka, Bangladesh', 'personal', '$2y$10$QKsflKWl6.KpWpgHLGCWkeFnFoY27l5n4uAsFDZxnrCl78He4Xm/S', NULL, 'customerImage/05dea08b6e.jpg', 'membershipImage/89285e7b8d.pdf', '1', NULL, NULL, 1, 's9qPjj3JqAklKPMurmQ6Sb9GSlQ0aMydtjXfwHtcenVZ9VP5sTlrvGY7i6uX', '2023-06-04 09:19:04', '2023-06-14 11:22:44'),
(2, 'Dipankar SG', 'dipu@gmail.com', '74465454534654', 'Dhaka, Bangladesh', 'personal', '$2y$10$ydZrisnY.CTAemshkzn3helm7UDh6CoCHDQKWay4Q2Ka6ZDIRUjja', NULL, NULL, NULL, NULL, NULL, NULL, 1, '5uxaBDyyO9FK4puuqqenNyQcibCAKpGlYBssjjcPW0jcSnh02c7FS0VuU2WI', '2023-06-04 09:54:23', '2023-06-14 11:16:52'),
(3, 'Roy', 'roy@gmail.com', '74647646546', '271-Boro Moghbazar, Dhaka, BD', 'personal', '$2y$10$QKsflKWl6.KpWpgHLGCWkeFnFoY27l5n4uAsFDZxnrCl78He4Xm/S', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'PWsgxIgTjSqVarcuxfF5JS1l0bVd0jA9FPffFJ7aCTDtG6m8KjOYBt3Hoi1l', '2023-06-10 06:24:20', '2023-06-10 06:25:15'),
(4, 'Officials', 'dipankarbiswasofficials@gmail.com', '7986413548641', '271-Boro Moghbazar, Dhaka, BD', 'personal', '$2y$10$QKsflKWl6.KpWpgHLGCWkeFnFoY27l5n4uAsFDZxnrCl78He4Xm/S', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'bKrWX08OtBAH1ESJgbFowiRI8pKdPv570TluwJHncPQwREhDSCOqvDCvqbjF', '2023-06-10 06:26:22', '2023-06-14 11:23:13'),
(5, 'Dipankar', '01741571104', '56465465465', '271-Boro Moghbazar, Dhaka, BD', 'company', '$2y$10$eZ1EbPnMsmwVAjLdzWA6tOumG8NzvYeZZWijXSua5AHvSfk11eq9q', 'Dipankar Biswas', 'customerImage/3f44f83c03.jpg', 'membershipImage/d77522b243.jpg', '1', 'Phone', '5746458978', 1, 'SODgaD7UyImrGS1r6J5DnlHSeUvcIycrCqcnZ0bpcuI9sYZ6Hc8ZsjImGDd5', '2023-06-15 06:42:00', '2023-06-15 08:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` bigint UNSIGNED NOT NULL,
  `packageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentMethod` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentGetway` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prepareby` int DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `payment` int NOT NULL DEFAULT '0',
  `adstatus` int NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `packageName`, `price`, `duration`, `paymentMethod`, `paymentGetway`, `prepareby`, `customerId`, `payment`, `adstatus`, `status`, `created_at`, `updated_at`) VALUES
(1, 'membership', '2000', '365', 'cash', 'Bank', NULL, 1, 1, 1, 1, '2023-06-14 07:15:30', '2023-06-14 08:25:39'),
(2, 'membership', '2000', '365', 'cash', 'Bank', NULL, 5, 1, 1, 1, '2023-06-15 08:41:35', '2023-06-15 08:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `customer_id`, `file`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hi sdfsd', '5', 'message/534d9b82bf.jpg', 1, '2023-06-15 08:48:22', '2023-06-15 08:48:43'),
(2, 'Hi, There \r\nMy Problem this Image.', '5', 'message/5d36afb836.jpg', 1, '2023-06-15 08:53:57', '2023-06-15 08:54:12'),
(3, 'Detect line breaks (\\n) while reading from a database (Javascript, HTML, firebase)\r\nProblem Solve\r\nOk Bye', '5', 'message/92db67ab51.png', 1, '2023-06-15 09:06:45', '2023-06-15 09:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_25_064936_create_sales_table', 1),
(6, '2023_03_27_061644_create_buy_ads_table', 1),
(7, '2023_03_27_065154_create_rent_ads_table', 1),
(8, '2023_03_29_081153_add_paid_to_sales_table', 1),
(9, '2023_03_29_081318_add_paid_to_buy_adss_table', 1),
(10, '2023_03_29_081511_add_paid_to_rent_ads_table', 1),
(11, '2023_05_17_042626_create_customers_table', 1),
(12, '2023_05_22_054231_create_packages_table', 1),
(13, '2023_05_23_041350_create_ads_table', 1),
(14, '2023_06_05_114724_create_renews_table', 2),
(21, '2023_06_07_154150_create_settings_table', 3),
(22, '2023_06_14_111115_create_memberships_table', 4),
(23, '2023_06_14_160303_create_messages_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint UNSIGNED NOT NULL,
  `packageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentMethod` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentGetway` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prepareby` int DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `payment` int NOT NULL DEFAULT '0',
  `adstatus` int NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `packageName`, `price`, `duration`, `paymentMethod`, `paymentGetway`, `prepareby`, `customerId`, `payment`, `adstatus`, `status`, `created_at`, `updated_at`) VALUES
(1, 'platinum', '13500', '60', 'cash', 'Nagad', 1, 4, 1, 0, 1, '2023-06-10 09:11:52', '2023-06-10 09:18:04'),
(2, 'gold', '27000', '180', 'cash', 'Bank', 1, 4, 1, 1, 1, '2023-06-10 09:17:07', '2023-06-10 09:17:29'),
(3, 'platinum', '54000', '365', 'cash', 'Bkash', 1, 4, 1, 1, 1, '2023-06-10 09:17:18', '2023-06-10 09:17:32'),
(4, 'platinum', '21600', '30', 'Free', 'Free', NULL, 5, 1, 0, 1, '2023-06-15 08:44:01', '2023-06-15 08:47:43'),
(5, 'gold', '18720', '180', 'cash', 'Bank', NULL, 5, 0, 1, 1, '2023-06-17 08:49:49', '2023-06-17 08:49:49'),
(6, 'platinum', '21600', '180', 'AamarPay', 'AamarPay', NULL, NULL, 1, 1, 1, '2023-06-17 08:52:07', '2023-06-17 08:52:07'),
(7, 'silver', '4800', '60', 'cash', 'Bkash', NULL, 5, 0, 1, 1, '2023-06-17 08:58:42', '2023-06-17 08:58:42'),
(8, 'platinum', '21600', '180', 'AamarPay', 'AamarPay', NULL, NULL, 1, 1, 1, '2023-06-17 09:01:34', '2023-06-17 09:01:34'),
(9, 'regular', '14600', '365', 'AamarPay', 'AamarPay', NULL, 5, 1, 0, 1, '2023-06-17 09:02:29', '2023-06-17 09:03:29'),
(10, 'regular', '750', '15', 'AamarPay', 'AamarPay', NULL, 5, 1, 1, 1, '2023-06-17 09:20:24', '2023-06-17 09:20:24'),
(11, 'platinum', 'Free', '30', 'Free', 'Free', NULL, 1, 1, 1, 1, '2023-06-22 07:13:31', '2023-06-22 07:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `renews`
--

CREATE TABLE `renews` (
  `id` bigint UNSIGNED NOT NULL,
  `adsid` int NOT NULL,
  `packageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentMethod` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentGetway` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prepareby` int DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `payment` int NOT NULL DEFAULT '0',
  `adstatus` int NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `header_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `copyright_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `header_logo`, `phone`, `email`, `address`, `facebook`, `instagram`, `twitter`, `linkedin`, `youtube`, `footer_logo`, `footer_content`, `copyright_image`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, 'settingImage/0529076126.jpg', '+8809678800843', 'info@sobkisubazar.com', '65, Rasul View, Suite-8/A, Mymensingh Lane, Banglamotor, Dhaka-1000.', 'https://www.facebook.com/sobkisubazar', 'https://www.instagram.com/sobkisubazar/', 'https://twitter.com/SobkisuBazar', 'https://www.linkedin.com/company/sobkisubazar/', 'https://www.youtube.com/@sobkisubazar', 'settingImage/2d648c20f3.png', 'Sobkisubazar is the fastest online marketplace in Bangladesh. SKB Ad store is a concern of Sobkisubazar. Promote your Business with our audience on our ad store, get your targeted audience and generate more revenue.', 'settingImage/f1b9acdc8b.png', '2022 Sobkisubazar Ad Store. All rights reserved.', '2023-06-08 05:01:23', '2023-06-22 06:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dip', 'dip@gmail.com', NULL, NULL, '$2y$10$FQqzhQXEoteizZsEFxrjNOSB1vFlT5zGtYGi58f1VM6XppfyJ7D9G', 1, NULL, NULL, NULL),
(2, 'Roy Roy', 'roy@gmail.com', 'upload/user/08072b6af5.png', NULL, '$2y$10$0xFfxgmmKYbNZ9SHPIGwQuenuyYYDbItsFBGKSrGJib/3RWPZfUsG', 1, NULL, '2023-06-14 09:21:15', '2023-06-15 06:13:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `renews`
--
ALTER TABLE `renews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `renews`
--
ALTER TABLE `renews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
