-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 30 Apr 2023 pada 18.02
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
-- Database: `retail`
--
CREATE DATABASE IF NOT EXISTS `retail` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `retail`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mstr_customer`
--

CREATE TABLE `mstr_customer` (
  `id` varchar(32) NOT NULL,
  `description` varchar(32) NOT NULL,
  `alamat` varchar(32) NOT NULL,
  `telp` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabel master customer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `mstr_suplier`
--

CREATE TABLE `mstr_suplier` (
  `id` varchar(32) NOT NULL,
  `description` varchar(32) NOT NULL,
  `alamat` varchar(32) NOT NULL,
  `telp` int(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mstr_user`
--

CREATE TABLE `mstr_user` (
  `id` varchar(32) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` datetime NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `sandi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_barang`
--

CREATE TABLE `m_barang` (
  `id` varchar(32) NOT NULL,
  `description` varchar(32) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_beli`
--

CREATE TABLE `t_beli` (
  `id` varchar(32) NOT NULL,
  `recdate` datetime NOT NULL,
  `supplier` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_beli_detail`
--

CREATE TABLE `t_beli_detail` (
  `id` varchar(32) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `barang` varchar(32) NOT NULL,
  `qty` double NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_jual`
--

CREATE TABLE `t_jual` (
  `id` varchar(32) NOT NULL,
  `recdate` datetime NOT NULL,
  `customer` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_jual_detail`
--

CREATE TABLE `t_jual_detail` (
  `id` varchar(32) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `barang` varchar(32) NOT NULL,
  `qty` double NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_retur_beli_detail`
--

CREATE TABLE `t_retur_beli_detail` (
  `id` varchar(32) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `barang` varchar(32) NOT NULL,
  `qty` double NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_retur_detail`
--

CREATE TABLE `t_retur_detail` (
  `id` varchar(32) NOT NULL,
  `recdate` datetime NOT NULL,
  `supplier` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_retur_jual`
--

CREATE TABLE `t_retur_jual` (
  `id` varchar(32) NOT NULL,
  `recdate` datetime NOT NULL,
  `supplier` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_retur_jual_detail`
--

CREATE TABLE `t_retur_jual_detail` (
  `id` varchar(32) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `barang` varchar(32) NOT NULL,
  `qty` double NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mstr_customer`
--
ALTER TABLE `mstr_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mstr_suplier`
--
ALTER TABLE `mstr_suplier`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mstr_user`
--
ALTER TABLE `mstr_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_barang`
--
ALTER TABLE `m_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_beli`
--
ALTER TABLE `t_beli`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_beli_detail`
--
ALTER TABLE `t_beli_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_jual`
--
ALTER TABLE `t_jual`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_jual_detail`
--
ALTER TABLE `t_jual_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_retur_beli_detail`
--
ALTER TABLE `t_retur_beli_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_retur_detail`
--
ALTER TABLE `t_retur_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_retur_jual`
--
ALTER TABLE `t_retur_jual`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_retur_jual_detail`
--
ALTER TABLE `t_retur_jual_detail`
  ADD PRIMARY KEY (`id`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
