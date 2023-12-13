-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 07:24 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_monitoring_kelas`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_penggunaan_kelas`
--

CREATE TABLE `tb_penggunaan_kelas` (
  `id_penggunaan` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) DEFAULT NULL,
  `deskripsi_kegiatan` text NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_penggunaan_kelas`
--

INSERT INTO `tb_penggunaan_kelas` (`id_penggunaan`, `nama_kegiatan`, `deskripsi_kegiatan`, `tanggal_mulai`, `tanggal_selesai`, `id_kelas`) VALUES
(3, 'Workshop', 'Workshop TIK', '2023-12-13', '2023-12-16', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_ruang_kelas`
--

CREATE TABLE `tb_ruang_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL,
  `lokasi_kelas` varchar(100) NOT NULL,
  `status_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_ruang_kelas`
--

INSERT INTO `tb_ruang_kelas` (`id_kelas`, `nama_kelas`, `lokasi_kelas`, `status_kelas`) VALUES
(1, 'Ruang Lab 1', 'Lantai 1 Gedung B', 'Kosong'),
(4, 'Ruang Lab 2', 'Lantai 1 Gedung A', 'Terisi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_penggunaan_kelas`
--
ALTER TABLE `tb_penggunaan_kelas`
  ADD PRIMARY KEY (`id_penggunaan`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `tb_ruang_kelas`
--
ALTER TABLE `tb_ruang_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_penggunaan_kelas`
--
ALTER TABLE `tb_penggunaan_kelas`
  MODIFY `id_penggunaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_ruang_kelas`
--
ALTER TABLE `tb_ruang_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_penggunaan_kelas`
--
ALTER TABLE `tb_penggunaan_kelas`
  ADD CONSTRAINT `kelas_penggunaan_kelas_id_foreign` FOREIGN KEY (`id_kelas`) REFERENCES `tb_ruang_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
