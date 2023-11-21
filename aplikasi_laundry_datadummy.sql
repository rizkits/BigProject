-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 04:56 PM
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
(1, 'Customer 1', 'Alamat 1', '1234567890'),
(2, 'Customer 2', 'Alamat 2', '2345678901'),
(3, 'Customer 3', 'Alamat 3', '3456789012'),
(4, 'Customer 4', 'Alamat 4', '4567890123'),
(5, 'Customer 5', 'Alamat 5', '5678901234'),
(6, 'Customer 6', 'Alamat 6', '6789012345'),
(7, 'Customer 7', 'Alamat 7', '7890123456'),
(8, 'Customer 8', 'Alamat 8', '8901234567'),
(9, 'Customer 9', 'Alamat 9', '9012345678'),
(10, 'Customer 10', 'Alamat 10', '0123456789'),
(11, 'Customer 11', 'Alamat 11', '9876543210'),
(12, 'Customer 12', 'Alamat 12', '8765432109'),
(13, 'Customer 13', 'Alamat 13', '7654321098'),
(14, 'Customer 14', 'Alamat 14', '6543210987'),
(15, 'Customer 15', 'Alamat 15', '5432109876'),
(16, 'Customer 16', 'Alamat 16', '4321098765'),
(17, 'Customer 17', 'Alamat 17', '3210987654'),
(18, 'Customer 18', 'Alamat 18', '2109876543'),
(19, 'Customer 19', 'Alamat 19', '1098765432'),
(20, 'Customer 20', 'Alamat 20', '0987654321');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id_detail` char(8) NOT NULL,
  `no_pesanan` mediumint(8) NOT NULL,
  `jumlah_pakaian` int(2) NOT NULL,
  `total` int(6) NOT NULL,
  `Keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id_detail`, `no_pesanan`, `jumlah_pakaian`, `total`, `Keterangan`) VALUES
('DP00001', 1, 10, 50000, 'Detail pesanan 1'),
('DP00002', 2, 15, 75000, 'Detail pesanan 2'),
('DP00003', 3, 8, 40000, 'Detail pesanan 3'),
('DP00004', 4, 12, 60000, 'Detail pesanan 4'),
('DP00005', 5, 6, 30000, 'Detail pesanan 5'),
('DP00006', 6, 18, 90000, 'Detail pesanan 6'),
('DP00007', 7, 5, 25000, 'Detail pesanan 7'),
('DP00008', 8, 14, 70000, 'Detail pesanan 8'),
('DP00009', 9, 20, 100000, 'Detail pesanan 9'),
('DP00010', 10, 7, 35000, 'Detail pesanan 10'),
('DP00011', 11, 11, 55000, 'Detail pesanan 11'),
('DP00012', 12, 9, 45000, 'Detail pesanan 12'),
('DP00013', 13, 16, 80000, 'Detail pesanan 13'),
('DP00014', 14, 13, 65000, 'Detail pesanan 14'),
('DP00015', 15, 4, 20000, 'Detail pesanan 15'),
('DP00016', 16, 17, 85000, 'Detail pesanan 16'),
('DP00017', 17, 12, 60000, 'Detail pesanan 17'),
('DP00018', 18, 8, 40000, 'Detail pesanan 18'),
('DP00019', 19, 5, 25000, 'Detail pesanan 19'),
('DP00020', 20, 10, 50000, 'Detail pesanan 20');

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
('B0001', 'Sabun', 100),
('B0002', 'Deterjen', 150),
('B0003', 'Softener', 200),
('B0004', 'Pewangi', 120),
('B0005', 'Penghilang', 80),
('B0006', 'Bleach', 90),
('B0007', 'Sikat', 50),
('B0008', 'Keranjang', 75),
('B0009', 'Pegangan', 60),
('B0010', 'Gantungan', 110),
('B0011', 'Kawat Baju', 40),
('B0012', 'Emas Pakaian', 30),
('B0013', 'Mesin Cuci', 10),
('B0014', 'Setrika', 25),
('B0015', 'Rak Pakaian', 85),
('B0016', 'Tempat Sampah', 70),
('B0017', 'Pengering', 15),
('B0018', 'Pegangan Kain', 55),
('B0019', 'Tirai', 65),
('B0020', 'Vacuum', 20);

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_laporan`) VALUES
('L0001'),
('L0002'),
('L0003'),
('L0004'),
('L0005'),
('L0006'),
('L0007'),
('L0008'),
('L0009'),
('L0010'),
('L0011'),
('L0012'),
('L0013'),
('L0014'),
('L0015'),
('L0016'),
('L0017'),
('L0018'),
('L0019'),
('L0020');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `id_layanan` char(5) NOT NULL,
  `nama_layanan` varchar(30) NOT NULL,
  `harga/2kg` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`id_layanan`, `nama_layanan`, `harga/2kg`) VALUES
