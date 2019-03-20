-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Mar 2019 pada 02.05
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dealer`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `motor`
--

CREATE TABLE `motor` (
  `kd_motor` varchar(30) NOT NULL,
  `merek` varchar(255) DEFAULT NULL,
  `stok` varchar(100) DEFAULT NULL,
  `harga_jual` varchar(15) DEFAULT NULL,
  `keterangan` varchar(255) NOT NULL,
  `jenis_motor` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `motor`
--

INSERT INTO `motor` (`kd_motor`, `merek`, `stok`, `harga_jual`, `keterangan`, `jenis_motor`) VALUES
('MI10', 'ninja', '10', '30000000', 'PEMILIK:mustafa', 'Sport'),
('MIIU7', 'SCOOPY', '12', '14500000', 'PEMILIK :ZANDRI', 'Matic'),
('MIIU8', 'MIO', '12', '14500000', 'PEMILIK :ZANDRI', 'Matic'),
('MIIU9', 'VARIO', '500', '15000000', 'PEMILIK :ZANDRI', 'Matic'),
('MIUY', 'VIXION', '12', '25000000', 'SDFGHJKLCVBNMXCVBNMXCVBNCVBNVB', 'Sport'),
('MU75', 'Trail', '12', '123456789', 'poiuyt', 'Sport'),
('MU77', 'FPX', '45', '200000000', 'PEMILIK:ZANDRI', 'Sport'),
('MU87', 'SUPRA-X', '2', '16500000000', 'DASDFGHJKL', 'Cub'),
('MUI78', 'SUPRA', '6', '16500000', 'GHJK', 'Cruiser'),
('MUI8', 'scoopy', '12', '14000000', 'milik bu mona', 'Matic'),
('MUS3', 'JET', '200', '120000000', 'DFGBHNJMK,LXCVBNMXC VBNM,CVBNVBN', 'Cub'),
('MUU7', 'ROCKER', '1', '1000000000', 'SDFGHJKL', 'Cruiser'),
('MUUI9', 'BHJ', '5', '10000000', 'BNM', 'Matic');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `no` int(11) NOT NULL,
  `kd_motor` varchar(255) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `no_card` varchar(255) NOT NULL,
  `merek` varchar(100) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `warna` varchar(100) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `kode` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`no`, `kd_motor`, `nama`, `cc`, `no_card`, `merek`, `harga`, `warna`, `keterangan`, `kode`) VALUES
(1, 'MIIU8', 'putra', 'CASH', '', 'MIO', '14500000', '==PILIH==', 'PEMILIK :ZANDRI', 795212),
(2, 'MIIU9', 'al yusra', 'CASH', '', 'VARIO', '15000000', '==PILIH==', 'PEMILIK :ZANDRI', 318875),
(3, 'MIIU7', 'dinie tst', 'VISA', '', 'SCOOPY', '14500000', '==PILIH==', 'PEMILIK :ZANDRI', 59139),
(4, 'MIIU8', 'fadhlan', 'CASH', '', 'MIO', '14500000', '==PILIH==', 'PEMILIK :ZANDRI', 698138),
(5, 'MIIU8', 'bu isil', 'VISA', '33565', 'MIO', '14500000', 'HIJAU', 'PEMILIK :ZANDRI', 205679),
(6, 'MIIU8', 'rizkif', 'CASH', '', 'MIO', '14500000', '==PILIH==', 'PEMILIK :ZANDRI', 700916),
(7, 'MIIU8', 'gia', 'VISA', '67890-009-098', 'MIO', '14500000', '==PILIH==', 'PEMILIK :ZANDRI', 97790);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`, `level`, `id`) VALUES
('mustafa', 'mustafa', '1', 1),
('zandri', 'zandri', '1', 2),
('danol', 'oppa', '2', 4),
('dini', 'noona', '2', 5),
('ebi', 'ebi', '1', 6),
('putra', 'putra', '1', 7),
('ian', 'ian', '2', 8),
('an', 'andi', '1', 9),
('putri', 'putri', '2', 10),
('mona', '2020', '2', 11),
('gia', 'gia', '1', 12);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `motor`
--
ALTER TABLE `motor`
  ADD PRIMARY KEY (`kd_motor`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
