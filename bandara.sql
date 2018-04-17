-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 17, 2018 at 06:44 
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bandara`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`) VALUES
(1, 'fannyhasbi', '$2y$10$f9Js4biuGS2Uo4/8c1NiL.csEle2tAHrvqBk2VhBo0u7i7OFxrnMG', 'Fanny Hasbi');

-- --------------------------------------------------------

--
-- Table structure for table `bandara`
--

CREATE TABLE `bandara` (
  `kode_bandara` varchar(4) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `negara` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bandara`
--

INSERT INTO `bandara` (`kode_bandara`, `nama`, `kota`, `negara`) VALUES
('B000', 'Bandar Udara Internasional Ngurah Rai', 'Bali', 'Indonesia'),
('B001', 'Bandar Udara Internasional Sultan Aji Muhammad Sulaiman', 'Balikpapan', 'Indonesia'),
('G020', 'Bandar Udara Brebes', 'Brebes', 'Jerman'),
('J000', 'Bandar Udara Internasional Soekarno-Hatta', 'Jakarta', 'Indonesia'),
('J001', 'Bandar Udara Internasional Halim Perdanakusuma', 'Jakarta', 'Indonesia'),
('K000', 'Bandar Udara Internasional Kuala Lumpur', 'Kuala Lumpur', 'Jerman'),
('K001', 'Bandar Udara Dewadaru', 'Jepara', 'Indonesia'),
('K002', 'Bandar Udara Rahadi Oesman', 'Ketapang', 'Indonesia'),
('P001', 'Bandar Udara Iskandar', 'Pangkalanbun', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `landing`
--

CREATE TABLE `landing` (
  `id_lnd` int(5) NOT NULL,
  `asal` varchar(4) NOT NULL,
  `waktu` datetime NOT NULL,
  `kode_pesawat` varchar(5) NOT NULL,
  `penumpang` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `landing`
--

INSERT INTO `landing` (`id_lnd`, `asal`, `waktu`, `kode_pesawat`, `penumpang`) VALUES
(2, 'B001', '2017-11-08 03:22:00', 'PKCJC', 97),
(3, 'P001', '2017-11-23 08:16:00', 'PKLGQ', 143),
(4, 'B001', '2017-11-23 10:19:00', 'PKCJC', 130);

-- --------------------------------------------------------

--
-- Table structure for table `maskapai`
--

CREATE TABLE `maskapai` (
  `kode_maskapai` varchar(4) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maskapai`
--

INSERT INTO `maskapai` (`kode_maskapai`, `nama`) VALUES
('A001', 'AirAsia'),
('A002', 'Airfast Indonesia'),
('B001', 'Batik Air'),
('C001', 'Citilink'),
('G001', 'Garuda Indonesia'),
('L001', 'Lion Air'),
('S001', 'Sriwijaya Air');

-- --------------------------------------------------------

--
-- Table structure for table `pabrik`
--

CREATE TABLE `pabrik` (
  `kode_pabrik` varchar(4) NOT NULL,
  `nama_pabrik` varchar(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pabrik`
--

INSERT INTO `pabrik` (`kode_pabrik`, `nama_pabrik`, `lokasi`) VALUES
('0A01', 'Airbus', 'Perancis'),
('0A02', 'Viking Air', 'Kanada'),
('0A03', 'Boeing', 'Amerika Serikat');

-- --------------------------------------------------------

--
-- Table structure for table `pesawat`
--

CREATE TABLE `pesawat` (
  `kode_pesawat` varchar(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kapasitas` int(4) NOT NULL,
  `kode_maskapai` varchar(4) NOT NULL,
  `kode_pabrik` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesawat`
--

INSERT INTO `pesawat` (`kode_pesawat`, `nama`, `kapasitas`, `kode_maskapai`, `kode_pabrik`) VALUES
('PKCJC', 'Boeing 737-300', 149, 'S001', '0A03'),
('PKCJD', 'Boeing 737-500', 140, 'S001', '0A03'),
('PKCJE', 'Boeing 737-800', 189, 'S001', '0A03'),
('PKGJK', 'Boeing 737-800', 189, 'G001', '0A03'),
('PKGJL', 'Airbus A330-243', 253, 'G001', '0A01'),
('PKGLV', 'Boeing 737-300', 149, 'C001', '0A03'),
('PKGLW', 'Boeing 737-500', 140, 'C001', '0A03'),
('PKGLX', 'Boeing 737-500', 140, 'C001', '0A03'),
('PKGSI', 'Boeing 737-800', 189, 'G001', '0A03'),
('PKGSJ', 'Boeing 737-800', 189, 'G001', '0A03'),
('PKLGO', 'Boeing 737-900ER', 220, 'L001', '0A03'),
('PKLGP', 'Airbus A330-300', 295, 'L001', '0A01'),
('PKLGQ', 'Boeing 737-800', 189, 'L001', '0A03'),
('PKOCH', 'Vikingair DHC6-300 Twin Otter', 20, 'A002', '0A02'),
('PXAXO', 'Airbus A320-200', 180, 'A001', '0A01');

-- --------------------------------------------------------

--
-- Table structure for table `takeoff`
--

CREATE TABLE `takeoff` (
  `id_to` int(5) NOT NULL,
  `tujuan` varchar(4) NOT NULL,
  `waktu` datetime NOT NULL,
  `kode_pesawat` varchar(5) NOT NULL,
  `penumpang` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `takeoff`
--

INSERT INTO `takeoff` (`id_to`, `tujuan`, `waktu`, `kode_pesawat`, `penumpang`) VALUES
(3, 'B000', '2017-11-23 09:30:00', 'PXAXO', 333),
(5, 'B000', '2017-11-23 09:34:00', 'PXAXO', 332),
(6, 'K001', '2017-11-01 06:22:00', 'PKGSI', 30);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_landing`
-- (See below for the actual view)
--
CREATE TABLE `v_landing` (
`id_lnd` int(5)
,`kode_pesawat` varchar(5)
,`pesawat` varchar(203)
,`asal` varchar(152)
,`penumpang` int(4)
,`waktu` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pesawat`
-- (See below for the actual view)
--
CREATE TABLE `v_pesawat` (
`kode` varchar(5)
,`nama` varchar(100)
,`maskapai` varchar(100)
,`singgah` bigint(22)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_takeoff`
-- (See below for the actual view)
--
CREATE TABLE `v_takeoff` (
`id_to` int(5)
,`kode_pesawat` varchar(5)
,`pesawat` varchar(203)
,`tujuan` varchar(152)
,`penumpang` int(4)
,`waktu` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `v_landing`
--
DROP TABLE IF EXISTS `v_landing`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_landing`  AS  select `l`.`id_lnd` AS `id_lnd`,`p`.`kode_pesawat` AS `kode_pesawat`,concat((select `m`.`nama` AS `nama_maskapai` from `maskapai` `m` where (`m`.`kode_maskapai` = `p`.`kode_maskapai`)),' - ',`p`.`nama`) AS `pesawat`,concat(`b`.`nama`,', ',`b`.`kota`) AS `asal`,`l`.`penumpang` AS `penumpang`,date_format(`l`.`waktu`,'%e %b \'%y %H:%i') AS `waktu` from ((`landing` `l` join `pesawat` `p` on((`l`.`kode_pesawat` = `p`.`kode_pesawat`))) join `bandara` `b` on((`l`.`asal` = `b`.`kode_bandara`))) order by `l`.`id_lnd` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v_pesawat`
--
DROP TABLE IF EXISTS `v_pesawat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pesawat`  AS  select `p`.`kode_pesawat` AS `kode`,`p`.`nama` AS `nama`,`m`.`nama` AS `maskapai`,((select count(`takeoff`.`id_to`) from `takeoff` where (`takeoff`.`kode_pesawat` = `kode`)) + (select count(`landing`.`id_lnd`) from `landing` where (`landing`.`kode_pesawat` = `kode`))) AS `singgah` from (`pesawat` `p` join `maskapai` `m` on((`p`.`kode_maskapai` = `m`.`kode_maskapai`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_takeoff`
--
DROP TABLE IF EXISTS `v_takeoff`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_takeoff`  AS  select `t`.`id_to` AS `id_to`,`p`.`kode_pesawat` AS `kode_pesawat`,concat((select `m`.`nama` AS `nama_maskapai` from `maskapai` `m` where (`m`.`kode_maskapai` = `p`.`kode_maskapai`)),' - ',`p`.`nama`) AS `pesawat`,concat(`b`.`nama`,', ',`b`.`kota`) AS `tujuan`,`t`.`penumpang` AS `penumpang`,date_format(`t`.`waktu`,'%e %b \'%y %H:%i') AS `waktu` from ((`takeoff` `t` join `pesawat` `p` on((`t`.`kode_pesawat` = `p`.`kode_pesawat`))) join `bandara` `b` on((`t`.`tujuan` = `b`.`kode_bandara`))) order by `t`.`id_to` desc ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `bandara`
--
ALTER TABLE `bandara`
  ADD PRIMARY KEY (`kode_bandara`);

--
-- Indexes for table `landing`
--
ALTER TABLE `landing`
  ADD PRIMARY KEY (`id_lnd`),
  ADD KEY `kode_pesawat` (`kode_pesawat`),
  ADD KEY `asal` (`asal`);

--
-- Indexes for table `maskapai`
--
ALTER TABLE `maskapai`
  ADD PRIMARY KEY (`kode_maskapai`);

--
-- Indexes for table `pabrik`
--
ALTER TABLE `pabrik`
  ADD PRIMARY KEY (`kode_pabrik`);

--
-- Indexes for table `pesawat`
--
ALTER TABLE `pesawat`
  ADD PRIMARY KEY (`kode_pesawat`),
  ADD KEY `kode_maskapai` (`kode_maskapai`),
  ADD KEY `kode_pabrik` (`kode_pabrik`);

--
-- Indexes for table `takeoff`
--
ALTER TABLE `takeoff`
  ADD PRIMARY KEY (`id_to`),
  ADD KEY `tujuan` (`tujuan`),
  ADD KEY `kode_pesawat` (`kode_pesawat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `landing`
--
ALTER TABLE `landing`
  MODIFY `id_lnd` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `takeoff`
--
ALTER TABLE `takeoff`
  MODIFY `id_to` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `landing`
--
ALTER TABLE `landing`
  ADD CONSTRAINT `landing_ibfk_1` FOREIGN KEY (`kode_pesawat`) REFERENCES `pesawat` (`kode_pesawat`),
  ADD CONSTRAINT `landing_ibfk_2` FOREIGN KEY (`asal`) REFERENCES `bandara` (`kode_bandara`);

--
-- Constraints for table `pesawat`
--
ALTER TABLE `pesawat`
  ADD CONSTRAINT `pesawat_ibfk_1` FOREIGN KEY (`kode_maskapai`) REFERENCES `maskapai` (`kode_maskapai`),
  ADD CONSTRAINT `pesawat_ibfk_2` FOREIGN KEY (`kode_pabrik`) REFERENCES `pabrik` (`kode_pabrik`);

--
-- Constraints for table `takeoff`
--
ALTER TABLE `takeoff`
  ADD CONSTRAINT `takeoff_ibfk_1` FOREIGN KEY (`tujuan`) REFERENCES `bandara` (`kode_bandara`),
  ADD CONSTRAINT `takeoff_ibfk_2` FOREIGN KEY (`kode_pesawat`) REFERENCES `pesawat` (`kode_pesawat`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
