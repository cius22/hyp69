-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Lug 21, 2016 alle 00:02
-- Versione del server: 5.6.29-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_hyp69`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Prodotto`
--

CREATE TABLE IF NOT EXISTS `Prodotto` (
  `ID` int(10) unsigned NOT NULL,
  `Marca` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Modello` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Descrizione` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Prezzo_listino` float(10,0) DEFAULT NULL,
  `Prezzo_vendita` float(10,0) NOT NULL,
  `Prezzo_rate` float(10,0) DEFAULT NULL,
  `Numero_rate` int(11) DEFAULT NULL,
  `Immagine` text,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `Prodotto`
--

INSERT INTO `Prodotto` (`ID`, `Marca`, `Modello`, `Descrizione`, `Prezzo_listino`, `Prezzo_vendita`, `Prezzo_rate`, `Numero_rate`, `Immagine`) VALUES
(1, 'Sony', 'XPERIA X', 'Sistema Operativo Android 6.0<br>\r\nDisplay HD 5"<br>\r\nProcessore Snapdragon 650 HexaCore 1.8GHz<br>\r\nFotocamera da 23 Mpxl<br>', 670, 630, 60, 12, '../images/prodotti/smartphone_e_telefoni/sony_xperia_x_big.jpg'),
(2, 'Samsung', 'Galaxy S7 Edge', 'Sistema Operativo Android 6.0<br>\r\nDisplay 5.5"<br>\r\nProcessore OctaCore<br>', 850, 760, 20, 36, '../images/prodotti/smartphone_e_telefoni/samsung_s7_edge_big.jpg'),
(4, 'Apple', 'iPhone 5s', 'Sistema Operativo iOS 8<br>\r\nDisplay Retina da 4"<br>\r\nChip A7 con coprocessore di movimento M7<br>\r\nFotocamera iSight da 8 megapixel<br>', 480, 330, 30, 12, '../images/prodotti/smartphone_e_telefoni/iphone_5s_big.jpg'),
(3, 'WIKO', 'Rainlite', 'Sistema Operativo Android 5.1<br>\r\nDisplay 5”<br>\r\nProcessore Snapdragon™ 210 QuadCore 1.1 Ghz<br>', 140, 120, 10, 12, '../images/prodotti/smartphone_e_telefoni/wiko_rainlite_big.jpg'),
(5, 'LG', 'G4', '4GPLUS<br>\r\nSistema Operativo Android 5.1<br>\r\nDisplay 5.5"<br>\r\nProcessore Snapdragon 808 HexaCore 1.8 Ghz<br>', 399, 350, 20, 20, '../images/prodotti/smartphone_e_telefoni/lg_g4_big.jpg'),
(6, 'Huawei', 'P9', 'Sistema Operativo Android 6.0<br>\r\nDisplay IPS Full HD da 5.2’’<br>\r\nDoppia Fotocamera Leica da 12 Mpxl Dual Flash + anteriore da 8 Mpxl<br>\r\nProcessore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)<br>', 650, 600, 30, 20, '../images/prodotti/smartphone_e_telefoni/huawei_p9_big.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
