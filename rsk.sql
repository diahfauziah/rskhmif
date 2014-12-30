-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 04, 2014 at 03:55 PM
-- Server version: 5.5.12
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `rsk`
--

-- --------------------------------------------------------

--
-- Table structure for table `contoh`
--

CREATE TABLE IF NOT EXISTS `contoh` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namafile` varchar(256) NOT NULL,
  `ukuran` int(10) unsigned NOT NULL,
  `keterangan` text NOT NULL,
  `tanggalupload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `contoh`
--


-- --------------------------------------------------------

--
-- Table structure for table `pembuat`
--

CREATE TABLE IF NOT EXISTS `pembuat` (
  `idpembuat` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(32) NOT NULL,
  `namapanjang` varchar(64) NOT NULL,
  `kepengurusan` int(11) NOT NULL,
  PRIMARY KEY (`idpembuat`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `pembuat`
--

INSERT INTO `pembuat` (`idpembuat`, `nama`, `namapanjang`, `kepengurusan`) VALUES
(51, 'KDR', 'Divisi Kaderisasi', 2014),
(9, 'DPP', 'Dewan Perwakilan dan Pengawasan', 2014),
(8, 'SEN', 'Senator', 2014),
(63, 'MP', 'Divisi Manajemen Proyek', 2014),
(7, 'SPARTA', 'Panitia Sparta 2013', 2014),
(62, 'TEK', 'Divisi Teknikal', 2014),
(61, 'MAR', 'Divisi Marketing', 2014),
(6, 'IIT', 'Departemen Inkubator IT', 2014),
(22, 'MSDA', 'Divisi Manajemen Sumber Daya Anggota', 2014),
(52, 'AKB', 'Divisi Akademik & Beasiswa', 2014),
(43, 'PM', 'Divisi Pengabdian Masyarakat', 2014),
(5, 'DPSDA', 'Departemen Pengembangan Sumber Daya Anggota', 2014),
(41, 'INT', 'Divisi Intrakampus', 2014),
(42, 'EKS', 'Divisi Ekstrakampus', 2014),
(4, 'EKSOS', 'Departemen Eksternal dan Sosial', 2014),
(33, 'RT', 'Divisi Rumah Tangga', 2014),
(31, 'KEL', 'Divisi Kekeluargaan', 2014),
(32, 'PMB', 'Divisi Pengembangan Minat dan Bakat', 2014),
(21, 'MEDINFO', 'Divisi Media dan Informasi', 2014),
(3, 'INKRAB', 'Departemen Internal dan Keakraban', 2014),
(12, 'BND', 'Bendahara', 2014),
(11, 'SKR', 'Sekretaris', 2014),
(2, 'WKH', 'Wakil Ketua Himpunan', 2014),
(1, 'KH', 'Ketua Himpunan', 2014);

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE IF NOT EXISTS `surat` (
  `uidsurat` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nomorsurat` int(10) unsigned NOT NULL,
  `pembuat` tinyint(3) unsigned NOT NULL,
  `isisurat` varchar(256) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pj` varchar(128) NOT NULL,
  `kepada` varchar(128) NOT NULL,
  `ipaddress` varchar(128) NOT NULL,
  PRIMARY KEY (`uidsurat`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=210 ;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`uidsurat`, `nomorsurat`, `pembuat`, `isisurat`, `tanggal`, `pj`, `kepada`, `ipaddress`) VALUES
(1, 0, 0, 'DUMMY', '2014-05-04 19:57:17', 'DUMMY', 'DUMMY', ''),
(3, 1, 1, 'Peminjaman Ruangan', '2014-05-07 09:48:05', '13512080 Hayyu Luthfi Hanifah', 'Wakil Dekan Bidang Sumer Daya', '167.205.22.105'),
(4, 2, 1, 'Peminjaman Ruangan', '2014-05-13 15:41:58', '13512080 Hayyu Luthfi Hanifah', 'Wakil Dekan Bidang Sumer Daya', '167.205.22.104'),
(5, 3, 1, 'Peminjaman Ruangan', '2014-05-13 15:43:01', '13512080 Hayyu Luthfi Hanifah', 'Wakil Dekan Bidang Sumer Daya', '167.205.22.104'),
(6, 4, 12, 'Surat Permohonan Penggantian Tanda Tangan', '2014-05-13 16:30:45', 'Willy', 'Bank BNI', '167.205.87.216'),
(7, 5, 31, 'Permohonan Keringanan', '2014-05-16 10:20:57', 'Bella Claudia', 'Lembaga Kemahasiswaan', '167.205.22.104'),
(8, 6, 31, 'Izin Masuk Kendaraan', '2014-05-16 10:21:46', 'Bella Claudia', 'Lembaga Kemahasiswaan', '167.205.22.104'),
(9, 7, 31, 'Pengantar Proposal', '2014-05-16 10:22:20', 'Bella Claudia', 'Lembaga Kemahasiswaan', '167.205.22.104'),
(10, 8, 31, 'Pengantar Proposal', '2014-05-16 10:23:31', 'Bella Claudia', 'TU STEI', '167.205.22.104'),
(11, 9, 31, 'Peminjaman Fasilitas', '2014-05-16 10:26:10', 'Bella Claudia', 'Wakil Dekan Bidang Sumer Daya', '167.205.22.105'),
(12, 10, 31, 'Peminjaman Fasilitas', '2014-05-16 10:26:36', 'Bella Claudia', 'Wakil Dekan Bidang Sumer Daya', '167.205.22.105'),
(13, 11, 31, 'Peminjaman Fasilitas', '2014-05-16 10:27:13', 'Bella Claudia', 'Wakil Dekan Bidang Sumer Daya', '167.205.22.105'),
(14, 12, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:11:39', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(15, 13, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:12:11', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(17, 14, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:18:17', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(18, 15, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:18:40', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(19, 16, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:19:23', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(20, 17, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:20:24', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(21, 18, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:20:41', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(22, 19, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:21:16', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(23, 20, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:23:04', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(24, 21, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:23:07', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(25, 22, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:23:10', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(26, 23, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:23:12', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(27, 24, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:23:15', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(28, 25, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:24:45', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(29, 26, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:24:48', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(30, 27, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:24:52', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(31, 28, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:24:58', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(32, 29, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:25:07', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(33, 30, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:26:28', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(34, 31, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:26:34', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(35, 32, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:26:34', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(36, 33, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:26:37', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(37, 34, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:26:39', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(38, 35, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:27:47', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(39, 36, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:27:52', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(40, 37, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:27:53', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(41, 38, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:27:56', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(42, 39, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:28:01', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(43, 40, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:29:22', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(44, 41, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:29:25', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(45, 42, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:29:28', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(46, 43, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:29:30', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(47, 44, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:29:33', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(48, 45, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:30:29', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(49, 46, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:30:31', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(50, 47, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 11:30:33', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.23.15'),
(51, 48, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 16:49:01', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.22.104'),
(52, 49, 1, 'Keterangan Aktif Berorganisasi', '2014-05-21 16:49:36', '13512080 Hayyu Luthfi Hanifah', '-', '167.205.22.104'),
(53, 50, 7, 'Pengantar Proposal', '2014-05-22 11:36:05', 'Andarias Silvanus', 'Brian Yuliarto, Ph.D (Kepala LK)', '167.205.22.105'),
(54, 51, 7, 'Permohonan Dana', '2014-05-22 11:37:52', 'Andarias Silvanus', 'Dr. Ir. Jaka Sembiring, M.Eng. (Wakil Dekan Bidang Sumber Daya STEI)', '167.205.22.105'),
(55, 52, 7, 'Pengantar Surat Proposal', '2014-05-28 16:50:35', 'Fitri Indah Cahyani', 'Wakil Dekan Bidang Sumberdaya', '167.205.87.75'),
(56, 53, 7, 'Permohonan Dana', '2014-05-28 16:58:04', 'Fitri Indah Cahyani 18212030', 'Lembaga Kemahasiswaan', '167.205.87.75'),
(57, 54, 7, 'Peminjaman Fasilitas ITB', '2014-05-28 17:02:33', 'Fitri Indah Cahyani 18212030', 'Lembaga Kemahasiswaan', '167.205.87.75'),
(58, 55, 7, 'Peminjaman Fasilitas ITB', '2014-05-30 11:00:12', 'Fitri Indah Cahyani', 'Lembaga Kemahasiswaan', '167.205.35.254'),
(59, 56, 42, 'Perizinan Ruangan TVST A', '2014-06-03 15:40:26', 'Tegar Aji Pangestu - 13512061', 'Kepala Lembaga Kemahasiswaan', '167.205.22.105'),
(60, 57, 42, 'Surat Peminjaman Ruangan Alumni Teknik Sipil', '2014-06-05 09:38:35', 'Tegar Aji Pangestu - 13512061', 'Ketua Program Studi Teknik Sipil', '167.205.22.105'),
(61, 58, 42, 'Surat Peminjaman Ruangan GKU Timur 9231', '2014-06-05 09:58:20', 'Tegar Aji Pangestu - 13512061', 'Kepala Lembaga Kemahasiswaan', '167.205.22.105'),
(62, 59, 42, 'Surat Peminjaman Microphone dan Speaker', '2014-06-05 10:12:28', 'Tegar Aji Pangestu - 13512061', 'Ketua Dukungan Teknis Labtek V', '167.205.22.105'),
(63, 60, 42, 'Surat Peminjaman Microphone dan Speaker', '2014-06-05 10:14:13', 'Tegar Aji Pangestu - 13512061', 'Dr. Ir. Jaka Sembiring, M.Eng.', '167.205.22.105'),
(64, 61, 7, 'Surat Permohonan Pengesahan Proposal', '2014-06-05 13:59:03', 'Ahmad', 'Lembaga Kemahasiswaan', '167.205.35.154'),
(65, 62, 7, 'Izin Kendaraan Masuk', '2014-06-09 11:38:47', 'Fitri Indah Cahyani 18212030', 'Lembaga Kemahasiswaan', '167.205.86.205'),
(66, 63, 7, 'Peminjaman fasilitas Labtek V', '2014-06-10 13:35:56', 'Fitri Indah Cahyani 18212030', 'Wakil Dekan bidang Sumberdaya', '167.205.22.105'),
(67, 64, 31, 'Peminjaman fasilitas Labtek V', '2014-06-10 13:40:00', 'Timothy Pratama', 'Wakil Dekan bidang Sumberdaya', '167.205.22.104'),
(68, 65, 1, 'Peminjaman Ruangan', '2014-06-11 19:33:13', 'Hayyu Luthfi Hanifah 13512080', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(69, 66, 42, 'Peminjaman Fasilitas Prodi Teknik Sipil', '2014-06-13 11:34:14', 'Hayyu Luthfi Hanifah 13512080', 'Ir. Made Suarjana, M.Sc, Ph.D', '167.205.22.105'),
(70, 67, 42, 'Surat Peminjaman Proyektor', '2014-06-16 11:42:47', 'Tegar Aji Pangestu', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(71, 68, 1, 'Permohonan Dana', '2014-06-16 15:18:23', 'Hayyu Luthfi Hanifah 13512080', 'Kepala LK', '167.205.22.105'),
(72, 69, 7, 'Peminjaman Fasilitas ', '2014-06-18 10:11:34', 'Fitri Indah  18212030', 'Wakil Dekan Bidang Sumberdaya', '167.205.22.104'),
(73, 70, 7, 'Peminjaman Fasilitas ', '2014-06-18 10:13:35', 'Fitri Indah  18212030', 'Wakil Dekan Bidang Sumberdaya', '167.205.22.104'),
(74, 71, 7, 'Peminjaman Fasilitas ', '2014-06-18 10:15:22', 'Fitri Indah  18212030', 'Wakil Dekan Bidang Sumberdaya', '167.205.22.104'),
(75, 72, 7, 'Peminjaman Fasilitas dan izin berkegiatan', '2014-06-18 10:46:33', 'Fitri Indah Cahyani  18212030', 'Ketua Lembaga Kemahasiswaan', '167.205.22.105'),
(76, 73, 7, 'Izin Pemasangan Baliho', '2014-06-20 09:41:21', 'Ahmad', 'Lembaga Kemahasiswaan', '167.205.88.159'),
(77, 74, 7, 'Peminjaman tempat', '2014-06-23 10:47:53', 'Fitri Indah Cahyani', 'Kepala Lembaga Kemahasiswaan', '167.205.88.24'),
(78, 75, 7, 'Peminjaman Fasilitas', '2014-06-23 14:56:51', 'Fitri Indah Cahyani', 'Wakil Dekan Bidang Sumber Daya', '167.205.88.24'),
(79, 76, 31, 'Peminjaman Fasilitas', '2014-06-25 12:20:51', 'Timothy Pratama ', 'Kepala Lembaga Kemahasiswaan', '167.205.22.104'),
(80, 77, 31, 'Surat Izin Kekeluargaan', '2014-06-25 12:23:42', 'Timothy Pratama ', 'Kepala Lembaga Kemahasiswaan', '167.205.22.105'),
(81, 78, 31, 'Surat Permohonan Keringanan Dana', '2014-06-25 12:25:28', 'Timothy Pratama ', 'Kepala Lembaga Kemahasiswaan', '167.205.22.105'),
(82, 79, 31, 'Surat Pengantar Proposal', '2014-06-25 12:27:04', 'Timothy Pratama ', 'Kepala Lembaga Kemahasiswaan', '167.205.22.104'),
(83, 80, 7, 'Permohonan Izin Kegiatan', '2014-06-28 13:49:54', '18212030 Fitri Indah Cahyani', 'Kepala Sanggar Olah Seni Babakan Siliwangi', '167.205.22.104'),
(84, 81, 31, 'Peminjaman Fasilitas', '2014-06-30 15:22:43', 'Timothy Pratama ', 'Kepala Program Studi Fakultas Teknik Sipil dan Lingkungan', '167.205.22.105'),
(85, 82, 7, 'Peminjaman Fasilitas', '2014-07-01 12:07:28', 'Fitri Indah Cahyani 18212030', 'Wakil Dekan Bidang Sumberdaya', '167.205.22.105'),
(86, 83, 7, 'Peminjaman Fasilitas', '2014-07-01 12:09:36', 'Fitri Indah Cahyani 18212030', 'Wakil Dekan Bidang Sumberdaya', '167.205.22.105'),
(87, 84, 7, 'Peminjaman Fasilitas', '2014-07-01 12:11:20', 'Fitri Indah Cahyani 18212030', 'Wakil Dekan Bidang Sumberdaya', '167.205.22.105'),
(88, 85, 7, 'Peminjaman Fasilitas', '2014-07-01 12:12:40', 'Fitri Indah Cahyani 18212030', 'Wakil Dekan Bidang Sumberdaya', '167.205.22.105'),
(89, 86, 7, 'Peminjaman Fasilitas', '2014-07-01 12:13:34', 'Fitri Indah Cahyani 18212030', 'Wakil Dekan Bidang Sumberdaya', '167.205.22.105'),
(90, 87, 31, 'peminjaman fasilitas', '2014-07-01 12:13:43', 'windy amelia', 'wakil dekan bidang sumber daya', '167.205.22.104'),
(91, 88, 7, 'Peminjaman Fasilitas', '2014-07-01 12:15:37', 'Fitri Indah Cahyani 18212030', 'Wakil Dekan Bidang Sumberdaya', '167.205.22.105'),
(92, 89, 7, 'Peminjaman Fasilitas', '2014-07-01 12:16:37', 'Fitri Indah Cahyani 18212030', 'Wakil Dekan Bidang Sumberdaya', '167.205.22.105'),
(93, 90, 7, 'Peminjaman Fasilitas', '2014-07-01 12:22:54', 'Fitri Indah Cahyani 18212030', 'Wakil Dekan Bidang Sumberdaya', '167.205.22.104'),
(94, 91, 7, 'Peminjaman Fasilitas', '2014-07-01 12:24:05', 'Fitri Indah Cahyani 18212030', 'Wakil Dekan Bidang Sumberdaya', '167.205.22.104'),
(95, 92, 7, 'Peminjaman Fasilitas', '2014-07-03 10:20:56', 'Fitri Indah Cahyani 18212030', 'Wakil Dekan Bidang Sumberdaya', '167.205.35.40'),
(96, 93, 7, 'Peminjaman Fasilitas', '2014-07-03 10:22:05', 'Fitri Indah Cahyani 18212030', 'Wakil Dekan Bidang Sumberdaya', '167.205.35.40'),
(97, 94, 7, 'Peminjaman Fasilitas', '2014-07-03 10:22:55', 'Fitri Indah Cahyani 18212030', 'Wakil Dekan Bidang Sumberdaya', '167.205.35.40'),
(98, 95, 31, 'Perubahan Tanggal Syukuran Wisuda', '2014-07-03 11:47:55', 'Windy Amelia', 'Wakil Dekan Bidang Sumberdaya STEI', '167.205.22.105'),
(99, 96, 31, 'Undangan Syukuran Wisuda Juli HMIF', '2014-07-03 12:06:54', 'Bella Claudia', 'Dr. Eng. Ayu Purwarianti, ST. , MT.', '167.205.22.105'),
(100, 97, 31, 'Undangan Syukuran Wisuda Juli HMIF', '2014-07-03 12:07:45', 'Bella Claudia', 'Dosen Laboratorium Basis Data', '167.205.22.105'),
(101, 98, 31, 'Undangan Syukuran Wisuda Juli HMIF', '2014-07-03 12:08:18', 'Bella Claudia', 'Dosen Grafika & Intelegensia Buatan', '167.205.22.104'),
(102, 99, 31, 'Undangan Syukuran Wisuda Juli HMIF', '2014-07-03 12:09:09', 'Bella Claudia', 'Dosen Ilmu & Rekayasa Komputasi', '167.205.22.104'),
(103, 100, 31, 'Undangan Syukuran Wisuda Juli HMIF', '2014-07-03 12:09:54', 'Bella Claudia', 'Dosen Laboratorium Programming', '167.205.22.104'),
(104, 101, 31, 'Undangan Syukuran Wisuda Juli HMIF', '2014-07-03 12:10:32', 'Bella Claudia', 'Dosen  Laboratorium Rekayasa Perangkat Lunak', '167.205.22.105'),
(105, 102, 31, 'Undangan Syukuran Wisuda Juli HMIF', '2014-07-03 12:11:19', 'Bella Claudia', 'Dosen Laboratorium Sistem Informasi', '167.205.22.105'),
(106, 103, 31, 'Undangan Syukuran Wisuda Juli HMIF', '2014-07-03 12:11:52', 'Bella Claudia', 'Dosen  Sistem Terdistribusi', '167.205.22.104'),
(107, 104, 31, 'Undangan Syukuran Wisuda Juli HMIF', '2014-07-03 12:12:29', 'Bella Claudia', 'Bapak Ahmad Imam Kistijantoro, MSc., Ph. D.', '167.205.22.105'),
(108, 105, 31, 'Undangan Syukuran Wisuda Juli HMIF', '2014-07-03 12:13:07', 'Bella Claudia', 'Dr. Ir. Arry Akhmad Arman, MT.', '167.205.22.104'),
(109, 106, 31, 'Undangan Syukuran Wisuda Juli HMIF', '2014-07-03 12:13:38', 'Bella Claudia', 'Dr. techn. Saiful Akbar', '167.205.22.104'),
(110, 107, 31, 'undangan untuk orangtua', '2014-07-10 17:04:05', 'bella claudia', 'orangtua wisudawan', '167.205.35.2'),
(111, 108, 7, 'Izin Tempat', '2014-07-17 15:16:07', 'Fitri Indah Cahyani 18212030', 'Lembaga Kemahasiswaan', '167.205.22.105'),
(112, 109, 33, 'Permohonan Dana', '2014-07-19 13:09:37', 'Fauzan Hilmi Ramadhian (13512003)', 'Kepala LK', '167.205.22.104'),
(113, 110, 1, 'Statement Letter HPAIR', '2014-08-26 10:53:37', 'Hayyu Luthfi Hanifah 13512080', 'HPAIR Committee', '167.205.22.104'),
(114, 111, 1, 'Statement Letter HPAIR', '2014-08-26 10:53:57', 'Hayyu Luthfi Hanifah 13512080', 'HPAIR Committee', '167.205.22.104'),
(115, 112, 1, 'Statement Letter HPAIR', '2014-08-26 10:54:14', 'Hayyu Luthfi Hanifah 13512080', 'HPAIR Committee', '167.205.22.104'),
(116, 113, 7, 'Peminjaman 7602', '2014-08-26 10:55:07', '18212030 Fitri Indah Cahyani', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.104'),
(117, 114, 7, 'Peminjaman 7602', '2014-08-26 10:55:31', '18212030 Fitri Indah Cahyani', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.104'),
(118, 115, 7, 'Permohonan Izin Danus', '2014-08-26 10:55:54', '18212030 Fitri Indah Cahyani', '-', '167.205.22.104'),
(119, 116, 62, 'Peminjaman Multimedia', '2014-08-26 10:56:21', 'Iskandar Setiadi', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.104'),
(120, 117, 7, 'Peminjaman 7602', '2014-08-26 10:56:42', '18212030 Fitri Indah Cahyani', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.104'),
(121, 118, 7, 'Peminjaman 7602', '2014-08-26 10:57:02', '18212030 Fitri Indah Cahyani', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.104'),
(122, 119, 7, 'Peminjaman 7602', '2014-08-26 10:57:27', '18212030 Fitri Indah Cahyani', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.104'),
(123, 120, 6, 'Peminjaman Tempat', '2014-08-28 11:19:39', 'Christian Gunardi 13511016', 'Kepala LK', '167.205.22.105'),
(124, 121, 42, 'Peminjaman Tempat', '2014-08-29 14:10:24', 'Tegar Aji Pangestu', 'Kepala LK', '167.205.22.105'),
(125, 122, 31, 'Pengantar Proposal', '2014-08-29 16:51:04', 'Fitri Indah Cahyani 18212030', 'Wakil Dekan Bidang Sumberdaya', '167.205.22.105'),
(126, 123, 31, 'Pengantar Proposal', '2014-08-29 16:54:58', 'Fitri Indah Cahyani 18212030', 'Kepala Lembaga Kemahasiswaan', '167.205.22.104'),
(127, 124, 31, 'Peminjaman Fasilitas', '2014-08-29 17:11:11', 'Timothy Pratama 13512032', 'Wakil Dekan Bidang Sumberdaya', '167.205.22.105'),
(128, 125, 31, 'Peminjaman Tempat', '2014-08-29 17:15:20', 'Timothy Pratama 13512032', 'Kepala Lembaga Kemahasiswaan', '167.205.22.105'),
(129, 126, 31, 'Pengantar Proposal Wisuda', '2014-09-02 09:11:40', 'Stephen', 'Lembaga Kemahasiswaan', '167.205.22.104'),
(130, 127, 31, 'Pengantar Proposal Wisuda', '2014-09-02 09:12:55', 'Stephen', 'Tata Usaha STEI', '167.205.22.104'),
(131, 128, 31, 'Peminjaman Tempat', '2014-09-02 09:14:06', 'Stephen', 'Lembaga Kemahasiswaan', '167.205.22.104'),
(132, 129, 31, 'Peminjaman Tempat', '2014-09-02 09:14:46', 'Stephen', 'Lembaga Kemahasiswaan', '167.205.22.104'),
(133, 130, 7, 'Peminjaman Fasilitas', '2014-09-02 13:30:46', 'Fitri Indah Cahyani 18212030', 'Wakil Dekan Bidang Sumberdaya', '167.205.35.232'),
(134, 131, 7, 'Peminjaman Fasilitas', '2014-09-02 13:32:05', 'Fitri Indah Cahyani', 'Wakil Dekan Bidang Sumberdaya', '167.205.35.232'),
(135, 132, 7, 'Peminjaman Fasilitas', '2014-09-02 13:37:39', 'Fitri Indah Cahyani 18212030', 'Wakil Dekan Bidang Sumberdaya', '167.205.35.232'),
(136, 133, 7, 'Izin acara SPARTACAMP kepada orang tua', '2014-09-03 20:09:49', 'M. Dikra Prasetya', 'Orang Tua', '167.205.22.105'),
(137, 134, 52, 'peminjaman fasilitas', '2014-09-04 09:04:07', '13511012 Dyah Rahmawati', 'Dr. Ir. Jaka Sembiring, M.Eng.', '167.205.22.104'),
(138, 135, 31, 'Surat Pengantar Proposal Welcoming Party', '2014-09-04 20:05:04', 'Bella Claudia', 'Dr.Ir. Jaka Sembiring, M.Eng.', '167.205.71.6'),
(139, 136, 42, 'Peminjaman Ruangan', '2014-09-05 12:15:29', 'Vidia Anindhita', 'Dr. Ir. Jaka Sembiring, M.Eng.', '167.205.22.105'),
(140, 137, 43, 'Izin Kegiatan', '2014-09-05 13:52:00', 'Miftakhul Afrizal Ricko Primantara', 'Lembaga Kemahasiswaan', '167.205.22.105'),
(141, 138, 43, 'Peminjaman Tempat', '2014-09-05 14:02:52', 'Miftakhul Afrizal Ricko Primantara', 'Lembaga Kemahasiswaan', '167.205.22.104'),
(142, 139, 43, 'Izin Memasukkan Mobil', '2014-09-05 14:03:44', 'Miftakhul Afrizal Ricko Primantara', 'Lembaga Kemahasiswaan', '167.205.22.104'),
(143, 140, 43, 'Izin Memasang Spanduk', '2014-09-05 14:04:18', 'Miftakhul Afrizal Ricko Primantara', 'Lembaga Kemahasiswaan', '167.205.22.104'),
(144, 141, 43, 'Pengantar Proposal', '2014-09-05 14:04:55', 'Miftakhul Afrizal Ricko Primantara', 'Lembaga Kemahasiswaan', '167.205.22.104'),
(145, 142, 42, 'Peminjaman Ruangan', '2014-09-08 10:55:04', 'Aldy Wirawan', 'Wakil Dekan Sumber Daya', '167.205.22.104'),
(146, 143, 42, 'Permohonan Izin Memasang Atribut Acara', '2014-10-21 09:39:52', 'Tegar Aji Pangestu', 'Kepala LK', '167.205.22.105'),
(147, 144, 7, 'Permohonan Izin Kegiatan', '2014-10-21 09:40:30', 'Hayyu Luthfi Hanifah 13512080', 'Kepala LK', '167.205.22.105'),
(148, 145, 42, 'Peminjaman Tempat', '2014-10-21 09:41:03', 'M. Ibnu Qoyim', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(149, 146, 32, 'Peminjaman Lap Basket', '2014-10-21 09:41:49', 'Tiara Dwi Putri', 'Kepala LK', '167.205.22.105'),
(150, 147, 32, 'Peminjaman Muskay', '2014-10-21 09:42:22', 'Tiara Dwi Putri', 'TU STEI', '167.205.22.105'),
(151, 148, 32, 'Peminjaman Muskay', '2014-10-21 09:42:48', 'Tiara Dwi Putri', 'Duktek', '167.205.22.105'),
(152, 149, 7, 'Izin Pemakaian Tempat', '2014-10-21 09:43:19', 'Nadhira Afriani', 'Kepala Sanggar Olah Seni Babakan Siliwangi', '167.205.22.105'),
(153, 150, 31, 'Peminjaman Fasilitas', '2014-10-21 09:43:50', 'Stephen', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(154, 151, 31, 'Peminjaman Fasilitas', '2014-10-21 09:44:08', '18212030 Fitri Indah Cahyani', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(155, 152, 42, 'Peminjaman Fasilitas', '2014-10-21 09:44:32', 'Aldy Wirawan', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(156, 153, 33, 'Permohonan Izin Penggunaan Fasilitas', '2014-10-21 09:45:04', 'Rakaputra', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(157, 154, 51, 'Peminjaman Fasilitas', '2014-10-21 09:45:37', 'Alvin Natawiguna', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(158, 155, 62, 'Peminjaman Fasilitas', '2014-10-21 09:46:00', 'Muhammad Reza Irvanda', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(159, 156, 6, 'Peminjaman Fasilitas', '2014-10-21 09:46:29', 'M. Visat Sutarno', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(160, 157, 1, 'Peminjaman Fasilitas', '2014-10-21 09:47:11', 'Tegar Aji Pangestu', '-', '167.205.22.105'),
(161, 158, 1, 'Izin Memasang Spanduk', '2014-10-21 09:47:43', 'Tegar Aji Pangestu', 'Kepala LK', '167.205.22.105'),
(162, 159, 1, 'Peminjaman Fasilitas', '2014-10-21 09:48:07', 'Tegar Aji Pangestu', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(163, 160, 1, 'Izin Kegiatan', '2014-10-21 09:48:32', 'Tegar Aji Pangestu', 'Kepala LK', '167.205.22.105'),
(164, 161, 31, 'Peminjaman Fasilitas', '2014-10-21 09:49:12', 'Octavianus Marcel Harjono', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(165, 162, 42, 'Peminjaman Fasilitas', '2014-10-21 09:49:34', 'Natan Elia', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(166, 163, 32, 'Peminjaman Fasilitas', '2014-10-21 09:49:54', 'Bram Galih Arianto', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(167, 164, 42, 'Peminjaman Fasilitas', '2014-10-21 09:50:16', 'Aldy Wirawan', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(168, 165, 4, 'Peminjaman Fasilitas', '2014-10-21 09:50:39', 'Pandu Kartika Putra', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(169, 166, 31, 'Undanga Dosen (syukwis)', '2014-10-21 09:51:19', 'Susanti Gojali', 'Dosen Lab dan Kaprodi', '167.205.22.105'),
(170, 167, 31, 'Peminjaman 7602', '2014-10-21 09:51:45', 'Timothy Pratama', 'Kepala LK', '167.205.22.105'),
(171, 168, 31, 'Pengantar Proposal', '2014-10-21 09:52:02', 'Timothy Pratama', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(172, 169, 31, 'Pengantar Proposal', '2014-10-21 09:52:23', 'Timothy Pratama', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(173, 170, 31, 'Peminjaman Fasilitas', '2014-10-21 09:52:51', 'Timothy Pratama', 'Kepala LK', '167.205.22.105'),
(174, 171, 31, 'Peminjaman Fasilitas', '2014-10-21 09:53:13', 'Timothy Pratama', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(175, 172, 31, 'Peminjaman Fasilitas', '2014-10-21 09:53:40', 'Timothy Pratama', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(176, 173, 32, 'Peminjaman Fasilitas', '2014-10-21 09:54:16', 'Anthony Loekita Harsono', 'Kepala LK', '167.205.22.105'),
(177, 174, 1, 'Peminjaman Fasilitas', '2014-10-21 09:54:45', 'Hayyu Luthfi Hanifah 13512080', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(178, 175, 32, 'Pengantar Proposal', '2014-10-21 09:55:08', 'Tiara Dwi Putri', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(179, 176, 62, 'Peminjaman Fasilitas', '2014-10-21 09:55:34', 'Alif Raditya Rochman', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(180, 177, 62, 'Peminjaman Tempat', '2014-10-25 14:12:41', 'Windy Amelia', 'Wakil Dekan Bidang Sumber Daya', '167.205.35.34'),
(181, 178, 62, 'Peminjaman ruangan', '2014-10-30 12:25:23', 'Windy Amelia', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(182, 179, 6, 'Perizinan peminjaman ruangan', '2014-10-30 13:05:31', 'Luthfi Hamid Masykuri', 'Wakil Dekan bidang Sumber Daya', '167.205.34.155'),
(183, 180, 31, 'Peminjaman Proyektor', '2014-10-30 13:18:15', 'Octavianus Marcel Harjono', 'Dr. Ir. Jaka Sembiring, M.Eng.', '167.205.35.32'),
(184, 181, 1, 'Rekomendasi Beasiswa', '2014-10-30 15:30:53', 'Hayyu Luthfi Hanifah 13512080', '-', '167.205.22.104'),
(185, 182, 51, 'Ijin meminjam ruangan 7602 untuk Hearing Altera', '2014-10-30 16:22:34', 'Monika Sembiring', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(186, 183, 51, 'Peminjaman 7602 untuk Hearing Altera', '2014-10-30 16:29:51', 'Monika Sembiring', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(187, 184, 61, 'Peminjaman Ruangan 7602', '2014-11-03 12:45:02', 'Gumarus Dharmawan William', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.104'),
(188, 185, 31, 'Surat Izin Kendaraan', '2014-11-03 19:22:54', 'Fitri Indah Cahyani', 'Kepala LK', '167.205.22.104'),
(189, 186, 31, 'Surat peminjaman fasilitas', '2014-11-03 19:31:54', 'Fitri Indah Cahyani', 'Wakil Dekan Bidang Sumber Daya Sekolah Teknik Elektro dan Informatika', '167.205.22.104'),
(190, 187, 31, 'Undangan dosen', '2014-11-03 19:38:44', 'Fitri Indah Cahyani', 'Dr. Eng. Ayu Purwarianti, ST., MT.', '167.205.22.105'),
(191, 188, 31, 'undangan dosen', '2014-11-03 19:40:04', 'Fitri Indah Cahyani', 'Achmad Imam Kistijantoro, MSc., Ph. D.', '167.205.22.105'),
(192, 189, 31, 'Undangan dosen', '2014-11-03 19:41:23', 'Fitri Indah Cahyani', 'Dr. Ir. Arry Akhmad Arman, MT.', '167.205.22.105'),
(193, 190, 31, 'Undangan dosen', '2014-11-03 19:42:39', 'Fitri Indah Cahyani', 'Dr. techn. Saiful Akbar', '167.205.22.105'),
(194, 191, 31, 'Undangan dosen', '2014-11-03 19:43:51', 'Fitri Indah Cahyani', 'Dosen Lab Labtek V', '167.205.22.105'),
(195, 192, 1, 'Peminjaman Fasilitas', '2014-11-08 13:19:18', 'Taufiq Akbar Rosyadi 18212010', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(196, 193, 1, 'Peminjaman Fasilitas', '2014-11-08 13:20:33', 'Kanya Paramita', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(197, 194, 1, 'Peminjaman Fasilitas', '2014-11-08 13:21:06', 'Kanya Paramita', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(198, 195, 51, 'Permohonan Izin Meminjam Ruangan untuk Seminar Inspirasi Juara', '2014-11-10 08:27:18', 'Rafi Ramadhan', 'Brian Yuliarto, Ph.D', '167.205.88.37'),
(199, 196, 61, 'Peminjaman Ruangan 7602', '2014-11-11 12:18:19', 'Gumarus Dharmawan William', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.104'),
(200, 197, 62, 'Peminjaman ruangan', '2014-11-12 08:39:52', 'Windy Amelia', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.104'),
(201, 198, 61, 'Peminjaman Ruangan', '2014-11-12 10:04:30', 'William Gumarus', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.104'),
(202, 199, 51, 'Peminjaman 7604 untuk Seminar Inspirasi Juara', '2014-11-12 15:02:28', 'Monika Sembiring', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.105'),
(203, 200, 32, 'Surat Pengantar LPJ', '2014-11-13 14:29:22', 'Tiara Dwiputri', 'Dr. Ir. Jaka Sembiring, M. Eng', '167.205.86.243'),
(204, 201, 1, 'Rekomendasi Beasiswa', '2014-11-16 13:44:22', 'Hayyu Luthfi Hanifah 13512080', '-', '167.205.22.104'),
(205, 202, 42, 'Peminjaman Fasilitas', '2014-11-18 16:36:09', 'Uswatun Hasanah (18213017)', 'Dr. Ir. Jaka Sembiring, M.Eng. (Wakil Dekan Bidang Sumber Daya STEI ITB)', '167.205.34.63'),
(206, 203, 9, 'Peminjaman ruangan 7602', '2014-11-18 17:04:59', 'Fitri Indah Cahyani 18212030', 'Dr. Ir. Jaka Sembiring, M.Eng.', '167.205.22.105'),
(207, 204, 42, 'Peminjaman Fasilitas', '2014-12-04 15:53:22', 'Wilhelmus Andrian', 'Wakil Dekan Bidang Sumber Daya', '167.205.22.104'),
(208, 205, 61, 'Peminjaman Fasilitas', '2014-12-04 15:53:56', 'Kevin', 'Duktek', '167.205.22.104'),
(209, 206, 1, 'Surat Rekomendasi', '2014-12-04 15:55:11', 'Teofebano Kristo', '-', '167.205.22.104');