('L0001', 'Cuci Regular', 11000),
('L0002', 'Cuci Express', 9500),
('L0003', 'Cuci Hemat', 9000),
('L0004', 'Cuci Premium', 10500),
('L0005', 'Cuci Delicate', 10500),
('L0006', 'Cuci Kilat', 15000),
('L0007', 'Cuci Setrika', 8500),
('L0008', 'Cuci Kering', 13000),
('L0009', 'Cuci Basah', 13500),
('L0010', 'Cuci Setrika Kilat', 13500),
('L0011', 'Cuci Setrika Premium', 13000),
('L0012', 'Cuci Setrika Express', 7500),
('L0013', 'Cuci Setrika Hemat', 14000),
('L0014', 'Cuci Setrika Delicate', 12000),
('L0015', 'Cuci Setrika Kilat', 12000),
('L0016', 'Cuci Setrika Kering', 9000),
('L0017', 'Cuci Setrika Basah', 14000),
('L0018', 'Cuci Setrika Hemat', 7000),
('L0019', 'Cuci Setrika Premium', 8000),
('L0020', 'Cuci Setrika Express', 14000);

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` char(5) NOT NULL,
  `nama_pengeluaran` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `biaya` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `nama_pengeluaran`, `tanggal`, `biaya`) VALUES
('P0001', 'Deterjen', '2023-01-01', 150000),
('P0002', 'Air', '2023-02-03', 120000),
('P0003', 'Listrik', '2023-03-05', 80000),
('P0004', 'Tenaga Kerja', '2023-04-07', 200000),
('P0005', 'Maintenance Mesin', '2023-05-09', 180000),
('P0006', 'Bahan Bakar', '2023-06-11', 250000),
('P0007', 'Peralatan Cuci', '2023-07-13', 220000),
('P0008', 'Transportasi', '2023-08-15', 300000),
('P0009', 'Peralatan Setrika', '2023-09-17', 270000),
('P0010', 'Peralatan Tambahan', '2023-10-19', 230000),
('P0011', 'Perlengkapan Karyawan', '2023-11-21', 280000),
('P0012', 'Kemasan', '2023-12-23', 190000),
('P0013', 'Komunikasi', '2024-01-25', 320000),
('P0014', 'Promosi', '2024-02-27', 270000),
('P0015', 'Sewa Tempat', '2024-03-29', 230000),
('P0016', 'Asuransi', '2024-04-30', 350000),
('P0017', 'Administrasi', '2024-06-01', 310000),
('P0018', 'Pajak', '2024-07-03', 280000),
('P0019', 'Pelatihan Karyawan', '2024-08-05', 240000),
('P0020', 'Bantuan Sosial', '2024-09-07', 300000),
('P0090', 'coba', '2023-11-20', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `no_pesanan` mediumint(8) NOT NULL,
  `nama_karyawan` varchar(50) NOT NULL,
  `id_customer` mediumint(6) NOT NULL,
  `id_layanan` char(5) NOT NULL,
  `tgl_pesanan` datetime NOT NULL DEFAULT current_timestamp(),
  `tgl_pesanan_selesai` date NOT NULL,
  `berat` int(2) NOT NULL,
  `status` enum('Dalam proses','Selesai','Diambil','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`no_pesanan`, `nama_karyawan`, `id_customer`, `id_layanan`, `tgl_pesanan`, `tgl_pesanan_selesai`, `berat`, `status`) VALUES
(1, 'Karyawan 1', 1, 'L0001', '2023-11-17 12:00:00', '2023-11-20', 5, 'Dalam proses'),
(2, 'Karyawan 2', 2, 'L0002', '2023-11-18 10:30:00', '2023-11-21', 7, 'Selesai'),
(3, 'Karyawan 3', 3, 'L0003', '2023-11-19 14:45:00', '2023-11-22', 3, 'Diambil'),
(4, 'Karyawan 4', 4, 'L0004', '2023-11-20 08:15:00', '2023-11-23', 6, 'Dalam proses'),
(5, 'Karyawan 5', 5, 'L0005', '2023-11-21 16:20:00', '2023-11-24', 4, 'Selesai'),
(6, 'Karyawan 6', 6, 'L0006', '2023-11-22 11:30:00', '2023-11-25', 8, 'Diambil'),
(7, 'Karyawan 7', 7, 'L0007', '2023-11-23 09:45:00', '2023-11-26', 2, 'Dalam proses'),
(8, 'Karyawan 8', 8, 'L0008', '2023-11-24 13:15:00', '2023-11-27', 5, 'Selesai'),
(9, 'Karyawan 9', 9, 'L0009', '2023-11-25 15:30:00', '2023-11-28', 7, 'Diambil'),
(10, 'Karyawan 10', 10, 'L0010', '2023-11-26 17:20:00', '2023-11-29', 3, 'Dalam proses'),
(11, 'Karyawan 11', 11, 'L0011', '2023-11-27 10:00:00', '2023-11-30', 6, 'Selesai'),
(12, 'Karyawan 12', 12, 'L0012', '2023-11-28 12:45:00', '2023-12-01', 4, 'Diambil'),
(13, 'Karyawan 13', 13, 'L0013', '2023-11-29 08:30:00', '2023-12-02', 8, 'Dalam proses'),
(14, 'Karyawan 14', 14, 'L0014', '2023-11-30 14:20:00', '2023-12-03', 5, 'Selesai'),
(15, 'Karyawan 15', 15, 'L0015', '2023-12-01 11:00:00', '2023-12-04', 3, 'Diambil'),
(16, 'Karyawan 16', 16, 'L0016', '2023-12-02 13:45:00', '2023-12-05', 7, 'Dalam proses'),
(17, 'Karyawan 17', 17, 'L0017', '2023-12-03 09:30:00', '2023-12-06', 6, 'Selesai'),
(18, 'Karyawan 18', 18, 'L0018', '2023-12-04 16:20:00', '2023-12-07', 4, 'Diambil'),
(19, 'Karyawan 19', 19, 'L0019', '2023-12-05 14:15:00', '2023-12-08', 2, 'Dalam proses'),
(20, 'Karyawan 20', 20, 'L0020', '2023-12-06 12:30:00', '2023-12-09', 5, 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` char(8) NOT NULL,
  `no_pesanan` mediumint(8) NOT NULL,
  `id_pengeluaran` char(5) NOT NULL,
  `id_laporan` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `no_pesanan`, `id_pengeluaran`, `id_laporan`) VALUES
