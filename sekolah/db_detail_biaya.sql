-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2024 at 07:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_detail_biaya`
--

-- --------------------------------------------------------

--
-- Table structure for table `bayar`
--

CREATE TABLE `bayar` (
  `id_biaya` int(50) NOT NULL,
  `nama_biaya` varchar(100) NOT NULL,
  `nominal_biaya` varchar(100) NOT NULL,
  `id_jurusan` int(10) NOT NULL,
  `id_tapel` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biaya`
--

CREATE TABLE `biaya` (
  `id_biaya` int(11) NOT NULL,
  `nama_biaya` varchar(11) NOT NULL,
  `nominal_biaya` varchar(11) NOT NULL,
  `id_jurusan` int(20) NOT NULL,
  `id_tapel` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `biaya`
--

INSERT INTO `biaya` (`id_biaya`, `nama_biaya`, `nominal_biaya`, `id_jurusan`, `id_tapel`) VALUES
(230012, 'SPP', '300.000', 2301, 255);

-- --------------------------------------------------------

--
-- Table structure for table `detail_biaya`
--

CREATE TABLE `detail_biaya` (
  `id_detail_biaya` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `tgl_bayar` varchar(12) NOT NULL,
  `id_biaya` int(10) NOT NULL,
  `dibayar` varchar(50) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_biaya`
--

INSERT INTO `detail_biaya` (`id_detail_biaya`, `id_siswa`, `tgl_bayar`, `id_biaya`, `dibayar`, `id_user`) VALUES
(9013, 221001025, '01032023', 230012, 'LUNAS', 50007889);

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(10) NOT NULL,
  `kode_jurusan` varchar(20) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL,
  `kaprodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `kode_jurusan`, `nama_jurusan`, `kaprodi`) VALUES
(2301, 'A31C', 'TEKNIK KOMPUTER DAN JARINGAN', 'Anarki');

-- --------------------------------------------------------

--
-- Table structure for table `tapel`
--

CREATE TABLE `tapel` (
  `id_tapel` int(10) NOT NULL,
  `tahun_tapel` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tapel`
--

INSERT INTO `tapel` (`id_tapel`, `tahun_tapel`) VALUES
(235013, '2022/2027');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bayar`
--
ALTER TABLE `bayar`
  ADD PRIMARY KEY (`id_biaya`);

--
-- Indexes for table `biaya`
--
ALTER TABLE `biaya`
  ADD PRIMARY KEY (`id_biaya`);

--
-- Indexes for table `detail_biaya`
--
ALTER TABLE `detail_biaya`
  ADD PRIMARY KEY (`id_detail_biaya`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `tapel`
--
ALTER TABLE `tapel`
  ADD PRIMARY KEY (`id_tapel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
