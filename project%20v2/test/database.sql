-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 04, 2016 at 02:28 
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Database project`
--

-- --------------------------------------------------------

--
-- Table structure for table `ACCOUNT`
--

CREATE TABLE `ACCOUNT` (
  `Account_ID` int(11) NOT NULL,
  `E-mailadres` varchar(50) NOT NULL,
  `Wachtwoord` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ACCOUNT`
--

INSERT INTO `ACCOUNT` (`Account_ID`, `E-mailadres`, `Wachtwoord`) VALUES
(12345678, 'sam.putten9@gmail.com', 'Kutproject');

-- --------------------------------------------------------

--
-- Table structure for table `CATEGORIE`
--

CREATE TABLE `CATEGORIE` (
  `Categorie_ID` int(11) NOT NULL,
  `Naam` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CATEGORIE`
--

INSERT INTO `CATEGORIE` (`Categorie_ID`, `Naam`) VALUES
(23456789, 'ethernetkabel'),
(34567890, 'audiokabel');

-- --------------------------------------------------------

--
-- Table structure for table `KLANT`
--

CREATE TABLE `KLANT` (
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
-- Dumping data for table `KLANT`
--

INSERT INTO `KLANT` (`Klant_ID`, `Voornaam`, `Achternaam`, `Telefoonnummer`, `Postcode`, `Plaatsnaam`, `Huisnummer`, `Straatnaam`, `TYPE_KLANT_Type_ID`, `ACCOUNT_Account_ID`) VALUES
(34214568, 'Sam', 'van Putten', '0643183692', '9000AA', 'Groningen', '9', 'Ebbingestraat', 43211234, 12345678);

-- --------------------------------------------------------

--
-- Table structure for table `ORDER`
--

CREATE TABLE `ORDER` (
  `Order_ID` int(11) NOT NULL,
  `Datum` datetime NOT NULL,
  `VERKOPER_Verkoper_ID` int(11) NOT NULL,
  `KLANT_Klant_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ORDER`
--

INSERT INTO `ORDER` (`Order_ID`, `Datum`, `VERKOPER_Verkoper_ID`, `KLANT_Klant_ID`) VALUES
(24107654, '0000-00-00 00:00:00', 35620098, 34214568);

-- --------------------------------------------------------

--
-- Table structure for table `ORDERREGEL`
--

CREATE TABLE `ORDERREGEL` (
  `Aantal` smallint(6) NOT NULL,
  `ORDER_Order_ID` int(11) NOT NULL,
  `PRODUCT_Product_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ORDERREGEL`
--

INSERT INTO `ORDERREGEL` (`Aantal`, `ORDER_Order_ID`, `PRODUCT_Product_ID`) VALUES
(5, 24107654, 5481028);

-- --------------------------------------------------------

--
-- Table structure for table `PRODUCT`
--

CREATE TABLE `PRODUCT` (
  `Product_ID` int(11) NOT NULL,
  `Prijs` decimal(5,2) NOT NULL,
  `CATEGORIE_Categorie_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PRODUCT`
--

INSERT INTO `PRODUCT` (`Product_ID`, `Prijs`, `CATEGORIE_Categorie_ID`) VALUES
(5481028, '9.99', 23456789);

-- --------------------------------------------------------

--
-- Table structure for table `TYPE_KLANT`
--

CREATE TABLE `TYPE_KLANT` (
  `Type_ID` int(11) NOT NULL,
  `Type_klant` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TYPE_KLANT`
--

INSERT INTO `TYPE_KLANT` (`Type_ID`, `Type_klant`) VALUES
(43211234, 'Klant met account'),
(54321012, 'Bezoeker');

-- --------------------------------------------------------

--
-- Table structure for table `VERKOPER`
--

CREATE TABLE `VERKOPER` (
  `Verkoper_ID` int(11) NOT NULL,
  `Voornaam` varchar(100) DEFAULT NULL,
  `Achternaam` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `VERKOPER`
--

INSERT INTO `VERKOPER` (`Verkoper_ID`, `Voornaam`, `Achternaam`) VALUES
(35620098, 'Remco', 'Brand');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ACCOUNT`
--
ALTER TABLE `ACCOUNT`
  ADD PRIMARY KEY (`Account_ID`);

--
-- Indexes for table `CATEGORIE`
--
ALTER TABLE `CATEGORIE`
  ADD PRIMARY KEY (`Categorie_ID`);

--
-- Indexes for table `KLANT`
--
ALTER TABLE `KLANT`
  ADD PRIMARY KEY (`Klant_ID`),
  ADD KEY `KLANT_ACCOUNT_FK` (`ACCOUNT_Account_ID`),
  ADD KEY `KLANT_TYPE_KLANT_FK` (`TYPE_KLANT_Type_ID`);

--
-- Indexes for table `ORDER`
--
ALTER TABLE `ORDER`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `ORDER_KLANT_FK` (`KLANT_Klant_ID`),
  ADD KEY `ORDER_VERKOPER_FK` (`VERKOPER_Verkoper_ID`);

--
-- Indexes for table `ORDERREGEL`
--
ALTER TABLE `ORDERREGEL`
  ADD PRIMARY KEY (`ORDER_Order_ID`,`PRODUCT_Product_ID`),
  ADD KEY `ORDERREGEL_PRODUCT_FK` (`PRODUCT_Product_ID`);

--
-- Indexes for table `PRODUCT`
--
ALTER TABLE `PRODUCT`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `PRODUCT_CATEGORIE_FK` (`CATEGORIE_Categorie_ID`);

--
-- Indexes for table `TYPE_KLANT`
--
ALTER TABLE `TYPE_KLANT`
  ADD PRIMARY KEY (`Type_ID`);

--
-- Indexes for table `VERKOPER`
--
ALTER TABLE `VERKOPER`
  ADD PRIMARY KEY (`Verkoper_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `KLANT`
--
ALTER TABLE `KLANT`
  ADD CONSTRAINT `KLANT_ACCOUNT_FK` FOREIGN KEY (`ACCOUNT_Account_ID`) REFERENCES `ACCOUNT` (`Account_ID`),
  ADD CONSTRAINT `KLANT_TYPE_KLANT_FK` FOREIGN KEY (`TYPE_KLANT_Type_ID`) REFERENCES `TYPE_KLANT` (`Type_ID`);

--
-- Constraints for table `ORDER`
--
ALTER TABLE `ORDER`
  ADD CONSTRAINT `ORDER_KLANT_FK` FOREIGN KEY (`KLANT_Klant_ID`) REFERENCES `KLANT` (`Klant_ID`),
  ADD CONSTRAINT `ORDER_VERKOPER_FK` FOREIGN KEY (`VERKOPER_Verkoper_ID`) REFERENCES `VERKOPER` (`Verkoper_ID`);

--
-- Constraints for table `ORDERREGEL`
--
ALTER TABLE `ORDERREGEL`
  ADD CONSTRAINT `ORDERREGEL_ORDER_FK` FOREIGN KEY (`ORDER_Order_ID`) REFERENCES `ORDER` (`Order_ID`),
  ADD CONSTRAINT `ORDERREGEL_PRODUCT_FK` FOREIGN KEY (`PRODUCT_Product_ID`) REFERENCES `PRODUCT` (`Product_ID`);

--
-- Constraints for table `PRODUCT`
--
ALTER TABLE `PRODUCT`
  ADD CONSTRAINT `PRODUCT_CATEGORIE_FK` FOREIGN KEY (`CATEGORIE_Categorie_ID`) REFERENCES `CATEGORIE` (`Categorie_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;