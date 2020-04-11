-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2020 at 10:48 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sewakendaraan`
--

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `no_plat` int(8) NOT NULL,
  `tahun` int(4) NOT NULL,
  `tarif` int(12) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`no_plat`, `tahun`, `tarif`, `status`) VALUES
(1, 2015, 250000, 'Tersedia'),
(2, 2010, 300000, 'Tidak tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `no_ktp` int(16) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`no_ktp`, `nama`, `alamat`, `telepon`) VALUES
(1, 'Siska', 'Purwodadi,Grobogan', '081224325412'),
(2, 'Sisil', 'Semarang ,Jawa tengah', '081223456011');

-- --------------------------------------------------------

--
-- Table structure for table `sopir`
--

CREATE TABLE `sopir` (
  `id_sopir` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telepon` varchar(14) NOT NULL,
  `sim` int(15) NOT NULL,
  `tarif` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sopir`
--

INSERT INTO `sopir` (`id_sopir`, `nama`, `alamat`, `telepon`, `sim`, `tarif`) VALUES
(1, 'Lele', 'Malang raya', '0897653345', 900128776, 150000),
(2, 'Dino', 'Karanganyar', '0865567603', 918776533, 300000);

-- --------------------------------------------------------

--
-- Table structure for table `tipe kendaraan`
--

CREATE TABLE `tipe kendaraan` (
  `id_type` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipe kendaraan`
--

INSERT INTO `tipe kendaraan` (`id_type`, `type`) VALUES
(1, 'Family (<=5 orang)'),
(2, 'Grup (>6 orang)');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `no_transaksi` int(20) NOT NULL,
  `tanggan pesan` date NOT NULL,
  `tanggal pinjam` date NOT NULL,
  `tanggal kembali rencana` date NOT NULL,
  `jam kembali rencana` time(6) NOT NULL,
  `tanggal kembai realisasi` date NOT NULL,
  `jam kembali realisasi` time(6) NOT NULL,
  `denda` int(12) NOT NULL,
  `kilometer pinjam` int(10) NOT NULL,
  `kilometer kembali` int(10) NOT NULL,
  `bbm pinjam` int(12) NOT NULL,
  `bbm kembali` int(12) NOT NULL,
  `kondisi mobil pinjam` varchar(12) NOT NULL,
  `kondisi mobil kembali` varchar(12) NOT NULL,
  `kerusakan` text NOT NULL,
  `biaya kerusakan` int(12) NOT NULL,
  `biaya bbm` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`no_transaksi`, `tanggan pesan`, `tanggal pinjam`, `tanggal kembali rencana`, `jam kembali rencana`, `tanggal kembai realisasi`, `jam kembali realisasi`, `denda`, `kilometer pinjam`, `kilometer kembali`, `bbm pinjam`, `bbm kembali`, `kondisi mobil pinjam`, `kondisi mobil kembali`, `kerusakan`, `biaya kerusakan`, `biaya bbm`) VALUES
(1, '2020-04-08', '2020-04-14', '2020-04-15', '22:00:00.000000', '2020-04-16', '21:00:00.000000', 0, 33500, 32500, 2000, 100, 'Aman', 'Aman', 'Tidak Ada Kerusakan', 0, 0),
(2, '2020-04-01', '2020-04-03', '2020-04-04', '09:00:00.000000', '2020-04-04', '11:00:00.000000', 50000, 120000, 135000, 2000, 1200, 'Aman', 'Rusak', 'Baret di pintu depan', 350000, 100000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`no_plat`);

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
  ADD PRIMARY KEY (`no_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `no_plat` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `no_ktp` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sopir`
--
ALTER TABLE `sopir`
  MODIFY `id_sopir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tipe kendaraan`
--
ALTER TABLE `tipe kendaraan`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `no_transaksi` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
