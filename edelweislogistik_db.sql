-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 12 Okt 2022 pada 07.13
-- Versi server: 10.3.36-MariaDB-log
-- Versi PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edelweislogistik_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_chat_wa`
--

CREATE TABLE `tbl_chat_wa` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `image` varchar(200) NOT NULL,
  `startOnline` time NOT NULL,
  `endOnline` time NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `createUserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_chat_wa`
--

INSERT INTO `tbl_chat_wa` (`id`, `nama`, `phone`, `image`, `startOnline`, `endOnline`, `createDate`, `createUserId`) VALUES
(1, 'Admin', '02153679986', 'Admin_2022-08-31 16:00:33.png', '07:00:00', '22:00:00', '2022-08-19 06:57:40', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_client`
--

CREATE TABLE `tbl_client` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `image` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_client`
--

INSERT INTO `tbl_client` (`id`, `nama`, `image`) VALUES
(1, 'Progimedia', '630f226d82cfe.png'),
(2, 'Progimedia', '630f226d82cfe.png'),
(3, 'Progimedia', '630f226d82cfe.png'),
(4, 'Progimedia', '630f226d82cfe.png'),
(5, 'Progimedia', '630f226d82cfe.png'),
(6, 'Progimedia', '630f226d82cfe.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_fitur`
--

CREATE TABLE `tbl_fitur` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_fitur`
--

INSERT INTO `tbl_fitur` (`id`, `title`, `deskripsi`, `image`) VALUES
(1, 'BERPENGALAMAN', 'Menjunjung tinggi profesionalitas dalam  bekerja', '630f222d3c7e6.svg'),
(2, 'TIM PROFESIONAL', 'Menjunjung tinggi profesionalitas dalam  bekerja', '630f223f23ea9.svg'),
(3, 'JARINGAN LUAS', 'Kami memiliki jaringan kerja dan rekananan yang tersebar di hampir seluruh wilayah Indonesia', '630f224be29c0.svg'),
(4, 'PELAYANAN TERBAIK', 'Memberikan pelayanan terbaik kepada semua klien', '630f2263532b0.svg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` int(11) NOT NULL,
  `nama` varchar(125) NOT NULL,
  `image` varchar(125) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id`, `nama`, `image`, `createDate`) VALUES
(1, 'Foto1', '630f23047d643.png', '2022-08-31 08:59:48'),
(2, 'Foto 2', '630f230fe4404.png', '2022-08-31 08:59:59'),
(3, 'Foto 3', '630f23195de78.png', '2022-08-31 09:00:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_homeweb`
--

CREATE TABLE `tbl_homeweb` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `kota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_homeweb`
--

