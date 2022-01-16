-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 31 May 2016, 14:05:06
-- Sunucu sürümü: 5.6.12-log
-- PHP Sürümü: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `stok_takip`
--
CREATE DATABASE IF NOT EXISTS `stok_takip` DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci;
USE `stok_takip`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `satislar`
--

CREATE TABLE IF NOT EXISTS `satislar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `urunadi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `beden` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `renk` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `fiyat` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `adet` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` varchar(350) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=41 ;

--
-- Tablo döküm verisi `satislar`
--

INSERT INTO `satislar` (`id`, `kategori`, `urunadi`, `beden`, `renk`, `fiyat`, `adet`, `aciklama`) VALUES
(28, 'Erkek', 'Pantolon', '34', 'beyaz', '25', '3', 'kumas'),
(29, 'Erkek', 'Pantolon', '36', 'beyaz', '35', '1', 'kot'),
(30, 'çocuk', 'Pantolon', '30', 'beyaz', '20', '2', 'kot'),
(31, 'çocuk', 'Pantolon', '30', 'beyaz', '20', '2', 'kot'),
(32, 'çocuk', 'Pantolon', '30', 'beyaz', '20', '2', 'kot'),
(33, 'Kadin', 'Pantolon', '32', 'siyah', '40', '2', 'kot'),
(34, 'çocuk', 'Pantolon', '30', 'beyaz', '20', '1', 'kot'),
(35, 'çocuk', 'Pantolon', '30', 'beyaz', '20', '1', 'kot'),
(36, 'Kadin', 'Pantolon', '32', 'siyah', '40', '3', 'kot'),
(37, 'Erkek', 'Kravat', '12', 'Siyah Desenli', '20', '1', 'Polyester'),
(38, 'Erkek', 'Pantolon', '36', 'beyaz', '35', '1', 'kot'),
(39, 'Kadin', 'Pantolon', '32', 'siyah', '40', '1', 'kot'),
(40, 'çocuk', 'Pantolon', '30', 'beyaz', '20', '5', 'kot');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE IF NOT EXISTS `urunler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `urunadi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `beden` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `renk` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `fiyat` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `adet` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` varchar(350) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=10 ;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`id`, `kategori`, `urunadi`, `beden`, `renk`, `fiyat`, `adet`, `aciklama`) VALUES
(1, 'Erkek', 'Pantolon', '34', 'beyaz', '25', '7', 'kumas'),
(2, 'Erkek', 'Pantolon', '36', 'beyaz', '35', '18', 'kot'),
(3, 'Kadin', 'Pantolon', '32', 'siyah', '40', '16', 'kot'),
(4, 'Kadin', 'Gömlek', 'M', 'Beyaz', '25', '0', 'Yün'),
(7, 'çocuk', 'Pantolon', '30', 'beyaz', '20', '14', 'kot'),
(8, 'Erkek', 'Kravat', '12', 'Siyah Desenli', '20', '9', 'Polyester'),
(9, 'Kadin', 'Gömlek', 's', 'siyah', '25', '10', 'Yün');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE IF NOT EXISTS `uyeler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kadi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `parola` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=4 ;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `kategori`, `kadi`, `parola`, `email`) VALUES
(1, 'Müdür', 'alican19', '123', 'ali@hotmail.com'),
(2, 'Satış Danışmanı', 'tolga06', '1', 'tolga@gmail.com'),
(3, 'Depocu', 'enes66', '1', 'enes@gmail.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
