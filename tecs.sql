-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2015 at 03:44 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tecs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`idAdmin` int(10) unsigned NOT NULL,
  `usernameAdmin` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `passwordAdmin` text COLLATE utf8_unicode_ci NOT NULL,
  `namaAdmin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bagian` enum('admin','karyawan') COLLATE utf8_unicode_ci NOT NULL,
  `emailAdmin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
`idBank` int(10) unsigned NOT NULL,
  `namaBank` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
`idBarang` bigint(20) unsigned NOT NULL,
  `namaBarang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `keterangan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gambar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tglUpload` datetime NOT NULL,
  `idKategori` int(10) unsigned NOT NULL,
  `idMerk` int(10) unsigned NOT NULL,
  `idAdmin` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
`idBlog` int(10) unsigned NOT NULL,
  `judul` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `konten` text COLLATE utf8_unicode_ci NOT NULL,
  `createdateBlog` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `idAdmin` int(10) unsigned DEFAULT NULL,
  `idTag` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jamkerja`
--

CREATE TABLE IF NOT EXISTS `jamkerja` (
`idJamkerja` int(10) unsigned NOT NULL,
  `hari` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `jamMulai` time NOT NULL,
  `jamSelesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mainkategori`
--

CREATE TABLE IF NOT EXISTS `mainkategori` (
`idKategori` int(10) unsigned NOT NULL,
  `namaKategori` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idSubkategori` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
`idMember` bigint(20) unsigned NOT NULL,
  `usernameMember` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `passwordMember` text COLLATE utf8_unicode_ci NOT NULL,
  `emailMember` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fullName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `noRek` int(11) NOT NULL,
  `registrationDate` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `verifikasi` enum('1','0') COLLATE utf8_unicode_ci NOT NULL,
  `idFacebook` int(11) NOT NULL,
  `idGoogleplus` int(11) NOT NULL,
  `idBank` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `merk`
--

