-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2023 at 10:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` mediumint(6) NOT NULL,
  `nama_customer` varchar(30) NOT NULL,
  `alamat_customer` varchar(50) NOT NULL,
  `no_hp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `alamat_customer`, `no_hp`) VALUES
(1, 'Budi Setiawan', 'Jl. Merdeka No. 123', '081111111111'),
(2, 'Dewi Kusuma', 'Jl. Pahlawan No. 45', '082222222222'),
(3, 'Agus Riyanto', 'Jl. Diponegoro No. 67', '083333333333'),
(4, 'Siti Rahayu', 'Jl. Gajah Mada No. 89', '084444444444'),
(5, 'Adi Prabowo', 'Jl. Surya Kencana No. 12', '085555555555'),
(6, 'Dina Fitriani', 'Jl. Kartini No. 34', '086666666666'),
(7, 'Eko Saputra', 'Jl. Sudirman No. 56', '087777777777'),
(8, 'Nina Susanti', 'Jl. Hayam Wuruk No. 78', '088888888888'),
(9, 'Hendra Santoso', 'Jl. Thamrin No. 90', '089999999999'),
(10, 'Ratna Putri', 'Jl. Ahmad Yani No. 23', '081000000000'),
(11, 'Yoga Pratama', 'Jl. Veteran No. 45', '081111111111'),
(12, 'Anita Wijaya', 'Jl. Teuku Umar No. 67', '081222222222'),
(13, 'Irfan Nugroho', 'Jl. Imam Bonjol No. 89', '081333333333'),
(14, 'Rina Indah', 'Jl. Asia Afrika No. 12', '081444444444'),
(15, 'Doni Wibowo', 'Jl. Hayam Wuruk No. 34', '081555555555'),
(16, 'Maya Damayanti', 'Jl. Diponegoro No. 56', '081666666666'),
(17, 'Ahmad Fauzi', 'Jl. Pahlawan No. 78', '081777777777'),
(18, 'Lia Susilo', 'Jl. Merdeka No. 90', '081888888888'),
(19, 'Taufik Rahman', 'Jl. Gajah Mada No. 23', '081999999999'),
(20, 'Riri Prasetyo', 'Jl. Thamrin No. 45', '082000000000');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id_detail` int(8) NOT NULL,
  `no_pesanan` mediumint(8) NOT NULL,
  `id_layanan` char(7) NOT NULL,
  `parfum` char(2) DEFAULT NULL,
  `berat` int(2) NOT NULL,
  `jumlah` int(2) NOT NULL,
  `subtotal_harga` int(6) DEFAULT NULL,
  `status` enum('Dalam proses','Selesai','Diambil','') NOT NULL,
  `tgl_selesai` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id_detail`, `no_pesanan`, `id_layanan`, `parfum`, `berat`, `jumlah`, `subtotal_harga`, `status`, `tgl_selesai`) VALUES
