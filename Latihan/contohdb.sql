-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 06 Bulan Mei 2023 pada 17.13
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contohdb`
--
CREATE DATABASE IF NOT EXISTS `contohdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `contohdb`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Kategori`
--

CREATE TABLE `Kategori` (
  `kode` char(2) NOT NULL,
  `nama` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `Kategori`
--

INSERT INTO `Kategori` (`kode`, `nama`) VALUES
('01', 'ATK'),
('02', 'Elektronika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` char(4) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `harga` decimal(10,0) DEFAULT NULL,
  `deskripsi` tinytext DEFAULT NULL,
  `kodekategori` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `nama`, `harga`, `deskripsi`, `kodekategori`) VALUES
('B001', 'Pensil', '6000', 'pensil anti patah', '01'),
('B002', 'Penggaris', '5000', NULL, '01'),
('B003', 'spidol', '10000', NULL, '01'),
('B004', 'tinta', '15000', NULL, '01'),
('B005', 'buku tulis', '9000', NULL, '01'),
('B006', 'buku gambar', '12000', NULL, '01'),
('B007', 'Kipas angin', '150000', NULL, '02'),
('B008', 'Televisi', '250000', NULL, '02'),
('B009', 'Kipas angin', '2000000', NULL, '02');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `Kategori`
--
ALTER TABLE `Kategori`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kodekategori` (`kodekategori`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`kodekategori`) REFERENCES `Kategori` (`kode`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
