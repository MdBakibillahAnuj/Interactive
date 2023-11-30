-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2023 at 02:42 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `code_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_11_29_084159_create_sessions_table', 1),
(7, '2023_11_29_140643_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Mobile N95', 55, 34990, '2023-11-29 09:02:13', '2023-11-29 10:06:21'),
(2, 'Mobile 1110 N', 50, 2500, '2023-11-29 09:02:31', '2023-11-29 09:22:24'),
(4, 'Vivo V9', 30, 28500, '2023-11-29 09:26:41', '2023-11-29 09:26:41'),
(5, 'Samsung A51', 25, 22499, '2023-11-29 09:28:04', '2023-11-29 09:28:04'),
(7, 'iPhone X', 15, 75000, '2023-11-29 09:30:02', '2023-11-29 09:30:02'),
(11, 'Nokia 3110', 30, 3333, '2023-11-29 17:23:42', '2023-11-29 17:23:42'),
(12, 'Nokia 2690', 20, 4800, '2023-11-29 17:24:26', '2023-11-29 17:24:26'),
(13, 'Apple 11x', 25, 700000, '2023-11-30 02:37:10', '2023-11-30 02:37:10'),
(14, 'Jacinthe Macejkovic DDS', 5, 2, NULL, NULL),
(15, 'Mr. Matteo Lehner', 8, 6, NULL, NULL),
(16, 'Mr. Jovany Kovacek', 2, 5, NULL, NULL),
(17, 'Ilene VonRueden', 1, 8, NULL, NULL),
(18, 'Breanne Abshire', 8, 9, NULL, NULL),
(19, 'Miss Liliane Gibson', 1, 5, NULL, NULL),
(20, 'Macy Weimann', 1, 6, NULL, NULL),
(21, 'Rosanna Leannon', 1, 1, NULL, NULL),
(22, 'Mr. Otto Thiel', 3, 0, NULL, NULL),
(23, 'Mr. Reuben Harris', 7, 4, NULL, NULL),
(24, 'Dr. Monte Waters', 3, 0, NULL, NULL),
(25, 'Hazle Corwin', 5, 7, NULL, NULL),
(26, 'Prof. Ramiro Will IV', 4, 4, NULL, NULL),
(27, 'Paxton Mueller', 8, 0, NULL, NULL),
(28, 'Torrey Rogahn DDS', 7, 7, NULL, NULL),
(29, 'Dr. Armand Ruecker DVM', 0, 0, NULL, NULL),
(30, 'Willy O\'Conner', 7, 0, NULL, NULL),
(31, 'Miss Amanda Turner', 0, 8, NULL, NULL),
(32, 'Prof. Evert Robel', 2, 3, NULL, NULL),
(33, 'Ms. Mckayla Mraz MD', 9, 7, NULL, NULL),
(34, 'Camille Stoltenberg', 0, 3, NULL, NULL),
(35, 'Miss Kathryn Gerhold PhD', 8, 1, NULL, NULL),
(36, 'Jennifer Hahn', 2, 6, NULL, NULL),
(37, 'Araceli Keebler', 8, 6, NULL, NULL),
(38, 'Yadira Carroll', 6, 9, NULL, NULL),
(39, 'Arturo Bailey', 1, 6, NULL, NULL),
(40, 'Miss Otha Streich IV', 9, 9, NULL, NULL),
(41, 'Prof. Lyla Hyatt', 3, 0, NULL, NULL),
(42, 'Adrienne Stokes II', 0, 2, NULL, NULL),
(43, 'Shayne Altenwerth', 5, 6, NULL, NULL),
(44, 'Isabella Kub', 8, 6, NULL, NULL),
(45, 'Clifton Jenkins', 1, 7, NULL, NULL),
(46, 'Celestino Haley', 8, 2, NULL, NULL),
(47, 'Dariana Waters', 9, 4, NULL, NULL),
(48, 'Ada Daugherty', 6, 6, NULL, NULL),
(49, 'Fay Ratke IV', 0, 4, NULL, NULL),
(50, 'Alberto Kulas V', 2, 8, NULL, NULL),
(51, 'Prof. Reinhold Friesen', 1, 6, NULL, NULL),
(52, 'Herminia O\'Conner', 7, 8, NULL, NULL),
(53, 'Newell Kertzmann', 4, 4, NULL, NULL),
(54, 'Sigrid Johnston', 9, 1, NULL, NULL),
(55, 'Miss Icie Gislason', 2, 8, NULL, NULL),
(56, 'Dr. Collin Heidenreich', 1, 4, NULL, NULL),
(57, 'Vena Frami IV', 0, 7, NULL, NULL),
(58, 'Jon Kertzmann', 6, 0, NULL, NULL),
(59, 'Mr. Terry Cummerata', 3, 6, NULL, NULL),
(60, 'Gisselle Rohan', 1, 4, NULL, NULL),
(61, 'Carolyn Beier', 0, 7, NULL, NULL),
(62, 'Dr. Myrtle Moen DDS', 5, 9, NULL, NULL),
(63, 'Luna Blick II', 4, 3, NULL, NULL),
(64, 'Genoveva Balistreri', 2, 5, NULL, NULL),
(65, 'Jean Bosco', 1, 9, NULL, NULL),
(66, 'Vidal Barrows', 2, 0, NULL, NULL),
(67, 'Ruthe Crona DVM', 7, 0, NULL, NULL),
(68, 'Ora DuBuque MD', 2, 1, NULL, NULL),
(69, 'Vesta Upton', 2, 3, NULL, NULL),
(70, 'Colten Walker', 1, 9, NULL, NULL),
(71, 'Prof. Keith Walter DVM', 1, 7, NULL, NULL),
(72, 'Kadin Lockman', 3, 1, NULL, NULL),
(73, 'Dr. Reyes Kessler IV', 9, 8, NULL, NULL),
(74, 'Wendell Turner', 7, 1, NULL, NULL),
(75, 'Yvette Wisoky', 8, 5, NULL, NULL),
(76, 'Heath McDermott II', 8, 0, NULL, NULL),
(77, 'Mr. Jean Schuster DVM', 8, 8, NULL, NULL),
(78, 'Isabella Upton', 9, 2, NULL, NULL),
(79, 'Mrs. Tia Hirthe IV', 2, 1, NULL, NULL),
(80, 'Baron Balistreri DVM', 8, 9, NULL, NULL),
(81, 'Brayan Jacobson PhD', 1, 9, NULL, NULL),
(82, 'Jayce Reichert', 6, 4, NULL, NULL),
(83, 'Jeanne Rice', 1, 2, NULL, NULL),
(84, 'Dr. Christiana Krajcik Jr.', 4, 4, NULL, NULL),
(85, 'Kelsi Sauer', 2, 3, NULL, NULL),
(86, 'Ms. Modesta Carroll IV', 6, 0, NULL, NULL),
(87, 'Maryse Gerhold', 1, 5, NULL, NULL),
(88, 'Celia Hudson IV', 2, 2, NULL, NULL),
(89, 'Mrs. Lydia Hartmann IV', 2, 7, NULL, NULL),
(90, 'Trisha Considine III', 2, 0, NULL, NULL),
(91, 'Zella Wiza', 0, 1, NULL, NULL),
(92, 'Mrs. Trisha Bayer', 0, 8, NULL, NULL),
(93, 'Edmund Von', 8, 3, NULL, NULL),
(94, 'Randal Jacobson', 1, 6, NULL, NULL),
(95, 'Maye Lindgren', 2, 3, NULL, NULL),
(96, 'Salma Waelchi', 5, 2, NULL, NULL),
(97, 'Jessy Runte', 8, 0, NULL, NULL),
(98, 'Francesca Ledner', 2, 1, NULL, NULL),
(99, 'Adelbert Mante', 1, 1, NULL, NULL),
(100, 'Selena Kohler', 3, 6, NULL, NULL),
(101, 'Dustin Ruecker', 3, 2, NULL, NULL),
(102, 'Felipe McCullough MD', 2, 0, NULL, NULL),
(103, 'Muhammad Reinger', 4, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('u997MdpZZeHVjhc1hUFMxizt9nwYnNhwozDDuoJ8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3h2ZUV3VFdNbk05cUJJVngxRHJ5Q2syUEs1WW5tdnJydnlEQlUySSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8/cGFnZT00Ijt9fQ==', 1701344285);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$STSZQxddUS7atCgPa/Gz3usAvnbjqtyTwIg40QC4GtlvGZ7dB6CrC', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 04:37:35', '2023-11-29 04:37:35'),
(2, 'MD. BAKIBILLAH ANUJ', 'bakibillah@gmail.com', NULL, '$2y$12$hLJYHmXZ78wgLOh/MO6m0eeL2.tJIyJyKAV2nlimkM0srvprYkYnO', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 13:06:51', '2023-11-29 13:06:51'),
(3, 'Khan', 'khan@gmail.com', NULL, '$2y$12$qh4BUW.9VrZdyu3pXIUGvO5asVrQMwfcaSiBwqyAH5erkvapyLp5q', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-30 02:12:22', '2023-11-30 02:12:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
