-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2026 at 10:28 AM
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
-- Database: `fullstack_project`
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
(4, '2026_05_08_063549_create_personal_access_tokens_table', 1),
(5, '2026_05_12_190018_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `message`, `created_at`, `updated_at`) VALUES
(1, 'User \"rakib\" updated their profile information.', '2026-05-12 18:05:37', '2026-05-12 18:05:37'),
(2, 'User \"rakib\" updated their profile information.', '2026-05-14 13:48:00', '2026-05-14 13:48:00'),
(3, 'User \"Admin\" updated their profile information.', '2026-05-14 14:21:54', '2026-05-14 14:21:54'),
(4, 'User \"rakib\" updated their profile information.', '2026-05-14 14:24:49', '2026-05-14 14:24:49'),
(5, 'User \"Admin\" updated their profile information.', '2026-05-15 14:27:45', '2026-05-15 14:27:45'),
(6, 'User \"Admin\" updated their profile information.', '2026-05-15 15:45:51', '2026-05-15 15:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'token', 'afb6d6930ce086fb04ab35bca7e935cd6e18e4e95ea5556a4382ebda77f78cba', '[\"*\"]', '2026-05-15 21:00:12', NULL, '2026-05-08 23:36:55', '2026-05-15 21:00:12'),
(2, 'App\\Models\\User', 1, 'token', 'ae51a9b11f7254c33266c87795bf424a9e2141062e50b05bc0a5c56a6eca5043', '[\"*\"]', NULL, NULL, '2026-05-09 13:11:36', '2026-05-09 13:11:36'),
(3, 'App\\Models\\User', 1, 'token', 'ce04fa8b65ba2ca1c0860c688f133ce46664e39024729bcb80347967a89cb2db', '[\"*\"]', '2026-05-16 01:53:28', NULL, '2026-05-09 13:17:50', '2026-05-16 01:53:28'),
(4, 'App\\Models\\User', 2, 'token', 'b2f593fb8356107f444b34a23910c6f5340ec683fc10e6a472e5b448d1e804d6', '[\"*\"]', '2026-05-09 15:06:47', NULL, '2026-05-09 15:03:25', '2026-05-09 15:06:47'),
(5, 'App\\Models\\User', 2, 'token', 'be4c06b009a1590f86d4357c0977c3bdcdf1128da25f1e315a13113400166b49', '[\"*\"]', '2026-05-09 15:11:41', NULL, '2026-05-09 15:09:02', '2026-05-09 15:11:41'),
(6, 'App\\Models\\User', 2, 'token', 'e4464d119cd9c5e07f7b29299dd54c8d153c32e79b36bc3e11097ee28547d6fa', '[\"*\"]', '2026-05-10 10:56:37', NULL, '2026-05-09 15:13:28', '2026-05-10 10:56:37'),
(7, 'App\\Models\\User', 1, 'token', '4aec7524d79f24d5aa1d17b209bdb060d08c755d093fe5abc604ddf0536c4c41', '[\"*\"]', NULL, NULL, '2026-05-10 16:28:40', '2026-05-10 16:28:40'),
(8, 'App\\Models\\User', 1, 'token', '54602e556fed8477e4ab66d09a2ffa2520316d23ac4645ecc7102f2742d85f25', '[\"*\"]', NULL, NULL, '2026-05-10 16:38:32', '2026-05-10 16:38:32'),
(9, 'App\\Models\\User', 1, 'token', 'd4a11686633f5962c7b2b804db7ed9b32ac2f6693d9de6f2936aa08ca58b9e7d', '[\"*\"]', NULL, NULL, '2026-05-10 17:23:38', '2026-05-10 17:23:38'),
(10, 'App\\Models\\User', 1, 'token', 'edab11d0df00a06fd2414a953a47114b79f3c0d97acc7f5ffbcdd501c33de89a', '[\"*\"]', NULL, NULL, '2026-05-10 17:28:41', '2026-05-10 17:28:41'),
(11, 'App\\Models\\User', 1, 'token', '486fa7ce57dcd1b9ed5346e0fb39406543e442d517e966cc147f6756c41993c3', '[\"*\"]', '2026-05-11 08:08:08', NULL, '2026-05-11 00:52:21', '2026-05-11 08:08:08'),
(12, 'App\\Models\\User', 1, 'token', '93fcf1cc5c9a4a22138ae6159bb285777e71b7131710e43007ec12e003e26195', '[\"*\"]', '2026-05-11 12:05:43', NULL, '2026-05-11 12:04:51', '2026-05-11 12:05:43'),
(13, 'App\\Models\\User', 1, 'token', '6ad16dbcc461f00ff740ce23f04634146faf3977a0bf0c6bc3e0af17cb804c43', '[\"*\"]', '2026-05-11 12:08:13', NULL, '2026-05-11 12:07:16', '2026-05-11 12:08:13'),
(14, 'App\\Models\\User', 4, 'token', '2a189ee54916a49b3b2808823fd223f3ac99fa19ac56c8fcbf814d2195edbcc3', '[\"*\"]', '2026-05-11 15:04:34', NULL, '2026-05-11 12:08:37', '2026-05-11 15:04:34'),
(15, 'App\\Models\\User', 1, 'token', 'ee449f168427a36f1d2c83a29df10b95145fb447994efd8cdfeab9d99e5ac256', '[\"*\"]', '2026-05-12 12:23:42', NULL, '2026-05-12 12:23:18', '2026-05-12 12:23:42'),
(16, 'App\\Models\\User', 4, 'token', '64170c232954fd7f3d594cf3f0a603b5e5f90cff0fd1a14f7377d680b984056d', '[\"*\"]', '2026-05-12 12:32:49', NULL, '2026-05-12 12:25:57', '2026-05-12 12:32:49'),
(17, 'App\\Models\\User', 1, 'token', 'e3b499de9f51de090fed17486f076482605d9a900c9ecd2290c53754e7e89548', '[\"*\"]', '2026-05-12 12:46:37', NULL, '2026-05-12 12:41:33', '2026-05-12 12:46:37'),
(18, 'App\\Models\\User', 1, 'token', '50bbbe8fc3b7062128abf7a0afa98a59fe95f712873e04c8250bc4ac26faedce', '[\"*\"]', '2026-05-12 18:01:20', NULL, '2026-05-12 18:01:12', '2026-05-12 18:01:20'),
(19, 'App\\Models\\User', 4, 'token', '8269ace7f9033e6d929c91a6c640d36a7dcf79896ff1bb09e3df4aee116e237f', '[\"*\"]', '2026-05-12 18:05:37', NULL, '2026-05-12 18:02:05', '2026-05-12 18:05:37'),
(20, 'App\\Models\\User', 1, 'token', '097b5bdf4c52d53e35713e65a943410ff497f12f8f5d29ae7713473f0ad451f4', '[\"*\"]', '2026-05-12 18:10:52', NULL, '2026-05-12 18:06:05', '2026-05-12 18:10:52'),
(21, 'App\\Models\\User', 1, 'token', '351fbef331912597028c65672aabb23d4dde75d459d0921953de10f8ca29ff83', '[\"*\"]', '2026-05-14 07:53:10', NULL, '2026-05-14 07:52:49', '2026-05-14 07:53:10'),
(22, 'App\\Models\\User', 1, 'token', '1994d3a82ec697bdbdf335c5ebb346e9620642f46f24e1dc8effc02f36b297ba', '[\"*\"]', '2026-05-14 08:20:09', NULL, '2026-05-14 07:57:33', '2026-05-14 08:20:09'),
(23, 'App\\Models\\User', 1, 'token', '07565bc6f0c701ff4885f2f53d512bc599c3960f2229cb1d0eae93964aa86541', '[\"*\"]', '2026-05-14 13:47:21', NULL, '2026-05-14 13:37:23', '2026-05-14 13:47:21'),
(24, 'App\\Models\\User', 4, 'token', 'f1324160d4209f7fcb5ff9cd0e04f84ab89b73a2bf097cbe9137224ee79db76b', '[\"*\"]', '2026-05-14 13:48:00', NULL, '2026-05-14 13:47:32', '2026-05-14 13:48:00'),
(25, 'App\\Models\\User', 1, 'token', '8a5e98e601a5602cebcc14c4c7111e2819a43c7c957419ed4750e109ecc03eb9', '[\"*\"]', '2026-05-14 13:48:28', NULL, '2026-05-14 13:48:27', '2026-05-14 13:48:28'),
(26, 'App\\Models\\User', 1, 'token', 'd0dfed2260504a6f95675e7951b8a99935fa749a5f1b273a4b8ea6b69132b1f2', '[\"*\"]', '2026-05-14 14:23:44', NULL, '2026-05-14 14:21:42', '2026-05-14 14:23:44'),
(27, 'App\\Models\\User', 4, 'token', '49bf435329995d1458e06e4812600d7dcae058f2293b1e9cff21a2a033e7c2ee', '[\"*\"]', '2026-05-14 14:24:49', NULL, '2026-05-14 14:24:28', '2026-05-14 14:24:49'),
(28, 'App\\Models\\User', 1, 'token', 'd32746615ea7beecd5642d216f71c9dccc119ea193e0208887fc2661c2c02942', '[\"*\"]', '2026-05-14 14:25:22', NULL, '2026-05-14 14:25:09', '2026-05-14 14:25:22'),
(29, 'App\\Models\\User', 1, 'token', '8909e7a6fd41437207b8d566e4e76eb07dffde896d45e0bd2b7297603ffde0ff', '[\"*\"]', '2026-05-15 15:08:36', NULL, '2026-05-15 14:08:55', '2026-05-15 15:08:36'),
(30, 'App\\Models\\User', 1, 'token', '67ed34aa99f67569a26b38709b34dedfdc887e8efa44521bd2bf2b6a848d280a', '[\"*\"]', '2026-05-15 15:45:58', NULL, '2026-05-15 15:23:28', '2026-05-15 15:45:58'),
(31, 'App\\Models\\User', 4, 'token', 'f1218fb6cce16d73f3c5b67a13dd9980f71b5103343f2d09f6467214e3df3391', '[\"*\"]', NULL, NULL, '2026-05-15 15:48:48', '2026-05-15 15:48:48'),
(32, 'App\\Models\\User', 1, 'token', 'c88e67da823f2bfd4afadf771d696b5c2f56661a061f5846d9260b9717b46e6b', '[\"*\"]', '2026-05-15 19:29:29', NULL, '2026-05-15 16:04:01', '2026-05-15 19:29:29'),
(33, 'App\\Models\\User', 4, 'token', '10712d189c9ca264bc4ba981a2d41319b925e7ccc6564df412b6d4fe6c4a80cc', '[\"*\"]', NULL, NULL, '2026-05-15 19:30:09', '2026-05-15 19:30:09'),
(34, 'App\\Models\\User', 1, 'token', '09dc73eae9ff0b29367ceca869b7ccc1ccee20c609ecf4d9d70b661725440f4f', '[\"*\"]', '2026-05-15 20:19:23', NULL, '2026-05-15 19:36:53', '2026-05-15 20:19:23'),
(35, 'App\\Models\\User', 4, 'token', '19de69f8889d4c3a75850fae352b8150ff964de5afcfeb79206e8150084f3828', '[\"*\"]', NULL, NULL, '2026-05-15 20:19:47', '2026-05-15 20:19:47'),
(36, 'App\\Models\\User', 1, 'token', '5ead5e3e516af8924c0fab5c5ffd1eea301035e57a7c6cbe366c22859f51e7ed', '[\"*\"]', '2026-05-15 20:22:15', NULL, '2026-05-15 20:21:36', '2026-05-15 20:22:15'),
(37, 'App\\Models\\User', 1, 'token', '43849361889d92061ac5763a968143c38b8b57233a93953be7b357b4d3c00f2d', '[\"*\"]', '2026-05-15 20:29:05', NULL, '2026-05-15 20:28:01', '2026-05-15 20:29:05'),
(38, 'App\\Models\\User', 1, 'token', 'cb0c0d11afba747a175f5e7ee37e39d0d8ef92f8bd7e135deea3d71328dbc616', '[\"*\"]', '2026-05-15 20:47:12', NULL, '2026-05-15 20:45:22', '2026-05-15 20:47:12'),
(39, 'App\\Models\\User', 4, 'token', '6883996cf7c273012a96b217aa8feb8a83711ed7cd459e7c99cc2bf6248737ae', '[\"*\"]', NULL, NULL, '2026-05-15 20:47:37', '2026-05-15 20:47:37'),
(40, 'App\\Models\\User', 1, 'token', 'f4a06e7f95e0598e7a1d445c71f5bb1b63fcee9acb0dc92cdeb3bf88bd1faac5', '[\"*\"]', NULL, NULL, '2026-05-15 21:00:37', '2026-05-15 21:00:37'),
(41, 'App\\Models\\User', 1, 'token', 'b089fa967e022a14c48de63b425e1db6ebfef061dbc6cf0809549a032bfe1b0f', '[\"*\"]', NULL, NULL, '2026-05-15 21:15:07', '2026-05-15 21:15:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '01711111155', 'Dhaka', 'admin', '$2y$12$57r32siXICYmh89brULOweqryUTVvecSNDjWt0gV5nDMXWpaato7O', NULL, '2026-05-08 23:34:51', '2026-05-15 14:27:45'),
(4, 'rakib', 'rakib@gmail.com', '14141414144', 'sylhet', 'user', '$2y$12$TcSkVcF4zR6xUazjuVrLzuI.W0ACQ0EUFt1br2SGBjw66Zzh6rJYG', NULL, '2026-05-11 12:08:11', '2026-05-15 20:46:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
