-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2024 at 02:43 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u415776667_apps`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `c_admin` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`c_admin`, `nama`, `username`, `password`) VALUES
('adm1', 'Administrator', 'admin', '148Xe/dJHGx3I'),
('adm2', 'Administrator', 'admin2', '148Xe/dJHGx3I'),
('adm3', 'Administrator', 'admin3', '148Xe/dJHGx3I');

-- --------------------------------------------------------

--
-- Table structure for table `aplikasi`
--

CREATE TABLE `aplikasi` (
  `id` int(2) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `kepsek` varchar(30) NOT NULL,
  `nipkepsek` varchar(30) NOT NULL,
  `namasek` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `aplikasi`
--

INSERT INTO `aplikasi` (`id`, `alamat`, `kepsek`, `nipkepsek`, `namasek`) VALUES
(1, 'BEKASI', '', '', 'AKHYAR INTERNATIONAL ISLAMIC SCHOOL');

-- --------------------------------------------------------

--
-- Table structure for table `backup`
--

CREATE TABLE `backup` (
  `c_backup` int(11) NOT NULL,
  `at` datetime NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `backup`
--

INSERT INTO `backup` (`c_backup`, `at`, `file`) VALUES
(3, '2018-01-11 09:34:31', 'backup_db_eraport-11-01-2018-09-34-31-.sql'),
(4, '2023-05-29 11:08:43', 'backup_db_eraport-29-05-2023-11-08-43-.sql'),
(5, '2023-08-23 11:44:40', 'backup_db_eraport-23-08-2023-11-44-40-.sql');

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

CREATE TABLE `extra` (
  `c_extra` varchar(10) NOT NULL,
  `extra` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `extra`
--

INSERT INTO `extra` (`c_extra`, `extra`) VALUES
('27b8uRW3a', 'Bola Volly'),
('4u9uxDxsi', 'Kesenian Hadroh'),
('7y1X9UuX6', 'English Club'),
('brkvsQhLy', 'Bimbingan Konseling'),
('ELvSju4yI', 'Pramuka'),
('HratPgIl4', 'Kelas Programmer'),
('KXXkni6CS', 'Sepak Bola (FC)'),
('UU2yFnGcy', 'Pengurus OSIS');

-- --------------------------------------------------------

--
-- Table structure for table `extrasiswa`
--

CREATE TABLE `extrasiswa` (
  `c_extrasiswa` int(11) NOT NULL,
  `c_ta` varchar(10) NOT NULL,
  `c_siswa` varchar(10) NOT NULL,
  `c_extra` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `c_guru` varchar(10) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `temlahir` varchar(20) DEFAULT NULL,
  `tanglahir` date NOT NULL,
  `tgl_join` date NOT NULL,
  `c_jabatan` varchar(50) DEFAULT NULL,
  `jkel` varchar(10) NOT NULL,
  `alamat` text DEFAULT NULL,
  `pendidikan` varchar(100) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`c_guru`, `nip`, `nama`, `temlahir`, `tanglahir`, `tgl_join`, `c_jabatan`, `jkel`, `alamat`, `pendidikan`, `jurusan`, `email`, `username`, `password`) VALUES
('AM22724NE', '2019023', 'NOVITA', 'Bekasi', '1995-02-11', '2019-01-03', 'Wakil Kepala Sekolah SD', 'P', 'Jl. Dewi Sartika Gg Pepaya No. 30, RT 004/ RW 005, Margahayu, Bekasi Timur', 'S1 - Sarjana Pendidikan Guru MI', '', '', 'novita', 'IKEL'),
('AOFI59146', '2019034', 'PANGESTI PUTRI UTAMI', 'Bekasi', '1992-05-05', '2020-06-12', 'Pjs. Kepala Sekolah PAUD', 'P', 'Jl. Dahlia Raya No.200, RT08/08 Perumnas I Bekasi Barat, Jawa Barat', 'S1 - Sarjana Pendidikan', '', '', 'pangesti', 'OL65'),
('CU67858WF', '2021052', 'ANDRI APRIANTO', 'Lampung', '2000-05-04', '2021-12-07', 'Guru Poros Masjid', 'L', 'Jl. Masjid Hidayatullah No.20 Jakasetia, Bekasi Selatan', 'Kuliah - STAI Bani Saleh', '', '', 'andri', 'ZEZV'),
('DN63175ZQ', '2022085', 'ULAYYA NABELA', 'Bekasi', '1997-07-07', '2023-02-07', 'Guru SD', 'L', 'Jl. Swatantra II No.20 Gang Melati RT 003/004 Kel. Jatirasa, Kec. Jatiasih, Kota Bekasi 17424', 'S1 - Univ. Gunadarma - Psikologi', '', '', 'nabela', 'UUHD'),
('EC10672PO', '2018017', 'RAHMAT SUPRIATNA', 'Garut', '1987-11-06', '2018-05-07', 'Guru Poros Masjid', 'P', 'Jl. H. Hasan 1 No. 54A RT.002 RW.021 Pekayon Jaya Bekasi Selatan', 'S2 - Pascasarjana Pendidikan Univ. Ibnu Khaldun', '', '', 'rahmat', 'IKQO'),
('EN58538CA', '2021054', 'MUHAMMAD FAISAL', 'Bekasi', '1995-03-06', '2021-05-07', 'Guru SD', 'P', 'Jl. Kaliabang tengah Rt 001/004 no 10 Bekasi Utara, Jawa Barat 17125', 'S1 - Sarjana Teknik Informatika', '', '', 'faisal', 'ACNA'),
('EOAX64544', '2023502', 'TSUWAIBAH AL ASLAMIYAH', 'Bekasi', '1996-07-09', '2025-04-03', 'Guru PAUD', 'P', 'Jl. Sersan Marzuki No.130 RT.04/03 Pekayon Jaya Bekasi Selatan', 'S1, STAI Nurul Iman Parung Bogor - Pend. Bahasa Arab', '', '', 'tsuwaibah', 'LB32'),
('EOTU53633', '2023504', 'MEIDA AGUSTIN', 'Jakarta', '2003-02-05', '2023-02-05', 'Guru PAUD', 'P', 'Jl. Ciketing Kp. Tenggilis no. 135 RT 002/010, Kec. Mustikajaya Kel. Mustikajaya Bekasi Jawa Barat', 'Kuliah, Universitas Bhayangkara - Psikologi', '', '', 'meida', 'NT93'),
('EQJS85259', '2022074', 'NAJLA ISMAH NURSYAIDAH', 'Bandung', '2000-05-04', '2024-06-05', 'Guru PAUD', 'P', 'Jl. Dep-Kes II Jatibening, Pondok Gede, Kota Bekasi, Jawa Barat', 'Kuliah - PTIQ', '', '', 'najla', 'FB27'),
('FI22150KY', '2019032', 'NADRA HUSEIN AZIZ', 'Jeddah', '1985-06-03', '2020-10-08', 'Kepala Sekolah SD', 'P', 'Jl. Lembah Pinang IV Blok I IX No. 24, Pondok Kelapa', 'S1 - STBA Medan, Bahasa Inggris', '', '', 'nadra', 'NTOH'),
('FNFA24541', '2019029', 'FITRI ANTI', 'Jakarta', '1994-12-03', '2020-05-07', 'Wakepsek PAUD - Bid. Kurikulum', 'P', 'Jl. Dahlia 2 no. 25 C, RT 001/008, Kel. Jakasampurna Kec. Bekasi Barat', 'S1 - PAI Universitas At Tahiriyah Jakarta', '', '', 'fitri', 'UY73'),
('GF30101PG', '2021050', 'MUHAMMAD FIKRI MUZZAKI', 'Kandangan', '1995-10-04', '2021-05-04', 'Wakil Kepala Unit Poros Masjid', 'L', 'Jl. Manggis Raya Blok A No.444, Duren Jaya, Bekasi Timur', 'S1 - STAI Al Qudwah, Sarjana Pendidikan', '', '', 'fikri', 'HFXD'),
('GH91424XO', '2023603', 'MUHAMMAD ZIKRA HIDAYATULLAH ', 'Jakarta ', '2003-09-02', '2023-03-07', 'Guru Poros Masjid', 'P', 'Komplek Pemda Jatiasih , Jl. Cemara 3 Blok A6 No.17 , Jatiasih , Bekasi , Jawa Barat', 'S1, STIU Darul Hikmah Bekasi , Jurusan Ilmu Al-Qur\'an dan Tafsir', '', '', 'zikra', 'YKKF'),
('GO53476GD', '2023604', 'ASTRI AISIAH ROBIAH', 'Garut', '2001-03-09', '2023-03-07', 'Guru Poros Masjid', 'L', 'Jl. R.H. Umar, Gg. H. Nimin, RT. 05/RW. 18, Kp. Ceger, Jakasetia - Bekasi Selatan', 'S1 - STAI Al-Hidayah Tasikmalaya - Pendidikan Bahasa Arab', '', '', 'astri', 'IPXL'),
('GYWD13612', '2023503', 'NURUL AINI', 'Sukabumi', '1997-01-11', '2023-02-05', 'Guru PAUD', 'P', 'Jl. Raya Narogong Gg. H. Kamal RT.06/01 Kel. Bojong, Rawalumbu, Kec. Rawalumbu ', 'S1, PAI STAI Al Masturiyah Sukabumi ', '', '', 'nurulaini', 'TV88'),
('HD36667TI', '2023601', 'ZULPIAN MUSLIM', 'Tasikmalaya', '2001-02-06', '2023-03-07', 'Guru Poros Masjid', 'L', 'Kp. Sagobog Ds. Nanggerang Kec. Cigalontang Kab. Tasikmalaya', 'S1, STAI Al-Hidayah Bogor - Pendidikan Agama Islam', '', '', 'zulpian', 'ALPX'),
('HE56999WK', '2023086', 'AHMAD BAIDOWI', 'Jakarta', '1994-05-06', '2023-03-07', 'Guru Poros Masjid', 'L', 'Gg. Bunga, RT 03/04, Kp. Sasak Tiga, Des. Tridaya Sakti, Tambun Selatan, Kab. Bekasi', 'S2, Magister Pendidikan Bahasa Arab UIN Syarif Hidayatullah Jakarta', '', '', 'baidowi', 'WXDD'),
('HP66083HI', '2023098', 'MUTHIA IZZA AZHARI', 'Bekasi', '2000-11-07', '2023-10-01', 'Guru Poros Masjid', 'P', 'Kp.Rawabebek Gg.Rambutan Rt.001 Rw.011 No.5 Kel. Kotabaru, Kec. Bekasi Barat, Kota Bekasi', 'S1, STID DI Al-Hikmah Jakarta, Komunikasi dan Penyiaran Islam', '', '', 'muthia', 'HTAA'),
('HVNI17244', '2022094', 'REGITHA SASKIA', 'Bekasi', '1998-10-07', '2022-08-09', 'Guru PAUD', 'P', 'Bumi Sani Permai Blok i.2 No.18 RT/RW 001/014. Setiamekar, Tambun Selatan, Bekasi Timur', 'S1, Universitas Muhammadiyah Prof.Dr.Hamka (UHAMKA)  - Pendidikan Bahasa Inggris ', '', '', 'regitha', 'XK84'),
('IB64888RF', '2022083', 'DIAN RAHMAWATI', 'Jakarta', '1997-02-03', '2022-04-07', 'Guru SD', 'P', 'Jl. H. Tibin Kp. Setu Rt. 015/ 002 No. 51 Bintara Jaya Bekasi Barat Kota Bekasi 17136', 'S2 - Univ. Gunadarma - Penerjemahan', '', '', 'dian', 'KURS'),
('KI27482IH', '2021061', 'MUHAMMAD FIRLI HERDIANSYAH', 'Jakarta', '2002-08-01', '2021-06-09', 'Guru Poros Masjid', 'P', 'Jl. Arwana II Blok B5 No.1 Rt 009/010 Pondok Gede Permai', 'D2 - Utsman Bin Affan - Bahasa Arab', '', '', 'firli', 'KSHC'),
('LBYI25427', '2021046', 'ASMA ALFIYYAH', 'Bekasi', '1999-02-10', '2022-03-02', 'Guru Poros Masjid', 'P', 'Vila Gading Baru Blok G2  NO 12 A', 'S1 - Universitas Negeri Jakarta, PGSD', '', '', 'asma', 'ZS25'),
('LG44977YX', '2022097', 'AZMI PAHLEVI HERMAWAN', 'Bekasi ', '1997-01-07', '2023-11-12', 'Guru Poros Masjid', 'P', 'Komp. Bintara Jaya Permai Blok C No 44 Kel. Bintara Jaya Kec. Bekasi Barat', 'S1 , International University Of Africa Sudan', '', '', 'azmi', 'MNEZ'),
('LPSC86588', '2018015', 'RIZKA GITA RESTIANI', 'Bekasi', '1995-01-09', '2019-03-05', 'Guru & Koordinator Poros Masjid', 'P', 'Jl. Belanak II No.53 Rt.02/01 Perumnas 2, Kayuringin Jaya, Bekasi Selatan', 'S1 - Sarjana Bahasa Inggris', '', '', 'rizka', 'LJ87'),
('OT38168SJ', '2022080', 'ARYANI TRI NOVITA SARI', 'Jakarta', '1997-10-11', '2024-03-06', 'Guru SD', 'P', 'Jl. Narogong Elok II Blok E.22 no. 4. Kel: Pengasinan, Kec: Rawalumbu', 'S1 - Univ. 45 Bekasi - PGSD', '', '', 'aryani', 'DWLD'),
('PO53902YC', '2023605', 'ABDUL HAFIDZ ZULFIKAR ', 'Bogor', '1999-04-04', '2023-03-07', 'Guru Poros Masjid', 'L', 'Gg. Ali Husen, Rt/Rw:001/012, No.183, Kel. Loji, Kec. Bogor Barat, Kota Bogor', 'S1, Imam Malik International Academy of Istanbul - Dakwah dan Peradaban Islam', '', '', 'hafidz', 'DXPV'),
('QOMJ17184', '2021051', 'CUT ALFIANA ANDARINI', 'Bekasi', '2000-04-07', '2022-12-05', 'Guru PAUD', 'P', 'Pondok Pekayon Indah, Jl. Ketapang Raya Blok CC3 No. 4, Pekayon Jaya, Bekasi Selatan', 'S1 - Universitas Negeri Jakarta', '', '', 'cut', 'XF24'),
('RTLJ46984', '2020037', 'SUCI SULISTYA', 'Bandung', '1995-08-06', '2020-05-03', 'Guru PAUD', 'P', 'Jl. Ratna, Gg. Hj. Dinah Rt002/001, No.67, Jatibening, Pondok Gede, Bekasi', 'S1 - FKIP Bahasa Inggris Universitas Asy-Syafi\'iyah', '', '', 'suci', 'KC57'),
('RV81764TX', '2021055', 'LUTHFIANA', 'Jakarta', '1997-07-12', '2021-05-07', 'Guru SD', 'P', 'Perumahan Duta Bumi I Blok 1A No. 11 RT 01/028, Harapan Indah, Bekasi', 'S1 - Sarjana Pendidikan, Guru SD, Universitas 45', '', '', 'luthfiana', 'LBPL'),
('SQ50864BI', '2021060', 'NABIILAH IFFATUL HANUUN', 'Jakarta', '1999-06-09', '2022-04-08', 'Guru SD', 'L', 'Jl. Pondok Kelapa Selatan No. 6C Rt 01/05 Kel. Pondok Kelapa Kec. Duren Sawit, Jakarta Timur, Jakarta 13450', 'S1 - Sarjana Science MIPA - Univ. Lampung', '', '', 'nabiilah', 'QTCV'),
('SW80233BF', '2021057', 'MAYASARI', 'Musi Rawas', '1997-05-01', '2021-05-07', 'Guru SD', 'P', 'Jl. Al Falah Cikaret Rt 003/009 Harapan Jaya Cibinong, Jawa Barat', 'S1 - Sarjana Pendidikan', '', '', 'maya', 'IVCR'),
('TK96225EH', '2023099', 'AIDAH FITRIAH', 'Jakarta', '1996-11-02', '2024-01-02', 'Guru Poros Masjid', 'P', 'Jl. R.H. Umar, Gg. H. Nimin, RT. 05/RW. 18, Kp. Ceger, Jakasetia - Bekasi Selatan', 'S1 - Institut Ilmu al-Qur\'an (IIQ) Jakarta - Pendidikan Agama Islam', '', '', 'aidah', 'FLKK'),
('TS28751QT', '2021056', 'INGE ROSAFINA IRENE', 'Cirebon', '1996-04-11', '2021-05-07', 'Guru SD', 'P', 'Jl. Pengasinan Raya No.2 RT 05/028 Kav. Binamarga Kel. Pengasinan Rawalumbu, Bekasi 17115', 'S1 - Sarjana Pendidikan Biologi UIN Sunan Gunung Djati', '', '', 'inge', 'TJYR'),
('UC66908XD', '2023602', 'HUSNI MUHAMMAD RASID', 'Tasikmalaya', '2000-06-07', '2023-03-07', 'Guru Poros Masjid', 'L', 'Kp. Balananjeur Ds. Margamulya Kec. Sukaresik Kab. Tasikmalaya', 'S1, STAI Al-Hidayah Bogor - Pendidikan Agama Islam', '', '', 'husni', 'NZPE'),
('UO33080YZ', '2022084', 'FAIRUZ NADA NOVALIANA', 'Bekasi', '1998-02-11', '2023-02-07', 'Guru Poros Masjid', 'P', 'Jl. Kerinci 2 Blok D.16 No.1 Pondok Melati Indah Jatiwarna Bekasi', 'S1 - Univ. Darussalam Gontor - Studi Agama', '', '', 'nada', 'XMCU'),
('UUNU61307', '2023115', 'ALFIRA RAHMAH SHOLIHAH', 'Bekasi', '2002-07-09', '2023-10-07', 'Guru PAUD', 'P', 'Perum. Graha Asri Jl. Cisanggiri IIA blok R No. 43 RT.002/009 Ds. Jatireja, Kec. Cikarang Timur, Kab. Bekasi', 'S1, Institut Ummul Quro Al-Islami Bogor - Pendidikan Bahasa Arab.', '', '', 'alfira', 'MT65'),
('VH60963KH', '2017006', 'NURUL AMALIA', 'Bekasi', '1985-11-09', '2019-03-04', 'Koordinator Poros Masjid', 'L', 'Jl. Patriot RT 004/021 No. 70, Jakasampurna Bekasi Barat', 'S1 - Sarjana SAINS Uhamka', '', '', 'nurul', 'XRBT'),
('VRIK59733', '2023114', 'IDA FARIDA', 'Jakarta', '1994-03-05', '2023-10-07', 'Guru PAUD', 'P', 'Bumi Berlian Sejahtera 3 blok J 14 Babelan - Bekasi', 'S1, STAI Publisistik Thawalib Jakarta - PGSD', '', '', 'ida', 'AL48'),
('VYWP77570', '2019028', 'TETI LISTIAWATI', 'Jakarta', '1988-05-09', '2019-01-07', 'Guru PAUD', 'P', 'Jl. Bintara Jaya 2 Kp. Cibening No. 85 RT 08 RW 03, Bintara Jaya, Bekasi Barat', 'S1 - Sarjana Pendidikan Islam UIN Sunan Gunung Djati', '', '', 'lesti', 'KU95'),
('WFGO66732', '2023500', 'NURUL ANNISA FIRDAUS', 'Jakarta', '2000-02-09', '2024-01-02', 'Guru PAUD', 'P', 'Perumahan Taman Alamanda blok B 9 No. 58 RT02/012, Kec. Tambun Utara, Kel. Karang Satria, Kab. Bekasi', 'S1, Universitas Islam Jakarta - Pendidikan Bahasa Arab', '', '', 'nurul', 'UX12'),
('WV74387FZ', '2018016', 'TEGUH IMAN MUTAHID UMAM', 'Garut', '1995-09-10', '2019-03-05', 'Kepala Unit Poros Masjid', 'L', 'Jl. H. Hasan No. 103 Jl. Raya Pekayon Rt 002/021, Bekasi Selatan', 'S1 - Sarjana Pendidikan Islam', '', '', 'teguh', 'CZXH'),
('XMVR74266', '2023501', 'ELPA HASNA SHOFIA', 'Garut', '2004-03-01', '2024-01-03', 'Guru PAUD', 'P', 'Kp. Pasir Jeung Jing RT 003/007, Ds. Simpangsari, Kec. Cisurupan, Kab. Garut, Jawa Barat', 'S1, Universitas Terbuka - PG PAUD', '', '', 'shofia', 'RK38'),
('YL49843XI', '2023102', 'ZALFA QURRATA A\'YUN', 'Jakarta', '1994-02-07', '2023-05-06', 'Guru SD', 'L', 'Jl. Dahlia Raya No. 200, Jakasampurna , Bekasi Barat', 'S1, IPB - Statistika', '', '', 'zalfa', 'SNCG'),
('ZB43523SB', '2022070', 'NADIA \'AAFIYAH WAHYUASIH', 'Jakarta', '1998-11-09', '2024-04-03', 'Guru SD', 'P', 'Jl. Lumbu Utara Raya Blok II/159, Perumahan Bumi Bekasi Baru, Rawa Lumbu, Bekasi 17116', 'S1 - UNJ Pendidikan Biologi', '', '', 'nadia', 'ZIWS'),
('ZU17249CG', '2020040', 'RAINI MUKHITOH', 'Kebumen', '1996-06-30', '2020-01-06', 'Guru Poros Masjid', 'L', 'Desa Roworejo RT 04 RW 01 Kec. Kebumen, Kab. Kebumen Jawa Tengah', 'MA - MA Cokroaminoto Banjarnegara', '', '', 'raini', 'DKDJ'),
('ZVBH56760', '2022088', 'FAEDIYAH', 'Indramayu', '1996-10-08', '2024-01-07', 'Guru PAUD', 'P', 'Jl. Karangampel-jatibarang No.37 tikungan RT001/001 Ds. Segeran kidul Kec. Juntinyuat Kab. Indramayu Jawa Barat', 'S1, STAI Nurul Iman Parung Bogor - Pend. Bahasa Arab', '', '', 'faediyah', 'VR45');

-- --------------------------------------------------------

--
-- Table structure for table `gurumapel`
--

CREATE TABLE `gurumapel` (
  `c_gurumapel` varchar(10) NOT NULL,
  `c_guru` varchar(10) NOT NULL,
  `c_mapel` varchar(10) NOT NULL,
  `c_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gurumapel`
--

INSERT INTO `gurumapel` (`c_gurumapel`, `c_guru`, `c_mapel`, `c_kelas`) VALUES
('6PY2iEvhX', 'VVh7sKOff', '6PYh95FR1', 'kmb1PBiD7'),
('fas6ksKEN', '40IHKMCbC', 'uS6Xa9o1s', '5ecc'),
('Go4ZyNUnO', 'VVh7sKOff', '6PYh95FR1', 'H60hZEPBi'),
('HltRkM11K', 'wkCsuwypY', 'GhSgsu0eo', '30d0'),
('hMtWA7w1u', '40IHKMCbC', 'uS6Xa9o1s', '56f14'),
('HSOSwUvD8', '40IHKMCbC', 'uS6Xa9o1s', 'kmb1PBiD7'),
('i9QIHQV4p', '40IHKMCbC', 'uS6Xa9o1s', '30d0'),
('iKCwsylWP', 'wkCsuwypY', 'JELc4Mlws', '56f14'),
('ImA6LWdkP', 'wkCsuwypY', 'JELc4Mlws', '30d0'),
('jwuwu5H3x', '40IHKMCbC', 'uS6Xa9o1s', 'H60hZEPBi'),
('mgqmBWuDm', 'VVh7sKOff', '6PYh95FR1', '5ecc'),
('oeu5jZSKR', 'VVh7sKOff', '6PYh95FR1', '56f14'),
('QIFVKF7Ob', 'wkCsuwypY', 'GhSgsu0eo', '5ecc'),
('QP3sSvNR9', 'VVh7sKOff', '6PYh95FR1', 'wkv42GPmX'),
('QQJYPVGdZ', 'wkCsuwypY', 'GhSgsu0eo', 'kmb1PBiD7'),
('R05F7RAtc', 'VVh7sKOff', '6PYh95FR1', '30d0'),
('Vo1s4nSSS', 'wkCsuwypY', 'GhSgsu0eo', '56f14'),
('y5tUYlU6O', '40IHKMCbC', 'uS6Xa9o1s', 'wkv42GPmX'),
('yXjacaByr', 'wkCsuwypY', 'GhSgsu0eo', 'wkv42GPmX'),
('ZuEWXSO61', 'wkCsuwypY', 'GhSgsu0eo', 'H60hZEPBi');

-- --------------------------------------------------------

--
-- Table structure for table `imtas`
--

CREATE TABLE `imtas` (
  `id` int(11) NOT NULL,
  `c_siswa` varchar(20) NOT NULL,
  `c_ta` varchar(10) NOT NULL,
  `stsimtas` varchar(50) NOT NULL COMMENT 'selesai jilid/imtas',
  `stsjilid` varchar(50) NOT NULL,
  `tanggal` timestamp NULL DEFAULT NULL,
  `c_guru` varchar(20) NOT NULL,
  `c_kelas` varchar(20) NOT NULL,
  `jmlx_khatam` int(11) NOT NULL,
  `thn_pertama` int(11) NOT NULL,
  `thn_terakhir` int(11) NOT NULL,
  `jmlx_imtas` int(11) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `imtas`
--

INSERT INTO `imtas` (`id`, `c_siswa`, `c_ta`, `stsimtas`, `stsjilid`, `tanggal`, `c_guru`, `c_kelas`, `jmlx_khatam`, `thn_pertama`, `thn_terakhir`, `jmlx_imtas`, `keterangan`) VALUES
(10, 'SD0175', '5EZc0Ou5d', '', '', '2023-08-31 00:00:00', 'WV74387FZ', '1SD', 0, 0, 0, 1, 'LULUS'),
(11, 'SD0069', '5EZc0Ou5d', '', '', '2023-08-31 00:00:00', 'WV74387FZ', '4SD', 0, 0, 0, 1, 'LULUS'),
(12, 'SD0027', '5EZc0Ou5d', '', '', '2023-08-31 00:00:00', 'WV74387FZ', '5SD', 0, 0, 0, 1, 'LULUS'),
(13, 'SD0041', '5EZc0Ou5d', 'JILID', 'JILID', '2023-11-27 00:00:00', 'KI27482IH', '4SD', 0, 0, 0, 1, 'Lulus'),
(14, 'SD0007', '5EZc0Ou5d', 'JILID', 'JILID', '2023-11-27 00:00:00', 'KI27482IH', '5SD', 0, 0, 0, 1, 'Lulus'),
(15, 'SD0032', '5EZc0Ou5d', 'JILID', 'JILID', '2023-11-27 00:00:00', 'KI27482IH', '5SD', 0, 0, 0, 1, 'Lulus'),
(16, 'SD0009', '5EZc0Ou5d', 'JILID', 'JILID', '2023-11-27 00:00:00', 'KI27482IH', '5SD', 0, 0, 0, 1, 'Lulus'),
(17, 'SD0051', '5EZc0Ou5d', 'JILID', 'JILID', '2023-11-27 00:00:00', 'KI27482IH', '4SD', 0, 0, 0, 1, 'Lulus'),
(18, 'SD0044', '5EZc0Ou5d', 'JILID', 'JILID', '2023-11-27 00:00:00', 'KI27482IH', '4SD', 0, 0, 0, 1, 'Lulus');

-- --------------------------------------------------------

--
-- Table structure for table `jumlahnilra`
--

CREATE TABLE `jumlahnilra` (
  `c_jumlahnilra` int(11) NOT NULL,
  `c_ta` varchar(10) NOT NULL,
  `c_kelas` varchar(10) NOT NULL,
  `c_siswa` varchar(10) NOT NULL,
  `nilaiasli` int(11) NOT NULL,
  `nilaipresen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `c_kelas` varchar(10) NOT NULL,
  `kelas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`c_kelas`, `kelas`) VALUES
('1SD', '1 SD'),
('2SD', '2 SD'),
('3SD', '3 SD'),
('4SD', '4 SD'),
('5SD', '5 SD'),
('6SD', '6 SD'),
('KB', 'KB'),
('TKA', 'TKA'),
('TKB', 'TKB');

-- --------------------------------------------------------

--
-- Table structure for table `kelas2`
--

CREATE TABLE `kelas2` (
  `c_kelas` varchar(10) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `c_kelas2` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kelas2`
--

INSERT INTO `kelas2` (`c_kelas`, `kelas`, `c_kelas2`) VALUES
('30d0', '3 SD', '3 SD'),
('56f14', '2 SD', '2 SD'),
('5ecc', '5 SD', '5 SD'),
('BiOmEVqof', '1 SD', '1 SD'),
('kmb1PBiD7', '6 SD', '6 SD'),
('Okev49QUmX', 'TKB', 'TKB'),
('Qmb1LXiD7', 'KB', 'KB'),
('wkv42GPmX', '4 SD', '4 SD'),
('Zkv42UQmX', 'TKA', 'TKA');

-- --------------------------------------------------------

--
-- Table structure for table `kumpulan_surah`
--

CREATE TABLE `kumpulan_surah` (
  `id` int(10) NOT NULL,
  `nomer_surah` int(10) DEFAULT NULL,
  `nama_surah` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kumpulan_surah`
--

INSERT INTO `kumpulan_surah` (`id`, `nomer_surah`, `nama_surah`) VALUES
(1, 1, 'Al - Fatihah'),
(2, 2, 'Al - Baqarah'),
(3, 3, 'Ali - Imran'),
(4, 4, 'An - Nisa'),
(5, 5, 'Al - Ma\'idah'),
(6, 6, 'Al - An\'am'),
(7, 7, 'Al - A\'raf'),
(8, 8, 'Al - Anfal'),
(9, 9, 'At - Taubah'),
(10, 10, 'Yunus'),
(11, 11, 'Hud'),
(12, 12, 'Yusuf'),
(13, 13, 'Ar - Ra\'d'),
(14, 14, 'Ibrahim'),
(15, 15, 'Al - Hijr'),
(16, 16, 'An - Nahl'),
(17, 17, 'Al - Isra'),
(18, 18, 'Al - Kahf'),
(19, 19, 'Maryam'),
(20, 20, 'Ta Ha'),
(21, 21, 'Al - Anbiya'),
(22, 22, 'Al - Hajj'),
(23, 23, 'Al - Mu\'minun'),
(24, 24, 'An - Nur'),
(25, 25, 'Al - Furqan'),
(26, 26, 'Asy - Syu\'ara'),
(27, 27, 'An - Naml'),
(28, 28, 'Al - Qasas'),
(29, 29, 'Al - Ankabut'),
(30, 30, 'Ar - Rum'),
(31, 31, 'Luqman'),
(32, 32, 'As - Sajadah'),
(33, 33, 'Al - Ahzab'),
(34, 34, 'Saba'),
(35, 35, 'Fatir'),
(36, 36, 'Ya Sin'),
(37, 37, 'As - Saffat'),
(38, 38, 'Sad'),
(39, 39, 'Az - Zumar'),
(40, 40, 'Ghafir'),
(41, 41, 'Fussilat'),
(42, 42, 'Asy - Syura'),
(43, 43, 'Az - Zukhruf'),
(44, 44, 'Ad - Dukhan'),
(45, 45, 'Al - Jasiyah'),
(46, 46, 'Al - Ahqaf'),
(47, 47, 'Muhammad'),
(48, 48, 'Al - Fath'),
(49, 49, 'Al - Hujurat'),
(50, 50, 'Qaf'),
(51, 51, 'Az - Zariyat'),
(52, 52, 'At - Tur'),
(53, 53, 'An - Najm'),
(54, 54, 'Al - Qamar'),
(55, 55, 'Ar - Rahman'),
(56, 56, 'Al - Waqi\'ah'),
(57, 57, 'Al - Hadid'),
(58, 58, 'Al - Mujadilah'),
(59, 59, 'Al - Hasyr'),
(60, 60, 'Al - Mumtahanah'),
(61, 61, 'As - Saff'),
(62, 62, 'Al - Jumu\'ah'),
(63, 63, 'Al - Munafiqun'),
(64, 64, 'At - Tagabun'),
(65, 65, 'At - Talaq'),
(66, 66, 'At - Tahrim'),
(67, 67, 'Al - Mulk'),
(68, 68, 'Al - Qalam'),
(69, 69, 'Al - Haqqah'),
(70, 70, 'Al - Ma\'arij'),
(71, 71, 'Nuh'),
(72, 72, 'Al - Jinn'),
(73, 73, 'Al - Muzzammil'),
(74, 74, 'Al - Muddassir'),
(75, 75, 'Al - Qiyamah'),
(76, 76, 'Al - Insan'),
(77, 77, 'Al - Mursalat'),
(78, 78, 'An - Naba\''),
(79, 79, 'An - Nazi\'at'),
(80, 80, '\'Abasa'),
(81, 81, 'At - Takwir'),
(82, 82, 'Al - Infitar'),
(83, 83, 'Al - Mutaffifin'),
(84, 84, 'Al - Insyiqaq'),
(85, 85, 'Al - Buruj'),
(86, 86, 'At - Tariq'),
(87, 87, 'Al - A\'la'),
(88, 88, 'Al - Ghasyiyah'),
(89, 89, 'Al - Fajr'),
(90, 90, 'Al - Balad'),
(91, 91, 'Asy - Syams'),
(92, 92, 'Al - Lail'),
(93, 93, 'Ad - Dhuha'),
(94, 94, 'Al - Insyirah'),
(95, 95, 'At - Tin'),
(96, 96, 'Al - \'Alaq'),
(97, 97, 'Al - Qadr'),
(98, 98, 'Al - Bayyinah'),
(99, 99, 'Az - Zalzalah'),
(100, 100, 'Al - \'Adiyat'),
(101, 101, 'Al - Qari\'ah'),
(102, 102, 'At - Takasur'),
(103, 103, 'Al - \'Asr'),
(104, 104, 'Al - Humazah'),
(105, 105, 'Al - Fil'),
(106, 106, 'Quraisy'),
(107, 107, 'Al - Ma\'un'),
(108, 108, 'Al - Kautsar'),
(109, 109, 'Al - Kafirun'),
(110, 110, 'An - Nasr'),
(111, 111, 'Al - Lahab'),
(112, 112, 'Al - Ikhlas'),
(113, 113, 'Al - Falaq'),
(114, 114, 'An - Nas');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `c_mapel` varchar(10) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `sl` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`c_mapel`, `mapel`, `sl`) VALUES
('6PYh95FR1', 'Fisika', 75),
('bVc28SQL5', 'Produktif Pemrograman', 80),
('gdQ2lyu8e', 'Pendidikan JOK', 75),
('GhSgsu0eo', 'Bahasa Indonesia', 80),
('HD0WLFuV4', 'Pendidikan Kewarganegaraan', 75),
('hdYmOHw90', 'Ilmu Pengetahuan Alam', 75),
('JELc4Mlws', 'Bahasa Inggris', 75),
('mo81eMP2V', 'Pendidikan Agama', 70),
('syPvsZsj7', 'Ilmu Pengetahuan Sosial', 75),
('tpN1z5Cp0', 'Bimbingan Konseling', 75),
('uS6Xa9o1s', 'Matematika', 70),
('yVstMrwLi', 'Kimia', 75);

-- --------------------------------------------------------

--
-- Table structure for table `m_klp`
--

CREATE TABLE `m_klp` (
  `id` int(11) NOT NULL,
  `nm_klp` varchar(50) NOT NULL,
  `c_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `m_klp`
--

INSERT INTO `m_klp` (`id`, `nm_klp`, `c_kelas`) VALUES
(1, '1', ''),
(2, '2', ''),
(3, '3 A', ''),
(4, '3 B', ''),
(5, '4 A', ''),
(6, '4 B', ''),
(7, '5 A', ''),
(8, '5 B', ''),
(9, 'KB', ''),
(10, 'TKA', ''),
(11, 'TKB', ''),
(12, '6 A', ''),
(13, '6 B', '');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `c_nilai` int(11) NOT NULL,
  `c_ta` varchar(10) NOT NULL,
  `c_tipenilai` varchar(10) NOT NULL,
  `c_siswa` varchar(10) NOT NULL,
  `c_mapel` varchar(10) NOT NULL,
  `c_kelas` varchar(10) NOT NULL,
  `nilai` int(4) NOT NULL,
  `at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penomoranmas`
--

CREATE TABLE `penomoranmas` (
  `kode` varchar(15) DEFAULT NULL,
  `nourut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `penomoranmas`
--

INSERT INTO `penomoranmas` (`kode`, `nourut`) VALUES
('SD', 193),
('PTK', 375);

-- --------------------------------------------------------

--
-- Table structure for table `pustaka`
--

CREATE TABLE `pustaka` (
  `id` int(11) NOT NULL,
  `nama_dokumen` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `user_dokumen` varchar(50) NOT NULL,
  `file_dokumen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pustaka`
--

INSERT INTO `pustaka` (`id`, `nama_dokumen`, `deskripsi`, `user_dokumen`, `file_dokumen`) VALUES
(15, 'CV  Salassa', 'data CV Salassa', 'Administrator', 'SalassaCV1122.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `rapotsiswa`
--

CREATE TABLE `rapotsiswa` (
  `c_rapotsiswa` int(11) NOT NULL,
  `c_ta` varchar(10) NOT NULL,
  `c_kelas` varchar(10) NOT NULL,
  `c_siswa` varchar(10) NOT NULL,
  `s` int(3) NOT NULL,
  `i` int(3) NOT NULL,
  `a` int(3) NOT NULL,
  `catatan` text NOT NULL,
  `kelakuan` varchar(10) NOT NULL,
  `kerajinan` varchar(10) NOT NULL,
  `kerapian` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sisjilid_d`
--

CREATE TABLE `sisjilid_d` (
  `id` bigint(20) NOT NULL,
  `idfk` bigint(4) DEFAULT NULL,
  `idjilid` bigint(4) DEFAULT NULL,
  `tglnaikjilid` timestamp NULL DEFAULT NULL,
  `nmjilid` varchar(30) DEFAULT NULL,
  `c_siswa` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sisjilid_d`
--

INSERT INTO `sisjilid_d` (`id`, `idfk`, `idjilid`, `tglnaikjilid`, `nmjilid`, `c_siswa`) VALUES
(29, 26, 26, '2023-08-23 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'SD0189'),
(30, 32, 32, '2023-08-23 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0178'),
(31, 26, 26, '2023-08-23 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'SD0176'),
(32, 25, 25, '2023-08-23 00:00:00', 'BAGIAN B. Buku Hal. 17-30', 'SD0180'),
(33, 26, 26, '2023-08-23 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'SD0184'),
(34, 0, 0, '2023-08-23 00:00:00', '', 'SD0185'),
(35, 26, 26, '2023-08-23 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'SD0187'),
(36, 23, 23, '2023-08-23 00:00:00', 'KELAS FINISHING', 'SD0175'),
(37, 18, 18, '2023-08-23 00:00:00', 'BAGIAN A. Buku Hal. 1-16', 'SD0191'),
(38, 29, 29, '2023-08-23 00:00:00', 'BAGIAN A. Buku Hal. 1-18', 'TK0317'),
(39, 27, 27, '2023-08-23 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'TK0246'),
(40, 0, 0, '2023-08-23 00:00:00', '', ''),
(41, 22, 22, '2023-08-25 00:00:00', 'KELAS TAJWID', 'SD0089'),
(42, 30, 30, '2023-08-25 00:00:00', 'BAGIAN B. Buku Hal. 19-44', 'SD0022'),
(43, 23, 23, '2023-08-25 00:00:00', 'KELAS FINISHING', 'SD0027'),
(44, 28, 28, '2023-08-25 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0114'),
(45, 21, 21, '2023-08-25 00:00:00', 'KELAS GHORIB', 'SD0084'),
(46, 35, 35, '2023-08-25 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'SD0108'),
(47, 35, 35, '2023-08-25 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'SD0106'),
(48, 23, 23, '2023-08-25 00:00:00', 'KELAS FINISHING', 'SD0007'),
(49, 30, 30, '2023-08-25 00:00:00', 'BAGIAN B. Buku Hal. 19-44', 'SD0110'),
(50, 27, 27, '2023-08-25 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'SD0132'),
(51, 28, 28, '2023-08-25 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0146'),
(52, 0, 0, '2023-08-25 00:00:00', '', 'SD0131'),
(53, 30, 30, '2023-08-25 00:00:00', 'BAGIAN B. Buku Hal. 19-44', 'SD0118'),
(54, 30, 30, '2023-08-25 00:00:00', 'BAGIAN B. Buku Hal. 19-44', 'SD0111'),
(55, 30, 30, '2023-08-25 00:00:00', 'BAGIAN B. Buku Hal. 19-44', 'SD0163'),
(56, 30, 30, '2023-08-25 00:00:00', 'BAGIAN B. Buku Hal. 19-44', 'SD0152'),
(57, 30, 30, '2023-08-25 00:00:00', 'BAGIAN B. Buku Hal. 19-44', 'SD0135'),
(58, 30, 30, '2023-08-25 00:00:00', 'BAGIAN B. Buku Hal. 19-44', 'SD0104'),
(59, 30, 30, '2023-08-25 00:00:00', 'BAGIAN B. Buku Hal. 19-44', 'SD0145'),
(60, 30, 30, '2023-08-25 00:00:00', 'BAGIAN B. Buku Hal. 19-44', 'SD0120'),
(61, 33, 33, '2023-08-25 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'SD0090'),
(62, 34, 34, '2023-08-25 00:00:00', 'BAGIAN B. Buku Hal. 23-38', 'SD0134'),
(63, 33, 33, '2023-08-25 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'SD0161'),
(64, 33, 33, '2023-08-25 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'SD0083'),
(65, 33, 33, '2023-08-25 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'SD0097'),
(66, 33, 33, '2023-08-25 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'SD0092'),
(67, 33, 33, '2023-08-25 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'SD0109'),
(68, 33, 33, '2023-08-25 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'SD0115'),
(69, 26, 26, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'TK0276'),
(70, 27, 27, '2023-08-28 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'TK0243'),
(71, 26, 26, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'TK0287'),
(72, 16, 16, '2023-08-28 00:00:00', 'BAGIAN A. Buku Hal. 1-17', 'TK0306'),
(73, 29, 29, '2023-08-28 00:00:00', 'BAGIAN A. Buku Hal. 1-18', 'TK0211'),
(74, 17, 17, '2023-08-24 00:00:00', 'BAGIAN B. Buku Hal. 18-32', 'TK0369'),
(75, 26, 26, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'TK0315'),
(76, 28, 28, '2023-08-28 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'TK0202'),
(77, 27, 27, '2023-08-28 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'TK0204'),
(78, 28, 28, '2023-08-23 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'TK0200'),
(79, 27, 27, '2023-08-28 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'TK0193'),
(80, 16, 16, '2023-08-28 00:00:00', 'BAGIAN A. Buku Hal. 1-17', 'TK0320'),
(81, 26, 26, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'TK0198'),
(82, 17, 17, '2023-08-28 00:00:00', 'BAGIAN B. Buku Hal. 18-32', 'TK0300'),
(83, 27, 27, '2023-08-28 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'TK0276'),
(84, 26, 26, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'TK0195'),
(85, 24, 24, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 33-48', 'TK0369'),
(86, 28, 28, '2023-08-28 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'TK0209'),
(87, 17, 17, '2023-08-28 00:00:00', 'BAGIAN B. Buku Hal. 18-32', 'TK0306'),
(88, 17, 17, '2023-08-28 00:00:00', 'BAGIAN B. Buku Hal. 18-32', 'TK0182'),
(89, 17, 17, '2023-08-28 00:00:00', 'BAGIAN B. Buku Hal. 18-32', 'TK0310'),
(90, 27, 27, '2023-08-28 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'TK0192'),
(91, 17, 17, '2023-08-28 00:00:00', 'BAGIAN B. Buku Hal. 18-32', 'TK0320'),
(92, 17, 17, '2023-08-28 00:00:00', 'BAGIAN B. Buku Hal. 18-32', 'TK0314'),
(93, 30, 30, '2023-08-28 00:00:00', 'BAGIAN B. Buku Hal. 19-44', 'TK0205'),
(94, 26, 26, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'TK0185'),
(95, 26, 26, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'TK0179'),
(96, 27, 27, '2023-08-28 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'TK0180'),
(97, 27, 27, '2023-08-28 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'TK0253'),
(98, 0, 0, '2023-08-28 00:00:00', '', 'TK0309'),
(99, 26, 26, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'TK0254'),
(100, 28, 28, '2023-08-28 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'TK0186'),
(101, 29, 29, '2023-08-28 00:00:00', 'BAGIAN A. Buku Hal. 1-18', 'TK0201'),
(102, 26, 26, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'TK0284'),
(103, 27, 27, '2023-08-28 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'TK0290'),
(104, 24, 24, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 33-48', 'TK0207'),
(105, 26, 26, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'TK0283'),
(106, 28, 28, '2023-08-28 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'TK0188'),
(107, 17, 17, '2023-08-28 00:00:00', 'BAGIAN B. Buku Hal. 18-32', 'TK0203'),
(108, 27, 27, '2023-08-28 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'TK0284'),
(109, 24, 24, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 33-48', 'TK0260'),
(110, 28, 28, '2023-08-28 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'TK0244'),
(111, 28, 28, '2023-08-28 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'TK0183'),
(112, 16, 16, '2023-08-28 00:00:00', 'BAGIAN A. Buku Hal. 1-17', 'TK0242'),
(113, 17, 17, '2023-08-28 00:00:00', 'BAGIAN B. Buku Hal. 18-32', 'TK0251'),
(114, 28, 28, '2023-08-28 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'TK0308'),
(115, 24, 24, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 33-48', 'TK0371'),
(116, 27, 27, '2023-08-28 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'TK0189'),
(117, 28, 28, '2023-08-28 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'TK0187'),
(118, 26, 26, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'TK0313'),
(119, 26, 26, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'TK0272'),
(120, 28, 28, '2023-08-28 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'TK0194'),
(121, 27, 27, '2023-08-28 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'TK0245'),
(122, 26, 26, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'TK0269'),
(123, 26, 26, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'TK0298'),
(124, 26, 26, '2023-08-28 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'TK0297'),
(125, 25, 25, '2023-08-29 00:00:00', 'BAGIAN B. Buku Hal. 17-30', 'SD0192'),
(126, 28, 28, '2023-08-29 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0126'),
(127, 23, 23, '2023-08-31 00:00:00', 'KELAS FINISHING', 'SD0069'),
(128, 21, 21, '2023-08-31 00:00:00', 'KELAS GHORIB', 'SD0053'),
(129, 21, 21, '2023-08-31 00:00:00', 'KELAS GHORIB', 'SD0060'),
(130, 21, 21, '2023-08-31 00:00:00', 'KELAS GHORIB', 'SD0043'),
(131, 21, 21, '2023-08-31 00:00:00', 'KELAS GHORIB', 'SD0073'),
(132, 21, 21, '2023-08-31 00:00:00', 'KELAS GHORIB', 'SD0006'),
(133, 21, 21, '2023-08-31 00:00:00', 'KELAS GHORIB', 'SD0023'),
(134, 21, 21, '2023-08-31 00:00:00', 'KELAS GHORIB', 'SD0003'),
(135, 21, 21, '2023-08-31 00:00:00', 'KELAS GHORIB', 'SD0008'),
(136, 20, 20, '2023-08-31 00:00:00', 'KELAS AL-QURAN', 'SD0021'),
(137, 20, 20, '2023-08-31 00:00:00', 'KELAS AL-QURAN', 'SD0024'),
(138, 20, 20, '2023-08-31 00:00:00', 'KELAS AL-QURAN', 'SD0016'),
(139, 20, 20, '2023-08-31 00:00:00', 'KELAS AL-QURAN', 'SD0011'),
(140, 20, 20, '2023-08-31 00:00:00', 'KELAS AL-QURAN', 'SD0025'),
(141, 20, 20, '2023-08-31 00:00:00', 'KELAS AL-QURAN', 'SD0057'),
(142, 20, 20, '2023-08-31 00:00:00', 'KELAS AL-QURAN', 'SD0072'),
(143, 33, 33, '2023-08-31 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'SD0094'),
(144, 32, 32, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0169'),
(145, 32, 32, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0156'),
(146, 32, 32, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0127'),
(147, 32, 32, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0122'),
(148, 32, 32, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0116'),
(149, 32, 32, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0129'),
(150, 31, 31, '2023-08-31 00:00:00', 'BAGIAN A. Buku Hal. 1-12', 'SD0112'),
(151, 31, 31, '2023-08-31 00:00:00', 'BAGIAN A. Buku Hal. 1-12', 'SD0119'),
(152, 32, 32, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0105'),
(153, 32, 32, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0086'),
(154, 31, 31, '2023-08-31 00:00:00', 'BAGIAN A. Buku Hal. 1-12', 'SD0093'),
(155, 30, 30, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 19-44', 'SD0103'),
(156, 31, 31, '2023-08-31 00:00:00', 'BAGIAN A. Buku Hal. 1-12', 'SD0102'),
(157, 21, 21, '2023-08-31 00:00:00', 'KELAS GHORIB', 'SD0095'),
(158, 28, 28, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0143'),
(159, 28, 28, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0113'),
(160, 28, 28, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0091'),
(161, 28, 28, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0170'),
(162, 28, 28, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0151'),
(163, 28, 28, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0172'),
(164, 28, 28, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0148'),
(165, 31, 31, '2023-08-31 00:00:00', 'BAGIAN A. Buku Hal. 1-12', 'SD0163'),
(166, 27, 27, '2023-08-31 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'SD0138'),
(167, 28, 28, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0138'),
(168, 27, 27, '2023-08-31 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'SD0168'),
(169, 27, 27, '2023-08-31 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'SD0160'),
(170, 27, 27, '2023-08-31 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'SD0154'),
(171, 26, 26, '2023-08-31 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'SD0167'),
(172, 25, 25, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 17-30', 'SD0174'),
(173, 29, 29, '2023-08-30 00:00:00', 'BAGIAN A. Buku Hal. 1-18', 'SD0130'),
(174, 29, 29, '2023-08-29 00:00:00', 'BAGIAN A. Buku Hal. 1-18', 'SD0147'),
(175, 29, 29, '2023-08-29 00:00:00', 'BAGIAN A. Buku Hal. 1-18', 'SD0142'),
(176, 28, 28, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0123'),
(177, 28, 28, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0173'),
(178, 28, 28, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0159'),
(179, 28, 28, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0140'),
(180, 28, 28, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0155'),
(181, 28, 28, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0088'),
(182, 28, 28, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0137'),
(183, 28, 28, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0141'),
(184, 28, 28, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0098'),
(185, 28, 28, '2023-08-31 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0166'),
(186, 29, 29, '2023-08-30 00:00:00', 'BAGIAN A. Buku Hal. 1-18', 'SD0153'),
(187, 14, 14, '2023-09-01 00:00:00', 'JILID JUZ 27', 'SD0062'),
(188, 35, 35, '2023-09-01 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'SD0082'),
(189, 35, 35, '2023-09-01 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'SD0018'),
(190, 35, 35, '2023-09-01 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'SD0026'),
(191, 25, 25, '2023-09-02 00:00:00', 'BAGIAN B. Buku Hal. 17-30', 'SD0177'),
(192, 25, 25, '2023-09-02 00:00:00', 'BAGIAN B. Buku Hal. 17-30', 'SD0193'),
(193, 25, 25, '2023-09-02 00:00:00', 'BAGIAN B. Buku Hal. 17-30', 'SD0179'),
(194, 25, 25, '2023-09-02 00:00:00', 'BAGIAN B. Buku Hal. 17-30', 'SD0182'),
(195, 25, 25, '2023-09-02 00:00:00', 'BAGIAN B. Buku Hal. 17-30', 'SD0188'),
(196, 25, 25, '2023-09-02 00:00:00', 'BAGIAN B. Buku Hal. 17-30', 'SD0186'),
(197, 25, 25, '2023-09-02 00:00:00', 'BAGIAN B. Buku Hal. 17-30', 'SD0183'),
(198, 25, 25, '2023-09-02 00:00:00', 'BAGIAN B. Buku Hal. 17-30', 'SD0190'),
(199, 27, 27, '2023-09-05 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'TK0198'),
(200, 23, 23, '2023-09-05 00:00:00', 'KELAS FINISHING', 'SD0051'),
(201, 23, 23, '2023-09-05 00:00:00', 'KELAS FINISHING', 'SD0041'),
(202, 23, 23, '2023-09-05 00:00:00', 'KELAS FINISHING', 'SD0044'),
(203, 23, 23, '2023-09-05 00:00:00', 'KELAS FINISHING', 'SD0032'),
(204, 23, 23, '2023-09-05 00:00:00', 'KELAS FINISHING', 'SD0009'),
(205, 27, 27, '2023-09-14 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'TK0315'),
(206, 31, 31, '2023-09-22 00:00:00', 'BAGIAN A. Buku Hal. 1-12', 'SD0163'),
(207, 28, 28, '2023-09-25 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'TK0189'),
(208, 29, 29, '2023-09-25 00:00:00', 'BAGIAN A. Buku Hal. 1-18', 'TK0188'),
(209, 27, 27, '2023-10-02 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'TK0185'),
(210, 28, 28, '2023-10-02 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'TK0178'),
(211, 33, 33, '2023-10-02 00:00:00', 'BAGIAN A. Buku Hal. 1-22', 'TK0181'),
(212, 28, 28, '2023-10-02 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'TK0316'),
(213, 30, 30, '2023-10-02 00:00:00', 'BAGIAN B. Buku Hal. 19-44', 'TK0304'),
(214, 29, 29, '2023-10-02 00:00:00', 'BAGIAN A. Buku Hal. 1-18', 'TK0241'),
(215, 14, 14, '2023-10-20 00:00:00', 'JILID JUZ 27', 'SD0149'),
(216, 14, 14, '2023-10-20 00:00:00', 'JILID JUZ 27', 'SD0087'),
(217, 22, 22, '2023-10-21 00:00:00', 'KELAS TAJWID', 'SD0043'),
(218, 22, 22, '2023-10-21 00:00:00', 'KELAS TAJWID', 'SD0006'),
(219, 22, 22, '2023-10-21 00:00:00', 'KELAS TAJWID', 'SD0003'),
(220, 22, 22, '2023-10-21 00:00:00', 'KELAS TAJWID', 'SD0008'),
(221, 23, 23, '2023-10-21 00:00:00', 'KELAS FINISHING', 'SD0003'),
(222, 23, 23, '2023-10-21 00:00:00', 'KELAS FINISHING', 'SD0008'),
(223, 23, 23, '2023-10-21 00:00:00', 'KELAS FINISHING', 'SD0006'),
(224, 23, 23, '2023-10-21 00:00:00', 'KELAS FINISHING', 'SD0043'),
(225, 29, 29, '2023-10-22 00:00:00', 'BAGIAN A. Buku Hal. 1-18', 'SD0140'),
(226, 30, 30, '2023-10-23 00:00:00', 'BAGIAN B. Buku Hal. 19-44', 'SD0136'),
(227, 30, 30, '2023-10-27 00:00:00', 'BAGIAN B. Buku Hal. 19-44', 'SD0121'),
(228, 14, 14, '2023-11-24 00:00:00', 'JILID JUZ 27', 'SD0092'),
(229, 26, 26, '2023-11-24 00:00:00', 'BAGIAN C. Buku Hal. 31-44', 'SD0191'),
(230, 29, 29, '2023-11-25 00:00:00', 'BAGIAN A. Buku Hal. 1-18', 'SD0166'),
(231, 29, 29, '2023-11-25 00:00:00', 'BAGIAN A. Buku Hal. 1-18', 'SD0151'),
(232, 29, 29, '2023-11-25 00:00:00', 'BAGIAN A. Buku Hal. 1-18', 'SD0172'),
(233, 28, 28, '2023-11-20 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0179'),
(234, 28, 28, '2023-11-07 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0168'),
(235, 28, 28, '2023-11-23 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0193'),
(236, 28, 28, '2023-11-23 00:00:00', 'BAGIAN B. Buku Hal. 23-44', 'SD0184');

-- --------------------------------------------------------

--
-- Table structure for table `sisjilid_h`
--

CREATE TABLE `sisjilid_h` (
  `id` bigint(4) NOT NULL,
  `idjilid` bigint(4) DEFAULT NULL,
  `seqjilid` int(4) DEFAULT NULL,
  `c_siswa` varchar(20) DEFAULT NULL,
  `nmsiswa` varchar(50) DEFAULT NULL,
  `tglnaikjilid` timestamp NULL DEFAULT NULL,
  `entryby` varchar(30) DEFAULT NULL,
  `entrydate` timestamp NULL DEFAULT NULL,
  `updateby` varchar(30) DEFAULT NULL,
  `updatedate` timestamp NULL DEFAULT NULL,
  `nmjilid` varchar(30) DEFAULT NULL,
  `nmbagian` varchar(100) NOT NULL,
  `catatan` text NOT NULL,
  `flag` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sisjilid_h`
--

INSERT INTO `sisjilid_h` (`id`, `idjilid`, `seqjilid`, `c_siswa`, `nmsiswa`, `tglnaikjilid`, `entryby`, `entrydate`, `updateby`, `updatedate`, `nmjilid`, `nmbagian`, `catatan`, `flag`) VALUES
(24, 28, 8, 'SD0189', 'ABDURRAHMAN IHSAN AKBAR', '2023-11-24 00:00:00', 'MUHAMMAD FIKRI MUZZAKI', '2023-08-23 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-11-24 00:00:00', 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p><p><br></p><p>Perhatikan lagi yaa harakat bacaan nya nak barakallahufik</p>', 'N'),
(25, 32, 12, 'SD0178', 'FATHAN ARSYA GUNAWAN', '2023-08-23 00:00:00', 'MUHAMMAD FIKRI MUZZAKI', '2023-08-23 00:00:00', NULL, NULL, 'JILID 4', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p>', 'N'),
(26, 27, 7, 'SD0176', 'ATQEEA SYBILL HENDRAWAN', '2023-11-28 00:00:00', 'MUHAMMAD FIKRI MUZZAKI', '2023-08-23 00:00:00', 'MUHAMMAD FIKRI MUZZAKI', '2023-11-28 00:00:00', 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p><p><br></p>', 'N'),
(27, 27, 7, 'SD0180', 'MUHAMMAD BYAN SIN ASIFY', '2023-11-24 00:00:00', 'MUHAMMAD FIKRI MUZZAKI', '2023-08-23 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-11-24 00:00:00', 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p><p><br></p><p>24/11/23 hal 8</p>', 'N'),
(28, 28, 8, 'SD0184', 'MUHAMMAD KHALID RIZQIANDRA RAMADHAN', '2023-11-23 00:00:00', 'MUHAMMAD FIKRI MUZZAKI', '2023-08-23 00:00:00', 'MUHAMMAD FIKRI MUZZAKI', '2023-11-28 00:00:00', 'JILID 2 ', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p><p><br></p><p><br></p>', 'N'),
(29, 28, 8, 'SD0185', 'FATIMAH AINAYYA KHAIDIR', '2023-11-24 00:00:00', 'MUHAMMAD FIKRI MUZZAKI', '2023-08-23 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-11-24 00:00:00', 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p><p>Masyaallah pertahannya ya ka fatimah bacaanya barakallahufikum</p><p><br></p>', 'N'),
(30, 27, 7, 'SD0187', 'KISKALMEERA SYAHFANA MUNAJAT', '2023-10-30 00:00:00', 'MUHAMMAD FIKRI MUZZAKI', '2023-08-23 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-10-30 00:00:00', 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p><p><br></p><p>24/11/23&nbsp; hal 19</p>', 'N'),
(31, 23, 20, 'SD0175', 'MUHAMMAD KALE ALTAIR', '2023-08-25 00:00:00', 'MUHAMMAD FIKRI MUZZAKI', '2023-08-23 00:00:00', 'NURUL ANNISA FIRDAUS', '2023-08-25 00:00:00', 'KELAS FINISHING', 'KELAS FINISHING', '<p><br></p><p>sudah selesai / sudah IMTAS (Murojaah)</p><p><br></p><p>Murojaah tajwid hal 16</p>', 'Y'),
(32, 26, 6, 'SD0191', 'ALDEEBARAN SHAQUILE PRATAMA BEY', '2023-11-24 00:00:00', 'MUHAMMAD FIKRI MUZZAKI', '2023-08-23 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-11-24 00:00:00', 'JILID 1 ', 'BAGIAN C. Buku Hal. 31-44', '<p><br></p><p>24/11/23 hal 34&nbsp;</p><p>Perbaiki bacaannya semua huruf dibaca pendek jangan dipanjangkan..:) barakallahufikum</p><p><br></p>', 'N'),
(33, 30, 10, 'TK0317', 'QIANA NAFIAH MUSHABIRA', '2023-08-25 00:00:00', 'FITRI ANTI', '2023-08-23 00:00:00', 'NOVITA', '2023-08-25 00:00:00', 'JILID 3', 'BAGIAN B. Buku Hal. 19-44', '<p><br></p><p>Barakallahhu fiik ...</p>', 'N'),
(34, 27, 7, 'TK0246', 'ALVARO RAFAIZAN RAHMAN', '2023-08-28 00:00:00', 'FITRI ANTI', '2023-08-23 00:00:00', 'SUCI SULISTYA', '2023-08-28 00:00:00', 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p><p><br></p><p>22Aug2023 - good job !<br></p>', 'N'),
(35, 35, 16, '', '', '2023-09-01 00:00:00', 'MUHAMMAD FIKRI MUZZAKI', '2023-08-23 00:00:00', 'RAHMAT SUPRIATNA', '2023-09-01 00:00:00', 'JILID 6', 'BAGIAN A. Buku Hal. 1-22', '<p>Halaman 4</p>', 'N'),
(36, 22, 19, 'SD0089', 'AMELIA HABIBATUL MUSTHAFA', '2023-08-25 00:00:00', 'NURUL ANNISA FIRDAUS', '2023-08-25 00:00:00', NULL, NULL, 'KELAS TAJWID', 'KELAS TAJWID', '<p>Alhamdulillah kaka amel &nbsp;lulus dalam imtas, semangat selalu jangan lupa murojaah materi-materi yang sudah di pelajari&nbsp;</p><div><br></div><p><br></p><p><br></p>', 'N'),
(37, 30, 10, 'SD0022', 'ERINA ZAHIRA', '2023-08-25 00:00:00', 'DIAN RAHMAWATI', '2023-08-25 00:00:00', NULL, NULL, 'JILID 3', 'BAGIAN B. Buku Hal. 19-44', '<p><br></p><p>MasyaAllah Tabarakallah, Alhamdulillah terdapat kemajuan pada Ananda Erina dalam Tahsin nya, tetap semangattt yaa dan perbanyak latihan nya☺️??<br></p><p><br></p><p>Good job, keep spirit.&nbsp;</p>', 'N'),
(38, 23, 20, 'SD0027', 'MUHAMMAD HAMILUL QURANI', '2023-08-31 00:00:00', 'MUHAMMAD FIRLI HERDIANSYAH', '2023-08-25 00:00:00', 'TEGUH IMAN MUTAHID UMAM', '2023-08-31 00:00:00', 'KELAS FINISHING', 'KELAS FINISHING', '<p><br></p><p>Semangat selalu kaka amil dalam murojaah&nbsp;</p><p><br></p><p><br></p>', 'Y'),
(39, 28, 8, 'SD0114', 'AIDIL HAMIZAN IBRAHIM PUSPANEGARA', '2023-08-31 00:00:00', 'ASTRI AISIAH ROBIAH', '2023-08-25 00:00:00', 'ASTRI AISIAH ROBIAH', '2023-08-31 00:00:00', 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', '<p>Alhamdulillah Ananda sudah dapat menyelesaikan Jilid Qiroati pada jilid 2B hal.37 dan dapat melanjutkan pada hal. 38-44. Adapun beberapa hal yang perlu penguatan dan latihan:&nbsp;<br></p><div>-Mad (bacaan panjang) terutama pada tanda harakat fathah panjang</div><div>-Harakat dan Tanwin</div><div>-Makharijul huruf (ذ, ط, ف)</div><div>-Huruf huruf yang sering tertukar (ط ظ, ب ي)</div><div>-Huruf ل saat bersambung bukan huruf ا.</div><div>Tempo bacaan</div>', 'N'),
(40, 22, 19, 'SD0084', 'ADELARD ZEROUN ARKAAN APSANRA', '2023-10-20 00:00:00', 'NURUL ANNISA FIRDAUS', '2023-08-25 00:00:00', 'NURUL AMALIA', '2023-10-20 00:00:00', 'KELAS TAJWID', 'KELAS TAJWID', '<p><br></p><p>Halaman 16</p><p><br></p>', 'N'),
(41, 20, 17, 'SD0108', 'BARI AHMAD MAKARIM', '2023-08-31 00:00:00', 'NURUL ANNISA FIRDAUS', '2023-08-25 00:00:00', 'NURUL AMALIA', '2023-08-31 00:00:00', 'KELAS AL-QURAN', 'KELAS AL-QURAN', '<p><br></p><p>QS. 12 halaman 253</p><p><br></p><p><br></p>', 'N'),
(42, 20, 17, 'SD0106', 'UWAIS AHZA RABBANI', '2023-08-29 00:00:00', 'NURUL ANNISA FIRDAUS', '2023-08-25 00:00:00', 'NURUL AMALIA', '2023-08-31 00:00:00', 'KELAS AL-QURAN', 'KELAS AL-QURAN', '<p><br></p><p>Q.S. 2 halaman 31</p><p><br></p><p><br></p>', 'N'),
(43, 23, 20, 'SD0007', 'KAIZAN AUF AL ARSY', '2023-08-25 00:00:00', 'MUHAMMAD FIRLI HERDIANSYAH', '2023-08-25 00:00:00', NULL, NULL, 'KELAS FINISHING', 'KELAS FINISHING', '<p>Alhamdulillah kaka kaizan lulus dalam imtas, semangat selalu jangan lupa murojaah materi-materi yang sudah di pelajari&nbsp;</p><div><br></div><p><br></p>', 'Y'),
(44, 0, 0, 'SD0110', 'ABIMANYU IJLAL RAFIF', '2023-12-05 00:00:00', 'MUTHIA IZZA AZHARI', '2023-08-25 00:00:00', 'LUTHFIANA', '2023-12-05 00:00:00', '', '', '<p><br></p><p>halaman 24</p><p>catatan : huruf sukun dan huruf bertasydid</p>', 'N'),
(45, 30, 10, 'SD0132', 'THARIQ ZIYAD ABDURRAHMAN', '2023-08-31 00:00:00', 'MUTHIA IZZA AZHARI', '2023-08-25 00:00:00', 'MUTHIA IZZA AZHARI', '2023-08-31 00:00:00', 'JILID 3', 'BAGIAN B. Buku Hal. 19-44', '<p>23 November = JILID 3B halaman 41</p><p>》Perbanyak latihan dirumah</p><p>》Fokus dan belajar disipilin saat pelajaran tahsin</p><p>》Tempo bacaan dipercepat</p><p>》Hati-hati panjang pendek bacaan</p><p>》Fokus harakat bacaan</p>', 'N'),
(46, 30, 10, 'SD0146', 'KENZO ANDINOV SAAD SUHARJO', '2023-11-25 00:00:00', 'AIDAH FITRIAH', '2023-08-25 00:00:00', 'AIDAH FITRIAH', '2023-11-25 00:00:00', 'JILID 3', 'BAGIAN B. Buku Hal. 19-44', '<p>Hal. 25<br></p><ul><li>Tertukar huruf</li><li>Tertukar harakat akhir</li><li>Fokus panjang pendek</li></ul>', 'N'),
(47, 32, 12, 'SD0131', 'SULTHAN BASKORO PRIYANANTA', '2023-11-24 00:00:00', 'MUTHIA IZZA AZHARI', '2023-08-25 00:00:00', 'MUTHIA IZZA AZHARI', '2023-11-24 00:00:00', 'JILID 4', 'BAGIAN B. Buku Hal. 23-44', '<p>23 November = JILID 4B halaman 29</p><p>》Fokus panjang pendek bacaan</p>', 'N'),
(48, 31, 11, 'SD0118', 'ATHIFA FARANISA AADYA', '2023-10-23 00:00:00', 'MUTHIA IZZA AZHARI', '2023-08-25 00:00:00', 'MUTHIA IZZA AZHARI', '2023-10-23 00:00:00', 'JILID 4', 'BAGIAN A. Buku Hal. 1-12', '<p>23 November = JILID 4A halaman 20<br></p>', 'N'),
(49, 31, 11, 'SD0111', 'ADARA HASYA AFIQAH', '2023-10-23 00:00:00', 'MUTHIA IZZA AZHARI', '2023-08-25 00:00:00', 'MUTHIA IZZA AZHARI', '2023-10-23 00:00:00', 'JILID 4', 'BAGIAN A. Buku Hal. 1-12', '<p>23 November = JILID 4A halaman 15</p><p>》Perbanyak latihan dirumah terutama halaman 15</p><p>》Perhatikan dengung ikhfa&nbsp;</p>', 'N'),
(50, 32, 12, 'SD0163', 'SOFIE ALMAHYRA SAKHI', '2023-11-24 00:00:00', 'MUTHIA IZZA AZHARI', '2023-08-25 00:00:00', 'MUTHIA IZZA AZHARI', '2023-11-24 00:00:00', 'JILID 4', 'BAGIAN B. Buku Hal. 23-44', '<p>23 November = JILID 4B halaman 31</p><p>》Fokus saat membaca Qiroati&nbsp;</p>', 'N'),
(51, 31, 11, 'SD0152', 'ABDURRAHMAN AKHYAR ALFATIH', '2023-10-23 00:00:00', 'MUTHIA IZZA AZHARI', '2023-08-25 00:00:00', 'MUTHIA IZZA AZHARI', '2023-10-23 00:00:00', 'JILID 4', 'BAGIAN A. Buku Hal. 1-12', '<p>23 November = JILID 4A halaman 13<br></p>', 'N'),
(52, 32, 12, 'SD0135', 'DEVA HAFIDZ YUKITAMA', '2023-11-01 00:00:00', 'MUTHIA IZZA AZHARI', '2023-08-25 00:00:00', 'MUTHIA IZZA AZHARI', '2023-11-01 00:00:00', 'JILID 4', 'BAGIAN B. Buku Hal. 23-44', '<p>23 November = JILID 4B halaman 35</p>', 'N'),
(53, 31, 11, 'SD0104', 'REZKY KHOIRY ABDIRRAHMAN', '2023-10-23 00:00:00', 'MUTHIA IZZA AZHARI', '2023-08-25 00:00:00', 'MUTHIA IZZA AZHARI', '2023-10-23 00:00:00', 'JILID 4', 'BAGIAN A. Buku Hal. 1-12', '<p>23 November = JILID 4A halaman 19</p><p>》Perbanyak latihan dirumah terutama halaman 15 terus dilatih</p><p>》Makhraj KHO sukun&nbsp; berbeda dengan HA KECIL sukun</p><p>》Latihan huruf bertasydid</p>', 'N'),
(54, 32, 12, 'SD0145', 'MUHAMMAD ABQARY GIBRAN ADZIM', '2023-11-24 00:00:00', 'MUTHIA IZZA AZHARI', '2023-08-25 00:00:00', 'MUTHIA IZZA AZHARI', '2023-11-24 00:00:00', 'JILID 4', 'BAGIAN B. Buku Hal. 23-44', '<p>23 November = JILID 4B halaman 33<br></p>', 'N'),
(55, 31, 11, 'SD0120', 'DANICA CALISTA PUTRI', '2023-10-23 00:00:00', 'MUTHIA IZZA AZHARI', '2023-08-25 00:00:00', 'MUTHIA IZZA AZHARI', '2023-10-23 00:00:00', 'JILID 4', 'BAGIAN A. Buku Hal. 1-12', '<p>23 November = JILID 4A halaman 15</p><p>》Perbanyak latihan dirumah terutama halaman 15</p><p>》Bacaan dengung ikhfa tanwin</p>', 'N'),
(56, 14, 15, 'SD0090', 'ANNISA SALWA NABILA LUBIS', '2023-11-24 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-08-25 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-11-24 00:00:00', 'JILID JUZ 27', 'JILID JUZ 27', '<p><br></p><p><br></p><p><br></p>', 'N'),
(57, 14, 15, 'SD0134', 'ZARIN AYU SHIDQIA', '2023-11-24 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-08-25 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-11-24 00:00:00', 'JILID JUZ 27', 'JILID JUZ 27', '<p><br></p><p><br></p><p><br></p>', 'N'),
(58, 14, 15, 'SD0161', 'ADZKIA FARANISA AYU', '2023-11-24 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-08-25 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-11-24 00:00:00', 'JILID JUZ 27', 'JILID JUZ 27', '<p><br></p><p><br></p><p><br></p>', 'N'),
(59, 14, 15, 'SD0083', 'ABRAHAM PEPITO', '2023-11-24 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-08-25 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-11-24 00:00:00', 'JILID JUZ 27', 'JILID JUZ 27', '<p><br></p><p><br></p><p><br></p>', 'N'),
(60, 14, 15, 'SD0097', 'KASTARA RIAN ANGKASA', '2023-11-24 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-08-25 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-11-24 00:00:00', 'JILID JUZ 27', 'JILID JUZ 27', '<p><br></p><p><br></p><p><br></p>', 'N'),
(61, 14, 15, 'SD0092', 'AR SAKHA DZIKRY TAHER', '2023-11-24 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-08-25 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-11-24 00:00:00', ' ', 'JILID JUZ 27', '<p><br></p><p><br></p><p><br></p>', 'N'),
(62, 14, 15, 'SD0109', 'MUHAMMAD IRSYAD FAZA', '2023-10-20 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-08-25 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-10-20 00:00:00', 'JILID JUZ 27', 'JILID JUZ 27', '<p><br></p><p><br></p><p>Baarakallah fiikum bang Irsyad semangattt terus</p>', 'N'),
(63, 35, 16, 'SD0115', 'ALIFIANDRA HARUN AL RASYID', '2023-11-24 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-08-25 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-11-24 00:00:00', 'JILID 6', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p><p><br></p><p><br></p>', 'N'),
(64, 26, 6, 'TK0276', 'MUHAMMAD ABDULLAH AMALI', '2023-08-28 00:00:00', 'PANGESTI PUTRI UTAMI', '2023-08-28 00:00:00', 'PANGESTI PUTRI UTAMI', '2023-08-28 00:00:00', 'JILID 1', 'BAGIAN C. Buku Hal. 31-44', '<p><br></p><p><br></p><p><br></p>', 'N'),
(65, 27, 7, 'TK0243', 'MUHAMMAD ARSHAD UWAIS HILABI', '2023-08-28 00:00:00', 'SUCI SULISTYA', '2023-08-28 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p>', 'N'),
(66, 26, 6, 'TK0287', 'AISYAH ALTHAFUNNISA KINAYUNG', '2023-08-28 00:00:00', 'ASMA ALFIYYAH', '2023-08-28 00:00:00', NULL, NULL, 'JILID 1', 'BAGIAN C. Buku Hal. 31-44', '<p><br></p>', 'N'),
(67, 16, 1, 'TK0306', 'ABIZAR RIFAT AMIER', '2023-08-28 00:00:00', 'MEIDA AGUSTIN', '2023-08-28 00:00:00', 'FITRI ANTI', '2023-08-28 00:00:00', 'PRA TK', 'BAGIAN A. Buku Hal. 1-17', '<p><br></p><p><br></p><p><br></p><p><br></p>', 'N'),
(68, 30, 10, 'TK0211', 'UWAIS ABQARIZAYAN KINAYUNG', '2023-10-02 00:00:00', 'REGITHA SASKIA', '2023-08-28 00:00:00', 'REGITHA SASKIA', '2023-10-02 00:00:00', 'JILID 3', 'BAGIAN B. Buku Hal. 19-44', '<p><br></p><p><br></p><p><br></p>', 'N'),
(69, 0, 0, 'TK0369', 'ALYA BINTA RAMADANIA', '2023-08-24 00:00:00', 'IDA FARIDA', '2023-08-28 00:00:00', 'IDA FARIDA', '2023-08-28 00:00:00', '', '', '<p><br></p><p><br></p><p><br></p>', 'N'),
(70, 27, 7, 'TK0315', 'MUHAMMAD ZAYD ZULKIFLI', '2023-09-14 00:00:00', 'SUCI SULISTYA', '2023-08-28 00:00:00', 'SUCI SULISTYA', '2023-09-14 00:00:00', 'JILID 2 ', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p><p><br></p>', 'N'),
(71, 28, 8, 'TK0202', 'MUHAMMAD SALMAN ALFATIH', '2023-08-28 00:00:00', 'SUCI SULISTYA', '2023-08-28 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p>', 'N'),
(72, 27, 7, 'TK0204', 'NADIEM BENYAMIN', '2023-08-28 00:00:00', 'SUCI SULISTYA', '2023-08-28 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p>', 'N'),
(73, 28, 8, 'TK0200', 'MUHAMMAD FAQIH ALMA MUQODDAM', '2023-08-23 00:00:00', 'NURUL ANNISA FIRDAUS', '2023-08-28 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p>', 'N'),
(74, 27, 7, 'TK0193', 'KAUTSAR', '2023-08-28 00:00:00', 'SUCI SULISTYA', '2023-08-28 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p>', 'N'),
(75, 17, 2, 'TK0320', 'ASIYAH KALILA SAMAH', '2023-08-28 00:00:00', 'ALFIRA RAHMAH SHOLIHAH', '2023-08-28 00:00:00', 'ALFIRA RAHMAH SHOLIHAH', '2023-08-28 00:00:00', 'PRA TK ', 'BAGIAN B. Buku Hal. 18-32', '<p><br></p><p><br></p>', 'N'),
(76, 27, 7, 'TK0198', 'MUHAMMAD AL FATIH SETIADI', '2023-09-05 00:00:00', 'SUCI SULISTYA', '2023-08-28 00:00:00', 'SUCI SULISTYA', '2023-09-05 00:00:00', 'JILID 2 ', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p><p><br></p>', 'N'),
(77, 17, 2, 'TK0300', 'AGHNIA MARYAM NOORA PRAFADI', '2023-08-28 00:00:00', 'MEIDA AGUSTIN', '2023-08-28 00:00:00', NULL, NULL, 'PRA TK', 'BAGIAN B. Buku Hal. 18-32', '<p><br></p>', 'N'),
(78, 26, 6, 'TK0195', 'KHAIREEN HAFIZA SULTANSYAH', '2023-08-28 00:00:00', 'CUT ALFIANA ANDARINI', '2023-08-28 00:00:00', NULL, NULL, 'JILID 1', 'BAGIAN C. Buku Hal. 31-44', '<p><br></p>', 'N'),
(79, 28, 8, 'TK0209', 'SUTAN AVERROES ZAHRI', '2023-08-28 00:00:00', 'NURUL ANNISA FIRDAUS', '2023-08-28 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p>', 'N'),
(80, 17, 2, 'TK0182', 'ALMEERA SYAHIRA DISTY', '2023-08-28 00:00:00', 'CUT ALFIANA ANDARINI', '2023-08-28 00:00:00', NULL, NULL, 'PRA TK', 'BAGIAN B. Buku Hal. 18-32', '<p><br></p>', 'N'),
(81, 17, 2, 'TK0310', 'SALMA ADZKIRA RAWEYAI', '2023-08-28 00:00:00', 'MEIDA AGUSTIN', '2023-08-28 00:00:00', NULL, NULL, 'PRA TK', 'BAGIAN B. Buku Hal. 18-32', '<p><br></p>', 'N'),
(82, 27, 7, 'TK0192', 'IBRAHIM ABDULLAH MALASSA', '2023-08-28 00:00:00', 'SUCI SULISTYA', '2023-08-28 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p>', 'N'),
(83, 17, 2, 'TK0314', 'RAYYA ARSYILA HAFIZA', '2023-08-28 00:00:00', 'MEIDA AGUSTIN', '2023-08-28 00:00:00', NULL, NULL, 'PRA TK', 'BAGIAN B. Buku Hal. 18-32', '<p><br></p>', 'N'),
(84, 31, 11, 'TK0205', 'NAHLA JIHAN ALFIYYAH', '2023-10-02 00:00:00', 'REGITHA SASKIA', '2023-08-28 00:00:00', 'REGITHA SASKIA', '2023-10-02 00:00:00', 'JILID 4', 'BAGIAN A. Buku Hal. 1-12', '<p><br></p><p><br></p>', 'N'),
(85, 27, 7, 'TK0185', 'ARSYILA GHAIDA AZKADINA', '2023-10-02 00:00:00', 'SUCI SULISTYA', '2023-08-28 00:00:00', 'SUCI SULISTYA', '2023-10-02 00:00:00', 'JILID 2 ', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p><p><br></p>', 'N'),
(86, 26, 6, 'TK0179', 'AISYAH GHANIYA ALMAIRA', '2023-08-28 00:00:00', 'CUT ALFIANA ANDARINI', '2023-08-28 00:00:00', NULL, NULL, 'JILID 1', 'BAGIAN C. Buku Hal. 31-44', '<p><br></p>', 'N'),
(87, 27, 7, 'TK0180', 'AISYAH KHUMAIRA PUTRI APSANRA', '2023-08-28 00:00:00', 'SUCI SULISTYA', '2023-08-28 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p>', 'N'),
(88, 27, 7, 'TK0253', 'KAMILA AMANI', '2023-08-28 00:00:00', 'NURUL ANNISA FIRDAUS', '2023-08-28 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p>', 'N'),
(89, 0, 0, 'TK0309', 'AISHA SHAQUEENA ADZANI', '2023-08-28 00:00:00', 'ASMA ALFIYYAH', '2023-08-28 00:00:00', NULL, NULL, '', '', '<p><br></p>', 'N'),
(90, 26, 6, 'TK0254', 'ARKANA HANIF SHAGUFTA', '2023-08-28 00:00:00', 'CUT ALFIANA ANDARINI', '2023-08-28 00:00:00', NULL, NULL, 'JILID 1', 'BAGIAN C. Buku Hal. 31-44', '<p><br></p>', 'N'),
(91, 28, 8, 'TK0186', 'ASHALINA MAUZA NAFEESA ASSAD', '2023-08-28 00:00:00', 'SUCI SULISTYA', '2023-08-28 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p>', 'N'),
(92, 29, 9, 'TK0201', 'MUHAMMAD LUQMAN SALIM', '2023-08-28 00:00:00', 'REGITHA SASKIA', '2023-08-28 00:00:00', NULL, NULL, 'JILID 3', 'BAGIAN A. Buku Hal. 1-18', '<p><br></p>', 'N'),
(93, 26, 6, 'TK0284', 'AZKAYRA ZAHRA MAHENDRA', '2023-08-28 00:00:00', 'TSUWAIBAH AL ASLAMIYAH', '2023-08-28 00:00:00', 'TSUWAIBAH AL ASLAMIYAH', '2023-08-28 00:00:00', 'JILID 1', 'BAGIAN C. Buku Hal. 31-44', '<p><br></p><p><br></p><p><br></p>', 'N'),
(94, 27, 7, 'TK0290', 'NAJMA HASKA KAYLA', '2023-08-28 00:00:00', 'ASMA ALFIYYAH', '2023-08-28 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p>', 'N'),
(95, 24, 3, 'TK0207', 'RAYYAN AHSANI RUSYDAN', '2023-08-28 00:00:00', 'CUT ALFIANA ANDARINI', '2023-08-28 00:00:00', NULL, NULL, 'PRA TK', 'BAGIAN C. Buku Hal. 33-48', '<p><br></p>', 'N'),
(96, 26, 6, 'TK0283', 'SHAQUEENA AURORA', '2023-08-28 00:00:00', 'ASMA ALFIYYAH', '2023-08-28 00:00:00', NULL, NULL, 'JILID 1', 'BAGIAN C. Buku Hal. 31-44', '<p><br></p>', 'N'),
(97, 29, 9, 'TK0188', 'AZKA TSAQIF ALBANI', '2023-09-25 00:00:00', 'NURUL ANNISA FIRDAUS', '2023-08-28 00:00:00', 'NURUL ANNISA FIRDAUS', '2023-09-25 00:00:00', 'JILID 3 ', 'BAGIAN A. Buku Hal. 1-18', '<p><br></p><p><br></p>', 'N'),
(98, 17, 2, 'TK0203', 'MUHAMMAD THAQI ARAFAH', '2023-08-28 00:00:00', 'CUT ALFIANA ANDARINI', '2023-08-28 00:00:00', NULL, NULL, 'PRA TK', 'BAGIAN B. Buku Hal. 18-32', '<p><br></p>', 'N'),
(99, 24, 3, 'TK0260', 'ARUNA NADYA PRAMUDHITA', '2023-08-28 00:00:00', 'ASMA ALFIYYAH', '2023-08-28 00:00:00', NULL, NULL, 'PRA TK', 'BAGIAN C. Buku Hal. 33-48', '<p><br></p>', 'N'),
(100, 29, 9, 'TK0244', 'KALILA KHANSAIRA', '2023-10-02 00:00:00', 'REGITHA SASKIA', '2023-08-28 00:00:00', 'REGITHA SASKIA', '2023-10-02 00:00:00', 'JILID 3', 'BAGIAN A. Buku Hal. 1-18', '<p><br></p><p><br></p>', 'N'),
(101, 28, 8, 'TK0183', 'AQEELA CEISYA HAFIZHAH ARIEF', '2023-08-28 00:00:00', 'NURUL ANNISA FIRDAUS', '2023-08-28 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p>', 'N'),
(102, 16, 1, 'TK0242', 'ATHOULLAH HAFIZH AFANDY', '2023-08-28 00:00:00', 'CUT ALFIANA ANDARINI', '2023-08-28 00:00:00', NULL, NULL, 'PRA TK', 'BAGIAN A. Buku Hal. 1-17', '<p><br></p>', 'N'),
(103, 17, 2, 'TK0251', 'AKHDAN ZIYAD AZHAR', '2023-08-28 00:00:00', 'CUT ALFIANA ANDARINI', '2023-08-28 00:00:00', NULL, NULL, 'PRA TK', 'BAGIAN B. Buku Hal. 18-32', '<p><br></p>', 'N'),
(104, 28, 8, 'TK0308', 'ARSYILA HANUM RAHMADINA', '2023-08-28 00:00:00', 'NURUL ANNISA FIRDAUS', '2023-08-28 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p>', 'N'),
(105, 24, 3, 'TK0371', 'MUHAMMAD SABIQ KHAIRUL', '2023-08-28 00:00:00', 'CUT ALFIANA ANDARINI', '2023-08-28 00:00:00', NULL, NULL, 'PRA TK', 'BAGIAN C. Buku Hal. 33-48', '<p><br></p>', 'N'),
(106, 28, 8, 'TK0189', 'BIMANTARA KHALIF IBRAHIM', '2023-09-25 00:00:00', 'NURUL ANNISA FIRDAUS', '2023-08-28 00:00:00', 'NURUL ANNISA FIRDAUS', '2023-09-25 00:00:00', 'JILID 2 ', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p><p><br></p>', 'N'),
(107, 28, 8, 'TK0187', 'AZKARIAN FADILLAH', '2023-08-28 00:00:00', 'NURUL ANNISA FIRDAUS', '2023-08-28 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p>', 'N'),
(108, 26, 6, 'TK0313', 'NAFEESHA ALESHA ADNAN', '2023-08-28 00:00:00', 'ASMA ALFIYYAH', '2023-08-28 00:00:00', NULL, NULL, 'JILID 1', 'BAGIAN C. Buku Hal. 31-44', '<p><br></p>', 'N'),
(109, 26, 6, 'TK0272', 'MUHAMMAD ALWI AL HAZMI', '2023-08-28 00:00:00', 'ASMA ALFIYYAH', '2023-08-28 00:00:00', NULL, NULL, 'JILID 1', 'BAGIAN C. Buku Hal. 31-44', '<p><br></p>', 'N'),
(110, 28, 8, 'TK0194', 'KEN RASKI DAMARIO', '2023-08-28 00:00:00', 'NURUL ANNISA FIRDAUS', '2023-08-28 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p>', 'N'),
(111, 27, 7, 'TK0245', 'UWAIS HAMIZAN SYAFIQ', '2023-08-28 00:00:00', 'NURUL ANNISA FIRDAUS', '2023-08-28 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p>', 'N'),
(112, 26, 6, 'TK0269', 'MUHAMMAD MAHARDIKA CENDEKIA', '2023-08-28 00:00:00', 'ASMA ALFIYYAH', '2023-08-28 00:00:00', NULL, NULL, 'JILID 1', 'BAGIAN C. Buku Hal. 31-44', '<p><br></p>', 'N'),
(113, 26, 6, 'TK0298', 'MUHAMMAD AZZAM KHAIRUDDAROYNI', '2023-08-28 00:00:00', 'ASMA ALFIYYAH', '2023-08-28 00:00:00', NULL, NULL, 'JILID 1', 'BAGIAN C. Buku Hal. 31-44', '<p><br></p>', 'N'),
(114, 26, 6, 'TK0297', 'ASKARA LANANG MAHAMERU', '2023-08-28 00:00:00', 'ASMA ALFIYYAH', '2023-08-28 00:00:00', NULL, NULL, 'JILID 1', 'BAGIAN C. Buku Hal. 31-44', '<p><br></p>', 'N'),
(115, 27, 7, 'SD0192', 'ALVARENDRA AGHAOZORA NUGROHO', '2023-12-13 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-08-29 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-12-13 00:00:00', 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p><p><br></p><p><br></p><p><br></p><p>24/11/23&nbsp; HAL 17</p>', 'N'),
(116, 28, 8, 'SD0126', 'MAYESHA KENZIE NAGIDA', '2023-08-29 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-08-29 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', '<p>Lat. Acak 38-41</p><ul><li>Suaranya diangkat ketika setoran</li><li>Tertukar panjang-pendek, harakat, dan huruf</li></ul>', 'N'),
(117, 23, 20, 'SD0069', 'KEIKO HAFIZH APRILIA', '2023-08-31 00:00:00', 'TEGUH IMAN MUTAHID UMAM', '2023-08-31 00:00:00', NULL, NULL, 'KELAS FINISHING', 'KELAS FINISHING', '<p>Semangat selalu kaka keiko dalam murojaah&nbsp;</p><p><br></p>', 'Y'),
(118, 22, 19, 'SD0053', 'AINUN MAHYA RAMADHANI', '2023-11-27 00:00:00', 'RAINI MUKHITOH', '2023-08-31 00:00:00', 'RAINI MUKHITOH', '2023-11-27 00:00:00', 'KELAS TAJWID', 'KELAS TAJWID', '<p>Materi yang sudah dihafal sampai materi Ikhfa Syafawi hal. 14</p><p><br></p><p><br></p><p><br></p>', 'N'),
(119, 22, 19, 'SD0060', 'IVANI MALAIKA NOUREEN', '2023-11-27 00:00:00', 'RAINI MUKHITOH', '2023-08-31 00:00:00', 'RAINI MUKHITOH', '2023-11-27 00:00:00', 'KELAS TAJWID', 'KELAS TAJWID', '<p>Materi yang sudah dihafal sampai materi Idgam Mutaqoribain hal. 18</p><p><br></p><p><br></p><p><br></p>', 'N'),
(120, 0, 0, 'SD0043', 'MUHAMMAD AZZAM ALI GHAITSAN', '2023-11-27 00:00:00', 'RAINI MUKHITOH', '2023-08-31 00:00:00', 'RAINI MUKHITOH', '2023-11-27 00:00:00', '', '', '<p>materi yang sudah dihafal sampai Idzhar Wajib. hal 23<br></p><p><br></p><p><br></p>', 'N'),
(121, 22, 19, 'SD0073', 'MUHAMMAD SHABAZ AURIGA', '2023-11-27 00:00:00', 'RAINI MUKHITOH', '2023-08-31 00:00:00', 'RAINI MUKHITOH', '2023-11-27 00:00:00', 'KELAS TAJWID', 'KELAS TAJWID', '<p>selesai menghafdal sampai materi mad&nbsp;</p><p><br></p><p><br></p>', 'N'),
(122, 22, 19, 'SD0006', 'NISWA FADILLAH', '2023-11-27 00:00:00', 'RAINI MUKHITOH', '2023-08-31 00:00:00', 'RAINI MUKHITOH', '2023-11-27 00:00:00', 'KELAS TAJWID', 'KELAS TAJWID', '<p>materi yang sudah dihafal sampai materi Idgham Mutajanisain hal. 16&nbsp;</p><p><br></p><p><br></p><p><br></p>', 'N'),
(123, 22, 19, 'SD0023', 'TAMARANI SAJIDAH FIRSTIANNISA', '2023-11-27 00:00:00', 'RAINI MUKHITOH', '2023-08-31 00:00:00', 'RAINI MUKHITOH', '2023-11-27 00:00:00', 'KELAS TAJWID', 'KELAS TAJWID', '<p>Materi yang sudah dihafal sampai materi Idzhar Wajib hal. 23</p><p><br></p><p><br></p>', 'N'),
(124, 22, 19, 'SD0003', 'AUDIE MUMTAZA WIJAYAKUSUMAH', '2023-11-27 00:00:00', 'RAINI MUKHITOH', '2023-08-31 00:00:00', 'RAINI MUKHITOH', '2023-11-27 00:00:00', 'KELAS TAJWID', 'KELAS TAJWID', '<p>Materi yang sudah dihafal samapi materi Idzhar Syafawi hal. 14</p><p><br></p><p><br></p><p><br></p><p><br></p>', 'N'),
(125, 22, 19, 'SD0008', 'ANISA AWILIA ZAHRA', '2023-11-27 00:00:00', 'RAINI MUKHITOH', '2023-08-31 00:00:00', 'RAINI MUKHITOH', '2023-11-27 00:00:00', 'KELAS TAJWID', 'KELAS TAJWID', '<p>Materi yang sudah dihafal sampai materi Idzhar Wajib hal. 23</p><p><br></p><p><br></p>', 'N'),
(126, 20, 17, 'SD0021', 'ARGI MUHAMMAD AZKA DHIYA', '2023-08-31 00:00:00', 'RAINI MUKHITOH', '2023-08-31 00:00:00', NULL, NULL, 'KELAS AL-QURAN', 'KELAS AL-QURAN', '<p><br></p>', 'N'),
(127, 20, 17, 'SD0024', 'THORIQUL ABRAR KARIM', '2023-08-31 00:00:00', 'RAINI MUKHITOH', '2023-08-31 00:00:00', NULL, NULL, 'KELAS AL-QURAN', 'KELAS AL-QURAN', '<p><br></p>', 'N'),
(128, 20, 17, 'SD0016', 'AL GHAZI NAUFAL WIJAYA', '2023-08-31 00:00:00', 'RAINI MUKHITOH', '2023-08-31 00:00:00', NULL, NULL, 'KELAS AL-QURAN', 'KELAS AL-QURAN', '<p><br></p>', 'N'),
(129, 20, 17, 'SD0011', 'MUHAMMAD SHAQUEEL PRAKARSA', '2023-08-31 00:00:00', 'RAINI MUKHITOH', '2023-08-31 00:00:00', NULL, NULL, 'KELAS AL-QURAN', 'KELAS AL-QURAN', '<p><br></p>', 'N'),
(130, 20, 17, 'SD0025', 'ALYAA RAMADHANI PUTRI', '2023-08-31 00:00:00', 'RAINI MUKHITOH', '2023-08-31 00:00:00', NULL, NULL, 'KELAS AL-QURAN', 'KELAS AL-QURAN', '<p><br></p>', 'N'),
(131, 20, 17, 'SD0057', 'SHAFA NUR SABRINA', '2023-08-31 00:00:00', 'RAINI MUKHITOH', '2023-08-31 00:00:00', NULL, NULL, 'KELAS AL-QURAN', 'KELAS AL-QURAN', '<p><br></p>', 'N'),
(132, 20, 17, 'SD0072', 'HANIM FARRAS DAMITSA', '2023-08-31 00:00:00', 'RAINI MUKHITOH', '2023-08-31 00:00:00', NULL, NULL, 'KELAS AL-QURAN', 'KELAS AL-QURAN', '<p><br></p>', 'N'),
(133, 34, 14, 'SD0094', 'GHAZIYAH MUMTAZAH ZAHRI', '2023-11-24 00:00:00', 'LUTHFIANA', '2023-08-31 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-11-24 00:00:00', 'JILID 5', 'BAGIAN B. Buku Hal. 23-38', '<p><br></p><p><br></p><p>Baarakallah fiikum kak ghaziya semangat terus</p>', 'N'),
(134, 32, 12, 'SD0169', 'HAWWA ANINDYA BARRAH', '2023-12-05 00:00:00', 'LUTHFIANA', '2023-08-31 00:00:00', 'LUTHFIANA', '2023-12-05 00:00:00', 'JILID 4', 'BAGIAN B. Buku Hal. 23-44', '<p>4B halaman 40</p><p><br></p><p><br></p>', 'N'),
(135, 33, 13, 'SD0156', 'SHANUM QUEENSHA ARIFIN', '2023-12-05 00:00:00', 'LUTHFIANA', '2023-08-31 00:00:00', 'LUTHFIANA', '2023-12-05 00:00:00', 'JILID 5', 'BAGIAN A. Buku Hal. 1-22', '<p>jilid 5A halaman 3.<br></p><p>Catatan : panjang pendek, tanda baca, penguatan huruf sukun</p>', 'N'),
(136, 33, 13, 'SD0127', 'MUHAMMAD ELVARO RAFARDHAN', '2023-12-05 00:00:00', 'LUTHFIANA', '2023-08-31 00:00:00', 'LUTHFIANA', '2023-12-05 00:00:00', 'JILID 5', 'BAGIAN A. Buku Hal. 1-22', '<p>baru uji tashih 5A<br></p>', 'N'),
(137, 0, 0, 'SD0122', 'FAUZAN AL FATIH', '2023-12-05 00:00:00', 'LUTHFIANA', '2023-08-31 00:00:00', 'LUTHFIANA', '2023-12-05 00:00:00', '', '', '<p>halaman 13</p><p>hati-hati huruf bertasydid dan tanda baca</p>', 'N'),
(138, 32, 12, 'SD0116', 'ANNISA FARHANA SYAKIRA', '2023-08-31 00:00:00', 'LUTHFIANA', '2023-08-31 00:00:00', NULL, NULL, 'JILID 4', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p>', 'N'),
(139, 33, 13, 'SD0129', 'MUHAMMAD KELLEN AZIZAN KAREEM', '2023-12-05 00:00:00', 'LUTHFIANA', '2023-08-31 00:00:00', 'LUTHFIANA', '2023-12-05 00:00:00', 'JILID 5', 'BAGIAN A. Buku Hal. 1-22', '<p>baru lulus jilid 4B dan melanjutkan ke jilid 5A halaman 1.&nbsp;</p><p>catatan : penguatan pada huruf bertasydid</p>', 'N'),
(140, 31, 11, 'SD0112', 'ADNI AISHA NABIH', '2023-08-31 00:00:00', 'LUTHFIANA', '2023-08-31 00:00:00', NULL, NULL, 'JILID 4', 'BAGIAN A. Buku Hal. 1-12', '<p><br></p>', 'N'),
(141, 32, 12, 'SD0119', 'AZKA ADHYASTHA BOEMI', '2023-12-05 00:00:00', 'LUTHFIANA', '2023-08-31 00:00:00', 'LUTHFIANA', '2023-12-05 00:00:00', 'JILID 4', 'BAGIAN B. Buku Hal. 23-44', '<p>4B halaman 25</p><p>catatan : penguatan pada huruf sukun</p>', 'N'),
(142, 32, 12, 'SD0105', 'SHAKILA ZIYA NAZURA', '2023-08-31 00:00:00', 'LUTHFIANA', '2023-08-31 00:00:00', NULL, NULL, 'JILID 4', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p>', 'N'),
(143, 32, 12, 'SD0086', 'ALBY NAFIAN RABBANI', '2023-08-31 00:00:00', 'LUTHFIANA', '2023-08-31 00:00:00', NULL, NULL, 'JILID 4', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p>', 'N'),
(144, 31, 11, 'SD0093', 'ATHALLAH MUSYAFFA ZAIN', '2023-08-31 00:00:00', 'LUTHFIANA', '2023-08-31 00:00:00', NULL, NULL, 'JILID 4', 'BAGIAN A. Buku Hal. 1-12', '<p><br></p>', 'N'),
(145, 30, 10, 'SD0103', 'MUHAMMAD ZAFRAN JOBAN', '2023-08-31 00:00:00', 'LUTHFIANA', '2023-08-31 00:00:00', NULL, NULL, 'JILID 3', 'BAGIAN B. Buku Hal. 19-44', '<p><br></p>', 'N'),
(146, 32, 12, 'SD0102', 'MUHAMMAD IBRAHIM RAHADIAN', '2023-11-01 00:00:00', 'LUTHFIANA', '2023-08-31 00:00:00', 'MUTHIA IZZA AZHARI', '2023-11-01 00:00:00', 'JILID 4', 'BAGIAN B. Buku Hal. 23-44', '<p>23 November = JILID 4B halaman 44</p><p>》Perbanyak latihan acak dirumah untuk persiapan uji tashih&nbsp;</p><p>》Atur pernapasan saat membaca, tidak Tanaffus</p><p>》Hati-hati panjang pendek bacaan&nbsp;</p>', 'N'),
(147, 22, 19, 'SD0095', 'HANIFA ANINDYA PRAMESTI', '2023-10-20 00:00:00', 'NURUL AMALIA', '2023-08-31 00:00:00', 'NURUL AMALIA', '2023-10-20 00:00:00', 'KELAS TAJWID', 'KELAS TAJWID', '<p><br></p><p><br></p><p>halaman 16</p><p><br></p>', 'N'),
(148, 28, 8, 'SD0143', 'QONITA FAUZAN', '2023-08-31 00:00:00', 'ASTRI AISIAH ROBIAH', '2023-08-31 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p><p><br></p><p>Alhamdulillah Ananda sudah dapat menyelesaikan Qiroati jilid 2B hal.41 dan dapat melanjutkan pada hal.42-44. Adapun beberapa hal yang perlu penguatan dan latihan:&nbsp;</p><p>-Mad (bacaan panjang)</p><p>-Hati-hati keliru pada harakat dan tanwin</p><p>-Hati-hati keliru pada beberapa huruf yang mirip (ج ح خ, ص ض ط ظ, ع ح)</p>', 'N'),
(149, 28, 8, 'SD0113', 'ADZKIYA QALESYA ZAHSY', '2023-08-31 00:00:00', 'ASTRI AISIAH ROBIAH', '2023-08-31 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', 'Alhamdulillah Ananda sudah dapat menyelesaikan Jilid Qiroati pada jilid 2B hal.23-44. Adapun beberapa hal yang perlu penguatan dan latihan:&nbsp;<div>-Mad (Bacaan panjang)</div><div>-Hati-hati keliru pada harakat dan tanwin (Dhommah dan Dhommatain)</div><div>-Beberapa huruf yang harus diingat لا, ىه, ني</div><div>-Tempo bacaan dipercepat (hadr)</div>', 'N'),
(150, 28, 8, 'SD0091', 'AQILA SYUA ARYANTY ', '2023-08-31 00:00:00', 'ASTRI AISIAH ROBIAH', '2023-08-31 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', 'Alhamdulillah Ananda sudah dapat menyelesaikan Qiroati jilid 2B hal.39 dan dapat melanjutkan pada hal.40-44. Adapun beberapa hal yang perlu penguatan dan latihan:&nbsp;<div>-Mad (bacaan panjang)</div><div>-Hati-hati tertukar pada harakat dan tanwin&nbsp;&nbsp;</div><div>-Makharijul huruf (ظ  ≠ ض, خ  ≠ غ)</div><div>-Beberapa huruf yang sering tertukar (ص ض ط ظ, خ غ, ح ع, ج خ, ت ي)</div><div>-Tempo bacaan dipercepat (Hadr)</div>', 'N'),
(151, 28, 8, 'SD0170', 'MUHAMMAD MALIQ AS SUDAIS', '2023-08-31 00:00:00', 'ASTRI AISIAH ROBIAH', '2023-08-31 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', 'Alhamdulillah Ananda sudah dapat menyelesaikan Jilid Qiroati pada jilid 2B hal.36 dan dapat melanjutkan pada hal.37-44. Adapun beberapa hal yang perlu penguatan dan latihan:&nbsp;<div>-Mad (bacaan panjang), terutama pada tanda harakat fathah panjang</div><div>-Hati-hati terputus-putus saat membaca (Tanaffus)</div><div>-Makharijul huruf (ذ, ظ, ح)</div><div>-Hati-hati huruf ل yang bersambung bukan huruf ا</div><div>-Huruf yang sering tertukar (ت ي)</div><div>-Hati-hati sering kali keliru pada harakat</div>', 'N'),
(152, 28, 8, 'SD0151', 'AUDREY LASHIRA PRADITYATAMA', '2023-08-31 00:00:00', 'ASTRI AISIAH ROBIAH', '2023-08-31 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', 'Alhamdulillah Ananda sudah dapat menyelesaikan Jilid Qiroati pada jilid 2 dan dapat melanjutkan pada jilid 3. Adapun beberapa hal yang perlu penguatan dan latihan:&nbsp;<div>-Mad (bacaan panjang)</div><div>-Makharijul huruf (ث, ء ≠ ع)</div><div>-Keliru pada beberapa huruf yang mirip (ر, ز, خ, ج)</div>', 'N'),
(153, 29, 9, 'SD0172', 'GHADIYA AVA MARIAM', '2023-11-25 00:00:00', 'ASTRI AISIAH ROBIAH', '2023-08-31 00:00:00', 'ASTRI AISIAH ROBIAH', '2023-11-25 00:00:00', 'JILID 3', 'BAGIAN A. Buku Hal. 1-18', 'Alhamdulillah Ananda sudah dapat menyelesaikan Qiroati jilid 2B dan 3A pada hal.1-9 dan dapat melanjutkan pada jilid 3 hal.10-18. Adapun beberapa hal yang perlu penguatan dan latihan:&nbsp;<div>-Makharijul huruf (ء ≠ ع)</div><div>-Hati-hati keliru pada huruf yang mirip-mirip (خ ≠ غ, ع ≠ ح)</div><div>-Pelafalan pada huruf ل kurang mengalir</div>', 'N'),
(154, 28, 8, 'SD0148', 'ZILLJIZAN SEFERAGIC ZIDNI ILMA', '2023-08-31 00:00:00', 'ASTRI AISIAH ROBIAH', '2023-08-31 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', 'Alhamdulillah Ananda sudah dapat menyelesaikan Jilid Qiroati pada jilid 2B hal.39 dan dapat melanjutkan pada hal.40-44. Adapun beberapa hal yang perlu penguatan dan latihan:&nbsp;<div>-Mad (bacaan panjang)</div><div>-Makharijul huruf (ذ, ع)</div><div>-Keliru pada beberapa huruf yang mirip (ت ≠ ي, ط ≠ ظ)</div><div>- Keliru pada harakat dan tanwin (Dhommah dan dhommatain)</div>', 'N'),
(155, 0, 0, 'SD0138', 'MUHAMMAD AL FATIH PUTRA KAUTSAR', '2023-08-31 00:00:00', 'ASTRI AISIAH ROBIAH', '2023-08-31 00:00:00', 'ASTRI AISIAH ROBIAH', '2023-08-31 00:00:00', '', '', 'Alhamdulillah Ananda sudah dapat menyelesaikan Qiroati jilid 2A dan 2B hal.33 dan dapat melanjutkan pada hal.34-44. Adapun beberapa hal yang perlu penguatan dan latihan:&nbsp;<div>-Mad (bacaan panjang) terutama pada tanda harakat fathah panjang</div><div>-Hati-hati tertukar pada harakat dan tanwin</div><div>-Makharijul huruf (ث خ ش غ ع ح ه)</div><div>-Huruf yang sering tertukar (ج غ ع م ص س)</div><div>-Beberapa huruf yang harus diingat (ىه ة)</div>', 'N'),
(156, 28, 8, 'SD0168', 'MUHAMMAD NABIL RAZAN PUSPANEGARA', '2023-11-07 00:00:00', 'ASTRI AISIAH ROBIAH', '2023-08-31 00:00:00', 'MUHAMMAD FIKRI MUZZAKI', '2023-11-28 00:00:00', 'JILID 2 ', 'BAGIAN B. Buku Hal. 23-44', '<p>Hati-hati dengan bacaan panjang dan harakat, Semangat berlatih dirumah:)<br></p>', 'N'),
(157, 28, 8, 'SD0160', 'KENZO AKBAR NATAWIDJAJA', '2023-11-28 00:00:00', 'ASTRI AISIAH ROBIAH', '2023-08-31 00:00:00', 'MUHAMMAD FIKRI MUZZAKI', '2023-11-28 00:00:00', 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p><p>Perbaiki bacaan tanwinnya.. Semangat berlatih dirumah:)</p>', 'N'),
(158, 27, 7, 'SD0154', 'SHOFIYAH JENNAIRA MUWAFFAQAH', '2023-08-31 00:00:00', 'ASTRI AISIAH ROBIAH', '2023-08-31 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p>Perbaiki tempo bacaan.. Semangat berlatih dirumah:)</p>', 'N'),
(159, 27, 7, 'SD0167', 'MUHAMMAD ANDISTRA ZAYN AS SUDAIS', '2023-12-13 00:00:00', 'ASTRI AISIAH ROBIAH', '2023-08-31 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-12-13 00:00:00', 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p><p>24/11/23 hal 16</p><p>Perbaiki dan diingat yaa dari beberapa huruf hijaiyah yang masih keliru, khususnya di huruf hijaiyah yang bersambung (ن, ت, ق, ذ) .. Semangat berlatih dirumah kakak:)<br></p>', 'N'),
(160, 26, 6, 'SD0174', 'ALNATH ADREENA NURVIA', '2023-12-05 00:00:00', 'ASTRI AISIAH ROBIAH', '2023-08-31 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-12-05 00:00:00', 'JILID 1', 'BAGIAN C. Buku Hal. 31-44', '<p><br></p><p><br></p><p><br></p><p>Perbaiki huruf huruf hijaiyah bersambung, khusunya di huruf (ج, خ, ل) .. Semangat berlatih dirumah ya kak:)</p>', 'N'),
(161, 30, 10, 'SD0130', 'RAFIF AUFA PASARIBU', '2023-11-25 00:00:00', 'AIDAH FITRIAH', '2023-08-31 00:00:00', 'AIDAH FITRIAH', '2023-11-25 00:00:00', 'JILID 3', 'BAGIAN B. Buku Hal. 19-44', '<p><br></p><p><br></p><div>Hal. 19</div><ul><li>Hati-hati panjang pendek</li><li>Tanaffus</li><li>Makhraj huruf ع - ط - ق</li><li>Perbedaan ث dan ش</li><li>ل tidak digigit</li><li>Perbedaan ك dan ق</li></ul><p><br></p><p><br></p>', 'N'),
(162, 30, 10, 'SD0147', 'ZIDANE BHUMI ARRAZI', '2023-11-25 00:00:00', 'AIDAH FITRIAH', '2023-08-31 00:00:00', 'AIDAH FITRIAH', '2023-11-25 00:00:00', 'JILID 3', 'BAGIAN B. Buku Hal. 19-44', '<p><br></p><p>Hal. 27</p><ul><li>Tertukar huruf د &amp; ذ - ع &amp; غ - ص &amp; ض</li><li>Tertukar harakat&nbsp; ُ dengan&nbsp; ٌ&nbsp;&nbsp;</li><li>Makhraj ط&nbsp;</li><li>Tanaffus&nbsp;</li><li>Panjang pendek</li><li>Tempo bacaan masih sambil berpikir, jadi agak lama</li></ul><p><br></p>', 'N'),
(163, 30, 10, 'SD0142', 'KHAFIF FATIH HANIFA', '2023-11-25 00:00:00', 'AIDAH FITRIAH', '2023-08-31 00:00:00', 'AIDAH FITRIAH', '2023-11-25 00:00:00', 'JILID 3', 'BAGIAN B. Buku Hal. 19-44', '<p>Hal. 20<br></p><ul><li>Tertukar harakat</li><li>Panjang pendek</li><li>Sempurnakan makhraj</li></ul><p><br></p><p><br></p>', 'N'),
(164, 29, 9, 'SD0123', 'HAFIZ FIKRI MUBAROK', '2023-10-22 00:00:00', 'AIDAH FITRIAH', '2023-08-31 00:00:00', 'AIDAH FITRIAH', '2023-10-22 00:00:00', 'JILID 3', 'BAGIAN A. Buku Hal. 1-18', '<p><br></p><p>Hal. 15<br></p><ul><li>Tempo bacaan panjang pendek</li><li>Tanaffus</li><li>Tertukar huruf د &amp; ذ&nbsp;</li><li>Tertukar harakat&nbsp;&nbsp;ٍٍ -&nbsp;&nbsp;ٌ</li><li>Makhraj ث - ص&nbsp;</li></ul>', 'N'),
(165, 29, 9, 'SD0173', 'MARYAM KHALISA ARSFA', '2023-09-14 00:00:00', 'AIDAH FITRIAH', '2023-08-31 00:00:00', 'AIDAH FITRIAH', '2023-09-14 00:00:00', 'JILID 3', 'BAGIAN A. Buku Hal. 1-18', '<p><br></p><p>Jilid 3 hal. 14<br></p><ul><li>Tertukar harakat</li><li>Fokus panjang pendek</li><li>Tertukar huruf ح &amp; ه - ء &amp; ع - س &amp; ت</li><li>Makhraj ق&nbsp;</li><li>Tanaffus</li></ul><p><br></p><p><br></p>', 'N'),
(166, 29, 9, 'SD0159', 'KHALISA SYAFA DARA SISPUTRA', '2023-10-22 00:00:00', 'AIDAH FITRIAH', '2023-08-31 00:00:00', 'AIDAH FITRIAH', '2023-10-22 00:00:00', 'JILID 3', 'BAGIAN A. Buku Hal. 1-18', '<p>Hal. 15<br></p><ul><li>Tanaffus</li><li>Tertukar harakat</li><li>Panjang pendek</li></ul><p><br></p><p><br></p>', 'N'),
(167, 29, 9, 'SD0140', 'FATIMAH AZIZAH ARIDIA', '2023-10-22 00:00:00', 'AIDAH FITRIAH', '2023-08-31 00:00:00', 'AIDAH FITRIAH', '2023-10-22 00:00:00', 'JILID 3 ', 'BAGIAN A. Buku Hal. 1-18', '<p>Hal. 9<br></p><ul><li>Tanaffus</li><li>Hati-hati agar tidak terburu-buru</li><li>Panjang pendek</li></ul>', 'N'),
(168, 29, 9, 'SD0155', 'ABIDZAR RAFFASYA RIFA MAHARI', '2023-10-22 00:00:00', 'AIDAH FITRIAH', '2023-08-31 00:00:00', 'AIDAH FITRIAH', '2023-10-22 00:00:00', 'JILID 3', 'BAGIAN A. Buku Hal. 1-18', '<p>Hal. 15<br></p><ul><li>Tertukar huruf</li><li>Panjang pendek</li></ul><p><br></p>', 'N'),
(169, 29, 9, 'SD0088', 'ALVARO VIDI', '2023-11-25 00:00:00', 'AIDAH FITRIAH', '2023-08-31 00:00:00', 'AIDAH FITRIAH', '2023-11-25 00:00:00', 'JILID 3', 'BAGIAN A. Buku Hal. 1-18', '<p>Hal. 8<br></p><ul><li>Hati-hati tertukar panjang-pendek</li><li>Tertukar harakat</li></ul>', 'N'),
(170, 29, 9, 'SD0137', 'ADELIA AINUNNISA ASYARI', '2023-11-25 00:00:00', 'AIDAH FITRIAH', '2023-08-31 00:00:00', 'AIDAH FITRIAH', '2023-11-25 00:00:00', 'JILID 3', 'BAGIAN A. Buku Hal. 1-18', '<p>Hal. 10<br></p><ul><li>Tertukar panjang-pendek</li><li>Tertukar Harakat</li></ul>', 'N'),
(171, 28, 8, 'SD0141', 'MUHAMMAD ZAIDAN ALTHAFARIZQI', '2023-08-31 00:00:00', 'AIDAH FITRIAH', '2023-08-31 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', 'Alhamdulillah Ananda sudah dapat menyelesaikan Qiroati jilid 2B dan 3A pada hal.1 dan dapat melanjutkan pada hal.2-18. Adapun beberapa hal yang perlu penguatan dan latihan:&nbsp;<div>-Mad (bacaan panjang) terutama pada tanda harakat fathah panjang</div><div>-Makharijul huruf (ذ, ح, ض, غ ≠ ء)</div><div>-Huruf yang sering tertukar (ت  ≠ ن, ط ≠  ص, ف  ≠ ق)</div><div>-Hati-hati keliru pada harakat dan tanwin</div><div>-Tempo bacaan dipercepat (hadr)</div><div>-Baca satu kalimat dalam satu kali nafas tidak dipatah-patah (Tanaffus)</div><div>-Pengenalan huruf ة</div>', 'N'),
(172, 29, 9, 'SD0098', 'KAYLA FATHIYYA ANDHARA SAPPHIRE', '2023-10-27 00:00:00', 'AIDAH FITRIAH', '2023-08-31 00:00:00', 'AIDAH FITRIAH', '2023-10-27 00:00:00', 'JILID 3', 'BAGIAN A. Buku Hal. 1-18', '<p>Hal. 8<br></p><ul><li>Tertukar panjang-pendek</li><li>Tertukar harakat dan huruf</li></ul><p><br></p>', 'N'),
(173, 29, 9, 'SD0166', 'MUHAMMAD HANIF MAULANA TURSADI', '2023-11-25 00:00:00', 'AIDAH FITRIAH', '2023-08-31 00:00:00', 'ASTRI AISIAH ROBIAH', '2023-11-25 00:00:00', 'JILID 3', 'BAGIAN A. Buku Hal. 1-18', '<p>Alhamdulillah Ananda sudah dapat menyelesaikan Jilid Qiroati pada jilid 2 dan dapat melanjutkan pada jilid 3A hal.1-18. Adapun beberapa hal yang perlu penguatan dan latihan:&nbsp;<br></p><div>-Mad (Bacaan panjang)</div><div>-Makharijul Huruf (ه ح , ء ع)</div><div>- Hati-hati pada harakat dan tanwin yang sering tertukar ( Dhommah dan Dhommatain)</div>', 'N'),
(174, 30, 10, 'SD0153', 'AISYAH SYAFIQAH PUTRI', '2023-11-24 00:00:00', 'ANDRI APRIANTO', '2023-08-31 00:00:00', 'MUTHIA IZZA AZHARI', '2023-11-24 00:00:00', 'JILID 3', 'BAGIAN B. Buku Hal. 19-44', '<p>23 November = JILID 3B halaman 43</p><p>》Tempo bacaan dipercepat</p><p>》Perbanyak latihan dirumah</p>', 'N'),
(175, 14, 15, 'SD0062', 'ABDURRAHMAN GHANIYY ALHAFIDZ', '2023-09-01 00:00:00', 'RAHMAT SUPRIATNA', '2023-09-01 00:00:00', NULL, NULL, 'JILID JUZ 27', 'JILID JUZ 27', '<p><br></p>', 'N'),
(176, 35, 16, 'SD0082', 'MUHAMMAD BANIIN SYABITS', '2023-09-01 00:00:00', 'RAHMAT SUPRIATNA', '2023-09-01 00:00:00', NULL, NULL, 'JILID 6', 'BAGIAN A. Buku Hal. 1-22', '<p>bacaan idzhar jelas tidak memantulkan huruf nun sukun</p>', 'N'),
(177, 35, 16, 'SD0018', 'HUSAIN MUHAMMAD ALATAS', '2023-09-01 00:00:00', 'RAHMAT SUPRIATNA', '2023-09-01 00:00:00', NULL, NULL, 'JILID 6', 'BAGIAN A. Buku Hal. 1-22', '<p>bacaan idzhar jelas tidak memantulkan huruf nun sukun<br></p>', 'N'),
(178, 35, 16, 'SD0026', 'MUHAMMAD RAFA PRATAMA', '2023-09-01 00:00:00', 'RAHMAT SUPRIATNA', '2023-09-01 00:00:00', NULL, NULL, 'JILID 6', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p>', 'N'),
(179, 27, 7, 'SD0177', 'ABU AL BIRUNI IBRAHIM SUHADA', '2023-11-28 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-09-02 00:00:00', 'MUHAMMAD FIKRI MUZZAKI', '2023-11-28 00:00:00', 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p><p><br></p><p><br></p><p>25/9 halaman 42</p>', 'N'),
(180, 28, 8, 'SD0193', 'EZHAR MALIQ ALTHAFURRAHMAN HARAHAP', '2023-11-23 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-09-02 00:00:00', 'MUHAMMAD FIKRI MUZZAKI', '2023-11-28 00:00:00', 'JILID 2 ', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p><p><br></p><p>25/9 Halaman 2</p>', 'N'),
(181, 28, 8, 'SD0179', 'ABQARY KAISANU NARENDRA', '2023-11-20 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-09-02 00:00:00', 'MUHAMMAD FIKRI MUZZAKI', '2023-11-28 00:00:00', 'JILID 2 ', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p><p><br></p><p>25/9 Halaman 2</p>', 'N'),
(182, 27, 7, 'SD0182', 'RAYYAN FATIH SYAMIL DARMAWAN', '2023-09-25 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-09-02 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-09-25 00:00:00', 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p><p>25/9 halaman 1</p>', 'N'),
(183, 26, 6, 'SD0188', 'ADEEVA ZARA MIHARJA', '2023-09-25 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-09-02 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-09-25 00:00:00', 'JILID 1', 'BAGIAN C. Buku Hal. 31-44', '<p><br></p><p>25/9 Halaman 37</p>', 'N'),
(184, 27, 7, 'SD0186', 'FALISHA LATIFAH FARZANA', '2023-11-24 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-09-02 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-11-24 00:00:00', 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p>Perhatikan harakat bacaannya ya... Juga suaranya diangkat lagi kurang jelas barakallahufik<br></p>', 'N'),
(185, 27, 7, 'SD0183', 'ARUNA SAKHI KINANTI', '2023-11-28 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-09-02 00:00:00', 'MUHAMMAD FIKRI MUZZAKI', '2023-11-28 00:00:00', 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p><p>1/9 Halaman 29</p>', 'N'),
(186, 27, 7, 'SD0190', 'MUHAMMAD ABU BAKAR ASH-SHIDDIQ', '2023-12-13 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-09-02 00:00:00', 'HUSNI MUHAMMAD RASID', '2023-12-13 00:00:00', 'JILID 2', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p><p><br></p><p><br></p><p><br></p><p>24/11/23 Halaman 3</p><p>Perhatikan dan kenali harakat bacaannya (fathah,kasrah,dhommah) barakallahufikum</p>', 'N'),
(187, 23, 20, 'SD0051', 'BALQIS ADZRA SHABIRA', '2023-09-05 00:00:00', 'MUHAMMAD FIRLI HERDIANSYAH', '2023-09-05 00:00:00', NULL, NULL, 'KELAS FINISHING', 'KELAS FINISHING', '<p>Alhamdulillah kaka balqis lulus dalam imtas, semangat selalu jangan lupa murojaah materi-materi yang sudah di pelajari&nbsp;</p><div><br></div><p><br></p>', 'Y'),
(188, 23, 20, 'SD0041', 'SYATHIR IBRAHIM KAMIL', '2023-09-05 00:00:00', 'MUHAMMAD FIRLI HERDIANSYAH', '2023-09-05 00:00:00', NULL, NULL, 'KELAS FINISHING', 'KELAS FINISHING', '<p>Alhamdulillah kaka ibrahim lulus dalam imtas, semangat selalu jangan lupa murojaah materi-materi yang sudah di pelajari&nbsp;</p><div><br></div><p><br></p>', 'Y'),
(189, 23, 20, 'SD0044', 'SAHLA HAFIZHA DIPUTRI', '2023-09-05 00:00:00', 'MUHAMMAD FIRLI HERDIANSYAH', '2023-09-05 00:00:00', NULL, NULL, 'KELAS FINISHING', 'KELAS FINISHING', '<p>Alhamdulillah kaka Sahla lulus dalam imtas, semangat selalu jangan lupa murojaah materi-materi yang sudah di pelajari&nbsp;</p><div><br></div><p><br></p>', 'Y'),
(190, 23, 20, 'SD0032', 'KHEYSA AZZAHRA', '2023-09-05 00:00:00', 'MUHAMMAD FIRLI HERDIANSYAH', '2023-09-05 00:00:00', NULL, NULL, 'KELAS FINISHING', 'KELAS FINISHING', '<p>Alhamdulillah kaka kheysa lulus dalam imtas, semangat selalu jangan lupa murojaah materi-materi yang sudah di pelajari&nbsp;</p><p><br></p>', 'Y'),
(191, 23, 20, 'SD0009', 'MEDISHA NAURA SALSABILA', '2023-09-05 00:00:00', 'MUHAMMAD FIRLI HERDIANSYAH', '2023-09-05 00:00:00', NULL, NULL, 'KELAS FINISHING', 'KELAS FINISHING', '<p>Alhamdulillah kaka Naura lulus dalam imtas, semangat selalu jangan lupa murojaah materi-materi yang sudah di pelajari&nbsp;</p><div><br></div><p><br></p>', 'Y'),
(192, 28, 8, 'TK0178', 'ABIZARD ISMAIL ALI', '2023-10-02 00:00:00', 'REGITHA SASKIA', '2023-10-02 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p>', 'N'),
(193, 33, 13, 'TK0181', 'AIZZAH NUR NAZHIFAH', '2023-10-02 00:00:00', 'REGITHA SASKIA', '2023-10-02 00:00:00', NULL, NULL, 'JILID 5', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p>', 'N'),
(194, 28, 8, 'TK0316', 'AMIRA AZZAHRA KIMBERLITE', '2023-10-02 00:00:00', 'REGITHA SASKIA', '2023-10-02 00:00:00', NULL, NULL, 'JILID 2', 'BAGIAN B. Buku Hal. 23-44', '<p><br></p>', 'N'),
(195, 30, 10, 'TK0304', 'MUHAMMAD AZKA DANIYAL ALI', '2023-10-02 00:00:00', 'REGITHA SASKIA', '2023-10-02 00:00:00', NULL, NULL, 'JILID 3', 'BAGIAN B. Buku Hal. 19-44', '<p><br></p>', 'N'),
(196, 29, 9, 'TK0241', 'MALIQA RIZHANI HANANDITA', '2023-10-02 00:00:00', 'REGITHA SASKIA', '2023-10-02 00:00:00', NULL, NULL, 'JILID 3', 'BAGIAN A. Buku Hal. 1-18', '<p><br></p>', 'N'),
(197, 35, 16, 'SD0149', 'MUHAMMAD ADHYASTHA ALFAREZEL', '2023-11-24 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-10-20 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-11-24 00:00:00', 'JILID 6', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p><p><br></p>', 'N'),
(198, 35, 16, 'SD0087', 'ALISHA ISLAMADINA RAHMADHI', '2023-11-24 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-10-20 00:00:00', 'MUHAMMAD ZIKRA HIDAYATULLAH ', '2023-11-24 00:00:00', 'JILID 6', 'BAGIAN A. Buku Hal. 1-22', '<p><br></p><p><br></p>', 'N'),
(199, 31, 11, 'SD0136', 'SHANUM ALULA RINJANI', '2023-11-24 00:00:00', 'MUTHIA IZZA AZHARI', '2023-10-23 00:00:00', 'MUTHIA IZZA AZHARI', '2023-11-24 00:00:00', 'JILID 4', 'BAGIAN A. Buku Hal. 1-12', '<p>23 November = JILID 4A halaman 2</p><p>》Volume suara dikeraskan&nbsp;</p>', 'N'),
(200, 30, 10, 'SD0121', 'DAVIN ARYANARESWARA ALZAIDAN', '2023-10-27 00:00:00', 'ANDRI APRIANTO', '2023-10-27 00:00:00', NULL, NULL, 'JILID 3', 'BAGIAN B. Buku Hal. 19-44', '<p><br></p><p>3B hal 26, hati-hati mad ashli, fathah panjang</p>', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `c_siswa` varchar(10) NOT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `nisn` varchar(15) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `temlahir` varchar(20) DEFAULT NULL,
  `tanglahir` date DEFAULT NULL,
  `jk` varchar(2) DEFAULT NULL,
  `c_kelas` varchar(10) DEFAULT NULL,
  `thn_join` int(11) DEFAULT NULL,
  `panggilan` varchar(20) DEFAULT NULL,
  `c_klp` varchar(20) DEFAULT NULL,
  `bbadan` varchar(10) DEFAULT NULL,
  `tbadan` varchar(10) DEFAULT NULL,
  `ukuran_baju` varchar(50) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL,
  `hp` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nama_ayah` varchar(50) DEFAULT NULL,
  `pendidikan_a` varchar(100) DEFAULT NULL,
  `pekerjaan_a` varchar(100) DEFAULT NULL,
  `ttl_a` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(50) DEFAULT NULL,
  `pendidikan_i` varchar(100) DEFAULT NULL,
  `pekerjaan_i` varchar(100) DEFAULT NULL,
  `ttl_i` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`c_siswa`, `nis`, `nisn`, `nama`, `temlahir`, `tanglahir`, `jk`, `c_kelas`, `thn_join`, `panggilan`, `c_klp`, `bbadan`, `tbadan`, `ukuran_baju`, `alamat`, `telp`, `hp`, `email`, `nama_ayah`, `pendidikan_a`, `pekerjaan_a`, `ttl_a`, `nama_ibu`, `pendidikan_i`, `pekerjaan_i`, `ttl_i`) VALUES
('SD0001', '201902001', '201902001', 'NABIILAH NURSALMA', 'BEKASI', '2015-01-06', 'P', '5SD', 2019, 'NABILAH', '5B', '16', NULL, NULL, 'PERUMAHAN GREEN LEAF BLOK D 16', '0', '85711280007', NULL, 'FIRMAN JOFARI', 'S1', 'WIRASWASTA', 'JAKARTA/ 19 JULI 1981', 'MEISYA HELENDA', 'S1', 'IRT', NULL),
('SD0002', '201902002', '201902002', 'ANDISTRY CALISTA QURRATA AYUNI', 'JAKARTA', '2012-01-09', 'P', '5SD', 2019, 'CALISTA', '5B', '20', NULL, NULL, 'JL. RAWA BEBEK NO. 205 RT/011/001 PULOGEBANG CAKUNG JAKARTA TIMUR', '0', '8568895850', NULL, 'ANDI', 'S1', 'KARYAWAN SWASTA', 'JAKARTA/ 14 JANUARI 1981', 'KHAIRIA MAHDALENA', 'S1', 'IRT', 'JAKARTA/ 12 DESEMBER 1981'),
('SD0003', '201902003', '201902003', 'AUDIE MUMTAZA WIJAYAKUSUMAH', 'BEKASI', '2015-05-04', 'P', '5SD', 2019, 'AUDIE', '5B', '18', NULL, NULL, 'TAMAN CIKAS C 16 NO. 22 PEKAYON JAYA BEKASI SELATAN', '0', '81283274743', NULL, 'ALIF WIJAYAKUSUMAH', 'S2', 'KARYAWAN SWASTA', 'CIANJUR/ 10 MEI 1973', 'RUFAIDAH DEWI T', 'S2', 'PENGAJAR', 'BANDUNG/ 19 SEPTEMBER 1973'),
('SD0005', '201902005', '201902005', 'WULAN KHANSA HUMAIRA', 'BEKASI', '2013-01-10', 'P', '5SD', 2019, 'WULAN', '5B', '27', NULL, NULL, 'JL. WIJAYA BLOK. B NO 13 JAKA SAMPURNA', '0', '81296633300', NULL, 'RYNO YOGA PRATAMA', 'S1', 'WIRAUSAHA', 'JAKARTA/ 15 DESEMBER 1978', 'CYNTHIA DEWI SAVITRI', 'S1', 'IRT', NULL),
('SD0006', '201902006', '201902006', 'NISWA FADILLAH', 'SOLOK', '2014-11-04', 'P', '5SD', 2019, 'NISWA', '5B', '18', NULL, NULL, 'THE GREEN VIEW BLOK D 67', '0', '82111194998', NULL, 'DENY NATURIAN', 'S1', 'WIRASWASTA', 'RUMBAI/ 30 MARET 1984', 'ANA OKTORA', 'S2', 'IRT', 'SOLOK/ 07 OKTOBER 1982'),
('SD0007', '201902007', '201902007', 'KAIZAN AUF AL ARSY', 'CIANJUR', '2013-08-07', 'L', '5SD', 2019, 'KAIZAN', '5A', '15', NULL, NULL, 'VILLA PEKAYON BLOK. A1 NO. 6', '0', '817220195', NULL, 'AGUS TAUFIQ EFENDI', 'S1', 'WIRASWASTA', 'SEMARANG/ 27 SEPTEMBER 1977', 'NOVI EKA DAMAYANTI', 'S1', 'IRT', 'CIANJUR/ 05 NOVEMBER 1982'),
('SD0008', '201902008', '201902008', 'ANISA AWILIA ZAHRA', 'BANDUNG', '2013-12-08', 'P', '5SD', 2019, 'ICHA', '5B', '17', NULL, NULL, 'KOMP. PULO PERMATA SARI BLOK. B5 NO.3 PEKAYON JAYA BEKASI', '0', '81285896381', NULL, 'WILDAN FUJIANSAH', 'S2', 'PNS', 'BANDUNG/ 20 MARET 1986', 'RETI ROHMALIA SARI', 'S1', 'KARYAWAN SWASTA', 'PANDEGLANG/ 17 MARET 1987'),
('SD0009', '201902009', '201902009', 'MEDISHA NAURA SALSABILA', 'BEKASI', '2013-07-07', 'P', '5SD', 2019, 'NAURA', '5B', '20/5', NULL, NULL, 'JL. NURUL HUDA iv NO. 1 RT.02/015 JAKA SAMPURNA BEKASI', NULL, '8161316045', NULL, 'MUHAMAD TOHIRUDIN', 'S1', 'WIRASWASTA', 'JAKARTA/ 13 MARET 1985', 'AMELLA RISMARINA', 'S1', 'IRT', 'KOTABARU/ 14 JULI 1986'),
('SD0010', '201902010', '201902010', 'EILIYAH SHAFA AISHA', 'BEKASI', '2013-04-10', 'P', '5SD', 2019, 'SHAFA', '5B', '26', NULL, NULL, 'JL. MEDAN RAYA BLOK. F NO. 207 JAKA MULYA BEKASI', NULL, '87883613284', NULL, 'ADI GINANJAR', 'S1', 'KARYAWAN SWASTA', 'JAKARTA/ 10 OKTOBER 1981', 'KRISTIN', 'S1', 'KARYAWAN SWASTA', 'JAKARTA/ 09 JUNI 1982'),
('SD0011', '201902011', '201902011', 'MUHAMMAD SHAQUEEL PRAKARSA', 'BEKASI', '2013-04-02', 'L', '5SD', 2019, 'SHAQI', '5A', '23', NULL, NULL, 'JL. PONDOK JINGGA MAS V BLOK E 3/19 PONDOK TIMUR MAS BEKASI SELATAN ', NULL, '8561209238', NULL, 'DEDY BAGUS PRAKARSA', 'S2', 'PNS', 'BEKASI/ 23 APRIL 1984', 'ARI ASTRI YUNITA', 'S2', 'PNS', 'JAKARTA/ 04 JUNI 1983'),
('SD0012', '201902012', '201902012', 'NASHRULLAH FAIZ AMMAR', 'BEKASI', '2013-02-11', 'L', '5SD', 2019, 'FAIZ', '5A', '0', NULL, NULL, 'THE GREEN VIEW BLOK C NO. 33A JAKA SETIA BEKASI', '0', '82278291322', NULL, 'WING HARTOPO', 'S2', 'PNS', 'KUDUS/ 14 JUNI 1982', 'RISKA RESTU SADAYA', 'S1', 'GURU', 'JAKARTA/ 06 AGUSTUS 1979'),
('SD0014', '201902014', '201902014', 'NALDO IBRAHIM MUSTAFA', 'BEKASI', '2014-07-04', 'L', '5SD', 2019, 'NALDO', '5A', '21', NULL, NULL, 'PONDOK TIMUR MAS BLOK G 4/11 BEKASI', NULL, '8161621533', NULL, 'ADITYA PRADANA MUSTAFA', 'S1', 'KARYAWAN SWASTA', 'JAKARTA/ 22 MEI 1985', 'DIYAH TANJUNG SARI', 'S1', 'KARYAWAN SWASTA', 'JAKARTA/ 19 SEPTEMBER 1983'),
('SD0016', '201902016', '201902016', 'AL GHAZI NAUFAL WIJAYA', 'BANDUNG', '2013-08-08', 'L', '5SD', 2019, 'AL GHAZI', '5A', '21', NULL, NULL, 'JL. KETAPANG XI/ PPI BLOK. DD 29 NO. 15 BEKASI', '0', '82298490414', NULL, 'ALMAJI AKUNG WIJAYA', 'S1', 'PNS', 'TEMANGGUNG/ 13 AGUSTUS 1986', 'SYINDI NOPIANI', 'S1', '-', 'JAKARTA/ 04 NOVEMBER 1994'),
('SD0017', '201902017', '201902017', 'ANANDA RAYKA MUFID', 'PURWOKERTO ', '2014-09-03', 'L', '5SD', 2019, 'RAYKA', '5A', '20', NULL, NULL, 'CLUSTER ASFA NO. 14/ JL. H. GOTI JAKA MULYA BEKASI', NULL, '85726440400', NULL, 'KARDI', 'S1', 'KARYAWAN SWASTA', 'JAKARTA/ 03 APRIL 1984', 'VIDYA EKANINGTYAS', 'S1', 'DOKTER', 'PURWOKERTO/ 08 OKTOBER 1986'),
('SD0018', '201902018', '201902018', 'HUSAIN MUHAMMAD ALATAS', 'BEKASI', '2014-03-01', 'L', '5SD', 2019, 'HUSAIN', '5A', '19', NULL, NULL, 'JL. PAKIS 3D BB44 NO.6 RT.04/12 PONDOK  PEKAYON INDAH BEKASI', NULL, '81286276710', NULL, 'MUHAMMAD ALATAS', 'S1', 'KARYAWAN SWASTA', 'BEKASI/ 11 MARET 1984', 'NOORMA SHOLIHAT', 'D IV', 'IRT', 'BEKASI/ 22 NOVEMBER 1985'),
('SD0020', '201902020', '201902020', 'MUHAMMAD FAQIH AL GHIFARI', 'JAKARTA', '2014-08-08', 'L', '5SD', 2019, 'FAQIH', '5A', '16', NULL, NULL, 'JL. CANDRABAGA BLOK. AQ 6 NO. 2 BEKASI', '0', '89661796021', NULL, 'RACHMAD SENTOSA', 'D III', 'WIRASWASTA', 'JAKARTA/ 30 JANUARI 1987', 'NURAINI', 'SMK', 'IRT', 'JAKARTA/ 19 AGUSTUS 1988'),
('SD0021', '201902021', '201902021', 'ARGI MUHAMMAD AZKA DHIYA', 'BEKASI', '2013-01-03', 'L', '5SD', 2019, 'ARGI', '5A', '38', NULL, NULL, 'GOLDEN CITY CLUSTER GREENWOOD BLOK D 2 TELUK PUCUNG BEKASI UTARA', '0', '81310982527', NULL, 'MUHAMMAD BARKAH ADHISATIA', 'D III', 'KARYAWAN SWASTA', 'JAKARTA/ 27 MEI 1983', 'SUWINTRY RACHMAN', 'SMA', 'IRT', 'JAKARTA/ 28 MARET 1977'),
('SD0022', '201902022', '201902022', 'ERINA ZAHIRA', 'BEKASI', '2015-04-02', 'P', '5SD', 2019, 'ERINA', '5B', '18', NULL, NULL, 'JL. PIRUS BLOK. D NO. 427 BEKASI', NULL, '82141522403', NULL, 'HEFFY HERYANTO', 'S1', 'GOJEK', 'JAKARTA/ 29 JANUARI 1973', 'DIAN DANAWATI', 'S1', 'IRT', 'JAKARTA/ 22 SEPTEMBER 1974'),
('SD0023', '201902023', '201902023', 'TAMARANI SAJIDAH FIRSTIANNISA', 'SIDOARJO', '2015-05-03', 'P', '5SD', 2019, 'TAMARA', '5B', '16', NULL, NULL, 'VILLA JAKA SETIA BLOK C NO. 9A BEKASI', '0', '85710250067', NULL, 'YUSUF PRATAMA WIJANARKO', 'S1', 'KARYAWAN SWASTA', 'SURABAYA/ 05 MARET 1992', 'NUR LISTIYA MANGGARANI PUTRI', 'S1', 'IRT', 'SURABAYA/ 25 JUNI 1992'),
('SD0024', '201902024', '201902024', 'THORIQUL ABRAR KARIM', 'JAKARTA', '2015-06-05', 'L', '5SD', 2019, 'THORIQ', '5A', '20', NULL, NULL, 'PERUM PURI ASIH SEJAHTERA JL. MALUKU BLOK B NO. 79 ', '0', '81319790353', NULL, 'ANDRI ISMAYANDRI', 'S2', 'WIRAUSAHA', 'JAKARTA/ 30 DESEMBER 1974', 'NURINI', 'S1', 'IRT', 'SEMARANG/ 20 NOVEMBER 1977'),
('SD0025', '201902025', '201902025', 'ALYAA RAMADHANI PUTRI', 'BEKASI', '2012-02-08', 'P', '5SD', 2019, 'ALYAA', '5B', '15', NULL, NULL, 'JL. GRIYA CENDANA 3 BLOK. A NO. 21 PEKAYON JAYA', NULL, '81218994238', NULL, 'NANA PRIATNA', 'SMA', 'WIRASWASTA', 'CIAMIS/ 03 DESEMBER 1982', 'ANGGRAENI AYU LESTARI', 'S1', 'IRT', 'BEKASI/ 23 AGUSTUS 1987'),
('SD0026', '201902026', '201902026', 'MUHAMMAD RAFA PRATAMA', 'BEKASI', '2014-03-09', 'L', '5SD', 2019, 'RAFA', '5A', NULL, NULL, NULL, 'JL. LETNAN ARSYAD NO. 30 KAYURINGIN', NULL, '81808891911', NULL, 'FAJRI ASDINAL', 'S1', 'WIRASWASTA', 'JAKARTA/ 1 DESEMBER 1981', 'KOMALASARI', 'S1', 'WIRASWASTA', 'BEKASI/ 5 MARET 1986'),
('SD0027', '201902027', '201902027', 'MUHAMMAD HAMILUL QURANI', 'REMBANG', '2014-06-02', 'L', '5SD', 2019, 'AMIL', '5A', NULL, NULL, 'S', 'PTM BLOK f1 No. 6 JAKASETIA', '081225509168', NULL, NULL, 'ADI HIDAYAT', 'S2', 'PENGAJAR', 'PANDEGLANG/ 11 SEPTEMBER 1984', 'SHUFAIROK', 'S1', 'IRT', 'REMBANG/ 13 JANUARI 1985'),
('SD0028', '201902028', '201902028', 'MUHAMMAD TSAQIB FATHULISLAM', 'BEKASI', '2014-01-02', 'L', '5SD', 2019, 'TSAQIB', '5A', NULL, NULL, NULL, 'Pondok Pekayon Indah Jl. Akasia Raya Blok D2/2 Bekasi Selatan', NULL, '81389510582', ' indah.yulianty84@gmail.com', 'JAJANG SAEPUL MALIK', 'Sarjana Perikanan', 'Konsultan (Freelance)', 'Tasik Malaya/ 24 Maret 1983', ' Indah Yulianty Amelia', 'Sarjana Pertanian', 'GURU', 'Jakarta/ 19 Juli 1984'),
('SD0029', '201902029', '201902029', 'SAGARA BANYU BIRU', 'BEKASI', '2013-06-10', 'L', '5SD', 2019, 'SAGARA', '5A', NULL, NULL, NULL, 'jl. Pulo Sirih Utara Dalam IV Blok DD No 195 rt/rw 005/014 Pekayon Jaya/Bekasi selatan', NULL, '87873821181', NULL, 'WAHYU CONDRO JD', 'D3', 'karyawan swasta', 'Jakarta/ 11 September 1986', 'DITA ADYTIA DAMAYANTI', 'S1', 'Karyawan swasta \nKaryawan swasta', 'Bogor/ 19 Agustus 1986'),
('SD0032', '201902032', '201902032', 'KHEYSA AZZAHRA', 'BARRU', '2014-04-01', 'P', '5SD', 2019, 'KHEYSA', '5B', NULL, NULL, NULL, 'Perumahan Green Leaf Blok F5/ Jatibening/ Bekasi', NULL, '81372611277', ' iswanladoi@gmail.com\n iswanladoi@gmail.com\n iswanladoi@gmail.com', 'ISWAN\nISWAN', 'S1', 'Wiraswasta', 'Ammerung/ 25 Mei 1979', 'Rahmawati', 'S1', 'PNS', ' Litae/ 04 Mei 1983'),
('SD0039', '202002039', '202002039', 'MINDA ISVARA RUSDI', 'Bandung', '2013-10-10', 'P', '4SD', 2020, 'MINDA', '4B', '18.6', '117', 'P', 'Pondok Timur Mas Blok B 1 no. 7 Jaka Setia Bekasi', '087878600250', '87878600240', NULL, 'Prana Adhitya', 'S2', 'Swasta', 'Jakarta/ 19 September 1978', 'Mariati Abdulkadir', 'S2', 'IRT', 'Bandung/ 14 Juni 1978'),
('SD0041', '202002041', '202002041', 'SYATHIR IBRAHIM KAMIL', 'Bekasi', '2014-11-01', 'L', '4SD', 2020, 'IBRAHIM', '4A', '25', NULL, 'L', 'Komp. Pemda Jl. Kresna no.41 RT.01/01 Jati Asih Bekasi', '081317802059', '81298567822', NULL, 'Yandi Arnaz', 'S1', 'BUMN', 'Depok/ 19 April 1988', 'Rita Hartati Lubis', 'S1', 'IRT', 'Jakarta/ 29 Maret 1989'),
('SD0042', '202002042', '202002042', 'MUHAMMAD JANOKO ASMAYODHA CAHYONO', 'Bekasi', '2015-03-12', 'L', '4SD', 2020, 'JANOKO', '4A', NULL, NULL, NULL, 'Pondok Timur Mas Blok R1 no 10 A Bekasi', '08119441520', '83824865284', NULL, 'Farur Anton Cahyono', 'S2', 'Wiraswasta', 'Malang/ 1 Februari 1982', 'Novi Astuti', 'SMA', 'IRT', 'Jakarta/ 4 Februari 1978'),
('SD0043', '202002043', '202002043', 'MUHAMMAD AZZAM ALI GHAITSAN', 'Jakarta', '2013-03-05', 'L', '4SD', 2020, 'GHAITSAN', '4A', '20', '120', 'XL', 'Victoria Garden Boulevard no. 30 Jaka Setia Bekasi', '081277128888', '81256275555', NULL, 'Dadang Somantri', 'SMA', 'TNI AL', 'Subang 10 Mei 1971', 'Niswatul Ulya ST/MM', 'S2', 'Wiraswasta', 'Pontianak 5 Desember 1980'),
('SD0044', '202002044', '202002044', 'SAHLA HAFIZHA DIPUTRI', 'Bekasi', '2014-10-08', 'P', '4SD', 2020, 'SAHLA', '4B', '10', '114', 'L', 'Villa Jakasetia Blok H no 16 Bekasi', '085624106866', '8569902556', NULL, 'Dendi Riyadi Utomo', 'S1', 'BUMN', 'Jakarta 25 Juni 1985', 'Yulaintini', 'S1', 'Swasta', 'Tangerang 15 September 1985'),
('SD0046', '202002046', '202002046', 'SHAQUILA AINUNNAIRA', 'Bekasi', '2014-04-07', 'P', '4SD', 2020, 'NAIRA', '4B', '19', NULL, 'L', 'Pondok Mitra Lestari Blok c2 no % Bekasi', '08159296409', '8562121304', NULL, 'Andi Firdaus', 'S1', 'BUMN', 'Bekasi 31 Maret 1985', 'Riesty Yusnilaningsih', 'S1', 'Swasta', 'Bandung 16 April 1985'),
('SD0047', '202002047', '202002047', 'MUHAMMAD ALFATHAN', 'Bekasi', '2013-08-06', 'L', '4SD', 2020, 'FATHAN', '4A', '23', NULL, 'XL', '[NULL]', NULL, '82227165754', NULL, NULL, NULL, NULL, NULL, 'Nanda Hervika Dwi', 'SMK', 'IRT', 'Jakarta 7 Januari 1988'),
('SD0051', '202002051', '202002051', 'BALQIS ADZRA SHABIRA', 'Serang', '2014-06-02', 'P', '4SD', 2020, 'BALQIS', '4B', NULL, NULL, 'L', 'Villa Jaka Setia Blok H no 7 Bekasi', '081287978451', '81289565771', NULL, 'Ica Putra', 'D3', 'Swasta', 'Pangkalpinang 25 Januari 1986', 'Ita Haryati', 'D3', 'Swasta', 'Serang 21 Mei 1986'),
('SD0053', '202002053', '202002053', 'AINUN MAHYA RAMADHANI', 'Bekasi', '2014-08-07', 'P', '4SD', 2020, 'AINUN', '4B', NULL, NULL, 'XXL', 'Jl Cikas Timur no 1 Blok B 7/5 Taman Cikas Bekasi Selatan', '08129556680', '8111988844', NULL, 'M Sariful Muchlis', 'S1', 'Swasta', 'Jakarta 11 Juni 1977', 'Atin Rianti', 's1', 'IRT', 'Cianjur 13 April 1981'),
('SD0054', '202002054', '202002054', 'KHAIRUNISA RIANTI ANGKASA', 'Bekasi', '2016-02-01', 'P', '4SD', 2020, 'NISA', '4B', '20', '105', 'XL', 'Pondok Pekayon Indah Blok B3 no 7 Bekasi', '081806062013', '818964848', NULL, 'Surianto', 'S1', 'Swasta', 'Belawan 13 Mei 1980', 'Ratih Farlianty', 'S1', 'IRT', 'Jakarta 1 Juli 1978'),
('SD0055', '202002055', '202002055', 'MUHAMMAD RICHIE RIZALDY', 'Bekasi', '2015-01-11', 'L', '4SD', 2020, 'RICHIE', '4A', NULL, NULL, NULL, 'Peumahan Prima Lingkar Asri Blok B 1 no 24 Jatibening ', '08356269363', '85218037132', NULL, 'Danny Yudha Prawira', 'S1', 'Wiraswasta', 'Bogor 13 April 1981', 'Ajeng Nurmala', 'S1', 'Wiraswasta', 'Karawang 2 Agustus 1981'),
('SD0057', '202002057', '202002057', 'SHAFA NUR SABRINA', 'Bekasi', '2014-01-05', 'P', '4SD', 2020, 'SHAFA', '4B', '18', '120', 'M', 'Pondok Cikunir Indah Jl. Rajawali VI no 22 Bekasi', '087882166610', '87880885110', NULL, 'Bayu Firmansyah', 'S1', 'Wiraswasta', 'Purbalingga 8 September 1987', 'Maya Oktaviantari', 'S1', 'IRT', 'Jakarta 2 Oktober 1987'),
('SD0058', '202002058', '202002058', 'HAFIZ R USAMA DORISMAN', 'Jakarta', '2014-11-04', 'L', '4SD', 2020, 'USAMA', '4A', NULL, NULL, NULL, 'Pekayon 2 Jl. Kemang 3 Blok B no 36 Bekasi', '081318003889', '81293973439', NULL, 'Dorisman', 'S1', 'Wiraswasta', 'Padang 5 Maret 1982', 'Desi Mai Fitri', NULL, 'IRT', 'Pariaman 14 Mei 1989'),
('SD0059', '202002059', '202002059', 'KHANSA AQEELA AZZALFA TAMBUNAN', 'Bekasi', '2015-02-07', 'P', '4SD', 2020, 'KHANSA', '4B', NULL, NULL, 'M', 'Jl. Kemang Raya Blok C/6 Pekayon Jaya II Bekasi', '085216597235', '81297376240', NULL, 'Dhika Fajar Pratama', 'S1', 'Wiraswasta', 'Jakarta 7 November 1984', 'Rosa Indah Sari', 'S1', 'IRT', 'Jakarta 5 November 1984'),
('SD0060', '202002060', '202002060', 'IVANI MALAIKA NOUREEN', 'Bekasi', '2013-08-08', 'P', '4SD', 2020, 'IVANI', '4B', '17', '113', 'L', 'Perum Margahayu Blok. A no. 382 Bekasi Timur', '081288680182', '82213444211', NULL, 'Tatang Arifin', 'S1', 'Swasta', 'Ciamis 6 April 1982', 'Indah Eka Septiana', 'SMA', 'IRT', 'Jakarta 19 September 1989'),
('SD0061', '202002061', '202002061', 'MUHAMMAD EMIRSYAH RAFEEF ASSAD', 'Bekasi', '2014-12-06', 'L', '4SD', 2020, 'EMIR', '4A', '20', '115', 'L', 'Jl. Cendana Raya no 16 Jaka Permia Bekasi', '08118818787', '81310070612', NULL, 'Muhammad Assad', 'S2', 'Pengusaha', 'Jakarta/ 16 Januari 1987', 'Afra Nurina Amarilla', 'S2', 'IRT', 'Tarakan 6 Januari 1988'),
('SD0062', '202002062', '202002062', 'ABDURRAHMAN GHANIYY ALHAFIDZ', 'Padang ', '2014-05-04', 'L', '4SD', 2020, 'HAFIDZ', '4A', '22', '117', NULL, 'Jl. Taman Agave V Blok M6/27 Taman Galaxi Bekasi', '08159653394', '81514577689', NULL, 'Tedi Jombang Nugraha', 'S1 ', 'Swasta', 'Padang 30 Maret 1979', 'Pipit Anasthasia', 'S1', 'IRT', 'P Berandan 2 November 1978'),
('SD0065', '202002065', '202002065', 'AQILA SYAZA FALIA', 'Jakarta', '2014-07-03', 'P', '4SD', 2020, 'AQILA', '4B', '20', NULL, 'XL', 'Green Leaf Residence Blok F 10 Bekasi', '081908201067', '8111925858', NULL, 'Jerri Fabian Irman', 'S1', 'Swasta', 'Padang 27 Januari 1989', 'Cut Natahalia Rahmi', 'S1', 'IRT', 'Padang 13 Juni 1989'),
('SD0066', '202002066', '202002066', 'ABRISAM SYAHDAN GUSTIAN', 'Bekasi', '2013-01-10', 'L', '4SD', 2020, 'ICAM', '4A', NULL, NULL, NULL, 'Cluster Lotus Garden LG 1 -  12 Bekasi', '0811970117', '8111006050', NULL, 'Wawan Ganjar Kustiawan', 'S1', 'Swasta', 'Ciamis 27 Juni 1968', 'Winarni Julianti', 'S1', 'IRT', 'Jakarta 20 Juli 1985'),
('SD0067', '202002067', '202002067', 'FATIH BINTANG RAYESPATI', 'Bekasi', '2014-11-08', 'L', '4SD', 2020, 'FATIH', '4A', '39', '121', 'XXL', 'Pondok Pekayon Indah Blok DD 39 Jl. KetapangIV no 12 A Bekasi', '081809117779', '81287788719', NULL, 'Angki Fajar Anggaprawira', 'D3', 'Swasta', 'Tasikmalaya 14 Oktober 1980', 'Swasti Kartikaningrum', 'S1', 'IRT', 'Bekasi 7 September 1984'),
('SD0069', '202002069', '202002069', 'KEIKO HAFIZH APRILIA', 'Bekasi', '2014-03-04', 'P', '4SD', 2020, 'KEIKO', '4B', '21', '117', 'L', 'Jl. Wijaya Kusuma ^ no.14 Perumnas I Jaka Sampurna Bekasi', '087888183390', '81317781334', NULL, 'Roso Darwoko', 'SMMK', 'Wiraswasta', 'Madiun 13 Juni 1983', 'Niken Lestari', 'S1', 'IRT', 'Madiun 5 Januari 1983'),
('SD0070', '202002070', '202002070', 'FARHANA MAULIDINA CHOMO', 'Manado', '0001-01-01', 'P', '4SD', 2020, 'HANA', '4B', '20', '117', 'L', 'Jl. Samratulangi no 18 Bitung Sulawesi Utara', '08124451123', '8134003740', NULL, 'HJ Johny Tjomo', 'D3', 'Wiraswasta', 'Kotamubagu 27 Juni 1958', 'GT. Sjamsiah Marsabessy', 'SLTA', 'IRT', 'Minahasa 29 Agustus 1969'),
('SD0072', '202002072', '202002072', 'HANIM FARRAS DAMITSA', 'Banyumas', '2014-05-06', 'P', '4SD', 2020, 'HANIM', '4B', '20', NULL, 'L', 'Jl. Pandu DewanantaBlok 4 no 30 BSK Kayuringin Bekasi', '0812345606062', '81391554222', NULL, 'Harry Firmanzah', 'S1', 'Swasta', 'Bekasi 6 Februari 1986', 'Bekti Indah Pamuji', 'S1', 'IRT', 'Cilacap 13 September 1986'),
('SD0073', '202002073', '202002073', 'MUHAMMAD SHABAZ AURIGA', 'Bekasi', '2019-03-04', 'L', '4SD', 2020, 'AURIGA', '4A', '20', '113', 'M', 'Jl. Letnan Arsyad RT.03/24 no 4 Kayuringin Jaya Bekasi', '081242266681', '895346462706', NULL, 'Taufik Hidayat', 'S1', 'Driver ojol', 'Bekasi 10 Desember 1981', 'Kiki Rizkiah', 'SMA', 'IRT', 'Jakarta 12 Desember 1988'),
('SD0074', '202002074', '202002074', 'RAFANDRA SHIDQIE KENEDY', 'Jakarta', '2016-01-05', 'L', '4SD', 2020, 'RAFA', '4A', '16', NULL, 'L', 'Villa Jaka setia Blok E no. 11 Bekasi', '08129317894', '81806351751', NULL, 'M Risky Kenedy', 'S1', 'PNS', 'Bwi 12 Mei 1979', 'Sella Novi Berliana', 'S1', 'IRT', 'Jakarta 30 November 1982'),
('SD0077', '202002077', '202002077', 'ZAINA ALIMA SABREEN', 'Bekasi', '2014-09-02', 'P', '4SD', 2020, 'ZAINA', '4B', '27', '120', 'l', 'Jl. Platinum 4 Blok J 5/5 Metland Tambun Bekasi', '081284898848', '81336737656', NULL, 'Erlangga', 'S1', 'Wiraswasta', 'Jakarta 14 April 1985', 'Intan Solihah', 'D3', 'IRT', 'Serang 12 Februari 1985'),
('SD0079', '202002079', '202002079', 'SHASHA YUMNA QIRANI', 'Bekasi ', '2013-09-02', 'P ', '4SD', 2020, 'SHASHA', '4B', '15', NULL, 'L', 'JL. MAKAM RT 3 RW 2 NO. 3 KRANJI', NULL, '8811180880', '-', 'JAKA ISMAULANA', 'SMA', 'WIRASWASTA', '12-Jun-86', 'DEVI GERHANA YANTI', 'SMA', 'IRT', '18-Mar-88'),
('SD0080', '202002080', '202002080', 'MUHAMMAD IHSAN ARIA TURSADI', 'Jakarta', '2015-07-06', 'L', '4SD', 2020, 'IHSAN', '4A', '18', '115', 'L', 'Green Jatiasiih Blok A3 Jl. Kampung Bulak Bekasi', '0859225177', '8129982809', NULL, 'Danie Febriansyah Tursadi', 'S1', 'Swasta', 'Bekasi 28 Februari 1974', 'Maya Safira', 'D1', 'IRT', 'Bandung 26 September 1977'),
('SD0082', '202002082', '202002082', 'MUHAMMAD BANIIN SYABITS', 'Jakarta', '0001-01-01', 'L', '4SD', 2020, 'SYABITS', '4A', NULL, NULL, NULL, '[NULL]', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('SD0083', '202102083', '202102083', 'ABRAHAM PEPITO', 'Jakarta', '2015-03-05', 'L', '3SD', 2021, 'PEPITO', '3A', '12 Kg', NULL, 'S', 'Pondok Timur Mas F 5 No. 5 Jalan Pondok Jingga Mas IV', '8129824477', '218202934', NULL, 'Muhamad Asiqin Akbar', 'S1', 'Wiraswasta', 'Jakarta/ 8 Maret 1983', 'Noviyanti Nurkomariah ', 'S1', 'Karyawan Swasta', 'Palembang/ 27 November 1981'),
('SD0084', '202102084', '202102084', 'ADELARD ZEROUN ARKAAN APSANRA', 'Bekasi', '2016-02-01', 'L', '3SD', 2021, 'ARKAAN', '3A', NULL, NULL, NULL, 'Komplek Depnaker Taman Wisma Asri Jalan Garuda I Blok L21 No. 5 Teluk Pucung Bekasi Utara 17121', NULL, NULL, NULL, 'Ikhsan Pramana', NULL, 'Karyawan Swasta', NULL, 'Rahmi Hayati', NULL, 'Ibu Rumah Tangga', NULL),
('SD0086', '202102086', '202102086', 'ALBY NAFIAN RABBANI', NULL, '0001-01-01', 'L', '3SD', 2021, 'ALBY', '3A', NULL, NULL, NULL, '[NULL]', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('SD0087', '202102087', '202102087', 'ALISHA ISLAMADINA RAHMADHI', 'Bekasi', '2014-08-08', 'P', '3SD', 2021, 'ALISHA', '3B', '14/5 Kg', '-', 'M', 'Jl. Melati 1 Blok B No.27 Perum Margahayu Jaya', '-', '85710112025', NULL, 'Dhimas Agung PRASETYA', 's1', 'Karyawan Swasta', 'Bekasi/ 10 Januari 1989', 'Ellen Rahmawati', 'S1 ', 'Ibu Rumah Tangga', 'Jakarta/ 17 Juni 1989'),
('SD0088', '202102088', '202102088', 'ALVARO VIDI', 'Tasikmalaya', '2015-02-01', 'L', '3SD', 2021, 'ALVARO', '3A', '14', '90', 'S', 'Cluster Asfa no. 14/ Jakamulya/ Bekasi Selatan', '81351937477', '82214502493', NULL, 'Kardi', 'S1', 'Swasta', 'Jakarta/ 3 April 1984', 'Vidya Ekaningtyas', 'S1', 'Dokter', 'Purwokerto/ 8 Oktober 1986'),
('SD0089', '202102089', '202102089', 'AMELIA HABIBATUL MUSTHAFA', 'Bekasi', '2015-09-02', 'P', '3SD', 2021, 'AMEL', '3B', NULL, NULL, NULL, 'Pondok Timur Mas Blok f1 No. 6 Jakasetia', '81225509168', NULL, NULL, 'Adi Hidayat', 'S2', 'Pengajar', 'Pandeglang/ 11 September 1984', 'Shufairok ', 'S1', 'Ibu Rumah Tangga', 'Rembang/ 13 Januari 1985'),
('SD0090', '202102090', '202102090', 'ANNISA SALWA NABILA LUBIS', 'Bekasi ', '2014-06-09', 'P', '3SD', 2021, 'SALWA', '3B', '20 Kg', '110 cm', 'L', 'Jl. Kenari I Blok A1 No 1 Pondok Pekayon Indah', '021-820 4713', '81807123686', NULL, 'Muhammad Fikri Ramdhani ', 'S1', 'Karyawan Swasta', 'Jakarta/ 13 Mei 1987', 'Livi Ayu Oktavia', 'S1', 'karyawan Swasta', 'Jakarta/ 30 Oktober 1987'),
('SD0091', '202102091', '202102091', 'AQILA SYUA ARYANTY ', 'BANDAR LAMPUNG ', '2017-01-04', 'P ', '3SD', 2021, 'AQILA ', '3B', '14', '95', 'L', 'PULO PERMATASARI BLOK A1 NO.19 ', '021-8202785', '815884849', NULL, 'ANDRI BUDHIANTO ', 'S1', 'PEGAWAI BUMN ', '08/25/1791', 'YURIA KARYANTI ', 'D3', 'Ibu Rumah Tangga', '29-Jul-75'),
('SD0092', '202102092', '202102092', 'AR SAKHA DZIKRY TAHER', 'Bekasi ', '2015-11-06', 'L', '3SD', 2021, 'SAKHA', '3A', '13', '87', 'L', 'PONDOK KUNING MAS I BLOK P NO. 3', NULL, '82122669198', '-', 'ISBUDI', 'D3', 'Karyawan Swasta ', '18-Oct-88', 'ADE KUSUMA WARDANI', 'S1 ', 'Ibu Rumah Tangga', '25-Aug-88'),
('SD0093', '202102093', '202102093', 'ATHALLAH MUSYAFFA ZAIN', 'Tangerang', '2016-06-06', 'L', '3SD', 2021, 'AMUZA', '3A', '19', '110', 'L', 'Jl. Swantantra II RT.07/05', '081296447097', '8129460700', NULL, 'Zainudin Triyatno', 'D3', 'Seniman', 'Jakarta 17 Oktober 1977', 'Sumaryati', 'S1 ', 'IRT', 'Jakarta 22 Maret 1984'),
('SD0094', '202102094', '202102094', 'GHAZIYAH MUMTAZAH ZAHRI', 'Medan', '2014-10-09', 'P', '3SD', 2021, 'GHAZIYA', '3B', '11 Kg', '-', 'L', 'Jl. Bronco 1 No D4/5 Kebantenan Indah Jatiasih', '-', '82214666011', NULL, 'Berlianto Haris', 'S2 ', 'Karyawan Maybank Syariah', 'Padang/ 26 Mei 1985', 'Sukma Faizah', 'S1', 'Ibu Rumah Tangga', 'Medan/ 4 Desember 1989'),
('SD0095', '202102095', '202102095', 'HANIFA ANINDYA PRAMESTI', 'BEKASI ', '2016-12-03', 'P ', '3SD', 2021, 'ANIN ', '3B', '11', '96', 'S', 'PERUM PULO PERMATASARI A4/17 ', '0218203302', '8121156778', NULL, 'DIMAS RADITYA ', 'S1', 'Karyawan Swasta ', '25-Jan-81', 'RIYANE RACHMAWATI ', 'S1 ', 'Karyawan swasta ', '9-May-80'),
('SD0096', '202102096', '202102096', 'JASMEENA IRFANNISA', 'Bekasi', '2015-08-10', 'P', '3SD', 2021, 'MEENA', '3B', '20 Kg', '107 cm', 'L', 'Cluster Rosella A7 Jl. Jatiluhur Raya No.117 Jakasampurna', '81511940000', '81511940000', NULL, 'Deni Irpan Helmi', 'S1', 'Wirausaha ', 'Tasikmalaya/ 15 Juni 1983', 'Prilia Lestari', 'S1', 'Karyawan Swasta', 'Cluster Rosella A7 Jl. Jatiluhur Raya No.117'),
('SD0097', '202102097', '202102097', 'KASTARA RIAN ANGKASA', 'Bekasi', '2016-01-05', 'L', '3SD', 2021, 'TARA', '3A', '18', '100', 'L', 'Pondok Pekayon Indah/ Blok B3 No. 7', '81806062013', '818964848', NULL, 'Surianto', 'S1', 'Swasta', 'Belawan/ 13 Mei 1980', 'Ratih Ferlianty', 'S1', 'Ibu Rumah Tangga', 'Jakarta/ 1 Juli 1978'),
('SD0098', '202102098', '202102098', 'KAYLA FATHIYYA ANDHARA SAPPHIRE', 'Jakarta', '2016-02-10', 'P', '3SD', 2021, 'KAYLA', '3B', NULL, NULL, NULL, 'Jl. Rawabebek No. 205 RT. 11/01 Pulogebang Jak-Tim', NULL, '82110069990', NULL, 'Andi', 'S1', 'Karyawan', 'Jakarta/14 Januari 1981', 'Khairia Mahdalena', 'S1', 'Ibu Rumah Tangga', 'Jakarta/ 12 Desember 1981'),
('SD0102', '202102102', '202102102', 'MUHAMMAD IBRAHIM RAHADIAN', 'Bekasi ', '2017-06-08', 'L', '3SD', 2021, 'IBRA', '3A', '19 Kg', '-', 'L/ XL', 'Jl. Duta VI Blok FF No. 8 Kemang Pratama', '-', '8997731084', NULL, 'Nugraha Arianto Putra', 'SMA', 'Karyawan Swasta', 'Jakarta/ 27 September 1999', 'Siti Rafifa Fahdina', 'D3', 'Karyawan Swasta', 'Palembang/ 24 Februari 1990'),
('SD0103', '202102103', '202102103', 'MUHAMMAD ZAFRAN JOBAN', 'JAKARTA', '2016-09-03', 'L', '3SD', 2021, 'ZAFRAN', '3A', '14/5', '92', 'S', 'PONDOK JINGGA MAS I BLOK F2 NO. 5', NULL, '81212701818', '-', 'RIZA WILHANSYAH', 'S1', 'Karyawan Swasta ', '18-Oct-90', 'EVA YULYANTI', 'S1 ', 'Ibu Rumah Tangga', '03-Jul-87'),
('SD0104', '202102104', '202102104', 'REZKY KHOIRY ABDIRRAHMAN', 'Magelang', '2015-10-06', 'L', '3SD', 2021, 'REZKY', '3A', '16', '110', 'M', 'Cluster Taman Firdausi Kav 3 Jatibening Baru', '081311502036', '81288636347', NULL, 'Daryatno Subekti', 'S1', 'PNS Pemprov DKI', 'Mataram 17 Agustus 1982', 'Indah Susanti', 'S1', 'IRT', 'Magelang 23 Desember 1990'),
('SD0105', '202102105', '202102105', 'SHAKILA ZIYA NAZURA', 'Bekasi ', '2015-02-08', 'P ', '3SD', 2021, 'ZIYA', '3B', '15', NULL, 'L', 'VILLA PEKAYON A3 NO. 4', NULL, '8156048582', '-', 'ZULKIFLI', 'S1', 'Karyawan Swasta ', '13-Oct-82', 'DITHIANE FARA FADILAH', 'S1 ', 'KARYAWATI SWASTA', '28-Jul-82'),
('SD0106', '202102106', '202102106', 'UWAIS AHZA RABBANI', 'Bekasi', '2017-04-06', 'L', '3SD', 2021, 'UWAIS', '3A', NULL, NULL, NULL, 'Cluster Intan Gardenia Blok B no 4. Jakasetia.', '81281349979', '81213332120', NULL, 'Wigih Laksana Yudha', 'S1', 'Karyawan Swasta', 'Tulung Agung/ 22 Juni 1984', 'Gendis Ryenda Melati Sekarini', 'D3', 'Pegawai BUMN', 'Bekasi/ 6 Januari 1988'),
('SD0108', '202102108', '202102108', 'BARI AHMAD MAKARIM', 'Jakarta', '2015-09-10', 'L', '3SD', 2021, 'BARI', '3A', '20 kg', '115 cm', 'M', 'PTM blok G2 no 1 A', '085218076715', '85260782581', 'm_donnys@yahoo.com', 'Muhammad Donny Satriawan', 'S1', 'Karyawan swasta', 'Jakarta/ 5 Oktober 1979', 'Irhami', 'S1', 'IRT', 'Lhokseumawe/ 26 Juli 1989'),
('SD0109', '202102109', '202102109', 'MUHAMMAD IRSYAD FAZA', 'Bekasi', '2016-04-03', 'L', '3SD', 2021, 'IRSYAD', '3A', NULL, NULL, NULL, 'Jl. Bintang Raya B. 6 Jakasetia Bekasi Selatan', NULL, '81318407676', NULL, 'Isfi Hendri', 'SLTA', 'Karyawan swasta', 'Payakumbuh/ 5 Februari 1977', 'Esi Endriani', 'SLTA', 'Karyawan swasta', 'Durian Kapas/ 1 Mei 1980'),
('SD0110', '202202110', '202202110', 'ABIMANYU IJLAL RAFIF', 'Sidoarjo', '2016-05-04', 'L', '2SD', 2022, 'ABI', '2A', '17/5 Kg', '-', '-', 'Villa Pekayon Blok A3 / 12', '-', '8122227520', NULL, 'Alifia Rahman', 'S1', 'Karyawan Swasta', 'Jember/ 11 Maret 1986', 'Ajeng IR', 'S1', 'PNS', 'Mojokerto/ 20 Januari 1987'),
('SD0111', '202202111', '202202111', 'ADARA HASYA AFIQAH', 'Bekasi', '2015-09-06', 'P', '2SD', 2022, 'ADARA', '2B', NULL, '104', NULL, 'Jl. Taman Agave IV M5/18 Taman Galaxi Bekasi', '08111901578', '8161845223', NULL, 'Mohammad Fikri', 'S2', 'Swasta', 'Jakarta 26 November 1977', 'Sofia Andam Dewi', 'S1', 'Swasta', 'P. Berandan 15 Februari 1977'),
('SD0112', '202202112', '202202112', 'ADNI AISHA NABIH', 'Surabaya', '2017-08-06', 'P', '2SD', 2022, 'ADNI', '2B', '11/2 Kg', '84 cm', 'S', 'Jl. Lembah Aren VI K7/14 Pondok Kelapa/ Duren Sawit. Jakarta timur', '85336035037', '82330037866', NULL, 'Zakariya Amirudin Al Aziz', 'S1', 'Karyawan Swasta', 'Nganjuk/ 11 Desember 1990', 'Vidya Nurina', 'S1', 'Karyawan Swasta', 'Pasuruan/ 20 Oktober 1991'),
('SD0113', '202202113', '202202113', 'ADZKIYA QALESYA ZAHSY', 'Bekasi', '2016-04-10', 'P', '2SD', 2022, 'QALESYA', '2A', '12/1 Kg', '88 Cm', NULL, 'Jl. Cendana IV no 18. Perumahan Jakapermai.', '82299992553', NULL, NULL, 'Erlangga Perwira N.', 'S1', 'Dokter', 'Bekasi/ 27 April 1991', 'Indah Dwi Rahmah', 'S1', 'Dokter', ' Jepara/ 17 September 1990'),
('SD0114', '202202114', '202202114', 'AIDIL HAMIZAN IBRAHIM PUSPANEGARA', 'Bekasi', '2014-04-10', 'L', '2SD', 2022, 'HAMIZAN', '2A', '12 Kg', '90 Cm', 'M', 'Jl. Pulo Sirih 8 GA 240 Taman Galaxy Indah', '021-8224808', '81294776399', NULL, 'Chandra Pakai Puspanegara', 'D3', 'IT Swasta', 'Bandung/ 3 Maret 1980', 'Feby Mahkota Arisandy', 'D3', 'Ibu Rumah Tangga', 'Palembang/ 4 Februari 1985'),
('SD0115', '202202115', '202202115', 'ALIFIANDRA HARUN AL RASYID', 'Jakarta', '2016-09-11', 'L', '2SD', 2022, 'ALIF', '2A', '0', '0', 'L', 'Jl. Nangka 4 No. 5 RT 004 RW 005. Kota Baru. Bekasi Barat. Bekasi. Jawa Barat', '081299366510', '081299366510', 'devihenri@gmail.com', 'Devi Henri Wibowo', 'S1', 'Karyawan swasta', 'Pekalongan/ 26 oktober 1988', 'Indah Purnamasari', 'S1', 'Karyawan Swasta', 'Jakarta/8 September 1988'),
('SD0116', '202202116', '202202116', 'ANNISA FARHANA SYAKIRA', 'Bekasi', '2016-02-05', 'P', '2SD', 2022, 'ANNISA', '2B', '18', '107', 'L', 'Komp. Masnaga Jl. Palem 5 Blok F no 997 Jaka Mulya Bekasi Selatan', '08121374410', '81315833952', NULL, 'Toto Rusmanto/Mcom/ PhD', 'S3', 'Dosen', 'Cirebon 20 Juni 1970', 'Yeni Noviana Sari', 'D3', 'Swasta', 'Jakarta 27 November 1979'),
('SD0117', '202202117', '202202117', 'ARYA BIMA WARDHANA', 'Jakarta ', '2018-04-01', 'L', '2SD', 2022, 'BIMA', '2A', '18', '103', 'M', 'Komp Grand Prima Bintara Blok B2 no 31 Bekasi Barat', '081311687587', '81937655758', NULL, 'Yususf Gustan Nawawi', 'S2', 'Wiraswasta', 'Jakarta 4 April 1984', 'Mira Tunjung', 'S1', 'IRT', 'Solo 15 Juni 1987'),
('SD0118', '202202118', '202202118', 'ATHIFA FARANISA AADYA', 'Bekasi', '2016-03-02', 'P', '2SD', 2022, 'ATHIFA', '2A', '12 Kg', '-', 'S', 'Jl. Gardenia Utara Blok B3 No. 20 Jakasetia/ Bekasi', '-', '8568011756', NULL, 'Ferra Rahadian', 'S2', 'Karyawan Swasta', 'Semarang/ 9 Juni 1987', 'Ranti Yunizar', 'S1', 'Karyawan Swasta', 'Jakarta/ 4 Juni 1989'),
('SD0119', '202202119', '202202119', 'AZKA ADHYASTHA BOEMI', 'Bekasi', '2017-10-02', 'L', '2SD', 2022, 'AZKA', '2B', '13/2 Kg', '90 Cm', 'M', 'Perumahan Deminimalist Blok C no 10', '021-28088013', '87780212919', NULL, 'Didik Tri Hartadi', 'S1', 'Karyawan Swasta', 'Bekasi/ 3 November 1984', 'Hani Farahani', 'S1', 'Karyawan Swasta', 'Serang/ 15 Maret 1979'),
('SD0120', '202202120', '202202120', 'DANICA CALISTA PUTRI', 'PAMULANG', '2016-12-04', 'P', '2SD', 2022, 'DANICA', '2B', '14', '98', 'S', 'JL. KETAPANG 5 BLOK DD38 NO.17 PD PEKAYON INDAH', '021-8207702', '8170700709', NULL, 'DONI YAHYA', 'S1', 'WIRASWASTA', 'JAKARTA/ 5-Feb-80', 'DEWI MONICA', 'S1', 'SWASTA', 'JAKARTA/ 17-JUN-82'),
('SD0121', '202202121', '202202121', 'DAVIN ARYANARESWARA ALZAIDAN', 'Bekasi', '2018-06-01', 'L', '2SD', 2022, 'DAVIN', '2A', NULL, NULL, NULL, 'Griya Metropolitan 2 Blok E5 No.3 Pekayon Bekasi Selatan Kota Bekasi', NULL, '82133183060', NULL, 'Ari Agung Prihandoyo', 'S2', 'Karyawan Swasta', 'Boyolali/ 7 Januari 1989', 'Widya Ariaty', 'S1', 'Dokter Umum', 'Palembang/ 7 Juli 1988'),
('SD0122', '202202122', '202202122', 'FAUZAN AL FATIH', 'Bekasi', '2017-05-12', 'L', '2SD', 2022, 'FAUZAN', '2B', '10/5 Kg', '-', 'M', 'Taman Cikas Jl. Boulevard Raya Blok A4 no. 3', '-', '815842008976', NULL, 'Wisnu Widodo', 'D3', 'Karyawan Swasta', 'Malang/ 17 September 1983', 'Lindiawati', 'S1', 'Ibu Rumah Tangga', 'Jakarta/ 29 Desember 1982'),
('SD0123', '202202123', '202202123', 'HAFIZ FIKRI MUBAROK', 'Purwakarta', '2015-12-08', 'L', '2SD', 2022, 'HAFIZ', '2B', '12 kg', '100 cm', 'S', 'JL.AMARILIS 1 BLOK AH.26 KEMANG PRATAMA 2 BEKASI/ KEL.BOJONG RAWALUMBU', '081320119880', '081320119880', 'zacky_ii@yahoo.com', 'Zaki mubarok', 'S2', 'Wiraswasta', 'Tanggerang/10 Januari 1980', 'mirna Komalasari', 'S1', 'IRT', 'Bandung/15 Juni 1982'),
('SD0124', '202202124', '202202124', 'KHILYA ADZKIYA', 'Bekasi', '0001-01-01', 'P', '2SD', 2022, 'KHILYA', '2A', NULL, NULL, NULL, '[NULL]', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('SD0125', '202202125', '202202125', 'LAODE MUHAMAD ALFATIH BAKTI', 'Batam', '2017-03-02', 'L', '2SD', 2022, 'LAODE', '2A', '0', '0', 'S', 'Jl. Penegak 1 no.75 Rawa Lumbu Bekasi', '0', '0811858554/085668074991', 'lmbqkti@gmail.com', 'Laode Muhamad Bakti', 'S1', '0', 'Yogyakarta/14 Nov 1981', 'Puspa Sari Anggraini', 'S1', 'IRT', 'Jakarta/ 1 July 1982'),
('SD0126', '202202126', '202202126', 'MAYESHA KENZIE NAGIDA', 'Bekasi', '2017-10-01', 'P', '2SD', 2022, 'ZIZIE', '2A', '18 kg', '114 cm', 'S', 'Jalan Narogogn Jaya 5 D62 No.4', '0', '081284547404/0817332300', 'dinia1908@gmail.com', 'Martino Gusman', 'D3', 'Karyawan swasta', 'Jakarta/21 Agustus 1989', 'Dini Angkola', 'S1', 'IRT', 'Jakarta/19 Agustus 1989'),
('SD0127', '202202127', '202202127', 'MUHAMMAD ELVARO RAFARDHAN', 'Bekasi', '2017-04-07', 'L', '2SD', 2022, 'FARDHAN', '2B', NULL, NULL, NULL, 'Taman Cikas Blok C 14 No. 16/ Pekayon Jaya/ Bekasi Selatan/ 17148', NULL, NULL, NULL, 'Rama Bagus Perkasa', NULL, 'Karyawan BUMN', NULL, 'Nadia Imaniar Sidqon', NULL, 'Dokter / Ibu Rumah Tangga', NULL),
('SD0128', '202202128', '202202128', 'MUHAMMAD FITRAH ABDURRAHMAN', 'Bekasi', '2017-06-06', 'L', '2SD', 2022, 'FITRAH', '2B', '14', NULL, 'M', 'Jl. Lumbu Barat 2 B no.77 Kel. Bojong Rawalumbu Bekasi', '085777931736', '85775333210', NULL, 'Fuad Muhammad Muhsin', 'S1', 'Swasta', 'Jakarta 9 oktober 1981', 'Ersa Setiati', 'S1', 'Dokter', 'Jakarta 31 Agustus 1986'),
('SD0129', '202202129', '202202129', 'MUHAMMAD KELLEN AZIZAN KAREEM', 'Jakarta', '2017-03-06', 'L', '2SD', 2022, 'KELLEN', '2A', ' 14/1 Kg', '90', 'L', 'Perumahan Green Leaf Blok 6 No.1 Jl. Suluki Cempaka Jatibening', '-', NULL, NULL, 'Mohamad Abang (Alm)', NULL, NULL, NULL, 'Asmawati', 'D3', 'Swasta', 'Paniai/ 15 Agustus 1983'),
('SD0130', '202202130', '202202130', 'RAFIF AUFA PASARIBU', 'Bekasi', '2016-03-06', 'L', '2SD', 2022, 'RAFIF', '2B', '18', '143', 'L', 'Villa Jakasetia Blok H no 3 Bekasi', '0811873548', '811810791', NULL, 'Romi Adlan Pasaribu', 'S1', 'Swasta', 'Plaju 22 April 1973', 'Devi Leonisa Niko', 'D3', 'IRT', 'Jakarta 15 Agustus 1977'),
('SD0131', '202202131', '202202131', 'SULTHAN BASKORO PRIYANANTA', 'Bekasi', '2017-04-02', 'L', '2SD', 2022, 'SULTHAN', '2B', '13 Kg', '-', 'M', 'Pondok Pekayon Indah Jl. Ketapang VI Blok DD43 No.7 Bekasi ', '021-8205770', '85887154536', NULL, 'Berliyanto', 'S2', 'Dosen', 'Jakarta/ 12 Juni 1988', 'Kalia Barnita', 'S2', 'Ibu Rumah Tangga', 'Jakarta/ 07 Februari 1989'),
('SD0132', '202202132', '202202132', 'THARIQ ZIYAD ABDURRAHMAN', 'Jakarta ', '2016-02-06', 'L', '2SD', 2022, 'THARIQ', '2A', '16', NULL, 'M', 'Jl. Lembah Aren X Blok K16/21 Kav DKI RT.02/09 Pondok Kelapa Jakarta', '08568806057', '8121043828', NULL, 'Adhib Rakhmanto', 'S1', 'Swasta', 'Kulon Progo 1 September 1987', 'Sefty Kurnadia Weny', 'S1', 'IRT', 'Jakarta 12 Februari 1986'),
('SD0134', '202202134', '202202134', 'ZARIN AYU SHIDQIA', 'Bekasi', '2016-01-11', 'P', '2SD', 2022, 'ZARIN', '2B', '12 Kg', '90 Cm', 'M', 'Jl. Cikunir Raya no 101 RT 01/RW 02. Jakamulya', '85718697759', '85728238923', NULL, 'Budi Yatmoko', 'SMP', 'Wiraswasta', 'Sragen/ 8 Agustus 1985', 'Diah Ayu Puspitarini', 'SMK', 'Ibu Rumah Tangga', 'Sragen/ 20 Mei 1992'),
('SD0135', '202202135', '202202135', 'DEVA HAFIDZ YUKITAMA', ' BEKASI', '2015-11-10', 'L', '2SD', 2022, 'DEVA', '2A', '10  kg', ' 110 cm', NULL, ' Jalan Bintara 14 Gang HM Tohir 3 Rt.001/009 No.133K Bekasi Barat 17134', ' -', '8999293580', ' yuktika4januari@gmail.com', ' BIMA WIBAWA ADITAMA', ' S1 TEKNIK', ' SALES ENGINEER', 'Sabang/ 26 September 1991', ' YUKTIKA', ' S1 TEKNIK', ' KARYAWATI', 'Jakarta/ 17 Oktober 1990'),
('SD0136', '202202136', '202202136', 'SHANUM ALULA RINJANI', ' Bekasi', '2018-06-09', 'P', '2SD', 2022, 'SHANUM', '2B', ' ', ' ', NULL, ' Komplek AL/Kemang Ifi Graha Jl. Bonang Baru I Blok A2 No. 17B', '218205771', '82112021461', ' infobagus.sls@gmail.com', ' Bagus Marta Yulian', ' ', ' ', 'Jakarta/ 19 Mei 1991', ' Herlin Devianti', ' S2', ' Wiraswasta', 'Bekasi/ 24 Desember 1987'),
('SD0137', '202202137', '202202137', 'ADELIA AINUNNISA ASYARI', ' Bandung', '2016-04-10', 'P', '2SD', 2022, 'DELLE', '2B', ' 16/20 kg', '110 cm', NULL, ' Pondok Timur Mas (PTM)/ Jl. Pondok Mas Raya/ Blok A/ Nomor 5.', ' -', '8562329397', ' abungasyari@gmail.com', ' Abung Asyari', ' S2', ' Karyawan Swasta', 'Cibinong/ 31 Maret 1981', ' Ingrid Larasati Agustina', ' S3', ' Karyawan Swasta', 'Jakarta/ 21 Januari 1983'),
('SD0138', '202202138', '202202138', 'MUHAMMAD AL FATIH PUTRA KAUTSAR', ' JAKARTA', '2016-05-12', 'L', '2SD', 2022, 'AL FATIH', '2A', '22 kg', '110 cm', NULL, ' JL.KAYUMANIS VIII RT.015 RW.007 NO.81 MATRAMAN JAKARTA TIMUR 13130', ' 021-21012958', '81383276969', ' adiachmadkautsaruigundaryai@gmail.com', ' ACHMAD KAUTSAR/ S.SOS/ S.E', ' S-1', ' KONSULTAN', 'Jakarta/ 19 November 1977', ' LINA MARLINA', ' SMA', ' IBU RUMAH TANGGA', 'Garut/ 6 Juli 1986'),
('SD0139', '202202139', '202202139', 'CALLYSTA RAFIFA AZZAHRA', ' Bekasi', '2015-09-04', 'P', '2SD', 2022, 'CHATTA', '2A', NULL, ' 117cm', NULL, ' Jl. Sersan Idris No.128 Rt.003/Rw.003 Kelurahan Margajaya/ Kecamatan Bekasi Selatan. 17141', ' -', '81317325215', ' imelramadhania17@yahoo.com', ' Panji Dewantoro', ' S1', ' Karyawan Swasta', 'Bandung/ 02 April 1988', ' Imel Ramadhania', ' S1', ' Karyawan BUMD', 'Bekasi/ 15 Mei 1988'),
('SD0140', '202202140', '202202140', 'FATIMAH AZIZAH ARIDIA', ' Jakarta', '2017-07-01', 'P', '2SD', 2022, 'AZIZAH', '2B', ' ', ' ', NULL, ' Perumahan Taman Century 1 Blok N2 Pekayon', ' -', '81298137228', ' superiyan@gmail.com', ' Riyan Tamara', ' S2', ' Karyawan', 'Jakarta/ 28 April 1981', ' Diana Tri Amelia', ' S1 Kedokteran', ' Ibu Rumah Tangga', 'Payakumbuh/ 23 Maret 1983'),
('SD0141', '202202141', '202202141', 'MUHAMMAD ZAIDAN ALTHAFARIZQI', ' Bekasi', '2018-06-05', 'L', '2SD', 2022, 'ZAIDAN', '2B', '17 kg', ' 110 cm', NULL, ' Bintara jaya IV no 13H', '218479922', '87822392644', ' dinahgiyanti@gmail.com', ' Muhamad Khadapi', ' S1', ' Wiraswasta', 'Jakarta/ 12 April 1988', ' Dinah giyanti ruwaida', ' S1', ' Karyawan swasta', 'Jakarta/ 4 Juni 1988'),
('SD0142', '202202142', '202202142', 'KHAFIF FATIH HANIFA', 'Cimahi', '2017-01-09', 'L', '2SD', 2022, 'KHAFIF', '2A', '19.5 kg', '110 cm', NULL, 'Komp. Padasuka Indah B-40/ Padasuka/ Cimahi Tengah/ Cimahi', ' -', '8111010610', ' ahmadzakyramdani@gmail.com', 'Ahmad Zaky Ramdani', 'S2 Tekhnik Elektronika', 'Karyawan Swasta', 'Bandung/ 17 April 1989', 'Ratih Aflita Rahmawati', 'S1 (informatika)', 'Mahasisswa S2/ IRT', 'Cimahi/ 10 Oktober 1992'),
('SD0143', '202202143', '202202143', 'QONITA FAUZAN', 'Tegal', '2016-12-12', 'P', '2SD', 2022, 'QONITA', '2A', NULL, NULL, NULL, '[NULL]', NULL, NULL, NULL, 'Fauzan Bawazir', NULL, NULL, NULL, 'Tantri Novita Sari', NULL, NULL, NULL),
('SD0145', '202202144', '202202144', 'MUHAMMAD ABQARY GIBRAN ADZIM', 'Jakarta', '2015-02-09', 'L', '2SD', 2022, 'GIBRAN', '2B', '14 kg', '105 cm', 'M', 'Perumahan Pondok Cipta Blok E no.35 / Bintara/ Bekasi', '0', '081288738100/087724213524', 'agyfauzul@gmail.com', 'Muhammad Fauzul Adzim', 'SLTA', 'Wiraswasta', 'Jakarta/9 Maret 1981', 'Rizka Fadhila', 'S1', 'Apoteker', 'Bukit tinggi/ 22 Januari 1988'),
('SD0146', '202202145', '202202145', 'KENZO ANDINOV SAAD SUHARJO', 'Jakarta', '2016-08-09', 'L', '2SD', 2022, 'KENZO', '2A', '24 kg', '117 cm', NULL, 'Jl bintara jaya 8 rt 03/09 kavling c10 bintara jaya bekasi barat', NULL, '081398888165/087777788410', 'loidsteelinternational@gmail.com', 'Andi winoto', 'S1', 'Wiraswasta', 'Jakarta/ 2 April 1984', 'Novi wulandari', 'S1', 'IRT', 'Bekasi / 1 Nov 1989'),
('SD0147', '202302001', '202302001', 'ZIDANE BHUMI ARRAZI', 'Bekasi', '2017-04-08', 'L', '1SD', 2023, 'BHUMI', '1B', '19 kg', '105 cm', NULL, 'Jalan Jatiluhur Raya 117/ Cluster Rosella Blok Arelian No.6 Rt.2/3 Jakasampurna Berkasi Barat 17145', NULL, '081717756111', 'shirofah89@gmail.com', 'Muhammad Arif Sulaiman', 'S2 - Ilmu Hukum', 'Lawyer', 'Aceh Timur/ 7 Nov 1983', 'Sitti Musyarrafah', 'S1 - Psikologi Pendidikan', 'IRT', 'Jakarta/ 18 Januari 1989'),
('SD0148', '202302002', '202302002', 'ZILLJIZAN SEFERAGIC ZIDNI ILMA', 'Jakarta', '2018-03-01', 'L', '1SD', 2023, 'JIZAN', '1B', '11 kg', '90 cm', NULL, 'griya kemang raya no.91 . jl kemang raya. jaticempaka bekasi', NULL, '087887991901', 'dinarputripratiwi@gmail.com', 'urida zidni ilma', 'S1 - teknik elektrp', 'swasta', 'Semarang/ 11 Juni 1987', 'dinar putri pratiwi', 's1 - pendidikan anak usia dini', 'IRT', 'Palembang/ 22 Agustus 2009'),
('SD0149', '202302003', '202302003', 'MUHAMMAD ADHYASTHA ALFAREZEL', 'Jakarta', '2018-03-10', 'L', '1SD', 2023, 'DHYAS', '1A', '17 kg', '100 cm', NULL, 'Jl. Pulo sirih tengah 13 blok ea 390', NULL, '081286382262', 'widiyogop@gmail.com', 'Widi Yogo Pratomo', 'S1 Akuntansi Univ. Gunadarma', 'PNS', 'Jakarta/4 Nov 1988', 'Elin Septiana', 'S1 Akuntansi Univ. Gunadarma', 'IRT', 'Lebak/ 22 September 1990'),
('SD0150', '202302004', '202302004', 'FAYZA ALESHA DESWINATA', 'Bandar Lampung', '2017-02-06', 'P', '1SD', 2023, 'FAYZA', '1B', '24 kg', '117 cm', NULL, 'Pondok surya mandala. Jl surya permata XIII blok Y-1 no 9/ RT. 13/13/ jakamulya 17146 bekasi selatan', NULL, '08112267905', 'genkiacmilan@gmail.com', 'Genki Judawinata', 'S1 UNPAD', 'Swasta', 'Bandung/ 25 Oktober 1990', 'Ade Desnia', 'S1 UNPAD', 'PNS', 'Bandar Lampung/ 28 Desember 1991'),
('SD0151', '202302005', '202302005', 'AUDREY LASHIRA PRADITYATAMA', 'Bekasi', '2019-05-04', 'P', '1SD', 2023, 'AUDREY', '1A', '15 kg', '110 cm', NULL, 'Jl Pulo Sirih Tengah 15 Blok EA 302/ Perum Taman Galaxy Indah/ Pekayon Jaya/ Bekasi Selatan', NULL, '081219500151', 'anggarapradityatama@gmail.com', 'Anggara Pradityatama', 'S1 - Sarjana Komunikasi/ London School of Public Relation Jakarta', 'Swasta', 'Bogor/ 16 Desember 1991', 'Siti Angginami Sadida Pane', 'S1 - Sarjana Ekonomi Universitas Bina Nusantara', 'Swasta', 'Jakarta/ 6 Juni 1992'),
('SD0152', '202302006', '202302006', 'ABDURRAHMAN AKHYAR ALFATIH', 'Jakarta', '2017-02-06', 'L', '1SD', 2023, 'FATIH', '1B', '20 kg', '120 cm', NULL, 'Cluster Intan Gardenia No. A4/ Jakasetia/ Bekasi Selatan', NULL, '081212969604', 'feronalizaazis@gmail.com', 'Heru Oktaviana', 'SI - Administrasi Niaga UI', 'Swasta', 'Kuningan/ 10 April 1986', 'Ferona Liza', 'S1 / Sarjana Ekonomi STEKPI', 'IRT', 'jakarta/ 2 September 1988'),
('SD0153', '202302007', '202302007', 'AISYAH SYAFIQAH PUTRI', 'Jakarta', '2018-05-05', 'P', '1SD', 2023, 'FIQAH', '1B', '17 kg', '90 cm', NULL, 'Vila jaka setia blok A No.A No 5', NULL, '089661796021', 'faqihsentosa@gmail.com', 'Rachmad sentosa', 'D 3', 'Wirausaha', 'Jakarta/ 30 Januari 1987', 'Nur aini', 'Smu', 'IRT', 'Jakarta/ 19 Agustus 1988'),
('SD0154', '202302008', '202302008', 'SHOFIYAH JENNAIRA MUWAFFAQAH', 'Bekasi', '2018-03-05', 'P', '1SD', 2023, 'JENNA', '1A', '20 kg', '110 cm', NULL, 'Cikunir/ Jalan H.Mitar no 63 RT 05 RW 02 Kelurahan Jakamulya Kecamatan Bekasi Selatan Kota Bekasi', NULL, '087887579527', 'afriliasuryanis@gmail.com', 'Cahyo Kurniawan', 'S1-Ilmu Hukum', 'Swasta', 'Jakarta/ 14 Maret 1988', 'Afrilia Suryanis', 'S1-Ilmu Komunikasi', 'Jurnalis', 'Jakarta/ 20 April 1989'),
('SD0155', '202302009', '202302009', 'ABIDZAR RAFFASYA RIFA MAHARI', 'Bekasi', '2018-02-01', 'L', '1SD', 2023, 'ABIDZAR', '1A', '18 kg', '119 cm', NULL, 'The Green View A29 galaxy', NULL, '081218182124', 'ririnroska@gmail.com', 'Faisal', 'S1 - ekonomi', 'Swasta', 'Aceh/ 24 November 1975', 'Ririn Roska', 'D3 - Manajemen', 'IRT', 'karang Anyar/ 19 November 1982'),
('SD0156', '202302010', '202302010', 'SHANUM QUEENSHA ARIFIN', 'Bekasi', '2016-10-04', 'P', '1SD', 2023, 'SHANUM', '1A', '27 kg', '123 cm', NULL, 'Komplek pemda jl cemara 1 blok a5 no 15 jati asih bekasi', NULL, '085643910060', 'arifinkritingg@gmail.co.id', 'Arifin', 'S1 teknik mesin ums', 'Swasta', 'Demak/ 5 November 1984', 'Happy meilani', 'S1 ekonomi UNS', 'IRT', 'Sragen/ 27 Mei 1989'),
('SD0158', '202302012', '202302012', 'AUFA RASYID', 'Bandar Lampung', '2018-02-05', 'L', '1SD', 2023, 'AUFA', '1B', '23 Kg', '130 cm', NULL, 'Pondok Pekayon Indah Blok A8 No. 16 Jl. Cendrawasih II Bekasi Selatan', NULL, '081294326789', 'alvinhidayatullah@gmail.com', 'Alvin Hidayatullah', 'S1', 'Wirausaha', 'Jakarta/ 5 Desember 1984', 'Rio Ulfia Hardianti', 'S1', 'IRT', 'Jombang/ 1 Januari 1991'),
('SD0159', '202302013', '202302013', 'KHALISA SYAFA DARA SISPUTRA', 'Jakarta', '2016-09-07', 'P', '1SD', 2023, 'KHALISA', '1A', '18 kg', '101 cm', NULL, 'Perumahan Villa Mas Indah Blok A2 nomer 11 Kelurahan Perwira Kecamatan Bekasi utara', NULL, '081319766555', 'Rama_sisputra@yahoo.com', 'Rama Sisputra', 'S1', 'Wirausaha', 'Jakarta/ 23 Juni 1987', 'Mufida Melati putri', 'S1', 'IRT', 'Surabaya/ 2 Mei 1994'),
('SD0160', '202302014', '202302014', 'KENZO AKBAR NATAWIDJAJA', 'Jakarta', '2018-12-01', 'L', '1SD', 2023, 'KENZO', '1A', '20 kg', '120 cm', NULL, 'Cluster rosella blok K 5b', NULL, '087887270766', 'yudhitya.sn@gmail.com', 'Yudhitya Sjarief Natawidjaja', 'S1', 'Swasta', 'Jakarta/ 21 September 1990', 'Khen madona', 'S1', 'Swasta', 'Jakarta/ 12 Desember 1989'),
('SD0161', '202302015', '202302015', 'ADZKIA FARANISA AYU', 'Temanggung', '2017-05-06', 'P', '1SD', 2023, 'KIA', '1B', '16 Kg', '110 Cm', NULL, 'Perumahan Margahayu Blok A Jl. Cemara 1', NULL, '081288680182', 'tatang.arifin@yahoo.com', 'Tatang Arifin', 'S1', 'Swasta', 'Ciamis/ 4 Juni 1982', 'Indah Eka Septiana', 'SLTA', 'IRT', 'Magelang/ 18 September 1989'),
('SD0162', '202302016', '202302016', 'KANAYA ALESHA DZIKRA', 'Bekasi', '2018-06-04', 'P', '1SD', 2023, 'KANAYA', '1B', '20 kg', '115 cm', NULL, 'Rawalumbu', NULL, '089618478533', 'danidaru5m4n@gmail.com', 'Dani Darusman', 'S1 administrasi publik', 'Wirausaha', 'Ciamis/ 3 Januari 1988', 'Tati kurniati', 'S1 sarjana syariah', 'IRT', 'Sumedang/ 29 Februari 1988'),
('SD0163', '202302017', '202302017', 'SOFIE ALMAHYRA SAKHI', 'Serang', '2017-09-05', 'P', '1SD', 2023, 'SOFIE', '1B', '17 kg', '115 cm', NULL, 'PERUM PONDOK TIMUR MAS BLOK F1 NO 6 BEKASI SELATAN', NULL, '081287978451', 'putraica@gmail.com', 'ICA PUTRA', 'D3', 'SWASTA', 'PANGKALPINANG BANGKA BELITUNG/ 25 Januari 1986', 'ITA HARYATI', 'D3', 'Swasta', 'PANDEGLANG/ 21 Mei 1986'),
('SD0164', '202302018', '202302018', 'KHANSA FAHIMA SULTANSYAH', 'BEKASI', '2007-04-01', 'P', '1SD', 2023, 'KHANSA', '1A', '22 kg', '122 cm', NULL, 'Perum Jatibening 2 Jl.Hanjuang IV atas no.63A Rt.06/Rw.03 Pondok Gede Jt Bening Bekasi/ 17412', NULL, '082213606865', 'rizkiturki@gmail.com', 'RIZKI APRIANSYAH', 'S1 - AGAMA ISLAM / ISTANBUL TURKI', 'GURU / PENERJEMAH BAHASA TURKI', 'Jakarta/ 17 April 1992', 'DHEANITA TRIBUANA', 'S1 - FAK.EKONOMI GUNADARMA', 'IRT', 'Jakarta/ 8 April 1991'),
('SD0165', '202302019', '202302019', 'MAAJED AHMAD HILABI', 'Bekasi', '2017-05-01', 'L', '1SD', 2023, 'MAAJED', '1A', '20 kg', '115 cm', NULL, 'Jl. Lembah Palem V Blok J7 no 11 pondok kelapa Jaktim', NULL, '085101712989', 'madorgiv@gmail.com', 'Ahmad Lutfi Hilabi', 'D1 - Desain Grafis', 'Wirausaha', 'Jeddah/ 26 Agustus 1985', 'Nadra Husein Aziz', 'S1 - Sastra Inggris', 'Guru', 'Jeddah/ 3 Juni 1985'),
('SD0166', '202302020', '202302020', 'MUHAMMAD HANIF MAULANA TURSADI', 'Jakarta', '2017-03-01', 'L', '1SD', 2023, 'HANIF', '1A', '18 kg', '100 cm', NULL, 'Green Jati Asih No. A3 Jl. Subur 1 Komp Pemda Blok B/ Jati Asih Bekasi', NULL, '08595922517', 'danie_282@yahoo.com', 'Danie Febriansyah Tursadi', 'S1', 'Swasta', 'Bekasi/ 28 Februsri 1974', 'Maya Safira', 'D3', 'IRT', 'Bandung/ 26 September 1977'),
('SD0167', '202302021', '202302021', 'MUHAMMAD ANDISTRA ZAYN AS SUDAIS', 'Jakarta', '2016-09-02', 'L', '1SD', 2023, 'ZAYN', '1B', '17 kg', '110 cm', NULL, 'Jl. Rawabebek Gg. Norin RT. 11 RW. 01 No. 205 Kel. Pulogebang Kec. Cakung Jakarta Timur 13950', NULL, '082110069990', 'and1rahman24@yahoo.com', 'Andi', 'S1 - Sarjana Hukum', 'Swasta', 'Jakarta/ 14 Januari 1981', 'Khairia Mahdalena', 'S1 - Sarjana Ekonomi', 'IRT', 'Jakarta/ 12 Desember 1981'),
('SD0168', '202302022', '202302022', 'MUHAMMAD NABIL RAZAN PUSPANEGARA', 'Bekasi', '2016-09-08', 'L', '1SD', 2023, 'NABIL', '1B', '16 kg', '119 cm', NULL, 'Jl pulo sirih timur 8 ca 240 taman galaxy indonesia', NULL, '0817173380', 'febymahkotasandy@gmail.com', 'chandra paksi puspanegara', 'D3', 'Swasta', 'Bandung/ 3 Maret 1980', 'Feby mahkota arisandy', 'D3', 'IRT', 'Palembang/ 2 April 1985'),
('SD0169', '202302023', '202302023', 'HAWWA ANINDYA BARRAH', 'Banyumas', '2017-12-04', 'P', '1SD', 2023, 'BARRAH', '1A', '27 kg', '120 cm', NULL, 'Jl Pandu Dewanata Blok 4 No 30 RT 04 RW 21 Perumahan Bumi Satria Kencana Kelurahan Kayuringin Jaya Bekasi Selatan', NULL, '081234560602', 'hr.firmanzah@gmail.com', 'Harry Firmanzah', 'S1 - Sarjana Ekonomi ABFI Perbanas', 'Karyawan BUMN', 'Bekasi/ 2 Juni 1986', 'Bekti Endah Pamuji', 'S1 - Sarjana Farmasi Muhammadiyah Purwokerto', 'IRT', 'Cilacap/ 9 Desember 1986'),
('SD0170', '202302024', '202302024', 'MUHAMMAD MALIQ AS SUDAIS', 'Bekasi', '2018-06-02', 'L', '1SD', 2023, 'MALIQ', '1A', '21 kg', '110 cm', NULL, 'Cluster Taman Firdausi no 17 Jatibening', NULL, '08159990012', 'septa.faishal@gmail.com', 'Septa Faishal Ismail', 'S1 komputer', 'Swasta', 'Plaju/ 24 September 1982', 'Liyan Fitriyani', 'S1 komunikasi', 'IRT', 'Sumedang/ 6 Maret 1986'),
('SD0171', '202302025', '202302025', 'SALMAN ARRIZKY KURNIAWANTO', 'Bekasi', '2016-06-01', 'L', '1SD', 2023, 'SALMAN', '1A', '16 kg', '120 cm', NULL, 'Jl Jalak Blok DDIII no.8/ Pondok Pekayon Indah/ Pekayon Jaya/ Bekasi Selatan', NULL, '085884973408', 'kurniawanto.84@gmail.com', 'Kurniawanto', 'S1 - Sarjana Teknik ITS', 'Wirausaha', 'Bekasi/ 30 Desember 1984', 'Nanin Wailisahalong', 'S1 - Sarjana Teknik ITS', 'IRT', 'Surabaya/ 29 Januari 1985'),
('SD0172', '202302026', '202302026', 'GHADIYA AVA MARIAM', 'Jakarta', '2018-04-04', 'P', '1SD', 2023, 'GHADIYA', '1B', '20 kg', '117 cm', NULL, 'Jln Pondok Merah Mas Blok D1 No. 10', NULL, '08111074975', 'genta.moerita@gmail.com', 'Sunny Aulia', 'S1-Sarjana Pendidikan Arsitektur', 'Swasta', 'Tanggerang/ 6 Juli 1988', 'Genta Moerita', 'S2-Master Of Business Administration', 'Swasta', 'Padang/ 28 Desember 1987');
INSERT INTO `siswa` (`c_siswa`, `nis`, `nisn`, `nama`, `temlahir`, `tanglahir`, `jk`, `c_kelas`, `thn_join`, `panggilan`, `c_klp`, `bbadan`, `tbadan`, `ukuran_baju`, `alamat`, `telp`, `hp`, `email`, `nama_ayah`, `pendidikan_a`, `pekerjaan_a`, `ttl_a`, `nama_ibu`, `pendidikan_i`, `pekerjaan_i`, `ttl_i`) VALUES
('SD0173', '202302027', '202302027', 'MARYAM KHALISA ARSFA', 'Bekasi', '2018-10-01', 'P', '1SD', 2023, 'MARYAM', '1A', '16 Kg', '112 cm', NULL, 'Jl pulo sirih barat 7 blok fe no 408', NULL, '082110232231', 'aristiaandana@gmail.com', 'Farid Rafli putra', 'S2-Manajemen Bisnis', 'Karyawan swasta', 'Pekanbaru/ 7 Agustus 1990', 'Aristia andana putri', 'S1-Sarjana Teknik', 'IRT', 'Kendari/ 4 November 1990'),
('SD0174', '202302028', '202302028', 'ALNATH ADREENA NURVIA', 'Bekasi', '2017-04-06', 'P', '1SD', 2023, 'ALNATH', '1B', '18 kg', '113 cm', NULL, 'Vila Jaka Setia/ blok B no 7. Bekasi Selatan', NULL, '081310326503', 'nurdin_2007@yahoo.co.id', 'Mohamad Nurdin', 'S1 - Sarjana kelautan (Nautica II)', 'Pelaut', 'Tegal/ 21 Januari 1985', 'Dwi Nivianti', 'S1 - Sarjana Komunikasi (public relation)', 'Wirausaha', 'Jakarta/ 8 Desember 1987'),
('SD0175', '202302029', '202302029', 'MUHAMMAD KALE ALTAIR', 'Batam', '2019-02-06', 'L', '1SD', 2023, 'KALE', '1A', '16 kg', '98 cm', NULL, 'Perumahan puri harapan jl.Enau 3 Blok E 9 no.32 Rt 06/Rw 016 setia Asih bekasi', NULL, '081277828383', 'Altairkale17@gmail.com', 'Harto', 'SMK / sederajat', 'TNL AL', 'Magetan/ 18 Juni 1987', 'Meliana siska E', 'SmK - sedang kuliah', 'Pengajar (metode Qiroati)', 'Cilacap/ 14 Maret 1989'),
('SD0176', '202302030', '202302030', 'ATQEEA SYBILL HENDRAWAN', 'Bekasi', '2017-09-04', 'P', '1SD', 2023, 'QIA', '1A', '17 kg', '120 cm', NULL, 'Jln.pulau yapen 16 no 240', NULL, '081380466922', 'afadjrahannisa@gmail', 'Ade Putra Hendrawan', 'SLTA', 'Wirausaha', 'Saning Bakar/ 28 Juni 1984', 'Hannisa Afadjra', 'SLTA', 'IRT', 'Saning Bakar/ 29 Juli 1990'),
('SD0177', '202302031', '202302031', 'ABU AL BIRUNI IBRAHIM SUHADA', 'Bekasi', '2018-11-02', 'L', '1SD', 2023, 'BIRRU', '1B', '18/2 kg', '112 cm', NULL, 'Cluster Lavesh SA5.16 no 12 Setia Asih - Tarumajaya - Bekasi', NULL, '08118416666', 'ahmadcs89@gmail.com', 'Ahmad Chaerus Suhada', 'S1 - Sarjana Statistika IPB', 'Swasta', 'Bekasi/ 3 Oktober 1989', 'Puspalia Ayudiar Setiawati', 'S1 - Sarjana Statistika IPB', 'IRT', 'Sumedang/ 10 Maret 1990'),
('SD0178', '202302032', '202302032', 'FATHAN ARSYA GUNAWAN', 'SEMARANG', '2017-09-12', 'L', '1SD', 2023, 'FATHAN', '1A', '28 kg', '125 cm', NULL, 'Jl. SMARTHOUSE NO 28 GREENWOOD SEMARANG', NULL, '0818727271', 'arnestesaakt@gmail.com', 'ARY FAJAR GUNAWAN', 'S2 EKONOMI UGM', 'BUMN', 'Bandung/ 13 September 1970', 'ARNESTESA TRINANDHA', 'S3 - PDIE UNIVERSITAS DIPONEGORO', 'AKUNTAN PUBLIK', 'Semarang/ 3 januari 1980'),
('SD0179', '202302033', '202302033', 'ABQARY KAISANU NARENDRA', 'Bekasi', '2017-04-08', 'L', '1SD', 2023, 'KIANU', '1B', '19 kg', '115 cm', NULL, 'Jl Damar 9 blok C no 163. Perumahan Pekayon 2. Bekasi Selatan', NULL, '081374008874', 'hariendralesmana@gmail.com', 'Hari Endra Lesmana', 'S1 - Sarjana Teknik Pertanian IPB', 'Swasta', 'Sengeti/ 22 Januari 1989', 'Kusuma Ratih', 'S1 - Sarjana Teknologi Industri Pertanian IPB', 'Swasta', 'Bekasi/ 1 September 1989'),
('SD0180', '202302034', '202302034', 'MUHAMMAD BYAN SIN ASIFY', 'Boyolali', '2016-09-06', 'L', '1SD', 2023, 'BYAN', '1A', '20 kg', '105 cm', NULL, 'Jl. Masjid Hidayatullah No.1C Jakasetia Bekasi Selatan Kota Bekasi', NULL, '085780071007', 'anisaburberry@gmail.com', 'Mochammad Habiby Al Asify', 'S1. Sarjana Akuntansi', 'PNS', 'Bekasi/ 18 Desember 1989', 'Dien Anisa Latif', 'SMA Madrasah Aliyah Negeri & S1 Al Ahwal Akh Syakhsiyyah (no wisuda)', 'Ibu Rumah Tangga', 'Kebumen/ 26 November 1990'),
('SD0182', '202302036', '202302036', 'RAYYAN FATIH SYAMIL DARMAWAN', 'Banda Aceh', '2019-02-01', 'L', '1SD', 2023, 'FATIH', '1B', '17 kg', '106 cm', NULL, 'Grand Kamala Lagoon. Bekasi', NULL, '08129523384', 'rfdarmawan@gmail.com', 'Rachman Ferry Darmawan', 'S1- Sarjana Ekonomi', 'Karyawan Swasta', 'Jakarta/ 27 Juni 1974', 'Rahmawati', 'S1- profesi dokter', 'Dokter', 'Kumba/ 26 Februari 1989'),
('SD0183', '202302037', '202302037', 'ARUNA SAKHI KINANTI', 'Bekasi', '2018-02-11', 'P', '1SD', 2023, 'ARUNA', '1B', '17/5 kg', '110 cm', NULL, 'Jalan matahari 2 blok i no 1 taman galaxi bekasi selatan 17147', NULL, '081356263158', 'Addina.sugiarto@gmail.com', 'Rudi irwanto', 'S1', 'PNS', 'Bekri lampung/ 28 Oktober 1984', 'Addina sugiarto', 'S1', 'IRT', 'Wonosobo jawa tengah/ 22 Maret 1984'),
('SD0184', '202302038', '202302038', 'MUHAMMAD KHALID RIZQIANDRA RAMADHAN', 'BEKASI', '2017-04-06', 'L', '1SD', 2023, 'KHALID', '1A', '10 kg', '121 cm', NULL, 'KEMANG PRATAMA 5 JL CEMPAKA RAYA BJ 02 RT 03 RW 20', NULL, '081219092969', 'cakuwa73@gmail.com', 'CANDRA KUSUMA WARDHANA', 'SI - TEKNIK & MANAJEMEN INDUSTRI - STT TELKOM (TELKOM UNIVERSITY)', 'KARYAWAN BUMN (PT TELKOM INDONESIA)', 'KEDIRI/ 23 April 1973', 'CUCU ANNA SAMSIYAH', 'S1 KEPERAWATAN - UNIV PADJAJARAN', 'IRT', 'BANDUNG/ 29 November 1981'),
('SD0185', '202302039', '202302039', 'FATIMAH AINAYYA KHAIDIR', 'Jakarta', '2018-06-10', 'P', '1SD', 2023, 'FATIMAH', '1A', '24 kg', '120 cm', NULL, 'Jl Rh Umar RT 03 RW 02 Cikunir Kelurahan Jakamulya Kecamatan Bekasi Selatan (Cluster Denaya Safa Marwa Residence)', NULL, '0081290002913', 'khai.dhirr@gmail.com', 'Ahmad Khaidir', 'S1 - Sarjana Sistem Informasi', 'Pegawai Swasta', 'Jakarta/ 13 Agustus 1986', 'Arfaniati Cahya Amran', 'S1 - Ekonomi', 'Wirausaha dan Ibu Rumah Tangga', 'Jakarta/ 17 April 1987'),
('SD0186', '202302040', '202302040', 'FALISHA LATIFAH FARZANA', 'Jakarta', '2017-05-10', 'P', '1SD', 2023, 'LATIFAH', '1B', '19 kg', '108 cm', NULL, 'Jl. Sriwijaya I no. 15. Rt001 RW06/ Jakasampurna/ Bekasi Barat/ kota Bekasi', NULL, '081287799661', 'indriani.zakiah@gmail.com', 'Rizal Fahlevi', 'S1 - Ilmu Komputer Universitas Indonesia', 'Swasta', 'Jakarta/ 1 Juni 1988', 'Zakiah Indriani', 'D3 - Akuntansi UGM', 'Pegawai BUMN', 'Tangerang/ 4 November 1992'),
('SD0187', '202302041', '202302041', 'KISKALMEERA SYAHFANA MUNAJAT', 'Bekasi', '2016-06-12', 'P', '1SD', 2023, 'KIMI', '1A', '26 kg', '123 cm', NULL, 'Komp. Inkoppol jl. Garuda II no.40 Jakasampurna', NULL, '082122822733', 'bidarintanawawi@gmail.com', 'Adit Munajat', 'S1 - Man. Informatika Perbanas', 'Swasta', 'Jakarta/ 5 April 1984', 'Intan Bidari', 'D3 Secretary', 'IRT', 'Jakarta/ 2 Januari 1985'),
('SD0188', '202302042', '202302042', 'ADEEVA ZARA MIHARJA', 'Kotabumi', '2017-06-11', 'P', '1SD', 2023, 'ADEEVA', '1B', '17 kg', '100 cm', NULL, 'Sakura regency 3 blok q5 rt 001 rw 019 jatimulya tambun selatan', NULL, '081295267536', 'friezqaayu65@gmail.com', 'Padmi harja', 'DIII/ STMIK BANI SALEH', 'Wirausaha', 'Ogan lima/ 3 April 1984', 'Friesqa ayuningtias', 'S1 ISTN profesi Apoteker', 'Apoteker', 'Kotabumi/ 9 Februari 1991'),
('SD0189', '202302043', '202302043', 'ABDURRAHMAN IHSAN AKBAR', 'Sukabumi', '2018-12-06', 'L', '1SD', 2023, 'AA IHSAN', '1A', '13/8 kg', '100 cm', NULL, 'Hasan / Anggina Jln. Pondok Jingga Mas III Blok F5 No 19 Jakasetia/ Kec. Bekasi Selatan Kota Bekasi Jawa Barat 17147', NULL, '087856276326', 'sofianhasanh@gmail.com', 'HASAN SOFIAN HERNAWAN', 'S1 Teknik Kimia ITB', 'Karyawan', 'BANDUNG/ 14 Januari 1989', 'Anggina Oktapia Latief', 'S1 Psikologi Univ. Ahmad Dahlan', 'IRT', 'Sukabumi/ 15 oktober 1987'),
('SD0190', '202302044', '202302044', 'MUHAMMAD ABU BAKAR ASH-SHIDDIQ', 'Bekasi', '2018-12-05', 'L', '1SD', 2023, 'MABAS', '1B', '19 kg', '110 cm', NULL, 'The Green View Blok D20 Bekasi Selatan', NULL, '082299502337', 'naradalotus@gmail.com', 'RM Dana Suryo Saputro', 'S1 Sarjana Teknik', 'Karyawan Swasta', 'Jakarta/ 6 Desember 1987', 'Riska Oktayuanita', 'S1 Teknis Industri', 'Ibu Rumah Tangga', 'Slawi/ 28 Oktober 1988'),
('SD0191', '202302045', '202302045', 'ALDEEBARAN SHAQUILE PRATAMA BEY', 'Tangerang', '2017-10-05', 'L', '1SD', 2023, 'AL', '1A', '17 kg', '117 cm', NULL, 'Perumahan Taman Cikunir Indah Jl. Nusantara 6C Blok A1 No 14 RT 06/11', NULL, '082113576280', 'adybey32@gmail.com', 'Ady Pratama Bey', 'S1 - Sarjana Ekonomi STMT Trisakti', 'PNS', 'Jakarta/ 31 Januari 1989', 'Chifik Fahmi Putri Pratama', 'SMA', 'IRT', 'Jakarta/ 27 Agustus 1991'),
('SD0192', '202302046', '202302046', 'ALVARENDRA AGHAOZORA NUGROHO', 'Jakarta', '2017-09-05', 'L', '1SD', 2023, 'AGHA', '1B', '29 kg', '125 cm', NULL, 'Arta Kranji residence blok b23 Kranji Bekasi barat 17135', NULL, '085693260841', 'ariss.nugroho8@gmail.com', 'Aris nugroho', 'S1 - sarjana pendidikan Akuntansi UNJ', 'Swasta', 'Jakarta/ 8 Juni 1988', 'Ndaru pamungkas', 'S1 - pendidikan Akuntansi UNJ', 'IRT', 'Jakarta/ 7 Oktober 1987'),
('SD0193', '202302047', '202302047', 'EZHAR MALIQ ALTHAFURRAHMAN HARAHAP', 'Bekasi', '2018-09-03', 'L', '1SD', 2023, 'EZHAR', '1B', '19/5 kg', '110 cm', NULL, 'Jl. Jambu 1 no. 174 rt 06/07 Perumnas 1 kranji bekasi barat', NULL, '08118823796 - 087831074998', '-', 'Rahmad Sahuli Harahap (alm)', 'D3 tehnik informatika Bsi', '-', 'Meda/ 1 September 1981', 'Ririn Kustanti', 'D3-Keperawatan Angkatan Udara', 'PNS', 'Jakarta/ 16 Mei 1987'),
('TK0178', '202101001', '202101001', 'ABIZARD ISMAIL ALI', 'Bekasi', '2018-08-09', 'L', 'TKB', 2021, 'ABIZARD', 'K2- Al Mursalat', '22 kg', '102 cm', 'S', 'Komplek Pemda Blok B Jl kresna No 41 Rt 01/Rw 01 Jati Asih Bekasi', '081298567822', '081317802059', 'Ritha_2989@yahoo.com', 'Yandi Arnaz', 'S1', 'Pegawai BUMN', 'Depok/19 April 1988', 'Rita Hartati Lubis', 'S1', 'IRT', 'Jakarta/29 Maret 1989'),
('TK0179', '202101002', '202101002', 'AISYAH GHANIYA ALMAIRA', 'Jakarta', '2018-06-05', 'P', 'TKB', 2021, 'AISYAH', 'K2 - Al Qalam', '15/9 kg', '102 cm', 'M', 'Jl Taman Agave V/ M6/27/ Taman Galaxy/ Bekasi', '02182751236', '08159653394/081514577689', 't.jombang@gmail.com', 'Tedi Jombang Nugraha', 'S1', 'Karyawan swasta', 'Padang/ 31 Maret 1979', 'Pipit Anasthasia', 'S1', 'IRT', 'P.Berandan/2 November 1978'),
('TK0180', '202101003', '202101003', 'AISYAH KHUMAIRA PUTRI APSANRA', 'Bukittinggi', '2018-03-07', 'P', 'TKB', 2021, 'AISYAH', 'K2 - Al Ma\'arij', '17 kg', '98 cm', 'L', 'Komplek Depnaker Taman Wisma Asri Jalan Merak I Blok K27 No. 12A RT 02/ RW 34 Teluk Pucung Bekasi Utara 17121', '081386825912', '81386608132', 'amieamo3@gmail.com', 'Ikhsan Pramana', 'S1', 'karyawan', 'Padang/9 Juni 1984', 'Rahmi Hayati', 'D4', 'IRT', 'Bukti tinggi/23 July 1987'),
('TK0181', '202101004', '202101004', 'AIZZAH NUR NAZHIFAH', 'Jakarta', '2018-05-10', 'P', 'TKB', 2021, 'AIZZAH', 'K2- Al Mursalat', '15 kg', '0', 'L', 'Jl. H Samud No.26/95 / Jati Kramat/ Bekasi', '0', '081292594004/081310405709', 'buncitiwan@gmail.com', 'Muhammad Ridwan', 'S1', 'Karyawan swasta', 'Sukabumi/ 27 Juni 1992', 'Mardhiah Fatwa', 'S1', 'IRT', 'Jakarta/ 24 Oktober 1993'),
('TK0182', '202101005', '202101005', 'ALMEERA SYAHIRA DISTY', 'Jakarta', '2017-03-11', 'P', 'TKB', 2021, 'MEERA', 'K2 - Al Qalam', '0', '0', 'S', 'Jl. H umar no.9 jakamulya/cikunir/ bekasi selatan', '021-827-44061', '81289865344', 'septy3023@gmail.com', 'Dimas pramudita (Alm)', 'S1', '0', 'Jakarta/ 1 Maret 1984', 'Septy haryani', 'D3', 'IRT', 'Jakarta/ 15 Oktober 1985'),
('TK0183', '202101006', '202101006', 'AQEELA CEISYA HAFIZHAH ARIEF', 'Jakarta', '2019-04-09', 'P', 'TKB', 2021, 'CEISYA', 'K2 - Al Insan', '13 kg', '90 cm', 'S', 'Jakarta Garden City/ Cluster Yarra E8/5', '08111995030', '082299966651', 'muh.arieff7@gmail.com', 'Muhammad Arief', 'S1', 'Karyawan swasta', 'Jakarta/ 25 July 1984', 'Irma suryani', 'S1', 'Karyawan swasta', 'Jakarta/ 12 November 1989'),
('TK0185', '202101008', '202101008', 'ARSYILA GHAIDA AZKADINA', 'Jakarta', '2018-06-05', 'P', 'TKB', 2021, 'ARSYILA', 'K2 - Al Ma\'arij', '15/5 kg', '101 cm', 'M', 'Jl taman agave V/ M6/27/ Taman Galaxy/ Bekasi', '02182751236', '08159653394/081514577689', 't.jombang@gmail.com', 'Tedi Jombang Nugraha', 'S1', 'Karyawan swasta', 'Padang/ 31 Maret 1979', 'Pipit Anasthasia', 'S1', 'IRT', 'P.Berandan/2 November 1978'),
('TK0186', '202101009', '202101009', 'ASHALINA MAUZA NAFEESA ASSAD', 'Bekasi', '2018-03-12', 'P', 'TKB', 2021, 'ASHA', 'K2 - Al Ma\'arij', '14/5 kg', '97 cm', 'M', 'JL. CENDANA RAYA NO.16/ JAKA PERMAI/ BEKASI BARAT', '0', '08118818787/081310070612', 'muh.assad@gmail.com', 'MUHAMMAD ASSAD', 'S2', 'Pengusaha/motivator', 'Jakarta/ 16 Januari 1987', 'AFRA NURINA AMARILLA', 'S2', 'IRT', 'Tarakan/ 6 Januari 1988'),
('TK0187', '202101010', '202101010', 'AZKARIAN FADILLAH', 'Jakarta', '2017-05-07', 'L', 'TKB', 2021, 'AZKA', 'K2 - Al Insan', '12/5 kg', '0', 'M', 'jl.greenview 3 blok D 67 the greenview PTM', '0', '081380008431/082111194998', 'ana.oktora@gmail.com', 'Deny Maturian', 'S1', 'Wiraswasta', 'Pekanbaru/30 Maret 1984', 'AnaOktora', 'S2', 'IRT', 'Solok/ 7 Oktober 1982'),
('TK0188', '202101011', '202101011', 'AZKA TSAQIF ALBANI', 'Jakarta', '2018-06-09', 'L', 'TKB', 2021, 'AZKA', 'K2 - Al Insan', '13/1 kg', '93 cm', 'S', 'JL. H. HANAFI GG. ISLAH III RT 0013 RW 02 NO 11 KEL. PONDOK BAMBU KEC. DUREN SAWIT', '0', '081315902512/085781550433', 'm_fitria@yahoo.com', 'AGUS SAHBANI', 'S1', 'Karyawan swasta', 'Jakarta/ 2 July 1977', 'MARYAM FITRIYAH', 'S1', 'IRT', 'Tegal/ 5 July 1984'),
('TK0189', '202101012', '202101012', 'BIMANTARA KHALIF IBRAHIM', 'Bekasi', '2019-08-01', 'L', 'TKB', 2021, 'BIMA', 'K2 - Al Insan', '0', '0', 'L', 'Perumahan Villa Pekayon Blok A3 no 12', '08122227520', '081393392811', 'rahman_alif86@gmail.com', 'Alifia Rahman', 'S1', 'Karyawan swasta', 'Jember/11 maret 1986', 'ajeng illastria r.', 'S1', 'PNS', 'Mojokerto/20 Januari 1987'),
('TK0192', '202101015', '202101015', 'IBRAHIM ABDULLAH MALASSA', 'Bekasi', '2019-01-04', 'L', 'TKB', 2021, 'IBRAHIM', 'K2 - Al Ma\'arij', '15 kg', '90 cm', 'M', 'Pondok pekayon indah jalan mahoni 1 B14 no 7', '0', '081285180555/082117756606', 'endy.malassa@yahoo.com', 'Endy malassa', 'SMA', 'Pegawai BUMN', 'Jakarta/ 9 July 1992', 'Nisa sofia', 'D3', 'IRT', 'Bandar Lampung/7 Januari 1991'),
('TK0193', '202101016', '202101016', 'KAUTSAR', 'Jakarta', '2018-12-01', 'L', 'TKB', 2021, 'KAUTSAR', 'K2 - Al Ma\'arij', '11/5 kg', '90 cm', 'S', 'Apartemen Sentra Timur/ Jl. Sentra Primer Timur/ Pulo Gebang/ Cakung/ Jakarta Timur', '0', '082125760320/081912757072', 'harimansadewa@gmail.com', 'Hariman Sadewa', 'S1', 'Karyawan swasta', 'Jakarta/16 April 1992', 'Aisyah Nasiri', 'S1', 'IRT', 'Ponorogo/ 12 Agustus 1991'),
('TK0194', '202101017', '202101017', 'KEN RASKI DAMARIO', 'Bekasi', '2018-07-04', 'L', 'TKB', 2021, 'KEN', 'K2 - Al Insan', '11/5 kg', '75 cm', 'S', 'Jl Rawa Semut 2 no 46 RT02 RW13 Jati Asih Bekasi', '0', '082124932313/08128049320', 'ani.kenraski@gmail.com', 'Wahyu Novianto Kristiono', 'S1', 'PNS', 'Jakarta/15 November 1980', 'Ani Indri Astuti', 'S1', 'karyawan BUMN', 'Jakarta/ 17 Januari 1980'),
('TK0195', '202101018', '202101018', 'KHAIREEN HAFIZA SULTANSYAH', 'Bekasi', '2018-02-04', 'P', 'TKB', 2021, 'KHAIREEN', 'K2 - Al Qalam', '0', '0', 'S', 'jl. wahab 2 no.63a/ jatibening baru pondok gede bekasi', '081905501800', '082213606865', 'rizkiturki@gmail.com', 'RIZKI APRIANSYAH', 'S1', 'Guru bahasa Turki', 'Jakarta/17 April 1992', 'DHEANITA TRIBUANA', 'S1', 'IRT', 'Jakarta/ 4 Agustus 1991'),
('TK0198', '202101021', '202101021', 'MUHAMMAD AL FATIH SETIADI', 'Bekasi', '2018-05-04', 'L', 'TKB', 2021, 'AL FATIH', 'K2 - Al Ma\'arij', '12 kg', '92 cm', 'S', 'Jl Niaga 9 Blok BE no 17 Kemang Pratama Bekasi 17114', '021-82741800', '0811811690/08118111139', 'adi.setiadi217@gmail.com', 'Adi Setiadi', 'MM', 'Karyawan swasta', 'Sintang/24 september 1976', 'Lany Marliany', 'Apoteker', 'IRT', 'Bandung/ 27 Mei 1976'),
('TK0199', '202101022', '202101022', 'MUHAMMAD ATTHALLAH ALGHIFARY', 'Bekasi', '2018-07-08', 'L', 'TKB', 2021, 'ATTHALLAH', 'K2 - Al Qalam', '15 kg', '0', 'M', 'jl kemakmuran 3 nomor 58 magrjaya bekasi selatan 17141', '0', '081316249544', 'regina14.ra@gmail.com', 'danang triatmojo', 'S1', 'Karyawan swasta', 'Gunung kidul/23 Januari 1991', 'Regina Ayu', 'S1', 'IRT', 'Bandung/14 Maret 1991'),
('TK0200', '202101023', '202101023', 'MUHAMMAD FAQIH ALMA MUQODDAM', 'Bekasi', '2019-03-11', 'L', 'TKB', 2021, 'FAQIH', 'K2 - Al Insan', '16 kg', '96 cm', 'M', 'Jl Pelabuhan Ratu no.4 Kel Sepanjang Jaya Kec Rawalumbu Kota Bekasi', '0218217725', '081293555354', 'drgemavikossa@gmail.com', 'Gema Vikossa', 'S1', 'dokter', 'jakarta/24 Februari 1985', 'Aliza Ramadhani Putriana', 'S1', 'dokter', 'Indramayu/ 1 Mei 1988'),
('TK0201', '202101024', '202101024', 'MUHAMMAD LUQMAN SALIM', 'Klaten', '2019-12-11', 'L', 'TKB', 2021, 'LUQMAN', 'K2- Al Mursalat', '13 kg', '89 cm', 'M', 'JL.ARJUNA 4 NO.139 B RT/RW 3/11 JAKASETIA', '0', '085725846633/087882840928', 'agus38salim@gmail.com', 'AGUS SALIM', 'SMA', 'Karyawan swasta', 'Purworejo/ 3 Agustus 1987', 'NURSYAM BUDI LISTYOWATI', 'D3', 'IRT', 'Klaten/20 Maret 1991'),
('TK0202', '202101025', '202101025', 'MUHAMMAD SALMAN ALFATIH', 'Bekasi', '2019-04-10', 'L', 'TKB', 2021, 'SALMAN', 'K2 - Al Ma\'arij', '14/5 kg', '105 cm', 'L', 'Jl. Pulo Sirih Barat 4/ FE 350', '0', '081287807848/082220333255', 'haryotetuko1988@gmail.com', 'HARYO TETUKO', 'S1', 'Wiraswasta', 'Tanjung enim/16 April 1988', 'NURAVER KEELA', 'S1', 'wiraswasta', 'Bandung/20 November 1987'),
('TK0203', '202101026', '202101026', 'MUHAMMAD THAQI ARAFAH', 'Bekasi', '2018-05-08', 'L', 'TKB', 2021, 'THAQI', 'K2 - Al Qalam', '18 kg', '115 cm', 'S', 'pondok pekayon indah blok B3 no/10', '0', '081281482210', 'wisnuutomo@gmail.com', 'Wisnu Broto Utomo', 'S1', 'Wiraswasta', 'Jakarta/15 Juni 1980', 'Levana Pauliana', 'S1', 'IRT', 'Garut/ 17 Mei 1986'),
('TK0204', '202101027', '202101027', 'NADIEM BENYAMIN', 'Bekasi', '2019-06-01', 'L', 'TKB', 2021, 'NADIEM', 'K2 - Al Ma\'arij', '14 kg', '95 cm', 'M', 'Perumahan Pondok Timur Mas/ Jl. Pondok Jingga Mas 7 blok R3 no 11 Galaxy Bekasi Selatan 17147', '0', '0811222977/0811522133', 'bimayog@gmail.com', 'Bima Yogie Purnama', 'S2', 'Notaris', 'Bekasi/15 Desember 1990', 'Feny Ambarsari', 'S1', 'IRT', 'Bekasi/2 Maret 1991'),
('TK0205', '202101028', '202101028', 'NAHLA JIHAN ALFIYYAH', 'Bekasi', '2019-01-01', 'P', 'TKB', 2021, 'JIHAN', 'K2- Al Mursalat', '12 kg', '92 cm', 'S', 'Jl. Alam utama V Perum Bintara Alam Permai Blok D1 no.10 Rt.03/14 kel. Bintara jaya/ bekasi barat', '0', '081286108020/08111221177', 'ferdin.ramdhani@gmail.com', 'Ferdin Amsal Ramdhani', 'S1', 'PNS', 'Jakarta/28 mei 1986', 'Mutia Dwi Rohmiatun', 'S1', 'IRT', 'Pandeglang/8 Juni 1987'),
('TK0207', '202101030', '202101030', 'RAYYAN AHSANI RUSYDAN', 'Jakarta', '2019-04-12', 'L', 'TKB', 2021, 'RAYYAN', 'K2 - Al Qalam', '13 kg', '90 cm', 'S', 'CLUSTER TAMAN FIRDAUSI NO 3 JALAN KEMANGSARI 1/ Kel JATIBENING BARU/ Kec PONDOK GEDE KOTA BEKASI', '081288636347', '081311502036', 'indahsusan28216@gmail.com', 'DARYATNO SUBEKTI', 'S1', 'PNS', 'Mataram/ 17 Agustus 1982', 'INDAH SUSANTI', 'S1', 'IRT', 'Magelang/23 Desember 1990'),
('TK0209', '202101032', '202101032', 'SUTAN AVERROES ZAHRI', 'Bekasi', '2019-06-10', 'L', 'TKB', 2021, 'AVERROES', 'K2 - Al Insan', '14 kg', '100 cm', 'S', 'Komplek Pondok Timur Mas/ Jl Jingga Mas IV blok E 2 no 23/ Jaka Setia/ Kota Bekasi', '0', '081220443738/082214666011', 'bentom002jk@gmail.com', 'Berlianto Haris', 'S2', 'Karyawan swasta', 'Padang/26 Mei 1985', 'Sukma Faizah', 'S1', 'IRT', 'Medan/4 Desember 1989'),
('TK0211', '202101034', '202101034', 'UWAIS ABQARIZAYAN KINAYUNG', 'Bekasi', '2017-10-07', 'L', 'TKB', 2021, 'UWAIS', 'K2- Al Mursalat', '15/5 kg', '102 cm', 'M', 'Jalan Pelabuhan Ratu No.56 Perum.Bumi Bekasi Baru Rawalumbu Kota Bekasi 17115', '0', '081284060054/081290731554', 'wikrama.ananta@gmail.com', 'Anantawikrama Unggul Kinayung', 'S1', 'Wiraswasta', 'Semarang/12 Maret 1987', 'Rachmayanti Nur Padilah', 'S1', 'IRT', 'Bekasi/24 Juni 1963'),
('TK0241', '202101064', '202101064', 'MALIQA RIZHANI HANANDITA', 'Bekasi', '2018-03-09', 'p', 'TKB', 2021, 'IZZA', 'K2- Al Mursalat', '14/2 kg', '0', 'S', 'Pondok Ungu Permai Blok KK 2 no 2/ Bekasi Utara 17125', '0', '08175453618/081286867200', 'dimasanggoro21@gmail.com', 'Dimas Anggoro Hanandito', 'S1', 'Karyawan swasta', 'Jakarta/21 Juli 1986', 'Rizky Amelia', 'S1', 'Karyawan swasta', 'Ambon/9 Mei 1990'),
('TK0242', '202101065', '202101065', 'ATHOULLAH HAFIZH AFANDY', 'Jakarta', '2018-03-02', 'L', 'TKB', 2021, 'ATHA', 'K2 - Al Qalam', '13/5 kg', '0', 'S', 'Jl. Rawa selatan buntu no.17 Rt.018/04. Kel.kampung Rawa. Kec.Johar baru. Jakpus 10550', '08119825119', '081291999068', 'reza.afandy@gmail.com', 'Reza Afandy Bustaman', 'S2', 'Akuntan', 'Samarinda/1 Februari 1977', 'Maya Indah purwati', 'S1', 'IRT', 'Jakarta/28 Mei 1983'),
('TK0243', '202101066', '202101066', 'MUHAMMAD ARSHAD UWAIS HILABI', 'Jakarta', '2018-12-05', 'L', 'TKB', 2021, 'UWAIS', 'K2 - Al Ma\'arij', '15 kg', '101 cm', 'M', 'Jl. Lembah Pinang 3 Blok i10 No.12/ Pondok Kelapa/ Duren Sawit/ Jakarta Timur', '02122845436', '081312206891/081224037770', 'hilman.ismail20@gmail.com', 'Hilman Ismail Hilabi', 'S1', 'Karyawan swasta', 'Jakarta/20 April 1991', 'Raifa Dwinanti', 'S1', 'IRT', 'Bandung/9 Januari 1991'),
('TK0244', '202101067', '202101067', 'KALILA KHANSAIRA', 'Jakarta', '2018-06-10', 'P', 'TKB', 2021, 'KALILA', 'K2- Al Mursalat', '11 kg', '88 cm', 'S', 'Jl. Kutilang 2 Blok G9 No.4/ Jatibening Pondok Gede/ Bekasi - 17412', '0', '081381488100/081212797092', 'rizki.fajar88@gmail.com', 'Muhamad Rizki Fajar', 'S1', 'Karyawan swasta', 'Jakarta/8 Agustus 1990', 'Annisa Anggraini', 'S1', 'IRT', 'Jakarta/10 Oktober 1992'),
('TK0245', '202101068', '202101068', 'UWAIS HAMIZAN SYAFIQ', 'Bekasi', '2017-10-09', 'L', 'TKB', 2021, 'UWAIS', 'K2 - Al Insan', '10 kg', '0', 'S', 'Jl Gurame V no 317 Perumnas II Bekasi', '0', '081112900093/081283070084', 'hennythantawi190677@gmail.com', 'Ruhimat', 'SMA', 'Guru', 'Sumedang/24 April 1980', 'Hilda', 'S1', 'Guru', 'Jakarta/14 Desember 1983'),
('TK0246', '202101069', '202101069', 'ALVARO RAFAIZAN RAHMAN', 'Tanggerang Selatan', '2017-02-12', 'L', 'TKB', 2021, 'VARO', 'K2 - Al Ma\'arij', '13/8 kg', '95 cm', 'S', 'Komplek Bintara Jaya 2 Jalan Anjasmoro Blok A 85D/ Bekasi', '0', '081319855141/081291427649', 'andirahman81@gmail.com', 'Andi Rahman Nugraha', 'S2', 'Wiraswasta', 'Jakarta/10 Agustus 1991', 'Lia Khairunisa', 'S1', 'wiraswasta', 'Jakarta/11 Juni 1990'),
('TK0251', '202101074', '202101074', 'AKHDAN ZIYAD AZHAR', 'Garut', '2019-03-02', 'L', 'TKB', 2021, 'ZIYAD', 'K2 - Al Qalam', '16 kg', '103 cm', 'M', 'jalan siliwangi raya/no 123 sepanjang raya/ rawalumbu/ kota BEKSI 17114', '0', '082218529709', 'zaharsofni29@gmail.com', 'Azyad Azhar (alm)', '0', '0', 'Garut/ 5 Agustus 1991', 'Rizky Ayu Akbari', 'S1', 'IRT', 'Garut/ 28 Oktober 1992'),
('TK0253', '202101076', '202101076', 'KAMILA AMANI', 'Bekasi', '2018-11-08', 'P', 'TKB', 2021, 'KAMILA', 'K2 - Al Insan', '18 kg', '105 cm', 'XL', 'Jl. Delta Barat VII no B52 Pekayon - Bekasi Selatan', '0', '081290439802/087886888080', 'farhana.hkm@gmail.com', 'Afan Miqdad', 'S1', 'Pegawai swasta', 'Cilacap/19 November 1985', 'Farhanah', 'D3', 'IRT', 'Jakarta/16 Februari 1993'),
('TK0254', '202101077', '202101077', 'ARKANA HANIF SHAGUFTA', 'Bekasi', '2018-10-07', 'L', 'TKB', 2021, 'ARKA', 'K2 - Al Qalam', '15 kg', '99 cm', 'M', 'Jln. Merpati Pos A24 RT 02/09 Jakamulya Bekasi Selatan 17146', '0', '08568548410/085716226333', 'fahdarta@gmail.com', 'Fahmi Arie Sidharta', 'S1', 'Pegawai swasta', 'Jakarta/ 21 November 1978', 'Ranty Carolyna', 'SLTA', 'IRT', 'Bandung/ 9 Februari 1983'),
('TK0260', '202201001', '202201001', 'ARUNA NADYA PRAMUDHITA', 'Bekasi', '2019-02-11', 'P', 'TKA', 2022, 'ARUNA', 'K1 - Al Buruj', '12/4 kg', '93 cm', NULL, 'Perum. Angkasa Puri/ Jl. Durian Blok J No.2/ Kel. Jatimekar/ Kec. Jatiasih/ Kota Bekasi/ Jawa Barat 17422', '021 8474851', '08156635500', 'brahmapramudita@gmail.com', 'Brahma Swastika Pramudhita ', 'S1', 'Karyawan swasta', 'Jakarta/ 27-0301989', 'Hanna Khairinisa', 'S1', 'IRT', 'Bandung/ 14-12-1991'),
('TK0261', '202201002', '202201002', 'MUHAMMAD ARKHAM AKHYAR', 'Surabaya', '2018-02-06', 'L', 'TKA', 2022, 'ARKHAM', 'K1 - Al Fajr', '14/10 kg', '98 cm', NULL, ' Pondok Timur Mas Jl Pondok Merah Mas Blok C1/7', '-', '0811321677', 'mohamad.zuhroni@gmail.com', 'Mohamad Zuhroni ', 'S2', 'Pegawai Swasta', 'Surabaya/19-12-1981', 'Vidya Antariksani', 'S1', 'IRT', 'Jakarta/ 03-09-1984'),
('TK0264', '202201005', '202201005', 'ALFARIZKY GHAYDA TAHER', 'Bekasi', '2018-03-11', 'L', 'TKA', 2022, 'FARIZ', 'K1 - Al Fajr', '12/6 kg', '-', NULL, ' Jalan pondok kuning mas 1 blok p no.3 perumahan pondok timur mas', '-', '082122669198', 'ade347@gmail.com', 'Isbudi ', 'D3', 'Karyawan swasta', 'Jakarta/ 18-10-1988', 'Ade Kusumawardani', 'S1', 'IRT', 'Dompu/ 25-08-1988'),
('TK0266', '202201007', '202201007', 'MUHAMMAD ZIANDRA HANANDITO', 'Bekasi', '2018-08-10', 'L', 'TKA', 2022, 'ZIAN', 'K1 -Ath Thoriq', '15/5 kg', '90 cm', NULL, ' Pondok Ungu Permai Blok KK 2 no 2 Bekasi Utara 17125', '-', '08175453618', 'dimasanggoro21@gmail.com', 'Dimas Anggoro Hanandito ', 'S1', 'Karyawan swasta', 'Jakarta/ 21-07-1986', 'Rizky Amelia', 'S1', 'Karyawan swasta', 'Ambon/ 09-05-1990'),
('TK0267', '202201008', '202201008', 'SHAFIYA INSYIRA NAZURA', 'Bekasi', '2019-08-04', 'P', 'TKA', 2022, 'FIYA', 'K1 - Al Fajr', '16 kg', '90 cm', NULL, ' Perumahan Villa Pekayon A3 No 4/ Jl. Katapang/ Pekayon Jaya Bekasi Selatan', '-', '085860066027', 'dithianefara@gmail.com', 'Zulkifli ', 'S1', 'Karyawan swasta', 'Jakarta/ 13-10-1982', 'Fara Fadila', 'D3', 'Karyawan Swasta', 'Bandung/ 28-07-1982'),
('TK0268', '202201009', '202201009', 'HAFSAH NUHA DORISMAN', 'Jakarta', '2018-08-04', 'P', 'TKA', 2022, 'NUHA', 'K1 - Al Fajr', NULL, NULL, NULL, '[NULL]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('TK0269', '202201010', '202201010', 'MUHAMMAD MAHARDIKA CENDEKIA', 'Jakarta', '2020-06-06', 'L', 'TKA', 2022, 'MUHAMMAD', 'K1 - Al Buruj', '13 kg', '98 cm', NULL, ' CLUSTER TAMAN FIRDAUSI NO. 2/ JATIBENING', '-', '081382140823', 'cendekia.k@gmail.com', ' Cendekia Putra Kartono  ', 'S1', 'Karyawan yayasan', 'Bekasi/ 16-12-1990', 'Detta Olyvia Nirwana', 'S1', 'IRT/freelancer script editor', 'Jakarta/ 16-09-1988'),
('TK0270', '202201011', '202201011', 'OMAR ZANKI ABDURRAHMAN', 'Bekasi', '2020-03-07', 'L', 'TKA', 2022, 'OMAR', 'K1 - Al Fajr', '12/5 kg', '92 cm', NULL, ' kav DKI jalan Lembah Aren X blok K16 no 21 Pondok Kelapa/ Jakarta Timur', NULL, '08121043828', 'adhibr@yahoo.com', ' Adhib Rakhmanto ', 'S1', 'Consultant', 'Kulon Progo/10-09-1987', 'Sefty Kurnadia Weny', 'S1', 'IRT', 'Jakarta/ 12-02-1986'),
('TK0271', '202201012', '202201012', 'ALECIA NAVISHA WIBOWO', 'Surabaya', '2018-11-05', 'P', 'TKA', 2022, 'NAVISHA', 'K1 -Ath Thoriq', '13/4 kg', '98 cm', NULL, ' Taman Century 2 Jl. Kemuning 1 Blok G. 11 Rt 005 Rw 023 Kel. Pekayon Jaya Kec. Bekasi Selatan 17148 Kota Bekasi', '-', '08122908810', 'Mochagungw@gmail.com', ' Moch Agung Wibowo', 'D3', 'Karyawan swasta', 'Semarang/ 16-07-1978', 'Dede Sholihat', 'SMK', 'IRT', 'Ciamis/ 02-11-1992'),
('TK0272', '202201013', '202201013', 'MUHAMMAD ALWI AL HAZMI', 'Jakarta', '2018-11-07', 'L', 'TKA', 2022, 'ALWI', 'K1 - Al Buruj', '12/6 kg', '94 cm', NULL, 'Cluster Griya Mandiri No 6/ Jatiasih', '-', '081286007072', 'friska.melinda.ui@gmail.com', ' Fadjar Rizky Wahyu Ramadhan ', 'S2', 'Karyawan swasta', 'Bekasi/ 25-03-1992', 'Friska Melinda Rizqi', 'S1', 'IRT', 'Magelang/ 22-05-1990'),
('TK0273', '202201014', '202201014', 'MAHREEN ZEEYA JOBAN', 'Jakarta', '2018-11-09', 'P', 'TKA', 2022, 'ZEEYA', 'K1 -Ath Thoriq', '12 kg', '94 cm', NULL, ' Pondok Timur Mas', '-', '082111666266', 'evayulyanti3@gmail.com', ' Riza Wilhansah', 'S1', 'Pegawai', 'Jakarta/ 18-10-1990', ' Eva', 'S1', 'IRT', 'Jakarta/ 03-07-1987'),
('TK0275', '202201016', '202201016', 'CHANA ZAYNA SASTROSUBROTO', 'Bekasi', '2020-12-05', 'P', 'TKA', 2022, 'CHANA', 'K1 -Ath Thoriq', '15 kg', '110 cm', NULL, ' JL. DAHLIA 1 BLOK C3 NO 8 TAMAN BOUGENVILLE ESATE/ JATIBENING/ BEKASI 17412', '021 8646343', '08119951625', 'ABI.ASHYAFAT@GMAIL.COM', ' Mohamad Ashyafat Sastrosubroto ', 'S1', 'Pengusaha', 'Birmigham/ 22-02-1989', 'Vindy Astriyanti', 'S1', 'IRT', 'Jakarta/ 15-02-1991'),
('TK0276', '202201017', '202201017', 'MUHAMMAD ABDULLAH AMALI', NULL, '2021-05-05', 'L', 'TKA', 2022, 'AHMAD', 'K1 - Al Buruj', NULL, NULL, NULL, '[NULL]', NULL, NULL, NULL, 'Ustadz Adi Hidayat/ Lc/ M.A', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('TK0277', '202201018', '202201018', 'ALMAHYRA KIANNAYU PRAMESTI ANWAR', 'Bekasi', '2020-06-12', 'P', 'TKA', 2022, 'KINAY', 'K1 -Ath Thoriq', '14/65 kg', '98 cm', NULL, ' The Green View blok C no.19/ Jakasetia/ Bekasi Selatan/ Bekasi 17147', '021 82735730', '085218843520', 'wkem.anwr@yahoo.com', ' Anwar Sadat', 'SMA', 'Wiraswasta', 'Sukabumi/ 01-07-1970', ' Irama Dewi Cahyawulan Hamzah', 'D3', 'wiraswasta', 'Bandung/ 12-07-1982'),
('TK0279', '202201020', '202201020', 'QARIZH AFKARI NADHIF', 'Jakarta', '2019-11-01', 'L', 'TKA', 2022, 'QARIZH', 'K1 - Al Balad', '16 kg', '98 cm', NULL, ' Jl Cendana IV no 18 Perumahan Jaka Permai/ RT05 RW 06A/ Kel Jakasampurna/ Bekasi Barat', '-', '082299992553', 'erlanggaperwiranegara@gmail.com', ' Erlangga Perwira Negara ', 'S1', 'Dokter', 'Bekasi/ 27-04-1991', 'Indah Dwi Rahamah', 'S1', 'IRT', 'Way Jepara/ 17-09-1990'),
('TK0280', '202201021', '202201021', 'KANISA NUR HAFIDZAH', 'Bekasi', '2019-10-09', 'P', 'TKA', 2022, 'KANIS', 'K1 -Ath Thoriq', '13 kg', '80 cm', NULL, 'Villa Jakasetia Blok A No.5', '-', '089661796021', 'faqihsentosa@mail.com', 'Rachmad  Sentosa', 'D3', 'Wiraswasta', 'Jakarta/ 01-01-1987', 'Nur Aini ', 'SMA', 'IRT', 'Jakarta/ 10-08-1988'),
('TK0281', '202201022', '202201022', 'MUHAMMAD HIRO GHAFFARI', 'Bekasi', '2019-05-05', 'L', 'TKA', 2022, 'HIRO', 'K1 -Ath Thoriq', '17 kg', '100 cm', NULL, ' The Green View Blok D-32', '021 82732682', '085664533254', 'suci.arsae@gmail.com', ' Hendra Saputra', 'S1', 'Karyawan swasta', 'Sungai Kayu Ara/ 13-03-1993', ' Suci Leowati', 'S1', 'IRT', 'Boyolali/ 04-09-1991'),
('TK0283', '202201024', '202201024', 'SHAQUEENA AURORA', 'Bekasi', '2018-10-09', 'P', 'TKA', 2022, 'QUEENA', 'K1 - Al Buruj', '13 kg', '93/5 cm', NULL, 'Jl. Ketapang V Pondok Pekayon Indah DD 39 no 1 Bekasi Selatan', '021 8205822', '08558088889', 'rdtychptr@gmail.com', ' Raditiya Cahya Putra ', 'S1', 'Karyawan swasta', 'Jakarta/ 10-09-1990', 'Sari Dahliani', 'S1', 'Karyawan Swasta', 'Cirebon/06-09-1988'),
('TK0284', '202201025', '202201025', 'AZKAYRA ZAHRA MAHENDRA', 'Jakarta', '2018-02-06', 'P', 'TKA', 2022, 'AYRA', 'K1 -Ath Thoriq', '14 kg', '100 cm', NULL, ' Cluster Kiana Bintara Blok A3', '-', '085647282820', 'mahendra.david@gmail.com', ' David Mahendra', 'D4', 'Pegawai Swasta', 'Boyolali/ 12-12-1988', ' Robiatul Kamelia', 'D4', 'IRT', 'Bangkalan/ 20-07-1989'),
('TK0285', '202201026', '202201026', 'ADEEVA RIZKIYYA WAHYUDI', 'Bekasi', '2019-02-07', 'P', 'TKA', 2022, 'ADE', 'K1 - Al Balad', '12 kg', '93 cm', NULL, ' Cipta view regency blok C 6-7 harapan jaya bekasi', '-', '08121990649', 'erwinwahyudi82@gmail.com', 'Erwin Wahyudi ', 'S1', 'Wirausaha', 'Jakarta/ 03-03-1981', 'Riska Yudianti', 'Kedokteran umum', 'Dokter', 'Jakarta/ 06-05-1981'),
('TK0286', '202201027', '202201027', 'MUHAMMAD BATTUTA AFNANSYAH', 'Bekasi', '2018-10-12', 'L', 'TKA', 2022, 'BATUTA', 'K1 -Ath Thoriq', '-', '-', NULL, ' Kp. Pamahan RT 01/09 No. 22 Kelurahan Jatimekar Kecamatan Jatiasih', '021 84996017', '085692729707', 'muhammadfirmansyah77@gmail.com', ' Muhammad Firmansyah', 'S1', 'D3', 'Bekasi/ 23-07-1990', ' Ratna Ayu Purwasih', 'S1', 'IRT', 'Palembang/ 16-09-1990'),
('TK0287', '202201028', '202201028', 'AISYAH ALTHAFUNNISA KINAYUNG', 'Bekasi', '2019-08-06', 'P', 'TKA', 2022, 'AISYAH', 'K1 - Al Buruj', '16/5 kg', '103 cm', NULL, ' Jalan pelabuhan ratu no 55 pengasinan rawalumbu bekasi', '-', '081281101919', 'ang.dipa@gmail.com', ' Ananggadipa Sangsukma Kinayung', 'S1', 'Karyawan BUMN', 'Jepara 03-01-1985', 'Mutia Pratiwi', 'S1', 'IRT', 'Pariaman/ 03-09-1989'),
('TK0288', '202201029', '202201029', 'SHAHNAZ ELEANOR MAESAROH', 'Jakarta', '2019-01-04', 'P', 'TKA', 2022, 'SHAHNAZ', 'K1 - Al Fajr', '15 kg', '-', NULL, ' Perumahan taman galaxy jalan cendana III blok P III no 8 jakasetia bekasi selatan', '-', '089610085997', 'bagus.inaport4@gmail.com', 'Bagus Purwanto ', 'S2', 'Pengacara', 'Magelang/ 15-07-1983', 'Kiki Meishara', 'S1', 'IRT', 'Pematangsiantar/ 17-05-1985'),
('TK0289', '202201030', '202201030', 'SAYYIDAH ALESHA NADA', 'Bekasi', '2018-02-02', 'P', 'TKA', 2022, 'ALESHA', 'K1 -Ath Thoriq', '18 kg', '90 cm', NULL, ' Komplek persada kemala blok 17 no. 4-5 jakasampurna/ bekasi barat 17145', '-', '085716427723', 'bhil2.aul54@gmail.com', 'Muhamad Ramadani ', 'S1', 'Karyawan swasta', 'Jakarta/ 25-04-1990', 'Nabila Nur Aulia', 'S1', 'Karyawan swasta', 'Louisiana/ 30-11-1992'),
('TK0290', '202201031', '202201031', 'NAJMA HASKA KAYLA', 'Surakarta', '2019-09-02', 'P', 'TKA', 2022, 'HASKA', 'K1 - Al Buruj', '13 kg', '96 cm', NULL, ' Familia Urban - Ganesha BG 57/ Mustika Sari/ Mustika Jaya/ Bekasi', '-', '082115859616', 'himawan.nurkahfianto@gmail.com', 'Himawan Nurkahfianto', 'S1', 'Karyawan swasta', 'Bekasi/ 12-03-1990', 'Ratih Anggraeny', 'S1', 'IRT', 'Gresik/ 27-08-1989'),
('TK0291', '202201032', '202201032', 'SHAQUEENA ELFIRA AWBINA', 'Bekasi', '2019-04-01', 'P', 'TKA', 2022, 'SHAQUEENA', 'K1 - Al Balad', '15 kg', '80 cm', NULL, ' Taman Galaxy. Jl. Pulo sirih utara dalam 8 DA 169', '021 8206637', '08561070176', 'nailahumammy13@gmail.com', 'Bimo Nugroho ', 'S1', 'Karyawan swasta', 'Jakarta/01-03-1992', 'Nailatul Izza Hummamy', 'S1', 'IRT', 'Bekasi/ 13-06-1994'),
('TK0292', '202201033', '202201033', 'MUHAMMAD HANAN ATTAQI', 'Bekasi', '2018-07-05', 'L', 'TKA', 2022, 'TAQI', 'K1 - Al Balad', '13 kg', '100 cm', NULL, ' Cluster Kiana Bintara blok D no 6', '-', '081510708767', 'hardi.hardiputra@gmail.com', 'Hardiansyah Putra', 'S1', 'Engineer', 'Jakarta/14-08-1989', 'Rhadytia Hanjani', 'S1', 'IRT', 'Jakarta/ 24-04-1989'),
('TK0293', '202201034', '202201034', 'FAYZA ZHAFIRATUL MUNA ISMONO', 'Bekasi', '2019-10-08', 'P', 'TKA', 2022, 'FAYZA', 'K1 - Al Balad', '12/7 kg', '90 cm', NULL, ' Jalan Padang Raya Blok F Nomor 228/ Bekasi Selatan', '-', '081316265159', 'mustika.citra21@gmail.com', 'Indra Verian Ismono', 'S2', 'Karyawan swasta', 'Kudus/ 19-02-1972', 'Citra Ayu Mustika', 'S1', 'Content creator', 'Bandung/ 21-11-1990'),
('TK0294', '202201035', '202201035', 'KEYLA SABILLA MENTARI', 'Bekasi', '2019-09-10', 'P', 'TKA', 2022, 'MENTARI', 'K1 - Al Fajr', '14/5 kg', '90 cm', NULL, ' KRISTAL GARDEN RESIDANCE BLOK G2 NO.2 RT.006/RW.004 CIRIUNG-CIBINONG-KAB. BOGOR JABAR', '021 82402497', '085647851888', 'agungsurya_16@yahoo.com', 'Agung Surya Diyanto ', 'S1', 'PNS', 'Salatiga/ 02-12-1985', 'Rani Puspita Dewi', 'D3', 'PNS', 'Sleman/ 26-05-1989'),
('TK0297', '202201038', '202201038', 'ASKARA LANANG MAHAMERU', 'Jakarta', '2019-01-01', 'L', 'TKA', 2022, 'ASKARA', 'K1 - Al Buruj', '14 kg', '92 cm', NULL, 'Taman Century 2 Jl. Kemuning VI blok M No.27 Pekayon Jaya Bekasi Selatan 17148', '-', '08121572844', 'askaralm01@gmail.com', 'Rhesa Syahrial', 'S1', 'Karyawan Swasta', 'Boyolali/ 07-02-1987', 'Adi Ayu A.P.', 'S1', 'IRT', 'Payakumbuh/ 23-08-1986'),
('TK0298', '202201039', '202201039', 'MUHAMMAD AZZAM KHAIRUDDAROYNI', 'Bekasi', '2020-02-05', 'L', 'TKA', 2022, 'AZZAM', 'K1 - Al Buruj', '15 kg', '102 cm', NULL, 'Pondok Pekayon Indah Blok BB 21 No.11 jalan Pakis 6 C Bekasi selatan', '-', '082110683102', 'indriyanipermatasari.ummunaura@gmail.com', 'Selamet Daroini', 'S1', 'Konsultan lingkungan', 'Pinang Banjar/ 03-09-1975', 'Indriyani Permatasari', 'S2', 'IRT', 'Jakarta/ 29-02-1980'),
('TK0300', '202201041', '202201041', 'AGHNIA MARYAM NOORA PRAFADI', 'Bekasi', '2018-09-07', 'P', 'TKA', 2022, 'AGHNIA', 'K1 - Al Balad', '11 kg', '94 cm', NULL, ' Grand Galaxy City/ Cluster Orchid Garden/ OG 2 no.7/ Jaka Setia/ Bekasi Selatan', '021 82732394', '081311183388', 'pradipta.sura@gmail.com', 'Pradipta Surasebastian', 'S1', 'karyawan swasta', 'Jakarta/ 18-12-1988', 'Fadila Amelia M', 'S2', 'IRT', 'Makassar/ 26-12-1988'),
('TK0301', '202201042', '202201042', 'UBAID HAMIZAN PRIHANDARU', 'Denpasar', '0001-01-01', 'L', 'TKA', 2022, 'UBAID', 'K1 - Al Fajr', '17 kg', '100 cm', NULL, 'Komplek Pemda DKI Blok B 3 No. 19', '-', '08119995062', 'mario.prihandaru@gmail.com', 'Ahmad Mario Prihandaru', 'MM', 'karyawan swasta', 'Jakarta/ 09-03-1990', 'Evy Marcelina', 'S1', 'IRT', 'Jakarta/ 08-01-1992'),
('TK0302', '202201043', '202201043', 'ALFATIH BAHY BHADRIKA', 'Bekasi', '0001-01-01', 'L', 'TKA', 2022, 'ALFATIH', 'K1 -Ath Thoriq', '13 kg', '95 cm', NULL, ' Jl H Anwar Cikunir no.62 Rt.05 Rw.01 Jakamulya Bekasi Selatan Kota Bekasi', '-', '08128761553', 'anggerbagus.ab@gmail.com', 'Sulyanto', 'SLTA', 'Karyawan swasta', 'Sleman/ 19-04-1980', 'Nunung Nursinah', 'SLTA', 'IRT', 'Bekasi/ 15-11-1985'),
('TK0304', '202201045', '202201045', 'MUHAMMAD AZKA DANIYAL ALI', 'Jakarta', '2018-06-04', 'L', 'TKB', 2022, 'AZKA', 'K2- Al Mursalat', '19/5 kg', '104 cm', NULL, ' Perumahan Pondok Timur Mas - Jl Pondok Merah Mas II Blok F2 No 16/ Jakasetia', '-', '081802286764', 'dhani_taruna@yahoo.com', ' Dhani Jaya Taruna ', 'S1', 'Karyawan swasta', 'Kotabumi/ 07-07-1983', 'Indri Handayani', 'S1', 'karyawan BUMN', 'Jakarta/ 14-02-1987'),
('TK0305', '202201046', '202201046', 'KHAULAH INARA', 'Bekasi', '2020-06-11', 'P', 'TKA', 2022, 'INARA', 'K1 - Al Balad', '14/2 kg', '97/5 cm', NULL, 'Jalan Nusa Indah VI/ B498/ Kel. Jakasetia/ Bekasi Selatan 17147', NULL, '0811161299 / 0811456434', 'fachturengineering@gmail.com', 'Fachturrizki Ramadhan', 'S1', 'Karyawan swasta', 'Jakarta/ 9 April 1991', 'Chessa Rachmalaputi', 'S2', 'Karyawan swasta', 'Bekasi/ 4 September 1992'),
('TK0306', '202201047', '202201047', 'ABIZAR RIFAT AMIER', 'Bekasi', '2019-02-04', 'L', 'TKA', 2022, 'ABIZAR', 'K1 - Al Balad', '12 kg', '90 cm', NULL, 'Jl Taman Agave II/M3/2 taman Galaxy', NULL, '0817531112 / 0818937879', 'waroengmaksem@gmail.com', 'Rifat Amier', 'S1', 'Wiraswasta', 'Surabaya/29-8-1982', 'Samira Bachmid', 'S1', 'IRT', 'Surabaya/ 25 Desember 1988'),
('TK0308', '202201049', '202201049', 'ARSYILA HANUM RAHMADINA', 'Jakarta', '2018-03-09', 'P', 'TKB', 2022, 'HANUM', 'K2 - Al Insan', '14 kg', '90 cm', NULL, 'Perumahan Harapan Baru 1/ Jl. Nangka 4 No. 5 RT 004 RW 005. Kota Baru Bekasi Barat. Bekasi. Jawa Barat. 17133', NULL, '081299366510', 'devihenri@gmail.com', 'Devi Henri Wibowo', 'S1', 'Karyawan swasta', 'Pekalongan/ 26 Oktober 1988', 'Indah Purnamasari Wulanti', 'S1', 'S1', 'Jakarta/ 8 Sept 1988'),
('TK0309', '202201050', '202201050', 'AISHA SHAQUEENA ADZANI', 'Bekasi', '2020-03-11', 'P', 'TKA', 2022, 'AISHA', 'K1 - Al Buruj', '17 kg', '105 cm', NULL, 'The Green View Blok D No. 28', NULL, '087784624484 / 081806706175', 'fadliadzani15051993@gmail.com', 'Fadli Adzani', 'S1', 'Wiraswasta', 'Jakarta/ 15 Mei 1993', 'Hana Triaputri', 'Diploma IV', 'IRT', 'Kupang/ 9 September 1993'),
('TK0310', '202201051', '202201051', 'SALMA ADZKIRA RAWEYAI', 'Bekasi', '2018-08-12', 'P', 'TKA', 2022, 'SALMA', 'K1 - Al Balad', '16 kg', '95 cm', NULL, 'Jl. Kelud Blok A No. 112B RT 007 RW 09 Perumahan Masnaga Jaka Sampurna', NULL, '081218112888 / 081210001882', 'rhonaldraweyai@gmail.com', 'Rhonald', 'SMA', 'Wiraswasta', 'Serui/ 6 September 1974', 'Nini Agororia', 'S1', 'IRT', 'Jakarta/ 21 Agustus 1981'),
('TK0312', '202201052', '202201052', 'KHALISA AZZAHRA ALKIPARO', 'Jakarta', '2019-06-01', 'P', 'TKA', 2022, 'KHALISA', 'K1 - Al Fajr', '14 kg', '93 cm', NULL, 'Jl. Cemara Blok W No 12A/ Taman Galaxy', NULL, '081316548219 / 081281733220', 'alkiparo@gmail.com', 'Kholika Alkiparo', 'S1', 'Wiraswasta', 'Palembang/ 25 Feb 1988', 'Akhlaqul Karimah', 'S1', 'IRT', 'Jakarta/ 7 Des 1991'),
('TK0313', '202201053', '202201053', 'NAFEESHA ALESHA ADNAN', 'Jakarta', '2019-11-04', 'P', 'TKA', 2022, 'NAFEESHA', 'K1 - Al Buruj', '15 kg', '95 cm', NULL, 'Jl akalipa blok c 3 no 16 /kemang pratama 3', NULL, '0817102770 / 081220002770 ', 'nouraesperansza@gmail.com', 'Adnan', 'SMA', 'Wiraswasta', 'Garut/ 13 Feb 1987', 'Noura', 'SMA', 'IRT', 'Pandeglang/ 25 Nov 1991'),
('TK0314', '202201054', '202201054', 'RAYYA ARSYILA HAFIZA', 'Bekasi', '2020-04-02', 'P', 'TKA', 2022, 'RAYYA', 'K1 - Al Balad', '14 kg', '90 cm', NULL, 'Komp.Pulo Permata Sari Blok B5 No 3 Pekayon Jaya/ Bekasi Selatan', NULL, '082217455191 / 081285896381', 'wildanfujiansah@gmail.com', 'Wildan Fujiansah', 'S2', 'PNS', 'Cirebon/ 20 Maret 1986', 'Reti Rohmalia Sari', 'S1', 'Karyawati Swasta', 'Pandeglang/ 17 Maret 1987'),
('TK0315', '202201055', '202201055', 'MUHAMMAD ZAYD ZULKIFLI', 'Jakarta', '2020-02-06', 'L', 'TKB', 2022, 'ZAYD', 'K2 - Al Ma\'arij', NULL, NULL, NULL, 'Jl. Nusa Indah Raya blok H-1', '021 8508783', '081318391315 / 081286129259', 'raynugraha@gmail.com', 'Ray Zulham Farras Nugraha', 'S1', 'Wiraswasta', 'Jakarta/ 29 Maret 1993', 'Milka Anisya Norasiya', 'S1', 'dokter', 'Jakarta/ 4 Nov 1991'),
('TK0316', '202201056', '202201056', 'AMIRA AZZAHRA KIMBERLITE', 'Bekasi', '2017-07-11', 'P', 'TKB', 2022, 'AMIRA', 'K2- Al Mursalat', '23 kg', '110 cm', NULL, 'Kemang Pratama I JL Utama III Blok BK No 19 RT 007 RW 011/ Kelurahan : Sepanjang Jaya/ Kecamatan : Rawa Lumbu/ Kotamadya Bekasi/ Jawa Barat / Indonesia', '021-82408064', '+628111554564/+62 8111196272', 'onal_05@yahoo.com', 'IR. ONTOWIRYO ALAMSYAH DIPL GEOTH T', 'S2', 'Karyawan swasta', 'YOGYAKARTA/5 Nov 1966', 'VERA MELINDA S.SOS', 'S1', 'wiraswasta', 'Jakarta/ 6 Feb 1972'),
('TK0317', '202201057', '202201057', 'QIANA NAFIAH MUSHABIRA', 'Bekasi', '2017-12-11', 'P', 'TKB', 2022, 'QIANA', 'K2- Al Mursalat', '25 kg', '107 cm', NULL, 'Jl. Manggis Raya Blok A-444 RT 08 RW 12/ Perumahan Duren Jaya', NULL, '083892532616', 'fikri77.fm@gmail.com', 'Muhammad Fikri Muzzaki', 'S2', 'Guru SD AIIS', 'HSS/ 22 April 1994', 'Lutfia Niswatul Khasanah', 'D3', 'Okupasi Terapis', 'Jakarta/ 25 Agustus 1992'),
('TK0318', '202301001', '202301001', 'GHUMAISHA ZIDNI ILMA', 'Jakarta', '2019-11-07', 'P', 'KB', 2023, 'GHUMA', 'KB - At Tiin', '11', '90', NULL, 'Griya kemang raya no. 91 . Jl. Kemang raya. Jaticempaka. Bekasi', NULL, '81281182408', 'dinarputripratiwi@gmail.com', 'Urida zidni ilma', 'S1 - sarjana teknik elektro', 'Swasta', 'Semarang/ 11-Jun-1987', 'Dinar putri pratiwi', 'S1 - pendidikan anak usia dini', 'Irt', 'Palembang/ 22-08-1992'),
('TK0319', '202301002', '202301002', 'TSABINA EMBUN FATHIHA ARIF', 'Bekasi', '2020-06-04', 'P', 'KB', 2023, 'EMBUN', 'KB - At Tiin', '14', '90', NULL, 'Jalan Jatiluhur Raya 117/ Cluster Rosella Blok Arelian No.6 Rt.2/3 Jakasampurna Berkasi Barat 17145', NULL, '81717756111', 'shirofah89@gmail.com', 'Muhammad Arif Sulaiman', 'S2 - Ilmu Hukum', 'Lawyer', 'Aceh Timur/ 07-Nov-1983', 'Sitti Musyarrafah', 'S1 - Psikologi Pendidikan', 'IRT', 'Jakarta/ 18-01-1989'),
('TK0320', '202301003', '202301003', 'ASIYAH KALILA SAMAH', 'Bekasi', '2020-04-05', 'P', 'KB', 2023, 'KALILA', 'KB - Al Qadr', '13', '94', NULL, 'Casa alaia residence blok C no 32/ jln bougenville raya RT 1 RW 11 Jakasampurna/ bekasi 17145', NULL, '81297841932', 'mhmmd.bilal24@gmail.com', 'Muhammad Bilal', 'S1 - Akuntansi UI', 'Swasta', 'Jakarta/ 03-Sep-1994', 'ila Wati', 'S1 - Ilmu Ekonomi UI', 'IRT', 'Banyumas/ 02-Sep-1995'),
('TK0321', '202301004', '202301004', 'AISYAH HAURA KARIMAH', 'Jakarta', '2019-01-04', 'P', 'KB', 2023, 'AISYAH', 'KB - Al \'Alaq', '13kg', NULL, NULL, 'Jl Marzuki 9 rt 05 rw 01 no 42 penggilingan Cakung Jakarta timur', NULL, '87887336292', 'tanyakaromi99@gmail.com', 'Ali karomi', 'Smk', 'Wirausaha', 'Jakarta/ 04-Apr-1991', 'Kamia', 'S1-pendidikan', 'Guru', 'Bekasi/ 06-Jun-1994'),
('TK0322', '202301005', '202301005', 'MUHAMMAD UWAIS AL QARNI', 'Bekasi', '2019-06-10', 'L ', 'KB', 2023, 'UWAIS', 'KB - Al Qadr', '14', '95', NULL, 'Jl. Cipete Raya No.123 RT/RW : 03/05 (gang kweni) Kelurahan : Mustikasari/ Kecamatan : Mustikajaya/ Kota  Bekasi - 17157', NULL, '81520302710', 'aditya.nugraha1089@gmail.com', 'Muhammad Aditya Nugraha', 'SMK Telkom Shandy putra jakarta', 'Swasta', 'Jakarta/ 10-Oct-1989', 'Andinna Prameswari', 'D3 Akuntansi - Politeknik Pos Indonesia', 'IRT', 'Jakarta/ 06-Oct-1990'),
('TK0323', '202301006', '202301006', 'KAIFEEYA HAFIDZAH MARYAM', 'Bekasi', '2020-05-10', 'P', 'KB', 2023, 'MARYAM', 'KB - Al Ashr', '12 kg', NULL, NULL, 'Cluster Intan Gardenia No. A4/ Jakasetia/ Bekasi Selatan', NULL, '81210309363', 'feronalizaazis@gmail.com', 'Heru Oktaviana', 'SI - Administrasi Niaga UI', 'Swasta', 'Kuningan/ 10-Apr-1986', 'Ferona Liza', 'S1 / Sarjana Ekonomi STEKPI', 'IRT', 'Jakarta/ 02-Sep-1988'),
('TK0324', '202301007', '202301007', 'HANAN IMAN HABIBURRAHMAN', 'Sukabumi', '2019-03-01', 'L', 'KB', 2023, 'MAS IMAN', 'KB - Al Ashr', '05-Des', '90', NULL, 'Jln. Pondok Jingga Mas III Blok F5 No 19 Jakasetia/ Kec. Bekasi Selatan Kota Bekasi Jawa Barat 17147', NULL, '87856276326', 'angginalatief@gmail.com', 'HASAN SOFIAN HERNAWAN', 'S1 Teknik Kimia ITB', 'BUMN', 'BANDUNG/ 14-01-1989', 'Anggina Oktapia Latief', 'S1 Psikologi Univ. Ahmad Dahlan', 'IRT', 'Sukabumi/ 15-10-1987'),
('TK0325', '202301008', '202301008', 'ZAFER KENZIE', 'JAKARTA', '2019-10-12', 'L', 'KB', 2023, 'ZAFER', 'KB - At Tiin', '05-Des', '85', NULL, 'CLUSTER BINTANG RESIDENCE INDAH NO B6/ JL HJ UMAR/ JAKASETIA/ BEKASI SELATAN', NULL, '8111222945', 'islahamalia13@gmail.com', 'ZAHFAN ASADALLAH', 'SMA', 'WIRAUSAHA', 'DEPOK/ 21-03-1994', 'ISLAH AMALIAH', 'S1 - SARJANA EKONOMI', 'IBU RUMAH TANGGA', 'JAKARTA/ 13-12-1994'),
('TK0327', '202301010', '202301010', 'MUHAMMAD EIDLAN DEJARASYAA', 'Jakarta', '2019-05-11', 'L', 'KB', 2023, 'DEJA', 'KB - Al Ashr', '18/5', '100', NULL, 'Perumahan Bintara Alam Permai Blok D no 7 Bintara Jaya', NULL, '81310557128', 'pujo.widiatno@pancaputramadani.com', 'Pujo Widiatno', 'D3', 'Wirausaha', 'Kebumen/ 08-Sep-1981', 'Chiquitita Hapsari', 'S1', 'IRT', 'Bekasi/ 10-Mar-1982'),
('TK0328', '202301011', '202301011', 'MISHARY MANNAF RABBANI', 'KOTA BEKASI', '2019-07-07', 'L', 'KB', 2023, 'MISHARY', 'KB - At Tiin', '13', '94', NULL, 'JALAN SADEWA RAYA C 253C JAKASETIA', NULL, NULL, 'muh.4fif@gmail.com', 'Muhamad Afif', 'S1 sarjana teknik UNDIP', 'Wirausaha', 'Kabupaten Semarang/ 12-Apr-1988', 'Nuurul Lathiifah', 'S1 sarjana Teknik UNDIP', 'Wirausaha', 'Pekalongan/ 05-Dec-1989'),
('TK0329', '202301012', '202301012', 'IZZATY QISTHY', 'Bekasi', '2021-07-07', 'P', 'KB', 2023, 'QISTHY', 'KB - Al Qadr', '10/5kg', NULL, NULL, 'Emprit emas blok B no 51/ jaka setia', NULL, '81324463139', 'email : kastori77@yahoo.co.id', 'Kastori', 'S1 Sastra Arab di UNJ', 'Wirausaha', 'Brebes/ 29-09-1977', 'Ratih Maharani Subekti', 'S1 Ekonomi', 'Ibu Rumah tangga', 'Jakarta/ 13-09-1982'),
('TK0330', '202301013', '202301013', 'HANA NAYLA ASSYIFA', 'Kota Bekasi', '2020-02-06', 'P', 'KB', 2023, 'HANA', 'KB - Al Ashr', '20', '100', NULL, 'Kp Dua Perum De\'minimalis Blok C No.15 RT.04 RW.02 Jaka Sampurna/ Bekasi Barat 17145', NULL, '81282332250', 'linda.k3ui@gmail.com', 'Sigit Purwanto', 'S1 - Sarjana Teknik Sipil UGM', 'Karyawan BUMN', 'Jakarta/ 15-07-1980', 'Linda Hartini', 'S1 - Sarjana Kesehatan Masyarakat UI', 'IRT', 'Muara Enim/ 16-01-1983'),
('TK0331', '202301014', '202301014', 'ELYSIA AISYAHZAHRAH ANWAR', 'jakarta', '2019-07-12', 'P', 'KB', 2023, 'AISYAH', 'KB - At Tiin', '12', '101', NULL, 'jl. taman Malaka selatan 2 Blok B10 no 27 Malaka sari duren sawit Jakarta timur 13460', NULL, '81384273237', 'marlinadevi14@gmail.com', 'M. Bahrul Anwar', 'SI - Teknik Mesin UniBraw', 'karyawan swasta', 'pasuruan/ 28-04-1984', 'Devi Marlina', 'SI- Teknologi Industri IPB', 'IRT', 'Bandar Lampung/ 14-03-1985'),
('TK0332', '202301015', '202301015', 'ABDUL HAKIMI', 'Bekasi', '2021-01-03', 'L', 'KB', 2023, 'ABDUL', 'KB - Al \'Alaq', '13', '95', NULL, 'Perumahan Pondok Timur Mas/ Jalan Pondok Jingga Mas 7 blok R3 no 11', NULL, '811222977', 'ppat.bima@gmail.com', 'Bima Yogie Purnama', 'S2 Magister Kenotariatan/ Universitas Indonesia (UI)', 'Notaris/PPAT & Pengusaha', 'Bekasi/ 15-12-1990', 'Feny Ambarsari', 'S1 FSRD Institut Teknologi Bandung (ITB)', 'Ibu rumah tangga', 'Bekasi/ 03-Feb-1991'),
('TK0333', '202301016', '202301016', 'WIBISANA AFNAN ZAYD', 'Bekasi', '2019-11-11', 'L', 'KB', 2023, 'WIBI', 'KB - Al \'Alaq', '13', NULL, NULL, 'Perumahan villa pekayon blok A3 no 12', NULL, '81393392811', 'ajengrosalyne.air@gmail.com', 'Alifia Rahman', 'S1 Teknik Mesin Unej', 'Swasta', 'Jember/ 03-Nov-1986', 'Ajeng illastria', 'S2 Farmasi UI', 'PNS', 'Mojokerto/ 20-01-1987'),
('TK0334', '202301017', '202301017', 'UMAR ABQARIZIYAD KINAYUNG', 'Bekasi', '2021-05-03', 'L', 'KB', 2023, 'UMAY', 'KB - Al Ashr', '13', '93', NULL, 'Jalan pelabuhan ratu no 56 pengasinan Rawalumbu kota Bekasi', NULL, '81284060054', 'wikrama.ananta@gmail.com', 'Anantawikrama Unggul Kinayung', 'S1 Arsitektur Universitas Pancasila', 'Wiraswasta', 'Semarang/ 03-Dec-1987', 'Rachmayanti Nur Padilah', 'S1 Hubungan Internasional UIN', 'IRT', 'Bekasi/ 24-06-1993'),
('TK0335', '202301018', '202301018', 'AIZA HANAA ALHUMAIRA', 'Bekasi', '2022-06-03', 'P', 'KB', 2023, 'AIZA', 'KB - Al \'Alaq', '11kg', NULL, NULL, 'jalan jeruk 4 no 117 Perumnas 1 Bekasi', NULL, '81310077329', 'dedik08@gmail.com', 'Dedik Cahyono', 'Sarjana teknik', 'pegawai swasta', 'Blitar/ 08-Nov-1979', 'Farida Andam Dewi', 'Sarjana Teknik', 'swasta', 'Jakarta/ 09-Jan-1980'),
('TK0336', '202301019', '202301019', 'MARYAM ATSILAH MALASSA', 'Bekasi', '2021-04-10', 'P', 'KB', 2023, 'MARYAM', 'KB - At Tiin', '16', '95', NULL, 'Pondok pekayon indah jalan mahoni 1 B14 no 7', NULL, '81285180555', 'endy.malassa@yahoo.com', 'Endy malassa', 'Sma', 'Pegawai Bumn', 'Jakarta/ 07-Sep-1992', 'Nisa sofia', 'D3', 'IRT', 'Bandar lampung/ 01-Jul-1991'),
('TK0337', '202301020', '202301020', 'MUHAMMAD RAFIF ABQARY', 'Bekasi', '2019-03-01', 'L', 'KB', 2023, 'RAFIF', 'KB - Al Ashr', '18', '95', NULL, 'Jl. Pulo sirih tengah 13 blok ea 390', NULL, '81286382262', 'widiyogop@gmail.com', 'Widi yogo pratomo', 'S1 Akuntansi Univ. Gunadarma', 'Pns', 'Jakarta/ 04-Nov-1988', 'Elin septiana', 'S1 Akuntansi Univ. Gunadarma', 'Irt', 'Lebak/ 22-09-1990');
INSERT INTO `siswa` (`c_siswa`, `nis`, `nisn`, `nama`, `temlahir`, `tanglahir`, `jk`, `c_kelas`, `thn_join`, `panggilan`, `c_klp`, `bbadan`, `tbadan`, `ukuran_baju`, `alamat`, `telp`, `hp`, `email`, `nama_ayah`, `pendidikan_a`, `pekerjaan_a`, `ttl_a`, `nama_ibu`, `pendidikan_i`, `pekerjaan_i`, `ttl_i`) VALUES
('TK0338', '202301021', '202301021', 'ZAIDAN HASAN KARIM', 'Bekasi', '2020-08-05', 'L', 'KB', 2023, 'ZAIDAN', 'KB - Al Qadr', '13 kg', NULL, NULL, 'Jl cikunir raya no 101 rt01 rw02/ jakamulya/ bekasi selatan', NULL, '85718697759', 'diah647@gmail.com', 'Budi Yatmoko', 'SMP', 'Wirausaha', 'Sragen/ 08-Aug-1985', 'Diah ayu puspitarini', 'SMK', 'IRT', 'Sragen/ 20-05-1992'),
('TK0339', '202301022', '202301022', 'NAURA ARYANARESWARI AZZAHRA', 'Bekasi', '2019-08-02', 'P', 'KB', 2023, 'NAURA', 'KB - Al Qadr', '13 Kg', NULL, NULL, 'Griya Metropolitan 2 Blok E5 No.3 Pekayon Bekasi', NULL, '82133183060', 'ari.prihandoyo@gmail.com', 'Ari Agung Prihandoyo', 'S2 - Magister Teknik-UI', 'Karyawan Swasta', 'Boyolali/ 01-Jul-1989', 'Widya Ariaty', 'S1 - Pendidikan Dokter - Unpad', 'Mahasiswa PPDS', 'Palembang/ 07-Jul-1988'),
('TK0340', '202301023', '202301023', 'AHMAD FALAH IBRAHIM', 'Jakarta', '2020-12-05', 'L', 'KB', 2023, 'AHMAD', 'KB - At Tiin', '12', '98', NULL, 'Jl. Tenggiri V No. 12/ RT 002/RW.004/ Kelurahan Kayuringin Jaya/ Kecamatan Bekasi Selatan/ Kota Bekasi/ Jawa Barat/ 17144', NULL, '85336035037', 'amirudin.al.aziz@gmail.com', 'Zakariya Amirudin Al Aziz', 'S1 Teknik Industri', 'Swasta', 'Nganjuk/ 12-Nov-1990', 'Vidya Nurina', 'Dokter Umum', 'Wirausaha', 'Pasuruan/ 20-10-1991'),
('TK0341', '202301024', '202301024', 'SENJA ISLAM MEDINA', 'Cibinong', '2020-02-01', 'P', 'KB', 2023, 'SENJA', 'KB - Al \'Alaq', '13/5kg', NULL, NULL, 'Komp kristal garden blok G2 no.2 ciriung-cibinong-kan. Bogor', NULL, '85647851888', 'agungsurya_16@yahoo.com', 'Agung Surya Diyanto', 'S1- ekonomi pembangunan UKSW', 'Pns', 'Salatiga/ 12-Feb-1985', 'Rani Puspita Dewi', 'D3 kebidanan poltekkes jakarta 3', 'Pns', 'Sleman/ 26-05-1989'),
('TK0342', '202301025', '202301025', 'MAHARDHIKA ALI ALFATIH MUNTHE', 'Jakarta', '2020-06-07', 'L', 'KB', 2023, 'ALI', 'KB - At Tiin', '12', '93', NULL, 'Pondok Pekayon Indah Jalan Ketapang I Blok DD48 No 8', NULL, '81361582307', 'fahmi_munthe@yahoo.com', 'Khairul Fahmi Munthe', 'S1 - Sarjana Teknik USU', 'Swasta', 'Jakarta/ 02-May-1988', 'Ayu Aryawati', 'S1 - matematika Unpad', 'BUMN', 'Jakarta/ 28-06-1989'),
('TK0343', '202301026', '202301026', 'ARYENA MYSHA HUDA', 'Bekasi', '2020-12-12', 'P', 'KB', 2023, 'MYSHA', 'KB - Al \'Alaq', '14/30 kg', NULL, NULL, 'Perum. PTI KHUSUS BLOK K5/no.5/ Rt.005/Rw.010/ kel. Jatimulya/ kec. Tambun selatan', NULL, '87875883813', 'hudafachrizal11@gmail.com', 'Fachrizal huda', 'S1 akuntansi univ mercu buana', 'Wiraswasta', 'Padang panjang/ 20-06-1992', 'Johanna Prasetiarini', 'S1 akuntansi univ. Mercu buana', 'Ibu rumah tangga', 'Jakarta/ 07-Dec-1992'),
('TK0344', '202301027', '202301027', 'ALMAHYRA KIRANI RAMADHANI', 'Jakarta', '2020-03-05', 'P', 'KB', 2023, 'KIRANI', 'KB - Al \'Alaq', '10', '88', NULL, 'Perumahan Jatibening Estate/ Jl. Kutilang II Blok G9 No.4 Rt.013 Rw.013 Jatibening/ Pondok Gede/ Bekasi Barat', NULL, '81212797092', 'annisa.anggraini10@gmail.com', 'Muhamad Rizki Fajar', 'S1 - Pendidikan Administrasi Perkantoran UNJ', 'Swasta', 'Jakarta/ 08-Aug-1990', 'Annisa Anggraini', 'S1 - Akuntansi UI', 'Swasta', 'Jakarta/ 10-Oct-1992'),
('TK0345', '202301028', '202301028', 'MUHAMMAD AHDAN BILFAQIH', 'Palembang', '2021-01-02', 'L', 'KB', 2023, 'AHDAN', 'KB - Al Qadr', '18', '106', NULL, 'The Green Palace Jatibening/ Blok C/3/ Jatibening Baru/ Pondok Gede/ Bekasi', NULL, NULL, 'ahmadh809@gmail.com', 'Ahmad Hidayah', 'S1-Sarjana Ekonomi', 'PNS', 'Jakarta/ 05-Nov-1988', 'Firda Aristya', 'S1-Sarjana', 'PNS', 'Palembang/ 04-Nov-1989'),
('TK0346', '202301029', '202301029', 'AZKAYRA KHADEEJAH ALIYA', 'Jakarta', '2019-08-02', 'P', 'KB', 2023, 'ALIYA', 'KB - Al \'Alaq', '11 kg', '100', NULL, 'Jl penggilingan gg hj masmala rt 13 rw 07 no 70 kel penggilingan kec cakung jakarta timur 13940', NULL, '81315086412', 'fatihaliya99@gmail.com', 'fatih hanabila aliya', 'S2', 'Manager', 'Jakarta/ 29-06-1996', 'Tasya', 'S1', 'Ibu rumah tangga', 'Jakarta/ 02-Apr-2000'),
('TK0347', '202301030', '202301030', 'UMAR MUSA SUHADA', 'Bekasi', '2019-11-11', 'L', 'KB', 2023, 'UMAR', 'KB - Al Qadr', '12.7', '95', NULL, 'Cluster Lavesh SA5.16 no 12', NULL, '8118416666', 'ahmadcs89@gmail.com', 'Ahmad Chaerus Suhada', 'S1 - Sarjana Statistika IPB', 'Swasta', 'Bekasi/ 03-Oct-1989', 'Puspalia Ayudiar Setiawati', 'S1 - Sarjana Statistika IPB', 'IRT', 'Sumedang/ 10-Mar-1990'),
('TK0348', '202301031', '202301031', 'SHAQUEENA NADA KHALILUNA', 'Bekasi', '2020-11-09', 'P', 'KB', 2023, 'SHAQUEEN', 'KB - At Tiin', '14.2', '100', NULL, 'Jalan Swatantra 1 - Kav V No 149 RT 09 RW 05 Jatirasa Jatiasih 17424', NULL, NULL, 'febrinahanifah@gmail.com', 'Rino Supriadi Putra', 'S2 Teknik Industri Universitas Indonesia', 'BUMN', 'Lumajang/ 29-06-1992', 'Febrina Hanifah', 'S1 Ilmu Komunikasi Universitas Padjajaran', 'BUMN', 'Jakarta/ 13-02-1992'),
('TK0349', '202301032', '202301032', 'KHAYLA NAFISA DZAKIRAH', 'Jakarta', '2020-03-08', 'P', 'KB', 2023, 'KHAYLA', 'KB - Al Qadr', '15', '95', NULL, 'Jl. Pondok cipta blok b1 no.8', NULL, '85775915621', 'lalita.pathya92@gmail.com', 'Ardhito Pratama Nugraha', 'S1-Ekonomi', 'Swasta', 'Jakarta/ 15-09-1990', 'Lalita Pathya Sukma', 'S1-Sistem Informasi', 'IRT', 'Jakarta/ 31-03-1992'),
('TK0350', '202301033', '202301033', 'AISYAH ANNAILA', 'Bekasi', '2019-04-02', 'P', 'KB', 2023, 'AISYAH', 'KB - Al Ashr', '12 Kg', NULL, NULL, 'Perumahan Alam Indah Jl. Garuda II Blok L1 No. 100 RT/RW 001/006 Kel. Poris Plawad Indah Kec. Cipondoh Tangerang', NULL, '85279562281', 'eriwandri@gmail.com', 'Eri Wandri', 'S1 - Sarjana Ilmu Komputer UPI YPTK Padang', 'Karyawan Swasta', 'Padang/ 09-Feb-1991', 'Haizawahyuni', 'S1 - Sarjana Ilmu Komputer UPI YPTK Padang', 'Ibu Rumah Tangga', 'Talawi/ 08-Jan-1992'),
('TK0351', '202301034', '202301034', 'MAHIRA QALESYA PRAKASA', 'Bekasi', '2020-06-06', 'P', 'KB', 2023, 'UMA', 'KB - Al Qadr', '12', '100', NULL, 'Jl. Pondok Jingga Mas V Blok E3 No 19 Bekasi', NULL, '81586213537', 'dedy.bagus@yahoo.com', 'Dedy Bagus Prakasa', 'S2 Akutansi UI', 'PNS', 'Bekasi/ 23-04-1984', 'Ari Astri Yunita', 'S2 Hukum UI', 'PNS', 'Jakarta/ 06-Apr-1983'),
('TK0352', '202301035', '202301035', 'FATHIMAH AZZAHRA NURGHANIA SANDIKA', 'Bekasi', '2021-08-02', 'P', 'KB', 2023, 'FATHIMAH', 'KB - Al Ashr', '14', '90', NULL, 'Pondok Timur Mas Blok G2 no 1B', NULL, '81210665556', 'ek.sandika@gmail.com', 'Rosyandi Luddin', 'D3 Keuangan', 'Karyawan Swasta', 'Jakarta/ 26-06-1978', 'Eka Hidayatul Mustafidah', 'S1 keuangan', 'Karyawan', 'Payakumbuh/ 09-May-2009'),
('TK0353', '202301036', '202301036', 'WAODE MARYAM BAKTI', 'Bekasi', '2020-08-11', 'P', 'KB', 2023, 'MARYAM', 'KB - Al Qadr', '17 kg', NULL, NULL, 'Jl. Penegak 1 no. 75 rawa lumbu bekasi', NULL, NULL, 'Puspasarianggraini82@gmail.com', 'L. M Bakti', 'S2 Magister', 'PNS', 'Yogyakarta/ 14-11-1981', 'Puspa', 'S1- Kesehatan Masyarakat', 'IRT', 'Jakarta/ 07-Jan-1982'),
('TK0354', '202301037', '202301037', 'UMAR KHALID AKRESA', 'Bekasi', '2020-01-10', 'L', 'KB', 2023, 'UMAR', 'KB - At Tiin', '20', '99', NULL, 'Pondok Surya Mandala Jl. Surya Permata IV blok s1 no.27', NULL, NULL, 'caca.bpjstk@gmail.com', 'Krestianto Aditya Santoso', 'S1 Tekhnologi Informasi', 'Swasta', 'Semarang/ 11-Dec-1988', 'Annisa Kusumawardhani', 'S1 Ilmu Komunikasi', 'BUMN', 'Pangkal Pinang/ 21-09-1991'),
('TK0355', '202301038', '202301038', 'KHANZA NAFISAH IHSAN', 'Jakarta', '2019-08-01', 'P', 'KB', 2023, 'KANZA', 'KB - Al \'Alaq', '12/6kg', NULL, NULL, 'KPAD Jl.Angkutan blok K no.24 RT 09/RW 06', NULL, '81316453196', 'rifkirinaldi49@gmail.com', 'Rifki Rinaldi Ihsan', 'S1 - Akuntansi', 'Swasta', 'Jakarta/ 12-Jul-1991', 'Dewi Lestari', 'S1 - Ekonomi', 'IRT', 'Jakarta/ 09-Jun-1991'),
('TK0356', '202301039', '202301039', 'MUHAMMAD ATHALLAH SUPRIYONO', 'Bekasi', '2019-07-02', 'L', 'KB', 2023, 'ATHALLAH', 'KB - Al Ashr', '14', '93', NULL, 'Perum Pondok Timur Indah Jl. Panda 4 Blok D No. 111', NULL, '81808183486', 'shelfisupriyono@gmail.com', 'Iko Supriyono', 'S1 - Akuntansi STIE SUPRA', 'Swasta', 'Jakarta/ 07-Jul-1980', 'Shelfi', 'S1 - BK UNJ', 'IRT', 'Jakarta/ 09-Apr-1981'),
('TK0357', '202301040', '202301040', 'HAZWAN AUSHAF ATHAILLAH', 'Bekasi', '2019-05-11', 'L', 'KB', 2023, 'HAZWAN', 'KB - Al \'Alaq', '15', '98', NULL, 'Sakura regency 3 no U29', NULL, '82113029480', 'tantra_lesmana@yahoo.co.id', 'Tantra Lesmana', 'S1 pendidikan teknik elektro', 'Swasta', 'Jakarta/ 15-05-1986', 'Hikmelia Dwi Sundari', 'Magister psikologi', 'PNS', 'Tasikmalaya/ 13-07-1987'),
('TK0358', '202301041', '202301041', 'KANISYA AFIZA ALIYA', 'BEKASI', '2021-06-02', 'P', 'KB', 2023, 'KANISYA', 'KB - At Tiin', '11.5 kg', NULL, NULL, 'Jl. Pulo sirih utama Blok A1 No.21 Villa Galaxy Bekasi', NULL, '85779744504', 'leslyrossa@gmail.com', 'Idam Bariyanto', 'S1 Teknik Mesin UI', 'Karyawan Swasta PT. AHM', 'Jakarta/ 24-10-1984', 'Lesly Rossa', 'S1 Psikologi Unpad', 'IRT', 'Tembagapura/ 10-Apr-1983'),
('TK0359', '202301042', '202301042', 'DILARA NURA BIYA', 'Jakarta', '2021-11-03', 'P', 'KB', 2023, 'NURA', 'KB - Al Qadr', '11 kg', '92', NULL, 'Cluster trans agung no c6 jatiasih bekasi', NULL, '85322512752', 'panjisatriya91@gmail.com', 'Panji Satriya', 'S1 - Sarjana Ilmu Komunikasi UNPAD', 'Karyawan BUMN', 'Medan/ 19-10-1991', 'Nabila Putri Vihandika', 'S1 - Sarjana Ilmu Komunikasi UNPAD', 'IRT', 'Jakarta/ 28-05-1993'),
('TK0360', '202301043', '202301043', 'ALTHAF KHALID AULIA', 'BEKASI', '2022-06-03', 'L', 'KB', 2023, 'ALTHAF', 'KB - Al \'Alaq', '13KG', NULL, NULL, 'TAMAN JATISARI PERMAI JALAN JAWA BLOK EA 33 KEL.JATISARI KEC.JATIASIH BEKASI 17426', NULL, '8111229182', 'avia_darini@yahoo.com', 'HENDRA ARIWIJAYA', 'S1', 'SWASTA', 'JAKARTA/ 25-06-1982', 'FIFI AVIA DARINI', 'S1 - PSIKOLOGI', 'WIRAUSAHA', 'Jakarta/ 05-Dec-1986'),
('TK0361', '202301044', '202301044', 'MUHAMMAD HAMIZAN MALIK RIZANSYAH', 'Jakarta', '2020-04-10', 'L', 'KB', 2023, 'MALIK', 'KB - Al Ashr', '14/5', '96', NULL, 'Persada Kemala Blok 16 Nomor 10/ Jakasampurna/ Bekasi Barat', NULL, '8562870787', 'abrorizani@gmail.com', 'Muhammad Abror Rizani Fahmi', 'S1 - Kedokteran Umum UGM', 'Dokter', 'Bantul/ 08-Dec-1992', 'Jessymia Auliana', 'S1 - Kedokteran Umum UGM', 'Dokter', 'Jakarta/ 05-Jul-1993'),
('TK0362', '202301045', '202301045', 'RAYYAN PRANADIPA SANTIAJI', 'Jakarta', '2019-06-03', 'L', 'KB', 2023, 'RAYYAN', 'KB - Al Qadr', '14', '94', NULL, 'Perumahan Raffles Hills/ cluster Emerald Crown/ blok EC6 No 12/ Depok', NULL, NULL, 'deeaayunastiti@gmail.com', 'Arie Santiaji', 'MSc - Master of Data Communication and Security/ University of Hertfordshire', 'Swasta', 'Jakarta/ 06-Jul-1980', 'Dea Ayu Nastiti', 'S1 - Kedokteran Gigi/ Universitas Padjadjaran', 'Ibu Rumah Tangga / Dokter gigi', 'Jakarta/ 01-Feb-1993'),
('TK0363', '202301046', '202301046', 'NAWAF FADHIL ATTAMIMI', 'Purwokerto', '2020-08-07', 'L', 'KB', 2023, 'BAWAF', 'KB - At Tiin', '18 kg', '103', NULL, 'Perumahan griya antar reja jati makmur bekasi', NULL, '81227037172', 'diyanahaidaroh12@gmail.com', 'Fadhil Attamimi', 'Sma Al irsyad tengarab', 'Wirasuasta travel umroh', 'Jeddah/ 08-09-1881', 'Diyana Firdaus', 'S1 psikologi', 'IRT dan mengelola travel umroh', 'Purwokerto/ 12-Dec-1995'),
('TK0364', '202301047', '202301047', 'VANIA IZZATUNNISA AZAHRA', 'Kota Bekasi', '2021-05-08', 'P', 'KB', 2023, 'VANIA', 'KB - Al Ashr', '13', '90', NULL, 'Jl. H. Pindah no 11/ Jakamulya/ Bekasi Selatan', NULL, '81351937477', 'kardiae@gmail.com', 'Kardi', 'S1-Sarjana Perkapalan', 'Pegawai Swasta', 'Jakarta/ 04-Mar-1984', 'Vidya Ekaningtyas', 'Pendidikan Dokter', 'Swasta', 'Purwokerto/ 10-Aug-1986'),
('TK0365', '202301048', '202301048', 'KHABIB ELKIANO ZINEDINE AZIS', 'Bekasi', '2019-07-07', 'L', 'KB', 2023, 'ELKIANO', 'KB - Al \'Alaq', '17', '100', NULL, 'Pondok Timur Mas/ Jalan Jingga Mas 1 blok F3 No. 17/ Kel. Jaka Setia/ Kec. Bekasi Selatan/ Kota Bekasi', NULL, '81298843359', 'irvanazis91@gmail.com', 'Irvan Azis/ S.E./ M.Sos.', 'S2 - Pascasarjana Ilmu Sosiologi Univ. Brawijaya', 'PNS', 'Jakarta/ 01-Nov-1991', 'Nicky Amanda/ S.In./ M.Sos.', 'S2 - Pascasarjana Ilmu Sosiologi Univ. Brawijaya', 'PNS', 'Bekasi/ 11-Aug-1990'),
('TK0366', '202301049', '202301049', 'AZZURA FELLAH RAMADHANI', 'Bekasi', '2021-01-05', 'P', 'KB', 2023, 'ZURA', 'KB - Al Ashr', '13', '94', NULL, 'Jl Surabaya raya blok B2 No 4 Bekasi Jaya Bekasi Timur', NULL, '82116229797', 'abduhmaulanaali2531@gmail.com', 'Abduh Maulana Ali', 'Smu', 'Staff yayasan', 'Jakarta/ 25-01-1985', 'Sariati Christina', 'Smu', 'Irt', 'Bekasi/ 13-09-1989'),
('TK0367', '202301050', '202301050', 'RAFFASYA SYARIEF MUHAMMAD', 'Tangerang Selatan', '2020-11-11', 'L', 'KB', 2023, 'RAFFASYA', 'KB - At Tiin', '12kg', NULL, NULL, 'Perumahan Serpong Garden 2 Cluster Green Hill Blok B19-12A', NULL, '81316172008', 'uyun.syarief.2008@gmail.com', 'Nur Qurota Uyuny Syarief', 'S2 - Sarjana Teknik UI', 'POLRI', 'Jakarta/ 15-08-1989', 'Chorista Ika Hasnawati', 'S1 - Sarjana Pendidikan UMM (Univ. Muhammadiyah Malang)', 'IRT', 'Malang/ 06-Mar-1996'),
('TK0368', '202301051', '202301051', 'NAQIYYA HAFLA BAHRI', 'Bekasi', '2019-05-12', 'P', 'TKA', 2023, 'NAQIYYA', 'K1 - Al Fajr', '14.7', NULL, NULL, 'Jl. Makrik Gang Jenin no. 107 RT 07/04 Bojong Rawalumbu Bekasi 17116', NULL, '85717906099', 'squnifah20@gmail.com', 'Saepul Bahri', 'SMK', 'Karyawan Swasta', 'Bekasi/ 24-04-1995', 'Qunifah Suwidianti', 'S1 Sastra Jepang', 'Mengurus Rumah Tangga', 'Bekasi/ 20-06-1995'),
('TK0369', '202301052', '202301052', 'ALYA BINTA RAMADANIA', 'Surabaya', '2021-01-04', 'P', 'TKA', 2023, 'BINTA', 'K1 - Al Fajr', '13 kg', NULL, NULL, 'Komplek taman cikas blok c 14 nomor 16', NULL, '81295555090', 'ramabagusp@gmail.com', 'Rama bagus perkasa', 'S2 sarjana teknik sipil', 'Karyawan BUMN', 'Cirebon/ 04-Apr-1990', 'Nadia imaniar sidqon', 'S1 Sarjana kedokteran (dokter umum)', 'Ibu rumah tangga', 'Yogyakarta/ 12-Jul-1990'),
('TK0370', '202301053', '202301053', 'KHADIJAH AZZAHRA MAULIDA', 'Bekasi', '2019-10-11', 'P', 'TKA', 2023, 'KHADIJAH', 'K1 - Al Fajr', '12 kg', NULL, NULL, 'Jl.Bintang raya B.6', NULL, '81365437473', 'isfi050277@gmail.com', 'Isfi hendri', 'SLTA', 'Swasta', 'Payakumbuh/ 02-May-1977', 'Esi endriani', 'SLTA', 'Ibu rumah tangga', 'Durian kapas/ 05-Jan-1980'),
('TK0371', '202301054', '202301054', 'MUHAMMAD SABIQ KHAIRUL', 'Jakarta', '2018-11-01', 'L', 'TKB', 2023, 'SABIQ', 'K2 - Al Qalam', '18/3kg', NULL, NULL, 'Jl Marzuki 9 rt 05 rw 01 no 42 penggilingan Cakung Jakarta timur', NULL, '87887336292', 'tanyakaromi99@gmail.com', 'Ali karomi', 'Smk', 'Wirausaha', 'Jakarta/ 04-Apr-1991', 'Kamia', 'S1-pendidikan', 'Guru', 'Bekasi/ 06-Jun-1994'),
('TK0372', '202301055', '202301055', 'NAEEMA ARUNA BIYA', 'Jakarta', '2020-05-10', 'P', 'TKA', 2023, 'NEIMA', 'K1 - Al Balad', '14', '100', NULL, 'Cluster trans agung no c6 jatiasih bekasi', NULL, '85322512752', 'panjisatriya91@gmail.com', 'Panji Satriya', 'S1 Ilmu Komunikasi UNPAD', 'Karyawan BUMN', 'Medan/ 19-10-1991', 'Nabila Putri Vihandika', 'S1 Ilmu Komunikasi UNPAD', 'IRT', 'Jakarta/ 28-05-1993'),
('TK0373', '202301056', '202301056', 'MUHAMMAD KHALID BILFAQIH', 'Bekasi', '2019-04-08', 'L', 'KB', 2023, 'KHALID', 'KB - Al Qadr', '16', '105', NULL, 'Jl. H. Ilyas Cikunir RT 03 Rw 12', NULL, '+6281316765365\'', 'candrakusuma280888@gmail.com', 'Candra Kusuma', 'D3 - Analis Kesehatan', 'Swasta', 'Surakarta/ 28-08-1988', 'Siska Amalia', 'D3 - Keperawatan', 'PNS', 'Bekasi/ 12-06-1992'),
('TK0374', '202301057', '202301057', 'ARSYA AIMANURRIJAL ASYARI', 'Bekasi ', '2019-05-11', 'L', 'KB ', 2023, 'AIMAN', 'KB - Al \'Alaq', '16', '105', NULL, 'Pondok Timur Mas Jl Pondok Mas Raya A/5/ RT 09 RW 13/ Jakasetia/ Bekasi Selatan/ 17147B', NULL, '085720123381', 'ingridlarasati@gmail.com', 'Abung Asyari', 'S2 - Kependidikan ', 'Dosen', 'Cibinong/ 31-03-1981', 'Ingrid Larasati Agustina', 'S3 - Ekonomi Syariah UIN SGD', 'Dosen ', 'Jakarta/ 21-01-1983'),
('TK0375', '202301058', '202301058', 'MUHAMMAD AL FATIH ANWAR', 'Jakarta', '2018-01-06', 'L', 'TKB', 2023, 'AL FATIH', 'K2 - Al Qalam', '18', '105', NULL, 'Jalan pondok jingga mas 2 blok f3 no 2', NULL, '081348881979', 'kazbrother3@gmail.com', 'Anwar Hermansyah', 'SMA', 'Wirausaha', 'Balikpapan/ 1-04-1994', 'Nur fitri Ani Suli', 'SMA', 'IRT    ', 'Jayapura/ 1-4-1994');

-- --------------------------------------------------------

--
-- Table structure for table `siswa2`
--

CREATE TABLE `siswa2` (
  `c_siswa` varchar(10) NOT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `nisn` varchar(15) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `temlahir` varchar(20) DEFAULT NULL,
  `tanglahir` date DEFAULT NULL,
  `jk` varchar(2) DEFAULT NULL,
  `c_kelas` varchar(10) DEFAULT NULL,
  `thn_join` int(11) DEFAULT NULL,
  `panggilan` varchar(20) DEFAULT NULL,
  `c_klp` varchar(20) DEFAULT NULL,
  `bbadan` varchar(10) DEFAULT NULL,
  `tbadan` varchar(10) DEFAULT NULL,
  `ukuran_baju` varchar(50) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL,
  `hp` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nama_ayah` varchar(50) DEFAULT NULL,
  `pendidikan_a` varchar(100) DEFAULT NULL,
  `pekerjaan_a` varchar(100) DEFAULT NULL,
  `ttl_a` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(50) DEFAULT NULL,
  `pendidikan_i` varchar(100) DEFAULT NULL,
  `pekerjaan_i` varchar(100) DEFAULT NULL,
  `ttl_i` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `siswa2`
--

INSERT INTO `siswa2` (`c_siswa`, `nis`, `nisn`, `nama`, `temlahir`, `tanglahir`, `jk`, `c_kelas`, `thn_join`, `panggilan`, `c_klp`, `bbadan`, `tbadan`, `ukuran_baju`, `alamat`, `telp`, `hp`, `email`, `nama_ayah`, `pendidikan_a`, `pekerjaan_a`, `ttl_a`, `nama_ibu`, `pendidikan_i`, `pekerjaan_i`, `ttl_i`) VALUES
('TK0178', '202101001', '202101001', 'ABIZARD ISMAIL ALI', 'Bekasi', '2018-08-09', 'L', 'TKB', 2021, 'ABIZARD', 'K2- Al Mursalat', '22 kg', '102 cm', 'S', 'Komplek Pemda Blok B Jl kresna No 41 Rt 01/Rw 01 Jati Asih Bekasi', '081298567822', '081317802059', 'Ritha_2989@yahoo.com', 'Yandi Arnaz', 'S1', 'Pegawai BUMN', 'Depok/19 April 1988', 'Rita Hartati Lubis', 'S1', 'IRT', 'Jakarta/29 Maret 1989'),
('TK0179', '202101002', '202101002', 'AISYAH GHANIYA ALMAIRA', 'Jakarta', '2018-06-05', 'P', 'TKB', 2021, 'AISYAH', 'K2 - Al Qalam', '15/9 kg', '102 cm', 'M', 'Jl Taman Agave V/ M6/27/ Taman Galaxy/ Bekasi', '02182751236', '08159653394/081514577689', 't.jombang@gmail.com', 'Tedi Jombang Nugraha', 'S1', 'Karyawan swasta', 'Padang/ 31 Maret 1979', 'Pipit Anasthasia', 'S1', 'IRT', 'P.Berandan/2 November 1978'),
('TK0180', '202101003', '202101003', 'AISYAH KHUMAIRA PUTRI APSANRA', 'Bukittinggi', '2018-03-07', 'P', 'TKB', 2021, 'AISYAH', 'K2 - Al Ma\'arij', '17 kg', '98 cm', 'L', 'Komplek Depnaker Taman Wisma Asri Jalan Merak I Blok K27 No. 12A RT 02/ RW 34 Teluk Pucung Bekasi Utara 17121', '081386825912', '81386608132', 'amieamo3@gmail.com', 'Ikhsan Pramana', 'S1', 'karyawan', 'Padang/9 Juni 1984', 'Rahmi Hayati', 'D4', 'IRT', 'Bukti tinggi/23 July 1987'),
('TK0181', '202101004', '202101004', 'AIZZAH NUR NAZHIFAH', 'Jakarta', '2018-05-10', 'P', 'TKB', 2021, 'AIZZAH', 'K2- Al Mursalat', '15 kg', '0', 'L', 'Jl. H Samud No.26/95 / Jati Kramat/ Bekasi', '0', '081292594004/081310405709', 'buncitiwan@gmail.com', 'Muhammad Ridwan', 'S1', 'Karyawan swasta', 'Sukabumi/ 27 Juni 1992', 'Mardhiah Fatwa', 'S1', 'IRT', 'Jakarta/ 24 Oktober 1993'),
('TK0182', '202101005', '202101005', 'ALMEERA SYAHIRA DISTY', 'Jakarta', '2017-03-11', 'P', 'TKB', 2021, 'MEERA', 'K2 - Al Qalam', '0', '0', 'S', 'Jl. H umar no.9 jakamulya/cikunir/ bekasi selatan', '021-827-44061', '81289865344', 'septy3023@gmail.com', 'Dimas pramudita (Alm)', 'S1', '0', 'Jakarta/ 1 Maret 1984', 'Septy haryani', 'D3', 'IRT', 'Jakarta/ 15 Oktober 1985'),
('TK0183', '202101006', '202101006', 'AQEELA CEISYA HAFIZHAH ARIEF', 'Jakarta', '2019-04-09', 'P', 'TKB', 2021, 'CEISYA', 'K2 - Al Insan', '13 kg', '90 cm', 'S', 'Jakarta Garden City/ Cluster Yarra E8/5', '08111995030', '082299966651', 'muh.arieff7@gmail.com', 'Muhammad Arief', 'S1', 'Karyawan swasta', 'Jakarta/ 25 July 1984', 'Irma suryani', 'S1', 'Karyawan swasta', 'Jakarta/ 12 November 1989'),
('TK0185', '202101008', '202101008', 'ARSYILA GHAIDA AZKADINA', 'Jakarta', '2018-06-05', 'P', 'TKB', 2021, 'ARSYILA', 'K2 - Al Ma\'arij', '15/5 kg', '101 cm', 'M', 'Jl taman agave V/ M6/27/ Taman Galaxy/ Bekasi', '02182751236', '08159653394/081514577689', 't.jombang@gmail.com', 'Tedi Jombang Nugraha', 'S1', 'Karyawan swasta', 'Padang/ 31 Maret 1979', 'Pipit Anasthasia', 'S1', 'IRT', 'P.Berandan/2 November 1978'),
('TK0186', '202101009', '202101009', 'ASHALINA MAUZA NAFEESA ASSAD', 'Bekasi', '2018-03-12', 'P', 'TKB', 2021, 'ASHA', 'K2 - Al Ma\'arij', '14/5 kg', '97 cm', 'M', 'JL. CENDANA RAYA NO.16/ JAKA PERMAI/ BEKASI BARAT', '0', '08118818787/081310070612', 'muh.assad@gmail.com', 'MUHAMMAD ASSAD', 'S2', 'Pengusaha/motivator', 'Jakarta/ 16 Januari 1987', 'AFRA NURINA AMARILLA', 'S2', 'IRT', 'Tarakan/ 6 Januari 1988'),
('TK0187', '202101010', '202101010', 'AZKARIAN FADILLAH', 'Jakarta', '2017-05-07', 'L', 'TKB', 2021, 'AZKA', 'K2 - Al Insan', '12/5 kg', '0', 'M', 'jl.greenview 3 blok D 67 the greenview PTM', '0', '081380008431/082111194998', 'ana.oktora@gmail.com', 'Deny Maturian', 'S1', 'Wiraswasta', 'Pekanbaru/30 Maret 1984', 'AnaOktora', 'S2', 'IRT', 'Solok/ 7 Oktober 1982'),
('TK0188', '202101011', '202101011', 'AZKA TSAQIF ALBANI', 'Jakarta', '2018-06-09', 'L', 'TKB', 2021, 'AZKA', 'K2 - Al Insan', '13/1 kg', '93 cm', 'S', 'JL. H. HANAFI GG. ISLAH III RT 0013 RW 02 NO 11 KEL. PONDOK BAMBU KEC. DUREN SAWIT', '0', '081315902512/085781550433', 'm_fitria@yahoo.com', 'AGUS SAHBANI', 'S1', 'Karyawan swasta', 'Jakarta/ 2 July 1977', 'MARYAM FITRIYAH', 'S1', 'IRT', 'Tegal/ 5 July 1984'),
('TK0189', '202101012', '202101012', 'BIMANTARA KHALIF IBRAHIM', 'Bekasi', '2019-08-01', 'L', 'TKB', 2021, 'BIMA', 'K2 - Al Insan', '0', '0', 'L', 'Perumahan Villa Pekayon Blok A3 no 12', '08122227520', '081393392811', 'rahman_alif86@gmail.com', 'Alifia Rahman', 'S1', 'Karyawan swasta', 'Jember/11 maret 1986', 'ajeng illastria r.', 'S1', 'PNS', 'Mojokerto/20 Januari 1987'),
('TK0192', '202101015', '202101015', 'IBRAHIM ABDULLAH MALASSA', 'Bekasi', '2019-01-04', 'L', 'TKB', 2021, 'IBRAHIM', 'K2 - Al Ma\'arij', '15 kg', '90 cm', 'M', 'Pondok pekayon indah jalan mahoni 1 B14 no 7', '0', '081285180555/082117756606', 'endy.malassa@yahoo.com', 'Endy malassa', 'SMA', 'Pegawai BUMN', 'Jakarta/ 9 July 1992', 'Nisa sofia', 'D3', 'IRT', 'Bandar Lampung/7 Januari 1991'),
('TK0193', '202101016', '202101016', 'KAUTSAR', 'Jakarta', '2018-12-01', 'L', 'TKB', 2021, 'KAUTSAR', 'K2 - Al Ma\'arij', '11/5 kg', '90 cm', 'S', 'Apartemen Sentra Timur/ Jl. Sentra Primer Timur/ Pulo Gebang/ Cakung/ Jakarta Timur', '0', '082125760320/081912757072', 'harimansadewa@gmail.com', 'Hariman Sadewa', 'S1', 'Karyawan swasta', 'Jakarta/16 April 1992', 'Aisyah Nasiri', 'S1', 'IRT', 'Ponorogo/ 12 Agustus 1991'),
('TK0194', '202101017', '202101017', 'KEN RASKI DAMARIO', 'Bekasi', '2018-07-04', 'L', 'TKB', 2021, 'KEN', 'K2 - Al Insan', '11/5 kg', '75 cm', 'S', 'Jl Rawa Semut 2 no 46 RT02 RW13 Jati Asih Bekasi', '0', '082124932313/08128049320', 'ani.kenraski@gmail.com', 'Wahyu Novianto Kristiono', 'S1', 'PNS', 'Jakarta/15 November 1980', 'Ani Indri Astuti', 'S1', 'karyawan BUMN', 'Jakarta/ 17 Januari 1980'),
('TK0195', '202101018', '202101018', 'KHAIREEN HAFIZA SULTANSYAH', 'Bekasi', '2018-02-04', 'P', 'TKB', 2021, 'KHAIREEN', 'K2 - Al Qalam', '0', '0', 'S', 'jl. wahab 2 no.63a/ jatibening baru pondok gede bekasi', '081905501800', '082213606865', 'rizkiturki@gmail.com', 'RIZKI APRIANSYAH', 'S1', 'Guru bahasa Turki', 'Jakarta/17 April 1992', 'DHEANITA TRIBUANA', 'S1', 'IRT', 'Jakarta/ 4 Agustus 1991'),
('TK0198', '202101021', '202101021', 'MUHAMMAD AL FATIH SETIADI', 'Bekasi', '2018-05-04', 'L', 'TKB', 2021, 'AL FATIH', 'K2 - Al Ma\'arij', '12 kg', '92 cm', 'S', 'Jl Niaga 9 Blok BE no 17 Kemang Pratama Bekasi 17114', '021-82741800', '0811811690/08118111139', 'adi.setiadi217@gmail.com', 'Adi Setiadi', 'MM', 'Karyawan swasta', 'Sintang/24 september 1976', 'Lany Marliany', 'Apoteker', 'IRT', 'Bandung/ 27 Mei 1976'),
('TK0199', '202101022', '202101022', 'MUHAMMAD ATTHALLAH ALGHIFARY', 'Bekasi', '2018-07-08', 'L', 'TKB', 2021, 'ATTHALLAH', 'K2 - Al Qalam', '15 kg', '0', 'M', 'jl kemakmuran 3 nomor 58 magrjaya bekasi selatan 17141', '0', '081316249544', 'regina14.ra@gmail.com', 'danang triatmojo', 'S1', 'Karyawan swasta', 'Gunung kidul/23 Januari 1991', 'Regina Ayu', 'S1', 'IRT', 'Bandung/14 Maret 1991'),
('TK0200', '202101023', '202101023', 'MUHAMMAD FAQIH ALMA MUQODDAM', 'Bekasi', '2019-03-11', 'L', 'TKB', 2021, 'FAQIH', 'K2 - Al Insan', '16 kg', '96 cm', 'M', 'Jl Pelabuhan Ratu no.4 Kel Sepanjang Jaya Kec Rawalumbu Kota Bekasi', '0218217725', '081293555354', 'drgemavikossa@gmail.com', 'Gema Vikossa', 'S1', 'dokter', 'jakarta/24 Februari 1985', 'Aliza Ramadhani Putriana', 'S1', 'dokter', 'Indramayu/ 1 Mei 1988'),
('TK0201', '202101024', '202101024', 'MUHAMMAD LUQMAN SALIM', 'Klaten', '2019-12-11', 'L', 'TKB', 2021, 'LUQMAN', 'K2- Al Mursalat', '13 kg', '89 cm', 'M', 'JL.ARJUNA 4 NO.139 B RT/RW 3/11 JAKASETIA', '0', '085725846633/087882840928', 'agus38salim@gmail.com', 'AGUS SALIM', 'SMA', 'Karyawan swasta', 'Purworejo/ 3 Agustus 1987', 'NURSYAM BUDI LISTYOWATI', 'D3', 'IRT', 'Klaten/20 Maret 1991'),
('TK0202', '202101025', '202101025', 'MUHAMMAD SALMAN ALFATIH', 'Bekasi', '2019-04-10', 'L', 'TKB', 2021, 'SALMAN', 'K2 - Al Ma\'arij', '14/5 kg', '105 cm', 'L', 'Jl. Pulo Sirih Barat 4/ FE 350', '0', '081287807848/082220333255', 'haryotetuko1988@gmail.com', 'HARYO TETUKO', 'S1', 'Wiraswasta', 'Tanjung enim/16 April 1988', 'NURAVER KEELA', 'S1', 'wiraswasta', 'Bandung/20 November 1987'),
('TK0203', '202101026', '202101026', 'MUHAMMAD THAQI ARAFAH', 'Bekasi', '2018-05-08', 'L', 'TKB', 2021, 'THAQI', 'K2 - Al Qalam', '18 kg', '115 cm', 'S', 'pondok pekayon indah blok B3 no/10', '0', '081281482210', 'wisnuutomo@gmail.com', 'Wisnu Broto Utomo', 'S1', 'Wiraswasta', 'Jakarta/15 Juni 1980', 'Levana Pauliana', 'S1', 'IRT', 'Garut/ 17 Mei 1986'),
('TK0204', '202101027', '202101027', 'NADIEM BENYAMIN', 'Bekasi', '2019-06-01', 'L', 'TKB', 2021, 'NADIEM', 'K2 - Al Ma\'arij', '14 kg', '95 cm', 'M', 'Perumahan Pondok Timur Mas/ Jl. Pondok Jingga Mas 7 blok R3 no 11 Galaxy Bekasi Selatan 17147', '0', '0811222977/0811522133', 'bimayog@gmail.com', 'Bima Yogie Purnama', 'S2', 'Notaris', 'Bekasi/15 Desember 1990', 'Feny Ambarsari', 'S1', 'IRT', 'Bekasi/2 Maret 1991'),
('TK0205', '202101028', '202101028', 'NAHLA JIHAN ALFIYYAH', 'Bekasi', '2019-01-01', 'P', 'TKB', 2021, 'JIHAN', 'K2- Al Mursalat', '12 kg', '92 cm', 'S', 'Jl. Alam utama V Perum Bintara Alam Permai Blok D1 no.10 Rt.03/14 kel. Bintara jaya/ bekasi barat', '0', '081286108020/08111221177', 'ferdin.ramdhani@gmail.com', 'Ferdin Amsal Ramdhani', 'S1', 'PNS', 'Jakarta/28 mei 1986', 'Mutia Dwi Rohmiatun', 'S1', 'IRT', 'Pandeglang/8 Juni 1987'),
('TK0207', '202101030', '202101030', 'RAYYAN AHSANI RUSYDAN', 'Jakarta', '2019-04-12', 'L', 'TKB', 2021, 'RAYYAN', 'K2 - Al Qalam', '13 kg', '90 cm', 'S', 'CLUSTER TAMAN FIRDAUSI NO 3 JALAN KEMANGSARI 1/ Kel JATIBENING BARU/ Kec PONDOK GEDE KOTA BEKASI', '081288636347', '081311502036', 'indahsusan28216@gmail.com', 'DARYATNO SUBEKTI', 'S1', 'PNS', 'Mataram/ 17 Agustus 1982', 'INDAH SUSANTI', 'S1', 'IRT', 'Magelang/23 Desember 1990'),
('TK0209', '202101032', '202101032', 'SUTAN AVERROES ZAHRI', 'Bekasi', '2019-06-10', 'L', 'TKB', 2021, 'AVERROES', 'K2 - Al Insan', '14 kg', '100 cm', 'S', 'Komplek Pondok Timur Mas/ Jl Jingga Mas IV blok E 2 no 23/ Jaka Setia/ Kota Bekasi', '0', '081220443738/082214666011', 'bentom002jk@gmail.com', 'Berlianto Haris', 'S2', 'Karyawan swasta', 'Padang/26 Mei 1985', 'Sukma Faizah', 'S1', 'IRT', 'Medan/4 Desember 1989'),
('TK0211', '202101034', '202101034', 'UWAIS ABQARIZAYAN KINAYUNG', 'Bekasi', '2017-10-07', 'L', 'TKB', 2021, 'UWAIS', 'K2- Al Mursalat', '15/5 kg', '102 cm', 'M', 'Jalan Pelabuhan Ratu No.56 Perum.Bumi Bekasi Baru Rawalumbu Kota Bekasi 17115', '0', '081284060054/081290731554', 'wikrama.ananta@gmail.com', 'Anantawikrama Unggul Kinayung', 'S1', 'Wiraswasta', 'Semarang/12 Maret 1987', 'Rachmayanti Nur Padilah', 'S1', 'IRT', 'Bekasi/24 Juni 1963'),
('TK0241', '202101064', '202101064', 'MALIQA RIZHANI HANANDITA', 'Bekasi', '2018-03-09', 'p', 'TKB', 2021, 'IZZA', 'K2- Al Mursalat', '14/2 kg', '0', 'S', 'Pondok Ungu Permai Blok KK 2 no 2/ Bekasi Utara 17125', '0', '08175453618/081286867200', 'dimasanggoro21@gmail.com', 'Dimas Anggoro Hanandito', 'S1', 'Karyawan swasta', 'Jakarta/21 Juli 1986', 'Rizky Amelia', 'S1', 'Karyawan swasta', 'Ambon/9 Mei 1990'),
('TK0242', '202101065', '202101065', 'ATHOULLAH HAFIZH AFANDY', 'Jakarta', '2018-03-02', 'L', 'TKB', 2021, 'ATHA', 'K2 - Al Qalam', '13/5 kg', '0', 'S', 'Jl. Rawa selatan buntu no.17 Rt.018/04. Kel.kampung Rawa. Kec.Johar baru. Jakpus 10550', '08119825119', '081291999068', 'reza.afandy@gmail.com', 'Reza Afandy Bustaman', 'S2', 'Akuntan', 'Samarinda/1 Februari 1977', 'Maya Indah purwati', 'S1', 'IRT', 'Jakarta/28 Mei 1983'),
('TK0243', '202101066', '202101066', 'MUHAMMAD ARSHAD UWAIS HILABI', 'Jakarta', '2018-12-05', 'L', 'TKB', 2021, 'UWAIS', 'K2 - Al Ma\'arij', '15 kg', '101 cm', 'M', 'Jl. Lembah Pinang 3 Blok i10 No.12/ Pondok Kelapa/ Duren Sawit/ Jakarta Timur', '02122845436', '081312206891/081224037770', 'hilman.ismail20@gmail.com', 'Hilman Ismail Hilabi', 'S1', 'Karyawan swasta', 'Jakarta/20 April 1991', 'Raifa Dwinanti', 'S1', 'IRT', 'Bandung/9 Januari 1991'),
('TK0244', '202101067', '202101067', 'KALILA KHANSAIRA', 'Jakarta', '2018-06-10', 'P', 'TKB', 2021, 'KALILA', 'K2- Al Mursalat', '11 kg', '88 cm', 'S', 'Jl. Kutilang 2 Blok G9 No.4/ Jatibening Pondok Gede/ Bekasi - 17412', '0', '081381488100/081212797092', 'rizki.fajar88@gmail.com', 'Muhamad Rizki Fajar', 'S1', 'Karyawan swasta', 'Jakarta/8 Agustus 1990', 'Annisa Anggraini', 'S1', 'IRT', 'Jakarta/10 Oktober 1992'),
('TK0245', '202101068', '202101068', 'UWAIS HAMIZAN SYAFIQ', 'Bekasi', '2017-10-09', 'L', 'TKB', 2021, 'UWAIS', 'K2 - Al Insan', '10 kg', '0', 'S', 'Jl Gurame V no 317 Perumnas II Bekasi', '0', '081112900093/081283070084', 'hennythantawi190677@gmail.com', 'Ruhimat', 'SMA', 'Guru', 'Sumedang/24 April 1980', 'Hilda', 'S1', 'Guru', 'Jakarta/14 Desember 1983'),
('TK0246', '202101069', '202101069', 'ALVARO RAFAIZAN RAHMAN', 'Tanggerang Selatan', '2017-02-12', 'L', 'TKB', 2021, 'VARO', 'K2 - Al Ma\'arij', '13/8 kg', '95 cm', 'S', 'Komplek Bintara Jaya 2 Jalan Anjasmoro Blok A 85D/ Bekasi', '0', '081319855141/081291427649', 'andirahman81@gmail.com', 'Andi Rahman Nugraha', 'S2', 'Wiraswasta', 'Jakarta/10 Agustus 1991', 'Lia Khairunisa', 'S1', 'wiraswasta', 'Jakarta/11 Juni 1990'),
('TK0251', '202101074', '202101074', 'AKHDAN ZIYAD AZHAR', 'Garut', '2019-03-02', 'L', 'TKB', 2021, 'ZIYAD', 'K2 - Al Qalam', '16 kg', '103 cm', 'M', 'jalan siliwangi raya/no 123 sepanjang raya/ rawalumbu/ kota BEKSI 17114', '0', '082218529709', 'zaharsofni29@gmail.com', 'Azyad Azhar (alm)', '0', '0', 'Garut/ 5 Agustus 1991', 'Rizky Ayu Akbari', 'S1', 'IRT', 'Garut/ 28 Oktober 1992'),
('TK0253', '202101076', '202101076', 'KAMILA AMANI', 'Bekasi', '2018-11-08', 'P', 'TKB', 2021, 'KAMILA', 'K2 - Al Insan', '18 kg', '105 cm', 'XL', 'Jl. Delta Barat VII no B52 Pekayon - Bekasi Selatan', '0', '081290439802/087886888080', 'farhana.hkm@gmail.com', 'Afan Miqdad', 'S1', 'Pegawai swasta', 'Cilacap/19 November 1985', 'Farhanah', 'D3', 'IRT', 'Jakarta/16 Februari 1993'),
('TK0254', '202101077', '202101077', 'ARKANA HANIF SHAGUFTA', 'Bekasi', '2018-10-07', 'L', 'TKB', 2021, 'ARKA', 'K2 - Al Qalam', '15 kg', '99 cm', 'M', 'Jln. Merpati Pos A24 RT 02/09 Jakamulya Bekasi Selatan 17146', '0', '08568548410/085716226333', 'fahdarta@gmail.com', 'Fahmi Arie Sidharta', 'S1', 'Pegawai swasta', 'Jakarta/ 21 November 1978', 'Ranty Carolyna', 'SLTA', 'IRT', 'Bandung/ 9 Februari 1983'),
('TK0260', '202201001', '202201001', 'ARUNA NADYA PRAMUDHITA', 'Bekasi', '2019-02-11', 'P', 'TKA', 2022, 'ARUNA', 'K1 - Al Buruj', '12/4 kg', '93 cm', '', 'Perum. Angkasa Puri/ Jl. Durian Blok J No.2/ Kel. Jatimekar/ Kec. Jatiasih/ Kota Bekasi/ Jawa Barat 17422', '021 8474851', '08156635500', 'brahmapramudita@gmail.com', 'Brahma Swastika Pramudhita ', 'S1', 'Karyawan swasta', 'Jakarta/ 27-0301989', 'Hanna Khairinisa', 'S1', 'IRT', 'Bandung/ 14-12-1991'),
('TK0261', '202201002', '202201002', 'MUHAMMAD ARKHAM AKHYAR', 'Surabaya', '2018-02-06', 'L', 'TKA', 2022, 'ARKHAM', 'K1 - Al Fajr', '14/10 kg', '98 cm', '', ' Pondok Timur Mas Jl Pondok Merah Mas Blok C1/7', '-', '0811321677', 'mohamad.zuhroni@gmail.com', 'Mohamad Zuhroni ', 'S2', 'Pegawai Swasta', 'Surabaya/19-12-1981', 'Vidya Antariksani', 'S1', 'IRT', 'Jakarta/ 03-09-1984'),
('TK0264', '202201005', '202201005', 'ALFARIZKY GHAYDA TAHER', 'Bekasi', '2018-03-11', 'L', 'TKA', 2022, 'FARIZ', 'K1 - Al Fajr', '12/6 kg', '-', '', ' Jalan pondok kuning mas 1 blok p no.3 perumahan pondok timur mas', '-', '082122669198', 'ade347@gmail.com', 'Isbudi ', 'D3', 'Karyawan swasta', 'Jakarta/ 18-10-1988', 'Ade Kusumawardani', 'S1', 'IRT', 'Dompu/ 25-08-1988'),
('TK0266', '202201007', '202201007', 'MUHAMMAD ZIANDRA HANANDITO', 'Bekasi', '2018-08-10', 'L', 'TKA', 2022, 'ZIAN', 'K1 -Ath Thoriq', '15/5 kg', '90 cm', '', ' Pondok Ungu Permai Blok KK 2 no 2 Bekasi Utara 17125', '-', '08175453618', 'dimasanggoro21@gmail.com', 'Dimas Anggoro Hanandito ', 'S1', 'Karyawan swasta', 'Jakarta/ 21-07-1986', 'Rizky Amelia', 'S1', 'Karyawan swasta', 'Ambon/ 09-05-1990'),
('TK0267', '202201008', '202201008', 'SHAFIYA INSYIRA NAZURA', 'Bekasi', '2019-08-04', 'P', 'TKA', 2022, 'FIYA', 'K1 - Al Fajr', '16 kg', '90 cm', '', ' Perumahan Villa Pekayon A3 No 4/ Jl. Katapang/ Pekayon Jaya Bekasi Selatan', '-', '085860066027', 'dithianefara@gmail.com', 'Zulkifli ', 'S1', 'Karyawan swasta', 'Jakarta/ 13-10-1982', 'Fara Fadila', 'D3', 'Karyawan Swasta', 'Bandung/ 28-07-1982'),
('TK0268', '202201009', '202201009', 'HAFSAH NUHA DORISMAN', 'Jakarta', '2018-08-04', 'P', 'TKA', 2022, 'NUHA', 'K1 - Al Fajr', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', ''),
('TK0269', '202201010', '202201010', 'MUHAMMAD MAHARDIKA CENDEKIA', 'Jakarta', '2020-06-06', 'L', 'TKA', 2022, 'MUHAMMAD', 'K1 - Al Buruj', '13 kg', '98 cm', '', ' CLUSTER TAMAN FIRDAUSI NO. 2/ JATIBENING', '-', '081382140823', 'cendekia.k@gmail.com', ' Cendekia Putra Kartono  ', 'S1', 'Karyawan yayasan', 'Bekasi/ 16-12-1990', 'Detta Olyvia Nirwana', 'S1', 'IRT/freelancer script editor', 'Jakarta/ 16-09-1988'),
('TK0270', '202201011', '202201011', 'OMAR ZANKI ABDURRAHMAN', 'Bekasi', '2020-03-07', 'L', 'TKA', 2022, 'OMAR', 'K1 - Al Fajr', '12/5 kg', '92 cm', '', ' kav DKI jalan Lembah Aren X blok K16 no 21 Pondok Kelapa/ Jakarta Timur', '', '08121043828', 'adhibr@yahoo.com', ' Adhib Rakhmanto ', 'S1', 'Consultant', 'Kulon Progo/10-09-1987', 'Sefty Kurnadia Weny', 'S1', 'IRT', 'Jakarta/ 12-02-1986'),
('TK0271', '202201012', '202201012', 'ALECIA NAVISHA WIBOWO', 'Surabaya', '2018-11-05', 'P', 'TKA', 2022, 'NAVISHA', 'K1 -Ath Thoriq', '13/4 kg', '98 cm', '', ' Taman Century 2 Jl. Kemuning 1 Blok G. 11 Rt 005 Rw 023 Kel. Pekayon Jaya Kec. Bekasi Selatan 17148 Kota Bekasi', '-', '08122908810', 'Mochagungw@gmail.com', ' Moch Agung Wibowo', 'D3', 'Karyawan swasta', 'Semarang/ 16-07-1978', 'Dede Sholihat', 'SMK', 'IRT', 'Ciamis/ 02-11-1992'),
('TK0272', '202201013', '202201013', 'MUHAMMAD ALWI AL HAZMI', 'Jakarta', '2018-11-07', 'L', 'TKA', 2022, 'ALWI', 'K1 - Al Buruj', '12/6 kg', '94 cm', '', 'Cluster Griya Mandiri No 6/ Jatiasih', '-', '081286007072', 'friska.melinda.ui@gmail.com', ' Fadjar Rizky Wahyu Ramadhan ', 'S2', 'Karyawan swasta', 'Bekasi/ 25-03-1992', 'Friska Melinda Rizqi', 'S1', 'IRT', 'Magelang/ 22-05-1990'),
('TK0273', '202201014', '202201014', 'MAHREEN ZEEYA JOBAN', 'Jakarta', '2018-11-09', 'P', 'TKA', 2022, 'ZEEYA', 'K1 -Ath Thoriq', '12 kg', '94 cm', '', ' Pondok Timur Mas', '-', '082111666266', 'evayulyanti3@gmail.com', ' Riza Wilhansah', 'S1', 'Pegawai', 'Jakarta/ 18-10-1990', ' Eva', 'S1', 'IRT', 'Jakarta/ 03-07-1987'),
('TK0275', '202201016', '202201016', 'CHANA ZAYNA SASTROSUBROTO', 'Bekasi', '2020-12-05', 'P', 'TKA', 2022, 'CHANA', 'K1 -Ath Thoriq', '15 kg', '110 cm', '', ' JL. DAHLIA 1 BLOK C3 NO 8 TAMAN BOUGENVILLE ESATE/ JATIBENING/ BEKASI 17412', '021 8646343', '08119951625', 'ABI.ASHYAFAT@GMAIL.COM', ' Mohamad Ashyafat Sastrosubroto ', 'S1', 'Pengusaha', 'Birmigham/ 22-02-1989', 'Vindy Astriyanti', 'S1', 'IRT', 'Jakarta/ 15-02-1991'),
('TK0276', '202201017', '202201017', 'MUHAMMAD ABDULLAH AMALI', '', '2021-05-05', 'L', 'TKA', 2022, 'AHMAD', 'K1 - Al Buruj', '', '', '', NULL, '', '', '', 'Ustadz Adi Hidayat/ Lc/ M.A', '', '', '', '', '', '', ''),
('TK0277', '202201018', '202201018', 'ALMAHYRA KIANNAYU PRAMESTI ANWAR', 'Bekasi', '2020-06-12', 'P', 'TKA', 2022, 'KINAY', 'K1 -Ath Thoriq', '14/65 kg', '98 cm', '', ' The Green View blok C no.19/ Jakasetia/ Bekasi Selatan/ Bekasi 17147', '021 82735730', '085218843520', 'wkem.anwr@yahoo.com', ' Anwar Sadat', 'SMA', 'Wiraswasta', 'Sukabumi/ 01-07-1970', ' Irama Dewi Cahyawulan Hamzah', 'D3', 'wiraswasta', 'Bandung/ 12-07-1982'),
('TK0279', '202201020', '202201020', 'QARIZH AFKARI NADHIF', 'Jakarta', '2019-11-01', 'L', 'TKA', 2022, 'QARIZH', 'K1 - Al Balad', '16 kg', '98 cm', '', ' Jl Cendana IV no 18 Perumahan Jaka Permai/ RT05 RW 06A/ Kel Jakasampurna/ Bekasi Barat', '-', '082299992553', 'erlanggaperwiranegara@gmail.com', ' Erlangga Perwira Negara ', 'S1', 'Dokter', 'Bekasi/ 27-04-1991', 'Indah Dwi Rahamah', 'S1', 'IRT', 'Way Jepara/ 17-09-1990'),
('TK0280', '202201021', '202201021', 'KANISA NUR HAFIDZAH', 'Bekasi', '2019-10-09', 'P', 'TKA', 2022, 'KANIS', 'K1 -Ath Thoriq', '13 kg', '80 cm', '', 'Villa Jakasetia Blok A No.5', '-', '089661796021', 'faqihsentosa@mail.com', 'Rachmad  Sentosa', 'D3', 'Wiraswasta', 'Jakarta/ 01-01-1987', 'Nur Aini ', 'SMA', 'IRT', 'Jakarta/ 10-08-1988'),
('TK0281', '202201022', '202201022', 'MUHAMMAD HIRO GHAFFARI', 'Bekasi', '2019-05-05', 'L', 'TKA', 2022, 'HIRO', 'K1 -Ath Thoriq', '17 kg', '100 cm', '', ' The Green View Blok D-32', '021 82732682', '085664533254', 'suci.arsae@gmail.com', ' Hendra Saputra', 'S1', 'Karyawan swasta', 'Sungai Kayu Ara/ 13-03-1993', ' Suci Leowati', 'S1', 'IRT', 'Boyolali/ 04-09-1991'),
('TK0283', '202201024', '202201024', 'SHAQUEENA AURORA', 'Bekasi', '2018-10-09', 'P', 'TKA', 2022, 'QUEENA', 'K1 - Al Buruj', '13 kg', '93/5 cm', '', 'Jl. Ketapang V Pondok Pekayon Indah DD 39 no 1 Bekasi Selatan', '021 8205822', '08558088889', 'rdtychptr@gmail.com', ' Raditiya Cahya Putra ', 'S1', 'Karyawan swasta', 'Jakarta/ 10-09-1990', 'Sari Dahliani', 'S1', 'Karyawan Swasta', 'Cirebon/06-09-1988'),
('TK0284', '202201025', '202201025', 'AZKAYRA ZAHRA MAHENDRA', 'Jakarta', '2018-02-06', 'P', 'TKA', 2022, 'AYRA', 'K1 -Ath Thoriq', '14 kg', '100 cm', '', ' Cluster Kiana Bintara Blok A3', '-', '085647282820', 'mahendra.david@gmail.com', ' David Mahendra', 'D4', 'Pegawai Swasta', 'Boyolali/ 12-12-1988', ' Robiatul Kamelia', 'D4', 'IRT', 'Bangkalan/ 20-07-1989'),
('TK0285', '202201026', '202201026', 'ADEEVA RIZKIYYA WAHYUDI', 'Bekasi', '2019-02-07', 'P', 'TKA', 2022, 'ADE', 'K1 - Al Balad', '12 kg', '93 cm', '', ' Cipta view regency blok C 6-7 harapan jaya bekasi', '-', '08121990649', 'erwinwahyudi82@gmail.com', 'Erwin Wahyudi ', 'S1', 'Wirausaha', 'Jakarta/ 03-03-1981', 'Riska Yudianti', 'Kedokteran umum', 'Dokter', 'Jakarta/ 06-05-1981'),
('TK0286', '202201027', '202201027', 'MUHAMMAD BATTUTA AFNANSYAH', 'Bekasi', '2018-10-12', 'L', 'TKA', 2022, 'BATUTA', 'K1 -Ath Thoriq', '-', '-', '', ' Kp. Pamahan RT 01/09 No. 22 Kelurahan Jatimekar Kecamatan Jatiasih', '021 84996017', '085692729707', 'muhammadfirmansyah77@gmail.com', ' Muhammad Firmansyah', 'S1', 'D3', 'Bekasi/ 23-07-1990', ' Ratna Ayu Purwasih', 'S1', 'IRT', 'Palembang/ 16-09-1990'),
('TK0287', '202201028', '202201028', 'AISYAH ALTHAFUNNISA KINAYUNG', 'Bekasi', '2019-08-06', 'P', 'TKA', 2022, 'AISYAH', 'K1 - Al Buruj', '16/5 kg', '103 cm', '', ' Jalan pelabuhan ratu no 55 pengasinan rawalumbu bekasi', '-', '081281101919', 'ang.dipa@gmail.com', ' Ananggadipa Sangsukma Kinayung', 'S1', 'Karyawan BUMN', 'Jepara 03-01-1985', 'Mutia Pratiwi', 'S1', 'IRT', 'Pariaman/ 03-09-1989'),
('TK0288', '202201029', '202201029', 'SHAHNAZ ELEANOR MAESAROH', 'Jakarta', '2019-01-04', 'P', 'TKA', 2022, 'SHAHNAZ', 'K1 - Al Fajr', '15 kg', '-', '', ' Perumahan taman galaxy jalan cendana III blok P III no 8 jakasetia bekasi selatan', '-', '089610085997', 'bagus.inaport4@gmail.com', 'Bagus Purwanto ', 'S2', 'Pengacara', 'Magelang/ 15-07-1983', 'Kiki Meishara', 'S1', 'IRT', 'Pematangsiantar/ 17-05-1985'),
('TK0289', '202201030', '202201030', 'SAYYIDAH ALESHA NADA', 'Bekasi', '2018-02-02', 'P', 'TKA', 2022, 'ALESHA', 'K1 -Ath Thoriq', '18 kg', '90 cm', '', ' Komplek persada kemala blok 17 no. 4-5 jakasampurna/ bekasi barat 17145', '-', '085716427723', 'bhil2.aul54@gmail.com', 'Muhamad Ramadani ', 'S1', 'Karyawan swasta', 'Jakarta/ 25-04-1990', 'Nabila Nur Aulia', 'S1', 'Karyawan swasta', 'Louisiana/ 30-11-1992'),
('TK0290', '202201031', '202201031', 'NAJMA HASKA KAYLA', 'Surakarta', '2019-09-02', 'P', 'TKA', 2022, 'HASKA', 'K1 - Al Buruj', '13 kg', '96 cm', '', ' Familia Urban - Ganesha BG 57/ Mustika Sari/ Mustika Jaya/ Bekasi', '-', '082115859616', 'himawan.nurkahfianto@gmail.com', 'Himawan Nurkahfianto', 'S1', 'Karyawan swasta', 'Bekasi/ 12-03-1990', 'Ratih Anggraeny', 'S1', 'IRT', 'Gresik/ 27-08-1989'),
('TK0291', '202201032', '202201032', 'SHAQUEENA ELFIRA AWBINA', 'Bekasi', '2019-04-01', 'P', 'TKA', 2022, 'SHAQUEENA', 'K1 - Al Balad', '15 kg', '80 cm', '', ' Taman Galaxy. Jl. Pulo sirih utara dalam 8 DA 169', '021 8206637', '08561070176', 'nailahumammy13@gmail.com', 'Bimo Nugroho ', 'S1', 'Karyawan swasta', 'Jakarta/01-03-1992', 'Nailatul Izza Hummamy', 'S1', 'IRT', 'Bekasi/ 13-06-1994'),
('TK0292', '202201033', '202201033', 'MUHAMMAD HANAN ATTAQI', 'Bekasi', '2018-07-05', 'L', 'TKA', 2022, 'TAQI', 'K1 - Al Balad', '13 kg', '100 cm', '', ' Cluster Kiana Bintara blok D no 6', '-', '081510708767', 'hardi.hardiputra@gmail.com', 'Hardiansyah Putra', 'S1', 'Engineer', 'Jakarta/14-08-1989', 'Rhadytia Hanjani', 'S1', 'IRT', 'Jakarta/ 24-04-1989'),
('TK0293', '202201034', '202201034', 'FAYZA ZHAFIRATUL MUNA ISMONO', 'Bekasi', '2019-10-08', 'P', 'TKA', 2022, 'FAYZA', 'K1 - Al Balad', '12/7 kg', '90 cm', '', ' Jalan Padang Raya Blok F Nomor 228/ Bekasi Selatan', '-', '081316265159', 'mustika.citra21@gmail.com', 'Indra Verian Ismono', 'S2', 'Karyawan swasta', 'Kudus/ 19-02-1972', 'Citra Ayu Mustika', 'S1', 'Content creator', 'Bandung/ 21-11-1990'),
('TK0294', '202201035', '202201035', 'KEYLA SABILLA MENTARI', 'Bekasi', '2019-09-10', 'P', 'TKA', 2022, 'MENTARI', 'K1 - Al Fajr', '14/5 kg', '90 cm', '', ' KRISTAL GARDEN RESIDANCE BLOK G2 NO.2 RT.006/RW.004 CIRIUNG-CIBINONG-KAB. BOGOR JABAR', '021 82402497', '085647851888', 'agungsurya_16@yahoo.com', 'Agung Surya Diyanto ', 'S1', 'PNS', 'Salatiga/ 02-12-1985', 'Rani Puspita Dewi', 'D3', 'PNS', 'Sleman/ 26-05-1989'),
('TK0297', '202201038', '202201038', 'ASKARA LANANG MAHAMERU', 'Jakarta', '2019-01-01', 'L', 'TKA', 2022, 'ASKARA', 'K1 - Al Buruj', '14 kg', '92 cm', '', 'Taman Century 2 Jl. Kemuning VI blok M No.27 Pekayon Jaya Bekasi Selatan 17148', '-', '08121572844', 'askaralm01@gmail.com', 'Rhesa Syahrial', 'S1', 'Karyawan Swasta', 'Boyolali/ 07-02-1987', 'Adi Ayu A.P.', 'S1', 'IRT', 'Payakumbuh/ 23-08-1986'),
('TK0298', '202201039', '202201039', 'MUHAMMAD AZZAM KHAIRUDDAROYNI', 'Bekasi', '2020-02-05', 'L', 'TKA', 2022, 'AZZAM', 'K1 - Al Buruj', '15 kg', '102 cm', '', 'Pondok Pekayon Indah Blok BB 21 No.11 jalan Pakis 6 C Bekasi selatan', '-', '082110683102', 'indriyanipermatasari.ummunaura@gmail.com', 'Selamet Daroini', 'S1', 'Konsultan lingkungan', 'Pinang Banjar/ 03-09-1975', 'Indriyani Permatasari', 'S2', 'IRT', 'Jakarta/ 29-02-1980'),
('TK0300', '202201041', '202201041', 'AGHNIA MARYAM NOORA PRAFADI', 'Bekasi', '2018-09-07', 'P', 'TKA', 2022, 'AGHNIA', 'K1 - Al Balad', '11 kg', '94 cm', '', ' Grand Galaxy City/ Cluster Orchid Garden/ OG 2 no.7/ Jaka Setia/ Bekasi Selatan', '021 82732394', '081311183388', 'pradipta.sura@gmail.com', 'Pradipta Surasebastian', 'S1', 'karyawan swasta', 'Jakarta/ 18-12-1988', 'Fadila Amelia M', 'S2', 'IRT', 'Makassar/ 26-12-1988'),
('TK0301', '202201042', '202201042', 'UBAID HAMIZAN PRIHANDARU', 'Denpasar', NULL, 'L', 'TKA', 2022, 'UBAID', 'K1 - Al Fajr', '17 kg', '100 cm', '', 'Komplek Pemda DKI Blok B 3 No. 19', '-', '08119995062', 'mario.prihandaru@gmail.com', 'Ahmad Mario Prihandaru', 'MM', 'karyawan swasta', 'Jakarta/ 09-03-1990', 'Evy Marcelina', 'S1', 'IRT', 'Jakarta/ 08-01-1992'),
('TK0302', '202201043', '202201043', 'ALFATIH BAHY BHADRIKA', 'Bekasi', NULL, 'L', 'TKA', 2022, 'ALFATIH', 'K1 -Ath Thoriq', '13 kg', '95 cm', '', ' Jl H Anwar Cikunir no.62 Rt.05 Rw.01 Jakamulya Bekasi Selatan Kota Bekasi', '-', '08128761553', 'anggerbagus.ab@gmail.com', 'Sulyanto', 'SLTA', 'Karyawan swasta', 'Sleman/ 19-04-1980', 'Nunung Nursinah', 'SLTA', 'IRT', 'Bekasi/ 15-11-1985'),
('TK0304', '202201045', '202201045', 'MUHAMMAD AZKA DANIYAL ALI', 'Jakarta', '2018-06-04', 'L', 'TKB', 2022, 'AZKA', 'K2- Al Mursalat', '19/5 kg', '104 cm', '', ' Perumahan Pondok Timur Mas - Jl Pondok Merah Mas II Blok F2 No 16/ Jakasetia', '-', '081802286764', 'dhani_taruna@yahoo.com', ' Dhani Jaya Taruna ', 'S1', 'Karyawan swasta', 'Kotabumi/ 07-07-1983', 'Indri Handayani', 'S1', 'karyawan BUMN', 'Jakarta/ 14-02-1987'),
('TK0305', '202201046', '202201046', 'KHAULAH INARA', 'Bekasi', '2020-06-11', 'P', 'TKA', 2022, 'INARA', 'K1 - Al Balad', '14/2 kg', '97/5 cm', '', 'Jalan Nusa Indah VI/ B498/ Kel. Jakasetia/ Bekasi Selatan 17147', '', '0811161299 / 0811456434', 'fachturengineering@gmail.com', 'Fachturrizki Ramadhan', 'S1', 'Karyawan swasta', 'Jakarta/ 9 April 1991', 'Chessa Rachmalaputi', 'S2', 'Karyawan swasta', 'Bekasi/ 4 September 1992'),
('TK0306', '202201047', '202201047', 'ABIZAR RIFAT AMIER', 'Bekasi', '2019-02-04', 'L', 'TKA', 2022, 'ABIZAR', 'K1 - Al Balad', '12 kg', '90 cm', '', 'Jl Taman Agave II/M3/2 taman Galaxy', '', '0817531112 / 0818937879', 'waroengmaksem@gmail.com', 'Rifat Amier', 'S1', 'Wiraswasta', 'Surabaya/29-8-1982', 'Samira Bachmid', 'S1', 'IRT', 'Surabaya/ 25 Desember 1988'),
('TK0308', '202201049', '202201049', 'ARSYILA HANUM RAHMADINA', 'Jakarta', '2018-03-09', 'P', 'TKB', 2022, 'HANUM', 'K2 - Al Insan', '14 kg', '90 cm', '', 'Perumahan Harapan Baru 1/ Jl. Nangka 4 No. 5 RT 004 RW 005. Kota Baru Bekasi Barat. Bekasi. Jawa Barat. 17133', '', '081299366510', 'devihenri@gmail.com', 'Devi Henri Wibowo', 'S1', 'Karyawan swasta', 'Pekalongan/ 26 Oktober 1988', 'Indah Purnamasari Wulanti', 'S1', 'S1', 'Jakarta/ 8 Sept 1988'),
('TK0309', '202201050', '202201050', 'AISHA SHAQUEENA ADZANI', 'Bekasi', '2020-03-11', 'P', 'TKA', 2022, 'AISHA', 'K1 - Al Buruj', '17 kg', '105 cm', '', 'The Green View Blok D No. 28', '', '087784624484 / 081806706175', 'fadliadzani15051993@gmail.com', 'Fadli Adzani', 'S1', 'Wiraswasta', 'Jakarta/ 15 Mei 1993', 'Hana Triaputri', 'Diploma IV', 'IRT', 'Kupang/ 9 September 1993'),
('TK0310', '202201051', '202201051', 'SALMA ADZKIRA RAWEYAI', 'Bekasi', '2018-08-12', 'P', 'TKA', 2022, 'SALMA', 'K1 - Al Balad', '16 kg', '95 cm', '', 'Jl. Kelud Blok A No. 112B RT 007 RW 09 Perumahan Masnaga Jaka Sampurna', '', '081218112888 / 081210001882', 'rhonaldraweyai@gmail.com', 'Rhonald', 'SMA', 'Wiraswasta', 'Serui/ 6 September 1974', 'Nini Agororia', 'S1', 'IRT', 'Jakarta/ 21 Agustus 1981'),
('TK0312', '202201052', '202201052', 'KHALISA AZZAHRA ALKIPARO', 'Jakarta', '2019-06-01', 'P', 'TKA', 2022, 'KHALISA', 'K1 - Al Fajr', '14 kg', '93 cm', '', 'Jl. Cemara Blok W No 12A/ Taman Galaxy', '', '081316548219 / 081281733220', 'alkiparo@gmail.com', 'Kholika Alkiparo', 'S1', 'Wiraswasta', 'Palembang/ 25 Feb 1988', 'Akhlaqul Karimah', 'S1', 'IRT', 'Jakarta/ 7 Des 1991'),
('TK0313', '202201053', '202201053', 'NAFEESHA ALESHA ADNAN', 'Jakarta', '2019-11-04', 'P', 'TKA', 2022, 'NAFEESHA', 'K1 - Al Buruj', '15 kg', '95 cm', '', 'Jl akalipa blok c 3 no 16 /kemang pratama 3', '', '0817102770 / 081220002770 ', 'nouraesperansza@gmail.com', 'Adnan', 'SMA', 'Wiraswasta', 'Garut/ 13 Feb 1987', 'Noura', 'SMA', 'IRT', 'Pandeglang/ 25 Nov 1991'),
('TK0314', '202201054', '202201054', 'RAYYA ARSYILA HAFIZA', 'Bekasi', '2020-04-02', 'P', 'TKA', 2022, 'RAYYA', 'K1 - Al Balad', '14 kg', '90 cm', '', 'Komp.Pulo Permata Sari Blok B5 No 3 Pekayon Jaya/ Bekasi Selatan', '', '082217455191 / 081285896381', 'wildanfujiansah@gmail.com', 'Wildan Fujiansah', 'S2', 'PNS', 'Cirebon/ 20 Maret 1986', 'Reti Rohmalia Sari', 'S1', 'Karyawati Swasta', 'Pandeglang/ 17 Maret 1987'),
('TK0315', '202201055', '202201055', 'MUHAMMAD ZAYD ZULKIFLI', 'Jakarta', '2020-02-06', 'L', 'TKB', 2022, 'ZAYD', 'K2 - Al Ma\'arij', '', '', '', 'Jl. Nusa Indah Raya blok H-1', '021 8508783', '081318391315 / 081286129259', 'raynugraha@gmail.com', 'Ray Zulham Farras Nugraha', 'S1', 'Wiraswasta', 'Jakarta/ 29 Maret 1993', 'Milka Anisya Norasiya', 'S1', 'dokter', 'Jakarta/ 4 Nov 1991'),
('TK0316', '202201056', '202201056', 'AMIRA AZZAHRA KIMBERLITE', 'Bekasi', '2017-07-11', 'P', 'TKB', 2022, 'AMIRA', 'K2- Al Mursalat', '23 kg', '110 cm', '', 'Kemang Pratama I JL Utama III Blok BK No 19 RT 007 RW 011/ Kelurahan : Sepanjang Jaya/ Kecamatan : Rawa Lumbu/ Kotamadya Bekasi/ Jawa Barat / Indonesia', '021-82408064', '+628111554564/+62 8111196272', 'onal_05@yahoo.com', 'IR. ONTOWIRYO ALAMSYAH DIPL GEOTH T', 'S2', 'Karyawan swasta', 'YOGYAKARTA/5 Nov 1966', 'VERA MELINDA S.SOS', 'S1', 'wiraswasta', 'Jakarta/ 6 Feb 1972'),
('TK0317', '202201057', '202201057', 'QIANA NAFIAH MUSHABIRA', 'Bekasi', '2017-12-11', 'P', 'TKB', 2022, 'QIANA', 'K2- Al Mursalat', '25 kg', '107 cm', '', 'Jl. Manggis Raya Blok A-444 RT 08 RW 12/ Perumahan Duren Jaya', '', '083892532616', 'fikri77.fm@gmail.com', 'Muhammad Fikri Muzzaki', 'S2', 'Guru SD AIIS', 'HSS/ 22 April 1994', 'Lutfia Niswatul Khasanah', 'D3', 'Okupasi Terapis', 'Jakarta/ 25 Agustus 1992'),
('TK0318', '202301001', '202301001', 'GHUMAISHA ZIDNI ILMA', 'Jakarta', '2019-11-07', 'P', 'KB', 2023, 'GHUMA', 'KB - At Tiin', '11', '90', '', 'Griya kemang raya no. 91 . Jl. Kemang raya. Jaticempaka. Bekasi', '', '81281182408', 'dinarputripratiwi@gmail.com', 'Urida zidni ilma', 'S1 - sarjana teknik elektro', 'Swasta', 'Semarang/ 11-Jun-1987', 'Dinar putri pratiwi', 'S1 - pendidikan anak usia dini', 'Irt', 'Palembang/ 22-08-1992'),
('TK0319', '202301002', '202301002', 'TSABINA EMBUN FATHIHA ARIF', 'Bekasi', '2020-06-04', 'P', 'KB', 2023, 'EMBUN', 'KB - At Tiin', '14', '90', '', 'Jalan Jatiluhur Raya 117/ Cluster Rosella Blok Arelian No.6 Rt.2/3 Jakasampurna Berkasi Barat 17145', '', '81717756111', 'shirofah89@gmail.com', 'Muhammad Arif Sulaiman', 'S2 - Ilmu Hukum', 'Lawyer', 'Aceh Timur/ 07-Nov-1983', 'Sitti Musyarrafah', 'S1 - Psikologi Pendidikan', 'IRT', 'Jakarta/ 18-01-1989'),
('TK0320', '202301003', '202301003', 'ASIYAH KALILA SAMAH', 'Bekasi', '2020-04-05', 'P', 'KB', 2023, 'KALILA', 'KB - Al Qadr', '13', '94', '', 'Casa alaia residence blok C no 32/ jln bougenville raya RT 1 RW 11 Jakasampurna/ bekasi 17145', '', '81297841932', 'mhmmd.bilal24@gmail.com', 'Muhammad Bilal', 'S1 - Akuntansi UI', 'Swasta', 'Jakarta/ 03-Sep-1994', 'ila Wati', 'S1 - Ilmu Ekonomi UI', 'IRT', 'Banyumas/ 02-Sep-1995'),
('TK0321', '202301004', '202301004', 'AISYAH HAURA KARIMAH', 'Jakarta', '2019-01-04', 'P', 'KB', 2023, 'AISYAH', 'KB - Al \'Alaq', '13kg', '', '', 'Jl Marzuki 9 rt 05 rw 01 no 42 penggilingan Cakung Jakarta timur', '', '87887336292', 'tanyakaromi99@gmail.com', 'Ali karomi', 'Smk', 'Wirausaha', 'Jakarta/ 04-Apr-1991', 'Kamia', 'S1-pendidikan', 'Guru', 'Bekasi/ 06-Jun-1994'),
('TK0322', '202301005', '202301005', 'MUHAMMAD UWAIS AL QARNI', 'Bekasi', '2019-06-10', 'L ', 'KB', 2023, 'UWAIS', 'KB - Al Qadr', '14', '95', '', 'Jl. Cipete Raya No.123 RT/RW : 03/05 (gang kweni) Kelurahan : Mustikasari/ Kecamatan : Mustikajaya/ Kota  Bekasi - 17157', '', '81520302710', 'aditya.nugraha1089@gmail.com', 'Muhammad Aditya Nugraha', 'SMK Telkom Shandy putra jakarta', 'Swasta', 'Jakarta/ 10-Oct-1989', 'Andinna Prameswari', 'D3 Akuntansi - Politeknik Pos Indonesia', 'IRT', 'Jakarta/ 06-Oct-1990'),
('TK0323', '202301006', '202301006', 'KAIFEEYA HAFIDZAH MARYAM', 'Bekasi', '2020-05-10', 'P', 'KB', 2023, 'MARYAM', 'KB - Al Ashr', '12 kg', '', '', 'Cluster Intan Gardenia No. A4/ Jakasetia/ Bekasi Selatan', '', '81210309363', 'feronalizaazis@gmail.com', 'Heru Oktaviana', 'SI - Administrasi Niaga UI', 'Swasta', 'Kuningan/ 10-Apr-1986', 'Ferona Liza', 'S1 / Sarjana Ekonomi STEKPI', 'IRT', 'Jakarta/ 02-Sep-1988'),
('TK0324', '202301007', '202301007', 'HANAN IMAN HABIBURRAHMAN', 'Sukabumi', '2019-03-01', 'L', 'KB', 2023, 'MAS IMAN', 'KB - Al Ashr', '05-Des', '90', '', 'Jln. Pondok Jingga Mas III Blok F5 No 19 Jakasetia/ Kec. Bekasi Selatan Kota Bekasi Jawa Barat 17147', '', '87856276326', 'angginalatief@gmail.com', 'HASAN SOFIAN HERNAWAN', 'S1 Teknik Kimia ITB', 'BUMN', 'BANDUNG/ 14-01-1989', 'Anggina Oktapia Latief', 'S1 Psikologi Univ. Ahmad Dahlan', 'IRT', 'Sukabumi/ 15-10-1987'),
('TK0325', '202301008', '202301008', 'ZAFER KENZIE', 'JAKARTA', '2019-10-12', 'L', 'KB', 2023, 'ZAFER', 'KB - At Tiin', '05-Des', '85', '', 'CLUSTER BINTANG RESIDENCE INDAH NO B6/ JL HJ UMAR/ JAKASETIA/ BEKASI SELATAN', '', '8111222945', 'islahamalia13@gmail.com', 'ZAHFAN ASADALLAH', 'SMA', 'WIRAUSAHA', 'DEPOK/ 21-03-1994', 'ISLAH AMALIAH', 'S1 - SARJANA EKONOMI', 'IBU RUMAH TANGGA', 'JAKARTA/ 13-12-1994'),
('TK0327', '202301010', '202301010', 'MUHAMMAD EIDLAN DEJARASYAA', 'Jakarta', '2019-05-11', 'L', 'KB', 2023, 'DEJA', 'KB - Al Ashr', '18/5', '100', '', 'Perumahan Bintara Alam Permai Blok D no 7 Bintara Jaya', '', '81310557128', 'pujo.widiatno@pancaputramadani.com', 'Pujo Widiatno', 'D3', 'Wirausaha', 'Kebumen/ 08-Sep-1981', 'Chiquitita Hapsari', 'S1', 'IRT', 'Bekasi/ 10-Mar-1982'),
('TK0328', '202301011', '202301011', 'MISHARY MANNAF RABBANI', 'KOTA BEKASI', '2019-07-07', 'L', 'KB', 2023, 'MISHARY', 'KB - At Tiin', '13', '94', '', 'JALAN SADEWA RAYA C 253C JAKASETIA', '', '', 'muh.4fif@gmail.com', 'Muhamad Afif', 'S1 sarjana teknik UNDIP', 'Wirausaha', 'Kabupaten Semarang/ 12-Apr-1988', 'Nuurul Lathiifah', 'S1 sarjana Teknik UNDIP', 'Wirausaha', 'Pekalongan/ 05-Dec-1989'),
('TK0329', '202301012', '202301012', 'IZZATY QISTHY', 'Bekasi', '2021-07-07', 'P', 'KB', 2023, 'QISTHY', 'KB - Al Qadr', '10/5kg', '', '', 'Emprit emas blok B no 51/ jaka setia', '', '81324463139', 'email : kastori77@yahoo.co.id', 'Kastori', 'S1 Sastra Arab di UNJ', 'Wirausaha', 'Brebes/ 29-09-1977', 'Ratih Maharani Subekti', 'S1 Ekonomi', 'Ibu Rumah tangga', 'Jakarta/ 13-09-1982'),
('TK0330', '202301013', '202301013', 'HANA NAYLA ASSYIFA', 'Kota Bekasi', '2020-02-06', 'P', 'KB', 2023, 'HANA', 'KB - Al Ashr', '20', '100', '', 'Kp Dua Perum De\'minimalis Blok C No.15 RT.04 RW.02 Jaka Sampurna/ Bekasi Barat 17145', '', '81282332250', 'linda.k3ui@gmail.com', 'Sigit Purwanto', 'S1 - Sarjana Teknik Sipil UGM', 'Karyawan BUMN', 'Jakarta/ 15-07-1980', 'Linda Hartini', 'S1 - Sarjana Kesehatan Masyarakat UI', 'IRT', 'Muara Enim/ 16-01-1983'),
('TK0331', '202301014', '202301014', 'ELYSIA AISYAHZAHRAH ANWAR', 'jakarta', '2019-07-12', 'P', 'KB', 2023, 'AISYAH', 'KB - At Tiin', '12', '101', '', 'jl. taman Malaka selatan 2 Blok B10 no 27 Malaka sari duren sawit Jakarta timur 13460', '', '81384273237', 'marlinadevi14@gmail.com', 'M. Bahrul Anwar', 'SI - Teknik Mesin UniBraw', 'karyawan swasta', 'pasuruan/ 28-04-1984', 'Devi Marlina', 'SI- Teknologi Industri IPB', 'IRT', 'Bandar Lampung/ 14-03-1985'),
('TK0332', '202301015', '202301015', 'ABDUL HAKIMI', 'Bekasi', '2021-01-03', 'L', 'KB', 2023, 'ABDUL', 'KB - Al \'Alaq', '13', '95', '', 'Perumahan Pondok Timur Mas/ Jalan Pondok Jingga Mas 7 blok R3 no 11', '', '811222977', 'ppat.bima@gmail.com', 'Bima Yogie Purnama', 'S2 Magister Kenotariatan/ Universitas Indonesia (UI)', 'Notaris/PPAT & Pengusaha', 'Bekasi/ 15-12-1990', 'Feny Ambarsari', 'S1 FSRD Institut Teknologi Bandung (ITB)', 'Ibu rumah tangga', 'Bekasi/ 03-Feb-1991'),
('TK0333', '202301016', '202301016', 'WIBISANA AFNAN ZAYD', 'Bekasi', '2019-11-11', 'L', 'KB', 2023, 'WIBI', 'KB - Al \'Alaq', '13', '', '', 'Perumahan villa pekayon blok A3 no 12', '', '81393392811', 'ajengrosalyne.air@gmail.com', 'Alifia Rahman', 'S1 Teknik Mesin Unej', 'Swasta', 'Jember/ 03-Nov-1986', 'Ajeng illastria', 'S2 Farmasi UI', 'PNS', 'Mojokerto/ 20-01-1987'),
('TK0334', '202301017', '202301017', 'UMAR ABQARIZIYAD KINAYUNG', 'Bekasi', '2021-05-03', 'L', 'KB', 2023, 'UMAY', 'KB - Al Ashr', '13', '93', '', 'Jalan pelabuhan ratu no 56 pengasinan Rawalumbu kota Bekasi', '', '81284060054', 'wikrama.ananta@gmail.com', 'Anantawikrama Unggul Kinayung', 'S1 Arsitektur Universitas Pancasila', 'Wiraswasta', 'Semarang/ 03-Dec-1987', 'Rachmayanti Nur Padilah', 'S1 Hubungan Internasional UIN', 'IRT', 'Bekasi/ 24-06-1993'),
('TK0335', '202301018', '202301018', 'AIZA HANAA ALHUMAIRA', 'Bekasi', '2022-06-03', 'P', 'KB', 2023, 'AIZA', 'KB - Al \'Alaq', '11kg', '', '', 'jalan jeruk 4 no 117 Perumnas 1 Bekasi', '', '81310077329', 'dedik08@gmail.com', 'Dedik Cahyono', 'Sarjana teknik', 'pegawai swasta', 'Blitar/ 08-Nov-1979', 'Farida Andam Dewi', 'Sarjana Teknik', 'swasta', 'Jakarta/ 09-Jan-1980'),
('TK0336', '202301019', '202301019', 'MARYAM ATSILAH MALASSA', 'Bekasi', '2021-04-10', 'P', 'KB', 2023, 'MARYAM', 'KB - At Tiin', '16', '95', '', 'Pondok pekayon indah jalan mahoni 1 B14 no 7', '', '81285180555', 'endy.malassa@yahoo.com', 'Endy malassa', 'Sma', 'Pegawai Bumn', 'Jakarta/ 07-Sep-1992', 'Nisa sofia', 'D3', 'IRT', 'Bandar lampung/ 01-Jul-1991'),
('TK0337', '202301020', '202301020', 'MUHAMMAD RAFIF ABQARY', 'Bekasi', '2019-03-01', 'L', 'KB', 2023, 'RAFIF', 'KB - Al Ashr', '18', '95', '', 'Jl. Pulo sirih tengah 13 blok ea 390', '', '81286382262', 'widiyogop@gmail.com', 'Widi yogo pratomo', 'S1 Akuntansi Univ. Gunadarma', 'Pns', 'Jakarta/ 04-Nov-1988', 'Elin septiana', 'S1 Akuntansi Univ. Gunadarma', 'Irt', 'Lebak/ 22-09-1990'),
('TK0338', '202301021', '202301021', 'ZAIDAN HASAN KARIM', 'Bekasi', '2020-08-05', 'L', 'KB', 2023, 'ZAIDAN', 'KB - Al Qadr', '13 kg', '', '', 'Jl cikunir raya no 101 rt01 rw02/ jakamulya/ bekasi selatan', '', '85718697759', 'diah647@gmail.com', 'Budi Yatmoko', 'SMP', 'Wirausaha', 'Sragen/ 08-Aug-1985', 'Diah ayu puspitarini', 'SMK', 'IRT', 'Sragen/ 20-05-1992'),
('TK0339', '202301022', '202301022', 'NAURA ARYANARESWARI AZZAHRA', 'Bekasi', '2019-08-02', 'P', 'KB', 2023, 'NAURA', 'KB - Al Qadr', '13 Kg', '', '', 'Griya Metropolitan 2 Blok E5 No.3 Pekayon Bekasi', '', '82133183060', 'ari.prihandoyo@gmail.com', 'Ari Agung Prihandoyo', 'S2 - Magister Teknik-UI', 'Karyawan Swasta', 'Boyolali/ 01-Jul-1989', 'Widya Ariaty', 'S1 - Pendidikan Dokter - Unpad', 'Mahasiswa PPDS', 'Palembang/ 07-Jul-1988'),
('TK0340', '202301023', '202301023', 'AHMAD FALAH IBRAHIM', 'Jakarta', '2020-12-05', 'L', 'KB', 2023, 'AHMAD', 'KB - At Tiin', '12', '98', '', 'Jl. Tenggiri V No. 12/ RT 002/RW.004/ Kelurahan Kayuringin Jaya/ Kecamatan Bekasi Selatan/ Kota Bekasi/ Jawa Barat/ 17144', '', '85336035037', 'amirudin.al.aziz@gmail.com', 'Zakariya Amirudin Al Aziz', 'S1 Teknik Industri', 'Swasta', 'Nganjuk/ 12-Nov-1990', 'Vidya Nurina', 'Dokter Umum', 'Wirausaha', 'Pasuruan/ 20-10-1991'),
('TK0341', '202301024', '202301024', 'SENJA ISLAM MEDINA', 'Cibinong', '2020-02-01', 'P', 'KB', 2023, 'SENJA', 'KB - Al \'Alaq', '13/5kg', '', '', 'Komp kristal garden blok G2 no.2 ciriung-cibinong-kan. Bogor', '', '85647851888', 'agungsurya_16@yahoo.com', 'Agung Surya Diyanto', 'S1- ekonomi pembangunan UKSW', 'Pns', 'Salatiga/ 12-Feb-1985', 'Rani Puspita Dewi', 'D3 kebidanan poltekkes jakarta 3', 'Pns', 'Sleman/ 26-05-1989'),
('TK0342', '202301025', '202301025', 'MAHARDHIKA ALI ALFATIH MUNTHE', 'Jakarta', '2020-06-07', 'L', 'KB', 2023, 'ALI', 'KB - At Tiin', '12', '93', '', 'Pondok Pekayon Indah Jalan Ketapang I Blok DD48 No 8', '', '81361582307', 'fahmi_munthe@yahoo.com', 'Khairul Fahmi Munthe', 'S1 - Sarjana Teknik USU', 'Swasta', 'Jakarta/ 02-May-1988', 'Ayu Aryawati', 'S1 - matematika Unpad', 'BUMN', 'Jakarta/ 28-06-1989'),
('TK0343', '202301026', '202301026', 'ARYENA MYSHA HUDA', 'Bekasi', '2020-12-12', 'P', 'KB', 2023, 'MYSHA', 'KB - Al \'Alaq', '14/30 kg', '', '', 'Perum. PTI KHUSUS BLOK K5/no.5/ Rt.005/Rw.010/ kel. Jatimulya/ kec. Tambun selatan', '', '87875883813', 'hudafachrizal11@gmail.com', 'Fachrizal huda', 'S1 akuntansi univ mercu buana', 'Wiraswasta', 'Padang panjang/ 20-06-1992', 'Johanna Prasetiarini', 'S1 akuntansi univ. Mercu buana', 'Ibu rumah tangga', 'Jakarta/ 07-Dec-1992'),
('TK0344', '202301027', '202301027', 'ALMAHYRA KIRANI RAMADHANI', 'Jakarta', '2020-03-05', 'P', 'KB', 2023, 'KIRANI', 'KB - Al \'Alaq', '10', '88', '', 'Perumahan Jatibening Estate/ Jl. Kutilang II Blok G9 No.4 Rt.013 Rw.013 Jatibening/ Pondok Gede/ Bekasi Barat', '', '81212797092', 'annisa.anggraini10@gmail.com', 'Muhamad Rizki Fajar', 'S1 - Pendidikan Administrasi Perkantoran UNJ', 'Swasta', 'Jakarta/ 08-Aug-1990', 'Annisa Anggraini', 'S1 - Akuntansi UI', 'Swasta', 'Jakarta/ 10-Oct-1992'),
('TK0345', '202301028', '202301028', 'MUHAMMAD AHDAN BILFAQIH', 'Palembang', '2021-01-02', 'L', 'KB', 2023, 'AHDAN', 'KB - Al Qadr', '18', '106', '', 'The Green Palace Jatibening/ Blok C/3/ Jatibening Baru/ Pondok Gede/ Bekasi', '', '', 'ahmadh809@gmail.com', 'Ahmad Hidayah', 'S1-Sarjana Ekonomi', 'PNS', 'Jakarta/ 05-Nov-1988', 'Firda Aristya', 'S1-Sarjana', 'PNS', 'Palembang/ 04-Nov-1989'),
('TK0346', '202301029', '202301029', 'AZKAYRA KHADEEJAH ALIYA', 'Jakarta', '2019-08-02', 'P', 'KB', 2023, 'ALIYA', 'KB - Al \'Alaq', '11 kg', '100', '', 'Jl penggilingan gg hj masmala rt 13 rw 07 no 70 kel penggilingan kec cakung jakarta timur 13940', '', '81315086412', 'fatihaliya99@gmail.com', 'fatih hanabila aliya', 'S2', 'Manager', 'Jakarta/ 29-06-1996', 'Tasya', 'S1', 'Ibu rumah tangga', 'Jakarta/ 02-Apr-2000'),
('TK0347', '202301030', '202301030', 'UMAR MUSA SUHADA', 'Bekasi', '2019-11-11', 'L', 'KB', 2023, 'UMAR', 'KB - Al Qadr', '12.7', '95', '', 'Cluster Lavesh SA5.16 no 12', '', '8118416666', 'ahmadcs89@gmail.com', 'Ahmad Chaerus Suhada', 'S1 - Sarjana Statistika IPB', 'Swasta', 'Bekasi/ 03-Oct-1989', 'Puspalia Ayudiar Setiawati', 'S1 - Sarjana Statistika IPB', 'IRT', 'Sumedang/ 10-Mar-1990'),
('TK0348', '202301031', '202301031', 'SHAQUEENA NADA KHALILUNA', 'Bekasi', '2020-11-09', 'P', 'KB', 2023, 'SHAQUEEN', 'KB - At Tiin', '14.2', '100', '', 'Jalan Swatantra 1 - Kav V No 149 RT 09 RW 05 Jatirasa Jatiasih 17424', '', '', 'febrinahanifah@gmail.com', 'Rino Supriadi Putra', 'S2 Teknik Industri Universitas Indonesia', 'BUMN', 'Lumajang/ 29-06-1992', 'Febrina Hanifah', 'S1 Ilmu Komunikasi Universitas Padjajaran', 'BUMN', 'Jakarta/ 13-02-1992'),
('TK0349', '202301032', '202301032', 'KHAYLA NAFISA DZAKIRAH', 'Jakarta', '2020-03-08', 'P', 'KB', 2023, 'KHAYLA', 'KB - Al Qadr', '15', '95', '', 'Jl. Pondok cipta blok b1 no.8', '', '85775915621', 'lalita.pathya92@gmail.com', 'Ardhito Pratama Nugraha', 'S1-Ekonomi', 'Swasta', 'Jakarta/ 15-09-1990', 'Lalita Pathya Sukma', 'S1-Sistem Informasi', 'IRT', 'Jakarta/ 31-03-1992'),
('TK0350', '202301033', '202301033', 'AISYAH ANNAILA', 'Bekasi', '2019-04-02', 'P', 'KB', 2023, 'AISYAH', 'KB - Al Ashr', '12 Kg', '', '', 'Perumahan Alam Indah Jl. Garuda II Blok L1 No. 100 RT/RW 001/006 Kel. Poris Plawad Indah Kec. Cipondoh Tangerang', '', '85279562281', 'eriwandri@gmail.com', 'Eri Wandri', 'S1 - Sarjana Ilmu Komputer UPI YPTK Padang', 'Karyawan Swasta', 'Padang/ 09-Feb-1991', 'Haizawahyuni', 'S1 - Sarjana Ilmu Komputer UPI YPTK Padang', 'Ibu Rumah Tangga', 'Talawi/ 08-Jan-1992'),
('TK0351', '202301034', '202301034', 'MAHIRA QALESYA PRAKASA', 'Bekasi', '2020-06-06', 'P', 'KB', 2023, 'UMA', 'KB - Al Qadr', '12', '100', '', 'Jl. Pondok Jingga Mas V Blok E3 No 19 Bekasi', '', '81586213537', 'dedy.bagus@yahoo.com', 'Dedy Bagus Prakasa', 'S2 Akutansi UI', 'PNS', 'Bekasi/ 23-04-1984', 'Ari Astri Yunita', 'S2 Hukum UI', 'PNS', 'Jakarta/ 06-Apr-1983'),
('TK0352', '202301035', '202301035', 'FATHIMAH AZZAHRA NURGHANIA SANDIKA', 'Bekasi', '2021-08-02', 'P', 'KB', 2023, 'FATHIMAH', 'KB - Al Ashr', '14', '90', '', 'Pondok Timur Mas Blok G2 no 1B', '', '81210665556', 'ek.sandika@gmail.com', 'Rosyandi Luddin', 'D3 Keuangan', 'Karyawan Swasta', 'Jakarta/ 26-06-1978', 'Eka Hidayatul Mustafidah', 'S1 keuangan', 'Karyawan', 'Payakumbuh/ 09-May-2009'),
('TK0353', '202301036', '202301036', 'WAODE MARYAM BAKTI', 'Bekasi', '2020-08-11', 'P', 'KB', 2023, 'MARYAM', 'KB - Al Qadr', '17 kg', '', '', 'Jl. Penegak 1 no. 75 rawa lumbu bekasi', '', '', 'Puspasarianggraini82@gmail.com', 'L. M Bakti', 'S2 Magister', 'PNS', 'Yogyakarta/ 14-11-1981', 'Puspa', 'S1- Kesehatan Masyarakat', 'IRT', 'Jakarta/ 07-Jan-1982'),
('TK0354', '202301037', '202301037', 'UMAR KHALID AKRESA', 'Bekasi', '2020-01-10', 'L', 'KB', 2023, 'UMAR', 'KB - At Tiin', '20', '99', '', 'Pondok Surya Mandala Jl. Surya Permata IV blok s1 no.27', '', '', 'caca.bpjstk@gmail.com', 'Krestianto Aditya Santoso', 'S1 Tekhnologi Informasi', 'Swasta', 'Semarang/ 11-Dec-1988', 'Annisa Kusumawardhani', 'S1 Ilmu Komunikasi', 'BUMN', 'Pangkal Pinang/ 21-09-1991'),
('TK0355', '202301038', '202301038', 'KHANZA NAFISAH IHSAN', 'Jakarta', '2019-08-01', 'P', 'KB', 2023, 'KANZA', 'KB - Al \'Alaq', '12/6kg', '', '', 'KPAD Jl.Angkutan blok K no.24 RT 09/RW 06', '', '81316453196', 'rifkirinaldi49@gmail.com', 'Rifki Rinaldi Ihsan', 'S1 - Akuntansi', 'Swasta', 'Jakarta/ 12-Jul-1991', 'Dewi Lestari', 'S1 - Ekonomi', 'IRT', 'Jakarta/ 09-Jun-1991'),
('TK0356', '202301039', '202301039', 'MUHAMMAD ATHALLAH SUPRIYONO', 'Bekasi', '2019-07-02', 'L', 'KB', 2023, 'ATHALLAH', 'KB - Al Ashr', '14', '93', '', 'Perum Pondok Timur Indah Jl. Panda 4 Blok D No. 111', '', '81808183486', 'shelfisupriyono@gmail.com', 'Iko Supriyono', 'S1 - Akuntansi STIE SUPRA', 'Swasta', 'Jakarta/ 07-Jul-1980', 'Shelfi', 'S1 - BK UNJ', 'IRT', 'Jakarta/ 09-Apr-1981'),
('TK0357', '202301040', '202301040', 'HAZWAN AUSHAF ATHAILLAH', 'Bekasi', '2019-05-11', 'L', 'KB', 2023, 'HAZWAN', 'KB - Al \'Alaq', '15', '98', '', 'Sakura regency 3 no U29', '', '82113029480', 'tantra_lesmana@yahoo.co.id', 'Tantra Lesmana', 'S1 pendidikan teknik elektro', 'Swasta', 'Jakarta/ 15-05-1986', 'Hikmelia Dwi Sundari', 'Magister psikologi', 'PNS', 'Tasikmalaya/ 13-07-1987'),
('TK0358', '202301041', '202301041', 'KANISYA AFIZA ALIYA', 'BEKASI', '2021-06-02', 'P', 'KB', 2023, 'KANISYA', 'KB - At Tiin', '11.5 kg', '', '', 'Jl. Pulo sirih utama Blok A1 No.21 Villa Galaxy Bekasi', '', '85779744504', 'leslyrossa@gmail.com', 'Idam Bariyanto', 'S1 Teknik Mesin UI', 'Karyawan Swasta PT. AHM', 'Jakarta/ 24-10-1984', 'Lesly Rossa', 'S1 Psikologi Unpad', 'IRT', 'Tembagapura/ 10-Apr-1983'),
('TK0359', '202301042', '202301042', 'DILARA NURA BIYA', 'Jakarta', '2021-11-03', 'P', 'KB', 2023, 'NURA', 'KB - Al Qadr', '11 kg', '92', '', 'Cluster trans agung no c6 jatiasih bekasi', '', '85322512752', 'panjisatriya91@gmail.com', 'Panji Satriya', 'S1 - Sarjana Ilmu Komunikasi UNPAD', 'Karyawan BUMN', 'Medan/ 19-10-1991', 'Nabila Putri Vihandika', 'S1 - Sarjana Ilmu Komunikasi UNPAD', 'IRT', 'Jakarta/ 28-05-1993');
INSERT INTO `siswa2` (`c_siswa`, `nis`, `nisn`, `nama`, `temlahir`, `tanglahir`, `jk`, `c_kelas`, `thn_join`, `panggilan`, `c_klp`, `bbadan`, `tbadan`, `ukuran_baju`, `alamat`, `telp`, `hp`, `email`, `nama_ayah`, `pendidikan_a`, `pekerjaan_a`, `ttl_a`, `nama_ibu`, `pendidikan_i`, `pekerjaan_i`, `ttl_i`) VALUES
('TK0360', '202301043', '202301043', 'ALTHAF KHALID AULIA', 'BEKASI', '2022-06-03', 'L', 'KB', 2023, 'ALTHAF', 'KB - Al \'Alaq', '13KG', '', '', 'TAMAN JATISARI PERMAI JALAN JAWA BLOK EA 33 KEL.JATISARI KEC.JATIASIH BEKASI 17426', '', '8111229182', 'avia_darini@yahoo.com', 'HENDRA ARIWIJAYA', 'S1', 'SWASTA', 'JAKARTA/ 25-06-1982', 'FIFI AVIA DARINI', 'S1 - PSIKOLOGI', 'WIRAUSAHA', 'Jakarta/ 05-Dec-1986'),
('TK0361', '202301044', '202301044', 'MUHAMMAD HAMIZAN MALIK RIZANSYAH', 'Jakarta', '2020-04-10', 'L', 'KB', 2023, 'MALIK', 'KB - Al Ashr', '14/5', '96', '', 'Persada Kemala Blok 16 Nomor 10/ Jakasampurna/ Bekasi Barat', '', '8562870787', 'abrorizani@gmail.com', 'Muhammad Abror Rizani Fahmi', 'S1 - Kedokteran Umum UGM', 'Dokter', 'Bantul/ 08-Dec-1992', 'Jessymia Auliana', 'S1 - Kedokteran Umum UGM', 'Dokter', 'Jakarta/ 05-Jul-1993'),
('TK0362', '202301045', '202301045', 'RAYYAN PRANADIPA SANTIAJI', 'Jakarta', '2019-06-03', 'L', 'KB', 2023, 'RAYYAN', 'KB - Al Qadr', '14', '94', '', 'Perumahan Raffles Hills/ cluster Emerald Crown/ blok EC6 No 12/ Depok', '', '', 'deeaayunastiti@gmail.com', 'Arie Santiaji', 'MSc - Master of Data Communication and Security/ University of Hertfordshire', 'Swasta', 'Jakarta/ 06-Jul-1980', 'Dea Ayu Nastiti', 'S1 - Kedokteran Gigi/ Universitas Padjadjaran', 'Ibu Rumah Tangga / Dokter gigi', 'Jakarta/ 01-Feb-1993'),
('TK0363', '202301046', '202301046', 'NAWAF FADHIL ATTAMIMI', 'Purwokerto', '2020-08-07', 'L', 'KB', 2023, 'BAWAF', 'KB - At Tiin', '18 kg', '103', '', 'Perumahan griya antar reja jati makmur bekasi', '', '81227037172', 'diyanahaidaroh12@gmail.com', 'Fadhil Attamimi', 'Sma Al irsyad tengarab', 'Wirasuasta travel umroh', 'Jeddah/ 08-09-1881', 'Diyana Firdaus', 'S1 psikologi', 'IRT dan mengelola travel umroh', 'Purwokerto/ 12-Dec-1995'),
('TK0364', '202301047', '202301047', 'VANIA IZZATUNNISA AZAHRA', 'Kota Bekasi', '2021-05-08', 'P', 'KB', 2023, 'VANIA', 'KB - Al Ashr', '13', '90', '', 'Jl. H. Pindah no 11/ Jakamulya/ Bekasi Selatan', '', '81351937477', 'kardiae@gmail.com', 'Kardi', 'S1-Sarjana Perkapalan', 'Pegawai Swasta', 'Jakarta/ 04-Mar-1984', 'Vidya Ekaningtyas', 'Pendidikan Dokter', 'Swasta', 'Purwokerto/ 10-Aug-1986'),
('TK0365', '202301048', '202301048', 'KHABIB ELKIANO ZINEDINE AZIS', 'Bekasi', '2019-07-07', 'L', 'KB', 2023, 'ELKIANO', 'KB - Al \'Alaq', '17', '100', '', 'Pondok Timur Mas/ Jalan Jingga Mas 1 blok F3 No. 17/ Kel. Jaka Setia/ Kec. Bekasi Selatan/ Kota Bekasi', '', '81298843359', 'irvanazis91@gmail.com', 'Irvan Azis/ S.E./ M.Sos.', 'S2 - Pascasarjana Ilmu Sosiologi Univ. Brawijaya', 'PNS', 'Jakarta/ 01-Nov-1991', 'Nicky Amanda/ S.In./ M.Sos.', 'S2 - Pascasarjana Ilmu Sosiologi Univ. Brawijaya', 'PNS', 'Bekasi/ 11-Aug-1990'),
('TK0366', '202301049', '202301049', 'AZZURA FELLAH RAMADHANI', 'Bekasi', '2021-01-05', 'P', 'KB', 2023, 'ZURA', 'KB - Al Ashr', '13', '94', '', 'Jl Surabaya raya blok B2 No 4 Bekasi Jaya Bekasi Timur', '', '82116229797', 'abduhmaulanaali2531@gmail.com', 'Abduh Maulana Ali', 'Smu', 'Staff yayasan', 'Jakarta/ 25-01-1985', 'Sariati Christina', 'Smu', 'Irt', 'Bekasi/ 13-09-1989'),
('TK0367', '202301050', '202301050', 'RAFFASYA SYARIEF MUHAMMAD', 'Tangerang Selatan', '2020-11-11', 'L', 'KB', 2023, 'RAFFASYA', 'KB - At Tiin', '12kg', '', '', 'Perumahan Serpong Garden 2 Cluster Green Hill Blok B19-12A', '', '81316172008', 'uyun.syarief.2008@gmail.com', 'Nur Qurota Uyuny Syarief', 'S2 - Sarjana Teknik UI', 'POLRI', 'Jakarta/ 15-08-1989', 'Chorista Ika Hasnawati', 'S1 - Sarjana Pendidikan UMM (Univ. Muhammadiyah Malang)', 'IRT', 'Malang/ 06-Mar-1996'),
('TK0368', '202301051', '202301051', 'NAQIYYA HAFLA BAHRI', 'Bekasi', '2019-05-12', 'P', 'TKA', 2023, 'NAQIYYA', 'K1 - Al Fajr', '14.7', '', '', 'Jl. Makrik Gang Jenin no. 107 RT 07/04 Bojong Rawalumbu Bekasi 17116', '', '85717906099', 'squnifah20@gmail.com', 'Saepul Bahri', 'SMK', 'Karyawan Swasta', 'Bekasi/ 24-04-1995', 'Qunifah Suwidianti', 'S1 Sastra Jepang', 'Mengurus Rumah Tangga', 'Bekasi/ 20-06-1995'),
('TK0369', '202301052', '202301052', 'ALYA BINTA RAMADANIA', 'Surabaya', '2021-01-04', 'P', 'TKA', 2023, 'BINTA', 'K1 - Al Fajr', '13 kg', '', '', 'Komplek taman cikas blok c 14 nomor 16', '', '81295555090', 'ramabagusp@gmail.com', 'Rama bagus perkasa', 'S2 sarjana teknik sipil', 'Karyawan BUMN', 'Cirebon/ 04-Apr-1990', 'Nadia imaniar sidqon', 'S1 Sarjana kedokteran (dokter umum)', 'Ibu rumah tangga', 'Yogyakarta/ 12-Jul-1990'),
('TK0370', '202301053', '202301053', 'KHADIJAH AZZAHRA MAULIDA', 'Bekasi', '2019-10-11', 'P', 'TKA', 2023, 'KHADIJAH', 'K1 - Al Fajr', '12 kg', '', '', 'Jl.Bintang raya B.6', '', '81365437473', 'isfi050277@gmail.com', 'Isfi hendri', 'SLTA', 'Swasta', 'Payakumbuh/ 02-May-1977', 'Esi endriani', 'SLTA', 'Ibu rumah tangga', 'Durian kapas/ 05-Jan-1980'),
('TK0371', '202301054', '202301054', 'MUHAMMAD SABIQ KHAIRUL', 'Jakarta', '2018-11-01', 'L', 'TKB', 2023, 'SABIQ', 'K2 - Al Qalam', '18/3kg', '', '', 'Jl Marzuki 9 rt 05 rw 01 no 42 penggilingan Cakung Jakarta timur', '', '87887336292', 'tanyakaromi99@gmail.com', 'Ali karomi', 'Smk', 'Wirausaha', 'Jakarta/ 04-Apr-1991', 'Kamia', 'S1-pendidikan', 'Guru', 'Bekasi/ 06-Jun-1994'),
('TK0372', '202301055', '202301055', 'NAEEMA ARUNA BIYA', 'Jakarta', '2020-05-10', 'P', 'TKA', 2023, 'NEIMA', 'K1 - Al Balad', '14', '100', '', 'Cluster trans agung no c6 jatiasih bekasi', '', '85322512752', 'panjisatriya91@gmail.com', 'Panji Satriya', 'S1 Ilmu Komunikasi UNPAD', 'Karyawan BUMN', 'Medan/ 19-10-1991', 'Nabila Putri Vihandika', 'S1 Ilmu Komunikasi UNPAD', 'IRT', 'Jakarta/ 28-05-1993'),
('TK0373', '202301056', '202301056', 'MUHAMMAD KHALID BILFAQIH', 'Bekasi', '2019-04-08', 'L', 'KB', 2023, 'KHALID', 'KB - Al Qadr', '16', '105', '', 'Jl. H. Ilyas Cikunir RT 03 Rw 12', '', '+6281316765365\'', 'candrakusuma280888@gmail.com', 'Candra Kusuma', 'D3 - Analis Kesehatan', 'Swasta', 'Surakarta/ 28-08-1988', 'Siska Amalia', 'D3 - Keperawatan', 'PNS', 'Bekasi/ 12-06-1992'),
('TK0374', '202301057', '202301057', 'ARSYA AIMANURRIJAL ASYARI', 'Bekasi ', '2019-05-11', 'L', 'KB ', 2023, 'AIMAN', 'KB - Al \'Alaq', '16', '105', '', 'Pondok Timur Mas Jl Pondok Mas Raya A/5/ RT 09 RW 13/ Jakasetia/ Bekasi Selatan/ 17147B', '', '085720123381', 'ingridlarasati@gmail.com', 'Abung Asyari', 'S2 - Kependidikan ', 'Dosen', 'Cibinong/ 31-03-1981', 'Ingrid Larasati Agustina', 'S3 - Ekonomi Syariah UIN SGD', 'Dosen ', 'Jakarta/ 21-01-1983'),
('TK0375', '202301058', '202301058', 'MUHAMMAD AL FATIH ANWAR', 'Jakarta', '2018-01-06', 'L', 'TKB', 2023, 'AL FATIH', 'K2 - Al Qalam', '18', '105', '', 'Jalan pondok jingga mas 2 blok f3 no 2', '', '081348881979', 'kazbrother3@gmail.com', 'Anwar Hermansyah', 'SMA', 'Wirausaha', 'Balikpapan/ 1-04-1994', 'Nur fitri Ani Suli', 'SMA', 'IRT    ', 'Jayapura/ 1-4-1994');

-- --------------------------------------------------------

--
-- Table structure for table `tahunakademik`
--

CREATE TABLE `tahunakademik` (
  `c_ta` varchar(10) NOT NULL,
  `tahun` varchar(15) NOT NULL,
  `semester` varchar(12) NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tahunakademik`
--

INSERT INTO `tahunakademik` (`c_ta`, `tahun`, `semester`, `status`) VALUES
('5EZc0Ou5d', '2023/2024', '1', 'aktif'),
('j4MS6udro', '2023/2024', '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jilid`
--

CREATE TABLE `tbl_jilid` (
  `id` bigint(20) NOT NULL,
  `nmjilid` varchar(30) DEFAULT NULL,
  `seqjilid` tinyint(4) DEFAULT NULL,
  `kdsekolah` varchar(20) DEFAULT NULL,
  `parentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_jilid`
--

INSERT INTO `tbl_jilid` (`id`, `nmjilid`, `seqjilid`, `kdsekolah`, `parentid`) VALUES
(1, 'PRA TK', 0, '00', 0),
(2, 'JILID 1', 0, '00', 0),
(3, 'JILID 2', 0, '00', 0),
(4, 'JILID 3', 0, '00', 0),
(5, 'JILID 4', 0, '00', 0),
(6, 'JILID 5', 0, '00', 0),
(14, 'JILID JUZ 27', 15, '00', 0),
(16, 'BAGIAN A. Buku Hal. 1-17', 1, '00', 1),
(17, 'BAGIAN B. Buku Hal. 18-32', 2, '00', 1),
(18, 'BAGIAN A. Buku Hal. 1-16', 4, '00', 2),
(19, 'JILID 6', 0, '00', 0),
(20, 'KELAS AL-QURAN', 17, '00', 0),
(21, 'KELAS GHORIB', 18, '00', 0),
(22, 'KELAS TAJWID', 19, '00', 0),
(23, 'KELAS FINISHING', 20, '00', 0),
(24, 'BAGIAN C. Buku Hal. 33-48', 3, '00', 1),
(25, 'BAGIAN B. Buku Hal. 17-30', 5, '00', 2),
(26, 'BAGIAN C. Buku Hal. 31-44', 6, '00', 2),
(27, 'BAGIAN A. Buku Hal. 1-22', 7, '00', 3),
(28, 'BAGIAN B. Buku Hal. 23-44', 8, '00', 3),
(29, 'BAGIAN A. Buku Hal. 1-18', 9, '00', 4),
(30, 'BAGIAN B. Buku Hal. 19-44', 10, '00', 4),
(31, 'BAGIAN A. Buku Hal. 1-12', 11, '00', 5),
(32, 'BAGIAN B. Buku Hal. 23-44', 12, '00', 5),
(33, 'BAGIAN A. Buku Hal. 1-22', 13, '00', 6),
(34, 'BAGIAN B. Buku Hal. 23-38', 14, '00', 6),
(35, 'BAGIAN A. Buku Hal. 1-22', 16, '00', 19),
(38, 'lorem', 99, '00', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_juz`
--

CREATE TABLE `tbl_juz` (
  `id` bigint(20) NOT NULL,
  `juz` int(30) DEFAULT NULL,
  `isi_surah` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_juz`
--

INSERT INTO `tbl_juz` (`id`, `juz`, `isi_surah`) VALUES
(1, 30, 78),
(2, 30, 79),
(3, 30, 80),
(4, 30, 81),
(5, 30, 82),
(6, 30, 83),
(7, 30, 84),
(8, 30, 85),
(9, 30, 86),
(10, 30, 87),
(11, 30, 88),
(12, 30, 89),
(13, 30, 90),
(14, 30, 91),
(15, 30, 92),
(16, 30, 93),
(17, 30, 94),
(18, 30, 95),
(19, 30, 96),
(20, 30, 97),
(21, 30, 98),
(22, 30, 99),
(23, 30, 100),
(24, 30, 101),
(25, 30, 102),
(26, 30, 103),
(27, 30, 104),
(28, 30, 105),
(29, 30, 106),
(30, 30, 107),
(31, 30, 108),
(32, 30, 109),
(33, 30, 110),
(34, 30, 111),
(35, 30, 112),
(36, 30, 113),
(37, 30, 114),
(38, 29, 67),
(39, 29, 68),
(40, 29, 69),
(41, 29, 70),
(42, 29, 71),
(43, 29, 72),
(44, 29, 73),
(45, 29, 74),
(46, 29, 75),
(47, 29, 76),
(48, 29, 77);

-- --------------------------------------------------------

--
-- Table structure for table `tipenilai`
--

CREATE TABLE `tipenilai` (
  `c_tipenilai` varchar(10) NOT NULL,
  `tipe` varchar(15) NOT NULL,
  `ket` varchar(40) NOT NULL,
  `bobot` int(3) NOT NULL,
  `p` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tipenilai`
--

INSERT INTO `tipenilai` (`c_tipenilai`, `tipe`, `ket`, `bobot`, `p`) VALUES
('Jcq5vyZ7V', 'UAS', 'Ulangan Akhir Semester', 35, 4),
('uf7H1Ximj', 'MID', 'Ulangan Tengah Semester', 25, 3),
('vcU9NWoZf', 'UH', 'Ulangan Harian', 20, 1),
('wqrZAn5uc', 'TUGAS', 'Tugas Sekolah', 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `walikelas`
--

CREATE TABLE `walikelas` (
  `c_walikelas` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `c_guru` varchar(10) NOT NULL,
  `c_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `walikelas`
--

INSERT INTO `walikelas` (`c_walikelas`, `username`, `password`, `c_guru`, `c_kelas`) VALUES
('d1E27eKO4', 'walixipaa', 'walixipaa', 'wkCsuwypY', '56f14'),
('GxRVuRkJH', 'faisal', 'faisal123', '40IHKMCbC', 'BiOmEVqof'),
('R9JINZZah', 'walixipsb', 'walixipsb', '3bw5L7jDW', '5ecc'),
('SQIYDOHGO', 'taufik', 'taufik123', 'VVh7sKOff', '30d0');

-- --------------------------------------------------------

--
-- Table structure for table `walimurid`
--

CREATE TABLE `walimurid` (
  `c_walimurid` varchar(10) NOT NULL,
  `c_siswa` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `walimurid`
--

INSERT INTO `walimurid` (`c_walimurid`, `c_siswa`, `nama`, `username`, `password`) VALUES
('IDlth0NwI', 'DSZsqqwyY', 'Bapaknya Amalia', 'bpkamalia', 'bpkamalia'),
('yLj5uSkUM', 'cG76jGVyZ', 'Bapaknya Febri', 'bpkfebri', 'bpkfebri'),
('cjpWZVSmY', 'JmsmVRJe', 'Soekarno', 'am6234', 'am6234'),
('yNrV7cVyw', 'v7cJC6tO', 'Alkousim', 'alkousim', 'alkousim'),
('p5A4PdMwa', 'RFVKrUHR', 'otm2', 'otm2', 'otm2'),
('ywAt1maMg', 'SD0165', 'Nadra', 'nadra', 'ABCD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`c_admin`);

--
-- Indexes for table `aplikasi`
--
ALTER TABLE `aplikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup`
--
ALTER TABLE `backup`
  ADD PRIMARY KEY (`c_backup`);

--
-- Indexes for table `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`c_extra`);

--
-- Indexes for table `extrasiswa`
--
ALTER TABLE `extrasiswa`
  ADD PRIMARY KEY (`c_extrasiswa`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`c_guru`);

--
-- Indexes for table `gurumapel`
--
ALTER TABLE `gurumapel`
  ADD PRIMARY KEY (`c_gurumapel`);

--
-- Indexes for table `imtas`
--
ALTER TABLE `imtas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jumlahnilra`
--
ALTER TABLE `jumlahnilra`
  ADD PRIMARY KEY (`c_jumlahnilra`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`c_kelas`);

--
-- Indexes for table `kelas2`
--
ALTER TABLE `kelas2`
  ADD PRIMARY KEY (`c_kelas`);

--
-- Indexes for table `kumpulan_surah`
--
ALTER TABLE `kumpulan_surah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nomer_surah` (`nomer_surah`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`c_mapel`);

--
-- Indexes for table `m_klp`
--
ALTER TABLE `m_klp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`c_nilai`);

--
-- Indexes for table `pustaka`
--
ALTER TABLE `pustaka`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rapotsiswa`
--
ALTER TABLE `rapotsiswa`
  ADD PRIMARY KEY (`c_rapotsiswa`);

--
-- Indexes for table `sisjilid_d`
--
ALTER TABLE `sisjilid_d`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sisjilid_h`
--
ALTER TABLE `sisjilid_h`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`c_siswa`);

--
-- Indexes for table `siswa2`
--
ALTER TABLE `siswa2`
  ADD PRIMARY KEY (`c_siswa`);

--
-- Indexes for table `tahunakademik`
--
ALTER TABLE `tahunakademik`
  ADD PRIMARY KEY (`c_ta`);

--
-- Indexes for table `tbl_jilid`
--
ALTER TABLE `tbl_jilid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_juz`
--
ALTER TABLE `tbl_juz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `isi_surah` (`isi_surah`);

--
-- Indexes for table `tipenilai`
--
ALTER TABLE `tipenilai`
  ADD PRIMARY KEY (`c_tipenilai`);

--
-- Indexes for table `walikelas`
--
ALTER TABLE `walikelas`
  ADD PRIMARY KEY (`c_walikelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aplikasi`
--
ALTER TABLE `aplikasi`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backup`
--
ALTER TABLE `backup`
  MODIFY `c_backup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `extrasiswa`
--
ALTER TABLE `extrasiswa`
  MODIFY `c_extrasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `imtas`
--
ALTER TABLE `imtas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `jumlahnilra`
--
ALTER TABLE `jumlahnilra`
  MODIFY `c_jumlahnilra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `kumpulan_surah`
--
ALTER TABLE `kumpulan_surah`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `m_klp`
--
ALTER TABLE `m_klp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `c_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;

--
-- AUTO_INCREMENT for table `pustaka`
--
ALTER TABLE `pustaka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rapotsiswa`
--
ALTER TABLE `rapotsiswa`
  MODIFY `c_rapotsiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sisjilid_d`
--
ALTER TABLE `sisjilid_d`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `sisjilid_h`
--
ALTER TABLE `sisjilid_h`
  MODIFY `id` bigint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `tbl_jilid`
--
ALTER TABLE `tbl_jilid`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_juz`
--
ALTER TABLE `tbl_juz`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_juz`
--
ALTER TABLE `tbl_juz`
  ADD CONSTRAINT `FK1_isi_surah` FOREIGN KEY (`isi_surah`) REFERENCES `kumpulan_surah` (`nomer_surah`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
