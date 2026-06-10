/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 5.7.24 : Database - lppm_uhn
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lppm_uhn` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `lppm_uhn`;

/*Table structure for table `tb_akun` */

DROP TABLE IF EXISTS `tb_akun`;

CREATE TABLE `tb_akun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_akun` */

insert  into `tb_akun`(`id`,`name`,`username`,`password`,`date_created`) values 
(3,'deudi','yudi','$2y$10$Q5GmgClk5kcmWOrgbxpsFuWclRMx20DjDzzxqa1amXw','0000-00-00 00:00:00'),
(4,'batu','bukit','$2y$10$d9fNnWFk.6I3Vn4GNV0FuezDKht4DMN.ejtJSfEITemTCRymDNhRO','2022-09-10 11:54:55'),
(6,'I Gede Agus Wahyudi','lppm2022','$2y$10$qT02XbXXbxhrgfWhf3fPkO5LEJ3MtMqGL1mVV6/RjvltHy05EGZn2','2022-09-18 17:24:31'),
(7,'Admin','admin','$2y$10$tJIgpukkJG4.8InUm21S.OOHVNnULWlZV6lGY3SkjfAtkMRH5swT2','2023-05-25 19:34:02');

/*Table structure for table `tb_akun_mhs` */

DROP TABLE IF EXISTS `tb_akun_mhs`;

CREATE TABLE `tb_akun_mhs` (
  `mhs_id` int(11) NOT NULL AUTO_INCREMENT,
  `mhs_nim` varchar(50) DEFAULT NULL,
  `mhs_nama` varchar(250) DEFAULT NULL,
  `mhs_alamat` text,
  `mhs_nohp` varchar(50) DEFAULT NULL,
  `mhs_email` varchar(250) DEFAULT NULL,
  `mhs_password` varchar(250) DEFAULT NULL,
  `mhs_jk` char(1) DEFAULT NULL,
  `mhs_status` char(2) DEFAULT NULL,
  `prodi_kode` char(10) DEFAULT NULL,
  `kkn_kode` char(10) DEFAULT NULL,
  PRIMARY KEY (`mhs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tb_akun_mhs` */

insert  into `tb_akun_mhs`(`mhs_id`,`mhs_nim`,`mhs_nama`,`mhs_alamat`,`mhs_nohp`,`mhs_email`,`mhs_password`,`mhs_jk`,`mhs_status`,`prodi_kode`,`kkn_kode`) values 
(1,'123','I Putu Surya Adiperatamaa','123','0857612312321','shadowzlegendz69@gmail.com','202cb962ac59075b964b07152d234b70',NULL,NULL,'001','KKN23001'),
(2,'124','I Putu Surya Adiperatamaa','123','0857612312321','shadowzlegendz69@gmail.com','202cb962ac59075b964b07152d234b70',NULL,NULL,'001','KKN23001'),
(3,'125','I Putu Surya Adiperatamaa','123','0857612312321','desmiari27@gmail.com','202cb962ac59075b964b07152d234b70',NULL,NULL,'005',NULL),
(4,'1222','Steve Maru','bali','0857612312321','shadowzlegendz69@gmail.com','202cb962ac59075b964b07152d234b70',NULL,NULL,'001',NULL),
(5,'1231','I Putu Surya Adiperatamaa','123','0857612312321','desmiari27@gmail.com','202cb962ac59075b964b07152d234b70',NULL,NULL,'009',NULL),
(6,'1235','I Putu Surya Adiperatamaa','asd','123','shadowzlegendz69@gmail.com','202cb962ac59075b964b07152d234b70',NULL,NULL,'008',NULL),
(7,'1111','1','aa','0857612312321','desmiari27@gmail.com','202cb962ac59075b964b07152d234b70',NULL,NULL,'010',NULL),
(8,'123456','I Putu Surya Adiperatamaa','Gianyar','0857612312321','suryaadiperatama@gmail.com','202cb962ac59075b964b07152d234b70',NULL,NULL,'001','KKN23002'),
(9,'123457','I Putu Surya Adiperatamaa','GIANYAR','0857612312321','suryaadiperatama@gmail.com','202cb962ac59075b964b07152d234b70',NULL,NULL,'001','KKN23002'),
(10,'123458','Steve Maru','aa','123','asas@mail.com','202cb962ac59075b964b07152d234b70',NULL,NULL,'001','KKN23003');

/*Table structure for table `tb_announcement` */

DROP TABLE IF EXISTS `tb_announcement`;

CREATE TABLE `tb_announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(1000) NOT NULL,
  `detail` varchar(5000) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `date` int(11) NOT NULL,
  `gambar` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_announcement` */

insert  into `tb_announcement`(`id`,`judul`,`detail`,`slug`,`date`,`gambar`) values 
(2,'Pengabdian Masyarakat Rambut siwi','<p>civitas yang ingiin mengikuti pengabdian di pura luhur rambut siwi agar segera melakukan pendaftara pada link google drive dibawa ini<br>\r\nhttps://www.google.com/search?q=lppm+undiksha&oq=lppm+undiksha&aqs=chrome.0.69i59j0i390l3j69i60l3.1225j0j7&sourceid=chrome&ie=UTF-8</p>','pengabdian',1663652186,'WhatsApp_Image_2022-08-31_at_07_04_16.jpeg'),
(3,'Aktualisasi CPNS KEMENAG Tahun 2022','<p><strong>Calon Pegawai Negeri Sipil (CPNS) adalah</strong> warga negara Republik Indonesia yang baru lulus dalam mengikuti tes seleksi penerimaan Calon Pegawai Negeri Sipil pada tahap pertama sebelum menjadi Pegawai Negeri Sipil (PNS).</p>\r\n\r\n<p>CPNS wajib memenuhi beberapa kriteria sebelum diangkat menjadi PNS, antara lain: mengikuti pendidikan dan pelatihan (diklat) pra-jabatan dan memiliki sertifikat yang menyatakan kelulusan mereka dalam kegiatan tersebut, surat keterangan sehat jasmani dan rohani dari rumah sakit pemerintah, dan pencapaian daftar penilaian pelaksanaan pekerjaan (DP3) dengan predikat nilai minimum yang telah ditentukan.</p>','cpns',1663726328,'WhatsApp_Image_2022-09-11_at_16_21_22.jpeg');

/*Table structure for table `tb_kkn` */

DROP TABLE IF EXISTS `tb_kkn`;

CREATE TABLE `tb_kkn` (
  `kkn_id` int(11) NOT NULL AUTO_INCREMENT,
  `kkn_kode` char(10) DEFAULT NULL,
  `kkn_periode` varchar(20) DEFAULT NULL,
  `kkn_kabupaten` varchar(100) DEFAULT NULL,
  `kkn_kecamatan` varchar(100) DEFAULT NULL,
  `kkn_desa` varchar(100) DEFAULT NULL,
  `kkn_kuota` int(10) DEFAULT NULL,
  `kkn_status` char(2) DEFAULT NULL,
  `kkn_sisa_kuota` int(11) DEFAULT NULL,
  PRIMARY KEY (`kkn_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

