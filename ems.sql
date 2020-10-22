-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2020 at 09:24 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `activity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `activity`, `created_at`, `updated_at`) VALUES
(1, 151, 'Viewed Markus Schoen\'s Profile', '2020-10-17 03:15:40', '2020-10-17 03:15:40'),
(2, 151, 'Viewed Mr. Albert Wolff PhD\'s Profile', '2020-10-17 03:17:05', '2020-10-17 03:17:05'),
(3, 151, 'Viewed Mr. Albert Wolff PhD\'s Profile', '2020-10-17 03:31:39', '2020-10-17 03:31:39'),
(4, 151, 'Viewed Mr. Albert Wolff PhD\'s Profile', '2020-10-17 03:32:25', '2020-10-17 03:32:25'),
(5, 151, 'Viewed Mr. Albert Wolff PhD\'s Profile', '2020-10-17 03:32:29', '2020-10-17 03:32:29'),
(6, 151, 'Viewed Mr. Albert Wolff PhD\'s Profile', '2020-10-17 03:35:08', '2020-10-17 03:35:08'),
(7, 151, 'Viewed Mr. Albert Wolff PhD\'s Profile', '2020-10-17 03:37:44', '2020-10-17 03:37:44'),
(8, 151, 'Viewed Simon Angatia\'s Profile', '2020-10-17 03:38:27', '2020-10-17 03:38:27'),
(9, 151, 'Viewed Simon Angatia\'s Profile', '2020-10-17 03:39:50', '2020-10-17 03:39:50'),
(10, 151, 'Viewed Mr. Albert Wolff PhD\'s Profile', '2020-10-17 03:43:48', '2020-10-17 03:43:48'),
(11, 151, 'Viewed Lulu Powlowski\'s Profile', '2020-10-18 19:27:14', '2020-10-18 19:27:14'),
(12, 151, 'Added A question: What is sociology?', '2020-10-18 19:52:19', '2020-10-18 19:52:19'),
(13, 151, 'Viewed Simon Angatia\'s Profile', '2020-10-18 19:52:46', '2020-10-18 19:52:46');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(7, '2020_10_16_172354_create_sessions_table', 2),
(8, '2020_10_17_055833_create_activities_table', 3),
(9, '2020_10_16_132627_create_questions_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `difficulty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'basic',
  `user_id` int(11) DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `difficulty`, `user_id`, `level`, `subject`, `created_at`, `updated_at`) VALUES
