-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 03:40 AM
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
  `id_detail` int(8) NOT NULL,
  `no_pesanan` mediumint(8) NOT NULL,
  `jumlah_pakaian` int(2) NOT NULL,
  `total` int(6) NOT NULL,
  `parfum` varchar(2) NOT NULL,
  `mesin` varchar(2) NOT NULL,
  `Keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id_detail`, `no_pesanan`, `jumlah_pakaian`, `total`, `parfum`, `mesin`, `Keterangan`) VALUES
(1, 1, 10, 50000, '', '', 'Detail pesanan 1'),
(2, 2, 15, 75000, '', '', 'Detail pesanan 2'),
(3, 3, 8, 40000, '', '', 'Detail pesanan 3'),
(4, 4, 12, 60000, '', '', 'Detail pesanan 4'),
(5, 5, 6, 30000, '', '', 'Detail pesanan 5'),
(6, 6, 18, 90000, '', '', 'Detail pesanan 6'),
(7, 7, 5, 25000, '', '', 'Detail pesanan 7'),
(8, 8, 14, 70000, '', '', 'Detail pesanan 8'),
(9, 9, 20, 100000, '', '', 'Detail pesanan 9'),
(10, 10, 7, 35000, '', '', 'Detail pesanan 10'),
(11, 11, 11, 55000, '', '', 'Detail pesanan 11'),
(12, 12, 9, 45000, '', '', 'Detail pesanan 12'),
(13, 13, 16, 80000, '', '', 'Detail pesanan 13'),
(14, 14, 13, 65000, '', '', 'Detail pesanan 14'),
(15, 15, 4, 20000, '', '', 'Detail pesanan 15'),
(16, 16, 17, 85000, '', '', 'Detail pesanan 16'),
(17, 17, 12, 60000, '', '', 'Detail pesanan 17'),
(18, 18, 8, 40000, '', '', 'Detail pesanan 18'),
(19, 19, 5, 25000, '', '', 'Detail pesanan 19'),
(20, 20, 10, 50000, '', '', 'Detail pesanan 20'),
(21, 11, 2, 20000, '1', '2', 'fe');

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
  `id_laporan` mediumint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `id_pengeluaran` mediumint(5) NOT NULL,
  `nama_pengeluaran` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `biaya` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `nama_pengeluaran`, `tanggal`, `biaya`) VALUES
(1, 'Deterjen', '2023-01-01', 150000),
(2, 'Air', '2023-02-03', 120000),
(3, 'Listrik', '2023-03-05', 80000),
(4, 'Tenaga Kerja', '2023-04-07', 200000),
(5, 'Maintenance Mesin', '2023-05-09', 180000),
(6, 'Bahan Bakar', '2023-06-11', 250000),
(7, 'Peralatan Cuci', '2023-07-13', 220000),
(8, 'Transportasi', '2023-08-15', 300000),
(9, 'Peralatan Setrika', '2023-09-17', 270000),
(10, 'Peralatan Tambahan', '2023-10-19', 230000),
(11, 'Perlengkapan Karyawan', '2023-11-21', 280000),
(12, 'Kemasan', '2023-12-23', 190000),
(13, 'Komunikasi', '2024-01-25', 320000),
(14, 'Promosi', '2024-02-27', 270000),
(15, 'Sewa Tempat', '2024-03-29', 230000),
(16, 'Asuransi', '2024-04-30', 350000),
(17, 'Administrasi', '2024-06-01', 310000),
(18, 'Pajak', '2024-07-03', 280000),
(19, 'Pelatihan Karyawan', '2024-08-05', 240000),
(20, 'Bantuan Sosial', '2024-09-07', 300000),
(21, 'coba', '2023-11-20', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `no_pesanan` mediumint(8) NOT NULL,
  `id_customer` mediumint(6) NOT NULL,
  `id_layanan` char(5) NOT NULL,
  `tgl_pesanan` datetime NOT NULL DEFAULT current_timestamp(),
  `tgl_pesanan_selesai` date NOT NULL,
  `berat` int(2) NOT NULL,
  `jumlah` int(2) DEFAULT NULL,
  `status` enum('Dalam proses','Selesai','Diambil','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`no_pesanan`, `id_customer`, `id_layanan`, `tgl_pesanan`, `tgl_pesanan_selesai`, `berat`, `jumlah`, `status`) VALUES
(1, 1, 'L0001', '2023-11-17 12:00:00', '2023-11-20', 5, 0, 'Dalam proses'),
(2, 2, 'L0002', '2023-11-18 10:30:00', '2023-11-21', 7, 0, 'Selesai'),
(3, 3, 'L0003', '2023-11-19 14:45:00', '2023-11-22', 3, 0, 'Diambil'),
(4, 4, 'L0004', '2023-11-20 08:15:00', '2023-11-23', 6, 0, 'Dalam proses'),
(5, 5, 'L0005', '2023-11-21 16:20:00', '2023-11-24', 4, 0, 'Selesai'),
(6, 6, 'L0006', '2023-11-22 11:30:00', '2023-11-25', 8, 0, 'Diambil'),
(7, 7, 'L0007', '2023-11-23 09:45:00', '2023-11-26', 2, 0, 'Dalam proses'),
(8, 8, 'L0008', '2023-11-24 13:15:00', '2023-11-27', 5, 0, 'Selesai'),
(9, 9, 'L0009', '2023-11-25 15:30:00', '2023-11-28', 7, 0, 'Diambil'),
(10, 10, 'L0010', '2023-11-26 17:20:00', '2023-11-29', 3, 0, 'Dalam proses'),
(11, 11, 'L0011', '2023-11-27 10:00:00', '2023-11-30', 6, 0, 'Selesai'),
(12, 12, 'L0012', '2023-11-28 12:45:00', '2023-12-01', 4, 0, 'Diambil'),
(13, 13, 'L0013', '2023-11-29 08:30:00', '2023-12-02', 8, 0, 'Dalam proses'),
(14, 14, 'L0014', '2023-11-30 14:20:00', '2023-12-03', 5, 0, 'Selesai'),
(15, 15, 'L0015', '2023-12-01 11:00:00', '2023-12-04', 3, 0, 'Diambil'),
(16, 16, 'L0016', '2023-12-02 13:45:00', '2023-12-05', 7, 0, 'Dalam proses'),
(17, 17, 'L0017', '2023-12-03 09:30:00', '2023-12-06', 6, 0, 'Selesai'),
(18, 18, 'L0018', '2023-12-04 16:20:00', '2023-12-07', 4, 0, 'Diambil'),
(19, 19, 'L0019', '2023-12-05 14:15:00', '2023-12-08', 2, 0, 'Dalam proses'),
(20, 20, 'L0020', '2023-12-06 12:30:00', '2023-12-09', 5, 0, 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(8) NOT NULL,
  `no_pesanan` mediumint(8) NOT NULL,
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
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `no_pesanan2` (`no_pesanan`),
  ADD KEY `laporan_transaksi` (`id_laporan`),
  ADD KEY `idpengeluaran` (`id_pengeluaran`);

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
  MODIFY `id_detail` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` mediumint(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` mediumint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `no_pesanan` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1213;

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
  ADD CONSTRAINT `idpengeluaran` FOREIGN KEY (`id_pengeluaran`) REFERENCES `pengeluaran` (`id_pengeluaran`),
  ADD CONSTRAINT `laporan_transaksi` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id_laporan`),
  ADD CONSTRAINT `no_pesanan2` FOREIGN KEY (`no_pesanan`) REFERENCES `pesanan` (`no_pesanan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
