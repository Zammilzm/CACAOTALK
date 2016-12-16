-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Des 2016 pada 01.57
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cacaotalk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_buah_kakao`
--

CREATE TABLE `data_buah_kakao` (
  `id_buah` int(5) NOT NULL,
  `nama_buah` varchar(20) NOT NULL,
  `jenis_kakao` enum('Mulia','Lindak') NOT NULL,
  `warna_biji` enum('Putih','Ungu','Merah Kecoklatan') NOT NULL,
  `berat_biji` varchar(10) NOT NULL,
  `ketahanan_penyakit` varchar(50) NOT NULL,
  `deskripsi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_buah_kakao`
--

INSERT INTO `data_buah_kakao` (`id_buah`, `nama_buah`, `jenis_kakao`, `warna_biji`, `berat_biji`, `ketahanan_penyakit`, `deskripsi`) VALUES
(1, 'klon dr 1', 'Mulia', 'Putih', '1,36 g', 'Rentan terhadap penyakit busuk buah dan VSD', 'Bersifat tidak kompatibel menyerbuk sendiri sehingga masih dapat terkontaminasi serbuk sari klon lain'),
(2, 'KLON DR 2', 'Mulia', 'Putih', '1,19 g', 'Tahan penyakit busuk buah.', 'Bersifat kompatibel menyerbuk sendiri'),
(3, 'KLON DR 38', 'Mulia', 'Putih', '1,47 g', 'Rentan terhadap penyakit busuk buah dan VSD.', ' Bersifat kompatibel menyerbuk sendiri,'),
(4, 'KLON DR C16', 'Mulia', 'Putih', '1,19 g', 'Tahan penyakit busuk buah.', 'Bersifat kompatibel menyerbuk sendiri'),
(5, 'KLON ICCRI 01', 'Mulia', 'Putih', '1,36 g', 'Rentan penyakit VSD.', 'Bersifat kompatibel menyerbuk sendiri'),
(6, 'KLON ICCRI 02', 'Mulia', 'Putih', '1,32 g', 'Rentan penyakit VSD.', ' Bersifat kompatibel menyerbuk sendiri,'),
(7, 'KLON GC 7', 'Lindak', 'Ungu', '1,24 g', ' Rentan penyakit VSD, Rentan hama PBK.', 'Bersifat tidak kompatibel menyerbuk sendiri'),
(8, 'KLON TSH 858', 'Lindak', 'Ungu', '1,15 g', 'Moderat tahan penyakit busuk buah, Rentan penyakit', ' Bersifat tidak kompatibel menyerbuk sendiri'),
(9, 'KLON TSH 858', 'Lindak', 'Ungu', '1,15 g', 'Moderat tahan penyakit busuk buah, Rentan penyakit', ' Bersifat tidak kompatibel menyerbuk sendiri'),
(10, 'KLON ICS 13', 'Lindak', 'Ungu', '1,05 g', 'Moderat tahan penyakit busuk buah, Rentan penyakit', 'Bersifat kompatibel menyerbuk sendiri'),
(11, 'KLON NIC 7', 'Lindak', 'Ungu', '1,5 g', 'Moderat tahan penyakit busuk buah, Moderat tahan p', ' Bersifat kompatibel menyerbuk sendiri,'),
(12, 'KLON PA 300', 'Mulia', 'Putih', '1,14 g', 'Moderat tahan penyakit busuk buah, Moderat tahan p', 'Bersifat kompatibel menyerbuk sendiri'),
(13, 'KLON RCC 70', 'Mulia', 'Putih', '1,18 g', 'Moderat tahan penyakit busuk buah, Rentan penyakit', 'Bersifat kompatibel menyerbuk sendiri'),
(14, 'KLON ICCRI 03', 'Lindak', 'Ungu', ' 1,18 g', 'Tahan penyakit busuk buah, Moderat tahan penyakit ', 'Bersifat kompatibel menyerbuk sendiri,'),
(15, 'KLON ICCRI 04', 'Lindak', 'Ungu', '1,12 g', 'Tahan penyakit busuk buah, Moderat tahan penyakit ', 'Bersifat kompatibel menyerbuk sendiri'),
(16, 'klon dr 1', 'Mulia', 'Putih', '', '', ''),
(17, 'zammil', 'Lindak', 'Ungu', '20', 'tahan panas', 'Bersifat kompatibel menyerbuk sendiri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `olahan_pasca_produksi`
--

CREATE TABLE `olahan_pasca_produksi` (
  `id_hasil_produksi` int(5) NOT NULL,
  `id_produksi` int(5) NOT NULL,
  `hasil_produksi_total` int(20) NOT NULL,
  `jumlah_lemak_kakao` int(20) NOT NULL,
  `jumlah_permen_cokelat` int(20) NOT NULL,
  `jumlah_bubuk_kakao` int(20) NOT NULL,
  `jumlah_bubuk_cokelat` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `olahan_pasca_produksi`
--

INSERT INTO `olahan_pasca_produksi` (`id_hasil_produksi`, `id_produksi`, `hasil_produksi_total`, `jumlah_lemak_kakao`, `jumlah_permen_cokelat`, `jumlah_bubuk_kakao`, `jumlah_bubuk_cokelat`) VALUES
(1, 3, 1000, 500, 250, 500, 250),
(2, 4, 1000, 500, 250, 500, 250),
(3, 5, 500, 250, 25, 250, 25),
(4, 7, 1500, 586, 493, 61519, 47985),
(5, 8, 1500, 586, 493, 61519, 47985),
(6, 9, 100, 39, 33, 4101, 3199),
(7, 10, 100, 39, 33, 41, 32);

-- --------------------------------------------------------

--
-- Struktur dari tabel `panen_kakao`
--

CREATE TABLE `panen_kakao` (
  `id_panen` int(5) NOT NULL,
  `id_tanam` int(5) NOT NULL,
  `tanggal_panen` date NOT NULL,
  `produktivitas` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `panen_kakao`
--

INSERT INTO `panen_kakao` (`id_panen`, `id_tanam`, `tanggal_panen`, `produktivitas`) VALUES
(1, 1, '2016-07-02', 1200),
(2, 2, '2016-10-01', 1000),
(3, 3, '2016-07-01', 1200),
(4, 5, '2016-10-02', 525),
(5, 7, '2016-12-01', -100),
(6, 8, '2016-06-20', 250),
(7, 9, '2016-06-20', 500),
(8, 10, '2017-05-06', 675),
(9, 11, '2017-05-21', 700),
(10, 12, '2017-05-06', 675);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(5) NOT NULL,
  `nama_pemesan` varchar(30) NOT NULL,
  `alamat_pemesan` varchar(30) NOT NULL,
  `instansi_pemesan` varchar(30) NOT NULL,
  `bubuk_coklat_dipesan` int(30) NOT NULL DEFAULT '0',
  `permen_coklat_dipesan` int(30) NOT NULL DEFAULT '0',
  `status` enum('tervalidasi','tidak tervalidasi') NOT NULL DEFAULT 'tidak tervalidasi'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `nama_pemesan`, `alamat_pemesan`, `instansi_pemesan`, `bubuk_coklat_dipesan`, `permen_coklat_dipesan`, `status`) VALUES
(6, 'zammil', 'jember', '', 0, 0, 'tervalidasi'),
(7, 'zammil', 'jember', '', 0, 0, ''),
(8, 'ssdew', 'wewe', '', 0, 8, 'tidak tervalidasi'),
(9, 'fasd', 'desde', '', 17, 25, ''),
(10, 'aefwe', 'efsd', '', 8, 2, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penanaman_kakao`
--

