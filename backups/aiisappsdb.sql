-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3309
-- Generation Time: Aug 16, 2023 at 02:15 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aiisappsdb`
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
('rino', 'Administrator', 'rino2018', '14VV3K6uv0Bc.'),
('Taufik', 'Administrator', 'admin', '14/iKXDMbEvfw'),
('veno', 'Administrator', 'adm2', '14/iKXDMbEvfw');

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
(1, 'Bekasi', 'Nadra Husein ', '909900', 'SD AKHYAR INTERNATIONAL ISLAMIC SCHOOL');

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
(4, '2023-05-29 11:08:43', 'backup_db_eraport-29-05-2023-11-08-43-.sql');

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

--
-- Dumping data for table `extrasiswa`
--

INSERT INTO `extrasiswa` (`c_extrasiswa`, `c_ta`, `c_siswa`, `c_extra`) VALUES
(7, '6ARym1eC6', 'bptbJt4Q', 'brkvsQhLy'),
(8, '6ARym1eC6', 'bptbJt4Q', '27b8uRW3a'),
(9, '6ARym1eC6', 'bptbJt4Q', '7y1X9UuX6'),
(10, '6ARym1eC6', 'bptbJt4Q', 'HratPgIl4'),
(11, '6ARym1eC6', 'bptbJt4Q', '4u9uxDxsi'),
(12, '6ARym1eC6', 'bptbJt4Q', 'UU2yFnGcy'),
(13, '6ARym1eC6', 'bptbJt4Q', 'ELvSju4yI'),
(14, '6ARym1eC6', 'bptbJt4Q', 'KXXkni6CS'),
(15, '6ARym1eC6', 'Of9806Ui', '27b8uRW3a'),
(16, '6ARym1eC6', 'Of9806Ui', 'UU2yFnGcy'),
(17, '6ARym1eC6', 'Of9806Ui', 'ELvSju4yI'),
(18, '6ARym1eC6', 'v7cJC6tO', '27b8uRW3a'),
(19, '6ARym1eC6', 'v7cJC6tO', 'HratPgIl4'),
(20, '6ARym1eC6', 'v7cJC6tO', 'UU2yFnGcy'),
(21, '6ARym1eC6', 'v7cJC6tO', 'ELvSju4yI'),
(22, '6ARym1eC6', 'v7cJC6tO', 'KXXkni6CS');

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
('30d0', '3 SD'),
('56f14', '2 SD'),
('5ecc', '5 SD'),
('BiOmEVqof', '1 SD'),
('kmb1PBiD7', '6 SD'),
('wkv42GPmX', '4 SD');

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
(8, '5 B', '');

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

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`c_nilai`, `c_ta`, `c_tipenilai`, `c_siswa`, `c_mapel`, `c_kelas`, `nilai`, `at`) VALUES
(1, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'GhSgsu0eo', '56f14', 70, '2018-01-09'),
(2, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'GhSgsu0eo', '56f14', 80, '2018-01-09'),
(3, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'GhSgsu0eo', '56f14', 80, '2018-01-09'),
(4, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'GhSgsu0eo', '56f14', 90, '2018-01-09'),
(5, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'GhSgsu0eo', '56f14', 90, '2018-01-09'),
(6, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'GhSgsu0eo', '56f14', 85, '2018-01-09'),
(7, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'GhSgsu0eo', '56f14', 85, '2018-01-09'),
(8, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'GhSgsu0eo', '56f14', 80, '2018-01-09'),
(9, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'GhSgsu0eo', '56f14', 80, '2018-01-09'),
(10, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'GhSgsu0eo', '56f14', 80, '2018-01-09'),
(11, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'GhSgsu0eo', '56f14', 80, '2018-01-09'),
(12, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'GhSgsu0eo', '56f14', 90, '2018-01-09'),
(13, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'GhSgsu0eo', '56f14', 95, '2018-01-09'),
(14, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'GhSgsu0eo', '56f14', 90, '2018-01-09'),
(15, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'GhSgsu0eo', '56f14', 85, '2018-01-09'),
(16, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'GhSgsu0eo', '56f14', 85, '2018-01-09'),
(17, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'GhSgsu0eo', '56f14', 85, '2018-01-09'),
(18, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'GhSgsu0eo', '56f14', 89, '2018-01-09'),
(19, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'GhSgsu0eo', '56f14', 87, '2018-01-09'),
(20, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'GhSgsu0eo', '56f14', 75, '2018-01-09'),
(21, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'GhSgsu0eo', '56f14', 75, '2018-01-09'),
(22, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'GhSgsu0eo', '56f14', 85, '2018-01-09'),
(23, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'GhSgsu0eo', '56f14', 85, '2018-01-09'),
(24, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'GhSgsu0eo', '56f14', 80, '2018-01-09'),
(25, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'GhSgsu0eo', '56f14', 87, '2018-01-09'),
(26, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'GhSgsu0eo', '56f14', 90, '2018-01-09'),
(27, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'GhSgsu0eo', '56f14', 90, '2018-01-09'),
(28, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'GhSgsu0eo', '56f14', 90, '2018-01-09'),
(29, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(30, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(31, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(32, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(33, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(34, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(35, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(36, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'JELc4Mlws', '56f14', 80, '2018-01-09'),
(37, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'JELc4Mlws', '56f14', 80, '2018-01-09'),
(38, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'JELc4Mlws', '56f14', 80, '2018-01-09'),
(39, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'JELc4Mlws', '56f14', 100, '2018-01-09'),
(40, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'JELc4Mlws', '56f14', 100, '2018-01-09'),
(41, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'JELc4Mlws', '56f14', 80, '2018-01-09'),
(42, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'JELc4Mlws', '56f14', 75, '2018-01-09'),
(43, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'JELc4Mlws', '56f14', 90, '2018-01-09'),
(44, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'JELc4Mlws', '56f14', 98, '2018-01-09'),
(45, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'JELc4Mlws', '56f14', 97, '2018-01-09'),
(46, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'JELc4Mlws', '56f14', 90, '2018-01-09'),
(47, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'JELc4Mlws', '56f14', 95, '2018-01-09'),
(48, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'JELc4Mlws', '56f14', 90, '2018-01-09'),
(49, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'JELc4Mlws', '56f14', 90, '2018-01-09'),
(50, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(51, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'JELc4Mlws', '56f14', 88, '2018-01-09'),
(52, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'JELc4Mlws', '56f14', 89, '2018-01-09'),
(53, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'JELc4Mlws', '56f14', 87, '2018-01-09'),
(54, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(55, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'JELc4Mlws', '56f14', 88, '2018-01-09'),
(56, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(57, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(58, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(59, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(60, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(61, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(62, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(63, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(64, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(65, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(66, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(67, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(68, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(69, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(70, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(71, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(72, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(73, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(74, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(75, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(76, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(77, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(78, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'tpN1z5Cp0', '56f14', 85, '2018-01-09'),
(79, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'tpN1z5Cp0', '56f14', 85, '2018-01-09'),
(80, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'tpN1z5Cp0', '56f14', 85, '2018-01-09'),
(81, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'tpN1z5Cp0', '56f14', 85, '2018-01-09'),
(82, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'tpN1z5Cp0', '56f14', 85, '2018-01-09'),
(83, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'tpN1z5Cp0', '56f14', 85, '2018-01-09'),
(84, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'tpN1z5Cp0', '56f14', 85, '2018-01-09'),
(85, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', '6PYh95FR1', '56f14', 75, '2018-01-09'),
(86, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', '6PYh95FR1', '56f14', 78, '2018-01-09'),
(87, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', '6PYh95FR1', '56f14', 75, '2018-01-09'),
(88, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', '6PYh95FR1', '56f14', 78, '2018-01-09'),
(89, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', '6PYh95FR1', '56f14', 75, '2018-01-09'),
(90, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', '6PYh95FR1', '56f14', 78, '2018-01-09'),
(91, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', '6PYh95FR1', '56f14', 75, '2018-01-09'),
(92, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', '6PYh95FR1', '56f14', 65, '2018-01-09'),
(93, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', '6PYh95FR1', '56f14', 78, '2018-01-09'),
(94, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', '6PYh95FR1', '56f14', 75, '2018-01-09'),
(95, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', '6PYh95FR1', '56f14', 70, '2018-01-09'),
(96, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', '6PYh95FR1', '56f14', 60, '2018-01-09'),
(97, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', '6PYh95FR1', '56f14', 65, '2018-01-09'),
(98, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', '6PYh95FR1', '56f14', 70, '2018-01-09'),
(99, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', '6PYh95FR1', '56f14', 80, '2018-01-09'),
(100, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', '6PYh95FR1', '56f14', 87, '2018-01-09'),
(101, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', '6PYh95FR1', '56f14', 80, '2018-01-09'),
(102, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', '6PYh95FR1', '56f14', 85, '2018-01-09'),
(103, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', '6PYh95FR1', '56f14', 85, '2018-01-09'),
(104, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', '6PYh95FR1', '56f14', 85, '2018-01-09'),
(105, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', '6PYh95FR1', '56f14', 70, '2018-01-09'),
(106, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', '6PYh95FR1', '56f14', 76, '2018-01-09'),
(107, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', '6PYh95FR1', '56f14', 75, '2018-01-09'),
(108, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', '6PYh95FR1', '56f14', 74, '2018-01-09'),
(109, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', '6PYh95FR1', '56f14', 73, '2018-01-09'),
(110, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', '6PYh95FR1', '56f14', 72, '2018-01-09'),
(111, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', '6PYh95FR1', '56f14', 71, '2018-01-09'),
(112, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', '6PYh95FR1', '56f14', 80, '2018-01-09'),
(113, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'hdYmOHw90', '56f14', 76, '2018-01-09'),
(114, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'hdYmOHw90', '56f14', 78, '2018-01-09'),
(115, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'hdYmOHw90', '56f14', 78, '2018-01-09'),
(116, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'hdYmOHw90', '56f14', 78, '2018-01-09'),
(117, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'hdYmOHw90', '56f14', 70, '2018-01-09'),
(118, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'hdYmOHw90', '56f14', 80, '2018-01-09'),
(119, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'hdYmOHw90', '56f14', 87, '2018-01-09'),
(120, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'hdYmOHw90', '56f14', 80, '2018-01-09'),
(121, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'hdYmOHw90', '56f14', 80, '2018-01-09'),
(122, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'hdYmOHw90', '56f14', 80, '2018-01-09'),
(123, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'hdYmOHw90', '56f14', 80, '2018-01-09'),
(124, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'hdYmOHw90', '56f14', 80, '2018-01-09'),
(125, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'hdYmOHw90', '56f14', 80, '2018-01-09'),
(126, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'hdYmOHw90', '56f14', 80, '2018-01-09'),
(127, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'hdYmOHw90', '56f14', 85, '2018-01-09'),
(128, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'hdYmOHw90', '56f14', 85, '2018-01-09'),
(129, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'hdYmOHw90', '56f14', 85, '2018-01-09'),
(130, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'hdYmOHw90', '56f14', 85, '2018-01-09'),
(131, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'hdYmOHw90', '56f14', 85, '2018-01-09'),
(132, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'hdYmOHw90', '56f14', 85, '2018-01-09'),
(133, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'hdYmOHw90', '56f14', 85, '2018-01-09'),
(134, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'hdYmOHw90', '56f14', 90, '2018-01-09'),
(135, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'hdYmOHw90', '56f14', 95, '2018-01-09'),
(136, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'hdYmOHw90', '56f14', 90, '2018-01-09'),
(137, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'hdYmOHw90', '56f14', 95, '2018-01-09'),
(138, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'hdYmOHw90', '56f14', 90, '2018-01-09'),
(139, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'hdYmOHw90', '56f14', 95, '2018-01-09'),
(140, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'hdYmOHw90', '56f14', 90, '2018-01-09'),
(141, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'syPvsZsj7', '56f14', 87, '2018-01-09'),
(142, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'syPvsZsj7', '56f14', 88, '2018-01-09'),
(143, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'syPvsZsj7', '56f14', 88, '2018-01-09'),
(144, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'syPvsZsj7', '56f14', 80, '2018-01-09'),
(145, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'syPvsZsj7', '56f14', 86, '2018-01-09'),
(146, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'syPvsZsj7', '56f14', 85, '2018-01-09'),
(147, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'syPvsZsj7', '56f14', 88, '2018-01-09'),
(148, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'syPvsZsj7', '56f14', 85, '2018-01-09'),
(149, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'syPvsZsj7', '56f14', 87, '2018-01-09'),
(150, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'syPvsZsj7', '56f14', 88, '2018-01-09'),
(151, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'syPvsZsj7', '56f14', 85, '2018-01-09'),
(152, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'syPvsZsj7', '56f14', 87, '2018-01-09'),
(153, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'syPvsZsj7', '56f14', 88, '2018-01-09'),
(154, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'syPvsZsj7', '56f14', 88, '2018-01-09'),
(155, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'syPvsZsj7', '56f14', 78, '2018-01-09'),
(156, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'syPvsZsj7', '56f14', 80, '2018-01-09'),
(157, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'syPvsZsj7', '56f14', 69, '2018-01-09'),
(158, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'syPvsZsj7', '56f14', 80, '2018-01-09'),
(159, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'syPvsZsj7', '56f14', 80, '2018-01-09'),
(160, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'syPvsZsj7', '56f14', 90, '2018-01-09'),
(161, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'syPvsZsj7', '56f14', 90, '2018-01-09'),
(162, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'syPvsZsj7', '56f14', 75, '2018-01-09'),
(163, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'syPvsZsj7', '56f14', 79, '2018-01-09'),
(164, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'syPvsZsj7', '56f14', 79, '2018-01-09'),
(165, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'syPvsZsj7', '56f14', 76, '2018-01-09'),
(166, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'syPvsZsj7', '56f14', 80, '2018-01-09'),
(167, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'syPvsZsj7', '56f14', 89, '2018-01-09'),
(168, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'syPvsZsj7', '56f14', 87, '2018-01-09'),
(169, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'yVstMrwLi', '56f14', 60, '2018-01-09'),
(170, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'yVstMrwLi', '56f14', 60, '2018-01-09'),
(171, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'yVstMrwLi', '56f14', 65, '2018-01-09'),
(172, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'yVstMrwLi', '56f14', 60, '2018-01-09'),
(173, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'yVstMrwLi', '56f14', 65, '2018-01-09'),
(174, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'yVstMrwLi', '56f14', 60, '2018-01-09'),
(175, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'yVstMrwLi', '56f14', 65, '2018-01-09'),
(176, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'yVstMrwLi', '56f14', 70, '2018-01-09'),
(177, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'yVstMrwLi', '56f14', 70, '2018-01-09'),
(178, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'yVstMrwLi', '56f14', 69, '2018-01-09'),
(179, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'yVstMrwLi', '56f14', 68, '2018-01-09'),
(180, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'yVstMrwLi', '56f14', 65, '2018-01-09'),
(181, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'yVstMrwLi', '56f14', 65, '2018-01-09'),
(182, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'yVstMrwLi', '56f14', 65, '2018-01-09'),
(183, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'yVstMrwLi', '56f14', 75, '2018-01-09'),
(184, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'yVstMrwLi', '56f14', 76, '2018-01-09'),
(185, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'yVstMrwLi', '56f14', 77, '2018-01-09'),
(186, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'yVstMrwLi', '56f14', 78, '2018-01-09'),
(187, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'yVstMrwLi', '56f14', 79, '2018-01-09'),
(188, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'yVstMrwLi', '56f14', 80, '2018-01-09'),
(189, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'yVstMrwLi', '56f14', 81, '2018-01-09'),
(190, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'yVstMrwLi', '56f14', 76, '2018-01-09'),
(191, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'yVstMrwLi', '56f14', 75, '2018-01-09'),
(192, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'yVstMrwLi', '56f14', 74, '2018-01-09'),
(193, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'yVstMrwLi', '56f14', 73, '2018-01-09'),
(194, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'yVstMrwLi', '56f14', 72, '2018-01-09'),
(195, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'yVstMrwLi', '56f14', 71, '2018-01-09'),
(196, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'yVstMrwLi', '56f14', 70, '2018-01-09'),
(197, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'uS6Xa9o1s', '56f14', 50, '2018-01-09'),
(198, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'uS6Xa9o1s', '56f14', 60, '2018-01-09'),
(199, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'uS6Xa9o1s', '56f14', 45, '2018-01-09'),
(200, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'uS6Xa9o1s', '56f14', 60, '2018-01-09'),
(201, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'uS6Xa9o1s', '56f14', 65, '2018-01-09'),
(202, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'uS6Xa9o1s', '56f14', 68, '2018-01-09'),
(203, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'uS6Xa9o1s', '56f14', 55, '2018-01-09'),
(204, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'uS6Xa9o1s', '56f14', 64, '2018-01-09'),
(205, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'uS6Xa9o1s', '56f14', 65, '2018-01-09'),
(206, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'uS6Xa9o1s', '56f14', 70, '2018-01-09'),
(207, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'uS6Xa9o1s', '56f14', 69, '2018-01-09'),
(208, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'uS6Xa9o1s', '56f14', 65, '2018-01-09'),
(209, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'uS6Xa9o1s', '56f14', 66, '2018-01-09'),
(210, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'uS6Xa9o1s', '56f14', 70, '2018-01-09'),
(211, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'uS6Xa9o1s', '56f14', 70, '2018-01-09'),
(212, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'uS6Xa9o1s', '56f14', 76, '2018-01-09'),
(213, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'uS6Xa9o1s', '56f14', 75, '2018-01-09'),
(214, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'uS6Xa9o1s', '56f14', 74, '2018-01-09'),
(215, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'uS6Xa9o1s', '56f14', 70, '2018-01-09'),
(216, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'uS6Xa9o1s', '56f14', 78, '2018-01-09'),
(217, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'uS6Xa9o1s', '56f14', 70, '2018-01-09'),
(218, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'uS6Xa9o1s', '56f14', 76, '2018-01-09'),
(219, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'uS6Xa9o1s', '56f14', 80, '2018-01-09'),
(220, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'uS6Xa9o1s', '56f14', 82, '2018-01-09'),
(221, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'uS6Xa9o1s', '56f14', 77, '2018-01-09'),
(222, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'uS6Xa9o1s', '56f14', 79, '2018-01-09'),
(223, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'uS6Xa9o1s', '56f14', 65, '2018-01-09'),
(224, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'uS6Xa9o1s', '56f14', 65, '2018-01-09'),
(225, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(226, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(227, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(228, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(229, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'mo81eMP2V', '56f14', 95, '2018-01-09'),
(230, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'mo81eMP2V', '56f14', 97, '2018-01-09'),
(231, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(232, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'mo81eMP2V', '56f14', 95, '2018-01-09'),
(233, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(234, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'mo81eMP2V', '56f14', 92, '2018-01-09'),
(235, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'mo81eMP2V', '56f14', 95, '2018-01-09'),
(236, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(237, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(238, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'mo81eMP2V', '56f14', 100, '2018-01-09'),
(239, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'mo81eMP2V', '56f14', 97, '2018-01-09'),
(240, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(241, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'mo81eMP2V', '56f14', 93, '2018-01-09'),
(242, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(243, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(244, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(245, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(246, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'mo81eMP2V', '56f14', 100, '2018-01-09'),
(247, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'mo81eMP2V', '56f14', 100, '2018-01-09'),
(248, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'mo81eMP2V', '56f14', 100, '2018-01-09'),
(249, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'mo81eMP2V', '56f14', 100, '2018-01-09'),
(250, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'mo81eMP2V', '56f14', 100, '2018-01-09'),
(251, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'mo81eMP2V', '56f14', 100, '2018-01-09'),
(252, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'mo81eMP2V', '56f14', 100, '2018-01-09'),
(253, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'gdQ2lyu8e', '56f14', 85, '2018-01-09'),
(254, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'gdQ2lyu8e', '56f14', 86, '2018-01-09'),
(255, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'gdQ2lyu8e', '56f14', 87, '2018-01-09'),
(256, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'gdQ2lyu8e', '56f14', 88, '2018-01-09'),
(257, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'gdQ2lyu8e', '56f14', 89, '2018-01-09'),
(258, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(259, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'gdQ2lyu8e', '56f14', 91, '2018-01-09'),
(260, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'gdQ2lyu8e', '56f14', 100, '2018-01-09'),
(261, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(262, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'gdQ2lyu8e', '56f14', 95, '2018-01-09'),
(263, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'gdQ2lyu8e', '56f14', 95, '2018-01-09'),
(264, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'gdQ2lyu8e', '56f14', 95, '2018-01-09'),
(265, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'gdQ2lyu8e', '56f14', 95, '2018-01-09'),
(266, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'gdQ2lyu8e', '56f14', 95, '2018-01-09'),
(267, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(268, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(269, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(270, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(271, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(272, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(273, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(274, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'gdQ2lyu8e', '56f14', 85, '2018-01-09'),
(275, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(276, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'gdQ2lyu8e', '56f14', 85, '2018-01-09'),
(277, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(278, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'gdQ2lyu8e', '56f14', 85, '2018-01-09'),
(279, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(280, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'gdQ2lyu8e', '56f14', 88, '2018-01-09'),
(281, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'HD0WLFuV4', '56f14', 85, '2018-01-09'),
(282, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'HD0WLFuV4', '56f14', 80, '2018-01-09'),
(283, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'HD0WLFuV4', '56f14', 85, '2018-01-09'),
(284, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'HD0WLFuV4', '56f14', 80, '2018-01-09'),
(285, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'HD0WLFuV4', '56f14', 85, '2018-01-09'),
(286, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'HD0WLFuV4', '56f14', 80, '2018-01-09'),
(287, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'HD0WLFuV4', '56f14', 85, '2018-01-09'),
(288, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'HD0WLFuV4', '56f14', 80, '2018-01-09'),
(289, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'HD0WLFuV4', '56f14', 82, '2018-01-09'),
(290, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'HD0WLFuV4', '56f14', 84, '2018-01-09'),
(291, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'HD0WLFuV4', '56f14', 88, '2018-01-09'),
(292, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'HD0WLFuV4', '56f14', 88, '2018-01-09'),
(293, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'HD0WLFuV4', '56f14', 80, '2018-01-09'),
(294, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'HD0WLFuV4', '56f14', 85, '2018-01-09'),
(295, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'HD0WLFuV4', '56f14', 60, '2018-01-09'),
(296, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'HD0WLFuV4', '56f14', 70, '2018-01-09'),
(297, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'HD0WLFuV4', '56f14', 75, '2018-01-09'),
(298, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'HD0WLFuV4', '56f14', 70, '2018-01-09'),
(299, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'HD0WLFuV4', '56f14', 80, '2018-01-09'),
(300, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'HD0WLFuV4', '56f14', 85, '2018-01-09'),
(301, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'HD0WLFuV4', '56f14', 90, '2018-01-09'),
(302, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'HD0WLFuV4', '56f14', 87, '2018-01-09'),
(303, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'HD0WLFuV4', '56f14', 88, '2018-01-09'),
(304, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'HD0WLFuV4', '56f14', 90, '2018-01-09'),
(305, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'HD0WLFuV4', '56f14', 92, '2018-01-09'),
(306, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'HD0WLFuV4', '56f14', 86, '2018-01-09'),
(307, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'HD0WLFuV4', '56f14', 80, '2018-01-09'),
(308, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'HD0WLFuV4', '56f14', 90, '2018-01-09'),
(309, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(310, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(311, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(312, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(313, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(314, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(315, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(316, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(317, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(318, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(319, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(320, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(321, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(322, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(323, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(324, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(325, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(326, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(327, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(328, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(329, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(330, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(331, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(332, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(333, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(334, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(335, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(336, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(337, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'GhSgsu0eo', '5ecc', 80, '2018-01-10'),
(338, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'GhSgsu0eo', '5ecc', 85, '2018-01-10'),
(339, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'GhSgsu0eo', '5ecc', 100, '2018-01-10'),
(340, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'GhSgsu0eo', '5ecc', 90, '2018-01-10'),
(341, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'GhSgsu0eo', '5ecc', 90, '2018-01-10'),
(342, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'GhSgsu0eo', '5ecc', 100, '2018-01-10'),
(343, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'GhSgsu0eo', '5ecc', 85, '2018-01-10'),
(344, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'GhSgsu0eo', '5ecc', 80, '2018-01-10'),
(345, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'GhSgsu0eo', '5ecc', 100, '2018-01-10'),
(346, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'GhSgsu0eo', '5ecc', 92, '2018-01-10'),
(347, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'GhSgsu0eo', '5ecc', 90, '2018-01-10'),
(348, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'GhSgsu0eo', '5ecc', 100, '2018-01-10'),
(349, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'JELc4Mlws', '5ecc', 70, '2018-01-10'),
(350, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'JELc4Mlws', '5ecc', 72, '2018-01-10'),
(351, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'JELc4Mlws', '5ecc', 75, '2018-01-10'),
(352, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'JELc4Mlws', '5ecc', 80, '2018-01-10'),
(353, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'JELc4Mlws', '5ecc', 81, '2018-01-10'),
(354, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'JELc4Mlws', '5ecc', 82, '2018-01-10'),
(355, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'JELc4Mlws', '5ecc', 85, '2018-01-10'),
(356, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'JELc4Mlws', '5ecc', 86, '2018-01-10'),
(357, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'JELc4Mlws', '5ecc', 90, '2018-01-10'),
(358, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'JELc4Mlws', '5ecc', 90, '2018-01-10'),
(359, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'JELc4Mlws', '5ecc', 90, '2018-01-10'),
(360, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'JELc4Mlws', '5ecc', 90, '2018-01-10'),
(361, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'tpN1z5Cp0', '5ecc', 95, '2018-01-10'),
(362, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'tpN1z5Cp0', '5ecc', 90, '2018-01-10'),
(363, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'tpN1z5Cp0', '5ecc', 92, '2018-01-10'),
(364, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'tpN1z5Cp0', '5ecc', 90, '2018-01-10'),
(365, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'tpN1z5Cp0', '5ecc', 90, '2018-01-10'),
(366, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'tpN1z5Cp0', '5ecc', 90, '2018-01-10'),
(367, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'tpN1z5Cp0', '5ecc', 90, '2018-01-10'),
(368, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'tpN1z5Cp0', '5ecc', 80, '2018-01-10'),
(369, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'tpN1z5Cp0', '5ecc', 75, '2018-01-10'),
(370, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'tpN1z5Cp0', '5ecc', 85, '2018-01-10'),
(371, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'tpN1z5Cp0', '5ecc', 80, '2018-01-10'),
(372, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'tpN1z5Cp0', '5ecc', 70, '2018-01-10'),
(373, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', '6PYh95FR1', '5ecc', 50, '2018-01-10'),
(374, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', '6PYh95FR1', '5ecc', 40, '2018-01-10'),
(375, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', '6PYh95FR1', '5ecc', 60, '2018-01-10'),
(376, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', '6PYh95FR1', '5ecc', 65, '2018-01-10'),
(377, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', '6PYh95FR1', '5ecc', 60, '2018-01-10'),
(378, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', '6PYh95FR1', '5ecc', 60, '2018-01-10'),
(379, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', '6PYh95FR1', '5ecc', 70, '2018-01-10'),
(380, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', '6PYh95FR1', '5ecc', 65, '2018-01-10'),
(381, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', '6PYh95FR1', '5ecc', 60, '2018-01-10'),
(382, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', '6PYh95FR1', '5ecc', 75, '2018-01-10'),
(383, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', '6PYh95FR1', '5ecc', 70, '2018-01-10'),
(384, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', '6PYh95FR1', '5ecc', 65, '2018-01-10'),
(385, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'hdYmOHw90', '5ecc', 80, '2018-01-10'),
(386, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'hdYmOHw90', '5ecc', 75, '2018-01-10'),
(387, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'hdYmOHw90', '5ecc', 100, '2018-01-10'),
(388, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'hdYmOHw90', '5ecc', 70, '2018-01-10'),
(389, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'hdYmOHw90', '5ecc', 80, '2018-01-10'),
(390, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'hdYmOHw90', '5ecc', 100, '2018-01-10'),
(391, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'hdYmOHw90', '5ecc', 100, '2018-01-10'),
(392, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'hdYmOHw90', '5ecc', 80, '2018-01-10'),
(393, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'hdYmOHw90', '5ecc', 100, '2018-01-10'),
(394, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'hdYmOHw90', '5ecc', 90, '2018-01-10'),
(395, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'hdYmOHw90', '5ecc', 95, '2018-01-10'),
(396, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'hdYmOHw90', '5ecc', 100, '2018-01-10'),
(397, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'syPvsZsj7', '5ecc', 85, '2018-01-10'),
(398, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'syPvsZsj7', '5ecc', 80, '2018-01-10'),
(399, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'syPvsZsj7', '5ecc', 90, '2018-01-10'),
(400, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'syPvsZsj7', '5ecc', 90, '2018-01-10'),
(401, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'syPvsZsj7', '5ecc', 95, '2018-01-10'),
(402, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'syPvsZsj7', '5ecc', 85, '2018-01-10'),
(403, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'syPvsZsj7', '5ecc', 80, '2018-01-10'),
(404, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'syPvsZsj7', '5ecc', 80, '2018-01-10'),
(405, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'syPvsZsj7', '5ecc', 80, '2018-01-10'),
(406, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'syPvsZsj7', '5ecc', 86, '2018-01-10'),
(407, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'syPvsZsj7', '5ecc', 70, '2018-01-10'),
(408, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'syPvsZsj7', '5ecc', 75, '2018-01-10'),
(409, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'yVstMrwLi', '5ecc', 58, '2018-01-10'),
(410, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'yVstMrwLi', '5ecc', 60, '2018-01-10'),
(411, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'yVstMrwLi', '5ecc', 65, '2018-01-10'),
(412, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'yVstMrwLi', '5ecc', 45, '2018-01-10'),
(413, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'yVstMrwLi', '5ecc', 80, '2018-01-10'),
(414, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'yVstMrwLi', '5ecc', 60, '2018-01-10'),
(415, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'yVstMrwLi', '5ecc', 60, '2018-01-10'),
(416, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'yVstMrwLi', '5ecc', 70, '2018-01-10'),
(417, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'yVstMrwLi', '5ecc', 60, '2018-01-10'),
(418, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'yVstMrwLi', '5ecc', 50, '2018-01-10'),
(419, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'yVstMrwLi', '5ecc', 70, '2018-01-10'),
(420, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'yVstMrwLi', '5ecc', 60, '2018-01-10'),
(421, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'uS6Xa9o1s', '5ecc', 40, '2018-01-10'),
(422, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'uS6Xa9o1s', '5ecc', 70, '2018-01-10'),
(423, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'uS6Xa9o1s', '5ecc', 65, '2018-01-10'),
(424, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'uS6Xa9o1s', '5ecc', 60, '2018-01-10'),
(425, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'uS6Xa9o1s', '5ecc', 65, '2018-01-10'),
(426, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'uS6Xa9o1s', '5ecc', 70, '2018-01-10'),
(427, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'uS6Xa9o1s', '5ecc', 70, '2018-01-10'),
(428, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'uS6Xa9o1s', '5ecc', 74, '2018-01-10'),
(429, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'uS6Xa9o1s', '5ecc', 70, '2018-01-10'),
(430, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'uS6Xa9o1s', '5ecc', 78, '2018-01-10'),
(431, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'uS6Xa9o1s', '5ecc', 70, '2018-01-10'),
(432, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'uS6Xa9o1s', '5ecc', 65, '2018-01-10'),
(433, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'mo81eMP2V', '5ecc', 80, '2018-01-10'),
(434, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'mo81eMP2V', '5ecc', 80, '2018-01-10'),
(435, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'mo81eMP2V', '5ecc', 80, '2018-01-10'),
(436, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'mo81eMP2V', '5ecc', 70, '2018-01-10'),
(437, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'mo81eMP2V', '5ecc', 80, '2018-01-10'),
(438, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'mo81eMP2V', '5ecc', 95, '2018-01-10'),
(439, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'mo81eMP2V', '5ecc', 80, '2018-01-10'),
(440, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'mo81eMP2V', '5ecc', 80, '2018-01-10'),
(441, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'mo81eMP2V', '5ecc', 90, '2018-01-10'),
(442, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'mo81eMP2V', '5ecc', 70, '2018-01-10'),
(443, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'mo81eMP2V', '5ecc', 75, '2018-01-10'),
(444, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'mo81eMP2V', '5ecc', 90, '2018-01-10'),
(445, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'gdQ2lyu8e', '5ecc', 90, '2018-01-10'),
(446, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'gdQ2lyu8e', '5ecc', 90, '2018-01-10'),
(447, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'gdQ2lyu8e', '5ecc', 90, '2018-01-10'),
(448, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'gdQ2lyu8e', '5ecc', 90, '2018-01-10'),
(449, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'gdQ2lyu8e', '5ecc', 95, '2018-01-10'),
(450, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'gdQ2lyu8e', '5ecc', 100, '2018-01-10'),
(451, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'gdQ2lyu8e', '5ecc', 100, '2018-01-10'),
(452, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'gdQ2lyu8e', '5ecc', 100, '2018-01-10'),
(453, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'gdQ2lyu8e', '5ecc', 100, '2018-01-10'),
(454, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'gdQ2lyu8e', '5ecc', 98, '2018-01-10'),
(455, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'gdQ2lyu8e', '5ecc', 90, '2018-01-10'),
(456, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'gdQ2lyu8e', '5ecc', 95, '2018-01-10'),
(460, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'HD0WLFuV4', '5ecc', 80, '2018-01-10'),
(461, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'HD0WLFuV4', '5ecc', 90, '2018-01-10'),
(462, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'HD0WLFuV4', '5ecc', 100, '2018-01-10'),
(463, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'HD0WLFuV4', '5ecc', 80, '2018-01-10'),
(464, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'HD0WLFuV4', '5ecc', 80, '2018-01-10'),
(465, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'HD0WLFuV4', '5ecc', 100, '2018-01-10'),
(466, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'HD0WLFuV4', '5ecc', 98, '2018-01-10'),
(467, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'HD0WLFuV4', '5ecc', 90, '2018-01-10'),
(468, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'HD0WLFuV4', '5ecc', 100, '2018-01-10'),
(472, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'HD0WLFuV4', '5ecc', 70, '2018-01-10'),
(473, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'HD0WLFuV4', '5ecc', 70, '2018-01-10'),
(474, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'HD0WLFuV4', '5ecc', 100, '2018-01-10'),
(475, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'bVc28SQL5', '5ecc', 95, '2018-01-10'),
(476, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'bVc28SQL5', '5ecc', 90, '2018-01-10'),
(477, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'bVc28SQL5', '5ecc', 98, '2018-01-10'),
(478, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'bVc28SQL5', '5ecc', 100, '2018-01-10'),
(479, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'bVc28SQL5', '5ecc', 90, '2018-01-10'),
(480, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'bVc28SQL5', '5ecc', 80, '2018-01-10'),
(481, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'bVc28SQL5', '5ecc', 90, '2018-01-10'),
(482, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'bVc28SQL5', '5ecc', 90, '2018-01-10'),
(483, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'bVc28SQL5', '5ecc', 100, '2018-01-10'),
(484, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'bVc28SQL5', '5ecc', 80, '2018-01-10'),
(485, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'bVc28SQL5', '5ecc', 85, '2018-01-10'),
(486, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'bVc28SQL5', '5ecc', 100, '2018-01-10'),
(487, 'VvrgkXFlA', 'vcU9NWoZf', 'cG76jGVyZ', 'uS6Xa9o1s', 'wkv42GPmX', 0, '2023-05-23'),
(488, 'VvrgkXFlA', 'vcU9NWoZf', 'kf1P76JsM', 'uS6Xa9o1s', 'wkv42GPmX', 0, '2023-05-23'),
(489, 'VvrgkXFlA', 'vcU9NWoZf', 'GXBYXH33d', 'uS6Xa9o1s', 'wkv42GPmX', 0, '2023-05-23'),
(490, 'VvrgkXFlA', 'vcU9NWoZf', 'uK5u9Bn3H', 'uS6Xa9o1s', 'wkv42GPmX', 70, '2023-05-23'),
(491, 'VvrgkXFlA', 'vcU9NWoZf', 'ejeey9OnA', 'uS6Xa9o1s', 'wkv42GPmX', 0, '2023-05-23'),
(492, 'VvrgkXFlA', 'wqrZAn5uc', 'cG76jGVyZ', 'uS6Xa9o1s', 'wkv42GPmX', 0, '2023-05-23'),
(493, 'VvrgkXFlA', 'wqrZAn5uc', 'kf1P76JsM', 'uS6Xa9o1s', 'wkv42GPmX', 0, '2023-05-23'),
(494, 'VvrgkXFlA', 'wqrZAn5uc', 'GXBYXH33d', 'uS6Xa9o1s', 'wkv42GPmX', 0, '2023-05-23'),
(495, 'VvrgkXFlA', 'wqrZAn5uc', 'uK5u9Bn3H', 'uS6Xa9o1s', 'wkv42GPmX', 70, '2023-05-23'),
(496, 'VvrgkXFlA', 'wqrZAn5uc', 'ejeey9OnA', 'uS6Xa9o1s', 'wkv42GPmX', 0, '2023-05-23'),
(497, 'VvrgkXFlA', 'uf7H1Ximj', 'cG76jGVyZ', 'uS6Xa9o1s', 'wkv42GPmX', 0, '2023-05-23'),
(498, 'VvrgkXFlA', 'uf7H1Ximj', 'kf1P76JsM', 'uS6Xa9o1s', 'wkv42GPmX', 0, '2023-05-23'),
(499, 'VvrgkXFlA', 'uf7H1Ximj', 'GXBYXH33d', 'uS6Xa9o1s', 'wkv42GPmX', 0, '2023-05-23'),
(500, 'VvrgkXFlA', 'uf7H1Ximj', 'uK5u9Bn3H', 'uS6Xa9o1s', 'wkv42GPmX', 70, '2023-05-23'),
(501, 'VvrgkXFlA', 'uf7H1Ximj', 'ejeey9OnA', 'uS6Xa9o1s', 'wkv42GPmX', 0, '2023-05-23'),
(502, 'VvrgkXFlA', 'Jcq5vyZ7V', 'cG76jGVyZ', 'uS6Xa9o1s', 'wkv42GPmX', 0, '2023-05-23'),
(503, 'VvrgkXFlA', 'Jcq5vyZ7V', 'kf1P76JsM', 'uS6Xa9o1s', 'wkv42GPmX', 0, '2023-05-23'),
(504, 'VvrgkXFlA', 'Jcq5vyZ7V', 'GXBYXH33d', 'uS6Xa9o1s', 'wkv42GPmX', 0, '2023-05-23'),
(505, 'VvrgkXFlA', 'Jcq5vyZ7V', 'uK5u9Bn3H', 'uS6Xa9o1s', 'wkv42GPmX', 70, '2023-05-23'),
(506, 'VvrgkXFlA', 'Jcq5vyZ7V', 'ejeey9OnA', 'uS6Xa9o1s', 'wkv42GPmX', 0, '2023-05-23'),
(508, 'VvrgkXFlA', 'vcU9NWoZf', 'ZM53c607', 'uS6Xa9o1s', '30d0', 0, '2023-05-23'),
(509, 'VvrgkXFlA', 'vcU9NWoZf', 'RFVKrUHR', 'uS6Xa9o1s', '30d0', 70, '2023-05-23'),
(510, 'VvrgkXFlA', 'vcU9NWoZf', 'Ztknli36', 'uS6Xa9o1s', '30d0', 0, '2023-05-23'),
(512, 'VvrgkXFlA', 'wqrZAn5uc', 'ZM53c607', 'uS6Xa9o1s', '30d0', 0, '2023-05-23'),
(513, 'VvrgkXFlA', 'wqrZAn5uc', 'RFVKrUHR', 'uS6Xa9o1s', '30d0', 80, '2023-05-23'),
(514, 'VvrgkXFlA', 'wqrZAn5uc', 'Ztknli36', 'uS6Xa9o1s', '30d0', 0, '2023-05-23'),
(516, 'VvrgkXFlA', 'uf7H1Ximj', 'ZM53c607', 'uS6Xa9o1s', '30d0', 0, '2023-05-23'),
(517, 'VvrgkXFlA', 'uf7H1Ximj', 'RFVKrUHR', 'uS6Xa9o1s', '30d0', 90, '2023-05-23'),
(518, 'VvrgkXFlA', 'uf7H1Ximj', 'Ztknli36', 'uS6Xa9o1s', '30d0', 0, '2023-05-23'),
(520, 'VvrgkXFlA', 'Jcq5vyZ7V', 'ZM53c607', 'uS6Xa9o1s', '30d0', 0, '2023-05-23'),
(521, 'VvrgkXFlA', 'Jcq5vyZ7V', 'RFVKrUHR', 'uS6Xa9o1s', '30d0', 65, '2023-05-23'),
(522, 'VvrgkXFlA', 'Jcq5vyZ7V', 'Ztknli36', 'uS6Xa9o1s', '30d0', 0, '2023-05-23'),
(523, 'VvrgkXFlA', 'vcU9NWoZf', 'JmsmVRJe', 'JELc4Mlws', '56f14', 78, '2023-06-03'),
(524, 'VvrgkXFlA', 'vcU9NWoZf', 'yiymeJnt', 'JELc4Mlws', '56f14', 90, '2023-06-03'),
(525, 'VvrgkXFlA', 'vcU9NWoZf', 'JmsmVRJe', 'GhSgsu0eo', '56f14', 78, '2023-06-23');

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

--
-- Dumping data for table `rapotsiswa`
--

INSERT INTO `rapotsiswa` (`c_rapotsiswa`, `c_ta`, `c_kelas`, `c_siswa`, `s`, `i`, `a`, `catatan`, `kelakuan`, `kerajinan`, `kerapian`) VALUES
(1, '6ARym1eC6', '56f14', 'JmsmVRJe', 1, 1, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'Baik', 'Baik', 'Baik'),
(2, '6ARym1eC6', '56f14', 'yiymeJnt', 2, 2, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'Cukup', 'Baik', 'Kurang'),
(3, '6ARym1eC6', '56f14', 'hmaE7fdx', 0, 0, 0, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'Baik', 'Baik', 'Baik'),
(4, '6ARym1eC6', '56f14', 'woxBpu2G', 3, 0, 4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'Baik', 'Baik', 'Baik'),
(5, '6ARym1eC6', '56f14', 'iWoQzXM8', 0, 0, 0, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'Baik', 'Baik', 'Baik'),
(6, '6ARym1eC6', '56f14', '2XvDCFKx', 0, 0, 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'Cukup', 'Cukup', 'Cukup'),
(7, '6ARym1eC6', '56f14', '4ZCyuSBK', 0, 0, 0, 'Anak Yang Keren', 'Baik', 'Baik', 'Baik'),
(8, '6ARym1eC6', '5ecc', 'v7cJC6tO', 3, 0, 4, 'Tingkatkan Lagi Belajarmu', 'Baik', 'Baik', 'Baik'),
(9, '6ARym1eC6', '5ecc', 'bptbJt4Q', 0, 0, 2, 'Jangan terpengaruh dengan teman yang tidak baik', 'Cukup', 'Cukup', 'Baik'),
(10, '6ARym1eC6', '5ecc', 'Of9806Ui', 1, 3, 0, 'Tingkatkan Belajarmu', 'Baik', 'Baik', 'Baik'),
(11, '6ARym1eC6', '30d0', 'RFVKrUHR', 2, 1, 0, '', 'Baik', 'Baik', 'Baik'),
(12, 'VvrgkXFlA', '30d0', 'RFVKrUHR', 2, 1, 0, '', 'Baik', 'Baik', 'Baik'),
(13, 'VvrgkXFlA', 'BiOmEVqof', 'bH8JFQ3wh', 1, 1, 12, '', 'Baik', 'Baik', 'Baik'),
(14, 'VvrgkXFlA', 'BiOmEVqof', 'K12FN4PLr', 1, 0, 0, '', 'Cukup', 'Baik', 'Baik');

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
('AE95133LQ', '202002058', NULL, 'HAFIZ R USAMA DORISMAN', 'Jakarta', '2014-04-11', 'L', 'wkv42GPmX', 2020, 'USAMA', '4A', '', '', '', 'Pekayon 2 Jl. Kemang 3 Blok B no 36 Bekasi', '081318003889', '81293973439', '', 'Dorisman', 'S1', 'Wiraswasta', 'Padang 5 Maret 1982', 'Desi Mai Fitri', '', 'IRT', 'Pariaman 14 Mei 1989'),
('AF39523AP', '202202128', NULL, 'MUHAMMAD FITRAH ABDURRAHMAN', 'Bekasi', '2015-06-30', 'L', '56f14', 2022, 'FITRAH', '2', '14', '', 'M', 'Jl. Lumbu Barat 2 B no.77 Kel. Bojong Rawalumbu Bekasi', '085777931736', '85775333210', '', 'Fuad Muhammad Muhsin', 'S1', 'Swasta', 'Jakarta 9 oktober 1981', 'Ersa Setiati', 'S1', 'Dokter', 'Jakarta 31 Agustus 1986'),
('AV23119MK', '202302003', NULL, 'MUHAMMAD ADHYASTHA ALFAREZEL', 'Jakarta', '2016-10-27', 'L', 'BiOmEVqof', 2023, 'DHYAS', '1', '17 kg', '100 cm', '', 'Jl. Pulo sirih tengah 13 blok ea 390', '', '081286382262', 'widiyogop@gmail.com', 'Widi Yogo Pratomo', 'S1 Akuntansi Univ. Gunadarma', 'PNS', 'Jakarta,4 Nov 1988', 'Elin Septiana', 'S1 Akuntansi Univ. Gunadarma', 'IRT', 'Lebak, 22 September 1990'),
('AY83805PI', '202202126', NULL, 'MAYESHA KENZIE NAGIDA', 'Bekasi', '2016-01-22', 'P', '56f14', 2022, 'KENZIE', '2', '18 kg', '114 cm', 'S', 'Jalan Narogogn Jaya 5 D62 No.4', '0', '081284547404/0817332300', 'dinia1908@gmail.com', 'Martino Gusman', 'D3', 'Karyawan swasta', 'Jakarta,21 Agustus 1989', 'Dini Angkola', 'S1', 'IRT', 'Jakarta,19 Agustus 1989'),
('BC14217DZ', '202202124', NULL, 'KHILYA ADZKIYA', 'Bekasi', NULL, 'P', '56f14', 2022, 'KHILYA', '2', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', ''),
('BE15203IZ', '202302016', NULL, 'KANAYA ALESHA DZIKRA', 'Bekasi', '2016-04-30', 'P', 'BiOmEVqof', 2023, 'KANAYA', '1', '20 kg', '115 cm', '', 'Rawalumbu', '', '089618478533', 'danidaru5m4n@gmail.com', 'Dani Darusman', 'S1 administrasi publik', 'Wirausaha', 'Ciamis, 3 Januari 1988', 'Tati kurniati', 'S1 sarjana syariah', 'IRT', 'Sumedang, 29 Februari 1988'),
('BR23673RM', '202202112', NULL, 'ADNI AISHA NABIH', 'Surabaya', '2016-06-20', 'P', '56f14', 2022, 'ADNI', '2', '11,2 Kg', '84 cm', 'S', 'Jl. Lembah Aren VI K7/14 Pondok Kelapa, Duren Sawit. Jakarta timur', '85336035037', '82330037866', '', 'Zakariya Amirudin Al Aziz', 'S1', 'Karyawan Swasta', 'Nganjuk, 11 Desember 1990', 'Vidya Nurina', 'S1', 'Karyawan Swasta', 'Pasuruan, 20 Oktober 1991'),
('BS55795DR', '202102094', NULL, 'GHAZIYAH MUMTAZAH ZAHRI', 'Medan', '2014-09-10', 'P', '30d0', 2021, 'GHAZIYA', '3B', '11 Kg', '-', 'L', 'Jl. Bronco 1 No D4/5 Kebantenan Indah Jatiasih', '-', '82214666011', '', 'Berlianto Haris', 'S2 ', 'Karyawan Maybank Syariah', 'Padang, 26 Mei 1985', 'Sukma Faizah', 'S1', 'Ibu Rumah Tangga', 'Medan, 4 Desember 1989'),
('CJ78592DL', '201902014', NULL, 'NALDO IBRAHIM MUSTAFA', 'BEKASI', '2013-04-19', 'L', '5ecc', 2019, 'NALDO', '5A', '21', '', '', 'PONDOK TIMUR MAS BLOK G 4/11 BEKASI', '', '8161621533', '', 'ADITYA PRADANA MUSTAFA', 'S1', 'KARYAWAN SWASTA', 'JAKARTA, 22 MEI 1985', 'DIYAH TANJUNG SARI', 'S1', 'KARYAWAN SWASTA', 'JAKARTA, 19 SEPTEMBER 1983'),
('CO69272YE', '202002069', NULL, 'KEIKO HAFIZH APRILIA', 'Bekasi', '2013-04-15', 'P', 'wkv42GPmX', 2020, 'KEIKO', '4B', '21', '117', 'L', 'Jl. Wijaya Kusuma ^ no.14 Perumnas I Jaka Sampurna Bekasi', '087888183390', '81317781334', '', 'Roso Darwoko', 'SMMK', 'Wiraswasta', 'Madiun 13 Juni 1983', 'Niken Lestari', 'S1', 'IRT', 'Madiun 5 Januari 1983'),
('CS93423EZ', '202202145', NULL, 'KENZO ANDINOV SAAD SUHARJO', 'Jakarta', '2015-09-20', 'L', '56f14', 2022, 'KENZO', '2', '24 kg', '117 cm', '', 'Jl bintara jaya 8 rt 03/09 kavling c10 bintara jaya bekasi barat', '', '081398888165 / 087777788410', 'loidsteelinternational@gmail.com', 'Andi winoto', 'S1', 'Wiraswasta', 'Jakarta, 2 April 1984', 'Novi wulandari', 'S1', 'IRT', 'Bekasi , 1 Nov 1989'),
('DJ68015LD', '202102088', NULL, 'ALVARO VIDI', 'Tasikmalaya', '2015-01-02', 'L', '30d0', 2021, 'ALVARO', '3A', '14', '90', 'S', 'Cluster Asfa no. 14, Jakamulya, Bekasi Selatan', '81351937477', '82214502493', '', 'Kardi', 'S1', 'Swasta', 'Jakarta, 3 April 1984', 'Vidya Ekaningtyas', 'S1', 'Dokter', 'Purwokerto, 8 Oktober 1986'),
('DP72175LJ', '202002077', NULL, 'ZAINA ALIMA SABREEN', 'Bekasi', '2013-02-21', 'P', 'wkv42GPmX', 2020, 'ZAINA', '4B', '27', '120', 'l', 'Jl. Platinum 4 Blok J 5/5 Metland Tambun Bekasi', '081284898848', '81336737656', '', 'Erlangga', 'S1', 'Wiraswasta', 'Jakarta 14 April 1985', 'Intan Solihah', 'D3', 'IRT', 'Serang 12 Februari 1985'),
('EA67582PY', '202002042', NULL, 'MUHAMMAD JANOKO ASMAYODHA CAHYONO', 'Bekasi', '2013-12-27', 'L', 'wkv42GPmX', 2020, 'JANOKO', '4A', '', '', '', 'Pondok Timur Mas Blok R1 no 10 A Bekasi', '08119441520', '83824865284', '', 'Farur Anton Cahyono', 'S2', 'Wiraswasta', 'Malang, 1 Februari 1982', 'Novi Astuti', 'SMA', 'IRT', 'Jakarta, 4 Februari 1978'),
('EF28506NB', '201902002', NULL, 'ANDISTRY CALISTA QURRATA AYUNI', 'JAKARTA', '2012-09-01', 'P', '5ecc', 2019, 'CALISTA', '5B', '20', '', '', 'JL. RAWA BEBEK NO. 205 RT/011/001 PULOGEBANG CAKUNG JAKARTA TIMUR', '0', '8568895850', '', 'ANDI', 'S1', 'KARYAWAN SWASTA', 'JAKARTA, 14 JANUARI 1981', 'KHAIRIA MAHDALENA', 'S1', 'IRT', 'JAKARTA, 12 DESEMBER 1981'),
('EJ54162QM', '202302037', NULL, 'ARUNA SAKHI KINANTI', 'Bekasi', '2016-11-26', 'P', 'BiOmEVqof', 2023, 'ARUNA', '1', '17,5 kg', '110 cm', '', 'Jalan matahari 2 blok i no 1 taman galaxi bekasi selatan 17147', '', '081356263158', 'Addina.sugiarto@gmail.com', 'Rudi irwanto', 'S1', 'PNS', 'Bekri lampung, 28 Oktober 1984', 'Addina sugiarto', 'S1', 'IRT', 'Wonosobo jawa tengah, 22 Maret 1984'),
('EO67109RS', '202202137', NULL, 'ADELIA AINUNNISA ASYARI', ' Bandung', '2015-10-16', 'P', '56f14', 2022, 'DELLE', '2', ' 16,20 kg', '110 cm', '', ' Pondok Timur Mas (PTM), Jl. Pondok Mas Raya, Blok A, Nomor 5.', ' -', '8562329397', ' abungasyari@gmail.com', ' Abung Asyari', ' S2', ' Karyawan Swasta', 'Cibinong, 31 Maret 1981', ' Ingrid Larasati Agustina', ' S3', ' Karyawan Swasta', 'Jakarta, 21 Januari 1983'),
('ER18096HM', '202002053', NULL, 'AINUN MAHYA RAMADHANI', 'Bekasi', '2013-07-20', 'P', 'wkv42GPmX', 2020, 'AINUN', '4B', '', '', 'XXL', 'Jl Cikas Timur no 1 Blok B 7/5 Taman Cikas Bekasi Selatan', '08129556680', '8111988844', '', 'M Sariful Muchlis', 'S1', 'Swasta', 'Jakarta 11 Juni 1977', 'Atin Rianti', 's1', 'IRT', 'Cianjur 13 April 1981'),
('ET33257ZV', '201902027', NULL, 'MUHAMMAD HAMILUL QURANI', 'REMBANG', '2013-02-18', 'L', '5ecc', 2019, 'AMIL', '5A', '', '', 'S', 'PTM BLOK f1 No. 6 JAKASETIA', '081225509168', '', '', 'ADI HIDAYAT', 'S2', 'PENGAJAR', 'PANDEGLANG, 11 SEPTEMBER 1984', 'SHUFAIROK', 'S1', 'IRT', 'REMBANG, 13 JANUARI 1985'),
('ET69074CZ', '202002074', NULL, 'RAFANDRA SHIDQIE KENEDY', 'Jakarta', '2014-05-25', 'L', 'wkv42GPmX', 2020, 'RAFA', '4A', '16', '', 'L', 'Villa Jaka setia Blok E no. 11 Bekasi', '08129317894', '81806351751', '', 'M Risky Kenedy', 'S1', 'PNS', 'Bwi 12 Mei 1979', 'Sella Novi Berliana', 'S1', 'IRT', 'Jakarta 30 November 1982'),
('EU13377GL', '201902023', NULL, 'TAMARANI SAJIDAH FIRSTIANNISA', 'SIDOARJO', '2014-03-17', 'P', '5ecc', 2019, 'TAMARA', '5B', '16', '', '', 'VILLA JAKA SETIA BLOK C NO. 9A BEKASI', '0', '85710250067', '', 'YUSUF PRATAMA WIJANARKO', 'S1', 'KARYAWAN SWASTA', 'SURABAYA, 05 MARET 1992', 'NUR LISTIYA MANGGARANI PUTRI', 'S1', 'IRT', 'SURABAYA, 25 JUNI 1992'),
('FD55930FH', '202002055', NULL, 'MUHAMMAD RICHIE RIZALDY', 'Bekasi', '2013-11-25', 'L', 'wkv42GPmX', 2020, 'RICHIE', '4A', '', '', '', 'Peumahan Prima Lingkar Asri Blok B 1 no 24 Jatibening ', '08356269363', '85218037132', '', 'Danny Yudha Prawira', 'S1', 'Wiraswasta', 'Bogor 13 April 1981', 'Ajeng Nurmala', 'S1', 'Wiraswasta', 'Karawang 2 Agustus 1981'),
('FM47128NR', '202302044', NULL, 'MUHAMMAD ABU BAKAR ASH-SHIDDIQ', 'Bekasi', '2017-05-24', 'L', 'BiOmEVqof', 2023, 'MABAS', '1', '19 kg', '110 cm', '', 'The Green View Blok D20 Bekasi Selatan', '', '082299502337', 'naradalotus@gmail.com', 'RM Dana Suryo Saputro', 'S1 Sarjana Teknik', 'Karyawan Swasta', 'Jakarta, 6 Desember 1987', 'Riska Oktayuanita', 'S1 Teknis Industri', 'Ibu Rumah Tangga', 'Slawi, 28 Oktober 1988'),
('FN67150JQ', '202202111', NULL, 'ADARA HASYA AFIQAH', 'Bekasi', '2015-06-09', 'P', '56f14', 2022, 'ADARA', '2', '', '104', '', 'Jl. Taman Agave IV M5/18 Taman Galaxi Bekasi', '08111901578', '8161845223', '', 'Mohammad Fikri', 'S2', 'Swasta', 'Jakarta 26 November 1977', 'Sofia Andam Dewi', 'S1', 'Swasta', 'P. Berandan 15 Februari 1977'),
('FW76958DQ', '202302036', NULL, 'RAYYAN FATIH SYAMIL DARMAWAN', 'Banda Aceh', '2017-01-26', 'L', 'BiOmEVqof', 2023, 'FATIH', '1', '17 kg', '106 cm', '', 'Grand Kamala Lagoon. Bekasi', '', '08129523384', 'rfdarmawan@gmail.com', 'Rachman Ferry Darmawan', 'S1- Sarjana Ekonomi', 'Karyawan Swasta', 'Jakarta, 27 Juni 1974', 'Rahmawati', 'S1- profesi dokter', 'Dokter', 'Kumba, 26 Februari 1989'),
('FX46696QX', '202302018', NULL, 'KHANSA FAHIMA SULTANSYAH', 'BEKASI', '2006-01-16', 'P', 'BiOmEVqof', 2023, 'KHANSA', '1', '22 kg', '122 cm', '', 'Perum Jatibening 2 Jl.Hanjuang IV atas no.63A Rt.06/Rw.03 Pondok Gede Jt Bening Bekasi, 17412', '', '082213606865', 'rizkiturki@gmail.com', 'RIZKI APRIANSYAH', 'S1 - AGAMA ISLAM , ISTANBUL TURKI', 'GURU / PENERJEMAH BAHASA TURKI', 'Jakarta, 17 April 1992', 'DHEANITA TRIBUANA', 'S1 - FAK.EKONOMI GUNADARMA', 'IRT', 'Jakarta, 8 April 1991'),
('GE16972VQ', '202302039', NULL, 'FATIMAH AINAYYA KHAIDIR', 'Jakarta', '2016-10-30', 'P', 'BiOmEVqof', 2023, 'FATIMAH', '1', '24 kg', '120 cm', '', 'Jl Rh Umar RT 03 RW 02 Cikunir Kelurahan Jakamulya Kecamatan Bekasi Selatan (Cluster Denaya Safa Marwa Residence)', '', '0081290002913', 'khai.dhirr@gmail.com', 'Ahmad Khaidir', 'S1 - Sarjana Sistem Informasi', 'Pegawai Swasta', 'Jakarta, 13 Agustus 1986', 'Arfaniati Cahya Amran', 'S1 - Ekonomi', 'Wirausaha dan Ibu Rumah Tangga', 'Jakarta, 17 April 1987'),
('GL27158GF', '202002067', NULL, 'FATIH BINTANG RAYESPATI', 'Bekasi', '2013-08-23', 'L', 'wkv42GPmX', 2020, 'FATIH', '4A', '39', '121', 'XXL', 'Pondok Pekayon Indah Blok DD 39 Jl. KetapangIV no 12 A Bekasi', '081809117779', '81287788719', '', 'Angki Fajar Anggaprawira', 'D3', 'Swasta', 'Tasikmalaya 14 Oktober 1980', 'Swasti Kartikaningrum', 'S1', 'IRT', 'Bekasi 7 September 1984'),
('GW49774PG', '202302015', NULL, 'ADZKIA FARANISA AYU', 'Temanggung', '2016-06-17', 'P', 'BiOmEVqof', 2023, 'KIA', '1', '16 Kg', '110 Cm', '', 'Perumahan Margahayu Blok A Jl. Cemara 1', '', '081288680182', 'tatang.arifin@yahoo.com', 'Tatang Arifin', 'S1', 'Swasta', 'Ciamis, 4 Juni 1982', 'Indah Eka Septiana', 'SLTA', 'IRT', 'Magelang, 18 September 1989'),
('GW77884PM', '201902006', NULL, 'NISWA FADILLAH', 'SOLOK', '2013-04-23', 'P', '5ecc', 2019, 'NISWA', '5B', '18', '', '', 'THE GREEN VIEW BLOK D 67', '0', '82111194998', '', 'DENY NATURIAN', 'S1', 'WIRASWASTA', 'RUMBAI, 30 MARET 1984', 'ANA OKTORA', 'S2', 'IRT', 'SOLOK, 07 OKTOBER 1982'),
('GY24495VG', '202202115', NULL, 'ALIFIANDRA HARUN AL RASYID', 'Jakarta', '2015-11-21', 'L', '56f14', 2022, 'ALIF', '2', '0', '0', 'L', 'Jl. Nangka 4 No. 5 RT 004 RW 005. Kota Baru. Bekasi Barat. Bekasi. Jawa Barat', '081299366510', '081299366510', 'devihenri@gmail.com', 'Devi Henri Wibowo', 'S1', 'Karyawan swasta', 'Pekalongan, 26 oktober 1988', 'Indah Purnamasari', 'S1', 'Karyawan Swasta', 'Jakarta,8 September 1988'),
('GY60491VB', '202002059', NULL, 'KHANSA AQEELA AZZALFA TAMBUNAN', 'Bekasi', '2014-07-14', 'P', 'wkv42GPmX', 2020, 'KHANSA', '4B', '', '', 'M', 'Jl. Kemang Raya Blok C/6 Pekayon Jaya II Bekasi', '085216597235', '81297376240', '', 'Dhika Fajar Pratama', 'S1', 'Wiraswasta', 'Jakarta 7 November 1984', 'Rosa Indah Sari', 'S1', 'IRT', 'Jakarta 5 November 1984'),
('HH53907GG', '201902028', NULL, 'MUHAMMAD TSAQIB FATHULISLAM', 'BEKASI', '2013-02-13', 'L', '5ecc', 2019, 'TSAQIB', '5A', '', '', '', 'Pondok Pekayon Indah Jl. Akasia Raya Blok D2/2 Bekasi Selatan', '', '81389510582', ' indah.yulianty84@gmail.com', 'JAJANG SAEPUL MALIK', 'Sarjana Perikanan', 'Konsultan (Freelance)', 'Tasik Malaya, 24 Maret 1983', ' Indah Yulianty Amelia', 'Sarjana Pertanian', 'GURU', 'Jakarta, 19 Juli 1984'),
('HI83259RN', '202302027', NULL, 'MARYAM KHALISA ARSFA', 'Bekasi', '2017-01-22', 'P', 'BiOmEVqof', 2023, 'MARYAM', '1', '16 Kg', '112 cm', '', 'Jl pulo sirih barat 7 blok fe no 408', '', '082110232231', 'aristiaandana@gmail.com', 'Farid Rafli putra', 'S2-Manajemen Bisnis', 'Karyawan swasta', 'Pekanbaru, 7 Agustus 1990', 'Aristia andana putri', 'S1-Sarjana Teknik', 'IRT', 'Kendari, 4 November 1990'),
('HQ99003WK', '202202122', NULL, 'FAUZAN AL FATIH', 'Bekasi', '2015-12-29', 'L', '56f14', 2022, 'FAUZAN', '2', '10,5 Kg', '-', 'M', 'Taman Cikas Jl. Boulevard Raya Blok A4 no. 3', '-', '815842008976', '', 'Wisnu Widodo', 'D3', 'Karyawan Swasta', 'Malang, 17 September 1983', 'Lindiawati', 'S1', 'Ibu Rumah Tangga', 'Jakarta, 29 Desember 1982'),
('HX99432UX', '202202120', NULL, 'DANICA CALISTA PUTRI', 'PAMULANG', '2015-04-24', 'P', '56f14', 2022, 'DANICA', '2', '14', '98', 'S', 'JL. KETAPANG 5 BLOK DD38 NO.17 PD PEKAYON INDAH', '021-8207702', '8170700709', '', 'DONI YAHYA', 'S1', 'WIRASWASTA', 'JAKARTA, 5-Feb-80', 'DEWI MONICA', 'S1', 'SWASTA', 'JAKARTA, 17-JUN-82'),
('HY85947RW', '201902003', NULL, 'AUDIE MUMTAZA WIJAYAKUSUMAH', 'BEKASI', '2013-04-29', 'P', '5ecc', 2019, 'AUDIE', '5B', '18', '', '', 'TAMAN CIKAS C 16 NO. 22 PEKAYON JAYA BEKASI SELATAN', '0', '81283274743', '', 'ALIF WIJAYAKUSUMAH', 'S2', 'KARYAWAN SWASTA', 'CIANJUR, 10 MEI 1973', 'RUFAIDAH DEWI T', 'S2', 'PENGAJAR', 'BANDUNG, 19 SEPTEMBER 1973'),
('HZ92388ON', '202002082', NULL, 'MUHAMMAD BANIIN SYABITS', 'Jakarta', NULL, 'L', 'wkv42GPmX', 2020, 'SYABITS', '4A', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', ''),
('IB85519XX', '202102102', NULL, 'MUHAMMAD IBRAHIM RAHADIAN', 'Bekasi ', '2015-08-30', 'L', '30d0', 2021, 'IBRA', '3A', '19 Kg', '-', 'L/ XL', 'Jl. Duta VI Blok FF No. 8 Kemang Pratama', '-', '8997731084', '', 'Nugraha Arianto Putra', 'SMA', 'Karyawan Swasta', 'Jakarta, 27 September 1999', 'Siti Rafifa Fahdina', 'D3', 'Karyawan Swasta', 'Palembang, 24 Februari 1990'),
('IH20050XZ', '202002057', NULL, 'SHAFA NUR SABRINA', 'Bekasi', '2014-05-01', 'P', 'wkv42GPmX', 2020, 'SHAFA', '4B', '18', '120', 'M', 'Pondok Cikunir Indah Jl. Rajawali VI no 22 Bekasi', '087882166610', '87880885110', '', 'Bayu Firmansyah', 'S1', 'Wiraswasta', 'Purbalingga 8 September 1987', 'Maya Oktaviantari', 'S1', 'IRT', 'Jakarta 2 Oktober 1987'),
('IV50552AN', '201902022', NULL, 'ERINA ZAHIRA', 'BEKASI', '2013-02-28', 'P', '5ecc', 2019, 'ERINA', '5B', '18', '', '', 'JL. PIRUS BLOK. D NO. 427 BEKASI', '', '82141522403', '', 'HEFFY HERYANTO', 'S1', 'GOJEK', 'JAKARTA, 29 JANUARI 1973', 'DIAN DANAWATI', 'S1', 'IRT', 'JAKARTA, 22 SEPTEMBER 1974'),
('JF64907QQ', '202002051', NULL, 'BALQIS ADZRA SHABIRA', 'Serang', '2014-02-06', 'P', 'wkv42GPmX', 2020, 'BALQIS', '4B', '', '', 'L', 'Villa Jaka Setia Blok H no 7 Bekasi', '081287978451', '81289565771', '', 'Ica Putra', 'D3', 'Swasta', 'Pangkalpinang 25 Januari 1986', 'Ita Haryati', 'D3', 'Swasta', 'Serang 21 Mei 1986'),
('JQ77327GS', '202202121', NULL, 'DAVIN ARYANARESWARA ALZAIDAN', 'Bekasi', '2016-01-30', 'L', '56f14', 2022, 'DAVIN', '2', '', '', '', 'Griya Metropolitan 2 Blok E5 No.3 Pekayon Bekasi Selatan Kota Bekasi', '', '82133183060', '', 'Ari Agung Prihandoyo', 'S2', 'Karyawan Swasta', 'Boyolali, 7 Januari 1989', 'Widya Ariaty', 'S1', 'Dokter Umum', 'Palembang, 7 Juli 1988'),
('JS59633QN', '202202113', NULL, 'ADZKIYA QALESYA ZAHSY', 'Bekasi', '2016-10-04', 'P', '56f14', 2022, 'QALESYA', '2', '12,1 Kg', '88 Cm', '', 'Jl. Cendana IV no 18. Perumahan Jakapermai.', '82299992553', '', '', 'Erlangga Perwira N.', 'S1', 'Dokter', 'Bekasi, 27 April 1991', 'Indah Dwi Rahmah', 'S1', 'Dokter', ' Jepara, 17 September 1990'),
('JU75291VF', '202202117', NULL, 'ARYA BIMA WARDHANA', 'Jakarta ', '2016-01-28', 'L', '56f14', 2022, 'BIMA', '2', '18', '103', 'M', 'Komp Grand Prima Bintara Blok B2 no 31 Bekasi Barat', '081311687587', '81937655758', '', 'Yususf Gustan Nawawi', 'S2', 'Wiraswasta', 'Jakarta 4 April 1984', 'Mira Tunjung', 'S1', 'IRT', 'Solo 15 Juni 1987'),
('JV82379BY', '201902008', NULL, 'ANISA AWILIA ZAHRA', 'BANDUNG', '2013-08-12', 'P', '5ecc', 2019, 'ICHA', '5B', '17', '', '', 'KOMP. PULO PERMATA SARI BLOK. B5 NO.3 PEKAYON JAYA BEKASI', '0', '81285896381', '', 'WILDAN FUJIANSAH', 'S2', 'PNS', 'BANDUNG, 20 MARET 1986', 'RETI ROHMALIA SARI', 'S1', 'KARYAWAN SWASTA', 'PANDEGLANG, 17 MARET 1987'),
('JY86972JS', '202102089', NULL, 'AMELIA HABIBATUL MUSTHAFA', 'Bekasi', '2015-02-09', 'P', '30d0', 2021, 'AMEL', '3B', '', '', '', 'Pondok Timur Mas Blok f1 No. 6 Jakasetia', '81225509168', '', '', 'Adi Hidayat', 'S2', 'Pengajar', 'Pandeglang, 11 September 1984', 'Shufairok ', 'S1', 'Ibu Rumah Tangga', 'Rembang, 13 Januari 1985'),
('KD51015XG', '202302028', NULL, 'ALNATH ADREENA NURVIA', 'Bekasi', '2017-06-04', 'P', 'BiOmEVqof', 2023, 'ALNATH', '1', '18 kg', '113 cm', '', 'Vila Jaka Setia, blok B no 7. Bekasi Selatan', '', '081310326503', 'nurdin_2007@yahoo.co.id', 'Mohamad Nurdin', 'S1 - Sarjana kelautan (Nautica II)', 'Pelaut', 'Tegal, 21 Januari 1985', 'Dwi Nivianti', 'S1 - Sarjana Komunikasi (public relation)', 'Wirausaha', 'Jakarta, 8 Desember 1987'),
('KF68802RW', '202302008', NULL, 'SHOFIYAH JENNAIRA MUWAFFAQAH', 'Bekasi', '2016-05-27', 'P', 'BiOmEVqof', 2023, 'JENNA', '1', '20 kg', '110 cm', '', 'Cikunir, Jalan H.Mitar no 63 RT 05 RW 02 Kelurahan Jakamulya Kecamatan Bekasi Selatan Kota Bekasi', '', '087887579527', 'afriliasuryanis@gmail.com', 'Cahyo Kurniawan', 'S1-Ilmu Hukum', 'Swasta', 'Jakarta, 14 Maret 1988', 'Afrilia Suryanis', 'S1-Ilmu Komunikasi', 'Jurnalis', 'Jakarta, 20 April 1989'),
('KN11570UO', '202202125', NULL, 'LAODE MUHAMAD ALFATIH BAKTI', 'Batam', '2015-02-27', 'L', '56f14', 2022, 'ALFATIH', '2', '0', '0', 'S', 'Jl. Penegak 1 no.75 Rawa Lumbu Bekasi', '0', '0811858554/085668074991', 'lmbqkti@gmail.com', 'Laode Muhamad Bakti', 'S1', '0', 'Yogyakarta,14 Nov 1981', 'Puspa Sari Anggraini', 'S1', 'IRT', 'Jakarta, 1 July 1982'),
('KP20643TA', '202102090', NULL, 'ANNISA SALWA NABILA LUBIS', 'Bekasi ', '2014-09-06', 'P', '30d0', 2021, 'SALWA', '3B', '20 Kg', '110 cm', 'L', 'Jl. Kenari I Blok A1 No 1 Pondok Pekayon Indah', '021-820 4713', '81807123686', '', 'Muhammad Fikri Ramdhani ', 'S1', 'Karyawan Swasta', 'Jakarta, 13 Mei 1987', 'Livi Ayu Oktavia', 'S1', 'karyawan Swasta', 'Jakarta, 30 Oktober 1987'),
('KQ81044QP', '202102095', NULL, 'HANIFA ANINDYA PRAMESTI', 'BEKASI ', '2015-03-24', 'P ', '30d0', 2021, 'ANIN ', '3B', '11', '96', 'S', 'PERUM PULO PERMATASARI A4/17 ', '0218203302', '8121156778', '', 'DIMAS RADITYA ', 'S1', 'Karyawan Swasta ', '25-Jan-81', 'RIYANE RACHMAWATI ', 'S1 ', 'Karyawan swasta ', '9-May-80'),
('KT55573IE', '202202131', NULL, 'SULTHAN BASKORO PRIYANANTA', 'Bekasi', '2016-02-16', 'L', '56f14', 2022, 'SULTHAN', '2', '13 Kg', '-', 'M', 'Pondok Pekayon Indah Jl. Ketapang VI Blok DD43 No.7 Bekasi ', '021-8205770', '85887154536', '', 'Berliyanto', 'S2', 'Dosen', 'Jakarta, 12 Juni 1988', 'Kalia Barnita', 'S2', 'Ibu Rumah Tangga', 'Jakarta, 07 Februari 1989'),
('KU15838CB', '202202138', NULL, 'MUHAMMAD AL FATIH PUTRA KAUTSAR', ' JAKARTA', '2015-12-17', 'L', '56f14', 2022, 'AL FATIH', '2', '22 kg', '110 cm', '', ' JL.KAYUMANIS VIII RT.015 RW.007 NO.81 MATRAMAN JAKARTA TIMUR 13130', ' 021-21012958', '81383276969', ' adiachmadkautsaruigundaryai@gmail.com', ' ACHMAD KAUTSAR, S.SOS, S.E', ' S-1', ' KONSULTAN', 'Jakarta, 19 November 1977', ' LINA MARLINA', ' SMA', ' IBU RUMAH TANGGA', 'Garut, 6 Juli 1986'),
('KW18553HL', '202302004', NULL, 'FAYZA ALESHA DESWINATA', 'Bandar Lampung', '2016-06-14', 'P', 'BiOmEVqof', 2023, 'FAYZA', '1', '24 kg', '117 cm', '', 'Pondok surya mandala. Jl surya permata XIII blok Y-1 no 9, RT. 13/13, jakamulya 17146 bekasi selatan', '', '08112267905', 'genkiacmilan@gmail.com', 'Genki Judawinata', 'S1 UNPAD', 'Swasta', 'Bandung, 25 Oktober 1990', 'Ade Desnia', 'S1 UNPAD', 'PNS', 'Bandar Lampung, 28 Desember 1991'),
('KX34989JG', '202302034', NULL, 'MUHAMMAD BYAN SIN ASIFY', 'Boyolali', '2016-06-09', 'L', 'BiOmEVqof', 2023, 'BYAN', '1', '20 kg', '105 cm', '', 'Jl. Masjid Hidayatullah No.1C Jakasetia Bekasi Selatan Kota Bekasi', '', '085780071007', 'anisaburberry@gmail.com', 'Mochammad Habiby Al Asify', 'S1. Sarjana Akuntansi', 'PNS', 'Bekasi, 18 Desember 1989', 'Dien Anisa Latif', 'SMA Madrasah Aliyah Negeri & S1 Al Ahwal Akh Syakhsiyyah (no wisuda)', 'Ibu Rumah Tangga', 'Kebumen, 26 November 1990'),
('LU52461DR', '202002041', NULL, 'SYATHIR IBRAHIM KAMIL', 'Bekasi', '2014-01-11', 'L', 'wkv42GPmX', 2020, 'IBRAHIM', '4A', '25', '', 'L', 'Komp. Pemda Jl. Kresna no.41 RT.01/01 Jati Asih Bekasi', '081317802059', '81298567822', '', 'Yandi Arnaz', 'S1', 'BUMN', 'Depok, 19 April 1988', 'Rita Hartati Lubis', 'S1', 'IRT', 'Jakarta, 29 Maret 1989'),
('MD35487JJ', '202002039', NULL, 'MINDA ISVARA RUSDI', 'Bandung', '2013-10-10', 'P', 'wkv42GPmX', 2020, 'MINDA', '4B', '18.6', '117', 'P', 'Pondok Timur Mas Blok B 1 no. 7 Jaka Setia Bekasi', '087878600250', '87878600240', '', 'Prana Adhitya', 'S2', 'Swasta', 'Jakarta, 19 September 1978', 'Mariati Abdulkadir', 'S2', 'IRT', 'Bandung, 14 Juni 1978'),
('MG36952TQ', '202102093', NULL, 'ATHALLAH MUSYAFFA ZAIN', 'Tangerang', '2015-06-18', 'L', '30d0', 2021, 'AMUZA', '3A', '19', '110', 'L', 'Jl. Swantantra II RT.07/05', '081296447097', '8129460700', '', 'Zainudin Triyatno', 'D3', 'Seniman', 'Jakarta 17 Oktober 1977', 'Sumaryati', 'S1 ', 'IRT', 'Jakarta 22 Maret 1984'),
('MI67757GU', '202102083', NULL, 'ABRAHAM PEPITO', 'Jakarta', '2015-05-03', 'L', '30d0', 2021, 'PEPITO', '3A', '12 Kg', '', 'S', 'Pondok Timur Mas F 5 No. 5 Jalan Pondok Jingga Mas IV', '8129824477', '218202934', '', 'Muhamad Asiqin Akbar', 'S1', 'Wiraswasta', 'Jakarta, 8 Maret 1983', 'Noviyanti Nurkomariah ', 'S1', 'Karyawan Swasta', 'Palembang, 27 November 1981'),
('MK52438SP', '202302040', NULL, 'FALISHA LATIFAH FARZANA', 'Jakarta', '2016-10-17', 'P', 'BiOmEVqof', 2023, 'LATIFAH', '1', '19 kg', '108 cm', '', 'Jl. Sriwijaya I no. 15. Rt001 RW06, Jakasampurna, Bekasi Barat, kota Bekasi', '', '081287799661', 'indriani.zakiah@gmail.com', 'Rizal Fahlevi', 'S1 - Ilmu Komputer Universitas Indonesia', 'Swasta', 'Jakarta, 1 Juni 1988', 'Zakiah Indriani', 'D3 - Akuntansi UGM', 'Pegawai BUMN', 'Tangerang, 4 November 1992'),
('MP28695NL', '202202141', NULL, 'MUHAMMAD ZAIDAN ALTHAFARIZQI', ' Bekasi', '2016-05-30', 'L', '56f14', 2022, 'ZAIDAN', '2', '17 kg', ' 110 cm', '', ' Bintara jaya IV no 13H', '218479922', '87822392644', ' dinahgiyanti@gmail.com', ' Muhamad Khadapi', ' S1', ' Wiraswasta', 'Jakarta, 12 April 1988', ' Dinah giyanti ruwaida', ' S1', ' Karyawan swasta', 'Jakarta, 4 Juni 1988'),
('MS71964WX', '202102098', NULL, 'KAYLA FATHIYYA ANDHARA SAPPHIRE', 'Jakarta', '2014-10-26', 'P', '30d0', 2021, 'KAYLA', '3B', '', '', '', 'Jl. Rawabebek No. 205 RT. 11/01 Pulogebang Jak-Tim', '', '82110069990', '', 'Andi', 'S1', 'Karyawan', 'Jakarta,14 Januari 1981', 'Khairia Mahdalena', 'S1', 'Ibu Rumah Tangga', 'Jakarta, 12 Desember 1981'),
('MZ30717AS', '201902007', NULL, 'KAIZAN AUF AL ARSY', 'CIANJUR', '2013-07-08', 'L', '5ecc', 2019, 'KAIZAN', '5A', '15', '', '', 'VILLA PEKAYON BLOK. A1 NO. 6', '0', '817220195', '', 'AGUS TAUFIQ EFENDI', 'S1', 'WIRASWASTA', 'SEMARANG, 27 SEPTEMBER 1977', 'NOVI EKA DAMAYANTI', 'S1', 'IRT', 'CIANJUR, 05 NOVEMBER 1982'),
('NB67320PE', '202002061', NULL, 'MUHAMMAD EMIRSYAH RAFEEF ASSAD', 'Bekasi', '2014-06-12', 'L', 'wkv42GPmX', 2020, 'EMIR', '4A', '20', '115', 'L', 'Jl. Cendana Raya no 16 Jaka Permia Bekasi', '08118818787', '81310070612', '', 'Muhammad Assad', 'S2', 'Pengusaha', 'Jakarta, 16 Januari 1987', 'Afra Nurina Amarilla', 'S2', 'IRT', 'Tarakan 6 Januari 1988'),
('NC32695WS', '202202129', NULL, 'MUHAMMAD KELLEN AZIZAN KAREEM', 'Jakarta', '2016-06-15', 'L', '56f14', 2022, 'KELLEN', '2', ' 14,1 Kg', '90', 'L', 'Perumahan Green Leaf Blok 6 No.1 Jl. Suluki Cempaka Jatibening', '-', '', '', 'Mohamad Abang (Alm)', '', '', '', 'Asmawati', 'D3', 'Swasta', 'Paniai, 15 Agustus 1983'),
('NF62532SC', '202002054', NULL, 'KHAIRUNISA RIANTI ANGKASA', 'Bekasi', '2014-01-26', 'P', 'wkv42GPmX', 2020, 'NISA', '4B', '20', '105', 'XL', 'Pondok Pekayon Indah Blok B3 no 7 Bekasi', '081806062013', '818964848', '', 'Surianto', 'S1', 'Swasta', 'Belawan 13 Mei 1980', 'Ratih Farlianty', 'S1', 'IRT', 'Jakarta 1 Juli 1978'),
('NF72074BM', '202302029', NULL, 'MUHAMMAD KALE ALTAIR', 'Batam', '2017-06-26', 'L', 'BiOmEVqof', 2023, 'KALE', '1', '16 kg', '98 cm', '', 'Perumahan puri harapan jl.Enau 3 Blok E 9 no.32 Rt 06/Rw 016 setia Asih bekasi', '', '081277828383', 'Altairkale17@gmail.com', 'Harto', 'SMK / sederajat', 'TNL AL', 'Magetan, 18 Juni 1987', 'Meliana siska E', 'SmK - sedang kuliah', 'Pengajar (metode Qiroati)', 'Cilacap, 14 Maret 1989'),
('NJ42780LY', '202202119', NULL, 'AZKA ADHYASTHA BOEMI', 'Bekasi', '2016-02-22', 'L', '56f14', 2022, 'AZKA', '2', '13,2 Kg', '90 Cm', 'M', 'Perumahan Deminimalist Blok C no 10', '021-28088013', '87780212919', '', 'Didik Tri Hartadi', 'S1', 'Karyawan Swasta', 'Bekasi, 3 November 1984', 'Hani Farahani', 'S1', 'Karyawan Swasta', 'Serang, 15 Maret 1979'),
('NM61919DH', '202002079', NULL, 'SHASHA YUMNA QIRANI', 'Bekasi ', '2013-02-09', 'P ', 'wkv42GPmX', 2020, 'SHASHA', '4B', '15', '', 'L', 'JL. MAKAM RT 3 RW 2 NO. 3 KRANJI', '', '8811180880', '-', 'JAKA ISMAULANA', 'SMA', 'WIRASWASTA', '12-Jun-86', 'DEVI GERHANA YANTI', 'SMA', 'IRT', '18-Mar-88'),
('NR40410IG', '202302038', NULL, 'MUHAMMAD KHALID RIZQIANDRA RAMADHAN', 'BEKASI', '2016-06-16', 'L', 'BiOmEVqof', 2023, 'KHALID', '1', '10 kg', '121 cm', '', 'KEMANG PRATAMA 5 JL CEMPAKA RAYA BJ 02 RT 03 RW 20', '', '081219092969', 'cakuwa73@gmail.com', 'CANDRA KUSUMA WARDHANA', 'SI - TEKNIK & MANAJEMEN INDUSTRI - STT TELKOM (TELKOM UNIVERSITY)', 'KARYAWAN BUMN (PT TELKOM INDONESIA)', 'KEDIRI, 23 April 1973', 'CUCU ANNA SAMSIYAH', 'S1 KEPERAWATAN - UNIV PADJAJARAN', 'IRT', 'BANDUNG, 29 November 1981'),
('NW85779OT', '202202116', NULL, 'ANNISA FARHANA SYAKIRA', 'Bekasi', '2015-05-14', 'P', '56f14', 2022, 'ANNISA', '2', '18', '107', 'L', 'Komp. Masnaga Jl. Palem 5 Blok F no 997 Jaka Mulya Bekasi Selatan', '08121374410', '81315833952', '', 'Toto Rusmanto,Mcom, PhD', 'S3', 'Dosen', 'Cirebon 20 Juni 1970', 'Yeni Noviana Sari', 'D3', 'Swasta', 'Jakarta 27 November 1979'),
('OD58652CJ', '202002044', NULL, 'SAHLA HAFIZHA DIPUTRI', 'Bekasi', '2014-08-10', 'P', 'wkv42GPmX', 2020, 'SAHLA', '4B', '10', '114', 'L', 'Villa Jakasetia Blok H no 16 Bekasi', '085624106866', '8569902556', '', 'Dendi Riyadi Utomo', 'S1', 'BUMN', 'Jakarta 25 Juni 1985', 'Yulaintini', 'S1', 'Swasta', 'Tangerang 15 September 1985'),
('OG94118YP', '201902020', NULL, 'MUHAMMAD FAQIH AL GHIFARI', 'JAKARTA', '2013-08-20', 'L', '5ecc', 2019, 'FAQIH', '5A', '16', '', '', 'JL. CANDRABAGA BLOK. AQ 6 NO. 2 BEKASI', '0', '89661796021', '', 'RACHMAD SENTOSA', 'D III', 'WIRASWASTA', 'JAKARTA, 30 JANUARI 1987', 'NURAINI', 'SMK', 'IRT', 'JAKARTA, 19 AGUSTUS 1988'),
('OK79022VS', '202102105', NULL, 'SHAKILA ZIYA NAZURA', 'Bekasi ', '2015-08-02', 'P ', '30d0', 2021, 'ZIYA', '3B', '15', '', 'L', 'VILLA PEKAYON A3 NO. 4', '', '8156048582', '-', 'ZULKIFLI', 'S1', 'Karyawan Swasta ', '13-Oct-82', 'DITHIANE FARA FADILAH', 'S1 ', 'KARYAWATI SWASTA', '28-Jul-82'),
('OO28896QJ', '202302005', NULL, 'AUDREY LASHIRA PRADITYATAMA', 'Bekasi', '2017-04-29', 'P', 'BiOmEVqof', 2023, 'AUDREY', '1', '15 kg', '110 cm', '', 'Jl Pulo Sirih Tengah 15 Blok EA 302, Perum Taman Galaxy Indah, Pekayon Jaya, Bekasi Selatan', '', '081219500151', 'anggarapradityatama@gmail.com', 'Anggara Pradityatama', 'S1 - Sarjana Komunikasi, London School of Public Relation Jakarta', 'Swasta', 'Bogor, 16 Desember 1991', 'Siti Angginami Sadida Pane', 'S1 - Sarjana Ekonomi Universitas Bina Nusantara', 'Swasta', 'Jakarta, 6 Juni 1992'),
('OP14724KX', '202302032', NULL, 'FATHAN ARSYA GUNAWAN', 'SEMARANG', '2016-12-21', 'L', 'BiOmEVqof', 2023, 'FATHAN', '1', '28 kg', '125 cm', '', 'Jl. SMARTHOUSE NO 28 GREENWOOD SEMARANG', '', '0818727271', 'arnestesaakt@gmail.com', 'ARY FAJAR GUNAWAN', 'S2 EKONOMI UGM', 'BUMN', 'Bandung, 13 September 1970', 'ARNESTESA TRINANDHA', 'S3 - PDIE UNIVERSITAS DIPONEGORO', 'AKUNTAN PUBLIK', 'Semarang, 3 januari 1980'),
('OR80699HP', '202302041', NULL, 'KISKALMEERA SYAHFANA MUNAJAT', 'Bekasi', '2016-12-06', 'P', 'BiOmEVqof', 2023, 'KIMI', '1', '26 kg', '123 cm', '', 'Komp. Inkoppol jl. Garuda II no.40 Jakasampurna', '', '082122822733', 'bidarintanawawi@gmail.com', 'Adit Munajat', 'S1 - Man. Informatika Perbanas', 'Swasta', 'Jakarta, 5 April 1984', 'Intan Bidari', 'D3 Secretary', 'IRT', 'Jakarta, 2 Januari 1985'),
('OU93121AR', '202302014', NULL, 'KENZO AKBAR NATAWIDJAJA', 'Jakarta', '2017-01-24', 'L', 'BiOmEVqof', 2023, 'KENZO', '1', '20 kg', '120 cm', '', 'Cluster rosella blok K 5b', '', '087887270766', 'yudhitya.sn@gmail.com', 'Yudhitya Sjarief Natawidjaja', 'S1', 'Swasta', 'Jakarta, 21 September 1990', 'Khen madona', 'S1', 'Swasta', 'Jakarta, 12 Desember 1989'),
('OV47487VD', '202202134', NULL, 'ZARIN AYU SHIDQIA', 'Bekasi', '2015-11-13', 'P', '56f14', 2022, 'ZARIN', '2', '12 Kg', '90 Cm', 'M', 'Jl. Cikunir Raya no 101 RT 01/RW 02. Jakamulya', '85718697759', '85728238923', '', 'Budi Yatmoko', 'SMP', 'Wiraswasta', 'Sragen, 8 Agustus 1985', 'Diah Ayu Puspitarini', 'SMK', 'Ibu Rumah Tangga', 'Sragen, 20 Mei 1992'),
('OV74551PI', '202302007', NULL, 'AISYAH SYAFIQAH PUTRI', 'Jakarta', '2017-05-17', 'P', 'BiOmEVqof', 2023, 'FIQAH', '1', '17 kg', '90 cm', '', 'Vila jaka setia blok A No.A No 5', '', '089661796021', 'faqihsentosa@gmail.com', 'Rachmad sentosa', 'D 3', 'Wirausaha', 'Jakarta, 30 Januari 1987', 'Nur aini', 'Smu', 'IRT', 'Jakarta, 19 Agustus 1988'),
('OW39440JV', '202302010', NULL, 'SHANUM QUEENSHA ARIFIN', 'Bekasi', '2016-04-10', 'P', 'BiOmEVqof', 2023, 'SHANUM', '1', '27 kg', '123 cm', '', 'Komplek pemda jl cemara 1 blok a5 no 15 jati asih bekasi', '', '085643910060', 'arifinkritingg@gmail.co.id', 'Arifin', 'S1 teknik mesin ums', 'Swasta', 'Demak, 5 November 1984', 'Happy meilani', 'S1 ekonomi UNS', 'IRT', 'Sragen, 27 Mei 1989'),
('OX58901MZ', '202202123', NULL, 'HAFIZ FIKRI MUBAROK', 'Purwakarta', '2015-08-12', 'L', '56f14', 2022, 'HAFIZ', '2', '12 kg', '100 cm', 'S', 'JL.AMARILIS 1 BLOK AH.26 KEMANG PRATAMA 2 BEKASI, KEL.BOJONG RAWALUMBU', '081320119880', '081320119880', 'zacky_ii@yahoo.com', 'Zaki mubarok', 'S2', 'Wiraswasta', 'Tanggerang,10 Januari 1980', 'mirna Komalasari', 'S1', 'IRT', 'Bandung,15 Juni 1982'),
('OY79879VN', '202302031', NULL, 'ABU AL BIRUNI IBRAHIM SUHADA', 'Bekasi', '2017-02-23', 'L', 'BiOmEVqof', 2023, 'BIRRU', '1', '18,2 kg', '112 cm', '', 'Cluster Lavesh SA5.16 no 12 Setia Asih - Tarumajaya - Bekasi', '', '08118416666', 'ahmadcs89@gmail.com', 'Ahmad Chaerus Suhada', 'S1 - Sarjana Statistika IPB', 'Swasta', 'Bekasi, 3 Oktober 1989', 'Puspalia Ayudiar Setiawati', 'S1 - Sarjana Statistika IPB', 'IRT', 'Sumedang, 10 Maret 1990'),
('PA81779QE', '201902016', NULL, 'AL GHAZI NAUFAL WIJAYA', 'BANDUNG', '2012-08-20', 'L', '5ecc', 2019, 'AL GHAZI', '5A', '21', '', '', 'JL. KETAPANG XI, PPI BLOK. DD 29 NO. 15 BEKASI', '0', '82298490414', '', 'ALMAJI AKUNG WIJAYA', 'S1', 'PNS', 'TEMANGGUNG, 13 AGUSTUS 1986', 'SYINDI NOPIANI', 'S1', '-', 'JAKARTA, 04 NOVEMBER 1994'),
('PG37906EF', '202302002', NULL, 'ZILLJIZAN SEFERAGIC ZIDNI ILMA', 'Jakarta', '2018-01-03', 'L', 'BiOmEVqof', 2023, 'JIZAN', '1', '11 kg', '90 cm', '', 'griya kemang raya no.91 . jl kemang raya. jaticempaka bekasi', '', '087887991901', 'dinarputripratiwi@gmail.com', 'urida zidni ilma', 'S1 - teknik elektrp', 'swasta', 'Semarang, 11 Juni 1987', 'dinar putri pratiwi', 's1 - pendidikan anak usia dini', 'IRT', 'Palembang, 22 Agustus 2009'),
('PI80552JJ', '201902005', NULL, 'WULAN KHANSA HUMAIRA', 'BEKASI', '2012-10-13', 'P', '5ecc', 2019, 'WULAN', '5B', '27', '', '', 'JL. WIJAYA BLOK. B NO 13 JAKA SAMPURNA', '0', '81296633300', '', 'RYNO YOGA PRATAMA', 'S1', 'WIRAUSAHA', 'JAKARTA, 15 DESEMBER 1978', 'CYNTHIA DEWI SAVITRI', 'S1', 'IRT', ''),
('PL88356OE', '202202130', NULL, 'RAFIF AUFA PASARIBU', 'Bekasi', '2015-06-15', 'L', '56f14', 2022, 'RAFIF', '2', '18', '143', 'L', 'Villa Jakasetia Blok H no 3 Bekasi', '0811873548', '811810791', '', 'Romi Adlan Pasaribu', 'S1', 'Swasta', 'Plaju 22 April 1973', 'Devi Leonisa Niko', 'D3', 'IRT', 'Jakarta 15 Agustus 1977'),
('PN21896KQ', '202302045', NULL, 'ALDEEBARAN SHAQUILE PRATAMA BEY', 'Tangerang', '2017-05-10', 'L', 'BiOmEVqof', 2023, 'AL', '1', '17 kg', '117 cm', '', 'Perumahan Taman Cikunir Indah Jl. Nusantara 6C Blok A1 No 14 RT 06/11', '', '082113576280', 'adybey32@gmail.com', 'Ady Pratama Bey', 'S1 - Sarjana Ekonomi STMT Trisakti', 'PNS', 'Jakarta, 31 Januari 1989', 'Chifik Fahmi Putri Pratama', 'SMA', 'IRT', 'Jakarta, 27 Agustus 1991'),
('PQ23617RD', '202002073', NULL, 'MUHAMMAD SHABAZ AURIGA', 'Bekasi', '2017-04-27', 'L', 'wkv42GPmX', 2020, 'AURIGA', '4A', '20', '113', 'M', 'Jl. Letnan Arsyad RT.03/24 no 4 Kayuringin Jaya Bekasi', '081242266681', '895346462706', '', 'Taufik Hidayat', 'S1', 'Driver ojol', 'Bekasi 10 Desember 1981', 'Kiki Rizkiah', 'SMA', 'IRT', 'Jakarta 12 Desember 1988'),
('QI24511QI', '201902032', NULL, 'KHEYSA AZZAHRA', 'BARRU', '2012-01-28', 'P', '5ecc', 2019, 'KHEYSA', '5B', '', '', '', 'Perumahan Green Leaf Blok F5, Jatibening, Bekasi', '', '81372611277', ' iswanladoi@gmail.com\n iswanladoi@gmail.com\n iswanladoi@gmail.com', 'ISWAN\nISWAN', 'S1', 'Wiraswasta', 'Ammerung, 25 Mei 1979', 'Rahmawati', 'S1', 'PNS', ' Litae, 04 Mei 1983'),
('QI32384UO', '201902026', NULL, 'MUHAMMAD RAFA PRATAMA', 'BEKASI', '2012-09-27', 'L', '5ecc', 2019, 'RAFA', '5A', '', '', '', 'JL. LETNAN ARSYAD NO. 30 KAYURINGIN', '', '81808891911', '', 'FAJRI ASDINAL', 'S1', 'WIRASWASTA', 'JAKARTA, 1 DESEMBER 1981', 'KOMALASARI', 'S1', 'WIRASWASTA', 'BEKASI, 5 MARET 1986'),
('QV22890JS', '202302043', '-', 'ABDURRAHMAN IHSAN AKBAR', 'Sukabumi', '2017-06-24', 'L', 'BiOmEVqof', 2023, 'AA IHSAN', '1', '13,8 kg', '100 cm', '', 'Hasan / Anggina Jln. Pondok Jingga Mas III Blok F5 No 19 Jakasetia, Kec. Bekasi Selatan Kota Bekasi Jawa Barat 17147', '', '087856276326', 'sofianhasanh@gmail.com', 'HASAN SOFIAN HERNAWAN', 'S1 Teknik Kimia ITB', 'Karyawan', 'BANDUNG, 14 Januari 1989', 'Anggina Oktapia Latief', 'S1 Psikologi Univ. Ahmad Dahlan', 'IRT', 'Sukabumi, 15 oktober 1987'),
('QZ12309MQ', '202202132', NULL, 'THARIQ ZIYAD ABDURRAHMAN', 'Jakarta ', '2015-06-14', 'L', '56f14', 2022, 'THARIQ', '2', '16', '', 'M', 'Jl. Lembah Aren X Blok K16/21 Kav DKI RT.02/09 Pondok Kelapa Jakarta', '08568806057', '8121043828', '', 'Adhib Rakhmanto', 'S1', 'Swasta', 'Kulon Progo 1 September 1987', 'Sefty Kurnadia Weny', 'S1', 'IRT', 'Jakarta 12 Februari 1986'),
('RB39386KD', '202002062', '-', 'ABDURRAHMAN GHANIYY ALHAFIDZ', 'Padang ', '2014-04-05', 'L', 'wkv42GPmX', 2020, 'HAFIDZ', '4 A', '22', '117', '', 'Jl. Taman Agave V Blok M6/27 Taman Galaxi Bekasi', '08159653394', '81514577689', '', 'Tedi Jombang Nugraha', 'S1 ', 'Swasta', 'Padang 30 Maret 1979', 'Pipit Anasthasia', 'S1', 'IRT', 'P Berandan 2 November 1978'),
('RB81489DE', '202302047', NULL, 'EZHAR MALIQ ALTHAFURRAHMAN HARAHAP', 'Bekasi', '2017-03-21', 'L', 'BiOmEVqof', 2023, 'EZHAR', '1', '19,5 kg', '110 cm', '', 'Jl. Jambu 1 no. 174 rt 06/07 Perumnas 1 kranji bekasi barat', '', '08118823796 - 087831074998', '-', 'Rahmad Sahuli Harahap (alm)', 'D3 tehnik informatika Bsi', '-', 'Meda, 1 September 1981', 'Ririn Kustanti', 'D3-Keperawatan Angkatan Udara', 'PNS', 'Jakarta, 16 Mei 1987'),
('RH83918UY', '202102084', NULL, 'ADELARD ZEROUN ARKAAN APSANRA', 'Bekasi', '2015-01-14', 'L', '30d0', 2021, 'ARKAAN', '3A', '', '', '', 'Komplek Depnaker Taman Wisma Asri Jalan Garuda I Blok L21 No. 5 Teluk Pucung Bekasi Utara 17121', '', '', '', 'Ikhsan Pramana', '', 'Karyawan Swasta', '', 'Rahmi Hayati', '', 'Ibu Rumah Tangga', ''),
('RJ22649HF', '201902017', NULL, 'ANANDA RAYKA MUFID', 'PURWOKERTO ', '2013-03-21', 'L', '5ecc', 2019, 'RAYKA', '5A', '20', '', '', 'CLUSTER ASFA NO. 14, JL. H. GOTI JAKA MULYA BEKASI', '', '85726440400', '', 'KARDI', 'S1', 'KARYAWAN SWASTA', 'JAKARTA, 03 APRIL 1984', 'VIDYA EKANINGTYAS', 'S1', 'DOKTER', 'PURWOKERTO, 08 OKTOBER 1986'),
('RJ58796TW', '202002065', NULL, 'AQILA SYAZA FALIA', 'Jakarta', '2014-03-07', 'P', 'wkv42GPmX', 2020, 'AQILA', '4B', '20', '', 'XL', 'Green Leaf Residence Blok F 10 Bekasi', '081908201067', '8111925858', '', 'Jerri Fabian Irman', 'S1', 'Swasta', 'Padang 27 Januari 1989', 'Cut Natahalia Rahmi', 'S1', 'IRT', 'Padang 13 Juni 1989'),
('RR35484RU', '201902001', NULL, 'NABIILAH NURSALMA', 'BEKASI', '2013-06-25', 'P', '5ecc', 2019, 'NABILAH', '5B', '16', '', '', 'PERUMAHAN GREEN LEAF BLOK D 16', '0', '85711280007', '', 'FIRMAN JOFARI', 'S1', 'WIRASWASTA', 'JAKARTA, 19 JULI 1981', 'MEISYA HELENDA', 'S1', 'IRT', ''),
('RT67297PJ', '201902012', NULL, 'NASHRULLAH FAIZ AMMAR', 'BEKASI', '2013-11-02', 'L', '5ecc', 2019, 'FAIZ', '5A', '0', '', '', 'THE GREEN VIEW BLOK C NO. 33A JAKA SETIA BEKASI', '0', '82278291322', '', 'WING HARTOPO', 'S2', 'PNS', 'KUDUS, 14 JUNI 1982', 'RISKA RESTU SADAYA', 'S1', 'GURU', 'JAKARTA, 06 AGUSTUS 1979'),
('RX42507JN', '202302030', NULL, 'ATQEEA SYBILL HENDRAWAN', 'Bekasi', '2016-04-21', 'P', 'BiOmEVqof', 2023, 'QIA', '1', '17 kg', '120 cm', '', 'Jln.pulau yapen 16 no 240', '', '081380466922', 'afadjrahannisa@gmail', 'Ade Putra Hendrawan', 'SLTA', 'Wirausaha', 'Saning Bakar, 28 Juni 1984', 'Hannisa Afadjra', 'SLTA', 'IRT', 'Saning Bakar, 29 Juli 1990'),
('RX48352KG', '202302013', NULL, 'KHALISA SYAFA DARA SISPUTRA', 'Jakarta', '2016-07-09', 'P', 'BiOmEVqof', 2023, 'KHALISA', '1', '18 kg', '101 cm', '', 'Perumahan Villa Mas Indah Blok A2 nomer 11 Kelurahan Perwira Kecamatan Bekasi utara', '', '081319766555', 'Rama_sisputra@yahoo.com', 'Rama Sisputra', 'S1', 'Wirausaha', 'Jakarta, 23 Juni 1987', 'Mufida Melati putri', 'S1', 'IRT', 'Surabaya, 2 Mei 1994'),
('SH26262TW', '202102104', NULL, 'REZKY KHOIRY ABDIRRAHMAN', 'Magelang', '2014-06-22', 'L', '30d0', 2021, 'REZKY', '3A', '16', '110', 'M', 'Cluster Taman Firdausi Kav 3 Jatibening Baru', '081311502036', '81288636347', '', 'Daryatno Subekti', 'S1', 'PNS Pemprov DKI', 'Mataram 17 Agustus 1982', 'Indah Susanti', 'S1', 'IRT', 'Magelang 23 Desember 1990'),
('SI19861ZX', '202202140', NULL, 'FATIMAH AZIZAH ARIDIA', ' Jakarta', '2016-01-19', 'P', '56f14', 2022, 'AZIZAH', '2', ' ', ' ', '', ' Perumahan Taman Century 1 Blok N2 Pekayon', ' -', '81298137228', ' superiyan@gmail.com', ' Riyan Tamara', ' S2', ' Karyawan', 'Jakarta, 28 April 1981', ' Diana Tri Amelia', ' S1 Kedokteran', ' Ibu Rumah Tangga', 'Payakumbuh, 23 Maret 1983'),
('SK21184BK', '202302022', NULL, 'MUHAMMAD NABIL RAZAN PUSPANEGARA', 'Bekasi', '2016-08-09', 'L', 'BiOmEVqof', 2023, 'NABIL', '1', '16 kg', '119 cm', '', 'Jl pulo sirih timur 8 ca 240 taman galaxy indonesia', '', '0817173380', 'febymahkotasandy@gmail.com', 'chandra paksi puspanegara', 'D3', 'Swasta', 'Bandung, 3 Maret 1980', 'Feby mahkota arisandy', 'D3', 'IRT', 'Palembang, 2 April 1985'),
('SM64964VK', '201902009', NULL, 'MEDISHA NAURA SALSABILA', 'BEKASI', '2012-07-19', 'P', '5ecc', 2019, 'NAURA', '5B', '20,5', '', '', 'JL. NURUL HUDA iv NO. 1 RT.02/015 JAKA SAMPURNA BEKASI', '', '8161316045', '', 'MUHAMAD TOHIRUDIN', 'S1', 'WIRASWASTA', 'JAKARTA, 13 MARET 1985', 'AMELLA RISMARINA', 'S1', 'IRT', 'KOTABARU, 14 JULI 1986'),
('ST31389LC', '202302009', NULL, 'ABIDZAR RAFFASYA RIFA MAHARI', 'Bekasi', '2017-01-14', 'L', 'BiOmEVqof', 2023, 'ABIDZAR', '1', '18 kg', '119 cm', '', 'The Green View A29 galaxy', '', '081218182124', 'ririnroska@gmail.com', 'Faisal', 'S1 - ekonomi', 'Swasta', 'Aceh, 24 November 1975', 'Ririn Roska', 'D3 - Manajemen', 'IRT', 'karang Anyar, 19 November 1982'),
('ST88772TG', '202102097', NULL, 'KASTARA RIAN ANGKASA', 'Bekasi', '2015-05-13', 'L', '30d0', 2021, 'TARA', '3A', '18', '100', 'L', 'Pondok Pekayon Indah, Blok B3 No. 7', '81806062013', '818964848', '', 'Surianto', 'S1', 'Swasta', 'Belawan, 13 Mei 1980', 'Ratih Ferlianty', 'S1', 'Ibu Rumah Tangga', 'Jakarta, 1 Juli 1978'),
('SV86534QT', '202202144', NULL, 'MUHAMMAD ABQARY GIBRAN ADZIM', 'Jakarta', '2015-09-02', 'L', '56f14', 2022, 'GIBRAN', '2', '14 kg', '105 cm', 'M', 'Perumahan Pondok Cipta Blok E no.35 , Bintara, Bekasi', '0', '081288738100/087724213524', 'agyfauzul@gmail.com', 'Muhammad Fauzul Adzim', 'SLTA', 'Wiraswasta', 'Jakarta,9 Maret 1981', 'Rizka Fadhila', 'S1', 'Apoteker', 'Bukit tinggi, 22 Januari 1988'),
('SZ33960SR', '202102096', NULL, 'JASMEENA IRFANNISA', 'Bekasi', '2014-10-20', 'P', '30d0', 2021, 'MEENA', '3B', '20 Kg', '107 cm', 'L', 'Cluster Rosella A7 Jl. Jatiluhur Raya No.117 Jakasampurna', '81511940000', '81511940000', '', 'Deni Irpan Helmi', 'S1', 'Wirausaha ', 'Tasikmalaya, 15 Juni 1983', 'Prilia Lestari', 'S1', 'Karyawan Swasta', 'Cluster Rosella A7 Jl. Jatiluhur Raya No.117'),
('TA49572MJ', '202202110', NULL, 'ABIMANYU IJLAL RAFIF', 'Sidoarjo', '2016-04-05', 'L', '56f14', 2022, 'ABI', '2', '17,5 Kg', '-', '-', 'Villa Pekayon Blok A3 / 12', '-', '8122227520', '', 'Alifia Rahman', 'S1', 'Karyawan Swasta', 'Jember, 11 Maret 1986', 'Ajeng IR', 'S1', 'PNS', 'Mojokerto, 20 Januari 1987'),
('TC33519LR', '202302021', NULL, 'MUHAMMAD ANDISTRA ZAYN AS SUDAIS', 'Jakarta', '2016-02-09', 'L', 'BiOmEVqof', 2023, 'ZAYN', '1', '17 kg', '110 cm', '', 'Jl. Rawabebek Gg. Norin RT. 11 RW. 01 No. 205 Kel. Pulogebang Kec. Cakung Jakarta Timur 13950', '', '082110069990', 'and1rahman24@yahoo.com', 'Andi', 'S1 - Sarjana Hukum', 'Swasta', 'Jakarta, 14 Januari 1981', 'Khairia Mahdalena', 'S1 - Sarjana Ekonomi', 'IRT', 'Jakarta, 12 Desember 1981'),
('TC95335QN', '202302024', NULL, 'MUHAMMAD MALIQ AS SUDAIS', 'Bekasi', '2017-02-18', 'L', 'BiOmEVqof', 2023, 'MALIQ', '1', '21 kg', '110 cm', '', 'Cluster Taman Firdausi no 17 Jatibening', '', '08159990012', 'septa.faishal@gmail.com', 'Septa Faishal Ismail', 'S1 komputer', 'Swasta', 'Plaju, 24 September 1982', 'Liyan Fitriyani', 'S1 komunikasi', 'IRT', 'Sumedang, 6 Maret 1986'),
('TD45923SG', '201902018', NULL, 'HUSAIN MUHAMMAD ALATAS', 'BEKASI', '2013-01-15', 'L', '5ecc', 2019, 'HUSAIN', '5A', '19', '', '', 'JL. PAKIS 3D BB44 NO.6 RT.04/12 PONDOK  PEKAYON INDAH BEKASI', '', '81286276710', '', 'MUHAMMAD ALATAS', 'S1', 'KARYAWAN SWASTA', 'BEKASI, 11 MARET 1984', 'NOORMA SHOLIHAT', 'D IV', 'IRT', 'BEKASI, 22 NOVEMBER 1985'),
('TK46261JK', '202102087', NULL, 'ALISHA ISLAMADINA RAHMADHI', 'Bekasi', '2014-08-08', 'P', '30d0', 2021, 'ALISHA', '3B', '14,5 Kg', '-', 'M', 'Jl. Melati 1 Blok B No.27 Perum Margahayu Jaya', '-', '85710112025', '', 'Dhimas Agung PRASETYA', 's1', 'Karyawan Swasta', 'Bekasi, 10 Januari 1989', 'Ellen Rahmawati', 'S1 ', 'Ibu Rumah Tangga', 'Jakarta, 17 Juni 1989'),
('TK56406GR', '202202136', NULL, 'SHANUM ALULA RINJANI', ' Bekasi', '2016-09-30', 'P', '56f14', 2022, 'SHANUM', '2', ' ', ' ', '', ' Komplek AL/Kemang Ifi Graha Jl. Bonang Baru I Blok A2 No. 17B', '218205771', '82112021461', ' infobagus.sls@gmail.com', ' Bagus Marta Yulian', ' ', ' ', 'Jakarta, 19 Mei 1991', ' Herlin Devianti', ' S2', ' Wiraswasta', 'Bekasi, 24 Desember 1987'),
('TT39319UP', '202102091', NULL, 'AQILA SYUA ARYANTY ', 'BANDAR LAMPUNG ', '2015-04-25', 'P ', '30d0', 2021, 'AQILA ', '3B', '14', '95', 'L', 'PULO PERMATASARI BLOK A1 NO.19 ', '021-8202785', '815884849', '', 'ANDRI BUDHIANTO ', 'S1', 'PEGAWAI BUMN ', '08/25/1791', 'YURIA KARYANTI ', 'D3', 'Ibu Rumah Tangga', '29-Jul-75'),
('TU17972SL', '202302046', NULL, 'ALVARENDRA AGHAOZORA NUGROHO', 'Jakarta', '2016-05-21', 'L', 'BiOmEVqof', 2023, 'AGHA', '1', '29 kg', '125 cm', '', 'Arta Kranji residence blok b23 Kranji Bekasi barat 17135', '', '085693260841', 'ariss.nugroho8@gmail.com', 'Aris nugroho', 'S1 - sarjana pendidikan Akuntansi UNJ', 'Swasta', 'Jakarta, 8 Juni 1988', 'Ndaru pamungkas', 'S1 - pendidikan Akuntansi UNJ', 'IRT', 'Jakarta, 7 Oktober 1987'),
('TV15964EZ', '202302023', NULL, 'HAWWA ANINDYA BARRAH', 'Banyumas', '2016-04-24', 'P', 'BiOmEVqof', 2023, 'BARRAH', '1', '27 kg', '120 cm', '', 'Jl Pandu Dewanata Blok 4 No 30 RT 04 RW 21 Perumahan Bumi Satria Kencana Kelurahan Kayuringin Jaya Bekasi Selatan', '', '081234560602', 'hr.firmanzah@gmail.com', 'Harry Firmanzah', 'S1 - Sarjana Ekonomi ABFI Perbanas', 'Karyawan BUMN', 'Bekasi, 2 Juni 1986', 'Bekti Endah Pamuji', 'S1 - Sarjana Farmasi Muhammadiyah Purwokerto', 'IRT', 'Cilacap, 9 Desember 1986'),
('TZ39819SN', '201902011', NULL, 'MUHAMMAD SHAQUEEL PRAKARSA', 'BEKASI', '2013-02-04', 'L', '5ecc', 2019, 'SHAQI', '5A', '23', '', '', 'JL. PONDOK JINGGA MAS V BLOK E 3/19 PONDOK TIMUR MAS BEKASI SELATAN ', '', '8561209238', '', 'DEDY BAGUS PRAKARSA', 'S2', 'PNS', 'BEKASI, 23 APRIL 1984', 'ARI ASTRI YUNITA', 'S2', 'PNS', 'JAKARTA, 04 JUNI 1983'),
('UA28990FT', '201902024', NULL, 'THORIQUL ABRAR KARIM', 'JAKARTA', '2013-05-30', 'L', '5ecc', 2019, 'THORIQ', '5A', '20', '', '', 'PERUM PURI ASIH SEJAHTERA JL. MALUKU BLOK B NO. 79 ', '0', '81319790353', '', 'ANDRI ISMAYANDRI', 'S2', 'WIRAUSAHA', 'JAKARTA, 30 DESEMBER 1974', 'NURINI', 'S1', 'IRT', 'SEMARANG, 20 NOVEMBER 1977'),
('UE12380KN', '202302019', NULL, 'MAAJED AHMAD HILABI', 'Bekasi', '2017-01-05', 'L', 'BiOmEVqof', 2023, 'MAAJED', '1', '20 kg', '115 cm', '', 'Jl. Lembah Palem V Blok J7 no 11 pondok kelapa Jaktim', '', '085101712989', 'madorgiv@gmail.com', 'Ahmad Lutfi Hilabi', 'D1 - Desain Grafis', 'Wirausaha', 'Jeddah, 26 Agustus 1985', 'Nadra Husein Aziz', 'S1 - Sastra Inggris', 'Guru', 'Jeddah, 3 Juni 1985'),
('UU97414KR', '202002072', NULL, 'HANIM FARRAS DAMITSA', 'Banyumas', '2014-06-05', 'P', 'wkv42GPmX', 2020, 'HANIM', '4B', '20', '', 'L', 'Jl. Pandu DewanantaBlok 4 no 30 BSK Kayuringin Bekasi', '0812345606062', '81391554222', '', 'Harry Firmanzah', 'S1', 'Swasta', 'Bekasi 6 Februari 1986', 'Bekti Indah Pamuji', 'S1', 'IRT', 'Cilacap 13 September 1986'),
('UW34326OM', '202202127', NULL, 'MUHAMMAD ELVARO RAFARDHAN', 'Bekasi', '2016-07-16', 'L', '56f14', 2022, 'FARDHAN', '2', '', '', '', 'Taman Cikas Blok C 14 No. 16, Pekayon Jaya, Bekasi Selatan, 17148', '', '', '', 'Rama Bagus Perkasa', '', 'Karyawan BUMN', '', 'Nadia Imaniar Sidqon', '', 'Dokter / Ibu Rumah Tangga', ''),
('UW56790EF', '202002066', NULL, 'ABRISAM SYAHDAN GUSTIAN', 'Bekasi', '2013-10-01', 'L', 'wkv42GPmX', 2020, 'ICAM', '4A', '', '', '', 'Cluster Lotus Garden LG 1 -  12 Bekasi', '0811970117', '8111006050', '', 'Wawan Ganjar Kustiawan', 'S1', 'Swasta', 'Ciamis 27 Juni 1968', 'Winarni Julianti', 'S1', 'IRT', 'Jakarta 20 Juli 1985'),
('UY58163UT', '202102092', NULL, 'AR SAKHA DZIKRY TAHER', 'Bekasi ', '2015-06-11', 'L', '30d0', 2021, 'SAKHA', '3A', '13', '87', 'L', 'PONDOK KUNING MAS I BLOK P NO. 3', '', '82122669198', '-', 'ISBUDI', 'D3', 'Karyawan Swasta ', '18-Oct-88', 'ADE KUSUMA WARDANI', 'S1 ', 'Ibu Rumah Tangga', '25-Aug-88'),
('VA60510RJ', '202002080', NULL, 'MUHAMMAD IHSAN ARIA TURSADI', 'Jakarta', '2014-06-19', 'L', 'wkv42GPmX', 2020, 'IHSAN', '4A', '18', '115', 'L', 'Green Jatiasiih Blok A3 Jl. Kampung Bulak Bekasi', '0859225177', '8129982809', '', 'Danie Febriansyah Tursadi', 'S1', 'Swasta', 'Bekasi 28 Februari 1974', 'Maya Safira', 'D1', 'IRT', 'Bandung 26 September 1977'),
('VA98788TC', '202002070', NULL, 'FARHANA MAULIDINA CHOMO', 'Manado', NULL, 'P', 'wkv42GPmX', 2020, 'HANA', '4B', '20', '117', 'L', 'Jl. Samratulangi no 18 Bitung Sulawesi Utara', '08124451123', '8134003740', '', 'HJ Johny Tjomo', 'D3', 'Wiraswasta', 'Kotamubagu 27 Juni 1958', 'GT. Sjamsiah Marsabessy', 'SLTA', 'IRT', 'Minahasa 29 Agustus 1969'),
('VQ73016QJ', '202002047', NULL, 'MUHAMMAD ALFATHAN', 'Bekasi', '2013-06-08', 'L', 'wkv42GPmX', 2020, 'FATHAN', '4A', '23', '', 'XL', '', '', '82227165754', '', '', '', '', '', 'Nanda Hervika Dwi', 'SMK', 'IRT', 'Jakarta 7 Januari 1988'),
('VS12970QJ', '202302042', NULL, 'ADEEVA ZARA MIHARJA', 'Kotabumi', '2017-11-06', 'P', 'BiOmEVqof', 2023, 'ADEEVA', '1', '17 kg', '100 cm', '', 'Sakura regency 3 blok q5 rt 001 rw 019 jatimulya tambun selatan', '', '081295267536', 'friezqaayu65@gmail.com', 'Padmi harja', 'DIII/ STMIK BANI SALEH', 'Wirausaha', 'Ogan lima, 3 April 1984', 'Friesqa ayuningtias', 'S1 ISTN profesi Apoteker', 'Apoteker', 'Kotabumi, 9 Februari 1991'),
('WB48920MB', '202002060', NULL, 'IVANI MALAIKA NOUREEN', 'Bekasi', '2013-08-08', 'P', 'wkv42GPmX', 2020, 'IVANI', '4B', '17', '113', 'L', 'Perum Margahayu Blok. A no. 382 Bekasi Timur', '081288680182', '82213444211', '', 'Tatang Arifin', 'S1', 'Swasta', 'Ciamis 6 April 1982', 'Indah Eka Septiana', 'SMA', 'IRT', 'Jakarta 19 September 1989'),
('WG99667UO', '202302006', '', 'ABDURRAHMAN AKHYAR ALFATIH', 'Jakarta', '2017-06-02', 'L', 'wkv42GPmX', 2023, 'FATIH', '4 A', '20 kg', '120 cm', '', 'Cluster Intan Gardenia No. A4, Jakasetia, Bekasi Selatan', '', '081212969604', 'feronalizaazis@gmail.com', 'Heru Oktaviana', 'SI - Administrasi Niaga UI', 'Swasta', 'Kuningan, 10 April 1986', 'Ferona Liza', 'S1 , Sarjana Ekonomi STEKPI', 'IRT', 'jakarta, 2 September 1988'),
('WN76008IT', '201902010', NULL, 'EILIYAH SHAFA AISHA', 'BEKASI', '2013-10-04', 'P', '5ecc', 2019, 'SHAFA', '5B', '26', '', '', 'JL. MEDAN RAYA BLOK. F NO. 207 JAKA MULYA BEKASI', '', '87883613284', '', 'ADI GINANJAR', 'S1', 'KARYAWAN SWASTA', 'JAKARTA, 10 OKTOBER 1981', 'KRISTIN', 'S1', 'KARYAWAN SWASTA', 'JAKARTA, 09 JUNI 1982'),
('WP85810QX', '202202142', NULL, 'KHAFIF FATIH HANIFA', 'Cimahi', '2016-09-13', 'L', '56f14', 2022, 'KHAFIF', '2', '19.5 kg', '110 cm', '', 'Komp. Padasuka Indah B-40, Padasuka, Cimahi Tengah, Cimahi', ' -', '8111010610', ' ahmadzakyramdani@gmail.com', 'Ahmad Zaky Ramdani', 'S2 Tekhnik Elektronika', 'Karyawan Swasta', 'Bandung, 17 April 1989', 'Ratih Aflita Rahmawati', 'S1 (informatika)', 'Mahasisswa S2/ IRT', 'Cimahi, 10 Oktober 1992');
INSERT INTO `siswa` (`c_siswa`, `nis`, `nisn`, `nama`, `temlahir`, `tanglahir`, `jk`, `c_kelas`, `thn_join`, `panggilan`, `c_klp`, `bbadan`, `tbadan`, `ukuran_baju`, `alamat`, `telp`, `hp`, `email`, `nama_ayah`, `pendidikan_a`, `pekerjaan_a`, `ttl_a`, `nama_ibu`, `pendidikan_i`, `pekerjaan_i`, `ttl_i`) VALUES
('WS28474FJ', '201902029', NULL, 'SAGARA BANYU BIRU', 'BEKASI', '2013-10-06', 'L', '5ecc', 2019, 'SAGARA', '5A', '', '', '', 'jl. Pulo Sirih Utara Dalam IV Blok DD No 195 rt/rw 005/014 Pekayon Jaya,Bekasi selatan', '', '87873821181', '', 'WAHYU CONDRO JD', 'D3', 'karyawan swasta', 'Jakarta, 11 September 1986', 'DITA ADYTIA DAMAYANTI', 'S1', 'Karyawan swasta \nKaryawan swasta', 'Bogor, 19 Agustus 1986'),
('WW41322YL', '202302033', NULL, 'ABQARY KAISANU NARENDRA', 'Bekasi', '2017-08-04', 'L', 'BiOmEVqof', 2023, 'KIANU', '1', '19 kg', '115 cm', '', 'Jl Damar 9 blok C no 163. Perumahan Pekayon 2. Bekasi Selatan', '', '081374008874', 'hariendralesmana@gmail.com', 'Hari Endra Lesmana', 'S1 - Sarjana Teknik Pertanian IPB', 'Swasta', 'Sengeti, 22 Januari 1989', 'Kusuma Ratih', 'S1 - Sarjana Teknologi Industri Pertanian IPB', 'Swasta', 'Bekasi, 1 September 1989'),
('XA49534WR', '202202114', NULL, 'AIDIL HAMIZAN IBRAHIM PUSPANEGARA', 'Bekasi', '2014-10-04', 'L', '56f14', 2022, 'HAMIZAN', '2', '12 Kg', '90 Cm', 'M', 'Jl. Pulo Sirih 8 GA 240 Taman Galaxy Indah', '021-8224808', '81294776399', '', 'Chandra Pakai Puspanegara', 'D3', 'IT Swasta', 'Bandung, 3 Maret 1980', 'Feby Mahkota Arisandy', 'D3', 'Ibu Rumah Tangga', 'Palembang, 4 Februari 1985'),
('XB80865QU', '202102086', NULL, 'ALBY NAFIAN RABBANI', '', NULL, 'L', '30d0', 2021, 'ALBY', '3A', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', ''),
('XG99944DF', '202302025', NULL, 'SALMAN ARRIZKY KURNIAWANTO', 'Bekasi', '2016-01-06', 'L', 'BiOmEVqof', 2023, 'SALMAN', '1', '16 kg', '120 cm', '', 'Jl Jalak Blok DDIII no.8, Pondok Pekayon Indah, Pekayon Jaya, Bekasi Selatan', '', '085884973408', 'kurniawanto.84@gmail.com', 'Kurniawanto', 'S1 - Sarjana Teknik ITS', 'Wirausaha', 'Bekasi, 30 Desember 1984', 'Nanin Wailisahalong', 'S1 - Sarjana Teknik ITS', 'IRT', 'Surabaya, 29 Januari 1985'),
('XM53131XL', '202002043', NULL, 'MUHAMMAD AZZAM ALI GHAITSAN', 'Jakarta', '2013-05-03', 'L', 'wkv42GPmX', 2020, 'GHAITSAN', '4A', '20', '120', 'XL', 'Victoria Garden Boulevard no. 30 Jaka Setia Bekasi', '081277128888', '81256275555', '', 'Dadang Somantri', 'SMA', 'TNI AL', 'Subang 10 Mei 1971', 'Niswatul Ulya ST,MM', 'S2', 'Wiraswasta', 'Pontianak 5 Desember 1980'),
('XM88283CM', '202102106', NULL, 'UWAIS AHZA RABBANI', 'Bekasi', '2015-06-28', 'L', '30d0', 2021, 'UWAIS', '3A', '', '', '', 'Cluster Intan Gardenia Blok B no 4. Jakasetia.', '81281349979', '81213332120', '', 'Wigih Laksana Yudha', 'S1', 'Karyawan Swasta', 'Tulung Agung, 22 Juni 1984', 'Gendis Ryenda Melati Sekarini', 'D3', 'Pegawai BUMN', 'Bekasi, 6 Januari 1988'),
('XP93307HC', '202202118', NULL, 'ATHIFA FARANISA AADYA', 'Bekasi', '2016-02-03', 'P', '56f14', 2022, 'ATHIFA', '2', '12 Kg', '-', 'S', 'Jl. Gardenia Utara Blok B3 No. 20 Jakasetia, Bekasi', '-', '8568011756', '', 'Ferra Rahadian', 'S2', 'Karyawan Swasta', 'Semarang, 9 Juni 1987', 'Ranti Yunizar', 'S1', 'Karyawan Swasta', 'Jakarta, 4 Juni 1989'),
('XT64623RG', '202102103', NULL, 'MUHAMMAD ZAFRAN JOBAN', 'JAKARTA', '2015-03-21', 'L', '30d0', 2021, 'ZAFRAN', '3A', '14,5', '92', 'S', 'PONDOK JINGGA MAS I BLOK F2 NO. 5', '', '81212701818', '-', 'RIZA WILHANSYAH', 'S1', 'Karyawan Swasta ', '18-Oct-90', 'EVA YULYANTI', 'S1 ', 'Ibu Rumah Tangga', '3-Jul-87'),
('XV61369XB', '202302020', NULL, 'MUHAMMAD HANIF MAULANA TURSADI', 'Jakarta', '2017-01-03', 'L', 'BiOmEVqof', 2023, 'HANIF', '1', '18 kg', '100 cm', '', 'Green Jati Asih No. A3 Jl. Subur 1 Komp Pemda Blok B, Jati Asih Bekasi', '', '08595922517', 'danie_282@yahoo.com', 'Danie Febriansyah Tursadi', 'S1', 'Swasta', 'Bekasi, 28 Februsri 1974', 'Maya Safira', 'D3', 'IRT', 'Bandung, 26 September 1977'),
('XW35128LQ', '202202139', NULL, 'CALLYSTA RAFIFA AZZAHRA', ' Bekasi', '2015-04-09', 'P', '56f14', 2022, 'CHATTA', '2', '', ' 117cm', '', ' Jl. Sersan Idris No.128 Rt.003/Rw.003 Kelurahan Margajaya, Kecamatan Bekasi Selatan. 17141', ' -', '81317325215', ' imelramadhania17@yahoo.com', ' Panji Dewantoro', ' S1', ' Karyawan Swasta', 'Bandung, 02 April 1988', ' Imel Ramadhania', ' S1', ' Karyawan BUMD', 'Bekasi, 15 Mei 1988'),
('XY59504IJ', '202302026', NULL, 'GHADIYA AVA MARIAM', 'Jakarta', '2016-04-28', 'P', 'BiOmEVqof', 2023, 'GHADIYA', '1', '20 kg', '117 cm', '', 'Jln Pondok Merah Mas Blok D1 No. 10', '', '08111074975', 'genta.moerita@gmail.com', 'Sunny Aulia', 'S1-Sarjana Pendidikan Arsitektur', 'Swasta', 'Tanggerang, 6 Juli 1988', 'Genta Moerita', 'S2-Master Of Business Administration', 'Swasta', 'Padang, 28 Desember 1987'),
('YA70271TP', '202302001', NULL, 'ZIDANE BHUMI ARRAZI', 'Bekasi', '2017-08-04', 'L', 'BiOmEVqof', 2023, 'BHUMI', '1', '19 kg', '105 cm', '', 'Jalan Jatiluhur Raya 117, Cluster Rosella Blok Arelian No.6 Rt.2/3 Jakasampurna Berkasi Barat 17145', '', '081717756111', 'shirofah89@gmail.com', 'Muhammad Arif Sulaiman', 'S2 - Ilmu Hukum', 'Lawyer', 'Aceh Timur, 7 Nov 1983', 'Sitti Musyarrafah', 'S1 - Psikologi Pendidikan', 'IRT', 'Jakarta, 18 Januari 1989'),
('YG25917AJ', '202102108', NULL, 'BARI AHMAD MAKARIM', 'Jakarta', '2014-10-21', 'L', '30d0', 2021, 'BARI', '3A', '20 kg', '115 cm', 'M', 'PTM blok G2 no 1 A', '085218076715', '85260782581', 'm_donnys@yahoo.com', 'Muhammad Donny Satriawan', 'S1', 'Karyawan swasta', 'Jakarta, 5 Oktober 1979', 'Irhami', 'S1', 'IRT', 'Lhokseumawe, 26 Juli 1989'),
('YL95257CZ', '202202143', NULL, 'QONITA FAUZAN', 'Tegal', '2015-12-24', 'P', '56f14', 2022, 'QONITA', '2', '', '', '', '', '', '', '', 'Fauzan Bawazir', '', '', '', 'Tantri Novita Sari', '', '', ''),
('YQ70744PQ', '201902021', NULL, 'ARGI MUHAMMAD AZKA DHIYA', 'BEKASI', '2013-03-01', 'L', '5ecc', 2019, 'ARGI', '5A', '38', '', '', 'GOLDEN CITY CLUSTER GREENWOOD BLOK D 2 TELUK PUCUNG BEKASI UTARA', '0', '81310982527', '', 'MUHAMMAD BARKAH ADHISATIA', 'D III', 'KARYAWAN SWASTA', 'JAKARTA, 27 MEI 1983', 'SUWINTRY RACHMAN', 'SMA', 'IRT', 'JAKARTA, 28 MARET 1977'),
('ZD88203HW', '202202135', NULL, 'DEVA HAFIDZ YUKITAMA', ' BEKASI', '2015-10-11', 'L', '56f14', 2022, 'DEVA', '2', '10  kg', ' 110 cm', '', ' Jalan Bintara 14 Gang HM Tohir 3 Rt.001/009 No.133K Bekasi Barat 17134', ' -', '8999293580', ' yuktika4januari@gmail.com', ' BIMA WIBAWA ADITAMA', ' S1 TEKNIK', ' SALES ENGINEER', 'Sabang, 26 September 1991', ' YUKTIKA', ' S1 TEKNIK', ' KARYAWATI', 'Jakarta, 17 Oktober 1990'),
('ZI86305VO', '201902025', NULL, 'ALYAA RAMADHANI PUTRI', 'BEKASI', '2012-08-02', 'P', '5ecc', 2019, 'ALYAA', '5B', '15', '', '', 'JL. GRIYA CENDANA 3 BLOK. A NO. 21 PEKAYON JAYA', '', '81218994238', '', 'NANA PRIATNA', 'SMA', 'WIRASWASTA', 'CIAMIS, 03 DESEMBER 1982', 'ANGGRAENI AYU LESTARI', 'S1', 'IRT', 'BEKASI, 23 AGUSTUS 1987'),
('ZJ25478IL', '202302017', NULL, 'SOFIE ALMAHYRA SAKHI', 'Serang', '2016-05-21', 'P', 'BiOmEVqof', 2023, 'SOFIE', '1', '17 kg', '115 cm', '', 'PERUM PONDOK TIMUR MAS BLOK F1 NO 6 BEKASI SELATAN', '', '081287978451', 'putraica@gmail.com', 'ICA PUTRA', 'D3', 'SWASTA', 'PANGKALPINANG BANGKA BELITUNG, 25 Januari 1986', 'ITA HARYATI', 'D3', 'Swasta', 'PANDEGLANG, 21 Mei 1986'),
('ZK22134RY', '202102109', NULL, 'MUHAMMAD IRSYAD FAZA', 'Bekasi', '2014-03-28', 'L', '30d0', 2021, 'IRSYAD', '3A', '', '', '', 'Jl. Bintang Raya B. 6 Jakasetia Bekasi Selatan', '', '81318407676', '', 'Isfi Hendri', 'SLTA', 'Karyawan swasta', 'Payakumbuh, 5 Februari 1977', 'Esi Endriani', 'SLTA', 'Karyawan swasta', 'Durian Kapas, 1 Mei 1980'),
('ZV17487FA', '202002046', NULL, 'SHAQUILA AINUNNAIRA', 'Bekasi', '2013-07-16', 'P', 'wkv42GPmX', 2020, 'NAIRA', '4B', '19', '', 'L', 'Pondok Mitra Lestari Blok c2 no % Bekasi', '08159296409', '8562121304', '', 'Andi Firdaus', 'S1', 'BUMN', 'Bekasi 31 Maret 1985', 'Riesty Yusnilaningsih', 'S1', 'Swasta', 'Bandung 16 April 1985'),
('ZX88515WI', '202302012', NULL, 'AUFA RASYID', 'Bandar Lampung', '2016-05-26', 'L', 'BiOmEVqof', 2023, 'AUFA', '1', '23 Kg', '130 cm', '', 'Pondok Pekayon Indah Blok A8 No. 16 Jl. Cendrawasih II Bekasi Selatan', '', '081294326789', 'alvinhidayatullah@gmail.com', 'Alvin Hidayatullah', 'S1', 'Wirausaha', 'Jakarta, 5 Desember 1984', 'Rio Ulfia Hardianti', 'S1', 'IRT', 'Jombang, 1 Januari 1991');

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
('6ARym1eC6', '2016/2017', '2', ''),
('FJKbpALlk', '2017/2018', '1', ''),
('jDK0ouMR4', '2016/2017', '1', ''),
('VvrgkXFlA', '2022/2023', '2', 'aktif'),
('WzpoCjGl1', '2017/2018', '2', '');

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
(35, 'BAGIAN A. Buku Hal. 1-22', 16, '00', 19);

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
('p5A4PdMwa', 'RFVKrUHR', 'otm2', 'otm2', 'otm2');

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
  MODIFY `c_backup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `extrasiswa`
--
ALTER TABLE `extrasiswa`
  MODIFY `c_extrasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `imtas`
--
ALTER TABLE `imtas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jumlahnilra`
--
ALTER TABLE `jumlahnilra`
  MODIFY `c_jumlahnilra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `m_klp`
--
ALTER TABLE `m_klp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sisjilid_h`
--
ALTER TABLE `sisjilid_h`
  MODIFY `id` bigint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_jilid`
--
ALTER TABLE `tbl_jilid`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
