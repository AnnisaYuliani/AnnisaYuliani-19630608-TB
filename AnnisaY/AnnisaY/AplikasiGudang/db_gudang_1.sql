-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2022 pada 09.34
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gudang_1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `item`
--

CREATE TABLE `item` (
  `id_item` varchar(10) NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(4) NOT NULL,
  `lokasi` text NOT NULL,
  `kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `item`
--

INSERT INTO `item` (`id_item`, `nama`, `jumlah`, `lokasi`, `kategori`) VALUES
('01', 'Meja', 50, 'Gudang A', 'Perlengkapan'),
('02', 'Kursi', 50, 'Gudang B', 'Perlengkapan'),
('03', 'Komputer', 4, 'Gudang z', 'Perlengkapan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluar`
--

CREATE TABLE `keluar` (
  `id_keluar` varchar(7) NOT NULL,
  `tanggal` text NOT NULL,
  `dipakai_untuk` varchar(50) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `id_item` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keluar`
--

INSERT INTO `keluar` (`id_keluar`, `tanggal`, `dipakai_untuk`, `jumlah`, `id_item`) VALUES
('01', '12-01-22', 'Boss', 2, '03'),
('02', '12-01-22', 'Acara', 40, '02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `masuk`
--

CREATE TABLE `masuk` (
  `id_masuk` varchar(7) NOT NULL,
  `tanggal` text NOT NULL,
  `diterima_dari` varchar(50) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `id_item` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `masuk`
--

INSERT INTO `masuk` (`id_masuk`, `tanggal`, `diterima_dari`, `jumlah`, `id_item`) VALUES
('01', '12-12-22', 'Loppi', 30, '01'),
('02', '12-12-22', 'Kopi', 4, '02'),
('03', '12-12-22', 'Loppi', 30, '03');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
