-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Des 2021 pada 07.27
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengambilan_matakuliah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_dosen`
--

CREATE TABLE `tabel_dosen` (
  `NIDN` varchar(15) NOT NULL,
  `Dosen_pengampu` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_dosen`
--

INSERT INTO `tabel_dosen` (`NIDN`, `Dosen_pengampu`) VALUES
('0000000001', 'Haried Novriando, S.Kom., M.En'),
('0000000002', 'Rina Septiriana , ST, M.Cs'),
('0000000003', 'Whilis Putri Pitaloka, S.IP .,'),
('0003118401', 'Novi Safriadi, ST, MT'),
('0006068501', 'Muhammad Azhar Irwansyah, ST,'),
('0008087204', 'DR. Arif Bijaksana PN., ST.MT.'),
('0009078604', 'Morteza Muthahhari, S.Kom, M.T'),
('0015017803', 'Tursina, ST., M.Cs'),
('0016107201', 'Yulianti, S.KOM, MMSI'),
('0017018601', 'Helen Sastypratiwi, ST, M.Eng'),
('0018108807', 'Enda Esyudha P, ST, MT'),
('0019088905', 'Anggi Perwitasari, ST, MT'),
('0025037501', 'Hengky Anra, ST, M.Kom'),
('0029047106', 'Helfi Nasution, Skom. MCs'),
('0029066805', 'DR. Herry Sujaini, ST.MT'),
('0030037806', 'Rudy Dwi Nyoto, ST, M.Eng'),
('0030048602', 'Anggi Srimurdianti Sukamto, ST');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_dosen_membimbing_mahasiswa`
--

CREATE TABLE `tabel_dosen_membimbing_mahasiswa` (
  `dosen_nidn` varchar(15) NOT NULL,
  `mahasiswa_nim` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_dosen_mengajar_mata_kuliah`
--

