-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2020 at 03:53 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tiket`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_access_menu`
--

CREATE TABLE `tbl_access_menu` (
  `kd_access_menu` int(11) DEFAULT NULL,
  `kd_level` int(11) DEFAULT NULL,
  `kd_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_access_menu`
--

INSERT INTO `tbl_access_menu` (`kd_access_menu`, `kd_level`, `kd_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(1, 1, 1),
(2, 1, 2),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `kd_admin` varchar(50) NOT NULL,
  `nama_admin` varchar(35) DEFAULT NULL,
  `username_admin` varchar(30) DEFAULT NULL,
  `password_admin` varchar(256) DEFAULT NULL,
  `img_admin` varchar(35) DEFAULT NULL,
  `email_admin` varchar(35) DEFAULT NULL,
  `level_admin` varchar(12) DEFAULT NULL,
  `status_admin` int(1) DEFAULT NULL,
  `date_create_admin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`kd_admin`, `nama_admin`, `username_admin`, `password_admin`, `img_admin`, `email_admin`, `level_admin`, `status_admin`, `date_create_admin`) VALUES
('ADM0001', 'Administrator', 'admin', '$2y$10$v25.H4XMgDztA2NmxeJQSeaRl2nKboXeRTo1BjPe37R0JG3rXraZG', 'assets/backend/img/default.png', 'adm@gmail.com', '2', 1, '1552276812'),
('ADM0002', 'Bahyu Sanciko', 'bahyu', '$2y$10$ADbNVZYgiDi8SqGl1bB2NOgCufT2sK5v/T3BSZcIpFPVljDSb2S2K', 'assets/backend/img/default.png', 'cbahyu@gmail.com', '1', 1, '1552819095'),
('ADM0003', 'Bahyu Sanciko', 'owner', '$2y$10$v25.H4XMgDztA2NmxeJQSeaRl2nKboXeRTo1BjPe37R0JG3rXraZG', 'assets/backend/img/default.png', 'owner@gmail.com', '1', 1, '1552819095');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `kd_bank` varchar(50) NOT NULL,
  `nasabah_bank` varchar(50) DEFAULT NULL,
  `nama_bank` varchar(50) DEFAULT NULL,
  `nomrek_bank` varchar(50) DEFAULT NULL,
  `photo_bank` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`kd_bank`, `nasabah_bank`, `nama_bank`, `nomrek_bank`, `photo_bank`) VALUES