(1, 25, 'BONEKA', '', 2, 5, 21500, 'Dalam proses', '2023-05-10'),
(2, 36, 'EXPCL', '', 1, 8, 57500, 'Dalam proses', '2023-06-20'),
(3, 42, 'REGRCLS', '', 3, 10, 151500, 'Dalam proses', '2023-07-15'),
(4, 47, 'SELIMUT', '', 5, 3, 76500, 'Dalam proses', '2023-08-05'),
(5, 31, 'REGRSTR', '', 2, 6, 25500, 'Dalam proses', '2023-09-22'),
(6, 40, 'EXPCLS', '', 1, 12, 85500, 'Dalam proses', '2023-10-10'),
(7, 23, 'SPREI', '', 4, 7, 29500, 'Dalam proses', '2023-11-01'),
(8, 48, 'TAS', '', 1, 15, 31500, 'Dalam proses', '2023-11-10'),
(9, 33, 'EXPSTR', '', 3, 4, 22500, 'Dalam proses', '2023-05-25'),
(10, 29, 'REGRCL', '', 2, 8, 81500, 'Dalam proses', '2023-06-08'),
(11, 26, 'REGRCLS', '', 3, 6, 91500, 'Dalam proses', '2023-07-02'),
(12, 39, 'EXPCLS', '', 1, 10, 71500, 'Dalam proses', '2023-08-15'),
(13, 45, 'SELIMUT', '', 4, 5, 101500, 'Dalam proses', '2023-09-20'),
(14, 37, 'EXPCLS', '', 1, 7, 50500, 'Dalam proses', '2023-10-05'),
(15, 24, 'SPREI', '', 2, 9, 19500, 'Dalam proses', '2023-11-15'),
(16, 44, 'SELIMUT', '', 3, 12, 121500, 'Dalam proses', '2023-11-25'),
(17, 32, 'REGRSTR', '', 2, 4, 17500, 'Dalam proses', '2023-05-30'),
(18, 30, 'REGRCLS', '', 3, 7, 99500, 'Dalam proses', '2023-06-15'),
(19, 46, 'SEPATU', '', 1, 2, 41500, 'Dalam proses', '2023-07-10'),
(20, 38, 'EXPCLS', '', 1, 9, 64500, 'Dalam proses', '2023-08-25'),
(21, 41, 'REGRCLS', '', 3, 5, 76500, 'Dalam proses', '2023-09-10'),
(22, 28, 'EXPSTR', '', 3, 8, 43500, 'Dalam proses', '2023-10-01'),
(23, 27, 'EXPSTR', '', 2, 3, 22500, 'Dalam proses', '2023-11-05'),
(24, 35, 'REGRCL', '', 1, 6, 49500, 'Dalam proses', '2023-11-15'),
(25, 43, 'SELIMUT', '', 4, 10, 101500, 'Dalam proses', '2023-05-05'),
(26, 34, 'REGRCL', '', 2, 7, 57500, 'Dalam proses', '2023-06-20'),
(27, 49, 'TAS', '', 1, 11, 23500, 'Dalam proses', '2023-07-15'),
(28, 50, 'TAS', '', 1, 10, 21500, 'Dalam proses', '2023-11-01'),
(29, 27, 'EXPCL', '', 3, 13, 39500, 'Dalam proses', '2023-05-10'),
(30, 23, 'REGRCLS', '', 4, 5, 48000, 'Dalam proses', '2023-05-15'),
(31, 46, 'EXPSTR', '', 2, 11, 35500, 'Dalam proses', '2023-05-20'),
(32, 22, 'SPREI', '', 4, 2, 23500, 'Dalam proses', '2023-05-25'),
(33, 4, 'SEPATU', '', 4, 10, 29000, 'Dalam proses', '2023-06-01'),
(34, 47, 'REGRSTR', '', 4, 5, 34500, 'Dalam proses', '2023-06-05'),
(35, 27, 'REGRCLS', '', 2, 8, 53500, 'Dalam proses', '2023-06-10'),
(36, 36, 'EXPCLS', '', 1, 15, 45500, 'Dalam proses', '2023-06-15'),
(37, 29, 'TAS', '', 5, 2, 12500, 'Dalam proses', '2023-06-20'),
(38, 50, 'EXPCLS', '', 5, 2, 51500, 'Dalam proses', '2023-06-25'),
(39, 46, 'EXPSTR', '', 2, 13, 50500, 'Dalam proses', '2023-07-01'),
(40, 23, 'SPREI', '', 6, 4, 18500, 'Dalam proses', '2023-07-05'),
(41, 11, 'REGRCLS', '', 4, 3, 57500, 'Dalam proses', '2023-07-10'),
(42, 15, 'TAS', '', 4, 8, 34500, 'Dalam proses', '2023-07-15'),
(43, 41, 'SEPATU', '', 4, 13, 18500, 'Dalam proses', '2023-07-20'),
(44, 14, 'REGRCLS', '', 5, 11, 49500, 'Dalam proses', '2023-07-25'),
(45, 37, 'REGRSTR', '', 3, 7, 14500, 'Dalam proses', '2023-08-01'),
(46, 7, 'SPREI', '', 3, 12, 34000, 'Dalam proses', '2023-08-05'),
(47, 2, 'SELIMUT', '', 5, 13, 50000, 'Dalam proses', '2023-08-10'),
(48, 20, 'EXPCLS', '', 4, 14, 40000, 'Dalam proses', '2023-08-15'),
(49, 11, 'EXPSTR', '', 3, 15, 54000, 'Dalam proses', '2023-08-20'),
(50, 21, 'TAS', '', 3, 14, 19000, 'Dalam proses', '2023-08-25'),
(51, 7, 'SEPATU', '', 2, 7, 37500, 'Dalam proses', '2023-09-01'),
(52, 21, 'REGRCLS', '', 3, 4, 45000, 'Dalam proses', '2023-09-05'),
(53, 35, 'REGRSTR', '', 3, 14, 14000, 'Dalam proses', '2023-09-10'),
(54, 39, 'SPREI', '', 4, 13, 14000, 'Dalam proses', '2023-09-15'),
(55, 47, 'SELIMUT', '', 3, 10, 45000, 'Dalam proses', '2023-09-20'),
(56, 26, 'EXPCLS', '', 3, 14, 57000, 'Dalam proses', '2023-09-25'),
(57, 48, 'TAS', '', 6, 2, 28500, 'Dalam proses', '2023-10-01'),
(58, 29, 'REGRCLS', '', 5, 3, 37000, 'Dalam proses', '2023-10-05'),
(59, 4, 'EXPSTR', '', 5, 13, 36500, 'Dalam proses', '2023-10-10'),
(60, 9, 'SELIMUT', '', 2, 14, 46000, 'Dalam proses', '2023-10-15'),
(61, 38, 'EXPCLS', '', 4, 13, 22000, 'Dalam proses', '2023-10-20'),
(62, 32, 'REGRCLS', '', 4, 12, 12000, 'Dalam proses', '2023-10-25'),
(63, 46, 'SEPATU', '', 3, 13, 29000, 'Dalam proses', '2023-11-01'),
(64, 24, 'EXPSTR', '', 2, 11, 53500, 'Dalam proses', '2023-11-05'),
(65, 7, 'SPREI', '', 1, 14, 19500, 'Dalam proses', '2023-11-10'),
(66, 13, 'TAS', '', 5, 15, 33000, 'Dalam proses', '2023-11-15'),
(67, 20, 'REGRSTR', '', 4, 16, 15500, 'Dalam proses', '2023-11-20'),
(68, 22, 'EXPCLS', '', 5, 1, 39000, 'Dalam proses', '2023-11-25'),
(69, 35, 'TAS', '', 5, 10, 52000, 'Dalam proses', '2023-12-01'),
(70, 14, 'SEPATU', '', 5, 10, 30500, 'Dalam proses', '2023-12-05'),
(71, 35, 'REGRCLS', '', 4, 4, 19000, 'Dalam proses', '2023-05-15'),
(72, 5, 'EXPSTR', '', 6, 9, 54500, 'Dalam proses', '2023-05-20'),
(73, 34, 'SPREI', '', 5, 10, 52000, 'Dalam proses', '2023-05-25'),
(74, 14, 'SEPATU', '', 5, 11, 43500, 'Dalam proses', '2023-06-01'),
(75, 11, 'REGRSTR', '', 2, 16, 42000, 'Dalam proses', '2023-06-05'),
(76, 3, 'REGRCLS', '', 3, 15, 35000, 'Dalam proses', '2023-06-10'),
(77, 26, 'EXPCLS', '', 2, 3, 20500, 'Dalam proses', '2023-06-15'),
(78, 30, 'TAS', '', 3, 15, 41500, 'Dalam proses', '2023-06-20'),
(79, 13, 'EXPCLS', '', 3, 7, 44000, 'Dalam proses', '2023-06-25'),
(80, 5, 'EXPSTR', '', 3, 4, 44500, 'Dalam proses', '2023-07-01'),
(81, 30, 'SPREI', '', 6, 2, 26500, 'Dalam proses', '2023-07-05'),
(82, 21, 'REGRCLS', '', 1, 4, 53500, 'Dalam proses', '2023-07-10'),
(83, 29, 'TAS', '', 2, 10, 18500, 'Dalam proses', '2023-07-15'),
(84, 51, 'SEPATU', '', 4, 10, 39000, 'Dalam proses', '2023-07-20'),
(85, 46, 'REGRCLS', '', 5, 9, 25000, 'Dalam proses', '2023-07-25'),
(86, 33, 'REGRSTR', '', 3, 15, 34500, 'Dalam proses', '2023-08-01'),
(87, 31, 'SPREI', '', 4, 2, 46000, 'Dalam proses', '2023-08-05'),
(88, 10, 'SELIMUT', '', 5, 13, 30000, 'Dalam proses', '2023-08-10'),
(89, 23, 'EXPCLS', '', 2, 5, 60500, 'Dalam proses', '2023-08-15'),
(90, 5, 'EXPSTR', '', 3, 3, 17000, 'Dalam proses', '2023-08-20'),
(91, 13, 'TAS', '', 5, 10, 32000, 'Dalam proses', '2023-08-25'),
(92, 14, 'SEPATU', '', 1, 11, 20000, 'Dalam proses', '2023-09-01'),
(93, 39, 'REGRCLS', '', 2, 1, 27000, 'Dalam proses', '2023-09-05'),
(94, 27, 'REGRSTR', '', 4, 12, 41500, 'Dalam proses', '2023-09-10'),
(95, 44, 'SPREI', '', 4, 16, 28000, 'Dalam proses', '2023-09-15'),
(96, 37, 'SELIMUT', '', 4, 13, 20000, 'Dalam proses', '2023-09-20'),
(97, 27, 'EXPCLS', '', 1, 12, 29500, 'Dalam proses', '2023-09-25'),
(98, 35, 'TAS', '', 3, 9, 48000, 'Dalam proses', '2023-10-01'),
(99, 3, 'REGRCLS', '', 1, 1, 59000, 'Dalam proses', '2023-10-05'),
(100, 38, 'EXPSTR', '', 5, 1, 36000, 'Dalam proses', '2023-10-10'),
(101, 24, 'SELIMUT', '', 5, 9, 30000, 'Dalam proses', '2023-10-15'),
(102, 13, 'EXPCLS', '', 1, 12, 28000, 'Dalam proses', '2023-10-20'),
(103, 25, 'REGRCLS', '', 3, 10, 53000, 'Dalam proses', '2023-10-25'),
(104, 17, 'SEPATU', '', 1, 8, 14500, 'Dalam proses', '2023-11-01'),
(105, 47, 'EXPSTR', '', 3, 8, 54500, 'Dalam proses', '2023-11-05'),
(106, 51, 'SPREI', '', 3, 15, 40000, 'Dalam proses', '2023-11-10'),
(107, 3, 'TAS', '', 3, 3, 21000, 'Dalam proses', '2023-11-15'),
(108, 34, 'REGRSTR', '', 5, 10, 60500, 'Dalam proses', '2023-11-20'),
(109, 2, 'EXPCLS', '', 2, 11, 50500, 'Dalam proses', '2023-11-25'),
(110, 49, 'TAS', '', 3, 10, 34000, 'Dalam proses', '2023-12-01'),
(111, 25, 'SEPATU', '', 1, 12, 47000, 'Dalam proses', '2023-12-05'),
(112, 17, 'REGRCLS', '', 6, 12, 55500, 'Dalam proses', '2023-05-15'),
(113, 9, 'EXPSTR', '', 2, 9, 12000, 'Dalam proses', '2023-05-20'),
(114, 26, 'SPREI', '', 3, 11, 15000, 'Dalam proses', '2023-05-25'),
(115, 17, 'SEPATU', '', 3, 15, 32500, 'Dalam proses', '2023-06-01'),
(116, 21, 'REGRSTR', '', 4, 5, 27500, 'Dalam proses', '2023-06-05'),
(117, 39, 'REGRCLS', '', 5, 15, 18000, 'Dalam proses', '2023-06-10'),
(118, 43, 'EXPCLS', '', 5, 9, 17000, 'Dalam proses', '2023-06-15'),
(119, 2, 'TAS', '', 5, 15, 20500, 'Dalam proses', '2023-06-20'),
(120, 9, 'EXPCLS', '', 2, 13, 21000, 'Dalam proses', '2023-06-25'),
(121, 31, 'EXPSTR', '', 3, 5, 14000, 'Dalam proses', '2023-07-01'),
(122, 26, 'SPREI', '', 3, 2, 35500, 'Dalam proses', '2023-07-05'),
(123, 8, 'REGRCLS', '', 2, 14, 41500, 'Dalam proses', '2023-07-10'),
(124, 21, 'TAS', '', 2, 10, 44500, 'Dalam proses', '2023-07-15'),
(125, 22, 'SEPATU', '', 2, 8, 59000, 'Dalam proses', '2023-07-20'),
(126, 16, 'REGRCLS', '', 4, 8, 31500, 'Dalam proses', '2023-07-25'),
(127, 28, 'REGRSTR', '', 3, 12, 21500, 'Dalam proses', '2023-08-01'),
(128, 43, 'SPREI', '', 4, 8, 33500, 'Dalam proses', '2023-08-05'),
(129, 44, 'SELIMUT', '', 6, 7, 56000, 'Dalam proses', '2023-08-10'),
(130, 17, 'EXPCLS', '', 6, 13, 18500, 'Dalam proses', '2023-08-15'),
(131, 17, 'EXPSTR', '', 2, 12, 29500, 'Dalam proses', '2023-08-20'),
(132, 27, 'TAS', '', 4, 3, 18000, 'Dalam proses', '2023-08-25'),
(133, 11, 'SEPATU', '', 4, 6, 12000, 'Dalam proses', '2023-09-01'),
(134, 50, 'REGRCLS', '', 5, 5, 59000, 'Dalam proses', '2023-09-05'),
(135, 44, 'REGRSTR', '', 3, 9, 27500, 'Dalam proses', '2023-09-10'),
(136, 4, 'SPREI', '', 3, 7, 21000, 'Dalam proses', '2023-09-15'),
(137, 35, 'SELIMUT', '', 5, 15, 28000, 'Dalam proses', '2023-09-20'),
(138, 41, 'EXPCLS', '', 1, 13, 58500, 'Dalam proses', '2023-09-25'),
(139, 13, 'TAS', '', 3, 5, 15000, 'Dalam proses', '2023-10-01'),
(140, 30, 'REGRCLS', '', 5, 14, 20000, 'Dalam proses', '2023-10-05'),
(141, 14, 'EXPSTR', '', 5, 1, 53000, 'Dalam proses', '2023-10-10'),
(142, 6, 'SELIMUT', '', 1, 13, 58000, 'Dalam proses', '2023-10-15'),
(143, 13, 'EXPCLS', '', 3, 6, 40000, 'Dalam proses', '2023-10-20'),
(144, 38, 'REGRCLS', '', 1, 13, 18000, 'Dalam proses', '2023-10-25'),
(145, 9, 'SEPATU', '', 3, 7, 59500, 'Dalam proses', '2023-11-01'),
(146, 29, 'EXPSTR', '', 6, 14, 44500, 'Dalam proses', '2023-11-05'),
(147, 34, 'SPREI', '', 3, 12, 48000, 'Dalam proses', '2023-11-10'),
(148, 20, 'TAS', '', 4, 6, 44500, 'Dalam proses', '2023-11-15'),
(149, 14, 'REGRSTR', '', 3, 14, 23000, 'Dalam proses', '2023-11-20'),
(150, 31, 'EXPCLS', '', 3, 15, 45000, 'Dalam proses', '2023-11-25'),
(151, 27, 'TAS', '', 4, 6, 57000, 'Dalam proses', '2023-12-01'),
(152, 29, 'SEPATU', '', 1, 13, 42500, 'Dalam proses', '2023-12-05'),
(153, 5, 'EXPCL', '', 5, 7, 45000, 'Dalam proses', '2023-05-10'),
(154, 16, 'REGRCLS', '', 3, 4, 51500, 'Dalam proses', '2023-05-15'),
(155, 22, 'EXPSTR', '', 4, 2, 34500, 'Dalam proses', '2023-05-20'),
(156, 4, 'SPREI', '', 5, 2, 55000, 'Dalam proses', '2023-05-25'),
(157, 9, 'SEPATU', '', 2, 2, 17500, 'Dalam proses', '2023-06-01'),
(158, 21, 'REGRSTR', '', 4, 10, 25500, 'Dalam proses', '2023-06-05'),
(159, 35, 'REGRCLS', '', 4, 8, 59500, 'Dalam proses', '2023-06-10'),
(160, 18, 'EXPCLS', '', 5, 2, 60500, 'Dalam proses', '2023-06-15'),
(161, 35, 'TAS', '', 3, 2, 60500, 'Dalam proses', '2023-06-20'),
(162, 42, 'EXPCLS', '', 2, 2, 13000, 'Dalam proses', '2023-06-25'),
(163, 1, 'EXPSTR', '', 5, 8, 41500, 'Dalam proses', '2023-07-01'),
(164, 34, 'SPREI', '', 3, 7, 34000, 'Dalam proses', '2023-07-05'),
(165, 11, 'REGRCLS', '', 4, 7, 21000, 'Dalam proses', '2023-07-10'),
(166, 41, 'TAS', '', 3, 11, 12500, 'Dalam proses', '2023-07-15'),
(167, 10, 'SEPATU', '', 5, 7, 49000, 'Dalam proses', '2023-07-20'),
(168, 26, 'REGRCLS', '', 2, 14, 29000, 'Dalam proses', '2023-07-25'),
(169, 16, 'REGRSTR', '', 3, 3, 34500, 'Dalam proses', '2023-08-01'),
(170, 49, 'SPREI', '', 3, 14, 25000, 'Dalam proses', '2023-08-05'),
(171, 42, 'SELIMUT', '', 2, 14, 32000, 'Dalam proses', '2023-08-10'),
(172, 29, 'EXPCLS', '', 4, 3, 56000, 'Dalam proses', '2023-08-15'),
(173, 9, 'EXPSTR', '', 1, 14, 24500, 'Dalam proses', '2023-08-20'),
(174, 34, 'TAS', '', 3, 6, 30000, 'Dalam proses', '2023-08-25'),
(175, 43, 'SEPATU', '', 1, 15, 25500, 'Dalam proses', '2023-09-01'),
(176, 38, 'REGRCLS', '', 5, 11, 58000, 'Dalam proses', '2023-09-05'),
(177, 39, 'REGRSTR', '', 6, 10, 11500, 'Dalam proses', '2023-09-10'),
(178, 15, 'SPREI', '', 3, 15, 48000, 'Dalam proses', '2023-09-15'),
(179, 42, 'SELIMUT', '', 5, 13, 40000, 'Dalam proses', '2023-09-20'),
(180, 21, 'EXPCLS', '', 2, 4, 23500, 'Dalam proses', '2023-09-25'),
(181, 29, 'TAS', '', 1, 11, 23000, 'Dalam proses', '2023-10-01'),
(182, 7, 'REGRCLS', '', 5, 16, 24500, 'Dalam proses', '2023-10-05'),
(183, 23, 'EXPSTR', '', 3, 12, 27500, 'Dalam proses', '2023-10-10'),
(184, 26, 'SELIMUT', '', 4, 5, 43500, 'Dalam proses', '2023-10-15'),
(185, 24, 'EXPCLS', '', 3, 5, 31500, 'Dalam proses', '2023-10-20'),
(186, 13, 'REGRCLS', '', 6, 14, 44000, 'Dalam proses', '2023-10-25'),
(187, 35, 'SEPATU', '', 3, 13, 59500, 'Dalam proses', '2023-11-01'),
(188, 21, 'EXPSTR', '', 2, 8, 53000, 'Dalam proses', '2023-11-05'),
(189, 43, 'SPREI', '', 5, 1, 61000, 'Dalam proses', '2023-11-10'),
(190, 47, 'TAS', '', 4, 2, 39500, 'Dalam proses', '2023-11-15'),
(191, 36, 'REGRSTR', '', 5, 14, 58000, 'Dalam proses', '2023-11-20'),
(192, 7, 'EXPCLS', '', 5, 11, 52000, 'Dalam proses', '2023-11-25'),
(193, 9, 'TAS', '', 3, 6, 32500, 'Dalam proses', '2023-12-01'),
(194, 13, 'SEPATU', '', 6, 16, 13500, 'Dalam proses', '2023-12-05'),
(195, 22, 'EXPCL', '', 3, 11, 17000, 'Dalam proses', '2023-05-10'),
(196, 31, 'REGRCLS', '', 4, 11, 17500, 'Dalam proses', '2023-05-15'),
(197, 38, 'EXPSTR', '', 2, 5, 30000, 'Dalam proses', '2023-05-20'),
(198, 9, 'SPREI', '', 4, 12, 46500, 'Dalam proses', '2023-05-25'),
(199, 19, 'SEPATU', '', 4, 3, 49000, 'Dalam proses', '2023-06-01'),
(200, 22, 'REGRSTR', '', 5, 11, 57500, 'Dalam proses', '2023-06-05'),
(201, 35, 'REGRCLS', '', 4, 14, 47500, 'Dalam proses', '2023-06-10'),
(202, 50, 'EXPCLS', '', 4, 7, 11500, 'Dalam proses', '2023-06-15'),
(203, 44, 'TAS', '', 3, 15, 41500, 'Dalam proses', '2023-06-20'),
(204, 17, 'EXPCLS', '', 5, 2, 60000, 'Dalam proses', '2023-06-25'),
(205, 34, 'EXPSTR', '', 3, 13, 59500, 'Dalam proses', '2023-07-01'),
(206, 23, 'SPREI', '', 2, 15, 14000, 'Dalam proses', '2023-07-05'),
(207, 22, 'REGRCLS', '', 6, 7, 17500, 'Dalam proses', '2023-07-10'),
(208, 25, 'TAS', '', 6, 10, 53000, 'Dalam proses', '2023-07-15'),
(209, 26, 'SEPATU', '', 6, 6, 51000, 'Dalam proses', '2023-07-20'),
(210, 50, 'REGRCLS', '', 4, 12, 57500, 'Dalam proses', '2023-07-25'),
(211, 29, 'REGRSTR', '', 6, 3, 47000, 'Dalam proses', '2023-08-01'),
(212, 13, 'SPREI', '', 1, 10, 48000, 'Dalam proses', '2023-08-05'),
(213, 48, 'SELIMUT', '', 3, 10, 35500, 'Dalam proses', '2023-08-10'),
(214, 36, 'EXPCLS', '', 1, 2, 22500, 'Dalam proses', '2023-08-15'),
(215, 48, 'EXPSTR', '', 1, 4, 16500, 'Dalam proses', '2023-08-20'),
(216, 45, 'TAS', '', 1, 10, 54500, 'Dalam proses', '2023-08-25'),
(217, 28, 'SEPATU', '', 2, 1, 45000, 'Dalam proses', '2023-09-01'),
(218, 19, 'REGRCLS', '', 5, 9, 37000, 'Dalam proses', '2023-09-05'),
(219, 50, 'REGRSTR', '', 3, 13, 53500, 'Dalam proses', '2023-09-10'),
(220, 48, 'SPREI', '', 1, 11, 20500, 'Dalam proses', '2023-09-15'),
(221, 44, 'SELIMUT', '', 4, 15, 38000, 'Dalam proses', '2023-09-20'),
(222, 48, 'EXPCLS', '', 1, 8, 15500, 'Dalam proses', '2023-09-25'),
(223, 6, 'TAS', '', 2, 1, 25000, 'Dalam proses', '2023-10-01'),
(224, 19, 'REGRCLS', '', 6, 14, 23000, 'Dalam proses', '2023-10-05'),
(225, 35, 'EXPSTR', '', 4, 7, 12000, 'Dalam proses', '2023-10-10'),
(226, 42, 'SELIMUT', '', 1, 14, 20500, 'Dalam proses', '2023-10-15'),
(227, 16, 'EXPCLS', '', 6, 11, 46500, 'Dalam proses', '2023-10-20'),
(228, 25, 'REGRCLS', '', 2, 16, 12500, 'Dalam proses', '2023-10-25'),
(229, 11, 'SEPATU', '', 6, 15, 60500, 'Dalam proses', '2023-11-01'),
(230, 8, 'EXPSTR', '', 4, 16, 59000, 'Dalam proses', '2023-11-05'),
(231, 42, 'SPREI', '', 2, 10, 26000, 'Dalam proses', '2023-11-10'),
(232, 39, 'TAS', '', 5, 3, 55500, 'Dalam proses', '2023-11-15'),
(233, 8, 'REGRSTR', '', 1, 14, 13500, 'Dalam proses', '2023-11-20'),
(234, 37, 'EXPCLS', '', 3, 4, 35500, 'Dalam proses', '2023-11-25'),
(235, 47, 'TAS', '', 2, 15, 20000, 'Dalam proses', '2023-12-01'),
(236, 8, 'SEPATU', '', 2, 10, 24000, 'Dalam proses', '2023-12-05'),
(237, 34, 'EXPCL', '', 1, 5, 21000, 'Dalam proses', '2023-05-10'),
(238, 13, 'REGRCLS', '', 4, 2, 50000, 'Dalam proses', '2023-05-15'),
(239, 35, 'EXPSTR', '', 1, 1, 13500, 'Dalam proses', '2023-05-20'),
(240, 13, 'SPREI', '', 1, 6, 38000, 'Dalam proses', '2023-05-25'),
(241, 41, 'SEPATU', '', 3, 5, 28000, 'Dalam proses', '2023-06-01'),
(242, 48, 'REGRSTR', '', 4, 9, 36000, 'Dalam proses', '2023-06-05'),
(243, 2, 'REGRCLS', '', 4, 16, 16000, 'Dalam proses', '2023-06-10'),
(244, 30, 'EXPCLS', '', 4, 3, 14500, 'Dalam proses', '2023-06-15'),
(245, 46, 'TAS', '', 2, 10, 26500, 'Dalam proses', '2023-06-20'),
(246, 38, 'EXPCLS', '', 5, 9, 33000, 'Dalam proses', '2023-06-25'),
(247, 32, 'EXPSTR', '', 5, 13, 50500, 'Dalam proses', '2023-07-01'),
(248, 31, 'SPREI', '', 4, 3, 55000, 'Dalam proses', '2023-07-05'),
(249, 4, 'REGRCLS', '', 4, 15, 57500, 'Dalam proses', '2023-07-10'),
(250, 42, 'TAS', '', 2, 13, 17500, 'Dalam proses', '2023-07-15'),
(251, 20, 'SEPATU', '', 3, 5, 52500, 'Dalam proses', '2023-07-20'),
(252, 22, 'REGRCLS', '', 4, 11, 42000, 'Dalam proses', '2023-07-25'),
(253, 7, 'REGRSTR', '', 5, 5, 20500, 'Dalam proses', '2023-08-01'),
(254, 9, 'SPREI', '', 2, 11, 47500, 'Dalam proses', '2023-08-05'),
(255, 32, 'SELIMUT', '', 5, 7, 39500, 'Dalam proses', '2023-08-10'),
(256, 31, 'EXPCLS', '', 2, 10, 14000, 'Dalam proses', '2023-08-15'),
(257, 32, 'EXPSTR', '', 6, 11, 36500, 'Dalam proses', '2023-08-20'),
(258, 35, 'TAS', '', 5, 2, 57000, 'Dalam proses', '2023-08-25'),
(259, 22, 'SEPATU', '', 3, 7, 55500, 'Dalam proses', '2023-09-01'),
(260, 19, 'REGRCLS', '', 2, 8, 12000, 'Dalam proses', '2023-09-05'),
(261, 38, 'REGRSTR', '', 4, 15, 43500, 'Dalam proses', '2023-09-10'),
(262, 29, 'SPREI', '', 5, 8, 49000, 'Dalam proses', '2023-09-15'),
(263, 27, 'SELIMUT', '', 2, 14, 29500, 'Dalam proses', '2023-09-20'),
(264, 18, 'EXPCLS', '', 4, 2, 29000, 'Dalam proses', '2023-09-25'),
(265, 38, 'TAS', '', 4, 9, 14500, 'Dalam proses', '2023-10-01'),
(266, 39, 'REGRCLS', '', 4, 9, 59000, 'Dalam proses', '2023-10-05'),
(267, 13, 'EXPSTR', '', 3, 14, 28500, 'Dalam proses', '2023-10-10'),
(268, 11, 'SELIMUT', '', 6, 16, 16000, 'Dalam proses', '2023-10-15'),
(269, 33, 'EXPCLS', '', 5, 9, 12000, 'Dalam proses', '2023-10-20'),
(270, 28, 'REGRCLS', '', 4, 5, 39500, 'Dalam proses', '2023-10-25'),
(271, 8, 'SEPATU', '', 6, 4, 25500, 'Dalam proses', '2023-11-01'),
(272, 43, 'EXPSTR', '', 3, 2, 36000, 'Dalam proses', '2023-11-05'),
(273, 13, 'SPREI', '', 5, 13, 58500, 'Dalam proses', '2023-11-10'),
(274, 18, 'TAS', '', 5, 5, 44000, 'Dalam proses', '2023-11-15'),
(275, 31, 'REGRSTR', '', 6, 3, 53000, 'Dalam proses', '2023-11-20'),
(276, 39, 'EXPCLS', '', 2, 13, 35500, 'Dalam proses', '2023-11-25'),
(277, 51, 'TAS', '', 3, 6, 32000, 'Dalam proses', '2023-12-01'),
(278, 2, 'SEPATU', '', 5, 5, 47500, 'Dalam proses', '2023-12-05'),
(279, 45, 'REGRCLS', '', 2, 4, 37000, 'Dalam proses', '2023-09-05'),
(280, 2, 'REGRSTR', '', 3, 7, 33500, 'Dalam proses', '2023-09-10'),
(281, 8, 'SPREI', '', 3, 6, 40500, 'Dalam proses', '2023-09-15'),
(282, 2, 'SELIMUT', '', 2, 6, 47000, 'Dalam proses', '2023-09-20'),
(283, 37, 'EXPCLS', '', 3, 13, 51000, 'Dalam proses', '2023-09-25'),
(284, 34, 'TAS', '', 5, 7, 34500, 'Dalam proses', '2023-10-01'),
(285, 7, 'REGRCLS', '', 2, 9, 13000, 'Dalam proses', '2023-10-05'),
(286, 36, 'EXPSTR', '', 3, 9, 41500, 'Dalam proses', '2023-10-10'),
(287, 30, 'SELIMUT', '', 1, 5, 33500, 'Dalam proses', '2023-10-15'),
(288, 22, 'EXPCLS', '', 4, 5, 17000, 'Dalam proses', '2023-10-20'),
(289, 47, 'REGRCLS', '', 2, 7, 25500, 'Dalam proses', '2023-10-25'),
(290, 15, 'SEPATU', '', 4, 14, 45500, 'Dalam proses', '2023-11-01'),
(291, 46, 'EXPSTR', '', 3, 6, 36500, 'Dalam proses', '2023-11-05'),
(292, 29, 'SPREI', '', 2, 9, 53500, 'Dalam proses', '2023-11-10'),
(293, 38, 'TAS', '', 2, 7, 42500, 'Dalam proses', '2023-11-15'),
(294, 50, 'REGRSTR', '', 1, 2, 24500, 'Dalam proses', '2023-11-20'),
(295, 12, 'EXPCLS', '', 2, 11, 31500, 'Dalam proses', '2023-11-25'),
(296, 11, 'TAS', '', 5, 1, 59500, 'Dalam proses', '2023-12-01'),
(297, 41, 'SEPATU', '', 2, 3, 20000, 'Dalam proses', '2023-12-05'),
(298, 33, 'REGRCLS', '', 4, 5, 33000, 'Dalam proses', '2023-09-05'),
(299, 23, 'REGRSTR', '', 5, 14, 57500, 'Dalam proses', '2023-09-10'),
(300, 3, 'SPREI', '', 3, 10, 15500, 'Dalam proses', '2023-09-15'),
(301, 31, 'SELIMUT', '', 4, 11, 21000, 'Dalam proses', '2023-09-20'),
(302, 5, 'EXPCLS', '', 5, 8, 23000, 'Dalam proses', '2023-09-25'),
(303, 39, 'TAS', '', 1, 2, 23000, 'Dalam proses', '2023-10-01'),
(304, 48, 'REGRCLS', '', 1, 4, 53000, 'Dalam proses', '2023-10-05'),
(305, 37, 'EXPSTR', '', 1, 15, 49000, 'Dalam proses', '2023-10-10'),
(306, 49, 'SELIMUT', '', 4, 11, 51000, 'Dalam proses', '2023-10-15'),
(307, 3, 'EXPCLS', '', 5, 10, 50500, 'Dalam proses', '2023-10-20'),
(308, 10, 'REGRCLS', '', 4, 3, 59500, 'Dalam proses', '2023-10-25'),
(309, 29, 'SEPATU', '', 5, 10, 38000, 'Dalam proses', '2023-11-01'),
(310, 45, 'EXPSTR', '', 5, 2, 20000, 'Dalam proses', '2023-11-05'),
(311, 35, 'SPREI', '', 5, 6, 11000, 'Dalam proses', '2023-11-10'),
(312, 3, 'TAS', '', 2, 15, 57000, 'Dalam proses', '2023-11-15'),
(313, 46, 'REGRSTR', '', 5, 13, 10500, 'Dalam proses', '2023-11-20'),
(314, 28, 'EXPCLS', '', 5, 1, 56500, 'Dalam proses', '2023-11-25'),
(315, 28, 'TAS', '', 6, 4, 58000, 'Dalam proses', '2023-12-01'),
(316, 14, 'SEPATU', '', 3, 7, 52000, 'Dalam proses', '2023-12-05'),
(317, 43, 'REGRCLS', '', 5, 5, 12000, 'Dalam proses', '2023-09-05'),
(318, 19, 'REGRSTR', '', 5, 10, 43000, 'Dalam proses', '2023-09-10'),
(319, 29, 'SPREI', '', 5, 6, 25500, 'Dalam proses', '2023-09-15'),
(320, 24, 'SELIMUT', '', 3, 12, 31000, 'Dalam proses', '2023-09-20'),
(321, 42, 'EXPCLS', '', 5, 16, 26000, 'Dalam proses', '2023-09-25'),
(322, 30, 'TAS', '', 6, 14, 37500, 'Dalam proses', '2023-10-01'),
(323, 7, 'REGRCLS', '', 6, 10, 17500, 'Dalam proses', '2023-10-05'),
(324, 43, 'EXPSTR', '', 5, 5, 14000, 'Dalam proses', '2023-10-10'),
(325, 29, 'SELIMUT', '', 4, 2, 43000, 'Dalam proses', '2023-10-15'),
(326, 5, 'EXPCLS', '', 3, 3, 27000, 'Dalam proses', '2023-10-20'),
(327, 10, 'REGRCLS', '', 6, 2, 38500, 'Dalam proses', '2023-10-25'),
(328, 30, 'SEPATU', '', 2, 10, 23000, 'Dalam proses', '2023-11-01'),
(329, 21, 'EXPSTR', '', 2, 2, 37000, 'Dalam proses', '2023-11-05'),
(330, 25, 'SPREI', '', 5, 12, 22000, 'Dalam proses', '2023-11-10'),
(331, 46, 'TAS', '', 5, 6, 24000, 'Dalam proses', '2023-11-15'),
(332, 18, 'REGRSTR', '', 5, 8, 40000, 'Dalam proses', '2023-11-20'),
(333, 30, 'EXPCLS', '', 2, 14, 52000, 'Dalam proses', '2023-11-25'),
(334, 34, 'TAS', '', 5, 4, 37000, 'Dalam proses', '2023-12-01'),
(335, 2, 'SEPATU', '', 3, 8, 45000, 'Dalam proses', '2023-12-05'),
(336, 7, 'REGRCLS', '', 4, 8, 47000, 'Dalam proses', '2023-09-05'),
(337, 10, 'REGRSTR', '', 4, 15, 37000, 'Dalam proses', '2023-09-10'),
(338, 45, 'SPREI', '', 5, 7, 45500, 'Dalam proses', '2023-09-15'),
(339, 12, 'SELIMUT', '', 6, 3, 54500, 'Dalam proses', '2023-09-20'),
(340, 49, 'EXPCLS', '', 2, 13, 35000, 'Dalam proses', '2023-09-25'),
(341, 8, 'TAS', '', 2, 11, 49000, 'Dalam proses', '2023-10-01'),
(342, 40, 'REGRCLS', '', 4, 11, 40500, 'Dalam proses', '2023-10-05'),
(343, 49, 'EXPSTR', '', 1, 4, 13500, 'Dalam proses', '2023-10-10'),
(344, 31, 'SELIMUT', '', 5, 6, 26500, 'Dalam proses', '2023-10-15'),
(345, 27, 'EXPCLS', '', 4, 12, 47000, 'Dalam proses', '2023-10-20'),
(346, 21, 'REGRCLS', '', 5, 14, 56000, 'Dalam proses', '2023-10-25'),
(347, 47, 'SEPATU', '', 6, 12, 58500, 'Dalam proses', '2023-11-01'),
(348, 30, 'EXPSTR', '', 1, 9, 40000, 'Dalam proses', '2023-11-05'),
(349, 15, 'SPREI', '', 4, 4, 26500, 'Dalam proses', '2023-11-10'),
(350, 47, 'TAS', '', 4, 5, 33500, 'Dalam proses', '2023-11-15'),
(351, 29, 'REGRSTR', '', 3, 7, 49000, 'Dalam proses', '2023-11-20'),
(352, 32, 'EXPCLS', '', 5, 6, 60000, 'Dalam proses', '2023-11-25'),
(353, 3, 'TAS', '', 2, 4, 14500, 'Dalam proses', '2023-12-01'),
(354, 44, 'SEPATU', '', 1, 14, 58000, 'Dalam proses', '2023-12-05'),
(355, 13, 'REGRCLS', '', 2, 13, 16500, 'Dalam proses', '2023-09-05'),
(356, 10, 'REGRSTR', '', 4, 1, 38500, 'Dalam proses', '2023-09-10'),
(357, 39, 'SPREI', '', 2, 7, 46500, 'Dalam proses', '2023-09-15'),
(358, 17, 'SELIMUT', '', 3, 3, 38000, 'Dalam proses', '2023-09-20'),
(359, 14, 'EXPCLS', '', 4, 10, 56000, 'Dalam proses', '2023-09-25'),
(360, 40, 'TAS', '', 2, 6, 31000, 'Dalam proses', '2023-10-01'),
(361, 50, 'REGRCLS', '', 4, 6, 41500, 'Dalam proses', '2023-10-05'),
(362, 9, 'EXPSTR', '', 6, 6, 49000, 'Dalam proses', '2023-10-10'),
(363, 43, 'SELIMUT', '', 5, 13, 32000, 'Dalam proses', '2023-10-15'),
(364, 38, 'EXPCLS', '', 3, 12, 36500, 'Dalam proses', '2023-10-20'),
(365, 20, 'REGRCLS', '', 3, 9, 48000, 'Dalam proses', '2023-10-25'),
(366, 6, 'SEPATU', '', 2, 13, 33000, 'Dalam proses', '2023-11-01'),
(367, 39, 'EXPSTR', '', 4, 4, 42000, 'Dalam proses', '2023-11-05'),
(368, 23, 'SPREI', '', 3, 8, 16500, 'Dalam proses', '2023-11-10'),
(369, 16, 'TAS', '', 2, 12, 21500, 'Dalam proses', '2023-11-15'),
(370, 48, 'REGRSTR', '', 1, 7, 50500, 'Dalam proses', '2023-11-20'),
(371, 43, 'EXPCLS', '', 5, 8, 11000, 'Dalam proses', '2023-11-25'),
(372, 30, 'TAS', '', 6, 13, 18500, 'Dalam proses', '2023-12-01'),
(373, 24, 'SEPATU', '', 5, 12, 15000, 'Dalam proses', '2023-12-05'),
(374, 17, 'REGRCLS', '', 3, 14, 19500, 'Dalam proses', '2023-09-05'),
(375, 18, 'REGRSTR', '', 2, 11, 11000, 'Dalam proses', '2023-09-10'),
(376, 1, 'SPREI', '', 1, 16, 58500, 'Dalam proses', '2023-09-15'),
(377, 42, 'SELIMUT', '', 2, 8, 53500, 'Dalam proses', '2023-09-20'),
(378, 45, 'EXPCLS', '', 5, 4, 43000, 'Dalam proses', '2023-09-25'),
(379, 36, 'TAS', '', 4, 8, 46500, 'Dalam proses', '2023-10-01'),
(380, 14, 'REGRCLS', '', 2, 14, 52000, 'Dalam proses', '2023-10-05'),
(381, 33, 'EXPSTR', '', 4, 8, 21000, 'Dalam proses', '2023-10-10'),
(382, 37, 'SELIMUT', '', 1, 14, 28500, 'Dalam proses', '2023-10-15'),
(383, 9, 'EXPCLS', '', 5, 2, 25500, 'Dalam proses', '2023-10-20'),
(384, 14, 'REGRCLS', '', 3, 2, 22500, 'Dalam proses', '2023-10-25'),
(385, 1, 'SEPATU', '', 2, 7, 19500, 'Dalam proses', '2023-11-01'),
(386, 36, 'EXPSTR', '', 6, 10, 13500, 'Dalam proses', '2023-11-05'),
(387, 31, 'SPREI', '', 5, 4, 34000, 'Dalam proses', '2023-11-10'),
(388, 44, 'TAS', '', 5, 11, 56500, 'Dalam proses', '2023-11-15'),
(389, 26, 'REGRSTR', '', 5, 6, 30000, 'Dalam proses', '2023-11-20'),
(390, 47, 'EXPCLS', '', 3, 5, 14500, 'Dalam proses', '2023-11-25'),
(391, 32, 'TAS', '', 5, 9, 17500, 'Dalam proses', '2023-12-01'),
(392, 1, 'SEPATU', '', 4, 1, 21500, 'Dalam proses', '2023-12-05'),
(393, 5, 'REGRCLS', '', 5, 9, 30000, 'Dalam proses', '2023-09-05'),
(394, 18, 'REGRSTR', '', 4, 11, 42500, 'Dalam proses', '2023-09-10'),
(395, 14, 'SPREI', '', 3, 4, 56500, 'Dalam proses', '2023-09-15'),
(396, 47, 'SELIMUT', '', 5, 7, 31500, 'Dalam proses', '2023-09-20'),
(397, 49, 'EXPCLS', '', 4, 11, 48500, 'Dalam proses', '2023-09-25'),
(398, 42, 'TAS', '', 5, 14, 42000, 'Dalam proses', '2023-10-01'),
(399, 31, 'REGRCLS', '', 2, 15, 20500, 'Dalam proses', '2023-10-05'),
(400, 11, 'EXPSTR', '', 3, 6, 39000, 'Dalam proses', '2023-10-10'),
(401, 41, 'SELIMUT', '', 3, 3, 42500, 'Dalam proses', '2023-10-15'),
(402, 45, 'EXPCLS', '', 4, 14, 51500, 'Dalam proses', '2023-10-20'),
(403, 26, 'REGRCLS', '', 1, 9, 45000, 'Dalam proses', '2023-10-25'),
(404, 44, 'SEPATU', '', 2, 5, 56000, 'Dalam proses', '2023-11-01'),
(405, 36, 'EXPSTR', '', 5, 14, 58500, 'Dalam proses', '2023-11-05'),
(406, 11, 'SPREI', '', 2, 3, 21500, 'Dalam proses', '2023-11-10'),
(407, 36, 'TAS', '', 5, 15, 20500, 'Dalam proses', '2023-11-15'),
(408, 13, 'REGRSTR', '', 4, 4, 18000, 'Dalam proses', '2023-11-20'),
(409, 11, 'EXPCLS', '', 4, 7, 19000, 'Dalam proses', '2023-11-25'),
(410, 34, 'TAS', '', 5, 2, 52500, 'Dalam proses', '2023-12-01'),
(411, 2, 'SEPATU', '', 4, 1, 19000, 'Dalam proses', '2023-12-05'),
(412, 44, 'REGRCLS', '', 5, 5, 57000, 'Dalam proses', '2023-09-05'),
(413, 47, 'REGRSTR', '', 5, 4, 45500, 'Dalam proses', '2023-09-10'),
(414, 43, 'SPREI', '', 2, 3, 29000, 'Dalam proses', '2023-09-15'),
(415, 21, 'SELIMUT', '', 5, 1, 36000, 'Dalam proses', '2023-09-20'),
(416, 28, 'EXPCLS', '', 2, 2, 54000, 'Dalam proses', '2023-09-25'),
(417, 11, 'TAS', '', 3, 8, 13000, 'Dalam proses', '2023-10-01'),
(418, 45, 'REGRCLS', '', 2, 8, 49500, 'Dalam proses', '2023-10-05'),
(419, 23, 'EXPSTR', '', 5, 3, 53000, 'Dalam proses', '2023-10-10'),
(420, 48, 'SELIMUT', '', 2, 15, 24000, 'Dalam proses', '2023-10-15'),
(421, 27, 'EXPCLS', '', 5, 8, 59000, 'Dalam proses', '2023-10-20'),
(422, 21, 'REGRCLS', '', 2, 6, 24000, 'Dalam proses', '2023-10-25'),
(423, 20, 'SEPATU', '', 2, 8, 57500, 'Dalam proses', '2023-11-01'),
(424, 16, 'EXPSTR', '', 4, 9, 48000, 'Dalam proses', '2023-11-05'),
(425, 3, 'SPREI', '', 6, 9, 59500, 'Dalam proses', '2023-11-10'),
(426, 12, 'TAS', '', 2, 6, 56500, 'Dalam proses', '2023-11-15'),
(427, 35, 'REGRSTR', '', 4, 4, 57500, 'Dalam proses', '2023-11-20'),
(428, 9, 'EXPCLS', '', 1, 10, 53500, 'Dalam proses', '2023-11-25'),
(429, 28, 'TAS', '', 2, 16, 40000, 'Dalam proses', '2023-12-01'),
(430, 51, 'SEPATU', '', 2, 2, 41000, 'Dalam proses', '2023-12-05'),
(431, 46, 'REGRCLS', '', 5, 14, 17500, 'Dalam proses', '2023-09-05'),
(432, 6, 'REGRSTR', '', 2, 6, 28000, 'Dalam proses', '2023-09-10'),
(433, 36, 'SPREI', '', 3, 16, 43500, 'Dalam proses', '2023-09-15'),
(434, 19, 'SELIMUT', '', 5, 14, 15000, 'Dalam proses', '2023-09-20'),
(435, 39, 'EXPCLS', '', 4, 8, 48500, 'Dalam proses', '2023-09-25'),
(436, 19, 'TAS', '', 4, 10, 23500, 'Dalam proses', '2023-10-01'),
(437, 30, 'REGRCLS', '', 2, 16, 33500, 'Dalam proses', '2023-10-05'),
(438, 19, 'EXPSTR', '', 3, 14, 20000, 'Dalam proses', '2023-10-10'),
(439, 18, 'SELIMUT', '', 2, 12, 24000, 'Dalam proses', '2023-10-15'),
(440, 6, 'EXPCLS', '', 4, 3, 35000, 'Dalam proses', '2023-10-20'),
(441, 7, 'REGRCLS', '', 2, 4, 48000, 'Dalam proses', '2023-10-25'),
(442, 7, 'SEPATU', '', 3, 4, 14000, 'Dalam proses', '2023-11-01'),
(443, 39, 'EXPSTR', '', 4, 13, 19000, 'Dalam proses', '2023-11-05'),
(444, 22, 'SPREI', '', 4, 13, 23000, 'Dalam proses', '2023-11-10'),
(445, 41, 'TAS', '', 2, 14, 33000, 'Dalam proses', '2023-11-15'),
(446, 37, 'REGRSTR', '', 2, 2, 38500, 'Dalam proses', '2023-11-20'),
(447, 32, 'EXPCLS', '', 3, 4, 46000, 'Dalam proses', '2023-11-25'),
(448, 50, 'TAS', '', 5, 3, 14000, 'Dalam proses', '2023-12-01'),
(449, 4, 'SEPATU', '', 2, 6, 25500, 'Dalam proses', '2023-12-05'),
(450, 28, 'REGRCLS', '', 5, 4, 50500, 'Dalam proses', '2023-09-05'),
(451, 18, 'REGRSTR', '', 3, 9, 49500, 'Dalam proses', '2023-09-10'),
(452, 14, 'SPREI', '', 6, 4, 57000, 'Dalam proses', '2023-09-15'),
(453, 5, 'SELIMUT', '', 4, 14, 32000, 'Dalam proses', '2023-09-20'),
(454, 30, 'EXPCLS', '', 4, 7, 59000, 'Dalam proses', '2023-09-25'),
(455, 38, 'TAS', '', 5, 10, 42500, 'Dalam proses', '2023-10-01'),
(456, 25, 'REGRCLS', '', 3, 13, 38000, 'Dalam proses', '2023-10-05'),
(457, 23, 'EXPSTR', '', 4, 7, 28500, 'Dalam proses', '2023-10-10'),
(458, 31, 'SELIMUT', '', 6, 13, 20000, 'Dalam proses', '2023-10-15'),
(459, 29, 'EXPCLS', '', 2, 11, 38500, 'Dalam proses', '2023-10-20'),
(460, 40, 'REGRCLS', '', 2, 12, 13000, 'Dalam proses', '2023-10-25'),
(461, 2, 'SEPATU', '', 6, 10, 19000, 'Dalam proses', '2023-11-01'),
(462, 5, 'EXPSTR', '', 6, 7, 13500, 'Dalam proses', '2023-11-05'),
(463, 11, 'SPREI', '', 5, 9, 19500, 'Dalam proses', '2023-11-10'),
(464, 16, 'TAS', '', 6, 12, 56000, 'Dalam proses', '2023-11-15'),
(465, 19, 'REGRSTR', '', 1, 5, 12500, 'Dalam proses', '2023-11-20'),
(466, 25, 'EXPCLS', '', 2, 12, 56500, 'Dalam proses', '2023-11-25'),
(467, 23, 'TAS', '', 3, 14, 13000, 'Dalam proses', '2023-12-01'),
(468, 33, 'SEPATU', '', 1, 3, 48000, 'Dalam proses', '2023-12-05'),
(469, 14, 'REGRCLS', '', 1, 10, 42000, 'Dalam proses', '2023-09-05'),
(470, 23, 'REGRSTR', '', 3, 5, 24500, 'Dalam proses', '2023-09-10'),
(471, 35, 'SPREI', '', 4, 13, 25000, 'Dalam proses', '2023-09-15'),
(472, 3, 'SELIMUT', '', 3, 8, 30500, 'Dalam proses', '2023-09-20'),
(473, 30, 'EXPCLS', '', 5, 14, 19000, 'Dalam proses', '2023-09-25'),
(474, 14, 'TAS', '', 5, 3, 26000, 'Dalam proses', '2023-10-01'),
(475, 9, 'REGRCLS', '', 5, 13, 27500, 'Dalam proses', '2023-10-05'),
(476, 20, 'EXPSTR', '', 6, 6, 12000, 'Dalam proses', '2023-10-10'),
(477, 5, 'SELIMUT', '', 3, 9, 45500, 'Dalam proses', '2023-10-15'),
(478, 42, 'EXPCLS', '', 6, 9, 41000, 'Dalam proses', '2023-10-20'),
(479, 26, 'REGRCLS', '', 4, 11, 31500, 'Dalam proses', '2023-10-25'),
(480, 6, 'SEPATU', '', 2, 2, 40000, 'Dalam proses', '2023-11-01'),
(481, 36, 'EXPSTR', '', 5, 11, 15500, 'Dalam proses', '2023-11-05'),
(482, 24, 'SPREI', '', 6, 9, 44500, 'Dalam proses', '2023-11-10'),
(483, 42, 'TAS', '', 2, 2, 60000, 'Dalam proses', '2023-11-15'),
(484, 39, 'REGRSTR', '', 5, 13, 37000, 'Dalam proses', '2023-11-20'),
(485, 15, 'EXPCLS', '', 5, 5, 60000, 'Dalam proses', '2023-11-25'),
(486, 5, 'TAS', '', 3, 12, 31500, 'Dalam proses', '2023-12-01'),
(487, 48, 'SEPATU', '', 3, 5, 11000, 'Dalam proses', '2023-12-05'),
(488, 17, 'REGRCLS', '', 4, 14, 49000, 'Dalam proses', '2023-09-05'),
(489, 9, 'REGRSTR', '', 4, 3, 13500, 'Dalam proses', '2023-09-10'),
(490, 46, 'SPREI', '', 3, 16, 58500, 'Dalam proses', '2023-09-15'),
(491, 41, 'SELIMUT', '', 2, 7, 35500, 'Dalam proses', '2023-09-20'),
(492, 16, 'EXPCLS', '', 1, 3, 48500, 'Dalam proses', '2023-09-25'),
(493, 16, 'TAS', '', 2, 6, 11000, 'Dalam proses', '2023-10-01'),
(494, 50, 'REGRCLS', '', 5, 8, 42000, 'Dalam proses', '2023-10-05'),
(495, 41, 'EXPSTR', '', 2, 5, 13000, 'Dalam proses', '2023-10-10'),
(496, 18, 'SELIMUT', '', 4, 14, 45500, 'Dalam proses', '2023-10-15'),
(497, 43, 'EXPCLS', '', 1, 14, 19000, 'Dalam proses', '2023-10-20'),
(498, 10, 'REGRCLS', '', 3, 10, 48500, 'Dalam proses', '2023-10-25'),
(499, 50, 'SEPATU', '', 4, 15, 56000, 'Dalam proses', '2023-11-01'),
(500, 39, 'EXPSTR', '', 2, 5, 60500, 'Dalam proses', '2023-11-05'),
(501, 11, 'SPREI', '', 6, 5, 34500, 'Dalam proses', '2023-11-10'),
(502, 28, 'TAS', '', 2, 12, 58500, 'Dalam proses', '2023-11-15'),
(503, 27, 'REGRSTR', '', 5, 3, 35000, 'Dalam proses', '2023-11-20'),
(504, 2, 'EXPCLS', '', 4, 1, 26500, 'Dalam proses', '2023-11-25'),
(505, 25, 'TAS', '', 3, 13, 36500, 'Dalam proses', '2023-12-01'),
(506, 16, 'SEPATU', '', 6, 10, 33000, 'Dalam proses', '2023-12-05'),
(507, 18, 'REGRCLS', '', 3, 15, 34000, 'Dalam proses', '2023-09-05'),
(508, 29, 'REGRSTR', '', 3, 7, 45500, 'Dalam proses', '2023-09-10'),
(509, 17, 'SPREI', '', 3, 9, 20500, 'Dalam proses', '2023-09-15'),
(510, 19, 'SELIMUT', '', 2, 3, 52000, 'Dalam proses', '2023-09-20'),
(511, 42, 'EXPCLS', '', 4, 8, 35500, 'Dalam proses', '2023-09-25'),
(512, 10, 'TAS', '', 3, 5, 18500, 'Dalam proses', '2023-10-01'),
(513, 5, 'REGRCLS', '', 5, 4, 27500, 'Dalam proses', '2023-10-05'),
(514, 7, 'EXPSTR', '', 4, 9, 56500, 'Dalam proses', '2023-10-10'),
(515, 51, 'SELIMUT', '', 2, 3, 12500, 'Dalam proses', '2023-10-15'),
(516, 40, 'EXPCLS', '', 5, 8, 18500, 'Dalam proses', '2023-10-20'),
(517, 16, 'REGRCLS', '', 1, 8, 13500, 'Dalam proses', '2023-10-25'),
(518, 48, 'SEPATU', '', 4, 13, 35500, 'Dalam proses', '2023-11-01'),
(519, 3, 'EXPSTR', '', 4, 6, 41000, 'Dalam proses', '2023-11-05'),
(520, 3, 'SPREI', '', 3, 12, 31500, 'Dalam proses', '2023-11-10'),
(521, 50, 'TAS', '', 4, 4, 21500, 'Dalam proses', '2023-11-15'),
(522, 23, 'REGRSTR', '', 4, 7, 30000, 'Dalam proses', '2023-11-20'),
(523, 38, 'EXPCLS', '', 3, 5, 54500, 'Dalam proses', '2023-11-25'),
(524, 29, 'TAS', '', 2, 5, 52500, 'Dalam proses', '2023-12-01'),
(525, 18, 'SEPATU', '', 2, 2, 40000, 'Dalam proses', '2023-12-05');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id_barang` char(5) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `jumlah_barang` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id_barang`, `nama_barang`, `jumlah_barang`) VALUES
('A001', 'Selang Air', 45),
('B001', 'Sikat Cuci', 60),
('B002', 'Ember', 120),
('B003', 'Pel', 200),
('B004', 'Sapu', 30),
('B005', 'Pengharum Ruangan', 40),
('B006', 'Tissue', 25),
('B007', 'Botol Plastik', 90),
('D001', 'Deterjen Cair', 100),
('D002', 'Softener', 50),
('D003', 'Pewangi Pakaian', 75),
('F001', 'Lemari Pakaian', 100),
('G001', 'Gantungan Baju', 80),
('G002', 'Gelombang Udara', 12),
('H001', 'Handuk', 15),
('K001', 'Kain Lap', 80),
('K002', 'Keran Air', 15),
('K003', 'Kursi Lipat', 5),
('L001', 'Lampu Ruangan', 30),
('M001', 'Mesin', 8),
('P001', 'Botol Parfum', 20),
('S001', 'Sprei', 70),
('S002', 'Pillowcase', 25),
('S003', 'Setrika', 10),
('S004', 'Sabun Cuci', 8),
('S005', 'Sikat Sepatu', 10);

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` mediumint(5) NOT NULL,
  `laporan` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `laporan`) VALUES
(1, NULL),
(2, NULL),
(3, NULL),
(4, NULL),
(5, NULL),
(6, NULL),
(7, NULL),
(8, NULL),
(9, NULL),
(10, NULL),
(11, NULL),
(12, NULL),
(13, NULL),
(14, NULL),
(15, NULL),
(16, NULL),
(17, NULL),
(18, NULL),
(19, NULL),
(20, NULL),
(21, NULL),
(22, NULL),
(23, NULL),
(24, NULL),
(25, NULL),
(26, NULL),
(27, NULL),
(28, NULL),
(29, NULL),
(30, NULL),
(31, NULL),
(32, NULL),
(33, NULL),
(34, NULL),
(35, NULL),
(36, NULL),
(37, NULL),
(38, NULL),
(39, NULL),
(40, NULL),
(41, NULL),
(42, NULL),
(43, NULL),
(44, NULL),
(45, NULL),
(46, NULL),
(47, NULL),
(48, NULL),
(49, NULL),
(50, NULL),
(51, NULL),
(52, NULL),
(53, NULL),
(54, NULL),
(55, NULL),
(56, NULL),
(57, NULL),
(58, NULL),
(59, NULL),
(60, NULL),
(61, NULL),
(62, NULL),
(63, NULL),
(64, NULL),
(65, NULL),
(66, NULL),
(67, NULL),
(68, NULL),
(69, NULL),
(70, NULL),
(71, NULL),
(72, NULL),
(73, NULL),
(74, NULL),
(75, NULL),
(76, NULL),
(77, NULL),
(78, NULL),
(79, NULL),
(80, NULL),
(81, NULL),
(82, NULL),
(83, NULL),
(84, NULL),
(85, NULL),
(86, NULL),
(87, NULL),
(88, NULL),
(89, NULL),
(90, NULL),
(91, NULL),
(92, NULL),
(93, NULL),
(94, NULL),
(95, NULL),
(96, NULL),
(97, NULL),
(98, NULL),
(99, NULL),
(100, NULL),
(101, NULL),
(102, NULL),
(103, NULL),
(104, NULL),
(105, NULL),
(106, NULL),
(107, NULL),
(108, NULL),
(109, NULL),
(110, NULL),
(111, NULL),
(112, NULL),
(113, NULL),
(114, NULL),
(115, NULL),
(116, NULL),
(117, NULL),
(118, NULL),
(119, NULL),
(120, NULL),
(121, NULL),
(122, NULL),
(123, NULL),
(124, NULL),
(125, NULL),
(126, NULL),
(127, NULL),
(128, NULL),
(129, NULL),
(130, NULL),
(131, NULL),
(132, NULL),
(133, NULL),
(134, NULL),
(135, NULL),
(136, NULL),
(137, NULL),
(138, NULL),
(139, NULL),
(140, NULL),
(141, NULL),
(142, NULL),
(143, NULL),
(144, NULL),
(145, NULL),
(146, NULL),
(147, NULL),
(148, NULL),
(149, NULL),
(150, NULL),
(151, NULL),
(152, NULL),
(153, NULL),
(154, NULL),
(155, NULL),
(156, NULL),
(157, NULL),
(158, NULL),
(159, NULL),
(160, NULL),
(161, NULL),
(162, NULL),
(163, NULL),
(164, NULL),
(165, NULL),
(166, NULL),
(167, NULL),
(168, NULL),
(169, NULL),
(170, NULL),
(171, NULL),
(172, NULL),
(173, NULL),
(174, NULL),
(175, NULL),
(176, NULL),
(177, NULL),
(178, NULL),
(179, NULL),
(180, NULL),
(181, NULL),
(182, NULL),
(183, NULL),
(184, NULL),
(185, NULL),
(186, NULL),
(187, NULL),
(188, NULL),
(189, NULL),
(190, NULL),
(191, NULL),
(192, NULL),
(193, NULL),
(194, NULL),
(195, NULL),
(196, NULL),
(197, NULL),
(198, NULL),
(199, NULL),
(200, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `id_layanan` char(7) NOT NULL,
  `nama_layanan` varchar(30) NOT NULL,
  `harga/2kg` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`id_layanan`, `nama_layanan`, `harga/2kg`) VALUES
('BONEKA', 'Boneka', 15000),
('EXPCL', 'Ekpress Cuci Lipat', 7000),
('EXPCLS', 'Express Cuci Setriks', 8000),
('EXPSTR', 'Express Setrika', 7000),
('REGRCL', 'Reguler Cuci Lipat', 4000),
('REGRCLS', 'Reguler Cuci Setrika', 5000),
('REGRSTR', 'Reguler Setrika', 4000),
('SELIMUT', 'Selimut', 15000),
('SEPATU', 'Sepatu', 20000),
('SPREI', 'Sprei', 10000),
('TAS', 'Tas', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` mediumint(5) NOT NULL,
  `nama_pengeluaran` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `biaya` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `nama_pengeluaran`, `tanggal`, `biaya`) VALUES