CREATE TABLE `tabel_dosen_mengajar_mata_kuliah` (
  `dosen_nidn` varchar(15) NOT NULL,
  `mata_kuliah_kode_mk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_ktm`
--

CREATE TABLE `tabel_ktm` (
  `NIM` varchar(20) NOT NULL,
  `Program_Studi` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_ktm`
--

INSERT INTO `tabel_ktm` (`NIM`, `Program_Studi`) VALUES
('D1041201002', 'Informatika'),
('D1041201003', 'Informatika'),
('D1041201004', 'Informatika'),
('D1041201005', 'Informatika'),
('D1041201006', 'Informatika'),
('D1041201007', 'Informatika'),
('D1041201008', 'Informatika'),
('D1041201009', 'Informatika'),
('D1041201010', 'Informatika'),
('D1041201011', 'Informatika'),
('D1041201012', 'Informatika'),
('D1041201013', 'Informatika'),
('D1041201014', 'Informatika'),
('D1041201015', 'Informatika'),
('D1041201016', 'Informatika'),
('D1041201017', 'Informatika'),
('D1041201019', 'Informatika'),
('D1041201020', 'Informatika'),
('D1041201022', 'Informatika'),
('D1041201024', 'Informatika'),
('D1041201025', 'Informatika'),
('D1041201026', 'Informatika'),
('D1041201027', 'Informatika'),
('D1041201028', 'Informatika'),
('D1041201029', 'Informatika'),
('D1041201030', 'Informatika'),
('D1041201031', 'Informatika'),
('D1041201032', 'Informatika'),
('D1041201033', 'Informatika'),
('D1041201034', 'Informatika'),
('D1041201035', 'Informatika'),
('D1041201036', 'Informatika'),
('D1041201037', 'Informatika'),
('D1041201038', 'Informatika'),
('D1041201039', 'Informatika'),
('D1041201041', 'Informatika'),
('D1041201042', 'Informatika'),
('D1041201043', 'Informatika'),
('D1041201044', 'Informatika'),
('D1041201045', 'Informatika'),
('D1041201046', 'Informatika'),
('D1041201048', 'Informatika'),
('D1041201050', 'Informatika'),
('D1041201051', 'Informatika'),
('D1041201053', 'Informatika'),
('D1041201054', 'Informatika'),
('D1041201055', 'Informatika'),
('D1041201056', 'Informatika'),
('D1041201057', 'Informatika'),
('D1041201058', 'Informatika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_mahasiswa`
--

CREATE TABLE `tabel_mahasiswa` (
  `NIM` varchar(20) NOT NULL,
  `Nama` char(30) NOT NULL,
  `IPK` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_mahasiswa`
--

INSERT INTO `tabel_mahasiswa` (`NIM`, `Nama`, `IPK`) VALUES
('D1041201002', 'Anggi Mustafa', 4),
('D1041201003', 'Galuh Kusuma Putri', 3.78),
('D1041201004', 'Abdul Khoir', 3.82),
('D1041201005', 'Fika Salsabila Tinanda', 3.74),
('D1041201006', 'Siti Zulfa', 3.7),
('D1041201007', 'Reza Rahmasari', 3.94),
('D1041201008', 'Dwisuci Rahmadani', 3.95),
('D1041201009', 'Ananda Alamul Ikram', 3.85),
('D1041201010', 'Crypta Muharrara Azzikra', 3.84),
('D1041201011', 'Ferry Wijaya Chai', 3.45),
('D1041201012', 'M. Reyhan Fadillah Widyapratam', 3.73),
('D1041201013', 'Rendy Kurniawan', 3.76),
('D1041201014', 'Septian Dwirizkianto', 3.59),
('D1041201015', 'Gilang Muhammad Hasbillah Hani', 3.89),
('D1041201016', 'Ricky Surya Adiputra', 3.9),
('D1041201017', 'Pravasta Guntur Kinantaka', 3.81),
('D1041201019', 'Akmal Putra Arianda', 3.82),
('D1041201020', 'Fadhil Al Fikri', 3.8),
('D1041201022', 'Kesya Ramita Pangaribuan', 3.52),
('D1041201024', 'Felix Theonaldo', 3.74),
('D1041201025', 'Ilham Syukur Yahya', 3.47),
('D1041201026', 'Irani Kamil', 3.7),
('D1041201027', 'Boy Boy Geodevandry', 3.45),
('D1041201028', 'Amirul Dewa Rizky', 3.84),
('D1041201029', 'Stanley Baldwin', 3.9),
('D1041201030', 'Ardian Arvon', 3.92),
('D1041201031', 'Andri', 3.97),
('D1041201032', 'Pebiu Lejimahani', 3.56),
('D1041201033', 'Rizki Utama Tedja', 3.34),
('D1041201034', 'Meily', 4),
('D1041201035', 'Abdul Aziz', 3.44),
('D1041201036', 'Karina Sellinoventi', 4),
('D1041201037', 'Isaac Marlon Marpaung', 3.93),
('D1041201038', 'Wasis Kresnawibowo', 3.82),
('D1041201039', 'Christian Jonathan', 3.73),
('D1041201041', 'Syarif Muhammad Alhaiza', 3.57),
('D1041201042', 'Dina Ferjiah Tulenan', 2.92),
('D1041201043', 'Ibnun Nizham', 3.62),
('D1041201044', 'Roby Ronal Vieri Simanjuntak', 2.95),
('D1041201045', 'Anisa Muharni', 3.34),
('D1041201046', 'Jonathan Darius', 4),
('D1041201048', 'Ade Irfan Rahman', 3.56),
('D1041201050', 'Akmal Sakirin', 3.67),
('D1041201051', 'Muhammad Fauzan Adzima', 3.55),
('D1041201053', 'Muchamad Rizky Pratama', 3.54),
('D1041201054', 'Syauqi Hanggewa', 3.33),
('D1041201055', 'Arini Shofa Imania', 3.43),
('D1041201056', 'Wendy', 3.74),
('D1041201057', 'Diva Adinda Maharani', 3.57),
('D1041201058', 'Angelina Elfrida Wibowo', 3.95);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_mahasiswa_memiliki_ktm`
--

CREATE TABLE `tabel_mahasiswa_memiliki_ktm` (
  `mahasiswa_nim` varchar(20) NOT NULL,
  `ktm_nim` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_mahasiswa_mengambil_mata_kuliah`
--

CREATE TABLE `tabel_mahasiswa_mengambil_mata_kuliah` (
  `mahasiswa_nim` varchar(20) NOT NULL,
  `mata_kuliah_kode_mk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_mata_kuliah`
--

CREATE TABLE `tabel_mata_kuliah` (
  `Kode_mk` varchar(20) NOT NULL,
  `Nama_mk` char(20) NOT NULL,
  `Kelas` char(1) NOT NULL,
  `Semester` tinyint(1) NOT NULL,
  `SKS` tinyint(1) NOT NULL,
  `Waktu` varchar(50) NOT NULL,
  `NIDN_pengampu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_mata_kuliah`
--

INSERT INTO `tabel_mata_kuliah` (`Kode_mk`, `Nama_mk`, `Kelas`, `Semester`, `SKS`, `Waktu`, `NIDN_pengampu`) VALUES
('INF-55201-201-1-A', 'Perancangan Basis Da', 'A', 3, 2, 'Selasa, 10.10 - 11.50', '0019088905'),
('INF-55201-201-1-B', 'Perancangan Basis Da', 'B', 3, 2, 'Selasa, 13.00 - 14.40', '0019088905'),
('INF-55201-201-1-C', 'Perancangan Basis Da', 'C', 3, 2, 'Rabu, 13.10 - 14.50', '0019088905'),
('INF-55201-202-1-A', 'Teori Graf', 'A', 3, 2, 'Senin, 13.00 - 14.40', '0000000001'),
('INF-55201-202-1-B', 'Teori Graf', 'B', 3, 2, 'Senin, 10.10 - 11.50', '0000000001'),
('INF-55201-202-1-C', 'Teori Graf', 'C', 3, 2, 'Kamis, 14.55 - 16.35', '0000000002'),
('INF-55201-203-1-A', 'Matematika Diskrit', 'A', 3, 3, 'Selasa, 14.45 - 17.15', '0018108807'),
('INF-55201-203-1-B', 'Matematika Diskrit', 'B', 3, 3, 'Selasa, 07.30 - 10.00', '0016107201'),
('INF-55201-203-1-C', 'Matematika Diskrit', 'C', 3, 3, 'Senin, 14.45 - 17.15', '0016107201'),
('INF-55201-204-1-A', 'Metode Numerik', 'A', 3, 3, 'Kamis, 07.30 - 10.00', '0017018601'),
('INF-55201-204-1-B', 'Metode Numerik', 'B', 3, 3, 'Rabu, 14.55 - 17.25', '0017018601'),
('INF-55201-204-1-C', 'Metode Numerik', 'C', 3, 3, 'Rabu, 07.30 - 10.00', '0017018601'),
('INF-55201-205-1-A', 'Jaringan Komputer', 'A', 3, 4, 'Jumat, 13.30 - 15.10 ; 15.20 - 17.00', '0006068501 ; 0000000001'),
('INF-55201-205-1-B', 'Jaringan Komputer', 'B', 3, 4, 'Kamis, 10.10 - 11.50 ; 13.10 - 14.50', '0006068501 ; 0000000001'),
('INF-55201-205-1-C', 'Jaringan Komputer', 'C', 3, 4, 'Selasa, 10.10 - 11.50 ; 13.00 - 14.40', '0006068501'),
('INF-55201-206-1-A', 'Strategi Algoritma', 'A', 3, 4, 'Jumat, 07.30 - 09.10 ; 09.15 - 10.55', '0008087204'),
('INF-55201-206-1-B', 'Strategi Algoritma', 'B', 3, 4, 'Jumat, 13.30 - 15.10 ; 15.20 - 17.00', '0029066805'),
('INF-55201-206-1-C', 'Strategi Algoritma', 'C', 3, 4, 'Kamis, 10.10 - 11.50 ; 13.10 - 14.50', '0009078604'),
('INF-55201-207-1-A', 'Sistem Operasi', 'A', 3, 3, 'Kamis, 14.55 - 17.25', '0029047106'),
('INF-55201-207-1-B', 'Sistem Operasi', 'B', 3, 3, 'Jumat, 07.30 - 10.00', '0029047106'),
('INF-55201-207-1-C', 'Sistem Operasi', 'C', 3, 3, 'Jumat, 13.30 - 16.00', '0003118401');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_dosen`
--
ALTER TABLE `tabel_dosen`
  ADD PRIMARY KEY (`NIDN`);

--
-- Indeks untuk tabel `tabel_dosen_membimbing_mahasiswa`
--
ALTER TABLE `tabel_dosen_membimbing_mahasiswa`
  ADD KEY `mahasiswa_nim` (`mahasiswa_nim`),
  ADD KEY `dosen_nidn` (`dosen_nidn`);

--
-- Indeks untuk tabel `tabel_dosen_mengajar_mata_kuliah`
--
ALTER TABLE `tabel_dosen_mengajar_mata_kuliah`
  ADD KEY `mata_kuliah_kode_mk` (`mata_kuliah_kode_mk`),
  ADD KEY `dosen_nidn` (`dosen_nidn`);

--
-- Indeks untuk tabel `tabel_ktm`
--
ALTER TABLE `tabel_ktm`
  ADD KEY `NIM` (`NIM`);

--
-- Indeks untuk tabel `tabel_mahasiswa`
--
ALTER TABLE `tabel_mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indeks untuk tabel `tabel_mahasiswa_memiliki_ktm`
--
ALTER TABLE `tabel_mahasiswa_memiliki_ktm`
  ADD KEY `mahasiswa_nim` (`mahasiswa_nim`),
  ADD KEY `ktm_nim` (`ktm_nim`);

--
-- Indeks untuk tabel `tabel_mahasiswa_mengambil_mata_kuliah`
--
ALTER TABLE `tabel_mahasiswa_mengambil_mata_kuliah`
  ADD KEY `mahasiswa_nim` (`mahasiswa_nim`,`mata_kuliah_kode_mk`),
  ADD KEY `mata_kuliah_kode_mk` (`mata_kuliah_kode_mk`);

--
-- Indeks untuk tabel `tabel_mata_kuliah`
--
ALTER TABLE `tabel_mata_kuliah`
  ADD PRIMARY KEY (`Kode_mk`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tabel_dosen_membimbing_mahasiswa`
--
ALTER TABLE `tabel_dosen_membimbing_mahasiswa`
  ADD CONSTRAINT `dosen_nidn` FOREIGN KEY (`dosen_nidn`) REFERENCES `tabel_dosen` (`NIDN`),
  ADD CONSTRAINT `tabel_dosen_membimbing_mahasiswa_ibfk_1` FOREIGN KEY (`mahasiswa_nim`) REFERENCES `tabel_mahasiswa` (`NIM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tabel_dosen_mengajar_mata_kuliah`
--
ALTER TABLE `tabel_dosen_mengajar_mata_kuliah`
  ADD CONSTRAINT `mata_kuliah_kode_mk` FOREIGN KEY (`mata_kuliah_kode_mk`) REFERENCES `tabel_mata_kuliah` (`Kode_mk`),
  ADD CONSTRAINT `tabel_dosen_mengajar_mata_kuliah_ibfk_1` FOREIGN KEY (`dosen_nidn`) REFERENCES `tabel_dosen` (`NIDN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tabel_mahasiswa_memiliki_ktm`
--
ALTER TABLE `tabel_mahasiswa_memiliki_ktm`
  ADD CONSTRAINT `ktm_nim` FOREIGN KEY (`ktm_nim`) REFERENCES `tabel_ktm` (`NIM`),
  ADD CONSTRAINT `mahasiswa_nim` FOREIGN KEY (`mahasiswa_nim`) REFERENCES `tabel_mahasiswa` (`NIM`);

--
-- Ketidakleluasaan untuk tabel `tabel_mahasiswa_mengambil_mata_kuliah`
--
ALTER TABLE `tabel_mahasiswa_mengambil_mata_kuliah`
  ADD CONSTRAINT `tabel_mahasiswa_mengambil_mata_kuliah_ibfk_1` FOREIGN KEY (`mahasiswa_nim`) REFERENCES `tabel_mahasiswa` (`NIM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tabel_mahasiswa_mengambil_mata_kuliah_ibfk_2` FOREIGN KEY (`mata_kuliah_kode_mk`) REFERENCES `tabel_mata_kuliah` (`Kode_mk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
