-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2020 at 11:32 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sisfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(2) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `isi` text,
  `gambar` varchar(100) DEFAULT NULL,
  `penulis` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `isi`, `gambar`, `penulis`, `tanggal`) VALUES
(2, 'Siswa Baru SMA 8 Mendapat Gemblengan Pembentukan Karakter dan Pentingnya Team Work', 'Suasana hari pertama sekolah di SMA Negeri 8 Jakarta di bilangan Tebet, Jakarta Selatan menjadi dramatis ketika dalam sesi pengenalan sekolah ratusan siswa baru langsung mendapatkan pelajaran soal pentingnya team work dan pembentukan karakter ketika menjadi warga sekolah\r\n\r\nSesi pembekalan dilakukan usai upacara bendera dan dibagi menjadi dua kelompok.\r\n\r\nPembekalan kurikulum diisi oleh Heri Budi Prasetya.\r\n\r\nSementara, pada pembekalan karakter diisi langsung oleh kepala sekolah, Agusman Anwar dengan memadukan kalimat-kalimat menggugah dengan tayangan visual yang menunjukkan pentingnya sebuah rasa solidaritas atau saling membantu dan adakalanya prestasi menjadi hal yang tak penting lagi ketika dihadapkan dengan sikap empati.\r\n\r\nSalah satu tayangan video menunjukkan dua pelari wanita yang sedang bersaing merebut garis finish. Seorang di antaranya terjatuh berkali-kali karena letih, namun pelari lainnya justru menolong bahkan membimbing rivalnya itu untuk terus berlari.\r\n\r\nMelihat perjuangan hebat sang rival, akhirnya pelari yang harusnya bisa dengan mudah menjadi juara, justru ia menarik musuhnya yang sedang tertatih, untuk meraih garis finish terlebih dahulu. Ia cukup puas hanya diperingkat kedua dan menyerahkan kemenangan kepada rivalnya yang sebenarnya sudah tidak berdaya.\r\n\r\n\"Ingat, juara bukan segala-galanya. Tapi karakter yang utama. Sportifitas dan integritas yang patut kalian jaga ketika menjadi bagian dari SMAN 8,\" tegas Agusman Anwar, Senin (15/7/2019).\r\n', 'artikel/pic1.jpg', 'Admin', '2020-07-16'),
(3, 'Beasiswa bagi Peraih Medali Olimpiade Sains', 'Direktur Jenderal Pendidikan Menengah Kementerian Pendidikan dan Kebudayaan (Kemdikbud) Ahmad Jazidie mengatakan, semua peraih medali olimpiade sains berhak mendapatkan beasiswa dari pemerintah. Hal itu dijamin Kemdikbud lewat Peraturan Menteri Pendidikan Nasional Nomor 62/2009 tentang pemberian beasiswa kepada peserta didik jenjang pendidikan menengah dan tinggi peraih medali Olimpiade Sains Internasional.\r\n\r\nSyaratnya tidak boleh dobel. Sepanjang dia belum dapat beasiswa dari pihak lain, pasti bisa dapat dari pemerintah, kata Jazidie di Jakarta, Jumat (25/7).', 'artikel/095022220170217-090404780x390_cr.jpg', 'Admin', '2020-07-16'),
(4, 'PERAIH MEDALI OSN 2020 SMAN 8 JAKARTA', 'Ahamdulillah kembali Allah memberikan kebahagian untuk kami, keluarga besar SMAN 8 JAKARTA. Anak-anak yang menjadi perwakilan SMAN 8 dan Provinsi DKI di ajang Olimpade Sains Nasional (OSN) 2020 di Padang Sumatra Barat memberikan prestasi terbaik. Berhasil membawa 1 emas, 4 perak dan 3 perunggu. Dibandingkan tahun lalu terjadi penurunan jumlah medali yang diraih. Tetapi tetap menjadi penyumbang medali terbanyak untuk DKI Jakarta di level SMA.\r\n\r\nMereka adalah :\r\n\r\n- Ubaiillah Ariq Prathama Matematika / Perunggu\r\n- Daffa Fathani Adila Fisika / Emas\r\n- Shafira Aurelia Fisika / Perak\r\n- Tivano Antoni Kimia / Perunggu\r\n- Ghayda Nafisa Assakura Biologi / Perak\r\n- Antonius Berwin Astronomi / Perak\r\n- Muhammad Nabiel Indrasta Irawan Astronomi / Perunggu\r\n- Jessica Annabel Tio Prisca Ekonomi / Perak\r\n', 'artikel/photo-3.jpg', 'Admin', '2020-07-16');

-- --------------------------------------------------------

--
-- Table structure for table `ekstrakulikuler`
--

CREATE TABLE `ekstrakulikuler` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `deskripsi` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ekstrakulikuler`
--

INSERT INTO `ekstrakulikuler` (`id`, `nama`, `deskripsi`) VALUES
(2, 'PMR', 'PMR dilaksanakan setiap hari jumat dan kamis'),
(3, 'Sepak Bola', 'Sepak Bola dilaksanakan pada hari senin dan selasa'),
(4, 'Pramuka', 'Pramuka dilaksanakan pada hari sabtu'),
(5, 'Pencak Silat', 'Pencak Silat dilaksanakan pada hari rabu');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `berkas` varchar(100) DEFAULT NULL,
  `deskripsi` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `berkas`, `deskripsi`) VALUES
(4, 'galeri/sma.jpg', 'sma'),
(5, 'galeri/suasana_belajar.jpg', 'suasana belajar'),
(6, 'galeri/welcome.jpg', 'welcome'),
(7, 'galeri/pokja.jpg', 'mos'),
(8, 'galeri/lab.jpg', 'lab'),
(9, 'galeri/lepas_(16)_cr.jpg', 'upacara');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `nama`) VALUES
(1, 'Matematika'),
(2, 'IPa-Fisika'),
(3, 'IPS - Sejarah');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `isi` text,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id_profil`, `nama`, `isi`, `gambar`) VALUES
(1, 'Sejarah SMAN 8 Jakarta', 'SMA Negeri 8 Jakarta dibuka/ didirikan pada tanggal 1 Agustus 1958 di Taman Slamet Rijadi Jakarta dengan nama SMA Negeri VIII/ABC dengan Sp. Menteri P.D.K. tanggal 21 Agustus 1958 No. 26/SK/B.111.\r\n\r\nPada bulan Januari 1959 dlakukan pemindahan tempat atau gedung sekolah di SMP Negeri III Jakarta, Jl. Manggarai Utara IV/6, Manggarai Utara, Jakarta Selatan. Dan pada tanggal 30 Maret 1971 SMA Negeri 8 Jakarta berdiri di Jalan Taman Bukitduri Tebet dan diresmikan oleh Gubernur Ali Sadikin', 'profil/maxresdefault_cr.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `ekstrakulikuler`
--
ALTER TABLE `ekstrakulikuler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ekstrakulikuler`
--
ALTER TABLE `ekstrakulikuler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
