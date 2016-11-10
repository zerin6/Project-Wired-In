--
-- Database: `database webshop`
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
(12345678, 'sam.putten9@gmail.com', 'Hellothere');

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
(34567890, 'Audiokabel'),
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
(23145678, 'Sam', 'van Putten', '0643183692', '9000AA', 'Groningen', '9', 'Oude Ebbingestraat', 54321012, 12345678);

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
(24107654, '2016-11-07 00:00:00', 35620098, 23145678);

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
(1, 24107654, 54343123);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `Product_ID` int(11) NOT NULL,
  `Prijs` decimal(5,2) NOT NULL,
  `CATEGORIE_Categorie_ID` int(11) NOT NULL,
  `Productnaam` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`Product_ID`, `Prijs`, `CATEGORIE_Categorie_ID`, `Productnaam`) VALUES
(5344313, '4.99', 43146782, 'HDMI 1.4 kabel'),
(41432415, '2.99', 45368123, 'Samsung oplaadkabel'),
(41432532, '1.99', 34567890, 'Audio jack kabel zwart'),
(42378013, '9.99', 45234676, 'Camera kabel ''Hirose'''),
(43125414, '49.99', 45431238, 'Kabelhaspel 4 aansluitingen (blauw)'),
(43213234, '9.99', 43146782, 'HDMI high speed kabel '),
(43214555, '4.99', 47890082, 'RJ11 kabel'),
(43215413, '5.99', 45234676, 'Camerakabel haakse aansluiting'),
(43215436, '6.99', 23456789, 'Witte UTP-kabel 10 meter '),
(43215654, '9.99', 23456789, 'Zwarte UTP-kabel 15 meter'),
(43254321, '13.99', 45368123, 'Apple dock 30-pin kabel'),
(43254367, '0.99', 34567890, 'Audio jack kabel wit'),
(43542432, '14.99', 45738912, 'Xbox one controllerkabel'),
(43542654, '14.99', 45738912, 'Playstation 4 controllerkabel'),
(43543652, '2.99', 43134567, 'Samsung USB 3.0 USB'),
(44233534, '4.99', 34451432, 'DVI-kabel'),
(44323564, '9.99', 45738912, 'Xbox 360 plug ''n play-kabel'),
(45145434, '56.99', 45431238, 'Kabelhaspel 4 aansluitingen (groen)'),
(45421245, '5.99', 45234676, 'Camerakabel micro-USB'),
(53413321, '3.99', 34451432, 'VGA-kabel'),
(54154234, '4.99', 45368123, 'Apple lightning 8 pin kabel'),
(54234213, '7.99', 34451432, 'SCART-kabel'),
(54245631, '13.99', 43146782, 'HDMI-kabel 4k'),
(54325212, '3.99', 43134567, 'USB printerkabel'),
(54325213, '1.99', 43134567, 'USB 2.0 verlengkabel'),
(54343123, '19.99', 45431238, 'Kabelhaspel 4 aansluitingen'),
(54432443, '2.99', 47890082, 'RJ10 hoornkabel'),
(54763543, '12.99', 23456789, 'Grijze UTP-kabel 20 meter'),
(63151341, '2.99', 34567890, 'Audio jack kabel rood');

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
(43211234, 'Bezoeker'),
(54321012, 'Klant met account');

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
(35620098, 'Remco ', 'Brand');

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