(1, 'What is Biochemistry?', 'basic', 151, 'year1', 'Biochemistry', '2020-10-18 11:30:21', '2020-10-18 11:30:21'),
(2, 'Who is the father of Financial Accounting?', 'basic', 151, 'year1', 'BCOM', '2020-10-18 11:40:07', '2020-10-18 11:40:07'),
(3, 'Describe the science zoology', 'basic', 151, 'year1', 'zoology', '2020-10-18 11:43:38', '2020-10-18 11:43:38'),
(4, 'What is Computer Programming?', 'basic', 151, 'year1', 'Computer Science', '2020-10-18 11:44:35', '2020-10-18 11:44:35'),
(5, 'What is biochemical Production?', 'basic', 151, 'year1', 'Biochemistry', '2020-10-18 19:47:55', '2020-10-18 19:47:55'),
(6, 'What is sociology?', 'basic', 151, 'year1', 'Sociology', '2020-10-18 19:52:18', '2020-10-18 19:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cLdXCDqIttQ9CDl5QJUkll9T0mqeAOnFBSpAZbfd', 151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoicUxFQTkydE01cXdib0V5eHNkbXFES2ZFOTFZVThMV1BpSVFkcG9ZSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxNTE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCR3YjBhS0RwNjI2SUNZRWoyeEwwM0kuMHdhTUE3RzV3RlNYV3lkNnZTNHVZWDA2czNPOWhSRyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkd2IwYUtEcDYyNklDWUVqMnhMMDNJLjB3YU1BN0c1d0ZTWFd5ZDZ2UzR1WVgwNnMzTzloUkciO30=', 1603217091),
('sgTlieh25JTjgsQhO6uF98vOcmTbnJBd1TU8bkqb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnhNc1N4WkVxRjg5V21nWE5EUXNtSTVVdVZJWlljY1RBMGFPS0lkeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1603210996);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `rank`, `username`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(101, 'Beatrice Weimann', 'hermiston.abdullah@example.org', 'teacher', 'cheyenne97', '2020-10-16 12:23:14', '$2y$10$vbqzEs/IWO02ykqO9AYFP.tKIxlk4fRiHmtxyaRiD5wUjcR/inFSi', NULL, NULL, 'uvqsKkCEMM', '2020-10-16 12:23:20', '2020-10-16 12:23:20'),
(102, 'Stevie Hilpert', 'margot.okuneva@example.net', 'student', 'dangelo.daniel', '2020-10-16 12:23:14', '$2y$10$KZmDRl.j6BxSw3BQ/bT2w.zGGfq.GtLv6udoDv0jnXAvMn7VNw3PW', NULL, NULL, 'gaUIXFCKGW', '2020-10-16 12:23:20', '2020-10-16 12:23:20'),
(103, 'Mr. Albert Wolff PhD', 'cwillms@example.org', 'teacher', 'mose13', '2020-10-16 12:23:14', '$2y$10$GoieFYoduHhWS2l3wkUl.eAO9J4IX19.x6ErEck/8h6ayWIHUx5g.', NULL, NULL, '38ckI74er7', '2020-10-16 12:23:20', '2020-10-16 12:23:20'),
(104, 'Montana Tremblay', 'dessie.carroll@example.com', 'student', 'gusikowski.tomasa', '2020-10-16 12:23:14', '$2y$10$EYLF/18PH/tPV2vxrOVrueqqFVgY.SgkREF.HCIE7aQXZBR5n28/i', NULL, NULL, 'k7QhmQcJWe', '2020-10-16 12:23:21', '2020-10-16 12:23:21'),
(105, 'Lelah Daniel Sr.', 'noberbrunner@example.com', 'teacher', 'clyde.gottlieb', '2020-10-16 12:23:14', '$2y$10$2.57dM1DU9wX4WILWzc6xuOAXcgC42divivXaQuPkSwxSlbG4RG3S', NULL, NULL, 'Cc8MkmLPVW', '2020-10-16 12:23:21', '2020-10-16 12:23:21'),
(106, 'Prof. Eliezer Reichert', 'wtreutel@example.net', 'student', 'nparisian', '2020-10-16 12:23:14', '$2y$10$7/pR4WUFKNTsjCdDwe3jQ.AmuyZW0dxIALYNF4Zu9O8Fa4KatOHJe', NULL, NULL, 'XNSBkmVHMQ', '2020-10-16 12:23:21', '2020-10-16 12:23:21'),
(107, 'Lulu Powlowski', 'johns.willie@example.org', 'teacher', 'hirthe.ryann', '2020-10-16 12:23:14', '$2y$10$iKb38ZYqrD6lo.2XwqpjCeQYbuGl.0BS57djRv61HAHUZa5KjpMze', NULL, NULL, '9BjsHVmafa', '2020-10-16 12:23:21', '2020-10-16 12:23:21'),
(108, 'Dr. Solon Kihn Sr.', 'wwest@example.com', 'student', 'bart.hudson', '2020-10-16 12:23:15', '$2y$10$kvjP0SgzChaxcoxQR5H/AuA8OQEyr4lTcq1SmPm90oRIox3PW.dRy', NULL, NULL, '9o6o99Paze', '2020-10-16 12:23:21', '2020-10-16 12:23:21'),
(109, 'Miss Lynn Graham', 'casper.lauren@example.com', 'teacher', 'schoen.melisa', '2020-10-16 12:23:15', '$2y$10$vqD81Z/dLfYY1zvfGliZkuOcYJQg8H4F56ARKoDwbC/JdCucc4xQi', NULL, NULL, 'IcGVncn0ac', '2020-10-16 12:23:21', '2020-10-16 12:23:21'),
(110, 'Ms. Birdie Ledner V', 'dena30@example.org', 'student', 'pierre.rempel', '2020-10-16 12:23:15', '$2y$10$pfWK1AvJozgsoL.7ffa0ReyldIKukW.laM4kCrfhb94S7w37qLqL6', NULL, NULL, 'A8e8dxYESZ', '2020-10-16 12:23:21', '2020-10-16 12:23:21'),
(111, 'Tyrel Swift', 'zieme.muriel@example.net', 'student', 'born', '2020-10-16 12:23:15', '$2y$10$cdx6wCOz7E9b2yZjqH1g/uSIuDpIz2YW8BQtr5TP0r699aEOSPx9G', NULL, NULL, 'VLUHVwGkHJ', '2020-10-16 12:23:21', '2020-10-16 12:23:21'),
(112, 'Maxime Rodriguez II', 'kmohr@example.org', 'student', 'spencer.alison', '2020-10-16 12:23:15', '$2y$10$Ylmk1jdAZ0T7p4/iaiYhruoO8K6OTixGXKYRvtam0RY0OFJxf1b7i', NULL, NULL, 'mIDEjWjhnA', '2020-10-16 12:23:22', '2020-10-16 12:23:22'),
(113, 'Donnie Langosh I', 'oral21@example.net', 'student', 'mohr.melvin', '2020-10-16 12:23:15', '$2y$10$0VBO8YMao8sd9gONaSOcye2pD2sJjN6Le89Ky.A11.V8QxdLNx1.a', NULL, NULL, 'nKSGHlMv5V', '2020-10-16 12:23:22', '2020-10-16 12:23:22'),
(114, 'Prof. Ayla Schneider DVM', 'bergstrom.alexzander@example.net', 'student', 'kjacobson', '2020-10-16 12:23:15', '$2y$10$GWn04XEUFwVfhviD/nYi3e5zCzFa6S85NBFpUypnJzjS8NwW8C5Lu', NULL, NULL, 'tf6utkwCwS', '2020-10-16 12:23:23', '2020-10-16 12:23:23'),
(115, 'Raymond Jones', 'estelle25@example.org', 'student', 'fritchie', '2020-10-16 12:23:15', '$2y$10$XjT1eUrWf23rKCBeGpzQxOOh50eofW/M0iKfIz32ebem7244pIHhu', NULL, NULL, 'UGYnlYTCUD', '2020-10-16 12:23:23', '2020-10-16 12:23:23'),
(116, 'Harrison Kunze', 'zkreiger@example.net', 'teacher', 'noemy75', '2020-10-16 12:23:16', '$2y$10$dQiGNTs8TuwGPonKH2trPOqpL4Af3L4IDtCEz6bxjQMkZVKlqWl2C', NULL, NULL, 'vKtTV98q2u', '2020-10-16 12:23:23', '2020-10-16 12:23:23'),
(117, 'Camila Hettinger', 'roma.hauck@example.org', 'student', 'hand.nya', '2020-10-16 12:23:16', '$2y$10$mnTzSDDq.X1YBf8AgMQWyeqJwHGSzXNDzz2zjwZ5IS1XLPxdpfHVi', NULL, NULL, '6GGLj7cv24', '2020-10-16 12:23:24', '2020-10-16 12:23:24'),
(118, 'Darryl Mante', 'rwill@example.net', 'student', 'crawford69', '2020-10-16 12:23:16', '$2y$10$Pbe7y9aNxnBCL874dFuoE.eJ02yzrrhGKOmFOZvWjZbFY8N.gua8m', NULL, NULL, 'Q93T0y02c1', '2020-10-16 12:23:24', '2020-10-16 12:23:24'),
(119, 'Chaim Gaylord DVM', 'rmckenzie@example.com', 'teacher', 'johnson.zachariah', '2020-10-16 12:23:16', '$2y$10$ZxyVmdoTJfcxWBuLlzNgue56k/a0oy3zFb/I6iJwuMGYrRLbl2BNq', NULL, NULL, 'Il81uYo7qW', '2020-10-16 12:23:24', '2020-10-16 12:23:24'),
(120, 'Nicholaus Gutmann Sr.', 'alf35@example.net', 'teacher', 'amedhurst', '2020-10-16 12:23:16', '$2y$10$mG3/t4lLouwBxYLin1A6iOV3OotA8yx.J2h2Gv43P6y7m8BOKonAm', NULL, NULL, 'mXyNdyHvC9', '2020-10-16 12:23:24', '2020-10-16 12:23:24'),
(121, 'Kareem Emmerich IV', 'whand@example.com', 'teacher', 'kris.yvette', '2020-10-16 12:23:16', '$2y$10$cfDUtMmoBvYmzZL1Gr.n3e35DQ7yXwS2CHd.rlMNPdULPXJfgeiBW', NULL, NULL, 'lT3yYxf0XV', '2020-10-16 12:23:25', '2020-10-16 12:23:25'),
(122, 'Darrell Mante', 'hallie47@example.com', 'teacher', 'lbradtke', '2020-10-16 12:23:16', '$2y$10$WkuAqF6khGq4C5cmrzOYMug3iobvS4sFxRlbRYZgwHziNZVLgx0/m', NULL, NULL, '9uxzDP0Q1i', '2020-10-16 12:23:25', '2020-10-16 12:23:25'),
(123, 'Maryse Rohan', 'ofeeney@example.org', 'teacher', 'travis.torp', '2020-10-16 12:23:17', '$2y$10$XqsZZQk0rcr7vEb6A5fOXumVn.vMYLnfGaDBIwBzFvq1ATzoC/Vm2', NULL, NULL, 'epGMFkHxuV', '2020-10-16 12:23:25', '2020-10-16 12:23:25'),
(124, 'Mr. Vladimir Flatley', 'rbernhard@example.net', 'teacher', 'garrick.kilback', '2020-10-16 12:23:17', '$2y$10$o3lyKx0b3L6SmdZClC9CNu4nzLRYo8OdrMLVuVasJ6yif9XVcKrnS', NULL, NULL, 'h8TqBUIUBj', '2020-10-16 12:23:25', '2020-10-16 12:23:25'),
(125, 'Dominique Dare IV', 'lacey02@example.com', 'teacher', 'violette.leuschke', '2020-10-16 12:23:17', '$2y$10$njRYRVE7n.oBQq2xmjpHiOvcS/l6HjNg3AvqyfLSzRuIpIE1Skzxa', NULL, NULL, 'gNyiv2TQR7', '2020-10-16 12:23:25', '2020-10-16 12:23:25'),
(126, 'Princess Fritsch Sr.', 'juliana.funk@example.com', 'student', 'kris.gina', '2020-10-16 12:23:17', '$2y$10$mUdAx2YAWXFlvvd0WXBIY.w2J50ApTIq7ec6KyNBckexWJJRRhxCS', NULL, NULL, 'f4308mJI3Z', '2020-10-16 12:23:25', '2020-10-16 12:23:25'),
(127, 'Mellie Senger', 'iprice@example.com', 'teacher', 'dominique01', '2020-10-16 12:23:17', '$2y$10$uNAYhCDTdhZwYj7rrWcZjuUA6S/td7inL5bzn4RhOfxC8her8SKii', NULL, NULL, 'rxANH0jZ1S', '2020-10-16 12:23:25', '2020-10-16 12:23:25'),
(128, 'Etha Mosciski DVM', 'shermiston@example.org', 'student', 'earline.lueilwitz', '2020-10-16 12:23:17', '$2y$10$kEkhEMWynC9sHtXASHmvc.a9DkCtCVZvt9fLuxwMv.x6Nzt/No9GK', NULL, NULL, 'UAgKB2HKGW', '2020-10-16 12:23:25', '2020-10-16 12:23:25'),
(129, 'Lawson Morar', 'freinger@example.net', 'student', 'horacio.schimmel', '2020-10-16 12:23:17', '$2y$10$x5QIg3pjt6J.orcWSXuKIO5Z6qGUY51H2W8sdCXYClI9U3aPUkhaC', NULL, NULL, 'TbpmTNVGgw', '2020-10-16 12:23:25', '2020-10-16 12:23:25'),
(130, 'Ms. Annetta Romaguera II', 'mohammad22@example.net', 'student', 'issac.hirthe', '2020-10-16 12:23:17', '$2y$10$qgQEjnJx9o2n0gIuafGd6.7/dEpP4KLSdUyzoySRV6WZ2bfXCYHmK', NULL, NULL, 'vduEpDpzGd', '2020-10-16 12:23:26', '2020-10-16 12:23:26'),
(131, 'Mackenzie Fahey', 'sylvan13@example.net', 'student', 'jannie54', '2020-10-16 12:23:18', '$2y$10$PhZPSsNPxnwjZK9ZSSQTtu9iy82jsS0UklcoGdJSYWIAqv7M1omri', NULL, NULL, 'jhYgofJGeN', '2020-10-16 12:23:26', '2020-10-16 12:23:26'),
(132, 'Alene Bosco', 'zulauf.chasity@example.net', 'teacher', 'hansen.christelle', '2020-10-16 12:23:18', '$2y$10$ByxOFyi8PyJv.NMvGfGnfeNkZ/MU5UIu.Ij.mou9vdm4Lyb7z0omS', NULL, NULL, 'EC0LYgfI2O', '2020-10-16 12:23:27', '2020-10-16 12:23:27'),
(133, 'Abelardo Gleason', 'berenice.jones@example.net', 'student', 'hoppe.newton', '2020-10-16 12:23:18', '$2y$10$40EOYFipMKxtNBKwKgBBgOY64Xh48KM78eeDlw8v9Fmp/qnmYgY5e', NULL, NULL, 'q2YRUsyFFO', '2020-10-16 12:23:27', '2020-10-16 12:23:27'),
(134, 'Maymie Carter', 'adams.sheila@example.com', 'teacher', 'gerry.wintheiser', '2020-10-16 12:23:18', '$2y$10$5Kkdl1wzpp6vE4./Vkp.zOaAHw3hzCbnncwXGSc2xJ9sQCDr/Z2te', NULL, NULL, 'ImM6kuL3Cn', '2020-10-16 12:23:27', '2020-10-16 12:23:27'),
(135, 'Dr. Howard Kulas', 'lucinda.abshire@example.org', 'student', 'ullrich.gene', '2020-10-16 12:23:18', '$2y$10$ggd7966XHLBJSxpSiE5Js.0LHGg99CTSpYHhAJ1YvEewSYHOmp5nW', NULL, NULL, 'RtdUG2R0aL', '2020-10-16 12:23:27', '2020-10-16 12:23:27'),
(136, 'Prof. Frances Harris IV', 'jameson.lindgren@example.org', 'student', 'madilyn.strosin', '2020-10-16 12:23:18', '$2y$10$FZzEoH7myeEFj4JRyZoUiuu6UQuQgPAbNFlQqxtiQNRw11u4SZdG2', NULL, NULL, 'KZctuMTCyX', '2020-10-16 12:23:27', '2020-10-16 12:23:27'),
(137, 'Garret Homenick IV', 'reagan16@example.com', 'student', 'dvonrueden', '2020-10-16 12:23:18', '$2y$10$GP3F30wrv50P3rcf/86VMediFiU7B8cN/egCxAOgwzjylOOeAD67K', NULL, NULL, 'pMLO4jm95h', '2020-10-16 12:23:27', '2020-10-16 12:23:27'),
(138, 'Roxanne Stiedemann', 'koss.kevin@example.org', 'student', 'lzulauf', '2020-10-16 12:23:18', '$2y$10$PjT/GHl3f6kK03og39jxyuJRd0holKTEGT3DOUCC3mzhGax8Liw4q', NULL, NULL, 'seOiF0mG3Y', '2020-10-16 12:23:27', '2020-10-16 12:23:27'),
(139, 'Jesus Nicolas IV', 'arch.zemlak@example.com', 'student', 'clementine.murray', '2020-10-16 12:23:19', '$2y$10$IgkP34OqnoSvDYDMdiFdGeKeUtKgOvxKz5pcl0Ey8lgOhhlhJeECm', NULL, NULL, 'qSqce2IAHT', '2020-10-16 12:23:27', '2020-10-16 12:23:27'),
(140, 'Dr. Jonas Heaney', 'xokuneva@example.com', 'student', 'patrick72', '2020-10-16 12:23:19', '$2y$10$6i/KS5aWJhr6vygFde.LReEhOB2ui4DBlb.vD5uYG0xODDIkQxNe.', NULL, NULL, 'S1XzhOmyHt', '2020-10-16 12:23:28', '2020-10-16 12:23:28'),
(141, 'Markus Schoen', 'mercedes39@example.org', 'teacher', 'bahringer.charlie', '2020-10-16 12:23:19', '$2y$10$6iU20aeUgQnwrTDRQsoZ2u6oZ6pcmXBhro4O49HdX.ZLAxGvGRI1a', NULL, NULL, 'o6IlISpu8N', '2020-10-16 12:23:28', '2020-10-16 12:23:28'),
(142, 'Nathanael Swaniawski', 'kuhic.novella@example.net', 'student', 'kylie.carter', '2020-10-16 12:23:19', '$2y$10$MCbrxNv5TqYIgfiFBXRlN.U8XlMIvtgqw37XL3L86rEvRYs0wvOVm', NULL, NULL, '0v33D6TCdg', '2020-10-16 12:23:28', '2020-10-16 12:23:28'),
(143, 'Walton Herman', 'elwyn97@example.net', 'teacher', 'dwitting', '2020-10-16 12:23:19', '$2y$10$jf24DOAtzR525ODgr/tF5OCEyxS5l2RwQUwZ5xuh1Em2SLfGQ2EQO', NULL, NULL, 'vdkmi5VCtA', '2020-10-16 12:23:28', '2020-10-16 12:23:28'),
(144, 'Summer Rosenbaum', 'lkautzer@example.net', 'student', 'oaltenwerth', '2020-10-16 12:23:19', '$2y$10$h9IMvBr0qaywxppzwWLUe.XbBvHKyupIgk6/qA7f91CpAfc.BwLqO', NULL, NULL, '9F0eXyi3zi', '2020-10-16 12:23:28', '2020-10-16 12:23:28'),
(145, 'Prof. Aiyana Harvey', 'shields.rozella@example.com', 'student', 'brown.crystel', '2020-10-16 12:23:19', '$2y$10$SOYKeTVuWbEXL/7bYBgF/OMJDeQNjnx0Ru7afiSrhgYs9mlxR0RDO', NULL, NULL, 'oWomv3SXUW', '2020-10-16 12:23:28', '2020-10-16 12:23:28'),
(146, 'Jade Cartwright PhD', 'valentine86@example.net', 'student', 'vlittel', '2020-10-16 12:23:20', '$2y$10$E4.Cj3aqiAdaEPtauZSjf.peVRcFLtCJ0BWEfT6d6MY0FLgtii7pa', NULL, NULL, 'dz4Mrg4O9M', '2020-10-16 12:23:28', '2020-10-16 12:23:28'),
(147, 'Nedra Emmerich', 'dblick@example.org', 'student', 'hgreenfelder', '2020-10-16 12:23:20', '$2y$10$K8x7cL/6jHytzRs2AmecUuBZYkN.YWPCwE0eIs4h3wa/aBtFtXf8S', NULL, NULL, 'uZwCb6FcQi', '2020-10-16 12:23:29', '2020-10-16 12:23:29'),
(148, 'Darius Gaylord', 'sammie74@example.net', 'teacher', 'annette.dach', '2020-10-16 12:23:20', '$2y$10$48gJJdMpc3Lr2BmDXZ7lLOOgxtX7p7KhLuj34MCEX6uUIz1pyA4Je', NULL, NULL, 'tSe063c9tx', '2020-10-16 12:23:29', '2020-10-16 12:23:29'),
(149, 'Skye Hansen', 'dubuque.etha@example.net', 'teacher', 'xwunsch', '2020-10-16 12:23:20', '$2y$10$CKXM3C7EZcmsAYJE9UwFIeg9yHNcqiRrgrf1iUiBxMi3fBtEddB.a', NULL, NULL, 'bJ9GCfpDwV', '2020-10-16 12:23:29', '2020-10-16 12:23:29'),
(150, 'Mr. Jaycee Schroeder DDS', 'ike.beer@example.com', 'teacher', 'carolyne.simonis', '2020-10-16 12:23:20', '$2y$10$3WabmAN7WXvDPKuwX9DOVuTCYe1pH57Osn.jEVc85kx7twYAPBTwO', NULL, NULL, '41EDLUl4W9', '2020-10-16 12:23:29', '2020-10-16 12:23:29'),
(151, 'Simon Angatia', 'simonnabuko@gmail.com', 'admin', 'Simon', '2020-10-16 12:28:58', '$2y$10$wb0aKDp626ICYEj2xL03I.0waMA7G5wFSXWyd6vS4uYX06s3O9hRG', NULL, NULL, '7HGBUu0lfvtPT2oJGo4t0Vuic5o0nkn9lJb1AKiRUq4aaChsrSyJxvko7dbI', '2020-10-16 12:28:58', '2020-10-16 12:28:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_user_id_foreign` (`user_id`);

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `questions_question_unique` (`question`) USING HASH;

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
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
