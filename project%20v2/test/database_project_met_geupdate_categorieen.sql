-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 07 nov 2016 om 13:36
-- Serverversie: 10.1.16-MariaDB
-- PHP-versie: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database project`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `account`
--

CREATE TABLE `account` (
  `Account_ID` int(11) NOT NULL,
  `E-mailadres` varchar(50) NOT NULL,
  `Wachtwoord` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `account`
--

INSERT INTO `account` (`Account_ID`, `E-mailadres`, `Wachtwoord`) VALUES
(12345678, 'sam.putten9@gmail.com', 'voorbeeld');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categorie`
--

CREATE TABLE `categorie` (
  `Categorie_ID` int(11) NOT NULL,
  `Naam` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `categorie`
--

INSERT INTO `categorie` (`Categorie_ID`, `Naam`) VALUES
(23456789, 'ethernetkabel'),
(34451432, 'TV-kabels'),
(34567890, 'audiokabel'),
(43134567, 'USB-kabels'),
(43146782, 'HDMI-kabel'),
(45234676, 'Foto en Camera'),
(45368123, 'Smartphonekabels'),
(45431238, 'Verlengsnoeren'),
(45738912, 'Spelcomputerkabels'),
(47890082, 'Kabels vaste telefonie');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `klant`
--

CREATE TABLE `klant` (
  `Klant_ID` int(11) NOT NULL,
  `Voornaam` varchar(100) NOT NULL,
  `Achternaam` varchar(100) NOT NULL,
  `Telefoonnummer` varchar(13) NOT NULL,
  `Postcode` varchar(7) NOT NULL,
  `Plaatsnaam` varchar(100) NOT NULL,
  `Huisnummer` varchar(100) NOT NULL,
  `Straatnaam` varchar(100) NOT NULL,
  `TYPE_KLANT_Type_ID` int(11) NOT NULL,
  `ACCOUNT_Account_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `klant`
--

INSERT INTO `klant` (`Klant_ID`, `Voornaam`, `Achternaam`, `Telefoonnummer`, `Postcode`, `Plaatsnaam`, `Huisnummer`, `Straatnaam`, `TYPE_KLANT_Type_ID`, `ACCOUNT_Account_ID`) VALUES
(34214568, 'Sam', 'van Putten', '0643183692', '9000AA', 'Groningen', '9', 'Ebbingestraat', 43211234, 12345678);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `order`
--

CREATE TABLE `order` (
  `Order_ID` int(11) NOT NULL,
  `Datum` datetime NOT NULL,
  `VERKOPER_Verkoper_ID` int(11) NOT NULL,
  `KLANT_Klant_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `order`
--

INSERT INTO `order` (`Order_ID`, `Datum`, `VERKOPER_Verkoper_ID`, `KLANT_Klant_ID`) VALUES
(24107654, '0000-00-00 00:00:00', 35620098, 34214568);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `orderregel`
--

CREATE TABLE `orderregel` (
  `Aantal` smallint(6) NOT NULL,
  `ORDER_Order_ID` int(11) NOT NULL,
  `PRODUCT_Product_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `orderregel`
--

INSERT INTO `orderregel` (`Aantal`, `ORDER_Order_ID`, `PRODUCT_Product_ID`) VALUES
(5, 24107654, 5481028);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `Product_ID` int(11) NOT NULL,
  `Prijs` decimal(5,2) NOT NULL,
  `CATEGORIE_Categorie_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`Product_ID`, `Prijs`, `CATEGORIE_Categorie_ID`) VALUES
(5481028, '9.99', 23456789);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `type_klant`
--

CREATE TABLE `type_klant` (
  `Type_ID` int(11) NOT NULL,
  `Type_klant` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `type_klant`
--

INSERT INTO `type_klant` (`Type_ID`, `Type_klant`) VALUES
(43211234, 'Klant met account'),
(54321012, 'Bezoeker');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `verkoper`
--

CREATE TABLE `verkoper` (
  `Verkoper_ID` int(11) NOT NULL,
  `Voornaam` varchar(100) DEFAULT NULL,
  `Achternaam` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `verkoper`
--

INSERT INTO `verkoper` (`Verkoper_ID`, `Voornaam`, `Achternaam`) VALUES
(35620098, 'Remco', 'Brand');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Account_ID`);

--
-- Indexen voor tabel `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`Categorie_ID`);

--
-- Indexen voor tabel `klant`
--
ALTER TABLE `klant`
  ADD PRIMARY KEY (`Klant_ID`),
  ADD KEY `KLANT_ACCOUNT_FK` (`ACCOUNT_Account_ID`),
  ADD KEY `KLANT_TYPE_KLANT_FK` (`TYPE_KLANT_Type_ID`);

--
-- Indexen voor tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `ORDER_KLANT_FK` (`KLANT_Klant_ID`),
  ADD KEY `ORDER_VERKOPER_FK` (`VERKOPER_Verkoper_ID`);

--
-- Indexen voor tabel `orderregel`
--
ALTER TABLE `orderregel`
  ADD PRIMARY KEY (`ORDER_Order_ID`,`PRODUCT_Product_ID`),
  ADD KEY `ORDERREGEL_PRODUCT_FK` (`PRODUCT_Product_ID`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `PRODUCT_CATEGORIE_FK` (`CATEGORIE_Categorie_ID`);

--
-- Indexen voor tabel `type_klant`
--
ALTER TABLE `type_klant`
  ADD PRIMARY KEY (`Type_ID`);

--
-- Indexen voor tabel `verkoper`
--
ALTER TABLE `verkoper`
  ADD PRIMARY KEY (`Verkoper_ID`);

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `klant`
--
ALTER TABLE `klant`
  ADD CONSTRAINT `KLANT_ACCOUNT_FK` FOREIGN KEY (`ACCOUNT_Account_ID`) REFERENCES `account` (`Account_ID`),
  ADD CONSTRAINT `KLANT_TYPE_KLANT_FK` FOREIGN KEY (`TYPE_KLANT_Type_ID`) REFERENCES `type_klant` (`Type_ID`);

--
-- Beperkingen voor tabel `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `ORDER_KLANT_FK` FOREIGN KEY (`KLANT_Klant_ID`) REFERENCES `klant` (`Klant_ID`),
  ADD CONSTRAINT `ORDER_VERKOPER_FK` FOREIGN KEY (`VERKOPER_Verkoper_ID`) REFERENCES `verkoper` (`Verkoper_ID`);

--
-- Beperkingen voor tabel `orderregel`
--
ALTER TABLE `orderregel`
  ADD CONSTRAINT `ORDERREGEL_ORDER_FK` FOREIGN KEY (`ORDER_Order_ID`) REFERENCES `order` (`Order_ID`),
  ADD CONSTRAINT `ORDERREGEL_PRODUCT_FK` FOREIGN KEY (`PRODUCT_Product_ID`) REFERENCES `product` (`Product_ID`);

--
-- Beperkingen voor tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `PRODUCT_CATEGORIE_FK` FOREIGN KEY (`CATEGORIE_Categorie_ID`) REFERENCES `categorie` (`Categorie_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
