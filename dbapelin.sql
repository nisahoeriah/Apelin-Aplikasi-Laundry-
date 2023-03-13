-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 13, 2023 at 09:11 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbapelin`
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
-- Table structure for table `log_activities`
--

CREATE TABLE `log_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_activities`
--

INSERT INTO `log_activities` (`id`, `user_id`, `ip`, `subject`, `method`, `url`, `agent`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:44:44', '2023-03-13 07:44:44'),
(2, 1, '127.0.0.1', 'Berhasil Membuat Member', 'GET', 'http://localhost:8000/member/create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:45:08', '2023-03-13 07:45:08'),
(3, 1, '127.0.0.1', 'Berhasil Membuat Member', 'GET', 'http://localhost:8000/member/create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:45:49', '2023-03-13 07:45:49'),
(4, 1, '127.0.0.1', 'Berhasil Membuat Member', 'GET', 'http://localhost:8000/member/create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:46:23', '2023-03-13 07:46:23'),
(5, 1, '127.0.0.1', 'Berhasil Mengupdate Member', 'GET', 'http://localhost:8000/member/2/edit', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:47:29', '2023-03-13 07:47:29'),
(6, 1, '127.0.0.1', 'Berhasil Mengupdate Member', 'GET', 'http://localhost:8000/member/2/edit', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:50:25', '2023-03-13 07:50:25'),
(7, 1, '127.0.0.1', 'Berhasil Mengupdate Member', 'GET', 'http://localhost:8000/member/2/edit', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:50:53', '2023-03-13 07:50:53'),
(8, 1, '127.0.0.1', 'Berhasil Membuat Member', 'GET', 'http://localhost:8000/member/create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:51:31', '2023-03-13 07:51:31'),
(9, 1, '127.0.0.1', 'Berhasil Menghapus Member', 'DELETE', 'http://localhost:8000/member/4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:52:27', '2023-03-13 07:52:27'),
(10, 1, '127.0.0.1', 'Berhasil Membuat Paket', 'GET', 'http://localhost:8000/paket/create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:52:37', '2023-03-13 07:52:37'),
(11, 1, '127.0.0.1', 'Berhasil Membuat Paket', 'GET', 'http://localhost:8000/paket/create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:53:01', '2023-03-13 07:53:01'),
(12, 1, '127.0.0.1', 'Berhasil Membuat Paket', 'GET', 'http://localhost:8000/paket/create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:53:19', '2023-03-13 07:53:19'),
(13, 1, '127.0.0.1', 'Berhasil Membuat Paket', 'GET', 'http://localhost:8000/paket/create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:53:52', '2023-03-13 07:53:52'),
(14, 1, '127.0.0.1', 'Berhasil Mengupdate Paket', 'GET', 'http://localhost:8000/paket/4/edit', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:54:31', '2023-03-13 07:54:31'),
(15, 1, '127.0.0.1', 'Berhasil Menghapus Paket', 'DELETE', 'http://localhost:8000/paket/4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:54:49', '2023-03-13 07:54:49'),
(16, 1, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:55:06', '2023-03-13 07:55:06'),
(17, 1, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:55:26', '2023-03-13 07:55:26'),
(18, 1, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:55:32', '2023-03-13 07:55:32'),
(19, 1, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:55:36', '2023-03-13 07:55:36'),
(20, 1, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:55:39', '2023-03-13 07:55:39'),
(21, 1, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:55:52', '2023-03-13 07:55:52'),
(22, 1, '127.0.0.1', 'Berhasil Mengupdate Pembayaran', 'PUT', 'http://localhost:8000/transaksi/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:57:07', '2023-03-13 07:57:07'),
(23, 1, '127.0.0.1', 'mengupdate status transaksi ke status proses.Invoice :202303130001', 'GET', 'http://localhost:8000/transaksi/1/status/proses', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:57:15', '2023-03-13 07:57:15'),
(24, 1, '127.0.0.1', 'mengupdate status transaksi ke status selesai.Invoice :202303130001', 'GET', 'http://localhost:8000/transaksi/1/status/selesai', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:57:20', '2023-03-13 07:57:20'),
(25, 1, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:58:00', '2023-03-13 07:58:00'),
(26, 1, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:58:18', '2023-03-13 07:58:18'),
(27, 1, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:58:41', '2023-03-13 07:58:41'),
(28, 1, '127.0.0.1', 'mengupdate status transaksi ke status proses.Invoice :202303130002', 'GET', 'http://localhost:8000/transaksi/2/status/proses', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:58:58', '2023-03-13 07:58:58'),
(29, 1, '127.0.0.1', 'mengupdate status transaksi ke status selesai.Invoice :202303130002', 'GET', 'http://localhost:8000/transaksi/2/status/selesai', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:59:05', '2023-03-13 07:59:05'),
(30, 1, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:59:24', '2023-03-13 07:59:24'),
(31, 1, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 07:59:44', '2023-03-13 07:59:44'),
(32, 1, '127.0.0.1', 'mengupdate status transaksi ke status proses.Invoice :202303130003', 'GET', 'http://localhost:8000/transaksi/3/status/proses', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:00:01', '2023-03-13 08:00:01'),
(33, 1, '127.0.0.1', 'mengupdate status transaksi ke status selesai.Invoice :202303130003', 'GET', 'http://localhost:8000/transaksi/3/status/selesai', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:00:08', '2023-03-13 08:00:08'),
(34, 1, '127.0.0.1', 'Berhasil Mengupdate Pembayaran', 'PUT', 'http://localhost:8000/transaksi/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:00:39', '2023-03-13 08:00:39'),
(35, 1, '127.0.0.1', 'mengupdate status transaksi ke status diambil.Invoice :202303130003', 'GET', 'http://localhost:8000/transaksi/3/status/diambil', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:00:47', '2023-03-13 08:00:47'),
(36, 1, '127.0.0.1', 'Berhasil Membuat User', 'GET', 'http://localhost:8000/user/create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:01:17', '2023-03-13 08:01:17'),
(37, 1, '127.0.0.1', 'Berhasil Mengupdate User', 'GET', 'http://localhost:8000/user/4/edit', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:01:39', '2023-03-13 08:01:39'),
(38, 1, '127.0.0.1', 'Berhasil Menghapus User', 'DELETE', 'http://localhost:8000/user/4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:02:18', '2023-03-13 08:02:18'),
(39, 1, '127.0.0.1', 'Berhasil Membuat Outlet', 'GET', 'http://localhost:8000/outlet/create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:02:24', '2023-03-13 08:02:24'),
(40, 1, '127.0.0.1', 'Berhasil Mengupdate Outlet', 'GET', 'http://localhost:8000/outlet/3/edit', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:02:59', '2023-03-13 08:02:59'),
(41, 1, '127.0.0.1', 'Berhasil Menghapus Outlet', 'DELETE', 'http://localhost:8000/outlet/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:03:16', '2023-03-13 08:03:16'),
(42, 1, '127.0.0.1', 'Berhasil Membuat Laporan Harian', 'GET', 'http://localhost:8000/laporan/harian?_token=MOC088in1qwZcXNZ5wg0JoA107xGtXiQj6ID5Kav&outlet_id=1&tanggal=2023-03-14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:03:50', '2023-03-13 08:03:50'),
(43, 1, '127.0.0.1', 'Berhasil Membuat Laporan Harian', 'GET', 'http://localhost:8000/laporan/harian?_token=MOC088in1qwZcXNZ5wg0JoA107xGtXiQj6ID5Kav&outlet_id=1&tanggal=2023-03-13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:04:01', '2023-03-13 08:04:01'),
(44, 1, '127.0.0.1', 'Berhasil Membuat Laporan Bulanan', 'GET', 'http://localhost:8000/laporan/perbulan?_token=MOC088in1qwZcXNZ5wg0JoA107xGtXiQj6ID5Kav&bulan=3&outlet_id=1&tahun=2023', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:04:16', '2023-03-13 08:04:16'),
(45, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:04:29', '2023-03-13 08:04:29'),
(46, 2, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:04:36', '2023-03-13 08:04:36'),
(47, 2, '127.0.0.1', 'Berhasil Membuat Laporan Harian', 'GET', 'http://localhost:8000/laporan/harian?_token=vAFWHSKNUQkU8KLTiv47lIh6wqdKa4huApWLZj6O&outlet_id=1&tanggal=2023-03-13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:04:53', '2023-03-13 08:04:53'),
(48, 2, '127.0.0.1', 'Berhasil Membuat Laporan Bulanan', 'GET', 'http://localhost:8000/laporan/perbulan?_token=vAFWHSKNUQkU8KLTiv47lIh6wqdKa4huApWLZj6O&bulan=3&outlet_id=1&tahun=2023', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:05:07', '2023-03-13 08:05:07'),
(49, 2, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:05:23', '2023-03-13 08:05:23'),
(50, 2, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:05:38', '2023-03-13 08:05:38'),
(51, 2, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:05:45', '2023-03-13 08:05:45'),
(52, 2, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:05:52', '2023-03-13 08:05:52'),
(53, 2, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:06:17', '2023-03-13 08:06:17'),
(54, 2, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:06:20', '2023-03-13 08:06:20'),
(55, 2, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:06:39', '2023-03-13 08:06:39'),
(56, 2, '127.0.0.1', 'Berhasil Membuat Transaksi', 'GET', 'http://localhost:8000/transaksi/member/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:06:42', '2023-03-13 08:06:42'),
(57, 2, '127.0.0.1', 'Berhasil Membuat Member', 'GET', 'http://localhost:8000/member/create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:06:50', '2023-03-13 08:06:50'),
(58, 2, '127.0.0.1', 'Berhasil Membuat Member', 'GET', 'http://localhost:8000/member/create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:06:58', '2023-03-13 08:06:58'),
(59, 2, '127.0.0.1', 'Berhasil Mengupdate Member', 'GET', 'http://localhost:8000/member/5/edit', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:07:25', '2023-03-13 08:07:25'),
(60, 2, '127.0.0.1', 'Berhasil Menghapus Member', 'DELETE', 'http://localhost:8000/member/5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:07:38', '2023-03-13 08:07:38'),
(61, 2, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:07:46', '2023-03-13 08:07:46'),
(62, 3, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:07:54', '2023-03-13 08:07:54'),
(63, 3, '127.0.0.1', 'Berhasil Membuat Laporan Harian', 'GET', 'http://localhost:8000/laporan/harian?_token=DZDzsrYJrw8KEOOUjfvFIJ6XiRt6v1ucdHiYlaFT&outlet_id=1&tanggal=2023-03-14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:08:09', '2023-03-13 08:08:09'),
(64, 3, '127.0.0.1', 'Berhasil Membuat Laporan Harian', 'GET', 'http://localhost:8000/laporan/harian?_token=DZDzsrYJrw8KEOOUjfvFIJ6XiRt6v1ucdHiYlaFT&outlet_id=1&tanggal=2023-03-13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:08:23', '2023-03-13 08:08:23'),
(65, 3, '127.0.0.1', 'Berhasil Membuat Laporan Bulanan', 'GET', 'http://localhost:8000/laporan/perbulan?_token=DZDzsrYJrw8KEOOUjfvFIJ6XiRt6v1ucdHiYlaFT&bulan=3&outlet_id=1&tahun=2023', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:08:36', '2023-03-13 08:08:36'),
(66, 3, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:08:51', '2023-03-13 08:08:51'),
(67, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:08:59', '2023-03-13 08:08:59'),
(68, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:09:28', '2023-03-13 08:09:28'),
(69, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:09:34', '2023-03-13 08:09:34'),
(70, 1, '127.0.0.1', 'Berhasil Mengupdate Profile', 'POST', 'http://localhost:8000/profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:09:44', '2023-03-13 08:09:44'),
(71, 1, '127.0.0.1', 'Berhasil Mengupdate Profile', 'POST', 'http://localhost:8000/profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:09:49', '2023-03-13 08:09:49'),
(72, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-13 08:10:18', '2023-03-13 08:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `nama`, `foto`, `jenis_kelamin`, `alamat`, `tlp`) VALUES
(1, 'Nisa Hoeriah', '20230313024540.jpg', 'P', 'Ciamis, Jawa Barat', '888000222333'),
(2, 'Tita Herlita', '20230313025122.jpg', 'P', 'Pangandaran, Jawa Barat', '999777666222'),
(3, 'Syahda Romansyah', '20230313024722.jpeg', 'L', 'Bandung, Jawa Barat', '1112222333334');

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
(5, '2023_02_03_191310_create_outlets_table', 1),
(6, '2023_02_03_191418_add_outlet_id_to_users_table', 1),
(7, '2023_02_04_111236_create_pakets_table', 1),
(8, '2023_02_04_135627_create_members_table', 1),
(9, '2023_02_04_182019_create_transaksis_table', 1),
(10, '2023_02_04_182142_create_transaksi_details_table', 1),
(11, '2023_02_08_131044_create_log_activities_table', 1),
(12, '2023_03_10_185241_add_tgl_diambil_to_transaksis_table', 1),
(13, '2023_03_10_185549_add_tgl_selesai_to_transaksis_table', 1),
(14, '2023_03_11_185119_add_diskon_and_harga_akhir_to_paket', 1),
(15, '2023_03_11_193631_add_diskon_paket_to_transaksi_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `outlets`
--

CREATE TABLE `outlets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `outlets`
--

