-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2024 at 07:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `record`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Fiction', '2024-07-28 13:47:31', '2024-07-28 13:47:31'),
(3, 'Non-Fiction', '2024-07-28 13:47:31', '2024-07-28 13:47:31'),
(4, 'Science Fiction', '2024-07-28 13:48:25', '2024-07-28 13:48:25'),
(5, 'Fantasy', '2024-07-28 13:48:25', '2024-07-28 13:48:25'),
(6, 'Thriller', '2024-07-28 13:49:00', '2024-07-28 13:49:00'),
(7, 'Self-Help', '2024-07-28 13:49:00', '2024-07-28 13:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_27_185913_create_personal_access_tokens_table', 2),
(5, '2024_07_27_174957_create_categories_table', 3),
(6, '2024_07_28_093300_create_personal_access_tokens_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`id`, `name`, `description`, `category_id`, `is_active`, `created_at`, `updated_at`) VALUES
(9, 'Becoming', 'In her memoir, Michelle Obama chronicles the experiences that have shaped her—from her childhood on the South Side of Chicago to her years as an executive balancing motherhood and work, and her time spent at the world’s most famous address.', 3, 1, '2024-07-28 08:21:23', '2024-07-28 08:21:23'),
(10, 'Dune', 'Set in a distant future amidst a huge interstellar empire, \"Dune\" follows Paul Atreides, whose family accepts the stewardship of the desert planet Arrakis. As the only source of the most valuable substance in the universe, control of Arrakis is highly contested.', 4, 1, '2024-07-28 08:21:41', '2024-07-28 08:21:41'),
(11, 'Neuromancer', 'This seminal cyberpunk novel introduces Case, a washed-up computer hacker hired by a mysterious employer to pull off the ultimate hack. The book explores artificial intelligence, virtual reality, and genetic engineering.', 4, 0, '2024-07-28 08:22:03', '2024-07-28 08:24:27'),
(12, 'The Hobbit', 'A prelude to the epic \"The Lord of the Rings\" trilogy, \"The Hobbit\" follows Bilbo Baggins, a hobbit who is thrust into an adventurous quest to reclaim the lost Dwarf Kingdom of Erebor from the fearsome dragon Smaug.', 5, 1, '2024-07-28 08:22:20', '2024-07-28 08:22:20'),
(13, 'Harry Potter and the Sorcerer\'s Stone', 'The first book in the Harry Potter series, it introduces young wizard Harry Potter as he begins his education at Hogwarts School of Witchcraft and Wizardry, discovering his past and his destiny.', 5, 1, '2024-07-28 08:22:37', '2024-07-28 08:22:37'),
(14, 'Gone Girl', 'This psychological thriller unravels the complicated marriage of Nick and Amy Dunne. When Amy goes missing on their fifth wedding anniversary, Nick becomes the prime suspect, and secrets about their relationship begin to surface.', 6, 1, '2024-07-28 08:22:52', '2024-07-28 08:22:52'),
(15, 'The Girl with the Dragon Tattoo', 'The first book in the \"Millennium\" series, it follows journalist Mikael Blomkvist and hacker Lisbeth Salander as they investigate the 40-year-old disappearance of Harriet Vanger, a young scion of one of Sweden\'s wealthiest families.', 6, 1, '2024-07-28 08:23:12', '2024-07-28 08:23:12'),
(16, 'Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones', 'This book offers practical strategies for forming good habits, breaking bad ones, and mastering the tiny behaviors that lead to remarkable results.', 7, 1, '2024-07-28 08:23:32', '2024-07-28 08:23:32'),
(17, 'The Power of Habit: Why We Do What We Do in Life and Business', 'Duhigg explores the science behind why habits exist and how they can be changed. It provides insights into how habits work and how they can be transformed to achieve success.', 7, 0, '2024-07-28 08:23:53', '2024-07-29 23:30:40'),
(18, 'To Kill a Mockingbird', 'Set in the Depression-era South, this classic novel explores themes of racial injustice and moral growth through the eyes of young Scout Finch. Her father, Atticus Finch, serves as a moral beacon, defending a black man falsely accused of raping a white woman.', 2, 1, '2024-07-28 08:28:55', '2024-07-28 08:28:55'),
(19, '1984', 'A dystopian novel that delves into the dangers of totalitarianism. In a society under constant surveillance by Big Brother, Winston Smith struggles with oppression, manipulation, and the erasure of truth.', 2, 1, '2024-07-28 08:29:16', '2024-07-28 08:29:16'),
(20, 'Sapiens: A Brief History of Humankind', 'This book provides a comprehensive overview of the history of the human species, from the emergence of Homo sapiens in the Stone Age to the present, exploring how biology and history have defined us and enhanced our understanding of what it means to be human.', 3, 0, '2024-07-28 08:29:36', '2024-07-28 08:29:36');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5MnH1riyPNmgStkTmSX9519ZUpye1TB5ffiIjqxU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmRXR3VvazFWMlZmbGQwQW84VXdXQ1VxcTh4TkFMazJvZ2pOZHZFQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1722105672),
('8gfsRwxSPLJkAeuKnlbVMqauZ2c5BgkaDgj78sS1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHJVMTRybG9hVlZsRFVDMGRONEF6ZVYzNHkySmlzaWJLalc0WWJQQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1722159436),
('B6glpvJQ73kVxin4IhimG5srVxpY2wjV7kADLNY4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2ZMZk1CTzNXaElCMVIxR09adThiaU5BYko4MDNIVml4RnJ1Wlk2VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1722229085),
('dN29YNRv74FVs8nFe8wNmjk0lvMHyu4fwm6wyQvp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0RZVkt3N1J0Yk1HU2lKa1BqdDJPaE5Na1I5bGZLRnJtRnpOdElqMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1722278997),
('hd1iNjIRrGbocpcx1BPUgwqVxFXkyjBq1w55hjJk', NULL, '127.0.0.1', 'Apidog/1.0.0 (https://apidog.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2FmMFUwYWJMTkFPdUxtdU1Cc09TdHE0b0p4WjN5NFVEWEE2ejZUVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWdpc3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1722105732);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'test', 'test@gmail.com', NULL, '$2y$12$68egiVqD9LM5DaekE8Vod.pk1jV0ttWXF4nOYUWhEdnwmoMSvBy5K', NULL, '2024-07-27 19:02:26', '2024-07-27 19:02:26'),
(5, 'test', 'test1@gmail.com', NULL, '$2y$12$l9Gq2g37Y36ldg9vuuDCeuMjFMzdYsV5OdV/1f2ZhzSewylFssGDW', NULL, '2024-07-28 04:36:56', '2024-07-28 04:36:56'),
(7, 'narendra', 'narendramodi@gmail.com', NULL, '$2y$12$ZIVNCM/OlfqdDlbP9ZbTteYR.DKHFfYxTeFwzfFYWqD.TjOSlaiJ.', NULL, '2024-07-28 23:30:58', '2024-07-28 23:30:58'),
(8, 'deadpool', 'deadpool@gmail.com', NULL, '$2y$12$sQ8HWbRcp2ELVjmRy7fLZ.bU9sP/mFsVcs7jLsgfACMzeOaEExWBK', NULL, '2024-07-28 23:32:32', '2024-07-28 23:32:32'),
(9, 'Robert D', 'robertd@gmail.com', NULL, '$2y$12$3srZ.wY.ECSEu1zxjm89dOHfIkxUM/wqWqXJBC5vF16hyo9Y9.BJO', NULL, '2024-07-29 23:06:21', '2024-07-29 23:06:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