('BNK0001', 'Bahyu Sanciko', 'BCA', '5490252063', 'assets/frontend/img/bank/bca-icon.jpg'),
('BNK0002', 'Bahyu Sanciko', 'MANDIRI', '6666666666', 'assets/frontend/img/bank/mandiri-icon.jpg'),
('BNK0003', 'Bahyu Sanciko', 'BRI', '7777777777', 'assets/frontend/img/bank/bri-icon.jpg'),
('BNK0004', 'Bahyu Sanciko', 'BNI', '8888888888', 'assets/frontend/img/bank/bni-icon.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus`
--

CREATE TABLE `tbl_bus` (
  `kd_bus` varchar(50) NOT NULL,
  `nama_bus` varchar(50) DEFAULT NULL,
  `plat_bus` varchar(50) DEFAULT NULL,
  `kapasitas_bus` int(13) DEFAULT NULL,
  `status_bus` int(1) DEFAULT NULL,
  `desc_bus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bus`
--

INSERT INTO `tbl_bus` (`kd_bus`, `nama_bus`, `plat_bus`, `kapasitas_bus`, `status_bus`, `desc_bus`) VALUES
('B001', 'SMG01', 'H 1161 CDE', 19, 1, '--'),
('B002', 'SMG02', 'H 7653 SFH', 19, 1, '--'),
('B003', 'SMG03', 'H 3214 SAE', 19, 1, '--'),
('B004', 'SOLO01', 'AD 2132 DAA', 19, 1, '--'),
('B005', 'SOLO02', 'AD 6321 HEI', 19, 1, '--'),
('B006', 'SOLO03', 'AD 9187 BEA', 19, 1, '--'),
('B007', 'SOLO04', 'AD 6541 DIA', 19, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `kd_jadwal` varchar(50) NOT NULL,
  `kd_bus` varchar(50) DEFAULT NULL,
  `kd_tujuan` varchar(50) DEFAULT NULL,
  `kd_asal` varchar(50) DEFAULT NULL,
  `wilayah_jadwal` varchar(50) DEFAULT NULL,
  `jam_berangkat_jadwal` time DEFAULT NULL,
  `jam_tiba_jadwal` time DEFAULT NULL,
  `harga_jadwal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`kd_jadwal`, `kd_bus`, `kd_tujuan`, `kd_asal`, `wilayah_jadwal`, `jam_berangkat_jadwal`, `jam_tiba_jadwal`, `harga_jadwal`) VALUES
('J0001', 'B003', 'TJ002', 'TJ001', 'Solo', '05:00:00', '07:00:00', '85000'),
('J0002', 'B004', 'TJ001', 'TJ002', 'Semarang', '07:00:00', '09:00:00', '85000'),
('J0003', 'B005', 'TJ002', 'TJ001', 'Solo', '12:00:00', '14:00:00', '85000'),
('J0004', 'B001', 'TJ001', 'TJ002', 'Semarang', '10:00:00', '12:00:00', '85000'),
('J0005', 'B002', 'TJ002', 'TJ001', 'Solo', '18:00:00', '20:00:00', '85000'),
('J0006', 'B006', 'TJ001', 'TJ002', 'Semarang', '20:00:00', '22:00:00', '85000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_konfirmasi`
--

CREATE TABLE `tbl_konfirmasi` (
  `kd_konfirmasi` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_konfirmasi` varchar(50) DEFAULT NULL,
  `nama_bank_konfirmasi` varchar(50) DEFAULT NULL,
  `norek_konfirmasi` varchar(50) DEFAULT NULL,
  `total_konfirmasi` varchar(50) DEFAULT NULL,
  `photo_konfirmasi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_konfirmasi`
--

INSERT INTO `tbl_konfirmasi` (`kd_konfirmasi`, `kd_order`, `nama_konfirmasi`, `nama_bank_konfirmasi`, `norek_konfirmasi`, `total_konfirmasi`, `photo_konfirmasi`) VALUES
('KF0001', 'ORD00001', 'najsdkkasdn', 'BCA', '213123', '536000', '/assets/frontend/upload/payment/10__home.png'),
('KF0002', 'ORD00002', 'test', 'BCA', '23456543', '528000', '/assets/frontend/upload/payment/Penguins.jpg'),
('KF0003', 'ORD00003', 'adsdsa', 'BCA', '12', '290000', '/assets/frontend/upload/payment/14__laporan_transaksi1.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level`
--

CREATE TABLE `tbl_level` (
  `kd_level` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level`
--

INSERT INTO `tbl_level` (`kd_level`, `nama_level`) VALUES
(1, 'owner'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `kd_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`kd_menu`, `nama_menu`) VALUES
(1, 'owner'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `kd_tiket` varchar(50) DEFAULT NULL,
  `kd_jadwal` varchar(50) DEFAULT NULL,
  `kd_pelanggan` varchar(50) DEFAULT NULL,
  `kd_bank` varchar(50) DEFAULT NULL,
  `asal_order` varchar(200) DEFAULT NULL,
  `nama_order` varchar(50) DEFAULT NULL,
  `tgl_beli_order` varchar(50) DEFAULT NULL,
  `tgl_berangkat_order` varchar(50) DEFAULT NULL,
  `nama_kursi_order` varchar(50) DEFAULT NULL,
  `umur_kursi_order` varchar(50) DEFAULT NULL,
  `no_kursi_order` varchar(50) DEFAULT NULL,
  `no_ktp_order` varchar(50) DEFAULT NULL,
  `no_tlpn_order` varchar(50) DEFAULT NULL,
  `alamat_order` varchar(100) DEFAULT NULL,
  `email_order` varchar(100) DEFAULT NULL,
  `expired_order` varchar(50) DEFAULT NULL,
  `qrcode_order` varchar(100) DEFAULT NULL,
  `status_order` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `kd_order`, `kd_tiket`, `kd_jadwal`, `kd_pelanggan`, `kd_bank`, `asal_order`, `nama_order`, `tgl_beli_order`, `tgl_berangkat_order`, `nama_kursi_order`, `umur_kursi_order`, `no_kursi_order`, `no_ktp_order`, `no_tlpn_order`, `alamat_order`, `email_order`, `expired_order`, `qrcode_order`, `status_order`) VALUES
(11, 'ORD00001', 'TORD00001J0004TJ002201904253', 'J0004', 'PL0001', 'BNK0002', 'TJ002', 'Bahyu Sanciko', 'Jumat, 12 April 2019, 09:22', '2019-04-25', 'asdd', '90', '3', '021452125', '089682261128', 'JL AJA', 'cbahyu@gmail.com', '13-04-2019 09:22:48', 'assets/frontend/upload/qrcode/ORD00001.png', '2'),
(12, 'ORD00001', 'TORD00001J0004TJ002201904254', 'J0004', 'PL0001', 'BNK0002', 'TJ002', 'Bahyu Sanciko', 'Jumat, 12 April 2019, 09:22', '2019-04-25', 'asda', '90', '4', '021452125', '089682261128', 'JL AJA', 'cbahyu@gmail.com', '13-04-2019 09:22:48', 'assets/frontend/upload/qrcode/ORD00001.png', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `kd_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `no_ktp_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `email_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telpon_pelanggan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `img_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `status_pelanggan` int(1) DEFAULT NULL,
  `date_create_pelanggan` varchar(50) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`kd_pelanggan`, `username_pelanggan`, `password_pelanggan`, `no_ktp_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `email_pelanggan`, `telpon_pelanggan`, `img_pelanggan`, `status_pelanggan`, `date_create_pelanggan`) VALUES
('PL0002', 'sella', '$2y$10$wzz5.QSqiNfrc2JKuYK5huJHEvry340XZlspPACOJLf0TmU3yu30.', '02564651321564', 'sella', 'smkn1baso', 'sellapurwita36@gmail.com', '089682261128', 'assets/frontend/img/default.png', 1, '1552202266'),
('PL0001', 'bahyu', '$2y$10$PO4viVqheGgw7HPeozUih.V6qK4aWKbACLMe9UWOoSaJ8pSdaiISG', '021452125', 'Bahyu Sanciko', 'JL AJA', 'cbahyu@gmail.com', '089682261128', 'assets/frontend/img/default.png', 1, '1552199781'),
('PL0003', 'Dimas', '$2y$10$N6imN8KmAhuw9rH.iJxGLeVaRCG.27UmhHVF7MaICMhYlm.TGJ9iy', '346454215172455', 'Dimas', 'Cengkareng', 'dimasrestuadrianto@gmail.com', '6281299397276', 'assets/frontend/img/default.png', 1, '1552397128'),
('PL0005', 'kamuanjing', '$2y$10$PYDzqnOpzeGSo0ngK40Q1.M77oxnQ7fvhMYpI2q/JoZFS5r.g5FPG', '321963127368762639', 'aku cinta kmu', 'bangsat', 'ayudharachman@gmail.com', '09821312387', 'assets/frontend/img/default.png', 1, '1554340197'),
('PL0004', 'kelas109', '$2y$10$hHamfvIRbCNYiAvS289f0uj.T6kUfpfxTUcI210SLRqdTrxj4zyxG', '78456', 'Kelas109', 'jlin aja', 'kelas109si@gmail.com', '089682261128', 'assets/frontend/img/default.png', 1, '1554017732'),
('PL0006', 'Rakel', '$2y$10$pwr/ZSCVcya8JOV1Xt13qeRzhz.nLsJGWYcWWZJgR5DFLUfjJeaGO', '', 'Rakel', 'Jl.in aja dulu', 'rizkifirmansyah435@gmail.com', '08745179471', 'assets/frontend/img/default.png', 1, '1554385261'),
('PL0007', 'Aritest', '$2y$10$Z7yJqwWa0pCPtGb5sVYf9epvdjT97BD9U4guma.EhKU3JS9H675lG', '', 'ari', 'test', 'aliansah629@gmail.com', '08987654345', 'assets/frontend/img/default.png', 1, '1554534514'),
('PL0008', 'intanku', '$2y$10$/DqND8qNTufV7.zB.hfr/e.debLeoxGVZPkb5g/QOR4QphokdzKNW', '', 'intan', 'Semarang tengah', 'intanjuniar94@gmail.com', '081225740974', 'assets/frontend/img/default.png', 0, '1594355410');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_menu`
--

CREATE TABLE `tbl_sub_menu` (
  `kd_sub_menu` int(11) NOT NULL,
  `kd_menu` int(11) DEFAULT NULL,
  `title_sub_menu` varchar(128) DEFAULT NULL,
  `url_sub_menu` varchar(128) DEFAULT NULL,
  `is_active_sub_menu` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_menu`
--

INSERT INTO `tbl_sub_menu` (`kd_sub_menu`, `kd_menu`, `title_sub_menu`, `url_sub_menu`, `is_active_sub_menu`) VALUES
(0, 1, 'Dashboard', 'backend/home', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tiket`
--

CREATE TABLE `tbl_tiket` (
  `kd_tiket` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_tiket` varchar(50) DEFAULT NULL,
  `kursi_tiket` varchar(50) DEFAULT NULL,
  `umur_tiket` varchar(50) DEFAULT NULL,
  `asal_beli_tiket` varchar(50) DEFAULT NULL,
  `harga_tiket` varchar(50) NOT NULL,
  `etiket_tiket` varchar(100) DEFAULT NULL,
  `status_tiket` varchar(50) NOT NULL,
  `create_tgl_tiket` date DEFAULT NULL,
  `create_admin_tiket` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tiket`
--

INSERT INTO `tbl_tiket` (`kd_tiket`, `kd_order`, `nama_tiket`, `kursi_tiket`, `umur_tiket`, `asal_beli_tiket`, `harga_tiket`, `etiket_tiket`, `status_tiket`, `create_tgl_tiket`, `create_admin_tiket`) VALUES
('TORD00001J0004TJ002201904253', 'ORD00001', 'asdd', '3', '90 Tahun', 'TJ002', '145000', 'assets/backend/upload/etiket/ORD00001.pdf', '2', '2019-04-12', 'bahyu'),
('TORD00001J0004TJ002201904254', 'ORD00001', 'asda', '4', '90 Tahun', 'TJ002', '145000', 'assets/backend/upload/etiket/ORD00001.pdf', '2', '2019-04-12', 'bahyu');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_token_pelanggan`
--

CREATE TABLE `tbl_token_pelanggan` (
  `kd_token` int(11) NOT NULL,
  `nama_token` varchar(256) DEFAULT NULL,
  `email_token` varchar(50) DEFAULT NULL,
  `date_create_token` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_token_pelanggan`
--

INSERT INTO `tbl_token_pelanggan` (`kd_token`, `nama_token`, `email_token`, `date_create_token`) VALUES
(1, '8769ead286fcac65e946cc3b350887bf', '112201806064@mhs.dinus.ac.id', 1594305792),
(2, '76a42c5a5c38b85c406c30876220610a', 'intanjuniar94@gmail.com', 1594310419),
(3, '263102235006a47adaec49f5528840aa', 'intanjuniar94@gmail.com', 1594355410);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tujuan`
--

CREATE TABLE `tbl_tujuan` (
  `kd_tujuan` varchar(50) NOT NULL,
  `kota_tujuan` varchar(50) NOT NULL,
  `nama_terminal_tujuan` varchar(50) NOT NULL,
  `terminal_tujuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tujuan`
--

INSERT INTO `tbl_tujuan` (`kd_tujuan`, `kota_tujuan`, `nama_terminal_tujuan`, `terminal_tujuan`) VALUES
('TJ001', 'Semarang', 'Kantor Kencana Travel Semarang', 'Jalan Admodirono Raya nomor 5'),
('TJ002', 'Solo', 'Kantor Kencana Travel Solo', 'Jalan Dr. Radjiman 555 Laweyan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`kd_admin`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`kd_bank`);

--
-- Indexes for table `tbl_bus`
--
ALTER TABLE `tbl_bus`
  ADD PRIMARY KEY (`kd_bus`);

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`kd_jadwal`),
  ADD KEY `kd_bus` (`kd_bus`),
  ADD KEY `kd_tujuan` (`kd_tujuan`);

--
-- Indexes for table `tbl_konfirmasi`
--
ALTER TABLE `tbl_konfirmasi`
  ADD PRIMARY KEY (`kd_konfirmasi`),
  ADD KEY `kode_order` (`kd_order`);

--
-- Indexes for table `tbl_level`
--
ALTER TABLE `tbl_level`
  ADD PRIMARY KEY (`kd_level`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`kd_menu`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `kd_jadwal` (`kd_jadwal`),
  ADD KEY `kd_kustomer` (`kd_pelanggan`),
  ADD KEY `kd_tiket` (`kd_tiket`),
  ADD KEY `kd_bank` (`kd_bank`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`kd_pelanggan`);

--
-- Indexes for table `tbl_sub_menu`
--
ALTER TABLE `tbl_sub_menu`
  ADD PRIMARY KEY (`kd_sub_menu`),
  ADD KEY `kd_menu` (`kd_menu`);

--
-- Indexes for table `tbl_tiket`
--
ALTER TABLE `tbl_tiket`
  ADD PRIMARY KEY (`kd_tiket`),
  ADD KEY `kode_order` (`kd_order`);

--
-- Indexes for table `tbl_token_pelanggan`
--
ALTER TABLE `tbl_token_pelanggan`
  ADD PRIMARY KEY (`kd_token`);

--
-- Indexes for table `tbl_tujuan`
--
ALTER TABLE `tbl_tujuan`
  ADD PRIMARY KEY (`kd_tujuan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_level`
--
ALTER TABLE `tbl_level`
  MODIFY `kd_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `kd_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_token_pelanggan`
--
ALTER TABLE `tbl_token_pelanggan`
  MODIFY `kd_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