INSERT INTO `outlets` (`id`, `nama`, `alamat`, `tlp`) VALUES
(1, 'Toko Nisa Laundry', 'Padaherang', '888777444555'),
(2, 'Toko Nisa Laundry-2', 'Kalipucang', '888666444111');

-- --------------------------------------------------------

--
-- Table structure for table `pakets`
--

CREATE TABLE `pakets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL,
  `nama_paket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` enum('kiloan','selimut','bed_cover','kaos','lain') COLLATE utf8mb4_unicode_ci NOT NULL,
  `diskon` int(11) DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `harga_akhir` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pakets`
--

INSERT INTO `pakets` (`id`, `outlet_id`, `nama_paket`, `jenis`, `diskon`, `harga`, `harga_akhir`) VALUES
(1, 1, 'Express', 'kiloan', 5000, 25000, 20000),
(2, 1, 'Cepat', 'kaos', NULL, 15000, 15000),
(3, 1, 'Reguler', 'kiloan', 1000, 10000, 9000);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kode_invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl` datetime NOT NULL,
  `batas_waktu` datetime NOT NULL,
  `tgl_bayar` datetime DEFAULT NULL,
  `biaya_tambahan` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `pajak` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `qty_total` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `cash` int(11) DEFAULT NULL,
  `kembalian` int(11) DEFAULT NULL,
  `status` enum('baru','proses','selesai','diambil') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibayar` enum('dibayar','belum_bayar') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_diambil` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `outlet_id`, `member_id`, `user_id`, `kode_invoice`, `tgl`, `batas_waktu`, `tgl_bayar`, `biaya_tambahan`, `diskon`, `pajak`, `sub_total`, `qty_total`, `total_bayar`, `cash`, `kembalian`, `status`, `dibayar`, `tgl_diambil`, `tgl_selesai`) VALUES
(1, 1, 1, 1, '202303130001', '2023-03-13 14:56:19', '2023-03-14 14:56:00', '2023-03-13 14:57:07', NULL, 2000, 1800, 20000, 1, 19800, 20000, 200, 'selesai', 'dibayar', '2023-03-13 14:57:15', '2023-03-13 14:57:20'),
(2, 1, 2, 1, '202303130002', '2023-03-13 14:58:51', '2023-03-15 14:58:00', NULL, NULL, NULL, 3000, 30000, 2, 33000, NULL, NULL, 'selesai', 'belum_bayar', '2023-03-13 14:58:58', '2023-03-13 14:59:05'),
(3, 1, 3, 1, '202303130003', '2023-03-13 14:59:55', '2023-03-15 14:59:00', '2023-03-13 15:00:39', NULL, 5000, 1300, 18000, 2, 14300, 30000, 15700, 'diambil', 'dibayar', '2023-03-13 15:00:47', '2023-03-13 15:00:08'),
(4, 1, 3, 2, '202303130004', '2023-03-13 15:06:13', '2023-03-14 15:05:00', NULL, NULL, NULL, 3000, 30000, 2, 33000, NULL, NULL, 'baru', 'belum_bayar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_details`
--

