-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2025 at 05:31 AM
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
-- Database: `crud_user`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_04_24_033844_add_column_phone_to_users_table', 1),
(6, '2025_05_06_120219_add_column_in_users_table', 2),
(7, '2025_05_06_151049_add_column_in_users_table', 3);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `phone` bigint(20) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `gender`, `phone`, `image`, `hobby`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rambo', 'Dalang', 'rambo@gmail.com', NULL, '$2y$10$veEtAcUjk37sV82NcH3SI.SQCzYOcnswL5m7pEYpzdTyw9dAQtW5e', 'male', 1234567890, NULL, NULL, NULL, '2025-05-05 03:02:48', '2025-05-05 03:04:45'),
(2, 'Test huk', 'Hukio', 'test@gmail.com', NULL, '$2y$10$m6hmCgtPIP/nGLx1.2Mwe.2WDmQBmnS/L9ZWRHd3JNy6skXYGEW42', 'female', 6288929389, NULL, NULL, NULL, '2025-05-05 03:05:28', '2025-05-05 03:05:28'),
(3, 'Prof. Abigayle Rau', 'Dr. Jeremie Anderson', 'sydnie.orn@example.net', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 7206161660, NULL, NULL, 'KlyKLaFukW', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(4, 'Prof. Viola Boyer', 'Jackeline Hahn', 'fwalter@example.com', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 5013240455, NULL, NULL, 'zkP0rsjVFn', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(5, 'Prof. Tito Bahringer Sr.', 'Tad Schoen', 'alene02@example.org', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 8282809587, NULL, NULL, 'mPuU3z2gLV', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(6, 'Mr. Adolfo Stehr', 'Kiera Zboncak', 'reichel.gabrielle@example.org', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 6067685306, NULL, NULL, 'ViZC6mpB4p', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(7, 'Jordy Corwin', 'Ms. Providenci Champlin', 'marcella93@example.org', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 1968521261, NULL, NULL, 'g2g1sYsjXm', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(8, 'Dr. Dexter Daniel', 'Ms. Magnolia Veum DDS', 'xfarrell@example.org', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 5550248827, NULL, NULL, 'BmLTFQg8PI', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(9, 'Sasha Harris', 'Clementine Hartmann', 'sarina59@example.net', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 1735612811, NULL, NULL, 'tdAUkuIkZh', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(10, 'Megane Simonis', 'Adella Douglas', 'conrad.parker@example.com', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 6257051646, NULL, NULL, 'qeL78FpkOP', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(11, 'Dr. Devon Skiles', 'Prof. Glennie Quigley', 'vhahn@example.net', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 8921454889, NULL, NULL, 'm9fZuqnVIZ', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(12, 'Deja Feeney', 'Alexandria Kutch', 'polly.adams@example.com', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 5723873659, NULL, NULL, '0Ixm101O5r', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(13, 'Arvilla Maggio', 'Bo Lemke', 'fjohns@example.org', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 4258054886, NULL, NULL, 'ZroEC4EYBI', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(14, 'Emanuel Gaylord', 'Chaz Wisozk DVM', 'paolo.schowalter@example.net', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 2980219438, NULL, NULL, 'n05O5rzgQj', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(15, 'Dr. Providenci Crona DVM', 'Prof. Ima Heidenreich', 'daphney.quitzon@example.com', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 4496360438, NULL, NULL, 'r1eJTYGy4r', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(16, 'Saige Botsford', 'Mason Mante Sr.', 'hermann.jovany@example.org', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 2554735969, NULL, NULL, 'yZxHxYbf7g', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(17, 'Thora Stehr', 'Prof. Lurline Gutmann', 'eschmitt@example.net', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 6198060413, NULL, NULL, 'NRKwvvrHup', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(18, 'Mr. Spencer Abshire', 'Chelsea Zulauf', 'albert.parker@example.org', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 5002224632, NULL, NULL, 'mX4kbtrQa2', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(19, 'Justine Crist', 'Trenton Casper', 'bogisich.reyes@example.com', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 3307820980, NULL, NULL, 'Mqk35n61f0', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(20, 'Prof. Hipolito Durgan III', 'Ms. Edna Mertz', 'ernesto26@example.net', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 9491820558, NULL, NULL, '7bwqrZcnyE', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(21, 'Telly O\'Conner', 'Mariano Adams', 'tremblay.alexzander@example.com', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 9412425457, NULL, NULL, '9JT05v1Acg', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(22, 'Prof. Dax Dickinson IV', 'Ashleigh Langosh', 'dixie38@example.org', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 6196905290, NULL, NULL, 'A2zAjgFKqm', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(23, 'Tania Bailey', 'Howell Hansen', 'dare.michelle@example.net', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 9838198823, NULL, NULL, '9yog1bGQQE', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(24, 'Ms. Hannah Kuhic Sr.', 'Deshaun Schoen', 'kutch.ahmed@example.com', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 1488998993, NULL, NULL, 'cMA7GSZL37', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(25, 'Prof. Alyce Hayes PhD', 'Kendall Buckridge', 'bonnie.collins@example.org', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 117919703, NULL, NULL, 'XgeJzSbttH', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(26, 'Melisa Spencer', 'Dr. Lonzo Sauer', 'bolson@example.org', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 6415361886, NULL, NULL, 'GJXmTRbjZo', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(27, 'Alba Runte', 'Nikolas Crist', 'hackett.lewis@example.net', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 6090434944, NULL, NULL, 'urp9DqvUg4', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(28, 'Delpha Bauch', 'Isabell Hane', 'ywolf@example.org', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 3816254956, NULL, NULL, '9vzMIlwobT', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(29, 'Prof. Webster Crist MD', 'Mr. Clinton Ullrich', 'zarmstrong@example.org', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 369804176, NULL, NULL, 'ZYSB8YStTr', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(30, 'Jordon Dibbert Sr.', 'Shana Douglas', 'tierra62@example.com', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 713018857, NULL, NULL, 't0YqcEZVYu', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(31, 'Deborah Hammes', 'Joanny Hyatt', 'langworth.mitchel@example.com', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 5391506111, NULL, NULL, '5gbXzCxypY', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(32, 'Lavern Carter', 'Gordon Volkman', 'dallin21@example.org', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 5695470092, NULL, NULL, 'oNjALSPIuD', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(33, 'Dixie Rosenbaum V', 'Ora Nitzsche IV', 'sabrina69@example.com', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 7052239228, NULL, NULL, 'OLhTlnSX8I', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(34, 'Kathlyn Larson', 'Prof. Nettie West', 'alice.schaefer@example.com', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 3722507771, NULL, NULL, 'UT2VI6ezQO', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(35, 'Lelia Mante', 'Mrs. Ashly Kunde III', 'hermiston.eloise@example.com', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 6179049234, NULL, NULL, 'ptiYwUKEVo', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(36, 'Ulices Bruen', 'Rhianna Greenholt', 'elbert64@example.org', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 4964093807, NULL, NULL, 'S8GgKl3MJ2', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(37, 'Ms. Lue Hudson MD', 'Andres Fay', 'schmeler.horace@example.org', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 7230438546, NULL, NULL, 'fHEvYhKXnF', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(38, 'Vivienne Schmitt DVM', 'Alysson Stark', 'janick.hackett@example.net', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 5168289381, NULL, NULL, 'QW1Gevwsqx', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(39, 'Alisha Cole', 'Julius Haag', 'hyatt.felicity@example.com', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 5371496422, NULL, NULL, 'MA5dzqt7UD', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(40, 'Prof. Brionna Waters', 'Amari Rau', 'kris.quentin@example.com', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 7132534878, NULL, NULL, 'WmjGqFxwr8', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(41, 'Lily Weimann', 'Christop Hauck', 'frederick58@example.com', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 9066051016, NULL, NULL, 'SZ4Ed0B7nz', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(42, 'Marian Cremin', 'Prof. Elvie Wilderman', 'ari55@example.org', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 5258888440, NULL, NULL, 'V7oD5oFMi2', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(43, 'Dr. Nickolas King Jr.', 'Mr. Alden Roob', 'sonny61@example.org', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 3054608844, NULL, NULL, 'ZBYTc0bYRs', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(44, 'Isai Hagenes', 'Virgie Hyatt', 'turcotte.cristopher@example.com', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 7857854959, NULL, NULL, 'ZVW4Uhsg54', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(45, 'Prof. Kacie Lang DVM', 'Ivah Lehner', 'lindgren.wade@example.com', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 4581918156, NULL, NULL, 'b94crqWOe1', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(46, 'Damaris Rolfson II', 'Andreanne Ward', 'ahmed62@example.net', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 2574373870, NULL, NULL, '13QgCxSppj', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(47, 'Mrs. Kathryn Rempel', 'Merl Beahan', 'morissette.joseph@example.net', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 3510070569, NULL, NULL, 'DnMy7CdXbV', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(48, 'Giuseppe Rice', 'Celestine Hermann', 'lourdes51@example.net', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 1519154326, NULL, NULL, 'GwSFC4F1ek', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(49, 'Ms. Rebekah Nienow DVM', 'Arely Morar', 'hwyman@example.net', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 1522903074, NULL, NULL, 'PW6er8ppxJ', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(50, 'Mr. Kyler Medhurst II', 'Prof. Bridget Bergstrom', 'camden.botsford@example.net', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 7930094237, NULL, NULL, 'AFkhV9Q6O0', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(51, 'Katheryn Connelly', 'Luna Howell', 'gerhold.barrett@example.org', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 6204352720, NULL, NULL, 'txKGQyjpxn', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(52, 'Camila Reichert', 'Dr. Elyse Bergnaum', 'devon.rempel@example.net', '2025-05-05 08:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'male', 8945753198, NULL, NULL, '7lPEUhptLH', '2025-05-05 08:26:25', '2025-05-05 08:26:25'),
(56, 'aaaaaa', 'aaaaaaaa', 'ari@gmail.com', NULL, '$2y$10$yREsSqymJyqm17G8v6JFleMhwwlfDQMW1Wskca8lfrnjbolH/kqZe', 'male', 1234567891, 'image/174658801182462616-07-55-gray.jpg', NULL, NULL, '2025-05-06 06:07:38', '2025-05-06 20:20:11'),
(58, 'Kevin', 'Sanjaya', 'kevin@gmail.com', NULL, '$2y$10$Ot4s7ZgJwpnOxtfCiymPCO9dDhyQDbAPrKFI6lhVzRE6kLR2A3E3u', 'male', 1234567890, 'image/1746581978423270fesa-design-kantor-gameloft-yogyakarta1594796215-m.jpeg', 'playing,travelling', NULL, '2025-05-06 18:39:13', '2025-05-06 18:39:38');

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