/*Data for the table `tb_kkn` */

insert  into `tb_kkn`(`kkn_id`,`kkn_kode`,`kkn_periode`,`kkn_kabupaten`,`kkn_kecamatan`,`kkn_desa`,`kkn_kuota`,`kkn_status`,`kkn_sisa_kuota`) values 
(65,'KKN23001','2023','Bangli','Bangli','Desa Kayubihi',16,'00',14),
(66,'KKN23002','2023','Bangli','Bangli','Desa Pengotan',16,'00',14),
(67,'KKN23003','2023','Bangli','Bangli','Desa Babalang',16,'00',15),
(68,'KKN23004','2023','Bangli','Bangli','Desa Cempaga',16,'00',16),
(69,'KKN23005','2023','Bangli','Bangli','Desa Kawan',16,'00',16),
(70,'KKN23006','2023','Bangli','Kintamani','Desa Bayung Gede',16,'00',16),
(71,'KKN23007','2023','Bangli','Kintamani','Desa Batur Selatan',16,'00',16),
(72,'KKN23008','2023','Bangli','Kintamani','Desa Batur Tengah',16,'00',16),
(73,'KKN23009','2023','Bangli','Kintamani','Desa Batur Utara',16,'00',16),
(74,'KKN23010','2023','Bangli','Kintamani','Desa Bayung Cerik',16,'00',16),
(75,'KKN23011','2023','Bangli','Susut','Desa Abuan',16,'00',16),
(76,'KKN23012','2023','Bangli','Susut','Desa Apuan',16,'00',16),
(77,'KKN23013','2023','Bangli','Susut','Desa  Demulih',16,'00',16),
(78,'KKN23014','2023','Bangli','Susut','Desa Pengiangan',16,'00',16),
(79,'KKN23015','2023','Bangli','Susut','Desa Selat',16,'00',16),
(80,'KKN23016','2023','Bangli','Tembuku','Desa Bangbang',16,'00',16),
(81,'KKN23017','2023','Bangli','Tembuku','Desa Jehem',16,'00',16),
(82,'KKN23018','2023','Bangli','Tembuku','Desa  Peninjoan',16,'00',16),
(83,'KKN23019','2023','Bangli','Tembuku','Desa Undisan ',16,'00',16),
(84,'KKN23020','2023','Bangli','Tembuku','Desa  Yangapi',16,'00',16),
(85,'KKN23021','2023','Tabanan','Tabanan','Desa Sudimara',16,'00',16),
(86,'KKN23022','2023','Tabanan','Tabanan','Desa Gubug                   ',16,'00',16),
(87,'KKN23023','2023','Tabanan','Tabanan','Desa Bongan               ',16,'00',16),
(88,'KKN23024','2023','Tabanan','Tabanan','Desa Wanasari                 ',16,'00',16),
(89,'KKN23025','2023','Tabanan','Tabanan','Desa Sasandan       ',16,'00',16),
(90,'KKN23026','2023','Tabanan','Tabanan','Desa Subamia',16,'00',16),
(91,'KKN23027','2023','Tabanan','Kerambitan','Desa Kerambitan',16,'00',16),
(92,'KKN23028','2023','Tabanan','Kerambitan','Desa Baturiti',17,'00',16),
(93,'KKN23029','2023','Tabanan','Kerambitan','Desa Tista',17,'00',16),
(94,'KKN23030','2023','Tabanan','Kerambitan','Desa Kesiut',16,'00',16),
(95,'KKN23031','2023','Tabanan','Kerambitan','Desa Batuaji',16,'00',16),
(96,'KKN23032','2023','Tabanan','Kerambitan','Desa Timpag',16,'00',16),
(97,'KKN23033','2023','Tabanan','Kediri','Desa Kediri',16,'00',16),
(98,'KKN23034','2023','Tabanan','Kediri','Desa Kaba-kaba',16,'00',16),
(99,'KKN23035','2023','Tabanan','Kediri','Desa  Banjar Anyar',16,'00',16),
(100,'KKN23036','2023','Tabanan','Kediri','Desa Abian Tuyung',16,'00',16),
(101,'KKN23037','2023','Tabanan','Kediri','Desa Pejaten',16,'00',16),
(102,'KKN23038','2023','Tabanan','Kediri','Desa Bebalang',16,'00',16),
(103,'KKN23039','2023','Tabanan','Kediri','Desa Bengkel',16,'00',16),
(104,'KKN23040','2023','Tabanan','Kediri','Desa Cepaka',16,'00',16);

/*Table structure for table `tb_kkn_copy` */

DROP TABLE IF EXISTS `tb_kkn_copy`;

