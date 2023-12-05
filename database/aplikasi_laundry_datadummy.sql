-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Des 2023 pada 02.27
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

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
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` mediumint(6) NOT NULL,
  `nama_customer` varchar(30) NOT NULL,
  `alamat_customer` varchar(50) NOT NULL,
  `no_hp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `alamat_customer`, `no_hp`) VALUES
(1, 'Budi Santoso', 'Jl. Merdeka No. 10', '081234567890'),
(2, 'Dewi Rahayu', 'Jl. Mawar No. 15', '081345678901'),
(3, 'Agus Wibowo', 'Jl. Cendrawasih No. 25', '082123456789'),
(4, 'Rini Puspita', 'Jl. Kenanga No. 200', '089876543210'),
(5, 'Siti Hidayat', 'Jl. Dahlia No. 42', '087654321098'),
(6, 'Joko Yuliani', 'Jl. Anggrek No. 75', '081112233445'),
(7, 'Linda Pratama', 'Jl. Mawar No. 8', '088877766655'),
(8, 'Adi Sari', 'Jl. Cendrawasih No. 33', '081998877665'),
(9, 'Rudi Putra', 'Jl. Dahlia No. 60', '082345678901'),
(10, 'Ani Fitri', 'Jl. Anggrek No. 19', '081223344556'),
(11, 'Budi Santoso', 'Jl. Merdeka No. 10', '081234567890'),
(12, 'Dewi Rahayu', 'Jl. Mawar No. 15', '081345678901'),
(13, 'Agus Wibowo', 'Jl. Cendrawasih No. 25', '082123456789'),
(14, 'Yanto Prabowo', 'Jl. Anggrek No. 31', '081334455667'),
(15, 'Sinta Harahap', 'Jl. Melati No. 22', '082667788899'),
(16, 'Indra Permana', 'Jl. Kenanga No. 44', '083223344556'),
(17, 'Dewi Wijaya', 'Jl. Mawar No. 87', '081554433221'),
(18, 'Yudi Setiawan', 'Jl. Cendrawasih No. 50', '088876543210'),
(19, 'Mira Handayani', 'Jl. Anggrek No. 73', '082112233445'),
(20, 'Rudi Haryanto', 'Jl. Dahlia No. 15', '081999888777'),
(21, 'Nina Puspitasari', 'Jl. Melati No. 5', '087765432109'),
(22, 'Ahmad Syahputra', 'Jl. Kenanga No. 62', '081234567890'),
(23, 'Siska Indah', 'Jl. Mawar No. 28', '085432109876'),
(24, 'Budi Hermawan', 'Jl. Dahlia No. 91', '084567890123'),
(25, 'Rina Sari', 'Jl. Cendrawasih No. 77', '089112233445'),
(26, 'Dian Pratama', 'Jl. Anggrek No. 12', '083334455667'),
(27, 'Agung Wijaya', 'Jl. Melati No. 37', '081667788899'),
(28, 'Siti Hartini', 'Jl. Kenanga No. 49', '082223344556'),
(29, 'Budi Rahayu', 'Jl. Kenanga No. 95', '083456789012'),
(30, 'Eka Kusuma', 'Jl. Mawar No. 14', '082112233445'),
(31, 'Joni Wijaya', 'Jl. Kenanga No. 67', '081334455667'),
(32, 'Sari Purnama', 'Jl. Dahlia No. 29', '084567890123'),
(33, 'Rizal Perdana', 'Jl. Anggrek No. 53', '083223344556'),
(34, 'Dewi Anggraini', 'Jl. Melati No. 18', '081999888777'),
(35, 'Adi Prabowo', 'Jl. Cendrawasih No. 81', '081667788899'),
(36, 'Maya Sari', 'Jl. Kenanga No. 43', '087765432109'),
(37, 'Budi Hartanto', 'Jl. Mawar No. 8', '082223344556'),
(38, 'Siska Cahyani', 'Jl. Dahlia No. 64', '081234567890'),
(39, 'Rendra Saputra', 'Jl. Anggrek No. 22', '088876543210'),
(40, 'Nina Permata', 'Jl. Melati No. 41', '083334455667'),
(41, 'Wawan Setiawan', 'Jl. Kenanga No. 56', '085432109876'),
(42, 'Rina Sari', 'Jl. Cendrawasih No. 72', '089112233445'),
(43, 'Indra Wijaya', 'Jl. Dahlia No. 11', '081223344556'),
(44, 'Mira Putri', 'Jl. Mawar No. 33', '083998877665'),
(45, 'Rudi Hermawan', 'Jl. Anggrek No. 69', '081554433221'),
(46, 'Dewi Yulianti', 'Jl. Melati No. 26', '082123456789'),
(47, 'Fahmi Pratama', 'Jl. Kenanga No. 50', '081998877665'),
(48, 'Sinta Puspita', 'Jl. Cendrawasih No. 90', '083334455667'),
(49, 'Rizki Hidayat', 'Jl. Dahlia No. 15', '082998877665'),
(50, 'Nia Wijayanti', 'Jl. Anggrek No. 77', '087654321098'),
(51, 'Rini Puspita', 'Jl. Kenanga No. 200', '089876543210'),
(52, 'Dian Cahyani', 'Jl. Kenanga No. 21', '081998877665'),
(53, 'Rian Prasetyo', 'Jl. Dahlia No. 48', '083334455667'),
(54, 'Maya Anggraini', 'Jl. Anggrek No. 63', '082112233445'),
(55, 'Rudi Wijaya', 'Jl. Melati No. 36', '081667788899'),
(56, 'Sari Puspita', 'Jl. Cendrawasih No. 91', '087765432109'),
(57, 'Aldi Saputra', 'Jl. Dahlia No. 19', '082998877665'),
(58, 'Nina Permadi', 'Jl. Kenanga No. 54', '081223344556'),
(59, 'Eko Kurniawan', 'Jl. Mawar No. 83', '085432109876'),
(60, 'Dewi Susanti', 'Jl. Anggrek No. 26', '083998877665'),
(61, 'Rian Setiawan', 'Jl. Melati No. 9', '084567890123'),
(62, 'Rina Purnama', 'Jl. Cendrawasih No. 45', '081334455667'),
(63, 'Arief Prabowo', 'Jl. Dahlia No. 68', '082223344556'),
(64, 'Maya Sari', 'Jl. Kenanga No. 32', '083223344556'),
(65, 'Rudi Hermawan', 'Jl. Mawar No. 57', '081999888777'),
(66, 'Eva Wijaya', 'Jl. Anggrek No. 70', '081112233445'),
(67, 'Yudi Setiawan', 'Jl. Melati No. 11', '087654321098'),
(68, 'Siti Rahayu', 'Jl. Dahlia No. 77', '081554433221'),
(69, 'Budi Santoso', 'Jl. Cendrawasih No. 40', '088876543210'),
(70, 'Sinta Pratiwi', 'Jl. Anggrek No. 55', '089112233445'),
(71, 'Roni Setiawan', 'Jl. Melati No. 24', '081667788899'),
(72, 'Dina Handayani', 'Jl. Kenanga No. 37', '082667788899'),
(73, 'Eko Wijaya', 'Jl. Dahlia No. 92', '081234567890'),
(74, 'Nina Purnomo', 'Jl. Anggrek No. 17', '082123456789'),
(75, 'Yanto Prasetyo', 'Jl. Melati No. 31', '089876543210'),
(76, 'Maya Indah', 'Jl. Cendrawasih No. 58', '082998877665'),
(77, 'Rian Hermawan', 'Jl. Dahlia No. 13', '083334455667'),
(78, 'Sari Puspita', 'Jl. Kenanga No. 74', '081223344556'),
(79, 'Rudi Kusuma', 'Jl. Mawar No. 4', '084567890123'),
(80, 'Dina Setiawan', 'Jl. Anggrek No. 87', '081554433221'),
(81, 'Rahayu ', 'Jl. Jawa No 5', '089273452612');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id_detail` int(8) NOT NULL,
  `no_pesanan` mediumint(8) NOT NULL,
  `id_layanan` char(7) NOT NULL,
  `parfum` char(2) DEFAULT NULL,
  `berat` int(2) NOT NULL,
  `jumlah` int(2) NOT NULL,
  `subtotal_harga` int(6) DEFAULT NULL,
  `status` enum('Proses','Selesai','Diambil','') NOT NULL,
  `tgl_selesai` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id_detail`, `no_pesanan`, `id_layanan`, `parfum`, `berat`, `jumlah`, `subtotal_harga`, `status`, `tgl_selesai`) VALUES
