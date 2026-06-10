-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Sep 2022 pada 06.08
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.3.33

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_akun`
--

INSERT INTO `tb_akun` (`id`, `name`, `username`, `password`, `date_created`) VALUES
(3, 'deudi', 'yudi', '$2y$10$Q5GmgClk5kcmWOrgbxpsFuWclRMx20DjDzzxqa1amXw', '0000-00-00 00:00:00'),
(4, 'batu', 'bukit', '$2y$10$d9fNnWFk.6I3Vn4GNV0FuezDKht4DMN.ejtJSfEITemTCRymDNhRO', '2022-09-10 03:54:55'),
(6, 'I Gede Agus Wahyudi', 'lppm2022', '$2y$10$qT02XbXXbxhrgfWhf3fPkO5LEJ3MtMqGL1mVV6/RjvltHy05EGZn2', '2022-09-18 09:24:31');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_announcement`
--

INSERT INTO `tb_announcement` (`id`, `judul`, `detail`, `slug`, `date`, `gambar`) VALUES
(2, 'Pengabdian Masyarakat Rambut siwi', '<p>civitas yang ingiin mengikuti pengabdian di pura luhur rambut siwi agar segera melakukan pendaftara pada link google drive dibawa ini<br>\r\nhttps://www.google.com/search?q=lppm+undiksha&oq=lppm+undiksha&aqs=chrome.0.69i59j0i390l3j69i60l3.1225j0j7&sourceid=chrome&ie=UTF-8</p>', 'pengabdian', 1663652186, 'WhatsApp_Image_2022-08-31_at_07_04_16.jpeg'),
(3, 'Aktualisasi CPNS KEMENAG Tahun 2022', '<p><strong>Calon Pegawai Negeri Sipil (CPNS) adalah</strong> warga negara Republik Indonesia yang baru lulus dalam mengikuti tes seleksi penerimaan Calon Pegawai Negeri Sipil pada tahap pertama sebelum menjadi Pegawai Negeri Sipil (PNS).</p>\r\n\r\n<p>CPNS wajib memenuhi beberapa kriteria sebelum diangkat menjadi PNS, antara lain: mengikuti pendidikan dan pelatihan (diklat) pra-jabatan dan memiliki sertifikat yang menyatakan kelulusan mereka dalam kegiatan tersebut, surat keterangan sehat jasmani dan rohani dari rumah sakit pemerintah, dan pencapaian daftar penilaian pelaksanaan pekerjaan (DP3) dengan predikat nilai minimum yang telah ditentukan.</p>', 'cpns', 1663726328, 'WhatsApp_Image_2022-09-11_at_16_21_22.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_leader`
--

CREATE TABLE `tb_leader` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `sambutan` varchar(5000) NOT NULL,
  `foto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_news`
--

INSERT INTO `tb_news` (`id`, `judul`, `slug`, `detail`, `created_by`, `date`, `gambar`) VALUES
(3, 'Pengabdian Masyarakat Rambutsiwi', 'pengabdian_masyarakat', '<p>Pura Bali Rambut Siwi terletak di kabupaten Jembrana, sebelah timur desa Yeh Embang, distrik Mendoyo. Jaraknya sekitar 10 km dari Negara dan dapat dijangkau oleh mobil, kendaraan umum atau sepeda motor karena terletak di jalan utama Denpasar - Gilimanuk. Candi Utama terletak di tebing dan memberikan view samudra Hindia yang menakjubkan. Candi-candi ini memiliki bangunan candi perwakilan yang terletak di samping jalan utama Denpasar ke Gilimanuk. Nama Rambut Siwi mengandung peninggalan yang merupakan kunci rambut bijak (rambut) yang dihormati (siwi). Pura Rambut Siwi adalah salah satu pura Dang Kahyangan jagat yang terletak di Kabupaten Jembrana Bali. Pura Dang Kahyangan sendiri merupakan tempat suci yang diperuntukkan untuk menghormati guru-guru suci seperti pandeta, Maha Rsi dan para Empu. Dan pura Rambu Siwi berkaitan dengan perjalanan suci Dang Hyang Nirartha atau Dang Hyang Dwijendra, beliau diberi gelar juga Pedanda Sakti Bawu Rawuh yang berjasa menanamkan ajaran-ajaran agama Hindu. Lokasi pura utama berada di atas tebing pinggir pantai, berlatar belakang pemandangan alam laut Samudera Hindia, sehingga suasananya indah, tenang, damai dan penuh aura spiritual, tidak mengherankan tempat ini menjadi tempat meditasi ataupun menenangkan diri yang paling ideal. Selain sebagai tempat suci, pura Rambut Siwi juga menjadi salah satu objek wisata di Kabupaten Jembrana yang menjadi satu tujuan wajib saat mengagendakan tour dengan tujuan wisata Bali Barat. Sebelum sampai di tujuan utama anda akan disuguhi hamparan persawahan seolah menyambut kedatangan pengunjung. Pura Rambut Siwi terlihat megah dan cantik berdiri di pinggir tebing, berbatasan langsung dengan pantai, suasana alam sekitarnya indah dan asri, membuat anda betah berlama-lama mengagumi keagungan Tuhan ini. Apalagi kunjungan wisatawan ke Pura ini cukup sepi tidak seperti pura Tanah Lot yang selalu ramai, sehingga di sini anda bisa lebih leluasa untuk bersantai dan menikmati keindahan yang disuguhkan, apalagi jika anda datang pada sore hari keindahan matahari terbenam menjadi daya tarik istimewa. Jika anda warga Hindu dan melakukan perjalanan wisata rohani atau perjalanan Tirtayatra dari arah Denpasar menuju ke arah Bali Barat dan Utara seperti dengan tujuan ke pura Pulaki, Melanting, Pabean, Pemuteran dan ke Pulau Menjangan, maka tentunya juga tidak akan melewatkan Pura Rambut Siwi untuk melakukan persembahyangan. Di kawasan Pura Rambut Siwi setidaknya anda bertemu dengan 8 buah pura termasuk pura Pesanggrahan dan juga pura yang berada di bawah tebing tepi pantai, tempat pertama persembahyangan adalah pura Pesanggrahan kemudian Pura Taman, Penataran, Goa Tirta, Melanting, Pura Gading Wani, pura Ratu Gede Dalem Ped dan tempat terakhir persembahyangan adalah di kawasan pura Luhur yaitu Pura Rambut Siwi. Yang menjadi inti dari pura di kawasan ini adalah Pura Penataran dan pura Luhur (Rambut Siwi) sedangkan lainnya adalah pura Pesanakan. Pada pelataran utama pura luhur terdapat sejumlah bangunan suci, seperti Padma, meru tumpang tiga linggih Ida Betara Pedanda Sakti Bawu Rawuh (Dang Hyang Nirartha), Pengayeng Betara Gunung Agung, Gedong, meru tumpang dua stana Batari Dewa Ayu Ulun Danu, palinggih Rambut Sedana, Peselang, Taksu serta sejumlah bangunan suci lainnya.</p>\r\n', 'Yudi', 1663314882, 'WhatsApp_Image_2022-09-18_at_14_17_001.jpeg'),
(4, 'Dies Natalis UHN Sugriwa II', 'dies_natasil', '<p><strong>Dies Natalis adalah</strong> sebuah peringatan hari lahir perguruan tinggi dan dianggap sebagai peristiwa penting yang menandai awal perjalanan pendidikan dari suatu lembaga pendidikan.</p>\r\n\r\n<p>Bagi perguruan tinggi, dies natalis mempunyai makna yang penting, karena bukan hanya sebagai penanda bertambahnya usia, tetapi juga menjadi penanda tingkat kedewasaan dalam berkarya, dan merupakan suatu kesempatan untuk menguatkan komitmen akan perubahan demi kemajuan perguruan tinggi tersebut.</p>\r\n\r\n<p>Dalam perayaan dies natalis, beberapa perguruan tinggi mengadakan acara dengan tema perlombaan, penghijauan lingkungan, dan open house (kegiatan sosial kemasyarakatan).</p>\r\n\r\n<p><strong>Dies Natalis adalah</strong> sebuah peringatan hari lahir perguruan tinggi dan dianggap sebagai peristiwa penting yang menandai awal perjalanan pendidikan dari suatu lembaga pendidikan.</p>\r\n\r\n<p>Bagi perguruan tinggi, dies natalis mempunyai makna yang penting, karena bukan hanya sebagai penanda bertambahnya usia, tetapi juga menjadi penanda tingkat kedewasaan dalam berkarya, dan merupakan suatu kesempatan untuk menguatkan komitmen akan perubahan demi kemajuan perguruan tinggi tersebut.</p>\r\n\r\n<p>Dalam perayaan dies natalis, beberapa perguruan tinggi mengadakan acara dengan tema perlombaan, penghijauan lingkungan, dan open house (kegiatan sosial kemasyarakatan).</p>\r\n\r\n<p><strong>Dies Natalis adalah</strong> sebuah peringatan hari lahir perguruan tinggi dan dianggap sebagai peristiwa penting yang menandai awal perjalanan pendidikan dari suatu lembaga pendidikan.</p>\r\n\r\n<p>Bagi perguruan tinggi, dies natalis mempunyai makna yang penting, karena bukan hanya sebagai penanda bertambahnya usia, tetapi juga menjadi penanda tingkat kedewasaan dalam berkarya, dan merupakan suatu kesempatan untuk menguatkan komitmen akan perubahan demi kemajuan perguruan tinggi tersebut.</p>\r\n\r\n<p>Dalam perayaan dies natalis, beberapa perguruan tinggi mengadakan acara dengan tema perlombaan, penghijauan lingkungan, dan open house (kegiatan sosial kemasyarakatan).</p>\r\n', 'mery', 1663315881, 'WhatsApp_Image_2022-06-27_at_08_28_39.jpeg');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indeks untuk tabel `tb_announcement`
--
ALTER TABLE `tb_announcement`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_announcement`
--
ALTER TABLE `tb_announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_leader`
--
ALTER TABLE `tb_leader`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_news`
--
ALTER TABLE `tb_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
