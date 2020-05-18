-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2020 at 11:26 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_pdo`
--

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`id`, `nama`, `alamat`, `logo`) VALUES
(1, 'SMP N 1 PURWODADI', 'Jl. Mayjen Sutoyo Siswomiharjo No.6, Jetis Timur, Purwodadi, Kec. Purwodadi, Kabupaten Grobogan, Jawa Tengah 58111', 'esempsa.jpg'),
(2, 'SMA N 1 PURWODADI', 'Jl. R.Suprapto No.82, Jetis Timur, Purwodadi, Kec. Purwodadi, Kabupaten Grobogan, Jawa Tengah 58111', 'smansa.jpeg'),
(3, 'SMP N 3 PURWODADI', 'Jl. Gajah Mada, Simpang Utara, Purwodadi, Kec. Purwodadi, Kabupaten Grobogan, Jawa Tengah 58111', 'esempga.png'),
(4, 'SMP N 2 TOROH', 'Jl. Solo - Purwodadi No.61, Depok Utara, Depok, Kec. Toroh, Kabupaten Grobogan, Jawa Tengah 58171', 'esempator.jpg'),
(5, 'SMP N 1 TOROH', 'Jl. Prayuda Boloh, Toroh, Boloh II, Boloh, Kec. Toroh, Kabupaten Grobogan, Jawa Tengah 58171', 'esempsator.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user`
--

CREATE TABLE `tabel_user` (
  `username` char(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Hak` enum('admin','operator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_user`
--

INSERT INTO `tabel_user` (`username`, `password`, `Nama`, `Hak`) VALUES
('dyoemir', 'emir123', 'Hanandyo Emir', 'admin'),
('tantann', 'intan6', 'Intan Juniar', 'operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