(1, 1, 'BONEKA', 'A', 2, 2, 30000, 'Diambil', '2022-01-01'),
(2, 2, 'EXPCL', 'B', 4, 4, 28000, 'Diambil', '2022-01-05'),
(3, 3, 'EXPCLS', 'C', 3, 3, 24000, 'Diambil', '2022-01-10'),
(4, 4, 'EXPSTR', 'A', 1, 1, 7000, 'Diambil', '2022-01-15'),
(5, 5, 'REGRC', 'B', 5, 5, 20000, 'Diambil', '2022-01-20'),
(6, 6, 'REGRCLS', 'C', 2, 2, 10000, 'Diambil', '2022-02-01'),
(7, 7, 'REGRSTR', 'A', 4, 4, 16000, 'Diambil', '2022-02-05'),
(8, 8, 'SELIMUT', 'B', 3, 3, 45000, 'Diambil', '2022-02-10'),
(9, 9, 'SEPATU', 'C', 1, 1, 20000, 'Diambil', '2022-02-15'),
(10, 10, 'SPREI', 'A', 5, 5, 50000, 'Diambil', '2022-02-20'),
(11, 11, 'TAS', 'B', 2, 2, 40000, 'Diambil', '2022-03-01'),
(12, 12, 'BONEKA', 'C', 4, 4, 60000, 'Diambil', '2022-03-05'),
(13, 13, 'EXPCL', 'A', 3, 3, 21000, 'Diambil', '2022-03-10'),
(14, 14, 'EXPCLS', 'B', 1, 1, 8000, 'Diambil', '2022-03-15'),
(15, 15, 'EXPSTR', 'C', 5, 5, 35000, 'Diambil', '2022-03-20'),
(16, 16, 'REGRC', 'A', 2, 2, 8000, 'Diambil', '2022-04-01'),
(17, 17, 'REGRCLS', 'B', 4, 4, 20000, 'Diambil', '2022-04-05'),
(18, 18, 'REGRSTR', 'C', 3, 3, 12000, 'Diambil', '2022-04-10'),
(19, 19, 'SELIMUT', 'A', 1, 1, 15000, 'Diambil', '2022-04-15'),
(20, 20, 'SEPATU', 'B', 5, 5, 100000, 'Diambil', '2022-04-20'),
(21, 21, 'SPREI', 'C', 2, 2, 20000, 'Diambil', '2022-05-01'),
(22, 22, 'TAS', 'A', 4, 4, 80000, 'Diambil', '2022-05-05'),
(23, 23, 'BONEKA', 'B', 3, 3, 45000, 'Diambil', '2022-05-10'),
(24, 24, 'EXPCL', 'C', 1, 1, 7000, 'Diambil', '2022-05-15'),
(25, 25, 'EXPCLS', 'A', 5, 5, 40000, 'Diambil', '2022-05-20'),
(26, 26, 'EXPSTR', 'B', 2, 2, 14000, 'Diambil', '2022-06-01'),
(27, 27, 'REGRC', 'C', 4, 4, 16000, 'Diambil', '2022-06-05'),
(28, 28, 'REGRCLS', 'A', 3, 3, 24000, 'Diambil', '2022-06-10'),
(29, 29, 'REGRSTR', 'B', 1, 1, 4000, 'Diambil', '2022-06-15'),
(30, 30, 'SELIMUT', 'C', 5, 5, 75000, 'Diambil', '2022-06-20'),
(31, 31, 'BONEKA', 'A', 3, 1, 15000, 'Diambil', '2022-07-01'),
(32, 32, 'EXPCL', 'B', 2, 1, 14000, 'Diambil', '2022-07-05'),
(33, 33, 'EXPCLS', 'C', 5, 1, 40000, 'Diambil', '2022-07-10'),
(34, 34, 'EXPSTR', 'A', 4, 1, 28000, 'Diambil', '2022-07-15'),
(35, 35, 'REGRC', 'B', 1, 1, 4000, 'Diambil', '2022-07-20'),
(36, 36, 'REGRCLS', 'C', 3, 1, 15000, 'Diambil', '2022-08-01'),
(37, 37, 'REGRSTR', 'A', 5, 1, 20000, 'Diambil', '2022-08-05'),
(38, 38, 'SELIMUT', 'B', 2, 1, 30000, 'Diambil', '2022-08-10'),
(39, 39, 'SEPATU', 'C', 1, 1, 20000, 'Diambil', '2022-08-15'),
(40, 40, 'SPREI', 'A', 4, 1, 40000, 'Diambil', '2022-08-20'),
(41, 41, 'TAS', 'B', 3, 1, 60000, 'Diambil', '2022-09-01'),
(42, 42, 'BONEKA', 'C', 2, 1, 10000, 'Diambil', '2022-09-05'),
(43, 43, 'EXPCL', 'A', 5, 1, 35000, 'Diambil', '2022-09-10'),
(44, 44, 'EXPCLS', 'B', 1, 1, 5000, 'Diambil', '2022-09-15'),
(45, 45, 'EXPSTR', 'C', 4, 1, 28000, 'Diambil', '2022-09-20'),
(46, 46, 'REGRC', 'A', 3, 1, 12000, 'Diambil', '2022-10-01'),
(47, 47, 'REGRCLS', 'B', 2, 1, 10000, 'Diambil', '2022-10-05'),
(48, 48, 'REGRSTR', 'C', 5, 1, 20000, 'Diambil', '2022-10-10'),
(49, 49, 'SELIMUT', 'A', 4, 1, 60000, 'Diambil', '2022-10-15'),
(50, 50, 'SEPATU', 'B', 1, 1, 20000, 'Diambil', '2022-10-20'),
(51, 51, 'SPREI', 'C', 3, 1, 30000, 'Diambil', '2022-11-01'),
(52, 52, 'TAS', 'A', 2, 1, 40000, 'Diambil', '2022-11-05'),
(53, 53, 'BONEKA', 'B', 5, 1, 25000, 'Diambil', '2022-11-10'),
(54, 54, 'EXPCL', 'C', 1, 1, 7000, 'Diambil', '2022-11-15'),
(55, 55, 'EXPCLS', 'A', 4, 1, 32000, 'Diambil', '2022-11-20'),
(56, 56, 'EXPSTR', 'B', 3, 1, 21000, 'Diambil', '2022-12-01'),
(57, 57, 'REGRC', 'C', 2, 1, 8000, 'Diambil', '2022-12-05'),
(58, 58, 'REGRCLS', 'A', 1, 1, 5000, 'Diambil', '2022-12-10'),
(59, 59, 'REGRSTR', 'B', 4, 1, 16000, 'Diambil', '2022-12-15'),
(60, 60, 'SELIMUT', 'C', 5, 1, 75000, 'Diambil', '2022-12-20'),
(61, 61, 'BONEKA', 'A', 3, 1, 15000, 'Diambil', '2023-01-01'),
(62, 62, 'EXPCL', 'B', 2, 1, 14000, 'Diambil', '2023-01-05'),
(63, 63, 'EXPCLS', 'C', 5, 1, 40000, 'Diambil', '2023-01-10'),
(64, 64, 'EXPSTR', 'A', 4, 1, 28000, 'Diambil', '2023-01-15'),
(65, 65, 'REGRC', 'B', 1, 1, 4000, 'Diambil', '2023-01-20'),
(66, 66, 'REGRCLS', 'C', 3, 1, 15000, 'Diambil', '2023-02-01'),
(67, 67, 'REGRSTR', 'A', 5, 1, 20000, 'Diambil', '2023-02-05'),
(68, 68, 'SELIMUT', 'B', 2, 1, 30000, 'Diambil', '2023-02-10'),
(69, 69, 'SEPATU', 'C', 1, 1, 20000, 'Diambil', '2023-02-15'),
(70, 70, 'SPREI', 'A', 4, 1, 40000, 'Diambil', '2023-02-20'),
(71, 71, 'TAS', 'B', 3, 1, 60000, 'Diambil', '2023-03-01'),
(72, 72, 'BONEKA', 'C', 2, 1, 10000, 'Diambil', '2023-03-05'),
(73, 73, 'EXPCL', 'A', 5, 1, 35000, 'Diambil', '2023-03-10'),
(74, 74, 'EXPCLS', 'B', 1, 1, 5000, 'Diambil', '2023-03-15'),
(75, 75, 'EXPSTR', 'C', 4, 1, 28000, 'Diambil', '2023-03-20'),
(76, 76, 'REGRC', 'A', 3, 1, 12000, 'Diambil', '2023-04-01'),
(77, 77, 'REGRCLS', 'B', 2, 1, 10000, 'Diambil', '2023-04-05'),
(78, 78, 'REGRSTR', 'C', 5, 1, 20000, 'Diambil', '2023-04-10'),
(79, 79, 'SELIMUT', 'A', 2, 1, 30000, 'Diambil', '2023-04-15'),
(80, 80, 'SEPATU', 'B', 1, 1, 20000, 'Diambil', '2023-04-20'),
(81, 81, 'SPREI', 'C', 4, 1, 40000, 'Diambil', '2023-05-01'),
(82, 82, 'TAS', 'A', 3, 1, 60000, 'Diambil', '2023-05-05'),
(83, 83, 'BONEKA', 'B', 2, 1, 10000, 'Diambil', '2023-05-10'),
(84, 84, 'EXPCL', 'C', 5, 1, 35000, 'Diambil', '2023-05-15'),
(85, 85, 'EXPCLS', 'A', 1, 1, 8000, 'Diambil', '2023-05-20'),
(86, 86, 'EXPSTR', 'B', 4, 1, 28000, 'Diambil', '2023-06-01'),
(87, 87, 'REGRC', 'C', 3, 1, 12000, 'Diambil', '2023-06-05'),
(88, 88, 'REGRCLS', 'A', 2, 1, 10000, 'Diambil', '2023-06-10'),
(89, 89, 'REGRSTR', 'B', 5, 1, 20000, 'Diambil', '2023-06-15'),
(90, 90, 'SELIMUT', 'C', 2, 1, 30000, 'Diambil', '2023-06-20'),
(91, 91, 'BONEKA', 'A', 3, 1, 15000, 'Diambil', '2023-08-01'),
(92, 92, 'EXPCL', 'B', 2, 1, 14000, 'Diambil', '2023-08-05'),
(93, 93, 'EXPCLS', 'C', 5, 1, 40000, 'Diambil', '2023-08-10'),
(94, 94, 'EXPSTR', 'A', 4, 1, 28000, 'Diambil', '2023-08-15'),
(95, 95, 'REGRC', 'B', 1, 1, 4000, 'Diambil', '2023-08-20'),
(96, 96, 'REGRCLS', 'C', 3, 1, 15000, 'Diambil', '2023-09-01'),
(97, 97, 'REGRSTR', 'A', 5, 1, 20000, 'Diambil', '2023-09-05'),
(98, 98, 'SELIMUT', 'B', 2, 1, 30000, 'Diambil', '2023-09-10'),
(99, 99, 'SEPATU', 'C', 1, 1, 20000, 'Diambil', '2023-09-15'),
(100, 100, 'SPREI', 'A', 4, 1, 40000, 'Diambil', '2023-09-20'),
(101, 101, 'TAS', 'B', 3, 1, 60000, 'Diambil', '2023-10-01'),
(102, 102, 'BONEKA', 'C', 2, 1, 10000, 'Diambil', '2023-10-05'),
(103, 103, 'EXPCL', 'A', 5, 1, 35000, 'Diambil', '2023-10-10'),
(104, 104, 'EXPCLS', 'B', 1, 1, 5000, 'Diambil', '2023-10-15'),
(105, 105, 'EXPSTR', 'C', 4, 1, 28000, 'Diambil', '2023-10-20'),
(106, 106, 'REGRC', 'A', 3, 1, 12000, 'Diambil', '2023-11-01'),
(107, 107, 'REGRCLS', 'B', 2, 1, 10000, 'Diambil', '2023-11-05'),
(108, 108, 'REGRSTR', 'C', 5, 1, 20000, 'Diambil', '2023-11-10'),
(109, 109, 'SELIMUT', 'A', 2, 1, 30000, 'Diambil', '2023-11-15'),
(110, 110, 'SEPATU', 'B', 1, 1, 20000, 'Diambil', '2023-11-20'),
(111, 111, 'BONEKA', 'A', 3, 1, 15000, 'Diambil', '2023-12-02'),
(112, 112, 'EXPCL', 'B', 2, 1, 14000, 'Diambil', '2023-12-03'),
(113, 113, 'EXPCLS', 'C', 5, 1, 40000, 'Diambil', '2023-12-04'),
(114, 114, 'EXPSTR', 'A', 4, 1, 28000, 'Diambil', '2023-12-04'),
(566, 189, 'EXPCLS', 'A', 4, 31, 32000, 'Proses', '2023-12-07'),
(567, 189, 'REGRCL', 'A', 2, 12, 8000, 'Proses', '2023-12-09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory`
--

CREATE TABLE `inventory` (
  `id_barang` int(5) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `Satuan` varchar(5) NOT NULL,
  `jumlah_barang` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `inventory`
--

INSERT INTO `inventory` (`id_barang`, `nama_barang`, `Satuan`, `jumlah_barang`) VALUES
(1, 'ULTRA DETERGEN', 'Pcs', 5),
(2, 'S ULTRA DETERGEN', 'Pcs', 6),
(3, 'SOFTERGEN', 'Pcs', 4),
(4, 'PELICIN PLAIN', 'Pcs', 5),
(5, 'PELICIN SUPER PARFUM', 'Pcs', 7),
(6, 'SOFTERNER PLAIN', 'Pcs', 6),
(7, 'HANGER BAJU', 'Pcs', 50),
(8, 'PLASTIC WRAP', 'Pack', 10),
(9, 'SELOTIP', 'Pcs', 10),
(10, 'KANTONG PLASTIK', 'Pack', 100),
(11, 'KERTAS NOTE', 'Pack', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan`
--

CREATE TABLE `layanan` (
  `id_layanan` char(7) NOT NULL,
  `nama_layanan` varchar(30) NOT NULL,
  `harga` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `layanan`
--

INSERT INTO `layanan` (`id_layanan`, `nama_layanan`, `harga`) VALUES
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
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` mediumint(5) NOT NULL,
  `nama_pengeluaran` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `biaya` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `nama_pengeluaran`, `tanggal`, `biaya`) VALUES
(1, 'Air', '2022-01-01', 30000),
(2, 'Listrik', '2022-01-05', 45000),
(3, 'Detergen', '2022-01-10', 60000),
(4, 'Parfum', '2022-02-01', 70000),
(5, 'Plastik', '2022-02-05', 25000),
(6, 'Selotip', '2022-02-10', 30000),
(7, 'Kertas Nota', '2022-03-01', 40000),
(8, 'Perbaikan Mesin Cuci', '2022-03-05', 80000),
(9, 'Hanger', '2022-03-10', 35000),
(10, 'Pelembut Pakaian', '2022-04-01', 50000),
(11, 'Setrika', '2022-04-05', 60000),
(12, 'Kresek', '2022-04-10', 20000),
(13, 'Air', '2022-05-01', 30000),
(14, 'Listrik', '2022-05-05', 45000),
(15, 'Detergen', '2022-05-10', 60000),
(16, 'Parfum', '2022-06-01', 70000),
(17, 'Plastik', '2022-06-05', 25000),
(18, 'Selotip', '2022-06-10', 30000),
(19, 'Kertas Nota', '2022-07-01', 40000),
(20, 'Perbaikan Mesin Cuci', '2022-07-05', 80000),
(21, 'Hanger', '2022-07-10', 35000),
(22, 'Pelembut Pakaian', '2022-08-01', 50000),
(23, 'Setrika', '2022-08-05', 60000),
(24, 'Kresek', '2022-08-10', 20000),
(25, 'Air', '2022-09-01', 30000),
(26, 'Listrik', '2022-09-05', 45000),
(27, 'Detergen', '2022-09-10', 60000),
(28, 'Parfum', '2022-10-01', 70000),
(29, 'Plastik', '2022-10-05', 25000),
(30, 'Selotip', '2022-10-10', 30000),
(31, 'Kertas Nota', '2022-11-01', 40000),
(32, 'Perbaikan Mesin Cuci', '2022-11-05', 80000),
(33, 'Hanger', '2022-11-10', 35000),
(34, 'Pelembut Pakaian', '2022-12-01', 50000),
(35, 'Setrika', '2022-12-05', 60000),
(36, 'Kresek', '2022-12-10', 20000),
(41, 'Air', '2023-01-01', 50000),
(42, 'Listrik', '2023-01-05', 75000),
(43, 'Detergen', '2023-01-10', 60000),
(44, 'Parfum', '2023-02-01', 35000),
(45, 'Plastik', '2023-02-05', 20000),
(46, 'Selotip', '2023-02-10', 30000),
(47, 'Kertas Nota', '2023-03-01', 40000),
(48, 'Perbaikan Mesin Cuci', '2023-03-05', 90000),
(49, 'Hanger', '2023-03-10', 10000),
(50, 'Pelembut Pakaian', '2023-04-01', 45000),
(51, 'Setrika', '2023-04-05', 55000),
(52, 'Kresek', '2023-04-10', 70000),
(53, 'Air', '2023-05-01', 50000),
(54, 'Listrik', '2023-05-05', 75000),
(55, 'Detergen', '2023-05-10', 60000),
(56, 'Parfum', '2023-06-01', 35000),
(57, 'Plastik', '2023-06-05', 20000),
(58, 'Selotip', '2023-06-10', 30000),
(59, 'Kertas Nota', '2023-07-01', 40000),
(60, 'Perbaikan Mesin Cuci', '2023-07-05', 90000),
(61, 'Hanger', '2023-07-10', 12000),
(62, 'Pelembut Pakaian', '2023-08-01', 45000),
(63, 'Setrika', '2023-08-05', 55000),
(64, 'Kresek', '2023-08-10', 70000),
(65, 'Air', '2023-09-01', 50000),
(66, 'Listrik', '2023-09-05', 75000),
(67, 'Detergen', '2023-09-10', 60000),
(68, 'Parfum', '2023-10-01', 35000),
(69, 'Plastik', '2023-10-05', 20000),
(70, 'Selotip', '2023-10-10', 30000),
(71, 'Kertas Nota', '2023-11-01', 40000),
(72, 'Perbaikan Mesin Cuci', '2023-11-05', 90000),
(73, 'Hanger', '2023-11-10', 12000),
(108, 'Ditergen', '2023-12-05', 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `no_pesanan` mediumint(8) NOT NULL,
  `id_customer` mediumint(6) DEFAULT NULL,
  `tgl_pesanan` datetime NOT NULL DEFAULT current_timestamp(),
  `mesin` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`no_pesanan`, `id_customer`, `tgl_pesanan`, `mesin`) VALUES
(1, 1, '2022-01-01 00:00:00', 'M1'),
(2, 2, '2022-01-05 00:00:00', 'M2'),
(3, 3, '2022-01-10 00:00:00', 'M3'),
(4, 4, '2022-01-15 00:00:00', 'M4'),
(5, 5, '2022-01-20 00:00:00', 'M5'),
(6, 6, '2022-02-01 00:00:00', 'M1'),
(7, 7, '2022-02-05 00:00:00', 'M2'),
(8, 8, '2022-02-10 00:00:00', 'M3'),
(9, 9, '2022-02-15 00:00:00', 'M4'),
(10, 10, '2022-02-20 00:00:00', 'M5'),
(11, 11, '2022-03-01 00:00:00', 'M1'),
(12, 12, '2022-03-05 00:00:00', 'M2'),
(13, 13, '2022-03-10 00:00:00', 'M3'),
(14, 14, '2022-03-15 00:00:00', 'M4'),
(15, 15, '2022-03-20 00:00:00', 'M5'),
(16, 16, '2022-04-01 00:00:00', 'M1'),
(17, 17, '2022-04-05 00:00:00', 'M2'),
(18, 18, '2022-04-10 00:00:00', 'M3'),
(19, 19, '2022-04-15 00:00:00', 'M4'),
(20, 20, '2022-04-20 00:00:00', 'M5'),
(21, 21, '2022-05-01 00:00:00', 'M1'),
(22, 22, '2022-05-05 00:00:00', 'M2'),
(23, 23, '2022-05-10 00:00:00', 'M3'),
(24, 24, '2022-05-15 00:00:00', 'M4'),
(25, 25, '2022-05-20 00:00:00', 'M5'),
(26, 26, '2022-06-01 00:00:00', 'M1'),
(27, 27, '2022-06-05 00:00:00', 'M2'),
(28, 28, '2022-06-10 00:00:00', 'M3'),
(29, 29, '2022-06-15 00:00:00', 'M4'),
(30, 30, '2022-06-20 00:00:00', 'M5'),
(31, 31, '2022-07-01 00:00:00', 'M1'),
(32, 32, '2022-07-05 00:00:00', 'M2'),
(33, 33, '2022-07-10 00:00:00', 'M3'),
(34, 34, '2022-07-15 00:00:00', 'M4'),
(35, 35, '2022-07-20 00:00:00', 'M5'),
(36, 36, '2022-08-01 00:00:00', 'M1'),
(37, 37, '2022-08-05 00:00:00', 'M2'),
(38, 38, '2022-08-10 00:00:00', 'M3'),
(39, 39, '2022-08-15 00:00:00', 'M4'),
(40, 40, '2022-08-20 00:00:00', 'M5'),
(41, 41, '2022-09-01 00:00:00', 'M1'),
(42, 42, '2022-09-05 00:00:00', 'M2'),
(43, 43, '2022-09-10 00:00:00', 'M3'),
(44, 44, '2022-09-15 00:00:00', 'M4'),
(45, 45, '2022-09-20 00:00:00', 'M5'),
(46, 46, '2022-10-01 00:00:00', 'M1'),
(47, 47, '2022-10-05 00:00:00', 'M2'),
(48, 48, '2022-10-10 00:00:00', 'M3'),
(49, 49, '2022-10-15 00:00:00', 'M4'),
(50, 50, '2022-10-20 00:00:00', 'M5'),
(51, 51, '2022-11-01 00:00:00', 'M1'),
(52, 52, '2022-11-05 00:00:00', 'M2'),
(53, 53, '2022-11-10 00:00:00', 'M3'),
(54, 54, '2022-11-15 00:00:00', 'M4'),
(55, 55, '2022-11-20 00:00:00', 'M5'),
(56, 56, '2022-12-01 00:00:00', 'M1'),
(57, 57, '2022-12-05 00:00:00', 'M2'),
(58, 58, '2022-12-10 00:00:00', 'M3'),
(59, 59, '2022-12-15 00:00:00', 'M4'),
(60, 60, '2022-12-20 00:00:00', 'M5'),
(61, 61, '2023-01-01 00:00:00', 'M1'),
(62, 62, '2023-01-05 00:00:00', 'M2'),
(63, 63, '2023-01-10 00:00:00', 'M3'),
(64, 64, '2023-01-15 00:00:00', 'M4'),
(65, 65, '2023-01-20 00:00:00', 'M5'),
(66, 66, '2023-02-01 00:00:00', 'M1'),
(67, 67, '2023-02-05 00:00:00', 'M2'),
(68, 68, '2023-02-10 00:00:00', 'M3'),
(69, 69, '2023-02-15 00:00:00', 'M4'),
(70, 70, '2023-02-20 00:00:00', 'M5'),
(71, 71, '2023-03-01 00:00:00', 'M1'),
(72, 72, '2023-03-05 00:00:00', 'M2'),
(73, 73, '2023-03-10 00:00:00', 'M3'),
(74, 74, '2023-03-15 00:00:00', 'M4'),
(75, 75, '2023-03-20 00:00:00', 'M5'),
(76, 76, '2023-04-01 00:00:00', 'M1'),
(77, 77, '2023-04-05 00:00:00', 'M2'),
(78, 78, '2023-04-10 00:00:00', 'M3'),
(79, 79, '2023-04-15 00:00:00', 'M4'),
(80, 80, '2023-04-20 00:00:00', 'M5'),
(81, 42, '2023-07-01 00:00:00', 'M1'),
(82, 76, '2023-07-05 00:00:00', 'M2'),
(83, 15, '2023-07-10 00:00:00', 'M3'),
(84, 53, '2023-07-15 00:00:00', 'M4'),
(85, 29, '2023-07-20 00:00:00', 'M5'),
(86, 71, '2023-08-01 00:00:00', 'M1'),
(87, 38, '2023-08-05 00:00:00', 'M2'),
(88, 11, '2023-08-10 00:00:00', 'M3'),
(89, 60, '2023-08-15 00:00:00', 'M4'),
(90, 7, '2023-08-20 00:00:00', 'M5'),
(91, 23, '2023-09-01 00:00:00', 'M1'),
(92, 5, '2023-09-05 00:00:00', 'M2'),
(93, 49, '2023-09-10 00:00:00', 'M3'),
(94, 18, '2023-09-15 00:00:00', 'M4'),
(95, 64, '2023-09-20 00:00:00', 'M5'),
(96, 79, '2023-10-01 00:00:00', 'M1'),
(97, 36, '2023-10-05 00:00:00', 'M2'),
(98, 68, '2023-10-10 00:00:00', 'M3'),
(99, 22, '2023-10-15 00:00:00', 'M4'),
(100, 77, '2023-10-20 00:00:00', 'M5'),
(101, 14, '2023-11-01 00:00:00', 'M1'),
(102, 35, '2023-11-05 00:00:00', 'M2'),
(103, 57, '2023-11-10 00:00:00', 'M3'),
(104, 73, '2023-11-15 00:00:00', 'M4'),
(105, 51, '2023-11-20 00:00:00', 'M5'),
(106, 67, '2023-12-01 00:00:00', 'M1'),
(107, 48, '2023-12-05 00:00:00', 'M2'),
(108, 30, '2023-12-10 00:00:00', 'M3'),
(109, 80, '2023-12-15 00:00:00', 'M4'),
(110, 2, '2023-12-20 00:00:00', 'M5'),
(111, 41, '2023-12-01 00:00:00', 'M1'),
(112, 15, '2023-12-02 00:00:00', 'M2'),
(113, 62, '2023-12-03 00:00:00', 'M3'),
(114, 28, '2023-12-04 00:00:00', 'M4'),
(189, 81, '2023-12-05 07:58:29', NULL),
(190, NULL, '2023-12-05 07:59:23', 'M1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
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
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `pesanan` (`no_pesanan`),
  ADD KEY `layanan` (`id_layanan`);

--
-- Indeks untuk tabel `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`no_pesanan`),
  ADD KEY `customer` (`id_customer`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `laporan_transaksi` (`id_laporan`),
  ADD KEY `idpengeluaran` (`id_pengeluaran`),
  ADD KEY `fk_idtransaksi` (`id_detail`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` mediumint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  MODIFY `id_detail` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=568;

--
-- AUTO_INCREMENT untuk tabel `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id_barang` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` mediumint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `no_pesanan` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(8) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `layanan` FOREIGN KEY (`id_layanan`) REFERENCES `layanan` (`id_layanan`),
  ADD CONSTRAINT `pesanan` FOREIGN KEY (`no_pesanan`) REFERENCES `pesanan` (`no_pesanan`);

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `id_customerrr` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_idtransaksi` FOREIGN KEY (`id_detail`) REFERENCES `detail_pesanan` (`id_detail`),
  ADD CONSTRAINT `idpengeluaran` FOREIGN KEY (`id_pengeluaran`) REFERENCES `pengeluaran` (`id_pengeluaran`),
  ADD CONSTRAINT `laporan_transaksi` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id_laporan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
