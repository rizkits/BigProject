
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
CREATE TABLE `customer` (
  `id_customer` mediumint(6) NOT NULL,
  `nama_customer` varchar(30) NOT NULL,
  `alamat_customer` varchar(50) NOT NULL,
  `no_hp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
CREATE TABLE `detail_pesanan` (
  `id_detail` int(8) NOT NULL,
  `id_customer` mediumint(6) NOT NULL,
  `id_layanan` char(7) NOT NULL,
  `berat` int(2) NOT NULL,
  `jumlah` int(2) NOT NULL,
  `total_harga` int(6) DEFAULT NULL,
  `status` enum('Dalam proses','Selesai','Diambil','') NOT NULL,
  `tgl_selesai` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `inventory` (
  `id_barang` char(5) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `jumlah_barang` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE `laporan` (
  `id_laporan` mediumint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE `layanan` (
  `id_layanan` char(7) NOT NULL,
  `nama_layanan` varchar(30) NOT NULL,
  `harga/2kg` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
CREATE TABLE `pengeluaran` (
  `id_pengeluaran` mediumint(5) NOT NULL,
  `nama_pengeluaran` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `biaya` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
CREATE TABLE `pesanan` (
  `no_pesanan` mediumint(8) NOT NULL,
  `id_detail` int(8) NOT NULL,
  `tgl_pesanan` datetime NOT NULL DEFAULT current_timestamp(),
  `subtotal_harga` int(5) NOT NULL,
  `parfum` char(2) NOT NULL,
  `mesin` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE `transaksi` (
  `id_transaksi` int(8) NOT NULL,
  `id_detail` int(8) NOT NULL,
  `id_pengeluaran` mediumint(5) NOT NULL,
  `id_laporan` mediumint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);
  
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `layanan` (`id_layanan`),
  ADD KEY `id_customerrr` (`id_customer`);
  
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id_barang`);
  
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`);
  
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id_layanan`);
  
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);
  
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`no_pesanan`),
  ADD KEY `detailid` (`id_detail`);
  
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `laporan_transaksi` (`id_laporan`),
  ADD KEY `idpengeluaran` (`id_pengeluaran`),
  ADD KEY `fk_idtransaksi` (`id_detail`);
  
ALTER TABLE `customer`
  MODIFY `id_customer` mediumint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
  
ALTER TABLE `detail_pesanan`
  MODIFY `id_detail` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
  
ALTER TABLE `laporan`
  MODIFY `id_laporan` mediumint(5) NOT NULL AUTO_INCREMENT;
  
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` mediumint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
  
ALTER TABLE `pesanan`
  MODIFY `no_pesanan` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
  
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(8) NOT NULL AUTO_INCREMENT;
  
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `id_customerrr` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `layanan` FOREIGN KEY (`id_layanan`) REFERENCES `layanan` (`id_layanan`);
  
ALTER TABLE `pesanan`
  ADD CONSTRAINT `detailid` FOREIGN KEY (`id_detail`) REFERENCES `detail_pesanan` (`id_detail`);
  
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_idtransaksi` FOREIGN KEY (`id_detail`) REFERENCES `detail_pesanan` (`id_detail`),
  ADD CONSTRAINT `idpengeluaran` FOREIGN KEY (`id_pengeluaran`) REFERENCES `pengeluaran` (`id_pengeluaran`),
  ADD CONSTRAINT `laporan_transaksi` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id_laporan`);
COMMIT;
