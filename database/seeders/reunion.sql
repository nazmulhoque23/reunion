-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 14, 2022 at 06:22 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reunion`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_one` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_two` longtext COLLATE utf8mb4_unicode_ci,
  `abimg` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `content_one`, `content_two`, `abimg`, `created_at`, `updated_at`) VALUES
(1, 'বাংলা-কবিতা ডট কম ওয়েবসাইটটি বর্তমান সময়ে বাংলা কবিতার সবচেয়ে জনপ্রিয় ও সমৃদ্ধ ওয়েব পোর্টাল। এ প্রজন্মের শতাধিক কবি আমাদের কবিতার আসরে প্রতিদিন কবিতা প্রকাশ করছেন। কবিতা প্রকাশের পাশাপাশি রয়েছে কবি ও কবিতার উপর নানারকম আলোচনা, কবিতার বই ও আবৃত্তি প্রকাশের সুবিধা। উপস্থিত সদস্যেরা যেমন সমমনা কবি ও সদস্যদের সাথে পরিচিত হতে পারছেন, পাশাপাশি ওয়েবসাইটের সার্বিক আবহে ঋদ্ধ হচ্ছেন বাংলা সাহিত্যের কাব্যিক আবেশে। এছাড়াও এখানে রয়েছে বাংলার খ্যাতিমান কবিদের সহস্রাধিক কবিতার এক সংগ্রহশালা, যা নিয়মিত আরও সমৃদ্ধ হচ্ছে। আপনি যদি সৌখিন কবি, আবৃত্তিকার, অথবা কবিতা-প্রেমী যে কেউ হয়ে থাকেন, তবে জানবেন এই ওয়েবসাইটটি আপনার জন্যেই তৈরি করা হয়েছে!', 'ডট কম ওয়েবসাইটটি বর্তমান সময়ে বাংলা কবিতার সবচেয়ে জনপ্রিয় ও সমৃদ্ধ ওয়েব পোর্টাল। এ প্রজন্মের শতাধিক কবি আমাদের কবিতার আসরে প্রতিদিন কবিতা প্রকাশ করছেন। কবিতা প্রকাশের পাশাপাশি রয়েছে কবি ও কবিতার উপর নানারকম আলোচনা, কবিতার বই ও আবৃত্তি প্রকাশের সুবিধা। উপস্থিত সদস্যেরা যেমন সমমনা কবি ও সদস্যদের সাথে পরিচিত হতে পারছেন, পাশাপাশি ওয়েবসাইটের সার্বিক আবহে ঋদ্ধ হচ্ছেন বাংলা সাহিত্যের কাব্যিক আবেশে। এছাড়াও এখানে রয়েছে বাংলার খ্যাতিমান কবিদের সহস্রাধিক কবিতার এক সংগ্রহশালা, যা নিয়মিত আরও সমৃদ্ধ হচ্ছে। আপনি যদি সৌখিন কবি, আবৃত্তিকার, অথবা কবিতা-প্রেমী যে কেউ হয়ে থাকেন, তবে জানবেন এই ওয়েবসাইটটি আপনার জন্যেই তৈরি করা হয়েছে!', '1665608483.png', '2022-10-12 15:01:23', '2022-10-12 15:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` int(10) UNSIGNED NOT NULL,
  `batch_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `batch_name`, `created_at`, `updated_at`) VALUES
(1, '1973', NULL, NULL),
(2, '1974', NULL, NULL),
(3, '1975', NULL, NULL),
(4, '1976', NULL, NULL),
(5, '1977', NULL, NULL),
(6, '1978', NULL, NULL),
(7, '1979', NULL, NULL),
(8, '1980', NULL, NULL),
(9, '1981', NULL, NULL),
(10, '1982', NULL, NULL),
(11, '1983', NULL, NULL),
(12, '1984', NULL, NULL),
(13, '1985', NULL, NULL),
(14, '1986', NULL, NULL),
(15, '1987', NULL, NULL),
(16, '1988', NULL, NULL),
(17, '1989', NULL, NULL),
(18, '1990', NULL, NULL),
(19, '1991', NULL, NULL),
(20, '1992', NULL, NULL),
(21, '1993', NULL, NULL),
(22, '1994', NULL, NULL),
(23, '1995', NULL, NULL),
(24, '1996', NULL, NULL),
(25, '1997', NULL, NULL),
(26, '1998', NULL, NULL),
(27, '1999', NULL, NULL),
(28, '2000', NULL, NULL),
(29, '2001', NULL, NULL),
(30, '2002', NULL, NULL),
(31, '2003', NULL, NULL),
(32, '2004', NULL, NULL),
(33, '2005', NULL, NULL),
(34, '2006', NULL, NULL),
(35, '2007', NULL, NULL),
(36, '2008', NULL, NULL),
(37, '2009', NULL, NULL),
(38, '2010', NULL, NULL),
(39, '2011', NULL, NULL),
(40, '2012', NULL, NULL),
(41, '2013', NULL, NULL),
(42, '2014', NULL, NULL),
(43, '2015', NULL, NULL),
(44, '2016', NULL, '0000-00-00 00:00:00'),
(45, '2017', NULL, '0000-00-00 00:00:00'),
(46, '2018', NULL, '0000-00-00 00:00:00'),
(47, '2019', NULL, '0000-00-00 00:00:00'),
(48, '2020', NULL, '0000-00-00 00:00:00'),
(49, '2021', NULL, '0000-00-00 00:00:00'),
(50, '2022', NULL, '0000-00-00 00:00:00'),
(51, '2023', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bloods`
--

