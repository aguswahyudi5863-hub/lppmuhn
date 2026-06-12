-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2026 pada 08.35
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lppm_uhn`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_akun`
--

CREATE TABLE `tb_akun` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_akun`
--

INSERT INTO `tb_akun` (`id`, `name`, `username`, `password`, `date_created`) VALUES
(3, 'deudi', 'yudi', '$2y$10$Q5GmgClk5kcmWOrgbxpsFuWclRMx20DjDzzxqa1amXw', '0000-00-00 00:00:00'),
(4, 'batu', 'bukit', '$2y$10$d9fNnWFk.6I3Vn4GNV0FuezDKht4DMN.ejtJSfEITemTCRymDNhRO', '2022-09-10 03:54:55'),
(6, 'I Gede Agus Wahyudi', 'lppm2022', '$2y$10$qT02XbXXbxhrgfWhf3fPkO5LEJ3MtMqGL1mVV6/RjvltHy05EGZn2', '2022-09-18 09:24:31'),
(7, 'Admin', 'admin', '$2y$10$tJIgpukkJG4.8InUm21S.OOHVNnULWlZV6lGY3SkjfAtkMRH5swT2', '2023-05-25 11:34:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_akun_mhs`
--

CREATE TABLE `tb_akun_mhs` (
  `mhs_id` int(11) NOT NULL,
  `mhs_nim` varchar(50) DEFAULT NULL,
  `mhs_nama` varchar(250) DEFAULT NULL,
  `mhs_alamat` text DEFAULT NULL,
  `mhs_nohp` varchar(50) DEFAULT NULL,
  `mhs_berkas` varchar(255) NOT NULL,
  `mhs_email` varchar(250) DEFAULT NULL,
  `mhs_password` varchar(250) DEFAULT NULL,
  `mhs_jk` char(1) DEFAULT NULL,
  `mhs_status` char(2) DEFAULT NULL,
  `prodi_kode` char(10) DEFAULT NULL,
  `kkn_kode` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_announcement`
--

CREATE TABLE `tb_announcement` (
  `id` int(11) NOT NULL,
  `judul` varchar(1000) NOT NULL,
  `detail` varchar(5000) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `date` int(11) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_announcement`
--

INSERT INTO `tb_announcement` (`id`, `judul`, `detail`, `slug`, `date`, `gambar`) VALUES
(2, 'Pengabdian Masyarakat Rambut siwi', '<p>civitas yang ingiin mengikuti pengabdian di pura luhur rambut siwi agar segera melakukan pendaftara pada link google drive dibawa ini<br>\r\nhttps://www.google.com/search?q=lppm+undiksha&oq=lppm+undiksha&aqs=chrome.0.69i59j0i390l3j69i60l3.1225j0j7&sourceid=chrome&ie=UTF-8</p>', 'pengabdian', 1663652186, 'WhatsApp_Image_2022-08-31_at_07_04_16.jpeg'),
(3, 'Aktualisasi CPNS KEMENAG Tahun 2022', '<p><strong>Calon Pegawai Negeri Sipil (CPNS) adalah</strong> warga negara Republik Indonesia yang baru lulus dalam mengikuti tes seleksi penerimaan Calon Pegawai Negeri Sipil pada tahap pertama sebelum menjadi Pegawai Negeri Sipil (PNS).</p>\r\n\r\n<p>CPNS wajib memenuhi beberapa kriteria sebelum diangkat menjadi PNS, antara lain: mengikuti pendidikan dan pelatihan (diklat) pra-jabatan dan memiliki sertifikat yang menyatakan kelulusan mereka dalam kegiatan tersebut, surat keterangan sehat jasmani dan rohani dari rumah sakit pemerintah, dan pencapaian daftar penilaian pelaksanaan pekerjaan (DP3) dengan predikat nilai minimum yang telah ditentukan.</p>', 'cpns', 1663726328, 'WhatsApp_Image_2022-09-11_at_16_21_22.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kkn`
--

CREATE TABLE `tb_kkn` (
  `kkn_id` int(11) NOT NULL,
  `kkn_kode` char(30) DEFAULT NULL,
  `kkn_periode` varchar(60) DEFAULT NULL,
  `kkn_kabupaten` varchar(300) DEFAULT NULL,
  `kkn_kecamatan` varchar(300) DEFAULT NULL,
  `kkn_desa` varchar(300) DEFAULT NULL,
  `kkn_kuota` int(10) DEFAULT NULL,
  `kkn_status` char(6) DEFAULT NULL,
  `kkn_sisa_kuota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_kkn`
--

INSERT INTO `tb_kkn` (`kkn_id`, `kkn_kode`, `kkn_periode`, `kkn_kabupaten`, `kkn_kecamatan`, `kkn_desa`, `kkn_kuota`, `kkn_status`, `kkn_sisa_kuota`) VALUES
(1, 'KKN25001', '2025', 'TABANAN', 'PENEBEL', 'DESA PENATAHAN', 22, '00', 21),
(2, 'KKN25002', '2025', 'TABANAN', 'KEDIRI', 'DESA ABIANTUWUNG', 22, '00', 2),
(3, 'KKN25003', '2025', 'TABANAN', 'TABANAN', 'DESA DENBANTAS', 21, '00', 11),
(4, 'KKN25004', '2025', 'TABANAN', 'KERAMBITAN', 'DESA BELUMBANG', 21, '00', 11),
(5, 'KKN25005', '2025', 'TABANAN', 'SELEMADEG', 'DESA SELEMADEG', 21, '00', 11),
(6, 'KKN25006', '2025', 'TABANAN', 'SELEMADEG BARAT', 'DESA LUMBUNG', 22, '00', 21),
(7, 'KKN25007', '2025', 'TABANAN', 'SELEMADEG TIMUR', 'DESA BANTAS', 21, '00', 11),
(8, 'KKN25008', '2025', 'TABANAN', 'MARGA', 'DESA PEKEN', 21, '00', 11),
(9, 'KKN25009', '2025', 'TABANAN', 'BATURITI', 'DESA PAREAN TIMUR', 21, '00', 11),
(10, 'KKN25010', '2025', 'TABANAN', 'PUPUAN', 'DESA PUPUAN', 21, '00', 11),
(11, 'KKN25011', '2025', 'GIANYAR', 'GIANYAR', 'DESA BABAKAN', 21, '00', 11),
(12, 'KKN25012', '2025', 'GIANYAR', 'GIANYAR', 'DESA SIANGAN', 21, '00', 11),
(13, 'KKN25013', '2025', 'GIANYAR', 'SUKAWATI', 'DESA KETEWEL', 22, '00', 11),
(14, 'KKN25014', '2025', 'GIANYAR', 'SUKAWATI', 'DESA BATUBULAN KANGIN', 21, '00', 11),
(15, 'KKN25015', '2025', 'GIANYAR', 'BLAHBATUH', 'DESA PERING', 21, '00', 11),
(16, 'KKN25016', '2025', 'GIANYAR', 'BLAHBATUH', 'DESA KERAMAS', 21, '00', 11),
(17, 'KKN25017', '2025', 'GIANYAR', 'PAYANGAN', 'DESA BRESELA', 21, '00', 11),
(18, 'KKN25018', '2025', 'GIANYAR', 'PAYANGAN', 'DESA BUKIAN', 21, '00', 11),
(19, 'KKN25019', '2025', 'GIANYAR', 'TAMPAKSIRING', 'DESA SADING', 21, '00', 11),
(20, 'KKN25020', '2025', 'GIANYAR', 'TAMPAKSIRING', 'DESA PEJENG KAJA', 21, '00', 11),
(21, 'KKN25021', '2025', 'GIANYAR', 'TEGALALANG', 'DESA SEBATU', 20, '00', 11),
(22, 'KKN25022', '2025', 'GIANYAR', 'TEGALALANG', 'DESA KEDISAN', 20, '00', 11),
(23, 'KKN25023', '2025', 'GIANYAR', 'UBUD', 'DESA LODTUNDUH', 21, '00', 11),
(24, 'KKN25024', '2025', 'GIANYAR', 'UBUD', 'DESA PELIATAN', 21, '00', 11),
(25, 'KKN25025', '2025', 'BADUNG', 'KUTA SELATAN', 'DESA UNGASAN', 21, '00', 11),
(26, 'KKN25026', '2025', 'BADUNG', 'KUTA SELATAN', 'DESA KUTUH', 21, '00', 11),
(27, 'KKN25027', '2025', 'BADUNG', 'KUTA SELATAN', 'DESA PECATU', 21, '00', 11),
(28, 'KKN25028', '2025', 'BADUNG', 'KUTA', 'KELURAHAN KEDONGANAN', 21, '00', 11),
(29, 'KKN25029', '2025', 'BADUNG', 'KUTA', 'KELURAHAN TUBAN', 21, '00', 11),
(30, 'KKN25030', '2025', 'BADUNG', 'KUTA UTARA', 'DESA CANGGU', 21, '00', 11),
(31, 'KKN25031', '2025', 'BADUNG', 'KUTA UTARA', 'DESA TIBUBENENG', 21, '00', 11),
(32, 'KKN25032', '2025', 'BADUNG', 'KUTA UTARA', 'KELURAHAN KEROBOKAN', 21, '00', 11),
(33, 'KKN25033', '2025', 'BADUNG', 'MENGWI', 'DESA TUMBAK BAYUH', 21, '00', 11),
(34, 'KKN25034', '2025', 'BADUNG', 'MENGWI', 'DESA SOBANGAN', 21, '00', 11),
(35, 'KKN25035', '2025', 'BADUNG', 'MENGWI', 'KELURAHAN ABIANBASE', 22, '00', 11),
(36, 'KKN25036', '2025', 'BADUNG', 'MENGWI', 'DESA SEMPIDI', 22, '00', 11),
(37, 'KKN25037', '2025', 'BADUNG', 'ABIANSEMAL', 'DESA BONGKASA', 22, '00', 11),
(38, 'KKN25038', '2025', 'BADUNG', 'ABIANSEMAL', 'DESA PUNGGUL', 22, '00', 11),
(39, 'KKN25039', '2025', 'BADUNG', 'ABIANSEMAL', 'DESA SANGEH', 22, '00', 11),
(40, 'KKN25040', '2025', 'BADUNG', 'PETANG', 'DESA CARANGSARI', 22, '00', 11),
(41, 'KKN25041', '2025', 'BADUNG', 'PETANG', 'DESA PLAGA', 22, '00', 11),
(42, 'KKN25042', '2025', 'BADUNG', 'PETANG', 'DESA SULANGAI', 22, '00', 11),
(43, 'KKN25043', '2025', 'BANGLI', 'BANGLI', 'DESA LANDIH', 22, '00', 11),
(44, 'KKN25044', '2025', 'BANGLI', 'BANGLI', 'DESA BUNUTIN', 22, '00', 11),
(45, 'KKN25045', '2025', 'BANGLI', 'KINTAMANI', 'DESA SIAKIN', 22, '00', 11),
(46, 'KKN25046', '2025', 'BANGLI', 'KINTAMANI', 'DESA PINGGAN', 22, '00', 11),
(47, 'KKN25047', '2025', 'BANGLI', 'KINTAMANI', 'DESA CATUR', 22, '00', 11),
(48, 'KKN25048', '2025', 'BANGLI', 'KINTAMANI', 'DESA SUTER', 22, '00', 11),
(49, 'KKN25049', '2025', 'BANGLI', 'KINTAMANI', 'DESA TRUNYAN', 22, '00', 11),
(50, 'KKN25050', '2025', 'BANGLI', 'KINTAMANI', 'DESA SUBAYA', 22, '00', 11),
(51, 'KKN25051', '2025', 'BANGLI', 'KINTAMANI', 'DESA KEDISAN', 22, '00', 11),
(52, 'KKN25052', '2025', 'BANGLI', 'KINTAMANI', 'DESA SUKAWANA', 22, '00', 11),
(53, 'KKN25053', '2025', 'BANGLI', 'KINTAMANI', 'DESA SATRA', 22, '00', 11),
(54, 'KKN25054', '2025', 'BANGLI', 'KINTAMANI', 'DESA BANTANG', 22, '00', 11),
(55, 'KKN25055', '2025', 'BANGLI', 'SUSUT', 'DESA PENGLUMBARAN', 22, '00', 11),
(56, 'KKN25056', '2025', 'BANGLI', 'SUSUT', 'DESA TIGA', 22, '00', 11),
(57, 'KKN25057', '2025', 'BANGLI', 'SUSUT', 'DESA SUSUT', 22, '00', 11),
(58, 'KKN25058', '2025', 'BANGLI', 'SUSUT', 'DESA APUAN', 22, '00', 11),
(59, 'KKN25059', '2025', 'BANGLI', 'TEMBUKU', 'DESA TEMBUKU', 22, '00', 11),
(60, 'KKN25060', '2025', 'BANGLI', 'TEMBUKU', 'DESA JEHEM', 22, '00', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kkn_copy`
--

CREATE TABLE `tb_kkn_copy` (
  `kkn_id` int(11) NOT NULL,
  `kkn_kode` char(10) DEFAULT NULL,
  `kkn_periode` varchar(20) DEFAULT NULL,
  `kkn_kabupaten` varchar(100) DEFAULT NULL,
  `kkn_kecamatan` varchar(100) DEFAULT NULL,
  `kkn_desa` varchar(100) DEFAULT NULL,
  `kkn_kuota` int(10) DEFAULT NULL,
  `kkn_status` char(2) DEFAULT NULL,
  `kkn_sisa_kuota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_kkn_copy`
--

INSERT INTO `tb_kkn_copy` (`kkn_id`, `kkn_kode`, `kkn_periode`, `kkn_kabupaten`, `kkn_kecamatan`, `kkn_desa`, `kkn_kuota`, `kkn_status`, `kkn_sisa_kuota`) VALUES
(65, 'KKN23001', '2023', 'Bangli', 'Bangli', 'Desa Kayubihi', 16, '00', NULL),
(66, 'KKN23002', '2023', 'Bangli', 'Bangli', 'Desa Pengotan', 16, '00', NULL),
(67, 'KKN23003', '2023', 'Bangli', 'Bangli', 'Desa Babalang', 16, '00', NULL),
(68, 'KKN23004', '2023', 'Bangli', 'Bangli', 'Desa Cempaga', 16, '00', NULL),
(69, 'KKN23005', '2023', 'Bangli', 'Bangli', 'Desa Kawan', 16, '00', NULL),
(70, 'KKN23006', '2023', 'Bangli', 'Kintamani', 'Desa Bayung Gede', 16, '00', NULL),
(71, 'KKN23007', '2023', 'Bangli', 'Kintamani', 'Desa Batur Selatan', 16, '00', NULL),
(72, 'KKN23008', '2023', 'Bangli', 'Kintamani', 'Desa Batur Tengah', 16, '00', NULL),
(73, 'KKN23009', '2023', 'Bangli', 'Kintamani', 'Desa Batur Utara', 16, '00', NULL),
(74, 'KKN23010', '2023', 'Bangli', 'Kintamani', 'Desa Bayung Cerik', 16, '00', NULL),
(75, 'KKN23011', '2023', 'Bangli', 'Susut', 'Desa Abuan', 16, '00', NULL),
(76, 'KKN23012', '2023', 'Bangli', 'Susut', 'Desa Apuan', 16, '00', NULL),
(77, 'KKN23013', '2023', 'Bangli', 'Susut', 'Desa  Demulih', 16, '00', NULL),
(78, 'KKN23014', '2023', 'Bangli', 'Susut', 'Desa Pengiangan', 16, '00', NULL),
(79, 'KKN23015', '2023', 'Bangli', 'Susut', 'Desa Selat', 16, '00', NULL),
(80, 'KKN23016', '2023', 'Bangli', 'Tembuku', 'Desa Bangbang', 16, '00', NULL),
(81, 'KKN23017', '2023', 'Bangli', 'Tembuku', 'Desa Jehem', 16, '00', NULL),
(82, 'KKN23018', '2023', 'Bangli', 'Tembuku', 'Desa  Peninjoan', 16, '00', NULL),
(83, 'KKN23019', '2023', 'Bangli', 'Tembuku', 'Desa Undisan ', 16, '00', NULL),
(84, 'KKN23020', '2023', 'Bangli', 'Tembuku', 'Desa  Yangapi', 16, '00', NULL),
(85, 'KKN23021', '2023', 'Tabanan', 'Tabanan', 'Desa Sudimara', 16, '00', NULL),
(86, 'KKN23022', '2023', 'Tabanan', 'Tabanan', 'Desa Gubug                   ', 16, '00', NULL),
(87, 'KKN23023', '2023', 'Tabanan', 'Tabanan', 'Desa Bongan               ', 16, '00', NULL),
(88, 'KKN23024', '2023', 'Tabanan', 'Tabanan', 'Desa Wanasari                 ', 16, '00', NULL),
(89, 'KKN23025', '2023', 'Tabanan', 'Tabanan', 'Desa Sasandan       ', 16, '00', NULL),
(90, 'KKN23026', '2023', 'Tabanan', 'Tabanan', 'Desa Subamia', 16, '00', NULL),
(91, 'KKN23027', '2023', 'Tabanan', 'Kerambitan', 'Desa Kerambitan', 16, '00', NULL),
(92, 'KKN23028', '2023', 'Tabanan', 'Kerambitan', 'Desa Baturiti', 17, '00', NULL),
(93, 'KKN23029', '2023', 'Tabanan', 'Kerambitan', 'Desa Tista', 17, '00', NULL),
(94, 'KKN23030', '2023', 'Tabanan', 'Kerambitan', 'Desa Kesiut', 16, '00', NULL),
(95, 'KKN23031', '2023', 'Tabanan', 'Kerambitan', 'Desa Batuaji', 16, '00', NULL),
(96, 'KKN23032', '2023', 'Tabanan', 'Kerambitan', 'Desa Timpag', 16, '00', NULL),
(97, 'KKN23033', '2023', 'Tabanan', 'Kediri', 'Desa Kediri', 16, '00', NULL),
(98, 'KKN23034', '2023', 'Tabanan', 'Kediri', 'Desa Kaba-kaba', 16, '00', NULL),
(99, 'KKN23035', '2023', 'Tabanan', 'Kediri', 'Desa  Banjar Anyar', 16, '00', NULL),
(100, 'KKN23036', '2023', 'Tabanan', 'Kediri', 'Desa Abian Tuyung', 16, '00', NULL),
(101, 'KKN23037', '2023', 'Tabanan', 'Kediri', 'Desa Pejaten', 16, '00', NULL),
(102, 'KKN23038', '2023', 'Tabanan', 'Kediri', 'Desa Bebalang', 16, '00', NULL),
(103, 'KKN23039', '2023', 'Tabanan', 'Kediri', 'Desa Bengkel', 16, '00', NULL),
(104, 'KKN23040', '2023', 'Tabanan', 'Kediri', 'Desa Cepaka', 16, '00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kkn_prodi`
--

CREATE TABLE `tb_kkn_prodi` (
  `id` int(11) NOT NULL,
  `kkn_kode` char(30) DEFAULT NULL,
  `prodi_kode` char(30) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_kkn_prodi`
--

INSERT INTO `tb_kkn_prodi` (`id`, `kkn_kode`, `prodi_kode`, `qty`) VALUES
(1, 'KKN25001', '001', 1),
(2, 'KKN25001', '002', 1),
(3, 'KKN25001', '003', 1),
(4, 'KKN25001', '004', 1),
(5, 'KKN25001', '005', 1),
(6, 'KKN25001', '006', 1),
(7, 'KKN25001', '007', 1),
(8, 'KKN25001', '008', 1),
(9, 'KKN25001', '009', 1),
(10, 'KKN25001', '010', 1),
(11, 'KKN25001', '011', 1),
(12, 'KKN25002', '001', 1),
(13, 'KKN25002', '002', 1),
(14, 'KKN25002', '003', 1),
(15, 'KKN25002', '004', 1),
(16, 'KKN25002', '005', 1),
(17, 'KKN25002', '006', 1),
(18, 'KKN25002', '007', 1),
(19, 'KKN25002', '008', 1),
(20, 'KKN25002', '009', 1),
(21, 'KKN25002', '010', 1),
(22, 'KKN25002', '011', 1),
(23, 'KKN25003', '001', 1),
(24, 'KKN25003', '002', 1),
(25, 'KKN25003', '003', 1),
(26, 'KKN25003', '004', 1),
(27, 'KKN25003', '005', 1),
(28, 'KKN25003', '006', 1),
(29, 'KKN25003', '007', 1),
(30, 'KKN25003', '008', 1),
(31, 'KKN25003', '009', 1),
(32, 'KKN25003', '010', 1),
(33, 'KKN25003', '011', 1),
(34, 'KKN25004', '001', 1),
(35, 'KKN25004', '002', 1),
(36, 'KKN25004', '003', 1),
(37, 'KKN25004', '004', 1),
(38, 'KKN25004', '005', 1),
(39, 'KKN25004', '006', 1),
(40, 'KKN25004', '007', 1),
(41, 'KKN25004', '008', 1),
(42, 'KKN25004', '009', 1),
(43, 'KKN25004', '010', 1),
(44, 'KKN25004', '011', 1),
(45, 'KKN25005', '001', 1),
(46, 'KKN25005', '002', 1),
(47, 'KKN25005', '003', 1),
(48, 'KKN25005', '004', 1),
(49, 'KKN25005', '005', 1),
(50, 'KKN25005', '006', 1),
(51, 'KKN25005', '007', 1),
(52, 'KKN25005', '008', 1),
(53, 'KKN25005', '009', 1),
(54, 'KKN25005', '010', 1),
(55, 'KKN25005', '011', 1),
(56, 'KKN25006', '001', 1),
(57, 'KKN25006', '002', 1),
(58, 'KKN25006', '003', 1),
(59, 'KKN25006', '004', 1),
(60, 'KKN25006', '005', 1),
(61, 'KKN25006', '006', 1),
(62, 'KKN25006', '007', 1),
(63, 'KKN25006', '008', 1),
(64, 'KKN25006', '009', 1),
(65, 'KKN25006', '010', 1),
(66, 'KKN25006', '011', 1),
(67, 'KKN25007', '001', 1),
(68, 'KKN25007', '002', 1),
(69, 'KKN25007', '003', 1),
(70, 'KKN25007', '004', 1),
(71, 'KKN25007', '005', 1),
(72, 'KKN25007', '006', 1),
(73, 'KKN25007', '007', 1),
(74, 'KKN25007', '008', 1),
(75, 'KKN25007', '009', 1),
(76, 'KKN25007', '010', 1),
(77, 'KKN25007', '011', 1),
(78, 'KKN25008', '001', 1),
(79, 'KKN25008', '002', 1),
(80, 'KKN25008', '003', 1),
(81, 'KKN25008', '004', 1),
(82, 'KKN25008', '005', 1),
(83, 'KKN25008', '006', 1),
(84, 'KKN25008', '007', 1),
(85, 'KKN25008', '008', 1),
(86, 'KKN25008', '009', 1),
(87, 'KKN25008', '010', 1),
(88, 'KKN25008', '011', 1),
(89, 'KKN25009', '001', 1),
(90, 'KKN25009', '002', 1),
(91, 'KKN25009', '003', 1),
(92, 'KKN25009', '004', 1),
(93, 'KKN25009', '005', 1),
(94, 'KKN25009', '006', 1),
(95, 'KKN25009', '007', 1),
(96, 'KKN25009', '008', 1),
(97, 'KKN25009', '009', 1),
(98, 'KKN25009', '010', 1),
(99, 'KKN25009', '011', 1),
(100, 'KKN25010', '001', 1),
(101, 'KKN25010', '002', 1),
(102, 'KKN25010', '003', 1),
(103, 'KKN25010', '004', 1),
(104, 'KKN25010', '005', 1),
(105, 'KKN25010', '006', 1),
(106, 'KKN25010', '007', 1),
(107, 'KKN25010', '008', 1),
(108, 'KKN25010', '009', 1),
(109, 'KKN25010', '010', 1),
(110, 'KKN25010', '011', 1),
(111, 'KKN25011', '001', 1),
(112, 'KKN25011', '002', 1),
(113, 'KKN25011', '003', 1),
(114, 'KKN25011', '004', 1),
(115, 'KKN25011', '005', 1),
(116, 'KKN25011', '006', 1),
(117, 'KKN25011', '007', 1),
(118, 'KKN25011', '008', 1),
(119, 'KKN25011', '009', 1),
(120, 'KKN25011', '010', 1),
(121, 'KKN25011', '011', 1),
(122, 'KKN25012', '001', 1),
(123, 'KKN25012', '002', 1),
(124, 'KKN25012', '003', 1),
(125, 'KKN25012', '004', 1),
(126, 'KKN25012', '005', 1),
(127, 'KKN25012', '006', 1),
(128, 'KKN25012', '007', 1),
(129, 'KKN25012', '008', 1),
(130, 'KKN25012', '009', 1),
(131, 'KKN25012', '010', 1),
(132, 'KKN25012', '011', 1),
(133, 'KKN25013', '001', 1),
(134, 'KKN25013', '002', 1),
(135, 'KKN25013', '003', 1),
(136, 'KKN25013', '004', 1),
(137, 'KKN25013', '005', 1),
(138, 'KKN25013', '006', 1),
(139, 'KKN25013', '007', 1),
(140, 'KKN25013', '008', 1),
(141, 'KKN25013', '009', 1),
(142, 'KKN25013', '010', 1),
(143, 'KKN25013', '011', 1),
(144, 'KKN25014', '001', 1),
(145, 'KKN25014', '002', 1),
(146, 'KKN25014', '003', 1),
(147, 'KKN25014', '004', 1),
(148, 'KKN25014', '005', 1),
(149, 'KKN25014', '006', 1),
(150, 'KKN25014', '007', 1),
(151, 'KKN25014', '008', 1),
(152, 'KKN25014', '009', 1),
(153, 'KKN25014', '010', 1),
(154, 'KKN25014', '011', 1),
(155, 'KKN25015', '001', 1),
(156, 'KKN25015', '002', 1),
(157, 'KKN25015', '003', 1),
(158, 'KKN25015', '004', 1),
(159, 'KKN25015', '005', 1),
(160, 'KKN25015', '006', 1),
(161, 'KKN25015', '007', 1),
(162, 'KKN25015', '008', 1),
(163, 'KKN25015', '009', 1),
(164, 'KKN25015', '010', 1),
(165, 'KKN25015', '011', 1),
(166, 'KKN25016', '001', 1),
(167, 'KKN25016', '002', 1),
(168, 'KKN25016', '003', 1),
(169, 'KKN25016', '004', 1),
(170, 'KKN25016', '005', 1),
(171, 'KKN25016', '006', 1),
(172, 'KKN25016', '007', 1),
(173, 'KKN25016', '008', 1),
(174, 'KKN25016', '009', 1),
(175, 'KKN25016', '010', 1),
(176, 'KKN25016', '011', 1),
(177, 'KKN25017', '001', 1),
(178, 'KKN25017', '002', 1),
(179, 'KKN25017', '003', 1),
(180, 'KKN25017', '004', 1),
(181, 'KKN25017', '005', 1),
(182, 'KKN25017', '006', 1),
(183, 'KKN25017', '007', 1),
(184, 'KKN25017', '008', 1),
(185, 'KKN25017', '009', 1),
(186, 'KKN25017', '010', 1),
(187, 'KKN25017', '011', 1),
(188, 'KKN25018', '001', 1),
(189, 'KKN25018', '002', 1),
(190, 'KKN25018', '003', 1),
(191, 'KKN25018', '004', 1),
(192, 'KKN25018', '005', 1),
(193, 'KKN25018', '006', 1),
(194, 'KKN25018', '007', 1),
(195, 'KKN25018', '008', 1),
(196, 'KKN25018', '009', 1),
(197, 'KKN25018', '010', 1),
(198, 'KKN25018', '011', 1),
(199, 'KKN25019', '001', 1),
(200, 'KKN25019', '002', 1),
(201, 'KKN25019', '003', 1),
(202, 'KKN25019', '004', 1),
(203, 'KKN25019', '005', 1),
(204, 'KKN25019', '006', 1),
(205, 'KKN25019', '007', 1),
(206, 'KKN25019', '008', 1),
(207, 'KKN25019', '009', 1),
(208, 'KKN25019', '010', 1),
(209, 'KKN25019', '011', 1),
(210, 'KKN25020', '001', 1),
(211, 'KKN25020', '002', 1),
(212, 'KKN25020', '003', 1),
(213, 'KKN25020', '004', 1),
(214, 'KKN25020', '005', 1),
(215, 'KKN25020', '006', 1),
(216, 'KKN25020', '007', 1),
(217, 'KKN25020', '008', 1),
(218, 'KKN25020', '009', 1),
(219, 'KKN25020', '010', 1),
(220, 'KKN25020', '011', 1),
(221, 'KKN25021', '001', 1),
(222, 'KKN25021', '002', 1),
(223, 'KKN25021', '003', 1),
(224, 'KKN25021', '004', 1),
(225, 'KKN25021', '005', 1),
(226, 'KKN25021', '006', 1),
(227, 'KKN25021', '007', 1),
(228, 'KKN25021', '008', 1),
(229, 'KKN25021', '009', 1),
(230, 'KKN25021', '010', 1),
(231, 'KKN25021', '011', 1),
(232, 'KKN25022', '001', 1),
(233, 'KKN25022', '002', 1),
(234, 'KKN25022', '003', 1),
(235, 'KKN25022', '004', 1),
(236, 'KKN25022', '005', 1),
(237, 'KKN25022', '006', 1),
(238, 'KKN25022', '007', 1),
(239, 'KKN25022', '008', 1),
(240, 'KKN25022', '009', 1),
(241, 'KKN25022', '010', 1),
(242, 'KKN25022', '011', 1),
(243, 'KKN25023', '001', 1),
(244, 'KKN25023', '002', 1),
(245, 'KKN25023', '003', 1),
(246, 'KKN25023', '004', 1),
(247, 'KKN25023', '005', 1),
(248, 'KKN25023', '006', 1),
(249, 'KKN25023', '007', 1),
(250, 'KKN25023', '008', 1),
(251, 'KKN25023', '009', 1),
(252, 'KKN25023', '010', 1),
(253, 'KKN25023', '011', 1),
(254, 'KKN25024', '001', 1),
(255, 'KKN25024', '002', 1),
(256, 'KKN25024', '003', 1),
(257, 'KKN25024', '004', 1),
(258, 'KKN25024', '005', 1),
(259, 'KKN25024', '006', 1),
(260, 'KKN25024', '007', 1),
(261, 'KKN25024', '008', 1),
(262, 'KKN25024', '009', 1),
(263, 'KKN25024', '010', 1),
(264, 'KKN25024', '011', 1),
(265, 'KKN25025', '001', 1),
(266, 'KKN25025', '002', 1),
(267, 'KKN25025', '003', 1),
(268, 'KKN25025', '004', 1),
(269, 'KKN25025', '005', 1),
(270, 'KKN25025', '006', 1),
(271, 'KKN25025', '007', 1),
(272, 'KKN25025', '008', 1),
(273, 'KKN25025', '009', 1),
(274, 'KKN25025', '010', 1),
(275, 'KKN25025', '011', 1),
(276, 'KKN25026', '001', 1),
(277, 'KKN25026', '002', 1),
(278, 'KKN25026', '003', 1),
(279, 'KKN25026', '004', 1),
(280, 'KKN25026', '005', 1),
(281, 'KKN25026', '006', 1),
(282, 'KKN25026', '007', 1),
(283, 'KKN25026', '008', 1),
(284, 'KKN25026', '009', 1),
(285, 'KKN25026', '010', 1),
(286, 'KKN25026', '011', 1),
(287, 'KKN25027', '001', 1),
(288, 'KKN25027', '002', 1),
(289, 'KKN25027', '003', 1),
(290, 'KKN25027', '004', 1),
(291, 'KKN25027', '005', 1),
(292, 'KKN25027', '006', 1),
(293, 'KKN25027', '007', 1),
(294, 'KKN25027', '008', 1),
(295, 'KKN25027', '009', 1),
(296, 'KKN25027', '010', 1),
(297, 'KKN25027', '011', 1),
(298, 'KKN25028', '001', 1),
(299, 'KKN25028', '002', 1),
(300, 'KKN25028', '003', 1),
(301, 'KKN25028', '004', 1),
(302, 'KKN25028', '005', 1),
(303, 'KKN25028', '006', 1),
(304, 'KKN25028', '007', 1),
(305, 'KKN25028', '008', 1),
(306, 'KKN25028', '009', 1),
(307, 'KKN25028', '010', 1),
(308, 'KKN25028', '011', 1),
(309, 'KKN25029', '001', 1),
(310, 'KKN25029', '002', 1),
(311, 'KKN25029', '003', 1),
(312, 'KKN25029', '004', 1),
(313, 'KKN25029', '005', 1),
(314, 'KKN25029', '006', 1),
(315, 'KKN25029', '007', 1),
(316, 'KKN25029', '008', 1),
(317, 'KKN25029', '009', 1),
(318, 'KKN25029', '010', 1),
(319, 'KKN25029', '011', 1),
(320, 'KKN25030', '001', 1),
(321, 'KKN25030', '002', 1),
(322, 'KKN25030', '003', 1),
(323, 'KKN25030', '004', 1),
(324, 'KKN25030', '005', 1),
(325, 'KKN25030', '006', 1),
(326, 'KKN25030', '007', 1),
(327, 'KKN25030', '008', 1),
(328, 'KKN25030', '009', 1),
(329, 'KKN25030', '010', 1),
(330, 'KKN25030', '011', 1),
(331, 'KKN25031', '001', 1),
(332, 'KKN25031', '002', 1),
(333, 'KKN25031', '003', 1),
(334, 'KKN25031', '004', 1),
(335, 'KKN25031', '005', 1),
(336, 'KKN25031', '006', 1),
(337, 'KKN25031', '007', 1),
(338, 'KKN25031', '008', 1),
(339, 'KKN25031', '009', 1),
(340, 'KKN25031', '010', 1),
(341, 'KKN25031', '011', 1),
(342, 'KKN25032', '001', 1),
(343, 'KKN25032', '002', 1),
(344, 'KKN25032', '003', 1),
(345, 'KKN25032', '004', 1),
(346, 'KKN25032', '005', 1),
(347, 'KKN25032', '006', 1),
(348, 'KKN25032', '007', 1),
(349, 'KKN25032', '008', 1),
(350, 'KKN25032', '009', 1),
(351, 'KKN25032', '010', 1),
(352, 'KKN25032', '011', 1),
(353, 'KKN25033', '001', 1),
(354, 'KKN25033', '002', 1),
(355, 'KKN25033', '003', 1),
(356, 'KKN25033', '004', 1),
(357, 'KKN25033', '005', 1),
(358, 'KKN25033', '006', 1),
(359, 'KKN25033', '007', 1),
(360, 'KKN25033', '008', 1),
(361, 'KKN25033', '009', 1),
(362, 'KKN25033', '010', 1),
(363, 'KKN25033', '011', 1),
(364, 'KKN25034', '001', 1),
(365, 'KKN25034', '002', 1),
(366, 'KKN25034', '003', 1),
(367, 'KKN25034', '004', 1),
(368, 'KKN25034', '005', 1),
(369, 'KKN25034', '006', 1),
(370, 'KKN25034', '007', 1),
(371, 'KKN25034', '008', 1),
(372, 'KKN25034', '009', 1),
(373, 'KKN25034', '010', 1),
(374, 'KKN25034', '011', 1),
(375, 'KKN25035', '001', 1),
(376, 'KKN25035', '002', 1),
(377, 'KKN25035', '003', 1),
(378, 'KKN25035', '004', 1),
(379, 'KKN25035', '005', 1),
(380, 'KKN25035', '006', 1),
(381, 'KKN25035', '007', 1),
(382, 'KKN25035', '008', 1),
(383, 'KKN25035', '009', 1),
(384, 'KKN25035', '010', 1),
(385, 'KKN25035', '011', 1),
(386, 'KKN25036', '001', 1),
(387, 'KKN25036', '002', 1),
(388, 'KKN25036', '003', 1),
(389, 'KKN25036', '004', 1),
(390, 'KKN25036', '005', 1),
(391, 'KKN25036', '006', 1),
(392, 'KKN25036', '007', 1),
(393, 'KKN25036', '008', 1),
(394, 'KKN25036', '009', 1),
(395, 'KKN25036', '010', 1),
(396, 'KKN25036', '011', 1),
(397, 'KKN25037', '001', 1),
(398, 'KKN25037', '002', 1),
(399, 'KKN25037', '003', 1),
(400, 'KKN25037', '004', 1),
(401, 'KKN25037', '005', 1),
(402, 'KKN25037', '006', 1),
(403, 'KKN25037', '007', 1),
(404, 'KKN25037', '008', 1),
(405, 'KKN25037', '009', 1),
(406, 'KKN25037', '010', 1),
(407, 'KKN25037', '011', 1),
(408, 'KKN25038', '001', 1),
(409, 'KKN25038', '002', 1),
(410, 'KKN25038', '003', 1),
(411, 'KKN25038', '004', 1),
(412, 'KKN25038', '005', 1),
(413, 'KKN25038', '006', 1),
(414, 'KKN25038', '007', 1),
(415, 'KKN25038', '008', 1),
(416, 'KKN25038', '009', 1),
(417, 'KKN25038', '010', 1),
(418, 'KKN25038', '011', 1),
(419, 'KKN25039', '001', 1),
(420, 'KKN25039', '002', 1),
(421, 'KKN25039', '003', 1),
(422, 'KKN25039', '004', 1),
(423, 'KKN25039', '005', 1),
(424, 'KKN25039', '006', 1),
(425, 'KKN25039', '007', 1),
(426, 'KKN25039', '008', 1),
(427, 'KKN25039', '009', 1),
(428, 'KKN25039', '010', 1),
(429, 'KKN25039', '011', 1),
(430, 'KKN25040', '001', 1),
(431, 'KKN25040', '002', 1),
(432, 'KKN25040', '003', 1),
(433, 'KKN25040', '004', 1),
(434, 'KKN25040', '005', 1),
(435, 'KKN25040', '006', 1),
(436, 'KKN25040', '007', 1),
(437, 'KKN25040', '008', 1),
(438, 'KKN25040', '009', 1),
(439, 'KKN25040', '010', 1),
(440, 'KKN25040', '011', 1),
(441, 'KKN25041', '001', 1),
(442, 'KKN25041', '002', 1),
(443, 'KKN25041', '003', 1),
(444, 'KKN25041', '004', 1),
(445, 'KKN25041', '005', 1),
(446, 'KKN25041', '006', 1),
(447, 'KKN25041', '007', 1),
(448, 'KKN25041', '008', 1),
(449, 'KKN25041', '009', 1),
(450, 'KKN25041', '010', 1),
(451, 'KKN25041', '011', 1),
(452, 'KKN25042', '001', 1),
(453, 'KKN25042', '002', 1),
(454, 'KKN25042', '003', 1),
(455, 'KKN25042', '004', 1),
(456, 'KKN25042', '005', 1),
(458, 'KKN25042', '006', 1),
(459, 'KKN25042', '007', 1),
(460, 'KKN25042', '008', 1),
(461, 'KKN25042', '009', 1),
(462, 'KKN25042', '010', 1),
(463, 'KKN25042', '011', 1),
(464, 'KKN25043', '001', 1),
(465, 'KKN25043', '002', 1),
(466, 'KKN25043', '003', 1),
(467, 'KKN25043', '004', 1),
(468, 'KKN25043', '005', 1),
(469, 'KKN25043', '006', 1),
(470, 'KKN25043', '007', 1),
(471, 'KKN25043', '008', 1),
(472, 'KKN25043', '009', 1),
(473, 'KKN25043', '010', 1),
(474, 'KKN25043', '011', 1),
(475, 'KKN25044', '001', 1),
(476, 'KKN25044', '002', 1),
(477, 'KKN25044', '003', 1),
(478, 'KKN25044', '004', 1),
(479, 'KKN25044', '005', 1),
(480, 'KKN25044', '006', 1),
(481, 'KKN25044', '007', 1),
(482, 'KKN25044', '008', 1),
(483, 'KKN25044', '009', 1),
(484, 'KKN25044', '010', 1),
(485, 'KKN25044', '011', 1),
(486, 'KKN25045', '001', 1),
(487, 'KKN25045', '002', 1),
(488, 'KKN25045', '003', 1),
(489, 'KKN25045', '004', 1),
(490, 'KKN25045', '005', 1),
(491, 'KKN25045', '006', 1),
(492, 'KKN25045', '007', 1),
(493, 'KKN25045', '008', 1),
(494, 'KKN25045', '009', 1),
(495, 'KKN25045', '010', 1),
(496, 'KKN25045', '011', 1),
(497, 'KKN25046', '001', 1),
(498, 'KKN25046', '002', 1),
(499, 'KKN25046', '003', 1),
(500, 'KKN25046', '004', 1),
(501, 'KKN25046', '005', 1),
(502, 'KKN25046', '006', 1),
(503, 'KKN25046', '007', 1),
(504, 'KKN25046', '008', 1),
(505, 'KKN25046', '009', 1),
(506, 'KKN25046', '010', 1),
(507, 'KKN25046', '011', 1),
(508, 'KKN25047', '001', 1),
(509, 'KKN25047', '002', 1),
(510, 'KKN25047', '003', 1),
(511, 'KKN25047', '004', 1),
(512, 'KKN25047', '005', 1),
(513, 'KKN25047', '006', 1),
(514, 'KKN25047', '007', 1),
(515, 'KKN25047', '008', 1),
(516, 'KKN25047', '009', 1),
(517, 'KKN25047', '010', 1),
(518, 'KKN25047', '011', 1),
(519, 'KKN25048', '001', 1),
(520, 'KKN25048', '002', 1),
(521, 'KKN25048', '003', 1),
(522, 'KKN25048', '004', 1),
(523, 'KKN25048', '005', 1),
(524, 'KKN25048', '006', 1),
(525, 'KKN25048', '007', 1),
(526, 'KKN25048', '008', 1),
(527, 'KKN25048', '009', 1),
(528, 'KKN25048', '010', 1),
(529, 'KKN25048', '011', 1),
(530, 'KKN25049', '001', 1),
(531, 'KKN25049', '002', 1),
(532, 'KKN25049', '003', 1),
(533, 'KKN25049', '004', 1),
(534, 'KKN25049', '005', 1),
(535, 'KKN25049', '006', 1),
(536, 'KKN25049', '007', 1),
(537, 'KKN25049', '008', 1),
(538, 'KKN25049', '009', 1),
(539, 'KKN25049', '010', 1),
(540, 'KKN25049', '011', 1),
(541, 'KKN25050', '001', 1),
(542, 'KKN25050', '002', 1),
(543, 'KKN25050', '003', 1),
(544, 'KKN25050', '004', 1),
(545, 'KKN25050', '005', 1),
(546, 'KKN25050', '006', 1),
(547, 'KKN25050', '007', 1),
(548, 'KKN25050', '008', 1),
(549, 'KKN25050', '009', 1),
(550, 'KKN25050', '010', 1),
(551, 'KKN25050', '011', 1),
(552, 'KKN25051', '001', 1),
(553, 'KKN25051', '002', 1),
(554, 'KKN25051', '003', 1),
(555, 'KKN25051', '004', 1),
(556, 'KKN25051', '005', 1),
(557, 'KKN25051', '006', 1),
(558, 'KKN25051', '007', 1),
(559, 'KKN25051', '008', 1),
(560, 'KKN25051', '009', 1),
(561, 'KKN25051', '010', 1),
(562, 'KKN25051', '011', 1),
(563, 'KKN25052', '001', 1),
(564, 'KKN25052', '002', 1),
(565, 'KKN25052', '003', 1),
(566, 'KKN25052', '004', 1),
(567, 'KKN25052', '005', 1),
(568, 'KKN25052', '006', 1),
(569, 'KKN25052', '007', 1),
(570, 'KKN25052', '008', 1),
(571, 'KKN25052', '009', 1),
(572, 'KKN25052', '010', 1),
(573, 'KKN25052', '011', 1),
(574, 'KKN25053', '001', 1),
(575, 'KKN25053', '002', 1),
(576, 'KKN25053', '003', 1),
(577, 'KKN25053', '004', 1),
(578, 'KKN25053', '005', 1),
(579, 'KKN25053', '006', 1),
(580, 'KKN25053', '007', 1),
(581, 'KKN25053', '008', 1),
(582, 'KKN25053', '009', 1),
(583, 'KKN25053', '010', 1),
(584, 'KKN25053', '011', 1),
(585, 'KKN25054', '001', 1),
(586, 'KKN25054', '002', 1),
(587, 'KKN25054', '003', 1),
(588, 'KKN25054', '004', 1),
(589, 'KKN25054', '005', 1),
(590, 'KKN25054', '006', 1),
(591, 'KKN25054', '007', 1),
(592, 'KKN25054', '008', 1),
(593, 'KKN25054', '009', 1),
(594, 'KKN25054', '010', 1),
(595, 'KKN25054', '011', 1),
(596, 'KKN25055', '001', 1),
(597, 'KKN25055', '002', 1),
(598, 'KKN25055', '003', 1),
(599, 'KKN25055', '004', 1),
(600, 'KKN25055', '005', 1),
(601, 'KKN25055', '006', 1),
(602, 'KKN25055', '007', 1),
(603, 'KKN25055', '008', 1),
(604, 'KKN25055', '009', 1),
(605, 'KKN25055', '010', 1),
(606, 'KKN25055', '011', 1),
(607, 'KKN25056', '001', 1),
(608, 'KKN25056', '002', 1),
(609, 'KKN25056', '003', 1),
(610, 'KKN25056', '004', 1),
(611, 'KKN25056', '005', 1),
(612, 'KKN25056', '006', 1),
(613, 'KKN25056', '007', 1),
(614, 'KKN25056', '008', 1),
(615, 'KKN25056', '009', 1),
(616, 'KKN25056', '010', 1),
(617, 'KKN25056', '011', 1),
(618, 'KKN25057', '001', 1),
(619, 'KKN25057', '002', 1),
(620, 'KKN25057', '003', 1),
(621, 'KKN25057', '004', 1),
(622, 'KKN25057', '005', 1),
(623, 'KKN25057', '006', 1),
(624, 'KKN25057', '007', 1),
(625, 'KKN25057', '008', 1),
(626, 'KKN25057', '009', 1),
(627, 'KKN25057', '010', 1),
(628, 'KKN25057', '011', 1),
(629, 'KKN25058', '001', 1),
(630, 'KKN25058', '002', 1),
(631, 'KKN25058', '003', 1),
(632, 'KKN25058', '004', 1),
(633, 'KKN25058', '005', 1),
(634, 'KKN25058', '006', 1),
(635, 'KKN25058', '007', 1),
(636, 'KKN25058', '008', 1),
(637, 'KKN25058', '009', 1),
(638, 'KKN25058', '010', 1),
(639, 'KKN25058', '011', 1),
(640, 'KKN25059', '001', 1),
(641, 'KKN25059', '002', 1),
(642, 'KKN25059', '003', 1),
(643, 'KKN25059', '004', 1),
(644, 'KKN25059', '005', 1),
(645, 'KKN25059', '006', 1),
(646, 'KKN25059', '007', 1),
(647, 'KKN25059', '008', 1),
(648, 'KKN25059', '009', 1),
(649, 'KKN25059', '010', 1),
(650, 'KKN25059', '011', 1),
(651, 'KKN25060', '001', 1),
(652, 'KKN25060', '002', 1),
(653, 'KKN25060', '003', 1),
(654, 'KKN25060', '004', 1),
(655, 'KKN25060', '005', 1),
(656, 'KKN25060', '006', 1),
(657, 'KKN25060', '007', 1),
(658, 'KKN25060', '008', 1),
(659, 'KKN25060', '009', 1),
(660, 'KKN25060', '010', 1),
(661, 'KKN25060', '011', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_leader`
--

CREATE TABLE `tb_leader` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `sambutan` varchar(5000) NOT NULL,
  `foto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_leader`
--

INSERT INTO `tb_leader` (`id`, `nama`, `sambutan`, `foto`) VALUES
(1, 'Dr. Drs I Made Sugata,S.Ag.,M.Ag.', '<p><strong><em>Om Swastiastu</em></strong></p>\r\n\r\n<p>Rasa syukur kami haturkan kepada Ida Shang Hyang Widhi Wasa yang telah memberikan pertolongan-Nya dan tuntunan-Nya kepada kami dalam mengemban amanah dalam bentuk kepercayaan lembaga kepada kami sebagai Ketua Lembaga Penelitian dan Pengabdian Kepada Masyarakat (LPPM) Universitas Hindu Gusti Bagus Sugriwa Denpasar .</p>\r\n\r\n<p>LPPM Universitas Hindu I Gusti Bagus Sugriwa Denpasar menjalankan dua fungsi dari Tri Dharma Perguruan Tinggi yaitu penelitian dan pengabdian. Guna menjalankan fungsi tersebut secara optimal, maka manajemen penelitian dilakukan secara terencana dan terukur.</p>\r\n\r\n<p>Perencanaan dan pengukurannya dilakukan menyesuaikan dengan Direktorat Riset dan Pengabdian Kepada Masyarakat Direktorat Jenderal Penguatan Riset dan Pengembangan Kementerian Riset, Teknologi dan Pendidikan Tinggi (periode … <2019>2019) dalam pengelolaan riset atas dasar Rencana Induk Penelitian (RIP) dan Rencana Strategis Pengabdian (Renstra)”.</p>\r\n\r\n<p>RIP UNISMA adalah mengarahkan riset yang dilakukan para peneliti pada satu titik penelitian yaitu ketahanan dan keamanan pangan yang dianalisis secara holistik. Ketahanan dan keamanan pangan didasarkan atas pusat studi/keahlian; (i) agama dan pendidikan, (ii) pusat studi teknologi, sumberdaya alam dan lingkungan, (iii) pusat studi sosial, ekonomi dan humaniora, (iv) pusat studi gender. Pengelompokan ini didasarkan atas isu-isu strategis nasional/internasional yang kemudian disusun konsep dan dilanjutkan dengan pemecahan masalah yang akhirnya dengan memunculkan topik-topik penelitian yang diperlukan.</p>\r\n\r\n<p>Hasil-hasil penelitian dari para peneliti diwajibkan memunculkan output akademik berupa jurnal terakreditasi/beriputasi, buku ajar, haki, dan sebagainya.  Juga diharuskan memunculkan output program berupa purwarupa, produk, prototipe, teknologi tepat guna dan sebagainya yang dipakai sebagai dasar dalam melaksanakan pengabdian kepada masyarakat. Dengan demikian antara penelitian dan pengabdian kepada masyarakat bagaikan suatu ‘sistem’  bermuara pada satu titik ketahanan dan keamanan pangan yang tentunya semuanya untuk mendukung visi, misi dan tujuan Universitas Islam Malang.</p>\r\n\r\n<p>Demikian sambutan kami, mohon do’a restu dalam menjalankan amanah ini.</p>\r\n\r\n<p><strong><em>Om Shanti Shanti Shanti Om</em></strong></p>', 'sugata2.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_news`
--

CREATE TABLE `tb_news` (
  `id` int(11) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `detail` varchar(5000) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_news`
--

INSERT INTO `tb_news` (`id`, `judul`, `slug`, `detail`, `created_by`, `date`, `gambar`) VALUES
(3, 'Pengabdian Masyarakat Rambutsiwi', 'pengabdian_masyarakat', '<p>Pura Bali Rambut Siwi terletak di kabupaten Jembrana, sebelah timur desa Yeh Embang, distrik Mendoyo. Jaraknya sekitar 10 km dari Negara dan dapat dijangkau oleh mobil, kendaraan umum atau sepeda motor karena terletak di jalan utama Denpasar - Gilimanuk. Candi Utama terletak di tebing dan memberikan view samudra Hindia yang menakjubkan. Candi-candi ini memiliki bangunan candi perwakilan yang terletak di samping jalan utama Denpasar ke Gilimanuk. Nama Rambut Siwi mengandung peninggalan yang merupakan kunci rambut bijak (rambut) yang dihormati (siwi). Pura Rambut Siwi adalah salah satu pura Dang Kahyangan jagat yang terletak di Kabupaten Jembrana Bali. Pura Dang Kahyangan sendiri merupakan tempat suci yang diperuntukkan untuk menghormati guru-guru suci seperti pandeta, Maha Rsi dan para Empu. Dan pura Rambu Siwi berkaitan dengan perjalanan suci Dang Hyang Nirartha atau Dang Hyang Dwijendra, beliau diberi gelar juga Pedanda Sakti Bawu Rawuh yang berjasa menanamkan ajaran-ajaran agama Hindu. Lokasi pura utama berada di atas tebing pinggir pantai, berlatar belakang pemandangan alam laut Samudera Hindia, sehingga suasananya indah, tenang, damai dan penuh aura spiritual, tidak mengherankan tempat ini menjadi tempat meditasi ataupun menenangkan diri yang paling ideal. Selain sebagai tempat suci, pura Rambut Siwi juga menjadi salah satu objek wisata di Kabupaten Jembrana yang menjadi satu tujuan wajib saat mengagendakan tour dengan tujuan wisata Bali Barat. Sebelum sampai di tujuan utama anda akan disuguhi hamparan persawahan seolah menyambut kedatangan pengunjung. Pura Rambut Siwi terlihat megah dan cantik berdiri di pinggir tebing, berbatasan langsung dengan pantai, suasana alam sekitarnya indah dan asri, membuat anda betah berlama-lama mengagumi keagungan Tuhan ini. Apalagi kunjungan wisatawan ke Pura ini cukup sepi tidak seperti pura Tanah Lot yang selalu ramai, sehingga di sini anda bisa lebih leluasa untuk bersantai dan menikmati keindahan yang disuguhkan, apalagi jika anda datang pada sore hari keindahan matahari terbenam menjadi daya tarik istimewa. Jika anda warga Hindu dan melakukan perjalanan wisata rohani atau perjalanan Tirtayatra dari arah Denpasar menuju ke arah Bali Barat dan Utara seperti dengan tujuan ke pura Pulaki, Melanting, Pabean, Pemuteran dan ke Pulau Menjangan, maka tentunya juga tidak akan melewatkan Pura Rambut Siwi untuk melakukan persembahyangan. Di kawasan Pura Rambut Siwi setidaknya anda bertemu dengan 8 buah pura termasuk pura Pesanggrahan dan juga pura yang berada di bawah tebing tepi pantai, tempat pertama persembahyangan adalah pura Pesanggrahan kemudian Pura Taman, Penataran, Goa Tirta, Melanting, Pura Gading Wani, pura Ratu Gede Dalem Ped dan tempat terakhir persembahyangan adalah di kawasan pura Luhur yaitu Pura Rambut Siwi. Yang menjadi inti dari pura di kawasan ini adalah Pura Penataran dan pura Luhur (Rambut Siwi) sedangkan lainnya adalah pura Pesanakan. Pada pelataran utama pura luhur terdapat sejumlah bangunan suci, seperti Padma, meru tumpang tiga linggih Ida Betara Pedanda Sakti Bawu Rawuh (Dang Hyang Nirartha), Pengayeng Betara Gunung Agung, Gedong, meru tumpang dua stana Batari Dewa Ayu Ulun Danu, palinggih Rambut Sedana, Peselang, Taksu serta sejumlah bangunan suci lainnya.</p>\r\n', 'Yudi', 1663314882, 'WhatsApp_Image_2022-09-18_at_14_17_001.jpeg'),
(4, 'Dies Natalis UHN Sugriwa II', 'dies_natasil', '<p><strong>Dies Natalis adalah</strong> sebuah peringatan hari lahir perguruan tinggi dan dianggap sebagai peristiwa penting yang menandai awal perjalanan pendidikan dari suatu lembaga pendidikan.</p>\r\n\r\n<p>Bagi perguruan tinggi, dies natalis mempunyai makna yang penting, karena bukan hanya sebagai penanda bertambahnya usia, tetapi juga menjadi penanda tingkat kedewasaan dalam berkarya, dan merupakan suatu kesempatan untuk menguatkan komitmen akan perubahan demi kemajuan perguruan tinggi tersebut.</p>\r\n\r\n<p>Dalam perayaan dies natalis, beberapa perguruan tinggi mengadakan acara dengan tema perlombaan, penghijauan lingkungan, dan open house (kegiatan sosial kemasyarakatan).</p>\r\n\r\n<p><strong>Dies Natalis adalah</strong> sebuah peringatan hari lahir perguruan tinggi dan dianggap sebagai peristiwa penting yang menandai awal perjalanan pendidikan dari suatu lembaga pendidikan.</p>\r\n\r\n<p>Bagi perguruan tinggi, dies natalis mempunyai makna yang penting, karena bukan hanya sebagai penanda bertambahnya usia, tetapi juga menjadi penanda tingkat kedewasaan dalam berkarya, dan merupakan suatu kesempatan untuk menguatkan komitmen akan perubahan demi kemajuan perguruan tinggi tersebut.</p>\r\n\r\n<p>Dalam perayaan dies natalis, beberapa perguruan tinggi mengadakan acara dengan tema perlombaan, penghijauan lingkungan, dan open house (kegiatan sosial kemasyarakatan).</p>\r\n\r\n<p><strong>Dies Natalis adalah</strong> sebuah peringatan hari lahir perguruan tinggi dan dianggap sebagai peristiwa penting yang menandai awal perjalanan pendidikan dari suatu lembaga pendidikan.</p>\r\n\r\n<p>Bagi perguruan tinggi, dies natalis mempunyai makna yang penting, karena bukan hanya sebagai penanda bertambahnya usia, tetapi juga menjadi penanda tingkat kedewasaan dalam berkarya, dan merupakan suatu kesempatan untuk menguatkan komitmen akan perubahan demi kemajuan perguruan tinggi tersebut.</p>\r\n\r\n<p>Dalam perayaan dies natalis, beberapa perguruan tinggi mengadakan acara dengan tema perlombaan, penghijauan lingkungan, dan open house (kegiatan sosial kemasyarakatan).</p>\r\n', 'mery', 1663315881, 'WhatsApp_Image_2022-06-27_at_08_28_39.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_prodi`
--

CREATE TABLE `tb_prodi` (
  `prodi_id` int(11) NOT NULL,
  `prodi_kode` char(10) DEFAULT NULL,
  `prodi_nama` varchar(250) DEFAULT NULL,
  `prodi_fakultas` varchar(100) DEFAULT NULL,
  `prodi_tanggal_login` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_prodi`
--

INSERT INTO `tb_prodi` (`prodi_id`, `prodi_kode`, `prodi_nama`, `prodi_fakultas`, `prodi_tanggal_login`) VALUES
(1, '001', 'Pendidikan Agama Hindu', NULL, '2026-06-12'),
(2, '002', 'Pendidikan Bahasa Inggris', NULL, '2026-06-09'),
(3, '003', 'Bahasa Bali', NULL, NULL),
(4, '004', 'PGSD', NULL, NULL),
(5, '005', 'PGPAUD', NULL, NULL),
(6, '006', 'Industri peejalanan', NULL, NULL),
(7, '007', 'Ilmu Komunikasi', NULL, NULL),
(8, '008', 'Hukum', NULL, NULL),
(9, '009', 'Filsafat', NULL, NULL),
(10, '010', 'Yokes', NULL, NULL),
(11, '011', 'Teologi', NULL, NULL),
(12, '012', 'Kewirausahaan', NULL, NULL),
(13, '013', 'Informatika', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_team`
--

CREATE TABLE `tb_team` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `jabatan` varchar(250) NOT NULL,
  `foto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_team`
--

INSERT INTO `tb_team` (`id`, `nama`, `nip`, `jabatan`, `foto`) VALUES
(1, 'Dr. Drs I Made Sugata,S.Ag.,M.Ag.', '19651231 199403 1 017', 'Ketua', 'sugata.JPG'),
(2, 'Dr. Drs. I Made Wiradnyana, M.Hum', '19630713 200112 1 003', 'Sekretaris', '49.JPG'),
(3, 'Dr. Drs. I Wayan Sukabawa, S.Ag.,M.Ag', '19620614 199103 1 002', 'Koordinator Pusat Pengabdian Masyarakat', '50.JPG'),
(4, 'Dra. Ni Wayan Arini, M.Ag', '19671107 199503 2 001', 'Koordinator Pusat Kajian Wanita, Gender dan Anak', '51.JPG'),
(5, 'Dr. I Dewa Gede Rat Dwiyana Putra, M.Pd', '19880425 201503 1 005', 'Koordinator Pusat Penelitian dan Penerbitan', 'WhatsApp_Image_2022-07-27_at_09_37_23.jpeg'),
(6, 'Dra. Gusti Nyoman Mastini, M.Ag', '19670808 199403 2 003', 'Koordinator Pusat Kajian Penaskahan Nusantara', '53.JPG'),
(7, 'Dr. I Made Adi Brahman, S.Ag., M.Fil.H', '19790312 201101 1 005', 'Koordinator Pusat Destinasi Pariwisata Yoga dan Kesehatan Bali Kuno', '54.JPG'),
(8, 'Ni Ketut Kantriani, S.Ag, M.Ag', '19690424 200003 2 001', 'Koordinator Pusat Destinasi Pariwisata Pencak Silat Bali Kuno', '55.JPG'),
(9, 'Drs. I Wayan Nerta, M.FOr', '19650310 199903 1 001', 'Koordinator Pusat Pengelolaan Jurnal', '56.JPG'),
(10, 'Dr. I Made Adi Surya Pradnya, S.Ag., M.Fil.H', '19860518 201101 1 006', 'Koordinator Pusat Dokumentasi dan Humas', '57.JPG'),
(11, 'Dr. I Wayan Suyanta, SE, M.Si', '19800630 200801 1 011', 'Koordinator Pusat Pengembangan Karir dan Inkubator Bisnis', '58.JPG'),
(12, 'I Wayan Suwadnyana, S.Ag.,M.Fil.H', '19700327 200003 1 002', 'Koordinator Pusat Publikasi Dan Penerbitan', '159.JPG'),
(13, 'Dr. I Gede Januariawan, SH., M.Ag', '19710121 200501 1 002', 'Koordinator Pusat Pengelolaan Hak Kekayaan', '1511.JPG'),
(14, 'I Wayan Sorga, S.Ag', '19670306 199903 1 002', 'ARSIPARIS  SUB KORDINATOR', '37.JPG'),
(15, 'Ni Luh Ersania, S.Ag.,M.Fil.H', '19750322 200312 2 003', 'Pranata HUMAS', '40.JPG'),
(16, 'Ni Nyoman Ayu Swarthini, SE', '19760822 201101 2 007', 'Pranata HUMAS', '222.JPG'),
(17, 'I Gede Agus Wahyudi, S.Kom.', '19960607 202203 1 002', 'Pranata Komputer', 'fotolatarmerah-removebg-preview.jpg'),
(19, 'I Gede Agus Yudiasa, S.Pd.H', 'PTT', 'STAF', '15.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user_klmp`
--

CREATE TABLE `tb_user_klmp` (
  `id` int(11) NOT NULL,
  `no_kelompok` int(3) NOT NULL,
  `desa` varchar(300) NOT NULL,
  `hp` int(12) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_user_klmp`
--

INSERT INTO `tb_user_klmp` (`id`, `no_kelompok`, `desa`, `hp`, `password`, `username`, `date_created`) VALUES
(2, 15, 'bukit batu', 2147483647, '$2y$10$s.5epqgI7zKPyh6cup.28e8cH8h8N8QgSDFG0o3CBLHr3NiryGsfC', 'bukit', '0000-00-00'),
(3, 1, 'bukit jangkrik', 2147483647, '$2y$10$UEUOekviIkLkLMC7YE4IeOS.ucpCLXqd.AvsbgKPBH8FceUTOFd2G', 'jangkrik', '0000-00-00'),
(4, 1, 'bukit jangkrik', 2147483647, '$2y$10$WR.9di2VwcOt92u/8pzH8OP7kWynjyp4ePS4MBAa34vKx7f2ntPMG', 'jangkrik', '0000-00-00'),
(5, 2, 'selat', 2147483647, '$2y$10$xskXiXRHNlX8E9wzDQXP8.tp.djPTY6YdPkON6TrvDlmX.vhQtJnq', 'selat', '0000-00-00'),
(6, 3, 'bukit celeng', 2147483647, '$2y$10$NMqvv8bPuDq1qyN4VDzJ4.Cu7tE861s28tDee5TrC8HGzCfng.TmS', 'celeng', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_visimisi`
--

CREATE TABLE `tb_visimisi` (
  `id` int(11) NOT NULL,
  `visimisi` varchar(5000) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_visimisi`
--

INSERT INTO `tb_visimisi` (`id`, `visimisi`, `gambar`) VALUES
(1, '<p>Visi 2</p>\r\n\r\n<p>Terwujudnya LPPM UHN I Gusti Bagus Sugriwa Denpasar terdepan dan unggul dalam penelitian dan pengabdian kepada masyarakat berbasis, iptek, pendidikan, agama, seni budaya dan pemberdayaan masyarakat dalam rangka peningkatan kehidupan dan kemanusiaan untuk mendukung UHN I Gusti Bagus Sugriwa menjadi Universitas kependidikan berlandaskan keilmuan dan kemandirian</p>\r\n\r\n<p> </p>\r\n\r\n<p>Misi</p>\r\n\r\n<ul>\r\n <li>1. Melakukan penelitian ilmiah berorientasi pada keilmuan dalam bidang-bidang ilmu pengetahuan, pendidikan, agama, teknologi, seni, budaya dan pariwisata</li>\r\n</ul>\r\n\r\n<ul>\r\n <li>2. Melakukan penjaminan mutu perlindungan HKI dalam bidang penelitian dalam lingkungan UHN I Gusti Bagus Sugriwa Denpasar</li>\r\n</ul>\r\n\r\n<ul>\r\n <li>3. Mendiseminakisan hasil-hasil penelitian dan pengembangan dalam bentuk publikasi produk bagi kehidupan manusia</li>\r\n</ul>\r\n\r\n<ul>\r\n <li>4. Mengkoordinasi kegiatan penelitian yang dilakukan oleh pusat penelitian dan pengabdian kepada masyarakat.</li>\r\n</ul>\r\n\r\n<ul>\r\n <li>5. Melakukan kegiatan pengabdian kepada masyarakat sesuai kebutuhan masyarakat dan pembangunan nasional berlandaskan pendidikan agama, seni budaya dan iptek</li>\r\n</ul>\r\n\r\n<ul>\r\n <li>6. Meningkatkan kualitas dan pengembangan sumber daya manusia Hindu melalui gender dan anak</li>\r\n</ul>\r\n\r\n<ul>\r\n <li>7. Menyelenggarakan tata kelola bidang penelitian dan pengabdian kepada masyarakat yang handal dan terpercaya.</li>\r\n</ul>', 'logouhnvismisi.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_akun`
--
ALTER TABLE `tb_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_akun_mhs`
--
ALTER TABLE `tb_akun_mhs`
  ADD PRIMARY KEY (`mhs_id`);

--
-- Indeks untuk tabel `tb_announcement`
--
ALTER TABLE `tb_announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_kkn`
--
ALTER TABLE `tb_kkn`
  ADD PRIMARY KEY (`kkn_id`);

--
-- Indeks untuk tabel `tb_kkn_copy`
--
ALTER TABLE `tb_kkn_copy`
  ADD PRIMARY KEY (`kkn_id`);

--
-- Indeks untuk tabel `tb_kkn_prodi`
--
ALTER TABLE `tb_kkn_prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_leader`
--
ALTER TABLE `tb_leader`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_news`
--
ALTER TABLE `tb_news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_prodi`
--
ALTER TABLE `tb_prodi`
  ADD PRIMARY KEY (`prodi_id`);

--
-- Indeks untuk tabel `tb_team`
--
ALTER TABLE `tb_team`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user_klmp`
--
ALTER TABLE `tb_user_klmp`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_visimisi`
--
ALTER TABLE `tb_visimisi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_akun`
--
ALTER TABLE `tb_akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_akun_mhs`
--
ALTER TABLE `tb_akun_mhs`
  MODIFY `mhs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_announcement`
--
ALTER TABLE `tb_announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_kkn`
--
ALTER TABLE `tb_kkn`
  MODIFY `kkn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `tb_kkn_copy`
--
ALTER TABLE `tb_kkn_copy`
  MODIFY `kkn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT untuk tabel `tb_kkn_prodi`
--
ALTER TABLE `tb_kkn_prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=662;

--
-- AUTO_INCREMENT untuk tabel `tb_leader`
--
ALTER TABLE `tb_leader`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_news`
--
ALTER TABLE `tb_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_prodi`
--
ALTER TABLE `tb_prodi`
  MODIFY `prodi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_team`
--
ALTER TABLE `tb_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tb_user_klmp`
--
ALTER TABLE `tb_user_klmp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_visimisi`
--
ALTER TABLE `tb_visimisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
