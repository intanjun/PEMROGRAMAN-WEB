-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2020 at 11:44 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sewamobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `no_plat` int(9) NOT NULL,
  `id_type` int(11) NOT NULL,
  `tahun` year(4) NOT NULL,
  `tarif` varchar(12) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `no_ktp` int(18) NOT NULL,
  `nama` char(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telepon` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`no_ktp`, `nama`, `alamat`, `telepon`) VALUES
(1, 'Nana', 'Lebak bulus', '085664321567'),
(2, 'Tara', 'Demak', '085432908113');

-- --------------------------------------------------------

--
-- Table structure for table `sopir`
--

CREATE TABLE `sopir` (
  `id_sopir` int(12) NOT NULL,
  `nama` char(20) NOT NULL,
  `alamat` char(20) NOT NULL,
  `telepon` char(15) NOT NULL,
  `sim` int(12) NOT NULL,
  `tarif` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sopir`
--

INSERT INTO `sopir` (`id_sopir`, `nama`, `alamat`, `telepon`, `sim`, `tarif`) VALUES
(1, 'Jaemin', 'Guangzou', '089665784321', 890312880, '200000'),
(2, 'Diki', 'Merak, banten', '087665432114', 98072765, '250000');

-- --------------------------------------------------------

--
-- Table structure for table `tipe kendaraan`
--

CREATE TABLE `tipe kendaraan` (
  `id_type` int(12) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipe kendaraan`
--

INSERT INTO `tipe kendaraan` (`id_type`, `type`) VALUES
(1, 'Family'),
(2, 'Grup');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `no_transaksi` int(15) NOT NULL,
  `no_plat` int(11) NOT NULL,
  `id_sopir` int(11) NOT NULL,
  `no_ktp` int(11) NOT NULL,
  `tanggan_pesan` date NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali_rencana` date NOT NULL,
  `jam_kembali_rencana` time(6) NOT NULL,
  `tanggal_kembali_realisas` date NOT NULL,
  `jam_kembali_realisasi` time(6) NOT NULL,
  `denda` int(20) NOT NULL,
  `kilometer_pinjam` int(10) NOT NULL,
  `kilometer_kembali` int(10) NOT NULL,
  `bbm_pinjam` int(10) NOT NULL,
  `bbm_kembali` int(10) NOT NULL,
  `kondisi_mobil_pinjam` text NOT NULL,
  `kondisi_mobil_kembali` text NOT NULL,
  `kerusakan` text NOT NULL,
  `biaya_kerusakan` int(20) NOT NULL,
  `biaya_bbm` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`no_plat`),
  ADD KEY `tahun` (`tahun`),
  ADD KEY `id_type` (`id_type`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`no_ktp`);

--
-- Indexes for table `sopir`
--
ALTER TABLE `sopir`
  ADD PRIMARY KEY (`id_sopir`);

--
-- Indexes for table `tipe kendaraan`
--
ALTER TABLE `tipe kendaraan`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_transaksi`),
  ADD KEY `no_plat` (`no_plat`),
  ADD KEY `no_ktp` (`no_ktp`),
  ADD KEY `id_sopir` (`id_sopir`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `no_plat` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `no_ktp` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sopir`
--
ALTER TABLE `sopir`
  MODIFY `id_sopir` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tipe kendaraan`
--
ALTER TABLE `tipe kendaraan`
  MODIFY `id_type` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD CONSTRAINT `kendaraan_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `tipe kendaraan` (`id_type`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`no_ktp`) REFERENCES `pelanggan` (`no_ktp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`id_sopir`) REFERENCES `sopir` (`id_sopir`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_4` FOREIGN KEY (`no_plat`) REFERENCES `kendaraan` (`no_plat`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