CREATE TABLE `bloods` (
  `id` int(10) UNSIGNED NOT NULL,
  `blood` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bloods`
--

INSERT INTO `bloods` (`id`, `blood`, `created_at`, `updated_at`) VALUES
(1, 'A+', NULL, NULL),
(2, 'A-', NULL, NULL),
(3, 'B+', NULL, NULL),
(4, 'B-', NULL, NULL),
(5, 'O+', NULL, NULL),
(6, 'O-', NULL, NULL),
(7, 'AB+', NULL, NULL),
(8, 'AB-', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branch_committees`
--

CREATE TABLE `branch_committees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branch_committees`
--

INSERT INTO `branch_committees` (`id`, `name`, `designation`, `mobile_no`, `email`, `image`, `created_at`, `updated_at`) VALUES
(1, 'sawrav ty', 'Administrator', '0178245677', 'admin@gmail.com', '20221013135458.jpg', '2022-10-13 07:54:58', '2022-10-13 07:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'প্রাক্তন শিক্ষার্থী', 500, NULL, NULL),
(2, 'বর্তমান শিক্ষার্থী', 200, NULL, NULL),
(3, 'শুভাকাঙ্খী', 1, NULL, NULL),
(4, 'অতিথি', 500, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `confirmations`
--

CREATE TABLE `confirmations` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `confirmations`
--

INSERT INTO `confirmations` (`id`, `order_id`, `amount`, `mobile`, `msg`, `name`, `transaction_status`, `created_at`, `updated_at`) VALUES
(1, 'BHO63484f2d10cf7', 1, '01782298907', 'Success', 'Fazlul', 'Completed', '2022-10-13 22:06:01', '2022-10-13 22:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `district_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `district_name`, `created_at`, `updated_at`) VALUES
(1, 'Barguna', NULL, NULL),
(2, 'Barisal', NULL, NULL),
(3, 'Bhola', NULL, NULL),
(4, 'Jhalokati', NULL, NULL),
(5, 'Patuakhali', NULL, NULL),
(6, 'Pirojpur', NULL, NULL),
(7, 'Bandarban', NULL, NULL),
(8, 'Brahmanbaria', NULL, NULL),
(9, 'Chandpur', NULL, NULL),
(10, 'Chittagong', NULL, NULL),
(11, 'Comilla', NULL, NULL),
(12, 'Cox\'s Bazar', NULL, NULL),
(13, 'Feni', NULL, NULL),
(14, 'Khagrachhari', NULL, NULL),
(15, 'Lakshmipur', NULL, NULL),
(16, 'Noakhali', NULL, NULL),
(17, 'Rangamati', NULL, NULL),
(18, 'Dhaka', NULL, NULL),
(19, 'Faridpur', NULL, NULL),
(20, 'Gazipur', NULL, NULL),
(21, 'Gopalganj', NULL, NULL),
(22, 'Kishoreganj', NULL, NULL),
(23, 'Madaripur', NULL, NULL),
(24, 'Manikganj', NULL, NULL),
(25, 'Munshiganj', NULL, NULL),
(26, 'Narayanganj', NULL, NULL),
(27, 'Narsingdi', NULL, NULL),
(28, 'Rajbari', NULL, NULL),
(29, 'Shariatpur', NULL, NULL),
(30, 'Tangail', NULL, NULL),
(31, 'Bagerhat', NULL, NULL),
(32, 'Chuadanga', NULL, NULL),
(33, 'Jessore', NULL, NULL),
(34, 'Jhenaidah', NULL, NULL),
(35, 'Khulna', NULL, NULL),
(36, 'Kushtia', NULL, NULL),
(37, 'Magura', NULL, NULL),
(52, 'Meherpur', NULL, NULL),
(53, 'Narail', NULL, NULL),
(54, 'Satkhira', NULL, NULL),
(55, 'Jamalpur', NULL, NULL),
(56, 'Mymensingh', NULL, NULL),
(57, 'Netrokona', NULL, NULL),
(58, 'Sherpur', NULL, NULL),
(59, 'Bogra', NULL, NULL),
(60, 'Joypurhat', NULL, NULL),
(61, 'Naogaon', NULL, NULL),
(62, 'Natore', NULL, NULL),
(63, 'Chapai Nawabganj', NULL, NULL),
(64, 'Pabna', NULL, NULL),
(65, 'Rajshahi', NULL, NULL),
(66, 'Sirajganj', NULL, NULL),
(67, 'Dinajpur', NULL, NULL),
(68, 'Gaibandha', NULL, NULL),
(69, 'Kurigram', NULL, NULL),
(70, 'Lalmonirhat', NULL, NULL),
(71, 'Nilphamari', NULL, NULL),
(72, 'Panchagarh', NULL, NULL),
(73, 'Rangpur', NULL, NULL),
(74, 'Thakurgaon', NULL, NULL),
(75, 'Habiganj', NULL, NULL),
(76, 'Moulvibazar', NULL, NULL),
(77, 'Sunamganj', NULL, NULL),
(78, 'Sylhet', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `division_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(1, 'Barisal', NULL, NULL),
(2, 'Chittagong', NULL, NULL),
(3, 'Dhaka', NULL, NULL),
(4, 'Khulna', NULL, NULL),
(5, 'Mymensingh', NULL, NULL),
(6, 'Rajshahi', NULL, NULL),
(7, 'Rangpur', NULL, NULL),
(8, 'Sylhet', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dress_categories`
--

CREATE TABLE `dress_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `d_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dress_categories`
--

INSERT INTO `dress_categories` (`id`, `d_name`, `created_at`, `updated_at`) VALUES
(1, 'টি-শার্ট', NULL, NULL),
(2, 'হিজাব', NULL, NULL),
(3, 'ওড়না', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_logo` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sg_logo` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `school_logo`, `sg_logo`, `created_at`, `updated_at`) VALUES
(8, '1665647200.png', '1665647200.png', '2022-10-13 01:46:40', '2022-10-13 01:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `management_infos`
--

CREATE TABLE `management_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `management_infos`
--

INSERT INTO `management_infos` (`id`, `name`, `designation`, `mobile_no`, `email`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Abul Kalam Azad', 'Abul Kalam', '01782345678', 'eret@gmail.com', '20221013050915.png', '2022-10-12 23:09:15', '2022-10-12 23:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_10_011041_create_batches_table', 2),
(6, '2022_10_10_011111_create_categories_table', 2),
(7, '2022_10_10_011122_create_districts_table', 2),
(8, '2022_10_10_011130_create_divisions_table', 2),
(9, '2022_10_10_011141_create_bloods_table', 2),
(10, '2022_10_10_011152_create_tshirts_table', 2),
(11, '2022_10_11_135912_create_management_infos_table', 3),
(12, '2022_10_11_151916_create_sponsor_infos_table', 3),
(13, '2022_10_11_162325_create_fee_models_table', 3),
(14, '2022_10_12_021532_create_dress_categories_table', 4),
(15, '2022_10_12_043215_create_categories_table', 5),
(16, '2022_10_12_045032_create_participents_table', 6),
(17, '2022_10_12_050452_create_participents_table', 7),
(18, '2022_10_12_070251_create_participents_table', 8),
(19, '2022_10_12_111642_create_confirmations_table', 9),
(20, '2022_10_12_181147_create_participents_table', 10),
(21, '2022_10_12_193058_create_logos_table', 11),
(22, '2022_10_12_200150_create_sliders_table', 12),
(23, '2022_10_12_204457_create_abouts_table', 13),
(24, '2022_10_12_205956_create_abouts_table', 14),
(25, '2022_10_12_215607_create_sponsor_infos_table', 15),
(26, '2022_10_12_221533_create_sponsor_infos_table', 16),
(27, '2022_10_13_041239_create_management_infos_table', 17),
(28, '2022_10_13_055215_create_sub_committees_table', 18),
(29, '2022_10_13_133351_create_branch_committees_table', 19),
(30, '2022_10_13_140525_create_participents_table', 20),
(31, '2022_10_13_173608_create_confirmations_table', 21),
(32, '2022_10_13_174227_create_confirmations_table', 22),
(33, '2022_10_13_174514_create_confirmations_table', 23),
(34, '2022_10_13_174952_create_confirmations_table', 24),
(35, '2022_10_14_025819_create_participents_table', 25),
(36, '2022_10_14_040512_create_confirmations_table', 26);

-- --------------------------------------------------------

--
-- Table structure for table `participents`
--

CREATE TABLE `participents` (
  `id` int(10) UNSIGNED NOT NULL,
  `add_id` bigint(20) DEFAULT NULL,
  `batch_id` bigint(20) DEFAULT NULL,
  `cat_id` bigint(20) NOT NULL,
  `pay` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `g_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thana` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` bigint(20) NOT NULL,
  `division_id` bigint(20) DEFAULT NULL,
  `blood_id` bigint(20) DEFAULT NULL,
  `dress_cat_id` bigint(20) DEFAULT NULL,
  `size_id` bigint(20) DEFAULT NULL,
  `photo` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `participents`
--

INSERT INTO `participents` (`id`, `add_id`, `batch_id`, `cat_id`, `pay`, `name`, `g_name`, `email`, `mobile`, `fb_link`, `address`, `thana`, `district_id`, `division_id`, `blood_id`, `dress_cat_id`, `size_id`, `photo`, `organization`, `designation`, `org_address`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 3, '1', 'Professor Abdul Hamid Khan', 'Anamul', NULL, '01835426785', NULL, 'merul badda', 'badda', 17, NULL, NULL, 2, NULL, '1665717135.jpg', NULL, NULL, NULL, 'Pending', '2022-10-13 21:12:15', '2022-10-13 21:12:15');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_img` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_img`, `created_at`, `updated_at`) VALUES
(1, '1665605415.jpg', '2022-10-12 14:10:15', '2022-10-12 14:10:15'),
(3, '1665605479.jpg', '2022-10-12 14:11:19', '2022-10-12 14:11:19'),
(4, '1665605485.jpg', '2022-10-12 14:11:25', '2022-10-12 14:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor_infos`
--

CREATE TABLE `sponsor_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sponsor_infos`
--

INSERT INTO `sponsor_infos` (`id`, `name`, `address`, `image`, `created_at`, `updated_at`) VALUES
(1, 'DDii', 'abc', '20221013071946.jpg', '2022-10-12 16:16:02', '2022-10-13 01:19:46'),
(2, 'abc', 'abc', '20221012225255.png', '2022-10-12 16:52:55', '2022-10-12 16:52:55'),
(3, 'wer', 'sdsf', '20221012225309.png', '2022-10-12 16:53:09', '2022-10-12 16:53:09'),
(4, 'gfdfv', 'sdfds', '20221012225320.png', '2022-10-12 16:53:20', '2022-10-12 16:53:20'),
(5, 'szcxcxz', 'ddsfadf', '20221012225329.png', '2022-10-12 16:53:29', '2022-10-12 16:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `sub_committees`
--

CREATE TABLE `sub_committees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_committees`
--

INSERT INTO `sub_committees` (`id`, `name`, `designation`, `mobile_no`, `email`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Professor Karim Reza', 'Administrator', '0178245677', 'admin@gmail.com', '20221013130724.jpeg', '2022-10-13 07:07:24', '2022-10-13 07:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `tshirts`
--

CREATE TABLE `tshirts` (
  `id` int(10) UNSIGNED NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tshirts`
--

INSERT INTO `tshirts` (`id`, `size`, `created_at`, `updated_at`) VALUES
(1, 'S', NULL, NULL),
(2, 'M', NULL, NULL),
(3, 'L', NULL, NULL),
(4, 'XL', NULL, NULL),
(5, 'XXL', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mailing_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spouse` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `school_name`, `batch`, `email`, `email_verified_at`, `mobile`, `image`, `organization`, `designation`, `mailing_address`, `spouse`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'sawrav', 'hatey khari', '2008', 's@gmail.com', NULL, '01835426785', '/Users/fazlulhoque/Desktop/Fiverr/imtiazvai/reunion/public/images/1663521276452image.jpg', 'be yourself', 'software developer', 'merul badda', 'no', '$2y$10$rryOTW6JaGPIbx6CyqwG1ehy6liFuF5flwPpl8f1l5oQziG9KaJFe', NULL, '2022-09-18 11:14:36', '2022-09-18 11:14:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloods`
--
ALTER TABLE `bloods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch_committees`
--
ALTER TABLE `branch_committees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirmations`
--
ALTER TABLE `confirmations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dress_categories`
--
ALTER TABLE `dress_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `management_infos`
--
ALTER TABLE `management_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participents`
--
ALTER TABLE `participents`
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
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsor_infos`
--
ALTER TABLE `sponsor_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_committees`
--
ALTER TABLE `sub_committees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tshirts`
--
ALTER TABLE `tshirts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_batch_unique` (`batch`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `bloods`
--
ALTER TABLE `bloods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `branch_committees`
--
ALTER TABLE `branch_committees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `confirmations`
--
ALTER TABLE `confirmations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dress_categories`
--
ALTER TABLE `dress_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `management_infos`
--
ALTER TABLE `management_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `participents`
--
ALTER TABLE `participents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sponsor_infos`
--
ALTER TABLE `sponsor_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_committees`
--
ALTER TABLE `sub_committees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tshirts`
--
ALTER TABLE `tshirts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