(1, 'Beli Bahan Kimia', '2023-11-22', 550000),
(2, 'Sewa Mesin Cuci', '2023-11-19', 1100000),
(3, 'Gaji Karyawan', '2023-11-15', 3200000),
(4, 'Pembelian Peralatan', '2023-11-12', 850000),
(5, 'Beli Kemasan', '2023-11-09', 420000),
(6, 'Listrik dan Air', '2023-11-05', 750000),
(7, 'Transportasi', '2023-11-01', 620000),
(8, 'Pajak', '2023-10-28', 1250000),
(9, 'Beli Pakaian Promosi', '2023-10-24', 950000),
(10, 'Maintenance Mesin', '2023-10-21', 1550000),
(11, 'Beli Bahan Kimia', '2023-10-18', 550000),
(12, 'Sewa Mesin Cuci', '2023-10-15', 1100000),
(13, 'Gaji Karyawan', '2023-10-11', 3200000),
(14, 'Pembelian Peralatan', '2023-10-08', 850000),
(15, 'Beli Kemasan', '2023-10-04', 420000),
(16, 'Listrik dan Air', '2023-09-30', 750000),
(17, 'Transportasi', '2023-09-27', 620000),
(18, 'Pajak', '2023-09-23', 1250000),
(19, 'Beli Pakaian Promosi', '2023-09-20', 950000),
(20, 'Maintenance Mesin', '2023-09-16', 1550000),
(21, 'Beli Bahan Kimia', '2023-09-12', 550000),
(22, 'Sewa Mesin Cuci', '2023-09-08', 1100000),
(23, 'Gaji Karyawan', '2023-09-05', 3200000),
(24, 'Pembelian Peralatan', '2023-08-31', 850000),
(25, 'Beli Kemasan', '2023-08-27', 420000),
(26, 'Listrik dan Air', '2023-08-24', 750000),
(27, 'Transportasi', '2023-08-20', 620000),
(28, 'Pajak', '2023-08-16', 1250000),
(29, 'Beli Pakaian Promosi', '2023-08-13', 950000),
(30, 'Maintenance Mesin', '2023-08-09', 1550000),
(31, 'Beli Bahan Kimia', '2023-08-06', 550000),
(32, 'Sewa Mesin Cuci', '2023-08-02', 1100000),
(33, 'Gaji Karyawan', '2023-07-29', 3200000),
(34, 'Pembelian Peralatan', '2023-07-25', 850000),
(35, 'Beli Kemasan', '2023-07-22', 420000),
(36, 'Listrik dan Air', '2023-07-18', 750000),
(37, 'Transportasi', '2023-07-15', 620000),
(38, 'Pajak', '2023-07-11', 1250000),
(39, 'Beli Pakaian Promosi', '2023-07-08', 950000),
(40, 'Maintenance Mesin', '2023-07-04', 1550000),
(41, 'Beli Bahan Kimia', '2023-07-01', 550000),
(42, 'Sewa Mesin Cuci', '2023-06-27', 1100000),
(43, 'Gaji Karyawan', '2023-06-24', 3200000),
(44, 'Pembelian Peralatan', '2023-06-20', 850000),
(45, 'Beli Kemasan', '2023-06-17', 420000),
(46, 'Listrik dan Air', '2023-06-13', 750000),
(47, 'Transportasi', '2023-06-10', 620000),
(48, 'Pajak', '2023-06-06', 1250000),
(49, 'Beli Pakaian Promosi', '2023-06-03', 950000),
(50, 'Maintenance Mesin', '2023-05-30', 1550000);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `no_pesanan` mediumint(8) NOT NULL,
  `id_customer` mediumint(6) NOT NULL,
  `tgl_pesanan` datetime NOT NULL DEFAULT current_timestamp(),
  `total_harga` int(6) NOT NULL,
  `mesin` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`no_pesanan`, `id_customer`, `tgl_pesanan`, `total_harga`, `mesin`) VALUES