CREATE TABLE `transaksi_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` bigint(20) UNSIGNED NOT NULL,
  `paket_id` bigint(20) UNSIGNED NOT NULL,
  `harga` int(11) NOT NULL,
  `diskon_paket` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi_details`
--

INSERT INTO `transaksi_details` (`id`, `transaksi_id`, `paket_id`, `harga`, `diskon_paket`, `qty`, `sub_total`, `keterangan`) VALUES
(1, 1, 1, 25000, 5000, 1, 20000, 'celana dan baju'),
(2, 2, 2, 15000, NULL, 2, 30000, 'boneka dan sepatu'),
(3, 3, 3, 10000, 1000, 2, 18000, 'Hoodie dan sepatu'),
(4, 4, 2, 15000, NULL, 2, 30000, 'Kerudung');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','kasir','owner') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `outlet_id`) VALUES
(1, 'Administrator', 'admin', '$2y$10$p9eC1mIdjRT9EtQIDed5J.gh4UR15wjPhFX.OFC.eBlYCDR8QQlYa', 'admin', NULL, NULL, '2023-03-13 08:09:49', 1),
(2, 'Kasir', 'kasir', '$2y$10$hFaUXEO503ySkAe3DGxsGeZxaDPoVbsKfFEMcwwiVI/iAb.7J.Wty', 'kasir', NULL, NULL, NULL, 1),
(3, 'Pemilik', 'owner', '$2y$10$yKp2hkb9O6lMML8voT6Ncel15x.Vyg060NzP4OSVjHy9I3b8NTKPG', 'owner', NULL, NULL, NULL, 1);

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
-- Indexes for table `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_activities_user_id_foreign` (`user_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outlets`
--
ALTER TABLE `outlets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pakets`
--
ALTER TABLE `pakets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pakets_outlet_id_foreign` (`outlet_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaksis_kode_invoice_unique` (`kode_invoice`),
  ADD KEY `transaksis_outlet_id_foreign` (`outlet_id`),
  ADD KEY `transaksis_member_id_foreign` (`member_id`),
  ADD KEY `transaksis_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_details_transaksi_id_foreign` (`transaksi_id`),
  ADD KEY `transaksi_details_paket_id_foreign` (`paket_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_outlet_id_foreign` (`outlet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `outlets`
--
ALTER TABLE `outlets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pakets`
--
ALTER TABLE `pakets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `log_activities`
--
ALTER TABLE `log_activities`
  ADD CONSTRAINT `log_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pakets`
--
ALTER TABLE `pakets`
  ADD CONSTRAINT `pakets_outlet_id_foreign` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksis_outlet_id_foreign` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD CONSTRAINT `transaksi_details_paket_id_foreign` FOREIGN KEY (`paket_id`) REFERENCES `pakets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_details_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_outlet_id_foreign` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
