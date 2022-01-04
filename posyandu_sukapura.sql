-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2020 at 08:16 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posyandu_sukapura`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(5) NOT NULL,
  `nama_agenda` varchar(100) NOT NULL,
  `jenis` varchar(150) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(100) NOT NULL,
  `keterangan` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `nama_agenda`, `jenis`, `tanggal`, `tempat`, `keterangan`) VALUES
(8878, 'Imunisasi', 'tahunan', '2020-04-18', 'Desa Mekarmulya', 'Agenda ini dilaksankan untuk semua balita yang belum pernah melakukan imunisasi'),
(8880, 'Cek Kesehatan balita', 'mingguan', '2020-04-20', 'Desa Sukamulya', 'Dilaksanakan untuk setiap balita secara berkala'),
(8881, 'Pemberian vitamin', 'bulanan', '2020-04-30', 'Desa Mekarmulya', 'Kegiatan ini dilaksanakan di setiap desa pada akhir bulan');

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `no_kk` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telp` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_anak`
--

CREATE TABLE `data_anak` (
  `nama` varchar(100) NOT NULL,
  `nama_orangtua` varchar(100) NOT NULL,
  `no_kk` int(100) NOT NULL,
  `tanggal_lahir` varchar(100) DEFAULT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`no_kk`);

--
-- Indexes for table `data_anak`
--
ALTER TABLE `data_anak`
  ADD PRIMARY KEY (`no_kk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8884;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