(1, 1, '2023-05-02 10:00:00', 50000, 'M1'),
(2, 2, '2023-06-15 12:30:00', 75000, 'M2'),
(3, 3, '2023-07-20 09:45:00', 60000, 'M3'),
(4, 4, '2023-08-05 15:20:00', 45000, 'M4'),
(5, 5, '2023-09-12 08:00:00', 80000, 'M5'),
(6, 6, '2023-10-18 14:15:00', 70000, 'M6'),
(7, 7, '2023-11-01 11:30:00', 55000, 'M7'),
(8, 8, '2023-11-10 16:45:00', 90000, 'M8'),
(9, 9, '2023-05-21 09:00:00', 65000, 'M1'),
(10, 10, '2023-06-08 13:10:00', 75000, 'M2'),
(11, 11, '2023-07-30 10:30:00', 70000, 'M3'),
(12, 12, '2023-08-15 15:45:00', 60000, 'M4'),
(13, 13, '2023-09-23 14:00:00', 85000, 'M5'),
(14, 14, '2023-10-05 11:15:00', 50000, 'M6'),
(15, 15, '2023-11-12 17:30:00', 95000, 'M7'),
(16, 16, '2023-11-22 09:55:00', 70000, 'M8'),
(17, 17, '2023-06-03 13:20:00', 55000, 'M1'),
(18, 18, '2023-07-14 18:45:00', 80000, 'M2'),
(19, 19, '2023-08-28 12:40:00', 65000, 'M3'),
(20, 20, '2023-09-05 14:30:00', 60000, 'M4'),
(21, 11, '2023-05-02 10:00:00', 50000, 'M5'),
(22, 5, '2023-06-15 12:30:00', 75000, 'M2'),
(23, 17, '2023-07-20 09:45:00', 60000, 'M6'),
(24, 8, '2023-08-05 15:20:00', 45000, 'M4'),
(25, 14, '2023-09-12 08:00:00', 80000, 'M3'),
(26, 3, '2023-10-18 14:15:00', 70000, 'M1'),
(27, 9, '2023-11-01 11:30:00', 55000, 'M7'),
(28, 20, '2023-11-10 16:45:00', 90000, 'M2'),
(29, 16, '2023-05-21 09:00:00', 65000, 'M4'),
(30, 6, '2023-06-08 13:10:00', 75000, 'M5'),
(31, 18, '2023-07-30 10:30:00', 70000, 'M6'),
(32, 13, '2023-08-15 15:45:00', 60000, 'M7'),
(33, 7, '2023-09-23 14:00:00', 85000, 'M1'),
(34, 15, '2023-10-05 11:15:00', 50000, 'M2'),
(35, 2, '2023-11-12 17:30:00', 95000, 'M3'),
(36, 10, '2023-11-22 09:55:00', 70000, 'M4'),
(37, 4, '2023-06-03 13:20:00', 55000, 'M5'),
(38, 19, '2023-07-14 18:45:00', 80000, 'M6'),
(39, 12, '2023-08-28 12:40:00', 65000, 'M7'),
(40, 1, '2023-09-05 14:30:00', 60000, 'M1'),
(41, 8, '2023-11-23 16:00:00', 70000, 'M2'),
(42, 5, '2023-06-11 09:45:00', 85000, 'M3'),
(43, 13, '2023-07-29 11:30:00', 60000, 'M4'),
(44, 20, '2023-08-04 14:15:00', 75000, 'M5'),
(45, 9, '2023-09-18 10:20:00', 50000, 'M6'),
(46, 16, '2023-10-01 15:35:00', 90000, 'M7'),
(47, 11, '2023-11-11 16:50:00', 65000, 'M1'),
(48, 14, '2023-11-19 09:15:00', 75000, 'M2'),
(49, 7, '2023-11-28 11:30:00', 70000, 'M3'),
(50, 3, '2023-05-06 15:45:00', 60000, 'M4'),
(51, 19, '2023-06-14 14:00:00', 85000, 'M5');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(8) NOT NULL,
  `id_detail` int(8) NOT NULL,
  `id_pengeluaran` mediumint(5) NOT NULL,
  `id_laporan` mediumint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `pesanan` (`no_pesanan`),
  ADD KEY `layanan` (`id_layanan`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`no_pesanan`),
  ADD KEY `customer` (`id_customer`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `laporan_transaksi` (`id_laporan`),
  ADD KEY `idpengeluaran` (`id_pengeluaran`),
  ADD KEY `fk_idtransaksi` (`id_detail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` mediumint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  MODIFY `id_detail` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` mediumint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` mediumint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `no_pesanan` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(8) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `layanan` FOREIGN KEY (`id_layanan`) REFERENCES `layanan` (`id_layanan`),
  ADD CONSTRAINT `pesanan` FOREIGN KEY (`no_pesanan`) REFERENCES `pesanan` (`no_pesanan`);

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `id_customerrr` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_idtransaksi` FOREIGN KEY (`id_detail`) REFERENCES `detail_pesanan` (`id_detail`),
  ADD CONSTRAINT `idpengeluaran` FOREIGN KEY (`id_pengeluaran`) REFERENCES `pengeluaran` (`id_pengeluaran`),
  ADD CONSTRAINT `laporan_transaksi` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id_laporan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