CREATE TABLE `penanaman_kakao` (
  `id_tanam` int(5) NOT NULL,
  `id_buah` int(5) NOT NULL,
  `tanggal_tanam` date NOT NULL,
  `musim_tanam` enum('Kemarau','Hujan') NOT NULL,
  `jumlah_bibit` varchar(20) NOT NULL,
  `luas_lahan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penanaman_kakao`
--

INSERT INTO `penanaman_kakao` (`id_tanam`, `id_buah`, `tanggal_tanam`, `musim_tanam`, `jumlah_bibit`, `luas_lahan`) VALUES
(1, 1, '2016-01-02', 'Kemarau', '20', '100'),
(2, 1, '2016-01-01', 'Hujan', '20', '100'),
(3, 1, '2016-01-01', 'Kemarau', '20', '50'),
(4, 4, '2016-01-01', 'Hujan', '50', '56789'),
(5, 1, '2016-01-02', 'Hujan', '25', '56789'),
(6, 15, '2016-09-01', 'Hujan', '50', '100'),
(7, 15, '2016-01-01', 'Hujan', '50', '100'),
(8, 6, '2016-01-01', 'Hujan', '50', '1000'),
(9, 6, '2016-01-01', 'Hujan', '100', '1000'),
(10, 1, '2016-12-01', 'Kemarau', '100', '9'),
(11, 1, '2016-12-01', 'Kemarau', '100', '900'),
(12, 1, '2016-12-01', 'Kemarau', '100', '900');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penggudangan_hasil_panen`
--

CREATE TABLE `penggudangan_hasil_panen` (
  `id_stok` int(5) NOT NULL,
  `id_panen` int(5) NOT NULL,
  `nama_buah` varchar(20) NOT NULL,
  `tanggal_tanam` date NOT NULL,
  `tanggal_panen` date NOT NULL,
  `produktivitas` int(10) UNSIGNED NOT NULL,
  `panen_disimpan` int(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penggudangan_hasil_panen`
--

INSERT INTO `penggudangan_hasil_panen` (`id_stok`, `id_panen`, `nama_buah`, `tanggal_tanam`, `tanggal_panen`, `produktivitas`, `panen_disimpan`) VALUES
(2, 2, 'klon dr 1', '2016-01-01', '2016-10-01', 1000, 500),
(3, 2, 'klon dr 1', '2016-01-01', '2016-10-01', 1000, 1000),
(4, 4, 'klon dr 1', '2016-01-02', '2016-10-02', 625, 100),
(5, 5, 'KLON ICCRI 04', '2016-01-01', '2016-12-01', 1500, 100),
(6, 5, 'KLON ICCRI 04', '2016-01-01', '2016-12-01', 1400, 1500),
(7, 1, 'klon dr 1', '2016-01-02', '2016-07-02', 1200, 1700),
(8, 6, 'KLON ICCRI 02', '2016-01-01', '2016-06-20', 500, 600),
(9, 6, 'KLON ICCRI 02', '2016-01-01', '2016-06-20', 500, 100),
(10, 6, 'KLON ICCRI 02', '2016-01-01', '2016-06-20', 400, 500),
(11, 2, 'klon dr 1', '2016-01-01', '2016-10-01', 1000, 20000),
(12, 6, 'KLON ICCRI 02', '2016-01-01', '2016-06-20', 400, 500),
(13, 6, 'KLON ICCRI 02', '2016-01-01', '2016-06-20', 400, 500),
(14, 6, 'KLON ICCRI 02', '2016-01-01', '2016-06-20', 400, 500),
(15, 6, 'KLON ICCRI 02', '2016-01-01', '2016-06-20', 400, 500),
(16, 7, 'KLON ICCRI 02', '2016-01-01', '2016-06-20', 500, 600),
(17, 7, 'KLON ICCRI 02', '2016-01-01', '2016-06-20', 500, 600),
(18, 4, 'klon dr 1', '2016-01-02', '2016-10-02', 525, 600),
(19, 1, '', '0000-00-00', '0000-00-00', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produksi_pengolahan`
--

CREATE TABLE `produksi_pengolahan` (
  `id_produksi` int(5) NOT NULL,
  `id_stok` int(5) NOT NULL,
  `jumlah_produksi` varchar(20) NOT NULL,
  `metode_sortir` enum('Konvensional','Modern') NOT NULL,
  `tipe_granding` enum('Batu','Logam') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produksi_pengolahan`
--

INSERT INTO `produksi_pengolahan` (`id_produksi`, `id_stok`, `jumlah_produksi`, `metode_sortir`, `tipe_granding`) VALUES
(2, 3, '1000', 'Konvensional', 'Batu'),
(3, 3, '1000', 'Konvensional', 'Batu'),
(4, 3, '1000', 'Konvensional', 'Batu'),
(5, 2, '500', 'Konvensional', 'Batu'),
(6, 6, '1500', 'Konvensional', 'Batu'),
(7, 6, '1500', 'Konvensional', 'Batu'),
(8, 6, '1500', 'Konvensional', 'Batu'),
(9, 4, '100', 'Konvensional', 'Batu'),
(10, 5, '100', 'Konvensional', 'Batu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$s60yKVcaIo3sS524duHbQuGFsl6nlNibvOx1wb.fQKG.iitguT.VK', 'hg37Nnsp3zA915rdGFHrRWyEq24sWpb2drZNJz1GNRJudfdKVuDi1rZOZPck', '2016-12-13 07:43:00', '2016-12-13 08:48:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_buah_kakao`
--
ALTER TABLE `data_buah_kakao`
  ADD PRIMARY KEY (`id_buah`);

--
-- Indexes for table `olahan_pasca_produksi`
--
ALTER TABLE `olahan_pasca_produksi`
  ADD PRIMARY KEY (`id_hasil_produksi`),
  ADD KEY `Id_Produksi` (`id_produksi`);

--
-- Indexes for table `panen_kakao`
--
ALTER TABLE `panen_kakao`
  ADD PRIMARY KEY (`id_panen`),
  ADD KEY `id_tanam` (`id_tanam`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `penanaman_kakao`
--
ALTER TABLE `penanaman_kakao`
  ADD PRIMARY KEY (`id_tanam`),
  ADD KEY `id_buah` (`id_buah`);

--
-- Indexes for table `penggudangan_hasil_panen`
--
ALTER TABLE `penggudangan_hasil_panen`
  ADD PRIMARY KEY (`id_stok`),
  ADD KEY `id_panen` (`id_panen`);

--
-- Indexes for table `produksi_pengolahan`
--
ALTER TABLE `produksi_pengolahan`
  ADD PRIMARY KEY (`id_produksi`),
  ADD KEY `id_panen` (`id_stok`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_buah_kakao`
--
ALTER TABLE `data_buah_kakao`
  MODIFY `id_buah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `olahan_pasca_produksi`
--
ALTER TABLE `olahan_pasca_produksi`
  MODIFY `id_hasil_produksi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `panen_kakao`
--
ALTER TABLE `panen_kakao`
  MODIFY `id_panen` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `penanaman_kakao`
--
ALTER TABLE `penanaman_kakao`
  MODIFY `id_tanam` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `penggudangan_hasil_panen`
--
ALTER TABLE `penggudangan_hasil_panen`
  MODIFY `id_stok` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `produksi_pengolahan`
--
ALTER TABLE `produksi_pengolahan`
  MODIFY `id_produksi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `olahan_pasca_produksi`
--
ALTER TABLE `olahan_pasca_produksi`
  ADD CONSTRAINT `olahan_pasca_produksi_ibfk_1` FOREIGN KEY (`id_produksi`) REFERENCES `produksi_pengolahan` (`id_produksi`),
  ADD CONSTRAINT `olahan_pasca_produksi_ibfk_2` FOREIGN KEY (`id_produksi`) REFERENCES `produksi_pengolahan` (`id_produksi`);

--
-- Ketidakleluasaan untuk tabel `panen_kakao`
--
ALTER TABLE `panen_kakao`
  ADD CONSTRAINT `panen_kakao_ibfk_1` FOREIGN KEY (`id_tanam`) REFERENCES `penanaman_kakao` (`id_tanam`);

--
-- Ketidakleluasaan untuk tabel `penanaman_kakao`
--
ALTER TABLE `penanaman_kakao`
  ADD CONSTRAINT `penanaman_kakao_ibfk_1` FOREIGN KEY (`id_buah`) REFERENCES `data_buah_kakao` (`id_buah`);

--
-- Ketidakleluasaan untuk tabel `penggudangan_hasil_panen`
--
ALTER TABLE `penggudangan_hasil_panen`
  ADD CONSTRAINT `penggudangan_hasil_panen_ibfk_1` FOREIGN KEY (`id_panen`) REFERENCES `panen_kakao` (`id_panen`);

--
-- Ketidakleluasaan untuk tabel `produksi_pengolahan`
--
ALTER TABLE `produksi_pengolahan`
  ADD CONSTRAINT `produksi_pengolahan_ibfk_1` FOREIGN KEY (`id_stok`) REFERENCES `penggudangan_hasil_panen` (`id_stok`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