CREATE TABLE `tb_kkn_copy` (
  `kkn_id` int(11) NOT NULL AUTO_INCREMENT,
  `kkn_kode` char(10) DEFAULT NULL,
  `kkn_periode` varchar(20) DEFAULT NULL,
  `kkn_kabupaten` varchar(100) DEFAULT NULL,
  `kkn_kecamatan` varchar(100) DEFAULT NULL,
  `kkn_desa` varchar(100) DEFAULT NULL,
  `kkn_kuota` int(10) DEFAULT NULL,
  `kkn_status` char(2) DEFAULT NULL,
  `kkn_sisa_kuota` int(11) DEFAULT NULL,
  PRIMARY KEY (`kkn_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

/*Data for the table `tb_kkn_copy` */

insert  into `tb_kkn_copy`(`kkn_id`,`kkn_kode`,`kkn_periode`,`kkn_kabupaten`,`kkn_kecamatan`,`kkn_desa`,`kkn_kuota`,`kkn_status`,`kkn_sisa_kuota`) values 
(65,'KKN23001','2023','Bangli','Bangli','Desa Kayubihi',16,'00',NULL),
(66,'KKN23002','2023','Bangli','Bangli','Desa Pengotan',16,'00',NULL),
(67,'KKN23003','2023','Bangli','Bangli','Desa Babalang',16,'00',NULL),
(68,'KKN23004','2023','Bangli','Bangli','Desa Cempaga',16,'00',NULL),
(69,'KKN23005','2023','Bangli','Bangli','Desa Kawan',16,'00',NULL),
(70,'KKN23006','2023','Bangli','Kintamani','Desa Bayung Gede',16,'00',NULL),
(71,'KKN23007','2023','Bangli','Kintamani','Desa Batur Selatan',16,'00',NULL),
(72,'KKN23008','2023','Bangli','Kintamani','Desa Batur Tengah',16,'00',NULL),
(73,'KKN23009','2023','Bangli','Kintamani','Desa Batur Utara',16,'00',NULL),
(74,'KKN23010','2023','Bangli','Kintamani','Desa Bayung Cerik',16,'00',NULL),
(75,'KKN23011','2023','Bangli','Susut','Desa Abuan',16,'00',NULL),
(76,'KKN23012','2023','Bangli','Susut','Desa Apuan',16,'00',NULL),
(77,'KKN23013','2023','Bangli','Susut','Desa  Demulih',16,'00',NULL),
(78,'KKN23014','2023','Bangli','Susut','Desa Pengiangan',16,'00',NULL),
(79,'KKN23015','2023','Bangli','Susut','Desa Selat',16,'00',NULL),
(80,'KKN23016','2023','Bangli','Tembuku','Desa Bangbang',16,'00',NULL),
(81,'KKN23017','2023','Bangli','Tembuku','Desa Jehem',16,'00',NULL),
(82,'KKN23018','2023','Bangli','Tembuku','Desa  Peninjoan',16,'00',NULL),
(83,'KKN23019','2023','Bangli','Tembuku','Desa Undisan ',16,'00',NULL),
(84,'KKN23020','2023','Bangli','Tembuku','Desa  Yangapi',16,'00',NULL),
(85,'KKN23021','2023','Tabanan','Tabanan','Desa Sudimara',16,'00',NULL),
(86,'KKN23022','2023','Tabanan','Tabanan','Desa Gubug                   ',16,'00',NULL),
(87,'KKN23023','2023','Tabanan','Tabanan','Desa Bongan               ',16,'00',NULL),
(88,'KKN23024','2023','Tabanan','Tabanan','Desa Wanasari                 ',16,'00',NULL),
(89,'KKN23025','2023','Tabanan','Tabanan','Desa Sasandan       ',16,'00',NULL),
(90,'KKN23026','2023','Tabanan','Tabanan','Desa Subamia',16,'00',NULL),
(91,'KKN23027','2023','Tabanan','Kerambitan','Desa Kerambitan',16,'00',NULL),
(92,'KKN23028','2023','Tabanan','Kerambitan','Desa Baturiti',17,'00',NULL),
(93,'KKN23029','2023','Tabanan','Kerambitan','Desa Tista',17,'00',NULL),
(94,'KKN23030','2023','Tabanan','Kerambitan','Desa Kesiut',16,'00',NULL),
(95,'KKN23031','2023','Tabanan','Kerambitan','Desa Batuaji',16,'00',NULL),
(96,'KKN23032','2023','Tabanan','Kerambitan','Desa Timpag',16,'00',NULL),
(97,'KKN23033','2023','Tabanan','Kediri','Desa Kediri',16,'00',NULL),
(98,'KKN23034','2023','Tabanan','Kediri','Desa Kaba-kaba',16,'00',NULL),
(99,'KKN23035','2023','Tabanan','Kediri','Desa  Banjar Anyar',16,'00',NULL),
(100,'KKN23036','2023','Tabanan','Kediri','Desa Abian Tuyung',16,'00',NULL),
(101,'KKN23037','2023','Tabanan','Kediri','Desa Pejaten',16,'00',NULL),
(102,'KKN23038','2023','Tabanan','Kediri','Desa Bebalang',16,'00',NULL),
(103,'KKN23039','2023','Tabanan','Kediri','Desa Bengkel',16,'00',NULL),
(104,'KKN23040','2023','Tabanan','Kediri','Desa Cepaka',16,'00',NULL);

/*Table structure for table `tb_kkn_prodi` */

DROP TABLE IF EXISTS `tb_kkn_prodi`;

CREATE TABLE `tb_kkn_prodi` (
  `kkn_kode` char(10) DEFAULT NULL,
  `prodi_kode` char(10) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_kkn_prodi` */

insert  into `tb_kkn_prodi`(`kkn_kode`,`prodi_kode`,`qty`) values 
('KKN23001','001',2),
('KKN23001','002',2),
('KKN23001','003',2),
('KKN23001','004',4),
('KKN23001','005',0),
('KKN23001','006',2),
('KKN23001','007',2),
('KKN23001','008',1),
('KKN23001','009',1),
('KKN23001','010',0),
('KKN23001','011',0),
('KKN23002','001',2),
('KKN23002','002',2),
('KKN23002','003',2),
('KKN23002','004',4),
('KKN23002','005',0),
('KKN23002','006',2),
('KKN23002','007',2),
('KKN23002','008',1),
('KKN23002','009',1),
('KKN23002','010',0),
('KKN23002','011',0),
('KKN23003','001',2),
('KKN23003','002',2),
('KKN23003','003',2),
('KKN23003','004',4),
('KKN23003','005',0),
('KKN23003','006',2),
('KKN23003','007',2),
('KKN23003','008',1),
('KKN23003','009',1),
('KKN23003','010',0),
('KKN23003','011',0),
('KKN23004','001',2),
('KKN23004','002',2),
('KKN23004','003',2),
('KKN23004','004',4),
('KKN23004','005',0),
('KKN23004','006',2),
('KKN23004','007',2),
('KKN23004','008',1),
('KKN23004','009',0),
('KKN23004','010',0),
('KKN23004','011',1),
('KKN23005','001',2),
('KKN23005','002',2),
('KKN23005','003',2),
('KKN23005','004',4),
('KKN23005','005',0),
('KKN23005','006',2),
('KKN23005','007',2),
('KKN23005','008',1),
('KKN23005','009',1),
('KKN23005','010',0),
('KKN23005','011',0),
('KKN23006','001',2),
('KKN23006','002',2),
('KKN23006','003',1),
('KKN23006','004',4),
('KKN23006','005',1),
('KKN23006','006',2),
('KKN23006','007',1),
('KKN23006','008',1),
('KKN23006','009',0),
('KKN23006','010',1),
('KKN23006','011',1),
('KKN23007','001',2),
('KKN23007','002',2),
('KKN23007','003',1),
('KKN23007','004',4),
('KKN23007','005',1),
('KKN23007','006',2),
('KKN23007','007',1),
('KKN23007','008',1),
('KKN23007','009',0),
('KKN23007','010',1),
('KKN23007','011',1),
('KKN23008','001',2),
('KKN23008','002',2),
('KKN23008','003',1),
('KKN23008','004',4),
('KKN23008','005',1),
('KKN23008','006',2),
('KKN23008','007',1),
('KKN23008','008',1),
('KKN23008','009',0),
('KKN23008','010',1),
('KKN23008','011',1),
('KKN23009','001',3),
('KKN23009','002',1),
('KKN23009','003',1),
('KKN23009','004',4),
('KKN23009','005',1),
('KKN23009','006',2),
('KKN23009','007',1),
('KKN23009','008',1),
('KKN23009','009',0),
('KKN23009','010',1),
('KKN23009','011',1),
('KKN23010','001',3),
('KKN23010','002',1),
('KKN23010','003',1),
('KKN23010','004',4),
('KKN23010','005',1),
('KKN23010','006',2),
('KKN23010','007',1),
('KKN23010','008',1),
('KKN23010','009',0),
('KKN23010','010',1),
('KKN23010','011',1),
('KKN23011','001',3),
('KKN23011','002',1),
('KKN23011','003',1),
('KKN23011','004',4),
('KKN23011','005',1),
('KKN23011','006',2),
('KKN23011','007',1),
('KKN23011','008',1),
('KKN23011','009',0),
('KKN23011','010',1),
('KKN23011','011',1),
('KKN23012','001',3),
('KKN23012','002',1),
('KKN23012','003',1),
('KKN23012','004',4),
('KKN23012','005',1),
('KKN23012','006',2),
('KKN23012','007',1),
('KKN23012','008',1),
('KKN23012','009',0),
('KKN23012','010',1),
('KKN23012','011',1),
('KKN23013','001',3),
('KKN23013','002',1),
('KKN23013','003',1),
('KKN23013','004',4),
('KKN23013','005',1),
('KKN23013','006',2),
('KKN23013','007',1),
('KKN23013','008',1),
('KKN23013','009',0),
('KKN23013','010',1),
('KKN23013','011',1),
('KKN23014','001',3),
('KKN23014','002',2),
('KKN23014','003',1),
('KKN23014','004',4),
('KKN23014','005',0),
('KKN23014','006',2),
('KKN23014','007',2),
('KKN23014','008',1),
('KKN23014','009',0),
('KKN23014','010',0),
('KKN23014','011',1),
('KKN23015','001',3),
('KKN23015','002',2),
('KKN23015','003',1),
('KKN23015','004',4),
('KKN23015','005',0),
('KKN23015','006',2),
('KKN23015','007',2),
('KKN23015','008',1),
('KKN23015','009',0),
('KKN23015','010',0),
('KKN23015','011',1),
('KKN23016','001',3),
('KKN23016','002',2),
('KKN23016','003',1),
('KKN23016','004',4),
('KKN23016','005',0),
('KKN23016','006',2),
('KKN23016','007',2),
('KKN23016','008',1),
('KKN23016','009',0),
('KKN23016','010',0),
('KKN23016','011',1),
('KKN23017','001',3),
('KKN23017','002',2),
('KKN23017','003',1),
('KKN23017','004',4),
('KKN23017','005',0),
('KKN23017','006',2),
('KKN23017','007',2),
('KKN23017','008',1),
('KKN23017','009',0),
('KKN23017','010',0),
('KKN23017','011',1),
('KKN23018','001',3),
('KKN23018','002',2),
('KKN23018','003',1),
('KKN23018','004',4),
('KKN23018','005',0),
('KKN23018','006',2),
('KKN23018','007',2),
('KKN23018','008',1),
('KKN23018','009',0),
('KKN23018','010',0),
('KKN23018','011',1),
('KKN23019','001',3),
('KKN23019','002',2),
('KKN23019','003',1),
('KKN23019','004',4),
('KKN23019','005',0),
('KKN23019','006',2),
('KKN23019','007',2),
('KKN23019','008',1),
('KKN23019','009',0),
('KKN23019','010',0),
('KKN23019','011',1),
('KKN23020','001',3),
('KKN23020','002',2),
('KKN23020','003',1),
('KKN23020','004',3),
('KKN23020','005',1),
('KKN23020','006',2),
('KKN23020','007',2),
('KKN23020','008',0),
('KKN23020','009',0),
('KKN23020','010',1),
('KKN23020','011',1),
('KKN23021','001',3),
('KKN23021','002',2),
('KKN23021','003',1),
('KKN23021','004',3),
('KKN23021','005',1),
('KKN23021','006',3),
('KKN23021','007',1),
('KKN23021','008',0),
('KKN23021','009',1),
('KKN23021','010',0),
('KKN23021','011',1),
('KKN23022','001',3),
('KKN23022','002',2),
('KKN23022','003',1),
('KKN23022','004',3),
('KKN23022','005',1),
('KKN23022','006',3),
('KKN23022','007',1),
('KKN23022','008',0),
('KKN23022','009',1),
('KKN23022','010',0),
('KKN23022','011',1),
('KKN23023','001',3),
('KKN23023','002',2),
('KKN23023','003',1),
('KKN23023','004',3),
('KKN23023','005',1),
('KKN23023','006',3),
('KKN23023','007',1),
('KKN23023','008',0),
('KKN23023','009',1),
('KKN23023','010',0),
('KKN23023','011',1),
('KKN23024','001',3),
('KKN23024','002',2),
('KKN23024','003',1),
('KKN23024','004',3),
('KKN23024','005',1),
('KKN23024','006',3),
('KKN23024','007',1),
('KKN23024','008',0),
('KKN23024','009',1),
('KKN23024','010',0),
('KKN23024','011',1),
('KKN23025','001',3),
('KKN23025','002',2),
('KKN23025','003',1),
('KKN23025','004',3),
('KKN23025','005',1),
('KKN23025','006',3),
('KKN23025','007',1),
('KKN23025','008',0),
('KKN23025','009',1),
('KKN23025','010',0),
('KKN23025','011',1),
('KKN23026','001',3),
('KKN23026','002',2),
('KKN23026','003',1),
('KKN23026','004',3),
('KKN23026','005',1),
('KKN23026','006',3),
('KKN23026','007',1),
('KKN23026','008',0),
('KKN23026','009',1),
('KKN23026','010',0),
('KKN23026','011',1),
('KKN23027','001',3),
('KKN23027','002',2),
('KKN23027','003',1),
('KKN23027','004',3),
('KKN23027','005',1),
('KKN23027','006',3),
('KKN23027','007',1),
('KKN23027','008',0),
('KKN23027','009',1),
('KKN23027','010',0),
('KKN23027','011',1),
('KKN23028','001',3),
('KKN23028','002',2),
('KKN23028','003',1),
('KKN23028','004',3),
('KKN23028','005',1),
('KKN23028','006',3),
('KKN23028','007',2),
('KKN23028','008',0),
('KKN23028','009',1),
('KKN23028','010',0),
('KKN23028','011',1),
('KKN23029','001',3),
('KKN23029','002',2),
('KKN23029','003',1),
('KKN23029','004',3),
('KKN23029','005',0),
('KKN23029','006',3),
('KKN23029','007',2),
('KKN23029','008',1),
('KKN23029','009',0),
('KKN23029','010',1),
('KKN23029','011',1),
('KKN23030','001',3),
('KKN23030','002',2),
('KKN23030','003',1),
('KKN23030','004',3),
('KKN23030','005',0),
('KKN23030','006',3),
('KKN23030','007',2),
('KKN23030','008',1),
('KKN23030','009',0),
('KKN23030','010',1),
('KKN23030','011',0),
('KKN23031','001',3),
('KKN23031','002',2),
('KKN23031','003',1),
('KKN23031','004',3),
('KKN23031','005',0),
('KKN23031','006',3),
('KKN23031','007',2),
('KKN23031','008',1),
('KKN23031','009',0),
('KKN23031','010',1),
('KKN23031','011',0),
('KKN23032','001',3),
('KKN23032','002',2),
('KKN23032','003',1),
('KKN23032','004',3),
('KKN23032','005',0),
('KKN23032','006',3),
('KKN23032','007',2),
('KKN23032','008',1),
('KKN23032','009',0),
('KKN23032','010',1),
('KKN23032','011',0),
('KKN23033','001',3),
('KKN23033','002',2),
('KKN23033','003',1),
('KKN23033','004',3),
('KKN23033','005',0),
('KKN23033','006',3),
('KKN23033','007',2),
('KKN23033','008',1),
('KKN23033','009',0),
('KKN23033','010',1),
('KKN23033','011',0),
('KKN23034','001',3),
('KKN23034','002',2),
('KKN23034','003',1),
('KKN23034','004',3),
('KKN23034','005',0),
('KKN23034','006',3),
('KKN23034','007',2),
('KKN23034','008',1),
('KKN23034','009',0),
('KKN23034','010',1),
('KKN23034','011',0),
('KKN23035','001',3),
('KKN23035','002',2),
('KKN23035','003',1),
('KKN23035','004',3),
('KKN23035','005',0),
('KKN23035','006',3),
('KKN23035','007',2),
('KKN23035','008',1),
('KKN23035','009',0),
('KKN23035','010',1),
('KKN23035','011',0),
('KKN23036','001',3),
('KKN23036','002',2),
('KKN23036','003',1),
('KKN23036','004',3),
('KKN23036','005',0),
('KKN23036','006',3),
('KKN23036','007',2),
('KKN23036','008',1),
('KKN23036','009',0),
('KKN23036','010',1),
('KKN23036','011',0),
('KKN23037','001',3),
('KKN23037','002',2),
('KKN23037','003',1),
('KKN23037','004',3),
('KKN23037','005',0),
('KKN23037','006',3),
('KKN23037','007',1),
('KKN23037','008',1),
('KKN23037','009',1),
('KKN23037','010',0),
('KKN23037','011',1),
('KKN23038','001',3),
('KKN23038','002',2),
('KKN23038','003',1),
('KKN23038','004',3),
('KKN23038','005',0),
('KKN23038','006',3),
('KKN23038','007',1),
('KKN23038','008',1),
('KKN23038','009',1),
('KKN23038','010',0),
('KKN23038','011',1),
('KKN23039','001',3),
('KKN23039','002',2),
('KKN23039','003',1),
('KKN23039','004',3),
('KKN23039','005',0),
('KKN23039','006',3),
('KKN23039','007',1),
('KKN23039','008',1),
('KKN23039','009',1),
('KKN23039','010',0),
('KKN23039','011',1),
('KKN23040','001',3),
('KKN23040','002',2),
('KKN23040','003',1),
('KKN23040','004',3),
('KKN23040','005',0),
('KKN23040','006',3),
('KKN23040','007',1),
('KKN23040','008',1),
('KKN23040','009',1),
('KKN23040','010',0),
('KKN23040','011',1);

/*Table structure for table `tb_leader` */

DROP TABLE IF EXISTS `tb_leader`;

CREATE TABLE `tb_leader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(250) NOT NULL,
  `sambutan` varchar(5000) NOT NULL,
  `foto` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_leader` */

insert  into `tb_leader`(`id`,`nama`,`sambutan`,`foto`) values 
(1,'Dr. Drs I Made Sugata,S.Ag.,M.Ag.','<p><strong><em>Om Swastiastu</em></strong></p>\r\n\r\n<p>Rasa syukur kami haturkan kepada Ida Shang Hyang Widhi Wasa yang telah memberikan pertolongan-Nya dan tuntunan-Nya kepada kami dalam mengemban amanah dalam bentuk kepercayaan lembaga kepada kami sebagai Ketua Lembaga Penelitian dan Pengabdian Kepada Masyarakat (LPPM) Universitas Hindu Gusti Bagus Sugriwa Denpasar .</p>\r\n\r\n<p>LPPM Universitas Hindu I Gusti Bagus Sugriwa Denpasar menjalankan dua fungsi dari Tri Dharma Perguruan Tinggi yaitu penelitian dan pengabdian. Guna menjalankan fungsi tersebut secara optimal, maka manajemen penelitian dilakukan secara terencana dan terukur.</p>\r\n\r\n<p>Perencanaan dan pengukurannya dilakukan menyesuaikan dengan Direktorat Riset dan Pengabdian Kepada Masyarakat Direktorat Jenderal Penguatan Riset dan Pengembangan Kementerian Riset, Teknologi dan Pendidikan Tinggi (periode … <2019>2019) dalam pengelolaan riset atas dasar Rencana Induk Penelitian (RIP) dan Rencana Strategis Pengabdian (Renstra)”.</p>\r\n\r\n<p>RIP UNISMA adalah mengarahkan riset yang dilakukan para peneliti pada satu titik penelitian yaitu ketahanan dan keamanan pangan yang dianalisis secara holistik. Ketahanan dan keamanan pangan didasarkan atas pusat studi/keahlian; (i) agama dan pendidikan, (ii) pusat studi teknologi, sumberdaya alam dan lingkungan, (iii) pusat studi sosial, ekonomi dan humaniora, (iv) pusat studi gender. Pengelompokan ini didasarkan atas isu-isu strategis nasional/internasional yang kemudian disusun konsep dan dilanjutkan dengan pemecahan masalah yang akhirnya dengan memunculkan topik-topik penelitian yang diperlukan.</p>\r\n\r\n<p>Hasil-hasil penelitian dari para peneliti diwajibkan memunculkan output akademik berupa jurnal terakreditasi/beriputasi, buku ajar, haki, dan sebagainya.  Juga diharuskan memunculkan output program berupa purwarupa, produk, prototipe, teknologi tepat guna dan sebagainya yang dipakai sebagai dasar dalam melaksanakan pengabdian kepada masyarakat. Dengan demikian antara penelitian dan pengabdian kepada masyarakat bagaikan suatu ‘sistem’  bermuara pada satu titik ketahanan dan keamanan pangan yang tentunya semuanya untuk mendukung visi, misi dan tujuan Universitas Islam Malang.</p>\r\n\r\n<p>Demikian sambutan kami, mohon do’a restu dalam menjalankan amanah ini.</p>\r\n\r\n<p><strong><em>Om Shanti Shanti Shanti Om</em></strong></p>','sugata2.JPG');

/*Table structure for table `tb_news` */

DROP TABLE IF EXISTS `tb_news`;

CREATE TABLE `tb_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `detail` varchar(5000) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_news` */

insert  into `tb_news`(`id`,`judul`,`slug`,`detail`,`created_by`,`date`,`gambar`) values 
(3,'Pengabdian Masyarakat Rambutsiwi','pengabdian_masyarakat','<p>Pura Bali Rambut Siwi terletak di kabupaten Jembrana, sebelah timur desa Yeh Embang, distrik Mendoyo. Jaraknya sekitar 10 km dari Negara dan dapat dijangkau oleh mobil, kendaraan umum atau sepeda motor karena terletak di jalan utama Denpasar - Gilimanuk. Candi Utama terletak di tebing dan memberikan view samudra Hindia yang menakjubkan. Candi-candi ini memiliki bangunan candi perwakilan yang terletak di samping jalan utama Denpasar ke Gilimanuk. Nama Rambut Siwi mengandung peninggalan yang merupakan kunci rambut bijak (rambut) yang dihormati (siwi). Pura Rambut Siwi adalah salah satu pura Dang Kahyangan jagat yang terletak di Kabupaten Jembrana Bali. Pura Dang Kahyangan sendiri merupakan tempat suci yang diperuntukkan untuk menghormati guru-guru suci seperti pandeta, Maha Rsi dan para Empu. Dan pura Rambu Siwi berkaitan dengan perjalanan suci Dang Hyang Nirartha atau Dang Hyang Dwijendra, beliau diberi gelar juga Pedanda Sakti Bawu Rawuh yang berjasa menanamkan ajaran-ajaran agama Hindu. Lokasi pura utama berada di atas tebing pinggir pantai, berlatar belakang pemandangan alam laut Samudera Hindia, sehingga suasananya indah, tenang, damai dan penuh aura spiritual, tidak mengherankan tempat ini menjadi tempat meditasi ataupun menenangkan diri yang paling ideal. Selain sebagai tempat suci, pura Rambut Siwi juga menjadi salah satu objek wisata di Kabupaten Jembrana yang menjadi satu tujuan wajib saat mengagendakan tour dengan tujuan wisata Bali Barat. Sebelum sampai di tujuan utama anda akan disuguhi hamparan persawahan seolah menyambut kedatangan pengunjung. Pura Rambut Siwi terlihat megah dan cantik berdiri di pinggir tebing, berbatasan langsung dengan pantai, suasana alam sekitarnya indah dan asri, membuat anda betah berlama-lama mengagumi keagungan Tuhan ini. Apalagi kunjungan wisatawan ke Pura ini cukup sepi tidak seperti pura Tanah Lot yang selalu ramai, sehingga di sini anda bisa lebih leluasa untuk bersantai dan menikmati keindahan yang disuguhkan, apalagi jika anda datang pada sore hari keindahan matahari terbenam menjadi daya tarik istimewa. Jika anda warga Hindu dan melakukan perjalanan wisata rohani atau perjalanan Tirtayatra dari arah Denpasar menuju ke arah Bali Barat dan Utara seperti dengan tujuan ke pura Pulaki, Melanting, Pabean, Pemuteran dan ke Pulau Menjangan, maka tentunya juga tidak akan melewatkan Pura Rambut Siwi untuk melakukan persembahyangan. Di kawasan Pura Rambut Siwi setidaknya anda bertemu dengan 8 buah pura termasuk pura Pesanggrahan dan juga pura yang berada di bawah tebing tepi pantai, tempat pertama persembahyangan adalah pura Pesanggrahan kemudian Pura Taman, Penataran, Goa Tirta, Melanting, Pura Gading Wani, pura Ratu Gede Dalem Ped dan tempat terakhir persembahyangan adalah di kawasan pura Luhur yaitu Pura Rambut Siwi. Yang menjadi inti dari pura di kawasan ini adalah Pura Penataran dan pura Luhur (Rambut Siwi) sedangkan lainnya adalah pura Pesanakan. Pada pelataran utama pura luhur terdapat sejumlah bangunan suci, seperti Padma, meru tumpang tiga linggih Ida Betara Pedanda Sakti Bawu Rawuh (Dang Hyang Nirartha), Pengayeng Betara Gunung Agung, Gedong, meru tumpang dua stana Batari Dewa Ayu Ulun Danu, palinggih Rambut Sedana, Peselang, Taksu serta sejumlah bangunan suci lainnya.</p>\r\n','Yudi',1663314882,'WhatsApp_Image_2022-09-18_at_14_17_001.jpeg'),
(4,'Dies Natalis UHN Sugriwa II','dies_natasil','<p><strong>Dies Natalis adalah</strong> sebuah peringatan hari lahir perguruan tinggi dan dianggap sebagai peristiwa penting yang menandai awal perjalanan pendidikan dari suatu lembaga pendidikan.</p>\r\n\r\n<p>Bagi perguruan tinggi, dies natalis mempunyai makna yang penting, karena bukan hanya sebagai penanda bertambahnya usia, tetapi juga menjadi penanda tingkat kedewasaan dalam berkarya, dan merupakan suatu kesempatan untuk menguatkan komitmen akan perubahan demi kemajuan perguruan tinggi tersebut.</p>\r\n\r\n<p>Dalam perayaan dies natalis, beberapa perguruan tinggi mengadakan acara dengan tema perlombaan, penghijauan lingkungan, dan open house (kegiatan sosial kemasyarakatan).</p>\r\n\r\n<p><strong>Dies Natalis adalah</strong> sebuah peringatan hari lahir perguruan tinggi dan dianggap sebagai peristiwa penting yang menandai awal perjalanan pendidikan dari suatu lembaga pendidikan.</p>\r\n\r\n<p>Bagi perguruan tinggi, dies natalis mempunyai makna yang penting, karena bukan hanya sebagai penanda bertambahnya usia, tetapi juga menjadi penanda tingkat kedewasaan dalam berkarya, dan merupakan suatu kesempatan untuk menguatkan komitmen akan perubahan demi kemajuan perguruan tinggi tersebut.</p>\r\n\r\n<p>Dalam perayaan dies natalis, beberapa perguruan tinggi mengadakan acara dengan tema perlombaan, penghijauan lingkungan, dan open house (kegiatan sosial kemasyarakatan).</p>\r\n\r\n<p><strong>Dies Natalis adalah</strong> sebuah peringatan hari lahir perguruan tinggi dan dianggap sebagai peristiwa penting yang menandai awal perjalanan pendidikan dari suatu lembaga pendidikan.</p>\r\n\r\n<p>Bagi perguruan tinggi, dies natalis mempunyai makna yang penting, karena bukan hanya sebagai penanda bertambahnya usia, tetapi juga menjadi penanda tingkat kedewasaan dalam berkarya, dan merupakan suatu kesempatan untuk menguatkan komitmen akan perubahan demi kemajuan perguruan tinggi tersebut.</p>\r\n\r\n<p>Dalam perayaan dies natalis, beberapa perguruan tinggi mengadakan acara dengan tema perlombaan, penghijauan lingkungan, dan open house (kegiatan sosial kemasyarakatan).</p>\r\n','mery',1663315881,'WhatsApp_Image_2022-06-27_at_08_28_39.jpeg');

/*Table structure for table `tb_prodi` */

DROP TABLE IF EXISTS `tb_prodi`;

CREATE TABLE `tb_prodi` (
  `prodi_id` int(11) NOT NULL AUTO_INCREMENT,
  `prodi_kode` char(10) DEFAULT NULL,
  `prodi_nama` varchar(250) DEFAULT NULL,
  `prodi_fakultas` varchar(100) DEFAULT NULL,
  `prodi_tanggal_login` date DEFAULT NULL,
  PRIMARY KEY (`prodi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `tb_prodi` */

insert  into `tb_prodi`(`prodi_id`,`prodi_kode`,`prodi_nama`,`prodi_fakultas`,`prodi_tanggal_login`) values 
(1,'001','Pendidikan Agama Hindu',NULL,'2023-06-08'),
(2,'002','Pendidikan Bahasa Inggris',NULL,NULL),
(3,'003','Bahasa Bali',NULL,NULL),
(4,'004','PGSD',NULL,NULL),
(5,'005','PGPAUD',NULL,NULL),
(6,'006','Industri peejalanan',NULL,NULL),
(7,'007','Ilmu Komunikasi',NULL,NULL),
(8,'008','Hukum',NULL,NULL),
(9,'009','Filsafat',NULL,NULL),
(10,'010','Yokes',NULL,NULL),
(11,'011','Teologi',NULL,NULL);

/*Table structure for table `tb_team` */

DROP TABLE IF EXISTS `tb_team`;

CREATE TABLE `tb_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(250) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `jabatan` varchar(250) NOT NULL,
  `foto` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_team` */

insert  into `tb_team`(`id`,`nama`,`nip`,`jabatan`,`foto`) values 
(1,'Dr. Drs I Made Sugata,S.Ag.,M.Ag.','19651231 199403 1 017','Ketua','sugata.JPG'),
(2,'Dr. Drs. I Made Wiradnyana, M.Hum','19630713 200112 1 003','Sekretaris','49.JPG'),
(3,'Dr. Drs. I Wayan Sukabawa, S.Ag.,M.Ag','19620614 199103 1 002','Koordinator Pusat Pengabdian Masyarakat','50.JPG'),
(4,'Dra. Ni Wayan Arini, M.Ag','19671107 199503 2 001','Koordinator Pusat Kajian Wanita, Gender dan Anak','51.JPG'),
(5,'Dr. I Dewa Gede Rat Dwiyana Putra, M.Pd','19880425 201503 1 005','Koordinator Pusat Penelitian dan Penerbitan','WhatsApp_Image_2022-07-27_at_09_37_23.jpeg'),
(6,'Dra. Gusti Nyoman Mastini, M.Ag','19670808 199403 2 003','Koordinator Pusat Kajian Penaskahan Nusantara','53.JPG'),
(7,'Dr. I Made Adi Brahman, S.Ag., M.Fil.H','19790312 201101 1 005','Koordinator Pusat Destinasi Pariwisata Yoga dan Kesehatan Bali Kuno','54.JPG'),
(8,'Ni Ketut Kantriani, S.Ag, M.Ag','19690424 200003 2 001','Koordinator Pusat Destinasi Pariwisata Pencak Silat Bali Kuno','55.JPG'),
(9,'Drs. I Wayan Nerta, M.FOr','19650310 199903 1 001','Koordinator Pusat Pengelolaan Jurnal','56.JPG'),
(10,'Dr. I Made Adi Surya Pradnya, S.Ag., M.Fil.H','19860518 201101 1 006','Koordinator Pusat Dokumentasi dan Humas','57.JPG'),
(11,'Dr. I Wayan Suyanta, SE, M.Si','19800630 200801 1 011','Koordinator Pusat Pengembangan Karir dan Inkubator Bisnis','58.JPG'),
(12,'I Wayan Suwadnyana, S.Ag.,M.Fil.H','19700327 200003 1 002','Koordinator Pusat Publikasi Dan Penerbitan','159.JPG'),
(13,'Dr. I Gede Januariawan, SH., M.Ag','19710121 200501 1 002','Koordinator Pusat Pengelolaan Hak Kekayaan','1511.JPG'),
(14,'I Wayan Sorga, S.Ag','19670306 199903 1 002','ARSIPARIS  SUB KORDINATOR','37.JPG'),
(15,'Ni Luh Ersania, S.Ag.,M.Fil.H','19750322 200312 2 003','Pranata HUMAS','40.JPG'),
(16,'Ni Nyoman Ayu Swarthini, SE','19760822 201101 2 007','Pranata HUMAS','222.JPG'),
(17,'I Gede Agus Wahyudi, S.Kom.','19960607 202203 1 002','Pranata Komputer','fotolatarmerah-removebg-preview.jpg'),
(19,'I Gede Agus Yudiasa, S.Pd.H','PTT','STAF','15.JPG');

/*Table structure for table `tb_user_klmp` */

DROP TABLE IF EXISTS `tb_user_klmp`;

CREATE TABLE `tb_user_klmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_kelompok` int(3) NOT NULL,
  `desa` varchar(300) NOT NULL,
  `hp` int(12) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `date_created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_user_klmp` */

insert  into `tb_user_klmp`(`id`,`no_kelompok`,`desa`,`hp`,`password`,`username`,`date_created`) values 
(2,15,'bukit batu',2147483647,'$2y$10$s.5epqgI7zKPyh6cup.28e8cH8h8N8QgSDFG0o3CBLHr3NiryGsfC','bukit','0000-00-00'),
(3,1,'bukit jangkrik',2147483647,'$2y$10$UEUOekviIkLkLMC7YE4IeOS.ucpCLXqd.AvsbgKPBH8FceUTOFd2G','jangkrik','0000-00-00'),
(4,1,'bukit jangkrik',2147483647,'$2y$10$WR.9di2VwcOt92u/8pzH8OP7kWynjyp4ePS4MBAa34vKx7f2ntPMG','jangkrik','0000-00-00'),
(5,2,'selat',2147483647,'$2y$10$xskXiXRHNlX8E9wzDQXP8.tp.djPTY6YdPkON6TrvDlmX.vhQtJnq','selat','0000-00-00'),
(6,3,'bukit celeng',2147483647,'$2y$10$NMqvv8bPuDq1qyN4VDzJ4.Cu7tE861s28tDee5TrC8HGzCfng.TmS','celeng','0000-00-00');

/*Table structure for table `tb_visimisi` */

DROP TABLE IF EXISTS `tb_visimisi`;

CREATE TABLE `tb_visimisi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visimisi` varchar(5000) NOT NULL,
  `gambar` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_visimisi` */

insert  into `tb_visimisi`(`id`,`visimisi`,`gambar`) values 
(1,'<p>Visi 2</p>\r\n\r\n<p>Terwujudnya LPPM UHN I Gusti Bagus Sugriwa Denpasar terdepan dan unggul dalam penelitian dan pengabdian kepada masyarakat berbasis, iptek, pendidikan, agama, seni budaya dan pemberdayaan masyarakat dalam rangka peningkatan kehidupan dan kemanusiaan untuk mendukung UHN I Gusti Bagus Sugriwa menjadi Universitas kependidikan berlandaskan keilmuan dan kemandirian</p>\r\n\r\n<p> </p>\r\n\r\n<p>Misi</p>\r\n\r\n<ul>\r\n <li>1. Melakukan penelitian ilmiah berorientasi pada keilmuan dalam bidang-bidang ilmu pengetahuan, pendidikan, agama, teknologi, seni, budaya dan pariwisata</li>\r\n</ul>\r\n\r\n<ul>\r\n <li>2. Melakukan penjaminan mutu perlindungan HKI dalam bidang penelitian dalam lingkungan UHN I Gusti Bagus Sugriwa Denpasar</li>\r\n</ul>\r\n\r\n<ul>\r\n <li>3. Mendiseminakisan hasil-hasil penelitian dan pengembangan dalam bentuk publikasi produk bagi kehidupan manusia</li>\r\n</ul>\r\n\r\n<ul>\r\n <li>4. Mengkoordinasi kegiatan penelitian yang dilakukan oleh pusat penelitian dan pengabdian kepada masyarakat.</li>\r\n</ul>\r\n\r\n<ul>\r\n <li>5. Melakukan kegiatan pengabdian kepada masyarakat sesuai kebutuhan masyarakat dan pembangunan nasional berlandaskan pendidikan agama, seni budaya dan iptek</li>\r\n</ul>\r\n\r\n<ul>\r\n <li>6. Meningkatkan kualitas dan pengembangan sumber daya manusia Hindu melalui gender dan anak</li>\r\n</ul>\r\n\r\n<ul>\r\n <li>7. Menyelenggarakan tata kelola bidang penelitian dan pengabdian kepada masyarakat yang handal dan terpercaya.</li>\r\n</ul>','logouhnvismisi.png');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