('T0000001', 1, 'P0001', 'L0001'),
('T0000002', 2, 'P0002', 'L0002'),
('T0000003', 3, 'P0003', 'L0003'),
('T0000004', 4, 'P0004', 'L0004'),
('T0000005', 5, 'P0005', 'L0005'),
('T0000006', 6, 'P0006', 'L0006'),
('T0000007', 7, 'P0007', 'L0007'),
('T0000008', 8, 'P0008', 'L0008'),
('T0000009', 9, 'P0009', 'L0009'),
('T0000010', 10, 'P0010', 'L0010'),
('T0000011', 11, 'P0011', 'L0011'),
('T0000012', 12, 'P0012', 'L0012'),
('T0000013', 13, 'P0013', 'L0013'),
('T0000014', 14, 'P0014', 'L0014'),
('T0000015', 15, 'P0015', 'L0015'),
('T0000016', 16, 'P0016', 'L0016'),
('T0000017', 17, 'P0017', 'L0017'),
('T0000018', 18, 'P0018', 'L0018'),
('T0000019', 19, 'P0019', 'L0019'),
('T0000020', 20, 'P0020', 'L0020');

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
  ADD KEY `no_pesanan` (`no_pesanan`);

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
  ADD KEY `id_layanan` (`id_layanan`),
  ADD KEY `nama_karyawan` (`nama_karyawan`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_laporan` (`id_laporan`),
  ADD KEY `id_pengeluaran` (`id_pengeluaran`),
  ADD KEY `no_pesanan2` (`no_pesanan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` mediumint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `no_pesanan` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1213;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `no_pesanan` FOREIGN KEY (`no_pesanan`) REFERENCES `pesanan` (`no_pesanan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `id_customer` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`id_layanan`) REFERENCES `layanan` (`id_layanan`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `no_pesanan2` FOREIGN KEY (`no_pesanan`) REFERENCES `pesanan` (`no_pesanan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id_laporan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`id_pengeluaran`) REFERENCES `pengeluaran` (`id_pengeluaran`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