INSERT INTO `tbl_homeweb` (`id`, `title`, `deskripsi`, `kota`) VALUES
(1, 'Fleksible, Harga Oke, Cepat dan Kualitas Oke', 'Jasa Pengiriman dan logistik Terpercaya ke seluruh wilayah Indonesia', 'Jawa - Sumatera - Kalimantan - Sulawesi - Bali - NTB/NTT - Maluku - Papua, dan masih banyak lagi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `deskripsi` text NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `nama`, `deskripsi`, `image`) VALUES
(1, 'PENGIRIMAN JALUR DARAT', '<p>Kami membantu mengantarkan produk Anda ke tempat yang diperlukan dengan menawarkan jasa pengiriman barang tepat waktu menggunakan armada khusus sesuai dengan kebutuhan dan harga yang kompetitif.</p>\r\n', '630f21ede8f12.svg'),
(2, 'PENGIRIMAN JALUR kERETA', '<p>Kami membantu mengantarkan produk Anda ke tempat yang diperlukan dengan menawarkan jasa pengiriman barang tepat waktu menggunakan armada khusus sesuai dengan kebutuhan dan harga yang kompetitif.</p>\r\n', '630f21e473c5b.svg'),
(3, 'PENGIRIMAN JALUR LAUT', '<p>Kami membantu mengantarkan produk Anda ke tempat yang diperlukan dengan menawarkan jasa pengiriman barang tepat waktu menggunakan armada khusus sesuai dengan kebutuhan dan harga yang kompetitif.</p>\r\n', '630f21fd28bb8.svg'),
(4, 'PENGIRIMAN JALUR UDARA', '<p>Kami membantu mengantarkan produk Anda ke tempat yang diperlukan dengan menawarkan jasa pengiriman barang tepat waktu menggunakan armada khusus sesuai dengan kebutuhan dan harga yang kompetitif.</p>\r\n', '630f221201ff1.svg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sosmed`
--

CREATE TABLE `tbl_sosmed` (
  `id` int(11) NOT NULL,
  `name` varchar(125) NOT NULL,
  `link` varchar(125) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sosmed`
--

INSERT INTO `tbl_sosmed` (`id`, `name`, `link`, `icon`) VALUES
(1, 'Instagram', 'https://www.instagram.com/', 'fa-instagram'),
(2, 'Facebook', 'https://www.facebook.com/', 'fa-facebook'),
(3, 'Twitter', 'https://twitter.com/', 'fa-twitter'),
(5, 'LinkedIn', 'https://www.linkedin.com', 'fa-linkedin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `testi` text NOT NULL,
  `image` varchar(125) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_testimoni`
--

INSERT INTO `tbl_testimoni` (`id`, `nama`, `title`, `testi`, `image`) VALUES
(1, 'Ajisaka', 'Kontraktor', '<p>Pengiriman cepat kilat, murah berahabat harga<br />\r\nkualitas bisa di adu, kirim hari ini besok sudah sampai terbaik memang jasa nya.</p>\r\n', '630f229f9d337.svg'),
(2, 'Ajisaka', 'Kontraktor', '<p>Pengiriman cepat kilat, murah berahabat harga<br />\r\nkualitas bisa di adu, kirim hari ini besok sudah sampai terbaik memang jasa nya.</p>\r\n', '630f229f9d337.svg'),
(3, 'Ajisaka', 'Kontraktor', '<p>Pengiriman cepat kilat, murah berahabat harga<br />\r\nkualitas bisa di adu, kirim hari ini besok sudah sampai terbaik memang jasa nya.</p>\r\n', '630f229f9d337.svg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_website`
--

CREATE TABLE `tbl_website` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `metaTitle` varchar(80) NOT NULL,
  `metaKeywords` text NOT NULL,
  `metaDescription` text NOT NULL,
  `map` text NOT NULL,
  `image` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_website`
--

INSERT INTO `tbl_website` (`id`, `name`, `address`, `phone`, `fax`, `email`, `description`, `metaTitle`, `metaKeywords`, `metaDescription`, `map`, `image`) VALUES
(3, 'Edelweis Logistik', '<p>Jl. Yusuf No.6A, Kota Jakarta Barat</p>\r\n', '02153679986', '', 'info@edelweislogistik.com', '<p style=\"text-align:justify\">EDELWEIS LOGISTIK adalah perusahaan yang bergerak di bidang jasa pengiriman dan logistik yang melayani pengiriman dan logistik ke seluruh wilayah Indonesia. Berdiri sejak tahun 2011 di Jakarta. Dengan pengalaman seluruh staff kami yang mumpuni dan juga tim kerja dan rekanan yang sangat solid dengan menjunjung tinggi profesionalitas dalam bekerja. Serta memiliki attitude kerja diantaranya Teliti, Ramah, Cepat, Komunikatif, Janji ditepati, Taat terhadap Prosedur, Peduli, Inisiatif, Saling mendukung antara satu dengan yang lain. Saat ini kami telah mempunyai jaringan hampir diseluruh Indonesia dimana seluruh kantor perwakilan dijaringan kami selalu mempunyai prinsip yang tinggi dalam memberikan pelayanan yang terbaik.</p>\r\n', 'Jasa Pengiriman Barang Door To Door | PT. Edelweis Logistik | Domestic Freight F', '<p>Jasa Pengiriman Barang Door To Door</p>\r\n', '<p>PT. Edelweis Logistik adalah perusahaan yang menyediakan Jasa Pengiriman Barang Door To Door | PT. Edelweis Logistik profesional dan berpengalaman sejak 2011.</p>\r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.430493601949!2d106.77659231476902!3d-6.2068089955067896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f6da5b295349%3A0x1cd798dd83ac8297!2sJl.%20Yusuf%20No.6%2C%20RT.6%2FRW.3%2C%20Sukabumi%20Utara%2C%20Kec.%20Kb.%20Jeruk%2C%20Kota%20Jakarta%20Barat%2C%20Daerah%20Khusus%20Ibukota%20Jakarta%2011540!5e0!3m2!1sid!2sid!4v1661935591471!5m2!1sid!2sid\" width=\"100%\" height=\"100%\" style=\"border:0;border-radius: 10px;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'logo.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_chat_wa`
--
ALTER TABLE `tbl_chat_wa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_client`
--
ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_fitur`
--
ALTER TABLE `tbl_fitur`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_homeweb`
--
ALTER TABLE `tbl_homeweb`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_sosmed`
--
ALTER TABLE `tbl_sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_website`
--
ALTER TABLE `tbl_website`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_chat_wa`
--
ALTER TABLE `tbl_chat_wa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_fitur`
--
ALTER TABLE `tbl_fitur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_homeweb`
--
ALTER TABLE `tbl_homeweb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_sosmed`
--
ALTER TABLE `tbl_sosmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_website`
--
ALTER TABLE `tbl_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
