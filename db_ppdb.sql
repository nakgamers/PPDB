-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Apr 2025 pada 09.39
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ppdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `diskon`
--

CREATE TABLE `diskon` (
  `id` int(11) NOT NULL,
  `nama_diskon` varchar(100) NOT NULL,
  `jumlah_diskon` decimal(10,2) NOT NULL,
  `tipe_diskon` enum('nominal','persentase') DEFAULT 'nominal',
  `status` enum('aktif','nonaktif') DEFAULT 'aktif',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `diskon`
--

INSERT INTO `diskon` (`id`, `nama_diskon`, `jumlah_diskon`, `tipe_diskon`, `status`, `created_at`, `updated_at`) VALUES
(1, '0 Persen', 0.00, 'persentase', 'aktif', '2025-03-30 03:49:16', '2025-03-30 03:49:16'),
(2, '10 Persen', 10.00, 'persentase', 'aktif', '2025-03-30 03:49:48', '2025-03-30 03:49:48'),
(3, '20 Persen', 20.00, 'persentase', 'aktif', '2025-03-30 03:50:07', '2025-03-30 03:50:07'),
(4, 'Potongan Yatim', 25.00, 'persentase', 'aktif', '2025-03-30 03:50:42', '2025-03-30 03:53:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama_jurusan` varchar(100) NOT NULL,
  `detail_jurusan` text DEFAULT NULL,
  `harga_spp` decimal(10,2) DEFAULT 0.00,
  `foto_jurusan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama_jurusan`, `detail_jurusan`, `harga_spp`, `foto_jurusan`, `created_at`, `updated_at`) VALUES
(1, 'Tehnik Bisnis Sepeda Motor', 'Lorem', NULL, '1743244922_08b3c92b897af41db4cb.jpg', '2025-03-29 03:42:02', '2025-03-30 21:04:29'),
(2, 'Tehnik Jaringan Komputer Dan Telekomunikasi', 'tkj', NULL, '1743244963_d75feab86badfcfb67db.jpg', '2025-03-29 03:42:43', '2025-03-30 21:04:57'),
(3, 'Akuntansi Lembaga Dan Keuangan', 'Akuntansi', NULL, '1743244986_eeff45218f52c7652021.jpg', '2025-03-29 03:43:06', '2025-03-30 21:05:23'),
(4, 'Otomatisasi Tata Kelola Perkantoran', 'Otomatisasi Tata Kelola Perkantoran', NULL, '1743274809_7728ba36406c39144780.jpeg', '2025-03-29 12:00:09', '2025-03-30 21:06:22'),
(5, 'Tehnik Kendaraan Ringan', 'Tehnik Kendaraan Ringan', 300000.00, '1743274856_2375a210e50395a2856c.jpg', '2025-03-29 12:00:56', '2025-03-29 12:00:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `no_formulir` varchar(10) DEFAULT NULL,
  `jurusan_id` int(11) DEFAULT NULL,
  `nama_pembayaran` varchar(100) DEFAULT NULL,
  `jumlah` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `no_formulir`, `jurusan_id`, `nama_pembayaran`, `jumlah`) VALUES
(6, NULL, 2, 'SPP', 300000.00),
(7, NULL, 2, 'Uang Pangkal', 120000.00),
(8, NULL, 2, 'Seragam', 300000.00),
(9, NULL, 2, 'MPLS', 300000.00),
(10, NULL, 3, 'SPP', 300000.00),
(11, NULL, 3, 'Uang Pangkal', 240000.00),
(12, NULL, 3, 'Seragam', 300000.00),
(13, NULL, 4, 'SPP', 270000.00),
(14, NULL, 4, 'Uang Pangkal', 900000.00),
(15, NULL, 4, 'Seragam', 200000.00),
(16, NULL, 4, 'MPLS', 300000.00),
(17, NULL, 5, 'SPP', 270000.00),
(18, NULL, 5, 'Uang Pangkal', 300000.00),
(19, NULL, 5, 'Seragam', 500000.00),
(20, NULL, 5, 'MPLS', 200000.00),
(21, NULL, 5, 'Wear Pack', 150000.00),
(32, NULL, 1, 'SPP', 270000.00),
(33, NULL, 1, 'Uang Pangkal', 300000.00),
(34, NULL, 1, 'Seragam', 300000.00),
(35, NULL, 1, 'MPLS', 300000.00),
(36, NULL, 1, 'Wear Pack', 300000.00),
(37, NULL, 4, 'Wear Pack', 200000.00),
(38, NULL, 3, 'MPLS', 270000.00),
(39, NULL, 3, 'Wear Pack', 300000.00),
(40, NULL, 2, 'Wear Pack', 500000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran_detail`
--

CREATE TABLE `pembayaran_detail` (
  `id` int(11) NOT NULL,
  `pembayaran_siswa_id` int(11) DEFAULT NULL,
  `total_sebelum_diskon` decimal(10,2) DEFAULT NULL,
  `total_diskon` decimal(10,2) DEFAULT NULL,
  `total_setelah_diskon` decimal(10,2) DEFAULT NULL,
  `jumlah_bayar` decimal(10,2) DEFAULT NULL,
  `sisa_bayar` decimal(10,2) DEFAULT NULL,
  `status_pembayaran` enum('lunas','belum_lunas') DEFAULT 'belum_lunas',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran_detail`
--

INSERT INTO `pembayaran_detail` (`id`, `pembayaran_siswa_id`, `total_sebelum_diskon`, `total_diskon`, `total_setelah_diskon`, `jumlah_bayar`, `sisa_bayar`, `status_pembayaran`, `created_at`, `updated_at`) VALUES
(14, 39, 1520000.00, 0.00, 1520000.00, 1200000.00, 320000.00, 'belum_lunas', '2025-03-30 12:30:43', '2025-03-30 12:30:43'),
(15, 40, 1470000.00, 147000.00, 1323000.00, 1200000.00, 123000.00, 'belum_lunas', '2025-03-31 12:42:06', '2025-03-31 12:42:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran_siswa`
--

CREATE TABLE `pembayaran_siswa` (
  `id` int(11) NOT NULL,
  `pendaftaran_id` int(11) DEFAULT NULL,
  `pembayaran_id` int(11) DEFAULT NULL,
  `status` enum('Belum Lunas','Lunas') DEFAULT 'Belum Lunas',
  `tanggal_bayar` date DEFAULT NULL,
  `diskon_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran_siswa`
--

INSERT INTO `pembayaran_siswa` (`id`, `pendaftaran_id`, `pembayaran_id`, `status`, `tanggal_bayar`, `diskon_id`) VALUES
(14, 12, 32, 'Belum Lunas', '2025-03-30', 2),
(15, 12, 33, 'Belum Lunas', '2025-03-30', 2),
(16, 12, 34, 'Belum Lunas', '2025-03-30', 2),
(17, 12, 35, 'Belum Lunas', '2025-03-30', 2),
(18, 12, 36, 'Belum Lunas', '2025-03-30', 2),
(19, 12, 32, 'Belum Lunas', '2025-03-30', 3),
(20, 12, 33, 'Belum Lunas', '2025-03-30', 3),
(21, 12, 34, 'Belum Lunas', '2025-03-30', 3),
(22, 12, 35, 'Belum Lunas', '2025-03-30', 3),
(23, 12, 36, 'Belum Lunas', '2025-03-30', 3),
(24, 19, 10, 'Belum Lunas', '2025-03-30', 1),
(25, 19, 11, 'Belum Lunas', '2025-03-30', 1),
(26, 19, 12, 'Belum Lunas', '2025-03-30', 1),
(27, 19, 38, 'Belum Lunas', '2025-03-30', 1),
(28, 19, 39, 'Belum Lunas', '2025-03-30', 1),
(39, 14, 6, 'Belum Lunas', '2025-03-30', 1),
(40, 22, 32, 'Belum Lunas', '2025-03-31', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id` int(11) NOT NULL,
  `no_pendaftaran` int(20) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `sekolah_asal_id` int(11) DEFAULT NULL,
  `jurusan_id_1` int(11) DEFAULT NULL,
  `jurusan_id_2` int(11) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `nama_ortu` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kip_kks_pkh` enum('Ya','Tidak') DEFAULT NULL,
  `jenis_formulir` enum('Gratis','Bayar') DEFAULT 'Bayar',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`id`, `no_pendaftaran`, `nama_lengkap`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `sekolah_asal_id`, `jurusan_id_1`, `jurusan_id_2`, `no_hp`, `nama_ortu`, `alamat`, `kip_kks_pkh`, `jenis_formulir`, `created_at`, `updated_at`) VALUES
(12, 1, 'Supriadi', 'L', 'Pekalongan', '2025-03-19', 5, 1, NULL, '085725424166', 'sarkun', 'jl imam bonjol\r\nsmk 11 maret', 'Ya', 'Bayar', '2025-03-29 10:08:41', '2025-03-29 10:08:41'),
(14, 3, 'Dimas Putra Setiawan', 'L', 'Pekalongan', '1963-06-08', 5, 2, NULL, '085725424166', 'Tarmad', 'jl imam bonjol\r\nsmk 11 maret', 'Ya', 'Bayar', '2025-03-29 13:36:20', '2025-03-29 13:36:20'),
(15, 4, 'Anggun Putriana', 'P', 'Pekalongan', '1987-01-01', 6, 4, NULL, '085725424166', 'Susrihati', 'jl imam bonjol\r\nsmk 11 maret', 'Ya', 'Bayar', '2025-03-29 13:37:29', '2025-03-29 13:37:29'),
(17, 6, 'Nafsah Kirania', 'P', 'Bekasi', '1965-02-02', 3, 3, NULL, '085725424166', 'Susrihati', 'jl imam bonjol\r\nsmk 11 maret', 'Ya', 'Gratis', '2025-03-29 13:39:45', '2025-03-29 13:39:45'),
(18, 7, 'sutrisno', 'L', 'Bekasi', '1998-06-05', 3, 5, NULL, '085725424166', 'Riyanto', 'jl imam bonjol\r\nsmk 11 maret rt 002/014 desa telaga murni cikarang barat', 'Tidak', 'Bayar', '2025-03-29 13:40:57', '2025-03-29 13:40:57'),
(19, 8, 'Khalif Andra Saputra', 'L', 'Cikarang', '1999-06-08', 3, 3, NULL, NULL, NULL, NULL, NULL, 'Bayar', '2025-03-29 13:43:07', '2025-03-29 13:57:16'),
(20, 9, 'Sumiati', 'P', 'Bekasi', '2003-02-02', 2, 4, NULL, '085756525', 'Tarmad', 'jl imam bonjol\r\nsmk 11 maret', 'Ya', 'Gratis', '2025-03-29 14:18:40', '2025-03-29 14:18:40'),
(21, 8, 'Sodikin', 'P', 'Alipong', '2025-03-11', 5, 3, NULL, '085725424166', 'Tarmad', 'jl imam bonjol\r\nsmk 11 maret', 'Ya', 'Gratis', '2025-03-30 00:38:30', '2025-03-30 00:38:30'),
(22, 9, 'Andi', 'L', 'Bekasi', '2025-03-06', 2, 1, NULL, '085725424166', 'andiansyah', 'jl imam bonjol\r\nsmk 11 maret', 'Tidak', 'Gratis', '2025-03-31 05:39:39', '2025-03-31 05:39:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian_formulir`
--

CREATE TABLE `pengembalian_formulir` (
  `id` int(11) NOT NULL,
  `pendaftaran_id` int(11) NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `status` enum('Lengkap','Belum Lengkap') NOT NULL DEFAULT 'Belum Lengkap',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengembalian_formulir`
--

INSERT INTO `pengembalian_formulir` (`id`, `pendaftaran_id`, `tanggal_pengembalian`, `status`, `created_at`, `updated_at`) VALUES
(1, 14, '2025-03-30', 'Lengkap', '2025-03-30 06:45:23', '2025-03-30 06:45:23'),
(3, 17, '2025-03-30', 'Lengkap', '2025-03-30 11:38:22', '2025-03-30 11:38:22'),
(4, 21, '2025-03-30', 'Lengkap', '2025-03-30 11:45:05', '2025-03-30 11:45:05'),
(5, 22, '2025-03-31', 'Lengkap', '2025-03-31 12:40:57', '2025-03-31 12:40:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekolah_asal`
--

CREATE TABLE `sekolah_asal` (
  `id` int(11) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sekolah_asal`
--

INSERT INTO `sekolah_asal` (`id`, `nama_sekolah`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'SMP 1 Cikarang Barat', 'SMP 1 Cikarang Barat', '2025-03-29 04:45:12', '2025-03-29 04:45:12'),
(2, 'SMP 2 Cikarang Barat', 'SMP 2 Cikarang Barat', '2025-03-29 04:45:30', '2025-03-29 04:45:30'),
(3, 'MTS Alimaroh', 'MTS Alimaroh', '2025-03-29 04:45:48', '2025-03-29 04:45:48'),
(4, 'SMA Al-Arabi', 'SMA Al-Arabi', '2025-03-29 04:46:37', '2025-03-29 04:46:37'),
(5, 'SMP 8 Cikarang Barat', 'SMP 8 Cikarang Barat', '2025-03-29 04:47:01', '2025-03-29 04:47:01'),
(6, 'SMP 5 Cikarang Barat', 'Jl Makakdnamsd', '2025-03-29 06:23:00', '2025-03-29 06:23:00'),
(7, 'SMP 9 Cikarang Barat', 'jl imam bonjol\nsmk 11 maret', '2025-03-29 08:37:19', '2025-03-29 08:37:19'),
(8, 'SMA Al-Arabi', 'mngjhgjyg', '2025-03-29 09:50:43', '2025-03-29 09:50:43'),
(9, 'SMPN 10 Cikarang Barat', 'SMPN 10 Cikarang Barat', '2025-03-29 13:58:35', '2025-03-29 13:58:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nisn` varchar(20) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','siswa') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created_at`, `updated_at`) VALUES
(2, 'admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', '2025-03-29 09:56:41', '2025-03-29 09:56:41');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `diskon`
--
ALTER TABLE `diskon`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jurusan_id` (`jurusan_id`);

--
-- Indeks untuk tabel `pembayaran_detail`
--
ALTER TABLE `pembayaran_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembayaran_siswa_id` (`pembayaran_siswa_id`);

--
-- Indeks untuk tabel `pembayaran_siswa`
--
ALTER TABLE `pembayaran_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pendaftaran_id` (`pendaftaran_id`),
  ADD KEY `pembayaran_id` (`pembayaran_id`),
  ADD KEY `diskon_id` (`diskon_id`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sekolah_asal_id` (`sekolah_asal_id`),
  ADD KEY `jurusan_id_1` (`jurusan_id_1`),
  ADD KEY `jurusan_id_2` (`jurusan_id_2`);

--
-- Indeks untuk tabel `pengembalian_formulir`
--
ALTER TABLE `pengembalian_formulir`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pendaftaran_id` (`pendaftaran_id`);

--
-- Indeks untuk tabel `sekolah_asal`
--
ALTER TABLE `sekolah_asal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nisn` (`nisn`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `diskon`
--
ALTER TABLE `diskon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `pembayaran_detail`
--
ALTER TABLE `pembayaran_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `pembayaran_siswa`
--
ALTER TABLE `pembayaran_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `pengembalian_formulir`
--
ALTER TABLE `pengembalian_formulir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sekolah_asal`
--
ALTER TABLE `sekolah_asal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembayaran_detail`
--
ALTER TABLE `pembayaran_detail`
  ADD CONSTRAINT `pembayaran_detail_ibfk_1` FOREIGN KEY (`pembayaran_siswa_id`) REFERENCES `pembayaran_siswa` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembayaran_siswa`
--
ALTER TABLE `pembayaran_siswa`
  ADD CONSTRAINT `pembayaran_siswa_ibfk_1` FOREIGN KEY (`pendaftaran_id`) REFERENCES `pendaftaran` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pembayaran_siswa_ibfk_2` FOREIGN KEY (`pembayaran_id`) REFERENCES `pembayaran` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pembayaran_siswa_ibfk_3` FOREIGN KEY (`diskon_id`) REFERENCES `diskon` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD CONSTRAINT `pendaftaran_ibfk_1` FOREIGN KEY (`sekolah_asal_id`) REFERENCES `sekolah_asal` (`id`),
  ADD CONSTRAINT `pendaftaran_ibfk_2` FOREIGN KEY (`jurusan_id_1`) REFERENCES `jurusan` (`id`),
  ADD CONSTRAINT `pendaftaran_ibfk_3` FOREIGN KEY (`jurusan_id_2`) REFERENCES `jurusan` (`id`);

--
-- Ketidakleluasaan untuk tabel `pengembalian_formulir`
--
ALTER TABLE `pengembalian_formulir`
  ADD CONSTRAINT `pengembalian_formulir_ibfk_1` FOREIGN KEY (`pendaftaran_id`) REFERENCES `pendaftaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
