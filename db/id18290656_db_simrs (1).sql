-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 14, 2022 at 06:52 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id18290656_db_simrs`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(3, 'Event', '2022-01-24 04:29:38', '2022-01-24 04:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `speciality_id`, `description`, `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `avatar`, `created_at`, `updated_at`) VALUES
(8, 'dr. Yuli Hermansyah,Sp.PD', 6, 'Kelompok staff medik penyakit dalam dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1655178211.png', '2022-06-08 09:08:40', '2022-06-13 20:43:31'),
(9, 'dr. Ach. Syaiful Ludfi,Sp.PD', 6, 'Kelompok staff medik penyakit dalam dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1655178238.png', '2022-06-08 09:11:32', '2022-06-13 20:43:58'),
(10, 'dr. Irawan Fajar Kusuma, M.Sc., Sp.PD', 6, 'Kelompok staff medik penyakit dalam dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1655178265.png', '2022-06-08 09:12:25', '2022-06-13 20:44:25'),
(11, 'dr. Yonas Hadisubroto, Sp. OG', 7, 'Kelompok staff medik obgyn dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1655178284.png', '2022-06-08 09:16:42', '2022-06-13 20:44:44'),
(12, 'dr. Fahmi, Sp.OG', 7, 'Kelompok staff medik obgyn dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', NULL, '2022-06-08 09:18:30', '2022-06-08 09:18:30'),
(13, 'dr. Dhian Eka Putri, Sp.OG', 7, 'Kelompok staff medik obgyn dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', NULL, '2022-06-08 09:19:14', '2022-06-08 09:19:40'),
(14, 'dr. Daniel Alexander Suseno, Sp.OG', 7, 'Kelompok staff medik obgyn dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1655178343.png', '2022-06-08 09:20:25', '2022-06-13 20:45:43'),
(15, 'dr. Saraswati Dewi, Sp. A (K)', 8, 'Kelompok staff medik anak dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', NULL, '2022-06-08 09:21:24', '2022-06-08 09:21:24'),
(16, 'dr. Muhammad Ali Shodikin, M.Kes, Sp.A', 8, 'Kelompok staff medik anak dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1655178362.png', '2022-06-08 09:22:05', '2022-06-13 20:46:02'),
(17, 'dr. Benedictus Gebyar Tri Baskoro,Sp.A', 8, 'Kelompok staff medik anak dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1655178384.png', '2022-06-08 09:22:46', '2022-06-13 20:46:24'),
(18, 'dr. Adi Nugroho, Sp.B', 9, 'Kelompok staff medik bedah dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1655178400.png', '2022-06-08 09:23:58', '2022-06-13 20:46:40'),
(19, 'dr. Syamsul Huda, Sp.B', 9, 'Kelompok staff medik bedah dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1655178416.png', '2022-06-08 09:24:32', '2022-06-13 20:46:56'),
(20, 'dr. Laksmi Indreswari, Sp.B', 9, 'Kelompok staff medik bedah dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1655178435.png', '2022-06-08 09:25:14', '2022-06-13 20:47:15'),
(21, 'dr. Primanto Bhakti Leksmana, Sp. B (Onk) K', 9, 'Kelompok staff medik bedah dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654680371.png', '2022-06-08 09:26:11', '2022-06-08 09:26:11'),
(22, 'dr. Resdiyanto, Sp. B', 9, 'Kelompok staff medik anak dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654680404.png', '2022-06-08 09:26:44', '2022-06-08 09:26:44'),
(23, 'dr. Heni Fatmawati, M.Kes. Sp.Rad', 10, 'Kelompok staff medik radiologi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.300', '06.00-13.30', '-', '/img/doctor/avatar/1654680563.png', '2022-06-08 09:29:23', '2022-06-08 09:29:23'),
(24, 'dr. R. Handi Sembodo,Sp.Rad', 10, 'Kelompok staff medik radiologi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654680603.png', '2022-06-08 09:30:03', '2022-06-08 09:30:03'),
(25, 'dr. Febria Rahayuni Sulistiowati,Sp.Rad', 10, 'Kelompok staff medik radiologi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654680670.png', '2022-06-08 09:30:45', '2022-06-08 09:31:10'),
(26, 'dr. Wiwiek Andrijani,Sp.An.', 11, 'Kelompok staff medik anestesi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', NULL, '2022-06-08 09:32:54', '2022-06-08 09:32:54'),
(27, 'dr. Suparno Adi Santika Sp. An', 11, 'Kelompok staff medik anestesi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654680809.png', '2022-06-08 09:33:29', '2022-06-08 09:33:29'),
(28, 'dr. Haris Darmawan, Sp. An', 11, 'Kelompok staff medik anestesi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654680843.png', '2022-06-08 09:34:03', '2022-06-08 09:34:03'),
(29, 'dr. Achmad Wahib Wahyu Winarso,Sp.An', 11, 'Kelompok staff medik anestesi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', NULL, '2022-06-08 09:34:29', '2022-06-08 09:34:29'),
(30, 'dr. Taufiq Gemawan, Sp. An', 11, 'Kelompok staff medik anestesi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654680924.png', '2022-06-08 09:35:24', '2022-06-08 09:35:24'),
(31, 'dr. Narendra Wahyu Junior, Sp.Rad', 11, 'Kelompok staff medik anestesi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', NULL, '2022-06-08 09:36:25', '2022-06-08 09:36:25'),
(32, 'dr. Forman Yustesy Sitinjak, Sp.KFR', 12, 'Kelompok staff medik rehabilitasi medik dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654681059.png', '2022-06-08 09:37:39', '2022-06-08 09:37:39'),
(33, 'dr. Rini Riyanti,Sp.PK', 13, 'Kelompok staff medik patologi klinik dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', NULL, '2022-06-08 09:38:19', '2022-06-08 09:38:19'),
(34, 'dr. Binar Rahma Utami, Sp.PK', 13, 'Kelompok staff medik patologi klinik dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654681152.png', '2022-06-08 09:39:12', '2022-06-08 09:39:12'),
(35, 'dr. Arswendo Ika Murthy, Sp.PK', 13, 'Kelompok staff medik patologi klinik dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654682226.png', '2022-06-08 09:57:06', '2022-06-08 09:57:06'),
(36, 'dr. Meiske Margaretha M. Biomed, Sp. PA', 14, 'Kelompok staff medik patologi anatomi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654682308.png', '2022-06-08 09:58:28', '2022-06-08 09:58:28'),
(37, 'dr. Jane Kosasih, Sp. PA', 14, 'Kelompok staff medik patologi anatomi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654682358.png', '2022-06-08 09:59:18', '2022-06-08 09:59:18'),
(38, 'dr. Maria Kwarditawati, Sp.THT', 15, 'Kelompok staff medik THT dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654749648.png', '2022-06-09 04:40:48', '2022-06-09 04:40:48'),
(39, 'dr. Denny Rizaldi Arianto, Sp. THT-KL', 15, 'Kelompok staff medik THT dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654749686.png', '2022-06-09 04:41:26', '2022-06-09 04:41:26'),
(40, 'dr. Nindya Shinta, Sp. THT', 15, 'Kelompok staff medik THT dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654749736.png', '2022-06-09 04:42:16', '2022-06-09 04:42:16'),
(41, 'dr. Rosmarini Estri Sih, M.Sc.Sp.KK', 16, 'Kelompok staff medik kulit dan kelamin dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654749802.png', '2022-06-09 04:43:22', '2022-06-09 04:43:22'),
(42, 'Prof. dr. Bambang Suhariyanto, Sp.KK (K) FINS-DV, FAA-DV', 16, 'Kelompok staff medik kulit dan kelamin dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654749858.png', '2022-06-09 04:44:18', '2022-06-09 04:44:18'),
(43, 'dr. Anselma Dyah Kartikahadi, Sp. KK', 16, 'Kelompok staff medik kulit dan kelamin dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '/img/doctor/avatar/1654749891.png', '2022-06-09 04:44:51', '2022-06-09 04:44:51'),
(44, 'dr. I Nyoman Semita, Sp. OT-Spine (K)', 17, 'Kelompok staff medik ortopedi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654749960.png', '2022-06-09 04:46:00', '2022-06-09 04:46:00'),
(45, 'dr. Suparimbo,Sp.OT', 17, 'Kelompok staff medik ortopedi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654749998.png', '2022-06-09 04:46:38', '2022-06-09 04:46:38'),
(46, 'dr. Ainul Miftah Azizain, Sp. OT', 17, 'Kelompok staff medik ortopedi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654750037.png', '2022-06-09 04:47:17', '2022-06-09 04:47:17'),
(47, 'dr. Nanang Hari Wibowo, Sp. OT (K) Hip and Knee', 15, 'Kelompok staff medik ortopedi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654750085.png', '2022-06-09 04:48:05', '2022-06-09 04:48:05'),
(48, 'dr. Dwi Ariyanti, Sp. JP FIHA', 18, 'Kelompok staff medik jantung dan pembuluh darah dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.300', '06.00-13.30', '-', '/img/doctor/avatar/1654750147.png', '2022-06-09 04:49:07', '2022-06-09 04:49:07'),
(49, 'dr. Suryono,Sp.JP (K)-FIHA, FAsCC', 18, 'Kelompok staff medik jantung dan pembuluh darah dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654750195.png', '2022-06-09 04:49:55', '2022-06-09 04:49:55'),
(50, 'dr. Pipiet Wulandari, Sp. JP. FIHA', 18, 'Kelompok staff medik jantung dan pembuluh darah dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654750243.png', '2022-06-09 04:50:43', '2022-06-09 04:50:43'),
(51, 'dr. Dandy Hari Hartono, Sp.JP (K)-FIHA', 18, 'Kelompok staff medik jantung dan pembuluh darah dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654750291.png', '2022-06-09 04:51:31', '2022-06-09 04:51:31'),
(52, 'dr. Aditha Satria maulana, Sp. JP FIHA', 18, 'Kelompok staff medik jantung dan pembuluh darah dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654750342.png', '2022-06-09 04:52:22', '2022-06-09 04:52:22'),
(53, 'dr. Retna Dwi Puspitarini, Sp.P', 19, 'Kelompok staff medik paru dan asma dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654750387.png', '2022-06-09 04:53:07', '2022-06-09 04:53:07'),
(54, 'dr. Angga Mardro Raharjo, Sp.P', 19, 'Kelompok staff medik paru dan asma dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654750434.png', '2022-06-09 04:53:54', '2022-06-09 04:53:54'),
(55, 'dr. Wahyu Agung Purnomo, Sp. P', 19, 'Kelompok staff medik paru dan asma dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', NULL, '2022-06-09 04:54:28', '2022-06-09 04:54:28'),
(56, 'dr. Iwan Dewanto Sp. M', 20, 'Kelompok staff medik mata dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654750532.png', '2022-06-09 04:55:32', '2022-06-09 04:55:32'),
(57, 'dr. Bagas Kumoro, Sp.M', 20, 'Kelompok staff medik mata dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654750572.png', '2022-06-09 04:56:12', '2022-06-09 04:56:12'),
(58, 'dr. Erwanda Fredi Purliawan,Sp.M', 20, 'Kelompok staff medik mata dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654750609.png', '2022-06-09 04:56:49', '2022-06-09 04:56:49'),
(59, 'dr. Komang Yunita Wiryaning Putri , Sp. S', 21, 'Kelompok staff medik syaraf dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654750661.png', '2022-06-09 04:57:41', '2022-06-09 04:57:41'),
(60, 'dr. Lely Martha Uli, Sp.S', 21, 'Kelompok staff medik syaraf dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654750708.png', '2022-06-09 04:58:28', '2022-06-09 04:58:28'),
(61, 'dr. Azham Purwandhono, Sp. N', 21, 'Kelompok staff medik syaraf dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654750746.png', '2022-06-09 04:59:06', '2022-06-09 04:59:06'),
(62, 'dr. Ika Sedar Wasis, Sp. N', 20, 'Kelompok staff medik syaraf dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.300', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654750792.png', '2022-06-09 04:59:52', '2022-06-09 04:59:52'),
(63, 'dr. Novan Krisno Adji, Sp. BS', 22, 'Kelompok staff medik bedah syaraf dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '/img/doctor/avatar/1654750846.png', '2022-06-09 05:00:46', '2022-06-09 05:00:46'),
(64, 'dr. Andre Kusuma,Sp.BS', 22, 'Kelompok staff medik bedah syaraf dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654750963.png', '2022-06-09 05:02:43', '2022-06-09 05:02:43'),
(65, 'dr. Lily Natalia, Sp. BS', 22, 'Kelompok staff medik bedah syaraf dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751016.png', '2022-06-09 05:03:36', '2022-06-09 05:03:36'),
(66, 'dr. Budi Suwarno, Sp.U', 23, 'Kelompok staff medik urologi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751097.png', '2022-06-09 05:04:57', '2022-06-09 05:04:57'),
(67, 'dr. Ogi Bahaurini Gumilar, Sp. U', 23, 'Kelompok staff medik urologi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751136.png', '2022-06-09 05:05:36', '2022-06-09 05:05:36'),
(68, 'dr. Justina Evy Tyaswati,Sp.KJ', 24, 'Kelompok staff medik kesehatan jiwa dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751196.png', '2022-06-09 05:06:36', '2022-06-09 05:06:36'),
(69, 'dr. Inke Kusumastuti, M. Biomed, Sp. KJ', 24, 'Kelompok staff medik kesehatan jiwa dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751240.png', '2022-06-09 05:07:20', '2022-06-09 05:07:20'),
(70, 'dr. Setiadi Drajad Kurniawan,Sp.BTKV', 25, 'Kelompok staff medik bedah thorax kardiovaskuler dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751312.png', '2022-06-09 05:08:32', '2022-06-09 05:08:32'),
(71, 'dr. Muhammad Zakiy Muntazhar, M.Ked.Klin, Sp.BTKV', 25, 'Kelompok staff medik bedah thorax kardiovaskuler dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751364.png', '2022-06-09 05:09:24', '2022-06-09 05:09:24'),
(72, 'dr. Ulfa Elfiah, M.Kes. Sp.BP-RE', 26, 'Kelompok staff medik bedah plastik dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', NULL, '2022-06-09 05:10:08', '2022-06-09 05:10:08'),
(73, 'dr. Supangat, M.Kes. Ph.D.Sp.BA', 27, 'Kelompok staff medik bedah anak dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751450.png', '2022-06-09 05:10:50', '2022-06-09 05:10:50'),
(74, 'dr. Made Adnyana', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751576.png', '2022-06-09 05:12:56', '2022-06-09 05:12:56'),
(75, 'dr. Tegoeh Wibowo', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751622.png', '2022-06-09 05:13:42', '2022-06-09 05:13:42'),
(76, 'dr. Rhaumanen Vita Tantina', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751663.png', '2022-06-09 05:14:23', '2022-06-09 05:14:23'),
(77, 'dr. Naila Esvandiari', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751703.png', '2022-06-09 05:15:03', '2022-06-09 05:15:03'),
(78, 'dr. Anna Widyassari', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751742.png', '2022-06-09 05:15:42', '2022-06-09 05:15:42'),
(79, 'dr. Rika Purwaningsih', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.300', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751782.png', '2022-06-09 05:16:22', '2022-06-09 05:16:22'),
(80, 'dr. Yudha Anantha Khaerul Putra', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751817.png', '2022-06-09 05:16:57', '2022-06-09 05:16:57'),
(81, 'dr. Ika Wahyu Adita Rini', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751852.png', '2022-06-09 05:17:32', '2022-06-09 05:17:32'),
(82, 'dr. Jarwoto Roestanajie', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751888.png', '2022-06-09 05:18:08', '2022-06-09 05:18:08'),
(83, 'dr. Ardi Bayu Sutrisno', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751918.png', '2022-06-09 05:18:38', '2022-06-09 05:18:38'),
(84, 'dr. Muhammad Iqbal Fanani', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654751952.png', '2022-06-09 05:19:12', '2022-06-09 05:19:12'),
(85, 'dr. Ricky Roosdiana Dewi', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', NULL, '2022-06-09 05:19:40', '2022-06-09 05:19:40'),
(86, 'dr. Indah Kusuma Wardani', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', NULL, '2022-06-09 05:20:11', '2022-06-09 05:20:11'),
(87, 'dr. Aditya Hudiansyah', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', NULL, '2022-06-09 05:20:34', '2022-06-09 05:20:34'),
(88, 'dr. Erdito Muro Suyono', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', NULL, '2022-06-09 05:20:55', '2022-06-09 05:20:55'),
(89, 'dr. Diastri Nur Suprobo Dewi', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', NULL, '2022-06-09 05:21:23', '2022-06-09 05:21:23'),
(90, 'dr. Lutfir Rahman Taris', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', NULL, '2022-06-09 05:21:49', '2022-06-09 05:21:49'),
(91, 'dr. Ifranus Ade Olga Nirwana Putra IF', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', NULL, '2022-06-09 05:22:17', '2022-06-09 05:22:17'),
(92, 'dr. Azka Darajat', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', NULL, '2022-06-09 05:22:41', '2022-06-09 05:22:41'),
(93, 'dr. Soraya Coraima Zahwa', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654752193.png', '2022-06-09 05:23:13', '2022-06-09 05:23:13'),
(94, 'dr. Mudzakkir Taufiqur Rahman', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654752233.png', '2022-06-09 05:23:53', '2022-06-09 05:23:53'),
(95, 'dr. Ema Fawziyah Ulfah', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654752260.png', '2022-06-09 05:24:20', '2022-06-09 05:24:20'),
(96, 'dr. Jeffri Chrisdiawan', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654752295.png', '2022-06-09 05:24:55', '2022-06-09 05:24:55'),
(97, 'dr. Gilang Vigorous Akbar Eka Candy', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '/img/doctor/avatar/1654752340.png', '2022-06-09 05:25:40', '2022-06-09 05:25:40'),
(98, 'dr. Rizqi Alief Prabowo', 28, 'Kelompok staff medik dokter umum dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654752389.png', '2022-06-09 05:26:29', '2022-06-09 05:26:29'),
(99, 'drg. Weni Widiyasari', 29, 'Kelompok staff medik dokter gigi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654752469.png', '2022-06-09 05:27:49', '2022-06-09 05:28:03'),
(100, 'drg. Shinta Widjaja', 29, 'Kelompok staff medik dokter gigi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654752517.png', '2022-06-09 05:28:37', '2022-06-09 05:28:37'),
(101, 'drg. Dina Swasti Prihatini', 29, 'Kelompok staff medik dokter gigi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654752559.png', '2022-06-09 05:29:19', '2022-06-09 05:29:19'),
(102, 'drg. Adriyeni Hersidiq Adi', 29, 'Kelompok staff medik dokter gigi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654752597.png', '2022-06-09 05:29:57', '2022-06-09 05:29:57'),
(103, 'drg. Mendra Santoso', 29, 'Kelompok staff medik dokter gigi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654752650.png', '2022-06-09 05:30:50', '2022-06-09 05:30:50'),
(104, 'drg. Pradiksa Adhiatsa,Sp.BM', 30, 'Kelompok staff medik bedah mulut dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654752715.png', '2022-06-09 05:31:55', '2022-06-09 05:31:55'),
(105, 'drg. Septyono Hariawan,Sp.Perio', 31, 'Kelompok staff medik periodonsia dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654752771.png', '2022-06-09 05:32:51', '2022-06-09 05:32:51'),
(106, 'drg. Dewi Ratih Djajaningsih,Sp.KG', 32, 'Kelompok staff medik konservasi gigi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654752821.png', '2022-06-09 05:33:41', '2022-06-09 05:33:41'),
(107, 'drg. Mieke Sp. KG', 32, 'Kelompok staff medik konservasi gigi dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', NULL, '2022-06-09 05:34:14', '2022-06-09 05:34:14'),
(108, 'drg. Etty Asriani,Sp.KGA', 33, 'Kelompok staff medik kesehatan gigi anak dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654752905.png', '2022-06-09 05:35:05', '2022-06-09 05:35:05'),
(109, 'drg. Chandra Ardidarma,Sp.Ort', 34, 'Kelompok staff medik ortodonsia dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654752959.png', '2022-06-09 05:35:59', '2022-06-09 05:35:59'),
(110, 'dr. M. Afiful Jauhani, MH, Sp.FM', 35, 'Kelompok staff medik forensik dan medikolegal dengan pengalaman kerja selama 3 tahun.', '-', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '06.00-13.30', '-', '/img/doctor/avatar/1654753019.png', '2022-06-09 05:36:59', '2022-06-09 05:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(50) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `title`, `price`, `description`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Kamar VIP', 400000, 'Bed fungsional 3 krank, 1 kamar 1 tempat tidur, tempat tidur penunggu, 1 set sofa, kamar mandi dengan water heater, TV LED 32 inch, kulkas, lemari, meja makan portable, telepon internal', '/img/facility/image/1655178711Bed fungsional 3 krank, 1 kamar 1 tempat tidur, tempat tidur penunggu, 1 set sofa, kamar mandi dengan water heater, TV LED 32 inch, kulkas, lemari, meja makan portable, telepon internal.PNG', '2022-01-24 04:26:31', '2022-06-13 20:51:51'),
(4, 'Kamar VIP', 300000, 'Bed fungsional 2 krank, 1 kamar 1 tempat tidur, tempat tidur penunggu, 1 set sofa, kamar mandi dengan water heater, TV LED 32 inch, kulkas, lemari, meja makan portable, telepon internal', '/img/facility/image/1655178697Bed fungsional 2 krank, 1 kamar 1 tempat tidur, tempat tidur penunggu, 1 set sofa, kamar mandi dengan water heater, TV LED 32 inch, kulkas, lemari, meja makan portable, telepon internal.PNG', '2022-01-24 04:58:21', '2022-06-13 20:51:37'),
(5, 'Kamar Kelas 1', 150000, 'Bed fungsional 2 krank, 1 kamar 2 tempat tidur, tempat tidur penunggu, 1 set sofa, kamar mandi dengan water heater, TV LED 32 inch, kulkas, lemari, meja makan portable, telepon internal', '/img/facility/image/1655178771Bed fungsional 2 krank, 1 kamar 2 tempat tidur, tempat tidur penunggu, 1 set sofa, kamar mandi dengan water heater, TV LED 32 inch, kulkas, lemari, meja makan portable, telepon internal.PNG', '2022-06-10 02:40:50', '2022-06-13 20:52:51'),
(6, 'Kamar Kelas 2', 125000, 'Bed fungsional 2 krank, ruangan berbentuk sal (maksimal 6 TT), tempat tidur penunggu, 1 set sofa, kamar mandi dengan water heater, TV LED 32 inch, kulkas, lemari, meja makan portable, telepon internal', '/img/facility/image/1655178837Bed fungsional 2 krank, ruangan berbentuk sal (maksimal 6 TT), tempat tidur penunggu, 1 set sofa, kamar mandi dengan water heater, TV LED 32 inch, kulkas, lemari, meja makan portable, telepon internal.PNG', '2022-06-10 05:44:16', '2022-06-13 20:53:57');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(8, 'Test Pertanyaan', 'Test Answer', '2022-01-24 04:29:18', '2022-01-24 04:29:18'),
(9, 'Cara menggunakan BPJS untuk rawat inap?', 'Fotokopi kartu keluarga Fotokopi KTP Kartu BPJS kesehatan asli dan fotokopi Surat rujukan yang dibuat oleh dokter faskes tingkat 1 Surat Eligibilitas Peserta (SEP) Kartu berobat', '2022-01-24 04:36:05', '2022-01-24 04:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `description`, `image`, `created_at`, `updated_at`) VALUES
(4, 'PATOLOGI KLINIK', '/img/gallery/image/1655179126PATOLOGI KLINIK.png', '2022-01-24 04:25:41', '2022-06-13 20:58:46'),
(5, 'LABORATORIUM PATOLOGI ANATOMI', '/img/gallery/image/1655179159LABORATORIUM PATOLOGI ANATOMI.png', '2022-06-08 07:05:56', '2022-06-13 20:59:19'),
(6, 'MRI (MAGNETIC RESONANCE IMAGING)', '/img/gallery/image/1655179177MRI (MAGNETIC RESONANCE IMAGING).png', '2022-06-08 07:13:45', '2022-06-13 20:59:37'),
(7, 'OPMI PENTERO', '/img/gallery/image/1655179198OPMI PENTERO.png', '2022-06-08 07:14:32', '2022-06-13 20:59:58'),
(8, 'PERINATOLOGI', '/img/gallery/image/1655179229PERINATOLOGI.png', '2022-06-08 07:17:08', '2022-06-13 21:00:29'),
(9, 'POLI GIGI', '/img/gallery/image/1655179245POLI GIGI.png', '2022-06-08 07:19:58', '2022-06-13 21:00:45'),
(10, 'RUANG RAWAT INAP ANAK', '/img/gallery/image/1655179264RUANG RAWAT INAP ANAK.png', '2022-06-08 07:20:27', '2022-06-13 21:01:04'),
(11, 'RUANG RAWAT INAP KELAS II', '/img/gallery/image/1655179287RUANG RAWAT INAP KELAS II.PNG', '2022-06-08 07:20:49', '2022-06-13 21:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `name`, `description`, `location`, `email`, `number_phone`, `address`, `bg_image`, `created_at`, `updated_at`) VALUES
(2, 'Rumah Sakit Soebandi', 'Jember Regency', '', 'sirms-soebandi@gmail.com', '08123123123123', 'Jember Regency', NULL, NULL, NULL);

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_25_173700_create_videos_table', 1),
(6, '2021_11_26_123053_create_facilities_table', 1),
(7, '2021_11_26_123201_create_mitras_table', 1),
(8, '2021_11_26_123219_create_specialities_table', 1),
(9, '2021_11_26_123250_create_galleries_table', 1),
(10, '2021_11_26_123425_create_patient_rights_table', 1),
(11, '2021_11_26_123502_create_patient_duties_table', 1),
(12, '2021_11_26_123518_create_doctors_table', 1),
(13, '2021_11_26_123910_create_categories_table', 1),
(14, '2021_11_26_125648_create_posts_table', 1),
(15, '2021_12_24_051504_create_faqs_table', 2),
(16, '2022_01_08_112426_create_information_table', 3),
(17, '2022_01_08_112441_create_testimonials_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mitras`
--

CREATE TABLE `mitras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mitras`
--

INSERT INTO `mitras` (`id`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Palang Merah Indonesia (PMI)', '/img/mitra/image/1655179303Palang Merah Indonesia (PMI).png', '2022-01-24 04:28:15', '2022-06-13 21:01:43'),
(3, 'Fakultas Ilmu Kesehatan Universitas Muhammadiyah Jember', '/img/mitra/image/1655179321Fakultas Ilmu Kesehatan Universitas Muhammadiyah Jember.png', '2022-06-08 07:31:12', '2022-06-13 21:02:01'),
(4, 'Fakultas Kedokteran Universitas Jember', '/img/mitra/image/1655179387Fakultas Kedokteran Universitas Jember.jpg', '2022-06-08 07:32:22', '2022-06-13 21:03:07'),
(5, 'Fakultas Kedokteran Universitas Wijaya Kusuma Surabaya', '/img/mitra/image/1655179404Fakultas Kedokteran Universitas Wijaya Kusuma Surabaya.png', '2022-06-08 07:33:04', '2022-06-13 21:03:24'),
(6, 'Akademi Kebidanan Jember', '/img/mitra/image/1655179456Akademi Kebidanan Jember.png', '2022-06-08 07:33:43', '2022-06-13 21:04:16'),
(7, 'Poltekkes Kebidanan Malang', '/img/mitra/image/1655179541Poltekkes Kebidanan Malang.png', '2022-06-08 08:15:35', '2022-06-13 21:05:41'),
(8, 'Akademi Kesehatan Hafsawaty Probolinggo', '/img/mitra/image/1654676187Akademi Kesehatan Hafsawaty.png', '2022-06-08 08:16:27', '2022-06-08 08:20:43'),
(9, 'Akademi Kesehatan Rustida Banyuwangi', '/img/mitra/image/1654676366Akademi Kesehatan Rustida.png', '2022-06-08 08:19:26', '2022-06-08 08:20:55'),
(10, 'Fakultas Farmasi Universitas Setia Budi', '/img/mitra/image/1654676748Fakultas Farmasi Universitas Setia Budi.gif', '2022-06-08 08:25:48', '2022-06-08 08:25:48'),
(11, 'Fakultas Farmasi Universitas Islam Indonesia Yogyakarta', '/img/mitra/image/1654676904Fakultas Farmasi Universitas Islam Indonesia Yogyakarta.png', '2022-06-08 08:28:24', '2022-06-08 08:28:24'),
(12, 'Akademi Farmasi Jember', '/img/mitra/image/1654677068Akademi Farmasi Jember.png', '2022-06-08 08:31:08', '2022-06-08 08:31:08'),
(13, 'Politeknik Kesehatan Surabaya', '/img/mitra/image/1654677110Politeknik Kesehatan Surabaya.webp', '2022-06-08 08:31:50', '2022-06-08 08:31:50'),
(14, 'Fakultas Keperawatan Universitas Jember', '/img/mitra/image/1654677438Fakultas Keperawatan Universitas Jember.jpg', '2022-06-08 08:37:18', '2022-06-08 08:37:18');

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
-- Table structure for table `patient_duties`
--

CREATE TABLE `patient_duties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_duty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_duties`
--

INSERT INTO `patient_duties` (`id`, `patient_duty`, `created_at`, `updated_at`) VALUES
(2, 'Menaati seluruh peraturan yang ada di rumah sakit', '2022-01-24 04:30:10', '2022-01-24 04:30:10'),
(3, 'Tidak melakukan pengambilan gambar', '2022-06-08 08:40:40', '2022-06-08 08:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `patient_rights`
--

CREATE TABLE `patient_rights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_right` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_rights`
--

INSERT INTO `patient_rights` (`id`, `patient_right`, `created_at`, `updated_at`) VALUES
(1, 'Tesf Data', '2022-01-24 04:28:58', '2022-01-24 04:28:58'),
(2, 'Mendapat pelayanan tanpa memandang ras', '2022-06-08 08:41:39', '2022-06-08 08:41:39');

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(5, 3, 'SEMINAR UNTUK MASYARAKAT TENTANG KEWASPADAAN HEPATITIS AKUT PADA ANAK YANG BELUM DIKETAHUI PENYEBABNYA DAN APA YANG PERLU DIWASPADAI', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\"><span style=\"font-size: 14px; letter-spacing: 0.2px;\">Pada hari Kamis tanggal 2 Juni 2022 jam 08.00 WIB, RSD dr. Soebandi menyelenggarakan seminar untuk masyarakat tentang kewaspadaan hepatitis akut pada anak yang belum diketahui penyebabnya dan apa yang perlu diwaspadai. Seminar ini diikuti lebih dari 525 peserta dari berbagai komponen masyarakat, mulai dari kader kesehatan, kepala puskesmas, kepala desa, lurah, camat, kepala puskesmas, kepala perangkat daerah dan rumah sakit daerah di Kabupaten Jember yang dilaksanakan secara daring dan diharapkan bisa memberikan pengetahuan yang didapatkan dalam seminar ini kepada masyarakat lebih luas lagi.</span></span></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\"><span style=\"font-size: 14px; letter-spacing: 0.2px;\">&nbsp;</span></span></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\"><span style=\"font-size: 14px; letter-spacing: 0.2px;\">Narasumber dalam seminar ini adalah dr. Benedictus Gebyar Tri Baskoro, Sp.A. Beliau menyampaikan bahwa cara terbaik untuk mencegah penyakit hepatitis akut pada anak yang belum diketahui penyebabnya ini adalah membiasakan pola hidup bersih dan sehat dalam kehidupan sehari-hari, seperti jajanan yang kurang bersih dan kesediaan masyarakat untuk diberikan imunisasi hepatitis pada anak. Sekolah dan orang tua diharapkan dapat memberikan support dalam mewaspadai hepatitis akut pada anak ini dengan pola hidup bersih dan sehat, dan segera membawa anaknya yang sakit ke puskesmas terdekat untuk mendapatkan penanganan yang tepat dari dokter. Mengingat belakangan ini penyakit tersebut tengah menjadi sorotan publik lantaran jumlahnya yang terus bertambah. Organisasi Kesehatan Dunia (WHO) mencatat sekitar lebih dari 200 anak terinfeksi hepatitis akut. Bahkan, sudah ditetapkan sebagai Kejadian Luar Biasa (KLB) dan menyebar di sejumlah negara termasuk Indonesia. Adapun sejumlah gejala yang menjadi ciri-ciri hepatitis akut pada anak, yaitu gejala kuning, sakit perut, muntah-muntah, diare mendadak, buang air kecil berwarna teh tua, buang air besar berwarna pucat, kejang dan penurunan kesadaran</span></span></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\"><span style=\"font-size: 14px; letter-spacing: 0.2px;\">&nbsp;</span></span></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #000; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; letter-spacing: 0.2px;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\"><span style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\"><span style=\"font-size: 14px; letter-spacing: 0.2px;\">Acara seminar ini dibuka secara langsung oleh Bapak Bupati Jember. Beliau menyampaikan bahwa acara seperti ini sangat bermanfaat bagi masyarakat dan meminta kepada semua pihak, terutama Dinas Pendidikan dan Dinas Kesehatan untuk melakukan kewaspadaan dan tindakan preventif agar hepatitis akut&nbsp; ini tidak menjadi seperti pandemi Covid-19, apalagi WHO&nbsp; telah memberikan peringatan kepada seluruh dunia untuk mewaspadainya.&nbsp; Bupati Jember, Bapak Ir. Hendy Siswanto ST, IPU juga menyampaikan kepada seluruh masyarakat untuk segera membawa anaknya yang sakit ke Puskesmas terdekat untuk mendapatkan penanganan segera, apalagi sekarang penanganan kelas 3 telah digratiskan. Bapak Bupati menyampaikan trimakasih kepada Direktur RSD dr. Soebandi yaitu dr. Hendro Soelistojono, M.M, M.Kes yang telah menunjukkan komitmennya dalam mewujudkan Jember Sehat dengan berbagai program yang terwujud dalam berbagai kegiatan yang telah dilaksanakan di RSD dr. Soebandi Jember.</span></span></p>', '/img/post/image/1655179636.jpg', '2022-01-24 04:30:33', '2022-06-13 21:33:43'),
(6, 3, 'CEGAH BUNUH DIRI DENGAN BICARA', '<p>Pada tanggal 10 Oktober 2019 merupakan hari yang telah ditetapkan oleh WHO sebagai hari kesehatan jiwa sedunia/ world mental day. Tema peringatan hari kesehatan jiwa tahun ini adalah &ldquo;Mental Health Promotion and Suicide Prevention atau Promosi Kesehatan Jiwa dan Pencegahan Bunuh Diri&rsquo;. Berdasarkan data dari organisasi kesehatan dunia/ WHO, pencegahan bunuh diri menjadi fokus utama pada tahun ini karena hampir 800.000 orang meninggal karena bunuh diri setiap tahunnya. Berarti bahwa satu orang meninggal setiap 40 detik. Selain itu, bunuh diri menjadi penyebab kematian nomor dua pada anak usia 15 -29 tahun.</p>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp;Orang yang mengalami kejadian melukai diri sendiri atau berencana untuk bunuh diri merupakan gejala tekanan emosi yang sangat parah. dr. Justina Evy, Sp. KJ selaku pakar kesehatan jiwa dari RSD dr. Soebandi Jember mengatakan, &ldquo;Penting bagi kita untuk mendeteksi adanya gangguan mental dimulai dari diri kita sendiri. Jika anda merasa kehilangan harapan, sering berpikir negatif, tidak punya tujuan hidup, merasa diri ini tidak bernilai, merasa sendirian bahkan saat bersama teman dan keluarga, bahkan merasa kematian adalah suatu jalan keluar, maka perlua anda ingat bahwa anda tidak sendiri. Segeralah minta bantuan, karena bantuan selalu tersedia untuk anda.&rdquo;&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp;Yang dapat dilakukan ketika seseorang mulai merasakan seperti hal tersebut diatas, sebaiknya berbicaralah kepada keluarga, teman, ataupun orang yang dipercaya mengenai apa yang dirasakan. Berbicara dengan tokoh agama juga sangat baik untuk dilakukan. Selain itu yang tidak kalah penting adalah berbicara kepada professional di bidang kesehatan, misalnya dokter ahli kejiwaan.</p>\n<p>Sebagai manusia kita pasti pernah merasakan stress. Namun penting bagi kita untuk dapat mengelolanya dengan baik, yaitu dengan mengidentifikasi dan menuliskan faktor penyebab stres yang bias dan tidak bisa dikontrol, tentukan solusinya, dan jika stressor tidak dapat dikendalikan, maka kita dapat mengontrol bagaimana kita harus bereaksi terhadap kejadian tersebut.&nbsp;</p>\n<p>&ldquo;Jangan khawatir, ayangilah diri anda, dan mintalah bantuan, karena kita tidak harus melakukan segalanya sendirian. Kunci yang paling penting untuk mencegah bunuh diri adalah dengan tetap terhubung dan berkomunikasi dengan orang lain. Dukungan dari keluarga, teman, masyarakat, dan pemerintah sangat diperlukan untuk mencegah terjadinya bunuh diri.&rdquo; ucap dr. Justina Evy, Sp. KJ.</p>\n<p>Pada tanggal 10 Oktober 2019 merupakan hari yang telah ditetapkan oleh WHO sebagai hari kesehatan jiwa sedunia/ world mental day. Tema peringatan hari kesehatan jiwa tahun ini adalah &ldquo;Mental Health Promotion and Suicide Prevention atau Promosi Kesehatan Jiwa dan Pencegahan Bunuh Diri&rsquo;. Berdasarkan data dari organisasi kesehatan dunia/ WHO, pencegahan bunuh diri menjadi fokus utama pada tahun ini karena hampir 800.000 orang meninggal karena bunuh diri setiap tahunnya. Berarti bahwa satu orang meninggal setiap 40 detik. Selain itu, bunuh diri menjadi penyebab kematian nomor dua pada anak usia 15 -29 tahun.</p>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp;Orang yang mengalami kejadian melukai diri sendiri atau berencana untuk bunuh diri merupakan gejala tekanan emosi yang sangat parah. dr. Justina Evy, Sp. KJ selaku pakar kesehatan jiwa dari RSD dr. Soebandi Jember mengatakan, &ldquo;Penting bagi kita untuk mendeteksi adanya gangguan mental dimulai dari diri kita sendiri. Jika anda merasa kehilangan harapan, sering berpikir negatif, tidak punya tujuan hidup, merasa diri ini tidak bernilai, merasa sendirian bahkan saat bersama teman dan keluarga, bahkan merasa kematian adalah suatu jalan keluar, maka perlua anda ingat bahwa anda tidak sendiri. Segeralah minta bantuan, karena bantuan selalu tersedia untuk anda.&rdquo;&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp;Yang dapat dilakukan ketika seseorang mulai merasakan seperti hal tersebut diatas, sebaiknya berbicaralah kepada keluarga, teman, ataupun orang yang dipercaya mengenai apa yang dirasakan. Berbicara dengan tokoh agama juga sangat baik untuk dilakukan. Selain itu yang tidak kalah penting adalah berbicara kepada professional di bidang kesehatan, misalnya dokter ahli kejiwaan.</p>\n<p>Sebagai manusia kita pasti pernah merasakan stress. Namun penting bagi kita untuk dapat mengelolanya dengan baik, yaitu dengan mengidentifikasi dan menuliskan faktor penyebab stres yang bias dan tidak bisa dikontrol, tentukan solusinya, dan jika stressor tidak dapat dikendalikan, maka kita dapat mengontrol bagaimana kita harus bereaksi terhadap kejadian tersebut.&nbsp;</p>\n<p>&ldquo;Jangan khawatir, ayangilah diri anda, dan mintalah bantuan, karena kita tidak harus melakukan segalanya sendirian. Kunci yang paling penting untuk mencegah bunuh diri adalah dengan tetap terhubung dan berkomunikasi dengan orang lain. Dukungan dari keluarga, teman, masyarakat, dan pemerintah sangat diperlukan untuk mencegah terjadinya bunuh diri.&rdquo; ucap dr. Justina Evy, Sp. KJ.</p>', '/img/post/image/1655179687.png', '2022-06-10 04:59:11', '2022-06-13 21:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `open` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `open`, `time`, `image`, `created_at`, `updated_at`) VALUES
(4, 'Pelayanan Loket', 'Senin - Sabtu', '07.00-13.00', '/img/service/image/1655178902Pelayanan Loket.jpg', '2022-06-11 04:07:26', '2022-06-13 20:57:19'),
(5, 'Laboratorium', 'Senin - Jum\'at', '07.00-13.00', '/img/service/image/1655178938Laboratorium.png', '2022-06-13 20:55:38', '2022-06-13 20:55:38'),
(6, 'Poli Penyakit Dalam', 'Senin - Jum\'at', '07.00-13.00', '/img/service/image/1655178976Poli Penyakit Dalam.png', '2022-06-13 20:56:16', '2022-06-13 20:56:16'),
(7, 'Poli Ortopedi', 'Senin - Jum\'at', '07.00-13.00', '/img/service/image/1655179016Poli Ortopedi.png', '2022-06-13 20:56:56', '2022-06-13 20:56:56');

-- --------------------------------------------------------

--
-- Table structure for table `specialities`
--

CREATE TABLE `specialities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `speciality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specialities`
--

INSERT INTO `specialities` (`id`, `speciality`, `description`, `created_at`, `updated_at`) VALUES
(5, 'Paru - paru', 'Dokter spesialis paru adalah seorang dokter ahli yang menangani penyakit dan gangguan pada paru-paru dan saluran pernapasan bagian bawah.', '2022-01-24 04:24:47', '2022-01-24 04:24:47'),
(6, 'Penyakit Dalam', 'Dokter spesialis penyakit dalam adalah dokter spesialis organ dalam, seperti jantung, ginjal, hati dan paru-paru. Dokter ini membantu menangani penyakit yang menyerang organ-organ tersebut dan memahami bagaimana organ-orang tersebut berinteraksi.', '2022-06-08 05:30:15', '2022-06-08 05:30:15'),
(7, 'Obgyn', 'Dokter spesialis Obstetri dan Ginekologi atau dikenal juga Obgyn serta dokter kandungan adalah seorang dokter yang mengkhususkan diri dalam kesehatan reproduksi wanita, termasuk menstruasi, kehamilan, persalinan, dan menopause.', '2022-06-08 05:30:58', '2022-06-08 05:30:58'),
(8, 'Anak', 'Dokter spesialis anak atau ahli pediatri adalah dokter yang memiliki fokus pada kesehatan fisik, mental, dan emosional anak usia 0–18 tahun.', '2022-06-08 05:33:39', '2022-06-08 05:33:39'),
(9, 'Bedah', 'Dokter bedah adalah dokter spesialis yang mengobati penyakit, cedera, atau kondisi gawat darurat pada tubuh melalui metode bedah (operatif) dan obat-obatan.', '2022-06-08 05:35:28', '2022-06-08 05:35:28'),
(10, 'Radiologi', 'Spesialis radiologi adalah dokter spesialis yang fokus pada pemeriksaan radiologi, dalam rangka mendeteksi, menentukan diagnosis, dan mengobati suatu penyakit menggunakan prosedur pencitraan.', '2022-06-08 05:36:18', '2022-06-08 05:36:18'),
(11, 'Anestesi', 'Dokter anestesi adalah dokter spesialis yang bertanggung jawab dalam proses pembiusan sebelum pasien menjalani operasi atau prosedur medis lainnya. Dokter spesialis ini juga memiliki keahlian dalam manajemen penanganan nyeri dan perawatan pasien.', '2022-06-08 05:36:50', '2022-06-08 05:36:50'),
(12, 'Rehabilitasi Medik', 'Dokter rehabilitasi medis (Sp.RM) adalah dokter spesialis yang berperan membantu memulihkan fungsi tubuh pasien yang mengalami gangguan atau kecacatan.', '2022-06-08 05:37:36', '2022-06-08 05:37:36'),
(13, 'Patologi Klinik', 'Dokter patologi klinik fokus pada pemeriksaan sampel cairan tubuh untuk menentukan kadar kimiawi tertentu sehingga dapat mendiagnosis, melakukan pemulihan, dan pencegahan berbagai jenis penyakit.', '2022-06-08 05:47:24', '2022-06-08 05:47:24'),
(14, 'Patologi Anatomi', 'Spesialis patologi anatomi sering kali diminta untuk mengidentifikasi apakah terdapat kelainan pada jaringan atau sel tubuh pasien, termasuk mendiagnosis tumor atau kanker.', '2022-06-08 05:48:20', '2022-06-08 05:48:20'),
(15, 'THT', 'Dokter spesialis THT adalah dokter yang memiliki keahlian khusus dalam mengobati penyakit yang berkaitan dengan telinga, hidung, dan tenggorokan. Selain itu, juga bertugas untuk mengatasi sejumlah penyakit yang terjadi di kepala dan leher.', '2022-06-08 05:49:46', '2022-06-08 05:49:46'),
(16, 'Kulit dan Kelamin', 'Dokter spesialis kulit dan kelamin (SpKK) merupakan dokter yang fokus menangani beragam masalah kesehatan kulit dan kelamin, baik pada pria maupun wanita.', '2022-06-08 05:50:41', '2022-06-08 05:50:41'),
(17, 'Ortopedi', 'Dokter ortopedi adalah dokter yang memiliki keterampilan dalam menangani cedera akibat olahraga ataupun kecelakaan,  mendiagnosis dan memberikan pengobatan pada penyakit yang berkaitan dengan tulang, sendi, tendon, otot, dan saraf.', '2022-06-08 05:51:35', '2022-06-08 05:51:35'),
(18, 'Jantung dan Pembuluh Darah', 'Dokter spesialis jantung dan pembuluh darah adalah dokter yang fokus dalam mendiagnosis dan menangani masalah penyakit yang berkaitan dengan jantung dan pembuluh darah atau kardiovaskular.', '2022-06-08 05:52:11', '2022-06-08 05:52:11'),
(19, 'Paru dan Asma', 'Spesialis paru dan asma adalah dokter yang berfokus pada penanganan penyakit yang berkaitan dengan paru-paru, saluran pernafasan bagian bawah dan asma.', '2022-06-08 05:54:28', '2022-06-08 05:54:28'),
(20, 'Mata', 'Dokter spesialis mata memiliki keahlian khusus dalam mendiagnosis, mencegah, dan mengobati penyakit mata serta gangguan penglihatan.', '2022-06-08 05:55:12', '2022-06-08 05:55:12'),
(21, 'Syaraf', 'Dokter saraf atau neurologis adalah dokter spesialis yang mendiagnosis dan mengobati masalah yang berkaitan dengan otak dan sistem saraf.', '2022-06-08 05:55:29', '2022-06-08 05:55:29'),
(22, 'Bedah Syaraf', 'Neurosurgeon, memiliki keahlian untuk melakukan perawatan sistem saraf, termasuk otak, sumsum tulang belakang, dan seluruh saraf yang memanjang dari sumsum tulang belakang.', '2022-06-08 05:56:07', '2022-06-08 05:56:07'),
(23, 'Urologi', 'Dokter urologi adalah dokter spesialis yang menangani masalah kesehatan pada sistem saluran kemih, termasuk ginjal, kandung kemih, kelenjar adrenal, dan saluran kemih.', '2022-06-08 05:56:35', '2022-06-08 05:56:35'),
(24, 'Kesehatan Jiwa', 'Psikiater adalah seorang dokter spesialis yang mendalami ilmu kesehatan jiwa dan perilaku atau psikiatri.', '2022-06-08 05:57:43', '2022-06-08 05:57:43'),
(25, 'Bedah Thorax Kardiovaskuler', 'Dokter bedah toraks dan kardiovaskular adalah dokter spesialis yang menangani penyakit di organ dalam rongga dada, terutama jantung dan paru-paru.', '2022-06-08 05:58:50', '2022-06-08 05:58:50'),
(26, 'Bedah Plastik', 'Bedah plastik merupakan cabang ilmu kedokteran yang berfokus pada perbaikan jaringan tubuh atau kulit yang rusak (cacat) akibat kondisi tertentu, misalnya luka bakar, kecelakaan, tumor, dan penyakit bawaan sejak lahir.', '2022-06-08 06:00:02', '2022-06-08 06:00:02'),
(27, 'Bedah Anak', 'Dokter bedah anak adalah dokter spesialis yang fokus melakukan perawatan dan tindakan medis berupa bedah khusus pada pasien anak-anak, meliputi janin, bayi (cukup bulan maupun prematur), anak-anak, hingga remaja berusia tidak lebih dari 18 tahun.', '2022-06-08 06:01:02', '2022-06-08 06:01:02'),
(28, 'Dokter Umum', 'Dokter umum adalah seorang dokter yang berfokus untuk menangani gejala dan penyakit pada pasien secara umum.', '2022-06-08 06:02:00', '2022-06-08 06:02:00'),
(29, 'Dokter Gigi', 'Dokter gigi adalah seorang dokter yang khusus mempelajari ilmu kesehatan dan penyakit pada gigi dan mulut.', '2022-06-08 06:03:10', '2022-06-08 06:03:10'),
(30, 'Bedah Mulut', 'Spesialis bedah mulut (Sp.BM) Menangani masalah gigi dan mulut yang harus ditangani dengan cara pembedahan, seperti operasi gigi bungsu dan bibir sumbing.', '2022-06-08 06:03:37', '2022-06-08 06:03:37'),
(31, 'Periodonsia', 'Spesialis periodonsia (Sp.Perio) Mengatasi gangguan pada gigi dan jaringan penyangga gigi, seperti gingivitis (radang gusi) serta periodontitis (penyakit gusi dan tulang rahang) berat dengan komplikasi.', '2022-06-08 06:03:59', '2022-06-08 06:03:59'),
(32, 'Konservasi Gigi', 'Spesialis konservasi gigi (Sp.KG) Menangani restorasi gigi untuk mengembalikan fungsi gigi maupun untuk tujuan estetika. Beberapa tindakan yang dapat dilakukan yaitu penambalan gigi, veneer, perawatan atau pembedahan akar gigi, dan bleaching.', '2022-06-08 06:04:26', '2022-06-08 06:04:26'),
(33, 'Kesehatan Gigi Anak', 'Spesialis kedokteran gigi anak (SpKGA) Menangani masalah gigi dan mulut serta memberikan perawatan gigi pada anak-anak, mulai dari usia 1 tahun hingga menjelang remaja.', '2022-06-08 06:05:35', '2022-06-08 06:05:35'),
(34, 'Ortodonsia', 'Spesialis orthodonti (Sp.Ort) Menangani masalah pemerataan gigi agar fungsi kunyah, bicara, maupun secara estetika menjadi lebih baik.', '2022-06-08 06:06:31', '2022-06-08 06:06:31'),
(35, 'Forensik dan Medikolegal', 'Spesialis forensik dan medikolegal adalah dokter spesialis yang mengelola barang bukti medis berupa benda-benda biologis manusia untuk dijadikan alat bukti hukum, termasuk melacak bagian-bagian tubuh untuk kepentingan identifikasi.', '2022-06-08 06:08:58', '2022-06-08 06:08:58');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'User',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'zzvxzcvx!zcvzxcvZXC', 'sdfasdf@asdfsadf.com', NULL, '$2y$10$Yb9jqyqVPqu6fetjN9eX/.z2B8usuiWjK8sek/S4EQ6fLuUOckFpu', 'User', NULL, '/img/user/avatar/1639445716zzvxzcvx!zcvzxcvZXC.jpg', '2021-12-07 18:13:14', '2021-12-13 18:35:16'),
(2, 'Admin Lukman', 'admin@admin.com', NULL, '$2y$10$VUWX3oCoD.SAq5QHD.NK7eL87cAEaQIV6LEpLwQrEzdUS/ngIYrcq', 'User', NULL, NULL, '2021-12-22 06:54:02', '2021-12-22 06:54:02'),
(4, 'Admin', 'admin_@admin.com', NULL, '$2y$10$VUWX3oCoD.SAq5QHD.NK7eL87cAEaQIV6LEpLwQrEzdUS/ngIYrcq', 'Admin', NULL, NULL, '2021-12-22 06:54:02', '2021-12-22 06:54:02'),
(5, 'Wanda Arvaniyan', 'wanda@admin.com', NULL, '$2y$10$VdYkEzevzobzhK3J/c0Sl.TYF41K2SdDQB5YGy/fu6VOFGrqp8TZC', 'User', NULL, NULL, '2022-01-24 12:24:20', '2022-01-24 12:24:20'),
(6, 'tester', 'tester@gmail.com', NULL, '$2y$10$AqJwSB8SyamvIrSKTMRYluk24Wpn3kzi2wD1Ru5fN4pjsuNUX/Qz2', 'User', NULL, NULL, '2022-05-31 14:18:12', '2022-05-31 14:18:12'),
(7, 'Lukman Afandi', 'lukmanafandi10@gmail.com', NULL, '$2y$10$/G96dJTRgWv4DNITZSuRJ.RQceyxWVSDk90ZpoJlB3AXeObr/ynUq', 'User', NULL, 'asdfasdfasdfasdfasdfsadfasdf.jpg', '2022-06-09 08:54:11', '2022-06-09 08:54:11'),
(9, 'Lukman Afandi', 'lukmanafandi@gmail.com', NULL, '$2y$10$7WVwTCDAtyLiirvdLlgRCO/tupIskZSfRH7Oq2ToOogwKh4LA5UZ2', 'User', NULL, 'asdfasdfasdfasdfasdfsadfasdf.jpg', '2022-06-09 08:54:51', '2022-06-09 08:54:51'),
(11, 'Lukman Afandi', 'lukmanafandi12@gmail.com', NULL, '$2y$10$UirzoybV1hB.DRb6QjQaWebjzXWc12FBfsrqiQZBvrDUaguNfIoz2', 'User', NULL, 'asdfasdfasdfasdfasdfsadfasdf.jpg', '2022-06-09 08:55:36', '2022-06-09 08:55:36'),
(13, 'Lukman Afandi', 'lukmanafandi13@gmail.com', NULL, '$2y$10$Hj3SxsuJiOaELlj52nzcbeYJJ4qgwS8gm2cnO5qpWxsZVza3IUSu6', 'User', NULL, 'asdfasdfasdfasdfasdfsadfasdf.jpg', '2022-06-09 08:56:05', '2022-06-09 08:56:05'),
(14, 'Lukman Afandi', 'lukmanafandi99@gmail.com', NULL, '$2y$10$vcvBoz361uePDVKwVFY.EOvSno3FU05/ajMKkN7bw2oJM81jWUOu.', 'User', NULL, NULL, '2022-06-12 02:48:20', '2022-06-12 02:48:20'),
(15, 'Test Apilikasi', 'test@aplikasi.com', NULL, '$2y$10$2syh1gi88nEICdX6xYCrJOnvQMCNMaMAxLGnGi2PScrgR84zYIR8K', 'User', NULL, NULL, '2022-06-12 07:39:05', '2022-06-12 07:39:05'),
(16, 'Lukman Afandi', 'lukmanafandi98', NULL, '$2y$10$G9DA7QKyFmSOTwMQGa/CvuE1eGUkBIyiOoJL1BPRWUlwjRjJpxEy2', 'User', NULL, NULL, '2022-06-12 07:54:01', '2022-06-12 07:54:01'),
(17, 'Lukman Afandi', 'lukmanafandi100@gmail.com', NULL, '$2y$10$XsAQ3xXlCYQ3Ep9ve2rklutezHCxe/UjIy4YUGgK9KQL03ASvUh3C', 'User', NULL, '/img/user/avatar/1655174754Lukman Afandi.png', '2022-06-13 19:45:00', '2022-06-13 19:45:54'),
(19, 'LUkmanAfandi', 'test@tester.com', NULL, '$2y$10$BL/iqBrXxoM6r23rIUXeVeFeXWgYb.0zx70.VPnbHLIEH5hZD47aO', 'User', NULL, NULL, '2022-06-13 21:30:04', '2022-06-13 21:30:04'),
(20, 'WidyaPutri', 'test@gmail.com', NULL, '$2y$10$2K/lme4UCXOVIOAF6N/mDet9FB1q0ypsy1gLnqzADzStU2kectlTC', 'User', NULL, NULL, '2022-06-13 21:30:57', '2022-06-13 21:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `description`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Pertolongan pertama pada orang pingsan', 'https://youtu.be/khz4m4jyQsU', '2022-01-24 04:31:51', '2022-01-24 04:31:51'),
(2, 'Tutorial 5 Moments Hand Hygiene', 'https://youtu.be/dBwKqO5YroQ', '2022-06-08 08:46:20', '2022-06-08 08:46:20'),
(3, 'Code Red', 'https://youtu.be/0RJOFT1gwyc', '2022-06-08 08:46:45', '2022-06-08 08:46:45'),
(4, 'Tutorial BLS (Basic Life Support)', 'https://youtu.be/bDcaYlWByN0', '2022-06-08 08:47:20', '2022-06-08 08:47:20'),
(5, 'Tutorial Penggunaan Alat Pelindung Diri (APD)', 'https://youtu.be/wlSKiKdCY5k', '2022-06-08 08:48:53', '2022-06-08 08:48:53'),
(6, 'Tutorial Hand Wash', 'https://youtu.be/alZheqvHaeE', '2022-06-08 08:49:11', '2022-06-08 08:49:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctors_speciality_id_foreign` (`speciality_id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mitras`
--
ALTER TABLE `mitras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patient_duties`
--
ALTER TABLE `patient_duties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_rights`
--
ALTER TABLE `patient_rights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialities`
--
ALTER TABLE `specialities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `mitras`
--
ALTER TABLE `mitras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `patient_duties`
--
ALTER TABLE `patient_duties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient_rights`
--
ALTER TABLE `patient_rights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `specialities`
--
ALTER TABLE `specialities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_speciality_id_foreign` FOREIGN KEY (`speciality_id`) REFERENCES `specialities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