CREATE TABLE IF NOT EXISTS `merk` (
`idMerk` int(10) unsigned NOT NULL,
  `namaMerk` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_07_30_111748_admin', 1),
('2015_07_30_111911_pemasok', 1),
('2015_07_30_112040_tagPost', 1),
('2015_07_30_112154_blog', 1),
('2015_07_30_112326_subKategori', 1),
('2015_07_30_112455_mainKategori', 1),
('2015_07_30_112557_bank', 1),
('2015_07_30_112645_merk', 1),
('2015_07_30_112736_jamKerja', 1),
('2015_07_30_112826_slider', 1),
('2015_07_30_112908_barang', 1),
('2015_07_30_113013_pasokan', 1),
('2015_07_30_113112_member', 1),
('2015_07_30_113204_rate', 1),
('2015_07_30_113301_review', 1),
('2015_07_30_113347_wishlist', 1),
('2015_07_30_113436_transaksi', 1),
('2015_07_30_113525_transaksiItem', 1),
('2015_07_30_113611_ticket', 1),
('2015_07_30_113705_obrolanTicket', 1),
('2015_07_30_113802_spesifikasi', 1),
('2015_07_30_113845_pictureAlbum', 1);

-- --------------------------------------------------------

--
-- Table structure for table `obrolanticket`
--

CREATE TABLE IF NOT EXISTS `obrolanticket` (
  `idTicket` int(11) NOT NULL,
  `kontenObrolanticket` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `createdateObrolanticket` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `idAdmin` int(10) unsigned NOT NULL,
  `idMember` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pasokan`
--

CREATE TABLE IF NOT EXISTS `pasokan` (
`idPasokan` bigint(20) unsigned NOT NULL,
  `rpAwal` int(11) NOT NULL,
  `rpBayar` int(11) NOT NULL,
  `rpKembali` int(11) NOT NULL,
  `tglPasokan` datetime NOT NULL,
  `statusPasokan` enum('1','0') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `idPemasok` int(10) unsigned DEFAULT NULL,
  `idBarang` bigint(20) unsigned DEFAULT NULL,
  `idAdmin` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemasok`
--

CREATE TABLE IF NOT EXISTS `pemasok` (
`idPemasok` int(10) unsigned NOT NULL,
  `namaPemasok` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kontakPemasok` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `picturealbum`
--

CREATE TABLE IF NOT EXISTS `picturealbum` (
`idPicture` bigint(20) unsigned NOT NULL,
  `namaPicture` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `idBarang` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE IF NOT EXISTS `rate` (
  `idMember` bigint(20) unsigned NOT NULL,
  `nilaiRate` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
`idReview` int(10) unsigned NOT NULL,
  `kontenReview` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `idMember` bigint(20) unsigned NOT NULL,
  `idBarang` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
`idSlider` int(10) unsigned NOT NULL,
  `gambar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `namaSlider` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spesifikasi`
--

CREATE TABLE IF NOT EXISTS `spesifikasi` (
`idSpesifikasi` bigint(20) unsigned NOT NULL,
  `namaSpesifikasi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ketSpesifikasi` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `idBarang` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subkategori`
--

CREATE TABLE IF NOT EXISTS `subkategori` (
`idSubkategori` int(10) unsigned NOT NULL,
  `namaSubkategori` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tagpost`
--

CREATE TABLE IF NOT EXISTS `tagpost` (
`idTag` int(10) unsigned NOT NULL,
  `namaTag` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
`idTicket` int(10) unsigned NOT NULL,
  `subjectTicket` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `deskripsiTicket` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `statusTicket` enum('1','0') COLLATE utf8_unicode_ci NOT NULL,
  `idMember` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
`idTransaksi` bigint(20) unsigned NOT NULL,
  `tglTransaksi` datetime NOT NULL,
  `statusKirim` enum('1','0') COLLATE utf8_unicode_ci NOT NULL,
  `alamatLengkap` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `statusBayar` enum('1','0') COLLATE utf8_unicode_ci NOT NULL,
  `totalBayar` int(11) NOT NULL,
  `idBank` int(10) unsigned DEFAULT NULL,
  `idMember` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksiitem`
--

CREATE TABLE IF NOT EXISTS `transaksiitem` (
  `qBarang` int(11) NOT NULL,
  `subTotal` int(11) NOT NULL,
  `idBarang` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishlist` text COLLATE utf8_unicode_ci NOT NULL,
  `idMember` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`idAdmin`), ADD UNIQUE KEY `admin_usernameadmin_unique` (`usernameAdmin`), ADD UNIQUE KEY `admin_emailadmin_unique` (`emailAdmin`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
 ADD PRIMARY KEY (`idBank`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
 ADD PRIMARY KEY (`idBarang`), ADD KEY `barang_idkategori_foreign` (`idKategori`), ADD KEY `barang_idmerk_foreign` (`idMerk`), ADD KEY `barang_idadmin_foreign` (`idAdmin`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
 ADD PRIMARY KEY (`idBlog`), ADD KEY `blog_idadmin_foreign` (`idAdmin`), ADD KEY `blog_idtag_foreign` (`idTag`);

--
-- Indexes for table `jamkerja`
--
ALTER TABLE `jamkerja`
 ADD PRIMARY KEY (`idJamkerja`);

--
-- Indexes for table `mainkategori`
--
ALTER TABLE `mainkategori`
 ADD PRIMARY KEY (`idKategori`), ADD KEY `mainkategori_idsubkategori_foreign` (`idSubkategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
 ADD PRIMARY KEY (`idMember`), ADD UNIQUE KEY `member_usernamemember_unique` (`usernameMember`), ADD UNIQUE KEY `member_emailmember_unique` (`emailMember`), ADD KEY `member_idbank_foreign` (`idBank`);

--
-- Indexes for table `merk`
--
ALTER TABLE `merk`
 ADD PRIMARY KEY (`idMerk`);

--
-- Indexes for table `obrolanticket`
--
ALTER TABLE `obrolanticket`
 ADD KEY `obrolanticket_idadmin_foreign` (`idAdmin`), ADD KEY `obrolanticket_idmember_foreign` (`idMember`);

--
-- Indexes for table `pasokan`
--
ALTER TABLE `pasokan`
 ADD PRIMARY KEY (`idPasokan`), ADD KEY `pasokan_idpemasok_foreign` (`idPemasok`), ADD KEY `pasokan_idbarang_foreign` (`idBarang`), ADD KEY `pasokan_idadmin_foreign` (`idAdmin`);

--
-- Indexes for table `pemasok`
--
ALTER TABLE `pemasok`
 ADD PRIMARY KEY (`idPemasok`);

--
-- Indexes for table `picturealbum`
--
ALTER TABLE `picturealbum`
 ADD PRIMARY KEY (`idPicture`), ADD KEY `picturealbum_idbarang_foreign` (`idBarang`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
 ADD KEY `rate_idmember_foreign` (`idMember`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
 ADD PRIMARY KEY (`idReview`), ADD KEY `review_idmember_foreign` (`idMember`), ADD KEY `review_idbarang_foreign` (`idBarang`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
 ADD PRIMARY KEY (`idSlider`);

--
-- Indexes for table `spesifikasi`
--
ALTER TABLE `spesifikasi`
 ADD PRIMARY KEY (`idSpesifikasi`), ADD KEY `spesifikasi_idbarang_foreign` (`idBarang`);

--
-- Indexes for table `subkategori`
--
ALTER TABLE `subkategori`
 ADD PRIMARY KEY (`idSubkategori`);

--
-- Indexes for table `tagpost`
--
ALTER TABLE `tagpost`
 ADD PRIMARY KEY (`idTag`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
 ADD PRIMARY KEY (`idTicket`), ADD KEY `ticket_idmember_foreign` (`idMember`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
 ADD PRIMARY KEY (`idTransaksi`), ADD KEY `transaksi_idbank_foreign` (`idBank`), ADD KEY `transaksi_idmember_foreign` (`idMember`);

--
-- Indexes for table `transaksiitem`
--
ALTER TABLE `transaksiitem`
 ADD KEY `transaksiitem_idbarang_foreign` (`idBarang`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
 ADD KEY `wishlist_idmember_foreign` (`idMember`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `idAdmin` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
MODIFY `idBank` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
MODIFY `idBarang` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
MODIFY `idBlog` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jamkerja`
--
ALTER TABLE `jamkerja`
MODIFY `idJamkerja` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mainkategori`
--
ALTER TABLE `mainkategori`
MODIFY `idKategori` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
MODIFY `idMember` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `merk`
--
ALTER TABLE `merk`
MODIFY `idMerk` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pasokan`
--
ALTER TABLE `pasokan`
MODIFY `idPasokan` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pemasok`
--
ALTER TABLE `pemasok`
MODIFY `idPemasok` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `picturealbum`
--
ALTER TABLE `picturealbum`
MODIFY `idPicture` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
MODIFY `idReview` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
MODIFY `idSlider` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spesifikasi`
--
ALTER TABLE `spesifikasi`
MODIFY `idSpesifikasi` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subkategori`
--
ALTER TABLE `subkategori`
MODIFY `idSubkategori` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tagpost`
--
ALTER TABLE `tagpost`
MODIFY `idTag` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
MODIFY `idTicket` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
MODIFY `idTransaksi` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
ADD CONSTRAINT `barang_idadmin_foreign` FOREIGN KEY (`idAdmin`) REFERENCES `admin` (`idAdmin`) ON DELETE SET NULL,
ADD CONSTRAINT `barang_idkategori_foreign` FOREIGN KEY (`idKategori`) REFERENCES `mainkategori` (`idKategori`) ON DELETE CASCADE,
ADD CONSTRAINT `barang_idmerk_foreign` FOREIGN KEY (`idMerk`) REFERENCES `merk` (`idMerk`) ON DELETE CASCADE;

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
ADD CONSTRAINT `blog_idadmin_foreign` FOREIGN KEY (`idAdmin`) REFERENCES `admin` (`idAdmin`) ON DELETE SET NULL,
ADD CONSTRAINT `blog_idtag_foreign` FOREIGN KEY (`idTag`) REFERENCES `tagpost` (`idTag`) ON DELETE SET NULL;

--
-- Constraints for table `mainkategori`
--
ALTER TABLE `mainkategori`
ADD CONSTRAINT `mainkategori_idsubkategori_foreign` FOREIGN KEY (`idSubkategori`) REFERENCES `subkategori` (`idSubkategori`) ON DELETE CASCADE;

--
-- Constraints for table `member`
--
ALTER TABLE `member`
ADD CONSTRAINT `member_idbank_foreign` FOREIGN KEY (`idBank`) REFERENCES `bank` (`idBank`) ON DELETE SET NULL;

--
-- Constraints for table `obrolanticket`
--
ALTER TABLE `obrolanticket`
ADD CONSTRAINT `obrolanticket_idadmin_foreign` FOREIGN KEY (`idAdmin`) REFERENCES `admin` (`idAdmin`) ON DELETE CASCADE,
ADD CONSTRAINT `obrolanticket_idmember_foreign` FOREIGN KEY (`idMember`) REFERENCES `member` (`idMember`) ON DELETE CASCADE;

--
-- Constraints for table `pasokan`
--
ALTER TABLE `pasokan`
ADD CONSTRAINT `pasokan_idadmin_foreign` FOREIGN KEY (`idAdmin`) REFERENCES `admin` (`idAdmin`) ON DELETE SET NULL,
ADD CONSTRAINT `pasokan_idbarang_foreign` FOREIGN KEY (`idBarang`) REFERENCES `barang` (`idBarang`) ON DELETE SET NULL,
ADD CONSTRAINT `pasokan_idpemasok_foreign` FOREIGN KEY (`idPemasok`) REFERENCES `pemasok` (`idPemasok`) ON DELETE SET NULL;

--
-- Constraints for table `picturealbum`
--
ALTER TABLE `picturealbum`
ADD CONSTRAINT `picturealbum_idbarang_foreign` FOREIGN KEY (`idBarang`) REFERENCES `barang` (`idBarang`) ON DELETE CASCADE;

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
ADD CONSTRAINT `rate_idmember_foreign` FOREIGN KEY (`idMember`) REFERENCES `member` (`idMember`) ON DELETE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
ADD CONSTRAINT `review_idbarang_foreign` FOREIGN KEY (`idBarang`) REFERENCES `barang` (`idBarang`) ON DELETE CASCADE,
ADD CONSTRAINT `review_idmember_foreign` FOREIGN KEY (`idMember`) REFERENCES `member` (`idMember`) ON DELETE CASCADE;

--
-- Constraints for table `spesifikasi`
--
ALTER TABLE `spesifikasi`
ADD CONSTRAINT `spesifikasi_idbarang_foreign` FOREIGN KEY (`idBarang`) REFERENCES `barang` (`idBarang`) ON DELETE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
ADD CONSTRAINT `ticket_idmember_foreign` FOREIGN KEY (`idMember`) REFERENCES `member` (`idMember`) ON DELETE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
ADD CONSTRAINT `transaksi_idbank_foreign` FOREIGN KEY (`idBank`) REFERENCES `bank` (`idBank`) ON DELETE SET NULL,
ADD CONSTRAINT `transaksi_idmember_foreign` FOREIGN KEY (`idMember`) REFERENCES `member` (`idMember`) ON DELETE SET NULL;

--
-- Constraints for table `transaksiitem`
--
ALTER TABLE `transaksiitem`
ADD CONSTRAINT `transaksiitem_idbarang_foreign` FOREIGN KEY (`idBarang`) REFERENCES `barang` (`idBarang`) ON DELETE SET NULL;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
ADD CONSTRAINT `wishlist_idmember_foreign` FOREIGN KEY (`idMember`) REFERENCES `member` (`idMember`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
