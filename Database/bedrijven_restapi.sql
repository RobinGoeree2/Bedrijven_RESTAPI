-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2021 at 02:48 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bedrijven_restapi`
--
CREATE DATABASE IF NOT EXISTS `bedrijven_restapi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bedrijven_restapi`;

-- --------------------------------------------------------

--
-- Table structure for table `financieel_branche_overzicht_bedrijven`
--

CREATE TABLE `financieel_branche_overzicht_bedrijven` (
  `OverzichtID` int(11) NOT NULL,
  `Branche` varchar(255) NOT NULL,
  `Periode` varchar(255) NOT NULL,
  `Totaal_aantal_bedrijven` int(20) NOT NULL,
  `Bedrijfsgrootte_1_werkzaam_persoon` int(20) NOT NULL,
  `Bedrijfsgrootte_2_werkzame_personen` int(20) NOT NULL,
  `Bedrijfsgrootte_3_tot_5_werkzame_personen` int(20) NOT NULL,
  `Bedrijfsgrootte_5_tot_10_werkzame_personen` int(20) NOT NULL,
  `Bedrijfsgrootte_10_tot_20_werkzame_personen` int(20) NOT NULL,
  `Bedrijfsgrootte_20_tot_50_werkzame_personen` int(20) NOT NULL,
  `Bedrijfsgrootte_50_tot_100_werkzame_personen` int(20) NOT NULL,
  `Natuurlijke_personen` int(20) NOT NULL,
  `Rechtspersonen` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `financieel_branche_overzicht_bedrijven`
--

INSERT INTO `financieel_branche_overzicht_bedrijven` (`OverzichtID`, `Branche`, `Periode`, `Totaal_aantal_bedrijven`, `Bedrijfsgrootte_1_werkzaam_persoon`, `Bedrijfsgrootte_2_werkzame_personen`, `Bedrijfsgrootte_3_tot_5_werkzame_personen`, `Bedrijfsgrootte_5_tot_10_werkzame_personen`, `Bedrijfsgrootte_10_tot_20_werkzame_personen`, `Bedrijfsgrootte_20_tot_50_werkzame_personen`, `Bedrijfsgrootte_50_tot_100_werkzame_personen`, `Natuurlijke_personen`, `Rechtspersonen`) VALUES
(1, 'A-U Alle economische activiteiten', '2021 1e kwartaal*', 1918945, 1500665, 192770, 91500, 65445, 33260, 20245, 7125, 1492585, 426365),
(2, 'Business Economy B-N excl K incl 95', '2021 1e kwartaal*', 1243155, 942400, 134555, 62750, 49385, 26405, 16525, 5790, 970455, 272700),
(3, 'A Landbouw en bosbouw en visserij', '2021 1e kwartaal*', 76145, 37410, 21650, 11385, 3520, 1305, 670, 150, 69065, 7080),
(4, 'B-E Nijverheid (geen bouw) en energie', '2021 1e kwartaal*', 75075, 49490, 7655, 4435, 4605, 3480, 2745, 1235, 51190, 23885),
(5, 'B Delfstoffenwinning', '2021 1e kwartaal*', 515, 375, 25, 20, 25, 15, 15, 15, 270, 240),
(6, 'C Industrie', '2021 1e kwartaal*', 70860, 46460, 7335, 4240, 4405, 3350, 2615, 1150, 49270, 21590),
(7, 'D Energievoorziening', '2021 1e kwartaal*', 1830, 1450, 160, 80, 50, 25, 25, 15, 685, 1145),
(8, 'E Waterbedrijven en afvalbeheer', '2021 1e kwartaal*', 1875, 1210, 135, 95, 125, 95, 90, 55, 965, 910),
(9, 'F Bouwnijverheid', '2021 1e kwartaal*', 205510, 173055, 15920, 6235, 4915, 2815, 1680, 515, 182005, 23505),
(10, 'G-I Handel en vervoer en horeca', '2021 1e kwartaal*', 367080, 221125, 63190, 33570, 25820, 12420, 7010, 2175, 284005, 83070),
(11, 'G Handel', '2021 1e kwartaal*', 251300, 156370, 42925, 21950, 15660, 7250, 4520, 1480, 189430, 61870),
(12, 'H Vervoer en opslag', '2021 1e kwartaal*', 50750, 35125, 6775, 2960, 2300, 1465, 1225, 435, 40570, 10175),
(13, 'I Horeca', '2021 1e kwartaal*', 65030, 29630, 13490, 8655, 7855, 3705, 1265, 260, 54005, 11025),
(14, 'J Informatie en communicatie', '2021 1e kwartaal*', 100160, 82420, 8250, 3150, 2630, 1710, 1230, 425, 75050, 25110),
(15, 'K Financiële dienstverlening', '2021 1e kwartaal*', 95830, 84940, 6115, 2095, 1440, 605, 350, 110, 7530, 88300),
(16, 'L Verhuur en handel van onroerend goed', '2021 1e kwartaal*', 28720, 20390, 4385, 2185, 1005, 355, 210, 105, 12705, 16015),
(17, 'M-N Zakelijke dienstverlening', '2021 1e kwartaal*', 457115, 388260, 33900, 12810, 10275, 5585, 3625, 1330, 356365, 100755),
(18, 'M Specialistische zakelijke diensten', '2021 1e kwartaal*', 371625, 324275, 24985, 8855, 6890, 3620, 1960, 550, 288470, 83155),
(19, 'N Verhuur en overige zakelijke diensten', '2021 1e kwartaal*', 85490, 63985, 8910, 3960, 3385, 1965, 1665, 780, 67895, 17600),
(20, 'O-Q Overheid en zorg', '2021 1e kwartaal*', 284640, 244240, 16610, 8430, 7165, 3415, 1845, 770, 256080, 28560),
(21, 'O Openbaar bestuur en overheidsdiensten', '2021 1e kwartaal*', 825, 220, 10, 15, 30, 30, 35, 65, 145, 680),
(22, 'P Onderwijs', '2021 1e kwartaal*', 104275, 93915, 6200, 1400, 765, 550, 445, 245, 97740, 6535),
(23, 'Q Gezondheids- en welzijnszorg', '2021 1e kwartaal*', 179540, 150105, 10405, 7015, 6370, 2840, 1365, 460, 158195, 21340),
(24, 'R-U Cultuur en recreatie en overige diensten', '2021 1e kwartaal*', 228670, 199345, 15095, 7210, 4070, 1570, 875, 310, 198585, 30085),
(25, 'R Cultuur en sport en recreatie', '2021 1e kwartaal*', 116405, 103375, 7065, 2840, 1630, 755, 480, 155, 101700, 14705),
(26, 'S Overige dienstverlening', '2021 1e kwartaal*', 112115, 95925, 8010, 4340, 2410, 795, 385, 150, 96870, 15250),
(27, 'T Huishoudens', '2021 1e kwartaal*', 25, 20, 0, 5, 0, 0, 0, 0, 20, 5),
(28, 'U Extraterritoriale organisaties', '2021 1e kwartaal*', 125, 25, 15, 25, 30, 20, 10, 0, 0, 125);

-- --------------------------------------------------------

--
-- Table structure for table `financieel_branche_overzicht_faillissementen`
--

CREATE TABLE `financieel_branche_overzicht_faillissementen` (
  `OverzichtID` int(11) NOT NULL,
  `Type_gefailleerde` varchar(255) NOT NULL,
  `Branche` varchar(255) NOT NULL,
  `Periode` varchar(255) NOT NULL,
  `Uitgesproken_faillissementen` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `financieel_branche_overzicht_faillissementen`
--

INSERT INTO `financieel_branche_overzicht_faillissementen` (`OverzichtID`, `Type_gefailleerde`, `Branche`, `Periode`, `Uitgesproken_faillissementen`) VALUES
(1, 'Bedrijven instellingen en eenmanszaken', 'A-U Alle economische activiteiten', '2020 juli', 223),
(2, 'Bedrijven instellingen en eenmanszaken', 'A-U Alle economische activiteiten', '2020 augustus', 190),
(3, 'Bedrijven instellingen en eenmanszaken', 'A-U Alle economische activiteiten', '2020 september', 249),
(4, 'Bedrijven instellingen en eenmanszaken', 'A-U Alle economische activiteiten', '2020 oktober', 184),
(5, 'Bedrijven instellingen en eenmanszaken', 'A-U Alle economische activiteiten', '2020 november**', 203),
(6, 'Bedrijven instellingen en eenmanszaken', 'A-U Alle economische activiteiten', '2020 december*', 200),
(7, 'Bedrijven instellingen en eenmanszaken', 'A Landbouw en bosbouw en visserij', '2020 juli', 2),
(8, 'Bedrijven instellingen en eenmanszaken', 'A Landbouw en bosbouw en visserij', '2020 augustus', 2),
(9, 'Bedrijven instellingen en eenmanszaken', 'A Landbouw en bosbouw en visserij', '2020 september', 0),
(10, 'Bedrijven instellingen en eenmanszaken', 'A Landbouw en bosbouw en visserij', '2020 oktober', 3),
(11, 'Bedrijven instellingen en eenmanszaken', 'A Landbouw en bosbouw en visserij', '2020 november**', 1),
(12, 'Bedrijven instellingen en eenmanszaken', 'A Landbouw en bosbouw en visserij', '2020 december*', 1),
(13, 'Bedrijven instellingen en eenmanszaken', 'B Delfstoffenwinning', '2020 juli', 0),
(14, 'Bedrijven instellingen en eenmanszaken', 'B Delfstoffenwinning', '2020 augustus', 0),
(15, 'Bedrijven instellingen en eenmanszaken', 'B Delfstoffenwinning', '2020 september', 0),
(16, 'Bedrijven instellingen en eenmanszaken', 'B Delfstoffenwinning', '2020 oktober', 0),
(17, 'Bedrijven instellingen en eenmanszaken', 'B Delfstoffenwinning', '2020 november**', 0),
(18, 'Bedrijven instellingen en eenmanszaken', 'B Delfstoffenwinning', '2020 december*', 0),
(19, 'Bedrijven instellingen en eenmanszaken', 'C Industrie', '2020 juli', 20),
(20, 'Bedrijven instellingen en eenmanszaken', 'C Industrie', '2020 augustus', 14),
(21, 'Bedrijven instellingen en eenmanszaken', 'C Industrie', '2020 september', 24),
(22, 'Bedrijven instellingen en eenmanszaken', 'C Industrie', '2020 oktober', 15),
(23, 'Bedrijven instellingen en eenmanszaken', 'C Industrie', '2020 november**', 13),
(24, 'Bedrijven instellingen en eenmanszaken', 'C Industrie', '2020 december*', 12),
(25, 'Bedrijven instellingen en eenmanszaken', 'D Energievoorziening', '2020 juli', 0),
(26, 'Bedrijven instellingen en eenmanszaken', 'D Energievoorziening', '2020 augustus', 0),
(27, 'Bedrijven instellingen en eenmanszaken', 'D Energievoorziening', '2020 september', 2),
(28, 'Bedrijven instellingen en eenmanszaken', 'D Energievoorziening', '2020 oktober', 0),
(29, 'Bedrijven instellingen en eenmanszaken', 'D Energievoorziening', '2020 november**', 1),
(30, 'Bedrijven instellingen en eenmanszaken', 'D Energievoorziening', '2020 december*', 1),
(31, 'Bedrijven instellingen en eenmanszaken', 'E Waterbedrijven en afvalbeheer', '2020 juli', 0),
(32, 'Bedrijven instellingen en eenmanszaken', 'E Waterbedrijven en afvalbeheer', '2020 augustus', 1),
(33, 'Bedrijven instellingen en eenmanszaken', 'E Waterbedrijven en afvalbeheer', '2020 september', 0),
(34, 'Bedrijven instellingen en eenmanszaken', 'E Waterbedrijven en afvalbeheer', '2020 oktober', 0),
(35, 'Bedrijven instellingen en eenmanszaken', 'E Waterbedrijven en afvalbeheer', '2020 november**', 1),
(36, 'Bedrijven instellingen en eenmanszaken', 'E Waterbedrijven en afvalbeheer', '2020 december*', 1),
(37, 'Bedrijven instellingen en eenmanszaken', 'F Bouwnijverheid', '2020 juli', 24),
(38, 'Bedrijven instellingen en eenmanszaken', 'F Bouwnijverheid', '2020 augustus', 28),
(39, 'Bedrijven instellingen en eenmanszaken', 'F Bouwnijverheid', '2020 september', 43),
(40, 'Bedrijven instellingen en eenmanszaken', 'F Bouwnijverheid', '2020 oktober', 31),
(41, 'Bedrijven instellingen en eenmanszaken', 'F Bouwnijverheid', '2020 november**', 34),
(42, 'Bedrijven instellingen en eenmanszaken', 'F Bouwnijverheid', '2020 december*', 36),
(43, 'Bedrijven instellingen en eenmanszaken', 'G Handel', '2020 juli', 47),
(44, 'Bedrijven instellingen en eenmanszaken', 'G Handel', '2020 augustus', 46),
(45, 'Bedrijven instellingen en eenmanszaken', 'G Handel', '2020 september', 51),
(46, 'Bedrijven instellingen en eenmanszaken', 'G Handel', '2020 oktober', 35),
(47, 'Bedrijven instellingen en eenmanszaken', 'G Handel', '2020 november**', 24),
(48, 'Bedrijven instellingen en eenmanszaken', 'G Handel', '2020 december*', 49),
(49, 'Bedrijven instellingen en eenmanszaken', 'H Vervoer en opslag', '2020 juli', 9),
(50, 'Bedrijven instellingen en eenmanszaken', 'H Vervoer en opslag', '2020 augustus', 12),
(51, 'Bedrijven instellingen en eenmanszaken', 'H Vervoer en opslag', '2020 september', 22),
(52, 'Bedrijven instellingen en eenmanszaken', 'H Vervoer en opslag', '2020 oktober', 10),
(53, 'Bedrijven instellingen en eenmanszaken', 'H Vervoer en opslag', '2020 november**', 18),
(54, 'Bedrijven instellingen en eenmanszaken', 'H Vervoer en opslag', '2020 december*', 13),
(55, 'Bedrijven instellingen en eenmanszaken', 'I Horeca', '2020 juli', 21),
(56, 'Bedrijven instellingen en eenmanszaken', 'I Horeca', '2020 augustus', 12),
(57, 'Bedrijven instellingen en eenmanszaken', 'I Horeca', '2020 september', 16),
(58, 'Bedrijven instellingen en eenmanszaken', 'I Horeca', '2020 oktober', 15),
(59, 'Bedrijven instellingen en eenmanszaken', 'I Horeca', '2020 november**', 15),
(60, 'Bedrijven instellingen en eenmanszaken', 'I Horeca', '2020 december*', 20),
(61, 'Bedrijven instellingen en eenmanszaken', 'J Informatie en communicatie', '2020 juli', 5),
(62, 'Bedrijven instellingen en eenmanszaken', 'J Informatie en communicatie', '2020 augustus', 5),
(63, 'Bedrijven instellingen en eenmanszaken', 'J Informatie en communicatie', '2020 september', 7),
(64, 'Bedrijven instellingen en eenmanszaken', 'J Informatie en communicatie', '2020 oktober', 5),
(65, 'Bedrijven instellingen en eenmanszaken', 'J Informatie en communicatie', '2020 november**', 7),
(66, 'Bedrijven instellingen en eenmanszaken', 'J Informatie en communicatie', '2020 december*', 3),
(67, 'Bedrijven instellingen en eenmanszaken', 'K Financiële dienstverlening', '2020 juli', 27),
(68, 'Bedrijven instellingen en eenmanszaken', 'K Financiële dienstverlening', '2020 augustus', 24),
(69, 'Bedrijven instellingen en eenmanszaken', 'K Financiële dienstverlening', '2020 september', 14),
(70, 'Bedrijven instellingen en eenmanszaken', 'K Financiële dienstverlening', '2020 oktober', 19),
(71, 'Bedrijven instellingen en eenmanszaken', 'K Financiële dienstverlening', '2020 november**', 25),
(72, 'Bedrijven instellingen en eenmanszaken', 'K Financiële dienstverlening', '2020 december*', 12),
(73, 'Bedrijven instellingen en eenmanszaken', 'L Verhuur en handel van onroerend goed', '2020 juli', 2),
(74, 'Bedrijven instellingen en eenmanszaken', 'L Verhuur en handel van onroerend goed', '2020 augustus', 2),
(75, 'Bedrijven instellingen en eenmanszaken', 'L Verhuur en handel van onroerend goed', '2020 september', 5),
(76, 'Bedrijven instellingen en eenmanszaken', 'L Verhuur en handel van onroerend goed', '2020 oktober', 2),
(77, 'Bedrijven instellingen en eenmanszaken', 'L Verhuur en handel van onroerend goed', '2020 november**', 5),
(78, 'Bedrijven instellingen en eenmanszaken', 'L Verhuur en handel van onroerend goed', '2020 december*', 3),
(79, 'Bedrijven instellingen en eenmanszaken', 'M Specialistische zakelijke diensten', '2020 juli', 26),
(80, 'Bedrijven instellingen en eenmanszaken', 'M Specialistische zakelijke diensten', '2020 augustus', 13),
(81, 'Bedrijven instellingen en eenmanszaken', 'M Specialistische zakelijke diensten', '2020 september', 23),
(82, 'Bedrijven instellingen en eenmanszaken', 'M Specialistische zakelijke diensten', '2020 oktober', 16),
(83, 'Bedrijven instellingen en eenmanszaken', 'M Specialistische zakelijke diensten', '2020 november**', 24),
(84, 'Bedrijven instellingen en eenmanszaken', 'M Specialistische zakelijke diensten', '2020 december*', 20),
(85, 'Bedrijven instellingen en eenmanszaken', 'N Verhuur en overige zakelijke diensten', '2020 juli', 19),
(86, 'Bedrijven instellingen en eenmanszaken', 'N Verhuur en overige zakelijke diensten', '2020 augustus', 13),
(87, 'Bedrijven instellingen en eenmanszaken', 'N Verhuur en overige zakelijke diensten', '2020 september', 20),
(88, 'Bedrijven instellingen en eenmanszaken', 'N Verhuur en overige zakelijke diensten', '2020 oktober', 16),
(89, 'Bedrijven instellingen en eenmanszaken', 'N Verhuur en overige zakelijke diensten', '2020 november**', 14),
(90, 'Bedrijven instellingen en eenmanszaken', 'N Verhuur en overige zakelijke diensten', '2020 december*', 16),
(91, 'Bedrijven instellingen en eenmanszaken', 'O Openbaar bestuur en overheidsdiensten', '2020 juli', 0),
(92, 'Bedrijven instellingen en eenmanszaken', 'O Openbaar bestuur en overheidsdiensten', '2020 augustus', 0),
(93, 'Bedrijven instellingen en eenmanszaken', 'O Openbaar bestuur en overheidsdiensten', '2020 september', 0),
(94, 'Bedrijven instellingen en eenmanszaken', 'O Openbaar bestuur en overheidsdiensten', '2020 oktober', 0),
(95, 'Bedrijven instellingen en eenmanszaken', 'O Openbaar bestuur en overheidsdiensten', '2020 november**', 0),
(96, 'Bedrijven instellingen en eenmanszaken', 'O Openbaar bestuur en overheidsdiensten', '2020 december*', 0),
(97, 'Bedrijven instellingen en eenmanszaken', 'P Onderwijs', '2020 juli', 4),
(98, 'Bedrijven instellingen en eenmanszaken', 'P Onderwijs', '2020 augustus', 3),
(99, 'Bedrijven instellingen en eenmanszaken', 'P Onderwijs', '2020 september', 1),
(100, 'Bedrijven instellingen en eenmanszaken', 'P Onderwijs', '2020 oktober', 4),
(101, 'Bedrijven instellingen en eenmanszaken', 'P Onderwijs', '2020 november**', 1),
(102, 'Bedrijven instellingen en eenmanszaken', 'P Onderwijs', '2020 december*', 0),
(103, 'Bedrijven instellingen en eenmanszaken', 'Q Gezondheids- en welzijnszorg', '2020 juli', 8),
(104, 'Bedrijven instellingen en eenmanszaken', 'Q Gezondheids- en welzijnszorg', '2020 augustus', 2),
(105, 'Bedrijven instellingen en eenmanszaken', 'Q Gezondheids- en welzijnszorg', '2020 september', 9),
(106, 'Bedrijven instellingen en eenmanszaken', 'Q Gezondheids- en welzijnszorg', '2020 oktober', 6),
(107, 'Bedrijven instellingen en eenmanszaken', 'Q Gezondheids- en welzijnszorg', '2020 november**', 9),
(108, 'Bedrijven instellingen en eenmanszaken', 'Q Gezondheids- en welzijnszorg', '2020 december*', 3),
(109, 'Bedrijven instellingen en eenmanszaken', 'R Cultuur en sport en recreatie', '2020 juli', 6),
(110, 'Bedrijven instellingen en eenmanszaken', 'R Cultuur en sport en recreatie', '2020 augustus', 6),
(111, 'Bedrijven instellingen en eenmanszaken', 'R Cultuur en sport en recreatie', '2020 september', 8),
(112, 'Bedrijven instellingen en eenmanszaken', 'R Cultuur en sport en recreatie', '2020 oktober', 3),
(113, 'Bedrijven instellingen en eenmanszaken', 'R Cultuur en sport en recreatie', '2020 november**', 7),
(114, 'Bedrijven instellingen en eenmanszaken', 'R Cultuur en sport en recreatie', '2020 december*', 6),
(115, 'Bedrijven instellingen en eenmanszaken', 'S Overige dienstverlening', '2020 juli', 1),
(116, 'Bedrijven instellingen en eenmanszaken', 'S Overige dienstverlening', '2020 augustus', 5),
(117, 'Bedrijven instellingen en eenmanszaken', 'S Overige dienstverlening', '2020 september', 3),
(118, 'Bedrijven instellingen en eenmanszaken', 'S Overige dienstverlening', '2020 oktober', 4),
(119, 'Bedrijven instellingen en eenmanszaken', 'S Overige dienstverlening', '2020 november**', 4),
(120, 'Bedrijven instellingen en eenmanszaken', 'S Overige dienstverlening', '2020 december*', 4),
(121, 'Bedrijven instellingen en eenmanszaken', 'T Huishoudens', '2020 juli', 0),
(122, 'Bedrijven instellingen en eenmanszaken', 'T Huishoudens', '2020 augustus', 0),
(123, 'Bedrijven instellingen en eenmanszaken', 'T Huishoudens', '2020 september', 0),
(124, 'Bedrijven instellingen en eenmanszaken', 'T Huishoudens', '2020 oktober', 0),
(125, 'Bedrijven instellingen en eenmanszaken', 'T Huishoudens', '2020 november**', 0),
(126, 'Bedrijven instellingen en eenmanszaken', 'T Huishoudens', '2020 december*', 0),
(127, 'Bedrijven instellingen en eenmanszaken', 'SBI-code onbekend', '2020 juli', 2),
(128, 'Bedrijven instellingen en eenmanszaken', 'SBI-code onbekend', '2020 augustus', 2),
(129, 'Bedrijven instellingen en eenmanszaken', 'SBI-code onbekend', '2020 september', 1),
(130, 'Bedrijven instellingen en eenmanszaken', 'SBI-code onbekend', '2020 oktober', 0),
(131, 'Bedrijven instellingen en eenmanszaken', 'SBI-code onbekend', '2020 november**', 0),
(132, 'Bedrijven instellingen en eenmanszaken', 'SBI-code onbekend', '2020 december*', 0),
(133, 'Natuurlijk persoon met eenmanszaak', 'A-U Alle economische activiteiten', '2020 juli', 29),
(134, 'Natuurlijk persoon met eenmanszaak', 'A-U Alle economische activiteiten', '2020 augustus', 24),
(135, 'Natuurlijk persoon met eenmanszaak', 'A-U Alle economische activiteiten', '2020 september', 37),
(136, 'Natuurlijk persoon met eenmanszaak', 'A-U Alle economische activiteiten', '2020 oktober', 22),
(137, 'Natuurlijk persoon met eenmanszaak', 'A-U Alle economische activiteiten', '2020 november**', 35),
(138, 'Natuurlijk persoon met eenmanszaak', 'A-U Alle economische activiteiten', '2020 december*', 47),
(139, 'Natuurlijk persoon met eenmanszaak', 'A Landbouw en bosbouw en visserij', '2020 juli', 1),
(140, 'Natuurlijk persoon met eenmanszaak', 'A Landbouw en bosbouw en visserij', '2020 augustus', 0),
(141, 'Natuurlijk persoon met eenmanszaak', 'A Landbouw en bosbouw en visserij', '2020 september', 0),
(142, 'Natuurlijk persoon met eenmanszaak', 'A Landbouw en bosbouw en visserij', '2020 oktober', 0),
(143, 'Natuurlijk persoon met eenmanszaak', 'A Landbouw en bosbouw en visserij', '2020 november**', 1),
(144, 'Natuurlijk persoon met eenmanszaak', 'A Landbouw en bosbouw en visserij', '2020 december*', 0),
(145, 'Natuurlijk persoon met eenmanszaak', 'B Delfstoffenwinning', '2020 juli', 0),
(146, 'Natuurlijk persoon met eenmanszaak', 'B Delfstoffenwinning', '2020 augustus', 0),
(147, 'Natuurlijk persoon met eenmanszaak', 'B Delfstoffenwinning', '2020 september', 0),
(148, 'Natuurlijk persoon met eenmanszaak', 'B Delfstoffenwinning', '2020 oktober', 0),
(149, 'Natuurlijk persoon met eenmanszaak', 'B Delfstoffenwinning', '2020 november**', 0),
(150, 'Natuurlijk persoon met eenmanszaak', 'B Delfstoffenwinning', '2020 december*', 0),
(151, 'Natuurlijk persoon met eenmanszaak', 'C Industrie', '2020 juli', 3),
(152, 'Natuurlijk persoon met eenmanszaak', 'C Industrie', '2020 augustus', 2),
(153, 'Natuurlijk persoon met eenmanszaak', 'C Industrie', '2020 september', 1),
(154, 'Natuurlijk persoon met eenmanszaak', 'C Industrie', '2020 oktober', 0),
(155, 'Natuurlijk persoon met eenmanszaak', 'C Industrie', '2020 november**', 2),
(156, 'Natuurlijk persoon met eenmanszaak', 'C Industrie', '2020 december*', 5),
(157, 'Natuurlijk persoon met eenmanszaak', 'D Energievoorziening', '2020 juli', 0),
(158, 'Natuurlijk persoon met eenmanszaak', 'D Energievoorziening', '2020 augustus', 0),
(159, 'Natuurlijk persoon met eenmanszaak', 'D Energievoorziening', '2020 september', 0),
(160, 'Natuurlijk persoon met eenmanszaak', 'D Energievoorziening', '2020 oktober', 0),
(161, 'Natuurlijk persoon met eenmanszaak', 'D Energievoorziening', '2020 november**', 0),
(162, 'Natuurlijk persoon met eenmanszaak', 'D Energievoorziening', '2020 december*', 0),
(163, 'Natuurlijk persoon met eenmanszaak', 'E Waterbedrijven en afvalbeheer', '2020 juli', 0),
(164, 'Natuurlijk persoon met eenmanszaak', 'E Waterbedrijven en afvalbeheer', '2020 augustus', 0),
(165, 'Natuurlijk persoon met eenmanszaak', 'E Waterbedrijven en afvalbeheer', '2020 september', 0),
(166, 'Natuurlijk persoon met eenmanszaak', 'E Waterbedrijven en afvalbeheer', '2020 oktober', 0),
(167, 'Natuurlijk persoon met eenmanszaak', 'E Waterbedrijven en afvalbeheer', '2020 november**', 0),
(168, 'Natuurlijk persoon met eenmanszaak', 'E Waterbedrijven en afvalbeheer', '2020 december*', 0),
(169, 'Natuurlijk persoon met eenmanszaak', 'F Bouwnijverheid', '2020 juli', 9),
(170, 'Natuurlijk persoon met eenmanszaak', 'F Bouwnijverheid', '2020 augustus', 8),
(171, 'Natuurlijk persoon met eenmanszaak', 'F Bouwnijverheid', '2020 september', 14),
(172, 'Natuurlijk persoon met eenmanszaak', 'F Bouwnijverheid', '2020 oktober', 9),
(173, 'Natuurlijk persoon met eenmanszaak', 'F Bouwnijverheid', '2020 november**', 21),
(174, 'Natuurlijk persoon met eenmanszaak', 'F Bouwnijverheid', '2020 december*', 20),
(175, 'Natuurlijk persoon met eenmanszaak', 'G Handel', '2020 juli', 8),
(176, 'Natuurlijk persoon met eenmanszaak', 'G Handel', '2020 augustus', 7),
(177, 'Natuurlijk persoon met eenmanszaak', 'G Handel', '2020 september', 10),
(178, 'Natuurlijk persoon met eenmanszaak', 'G Handel', '2020 oktober', 4),
(179, 'Natuurlijk persoon met eenmanszaak', 'G Handel', '2020 november**', 2),
(180, 'Natuurlijk persoon met eenmanszaak', 'G Handel', '2020 december*', 7),
(181, 'Natuurlijk persoon met eenmanszaak', 'H Vervoer en opslag', '2020 juli', 3),
(182, 'Natuurlijk persoon met eenmanszaak', 'H Vervoer en opslag', '2020 augustus', 1),
(183, 'Natuurlijk persoon met eenmanszaak', 'H Vervoer en opslag', '2020 september', 2),
(184, 'Natuurlijk persoon met eenmanszaak', 'H Vervoer en opslag', '2020 oktober', 1),
(185, 'Natuurlijk persoon met eenmanszaak', 'H Vervoer en opslag', '2020 november**', 3),
(186, 'Natuurlijk persoon met eenmanszaak', 'H Vervoer en opslag', '2020 december*', 2),
(187, 'Natuurlijk persoon met eenmanszaak', 'I Horeca', '2020 juli', 5),
(188, 'Natuurlijk persoon met eenmanszaak', 'I Horeca', '2020 augustus', 2),
(189, 'Natuurlijk persoon met eenmanszaak', 'I Horeca', '2020 september', 6),
(190, 'Natuurlijk persoon met eenmanszaak', 'I Horeca', '2020 oktober', 1),
(191, 'Natuurlijk persoon met eenmanszaak', 'I Horeca', '2020 november**', 3),
(192, 'Natuurlijk persoon met eenmanszaak', 'I Horeca', '2020 december*', 5),
(193, 'Natuurlijk persoon met eenmanszaak', 'J Informatie en communicatie', '2020 juli', 0),
(194, 'Natuurlijk persoon met eenmanszaak', 'J Informatie en communicatie', '2020 augustus', 0),
(195, 'Natuurlijk persoon met eenmanszaak', 'J Informatie en communicatie', '2020 september', 0),
(196, 'Natuurlijk persoon met eenmanszaak', 'J Informatie en communicatie', '2020 oktober', 1),
(197, 'Natuurlijk persoon met eenmanszaak', 'J Informatie en communicatie', '2020 november**', 0),
(198, 'Natuurlijk persoon met eenmanszaak', 'J Informatie en communicatie', '2020 december*', 0),
(199, 'Natuurlijk persoon met eenmanszaak', 'K Financiële dienstverlening', '2020 juli', 0),
(200, 'Natuurlijk persoon met eenmanszaak', 'K Financiële dienstverlening', '2020 augustus', 0),
(201, 'Natuurlijk persoon met eenmanszaak', 'K Financiële dienstverlening', '2020 september', 0),
(202, 'Natuurlijk persoon met eenmanszaak', 'K Financiële dienstverlening', '2020 oktober', 0),
(203, 'Natuurlijk persoon met eenmanszaak', 'K Financiële dienstverlening', '2020 november**', 0),
(204, 'Natuurlijk persoon met eenmanszaak', 'K Financiële dienstverlening', '2020 december*', 0),
(205, 'Natuurlijk persoon met eenmanszaak', 'L Verhuur en handel van onroerend goed', '2020 juli', 0),
(206, 'Natuurlijk persoon met eenmanszaak', 'L Verhuur en handel van onroerend goed', '2020 augustus', 0),
(207, 'Natuurlijk persoon met eenmanszaak', 'L Verhuur en handel van onroerend goed', '2020 september', 0),
(208, 'Natuurlijk persoon met eenmanszaak', 'L Verhuur en handel van onroerend goed', '2020 oktober', 0),
(209, 'Natuurlijk persoon met eenmanszaak', 'L Verhuur en handel van onroerend goed', '2020 november**', 0),
(210, 'Natuurlijk persoon met eenmanszaak', 'L Verhuur en handel van onroerend goed', '2020 december*', 1),
(211, 'Natuurlijk persoon met eenmanszaak', 'M Specialistische zakelijke diensten', '2020 juli', 0),
(212, 'Natuurlijk persoon met eenmanszaak', 'M Specialistische zakelijke diensten', '2020 augustus', 1),
(213, 'Natuurlijk persoon met eenmanszaak', 'M Specialistische zakelijke diensten', '2020 september', 0),
(214, 'Natuurlijk persoon met eenmanszaak', 'M Specialistische zakelijke diensten', '2020 oktober', 0),
(215, 'Natuurlijk persoon met eenmanszaak', 'M Specialistische zakelijke diensten', '2020 november**', 1),
(216, 'Natuurlijk persoon met eenmanszaak', 'M Specialistische zakelijke diensten', '2020 december*', 1),
(217, 'Natuurlijk persoon met eenmanszaak', 'N Verhuur en overige zakelijke diensten', '2020 juli', 0),
(218, 'Natuurlijk persoon met eenmanszaak', 'N Verhuur en overige zakelijke diensten', '2020 augustus', 2),
(219, 'Natuurlijk persoon met eenmanszaak', 'N Verhuur en overige zakelijke diensten', '2020 september', 1),
(220, 'Natuurlijk persoon met eenmanszaak', 'N Verhuur en overige zakelijke diensten', '2020 oktober', 2),
(221, 'Natuurlijk persoon met eenmanszaak', 'N Verhuur en overige zakelijke diensten', '2020 november**', 0),
(222, 'Natuurlijk persoon met eenmanszaak', 'N Verhuur en overige zakelijke diensten', '2020 december*', 2),
(223, 'Natuurlijk persoon met eenmanszaak', 'O Openbaar bestuur en overheidsdiensten', '2020 juli', 0),
(224, 'Natuurlijk persoon met eenmanszaak', 'O Openbaar bestuur en overheidsdiensten', '2020 augustus', 0),
(225, 'Natuurlijk persoon met eenmanszaak', 'O Openbaar bestuur en overheidsdiensten', '2020 september', 0),
(226, 'Natuurlijk persoon met eenmanszaak', 'O Openbaar bestuur en overheidsdiensten', '2020 oktober', 0),
(227, 'Natuurlijk persoon met eenmanszaak', 'O Openbaar bestuur en overheidsdiensten', '2020 november**', 0),
(228, 'Natuurlijk persoon met eenmanszaak', 'O Openbaar bestuur en overheidsdiensten', '2020 december*', 0),
(229, 'Natuurlijk persoon met eenmanszaak', 'P Onderwijs', '2020 juli', 0),
(230, 'Natuurlijk persoon met eenmanszaak', 'P Onderwijs', '2020 augustus', 0),
(231, 'Natuurlijk persoon met eenmanszaak', 'P Onderwijs', '2020 september', 0),
(232, 'Natuurlijk persoon met eenmanszaak', 'P Onderwijs', '2020 oktober', 0),
(233, 'Natuurlijk persoon met eenmanszaak', 'P Onderwijs', '2020 november**', 1),
(234, 'Natuurlijk persoon met eenmanszaak', 'P Onderwijs', '2020 december*', 0),
(235, 'Natuurlijk persoon met eenmanszaak', 'Q Gezondheids- en welzijnszorg', '2020 juli', 0),
(236, 'Natuurlijk persoon met eenmanszaak', 'Q Gezondheids- en welzijnszorg', '2020 augustus', 0),
(237, 'Natuurlijk persoon met eenmanszaak', 'Q Gezondheids- en welzijnszorg', '2020 september', 0),
(238, 'Natuurlijk persoon met eenmanszaak', 'Q Gezondheids- en welzijnszorg', '2020 oktober', 1),
(239, 'Natuurlijk persoon met eenmanszaak', 'Q Gezondheids- en welzijnszorg', '2020 november**', 1),
(240, 'Natuurlijk persoon met eenmanszaak', 'Q Gezondheids- en welzijnszorg', '2020 december*', 1),
(241, 'Natuurlijk persoon met eenmanszaak', 'R Cultuur en sport en recreatie', '2020 juli', 0),
(242, 'Natuurlijk persoon met eenmanszaak', 'R Cultuur en sport en recreatie', '2020 augustus', 1),
(243, 'Natuurlijk persoon met eenmanszaak', 'R Cultuur en sport en recreatie', '2020 september', 1),
(244, 'Natuurlijk persoon met eenmanszaak', 'R Cultuur en sport en recreatie', '2020 oktober', 1),
(245, 'Natuurlijk persoon met eenmanszaak', 'R Cultuur en sport en recreatie', '2020 november**', 0),
(246, 'Natuurlijk persoon met eenmanszaak', 'R Cultuur en sport en recreatie', '2020 december*', 0),
(247, 'Natuurlijk persoon met eenmanszaak', 'S Overige dienstverlening', '2020 juli', 0),
(248, 'Natuurlijk persoon met eenmanszaak', 'S Overige dienstverlening', '2020 augustus', 0),
(249, 'Natuurlijk persoon met eenmanszaak', 'S Overige dienstverlening', '2020 september', 2),
(250, 'Natuurlijk persoon met eenmanszaak', 'S Overige dienstverlening', '2020 oktober', 2),
(251, 'Natuurlijk persoon met eenmanszaak', 'S Overige dienstverlening', '2020 november**', 0),
(252, 'Natuurlijk persoon met eenmanszaak', 'S Overige dienstverlening', '2020 december*', 3),
(253, 'Natuurlijk persoon met eenmanszaak', 'T Huishoudens', '2020 juli', 0),
(254, 'Natuurlijk persoon met eenmanszaak', 'T Huishoudens', '2020 augustus', 0),
(255, 'Natuurlijk persoon met eenmanszaak', 'T Huishoudens', '2020 september', 0),
(256, 'Natuurlijk persoon met eenmanszaak', 'T Huishoudens', '2020 oktober', 0),
(257, 'Natuurlijk persoon met eenmanszaak', 'T Huishoudens', '2020 november**', 0),
(258, 'Natuurlijk persoon met eenmanszaak', 'T Huishoudens', '2020 december*', 0),
(259, 'Natuurlijk persoon met eenmanszaak', 'SBI-code onbekend', '2020 juli', 0),
(260, 'Natuurlijk persoon met eenmanszaak', 'SBI-code onbekend', '2020 augustus', 0),
(261, 'Natuurlijk persoon met eenmanszaak', 'SBI-code onbekend', '2020 september', 0),
(262, 'Natuurlijk persoon met eenmanszaak', 'SBI-code onbekend', '2020 oktober', 0),
(263, 'Natuurlijk persoon met eenmanszaak', 'SBI-code onbekend', '2020 november**', 0),
(264, 'Natuurlijk persoon met eenmanszaak', 'SBI-code onbekend', '2020 december*', 0),
(265, 'Bedrijven en instellingen', 'A-U Alle economische activiteiten', '2020 juli', 194),
(266, 'Bedrijven en instellingen', 'A-U Alle economische activiteiten', '2020 augustus', 166),
(267, 'Bedrijven en instellingen', 'A-U Alle economische activiteiten', '2020 september', 212),
(268, 'Bedrijven en instellingen', 'A-U Alle economische activiteiten', '2020 oktober', 162),
(269, 'Bedrijven en instellingen', 'A-U Alle economische activiteiten', '2020 november**', 168),
(270, 'Bedrijven en instellingen', 'A-U Alle economische activiteiten', '2020 december*', 153),
(271, 'Bedrijven en instellingen', 'A Landbouw en bosbouw en visserij', '2020 juli', 1),
(272, 'Bedrijven en instellingen', 'A Landbouw en bosbouw en visserij', '2020 augustus', 2),
(273, 'Bedrijven en instellingen', 'A Landbouw en bosbouw en visserij', '2020 september', 0),
(274, 'Bedrijven en instellingen', 'A Landbouw en bosbouw en visserij', '2020 oktober', 3),
(275, 'Bedrijven en instellingen', 'A Landbouw en bosbouw en visserij', '2020 november**', 0),
(276, 'Bedrijven en instellingen', 'A Landbouw en bosbouw en visserij', '2020 december*', 1),
(277, 'Bedrijven en instellingen', 'B Delfstoffenwinning', '2020 juli', 0),
(278, 'Bedrijven en instellingen', 'B Delfstoffenwinning', '2020 augustus', 0),
(279, 'Bedrijven en instellingen', 'B Delfstoffenwinning', '2020 september', 0),
(280, 'Bedrijven en instellingen', 'B Delfstoffenwinning', '2020 oktober', 0),
(281, 'Bedrijven en instellingen', 'B Delfstoffenwinning', '2020 november**', 0),
(282, 'Bedrijven en instellingen', 'B Delfstoffenwinning', '2020 december*', 0),
(283, 'Bedrijven en instellingen', 'C Industrie', '2020 juli', 17),
(284, 'Bedrijven en instellingen', 'C Industrie', '2020 augustus', 12),
(285, 'Bedrijven en instellingen', 'C Industrie', '2020 september', 23),
(286, 'Bedrijven en instellingen', 'C Industrie', '2020 oktober', 15),
(287, 'Bedrijven en instellingen', 'C Industrie', '2020 november**', 11),
(288, 'Bedrijven en instellingen', 'C Industrie', '2020 december*', 7),
(289, 'Bedrijven en instellingen', 'D Energievoorziening', '2020 juli', 0),
(290, 'Bedrijven en instellingen', 'D Energievoorziening', '2020 augustus', 0),
(291, 'Bedrijven en instellingen', 'D Energievoorziening', '2020 september', 2),
(292, 'Bedrijven en instellingen', 'D Energievoorziening', '2020 oktober', 0),
(293, 'Bedrijven en instellingen', 'D Energievoorziening', '2020 november**', 1),
(294, 'Bedrijven en instellingen', 'D Energievoorziening', '2020 december*', 1),
(295, 'Bedrijven en instellingen', 'E Waterbedrijven en afvalbeheer', '2020 juli', 0),
(296, 'Bedrijven en instellingen', 'E Waterbedrijven en afvalbeheer', '2020 augustus', 1),
(297, 'Bedrijven en instellingen', 'E Waterbedrijven en afvalbeheer', '2020 september', 0),
(298, 'Bedrijven en instellingen', 'E Waterbedrijven en afvalbeheer', '2020 oktober', 0),
(299, 'Bedrijven en instellingen', 'E Waterbedrijven en afvalbeheer', '2020 november**', 1),
(300, 'Bedrijven en instellingen', 'E Waterbedrijven en afvalbeheer', '2020 december*', 1),
(301, 'Bedrijven en instellingen', 'F Bouwnijverheid', '2020 juli', 15),
(302, 'Bedrijven en instellingen', 'F Bouwnijverheid', '2020 augustus', 20),
(303, 'Bedrijven en instellingen', 'F Bouwnijverheid', '2020 september', 29),
(304, 'Bedrijven en instellingen', 'F Bouwnijverheid', '2020 oktober', 22),
(305, 'Bedrijven en instellingen', 'F Bouwnijverheid', '2020 november**', 13),
(306, 'Bedrijven en instellingen', 'F Bouwnijverheid', '2020 december*', 16),
(307, 'Bedrijven en instellingen', 'G Handel', '2020 juli', 39),
(308, 'Bedrijven en instellingen', 'G Handel', '2020 augustus', 39),
(309, 'Bedrijven en instellingen', 'G Handel', '2020 september', 41),
(310, 'Bedrijven en instellingen', 'G Handel', '2020 oktober', 31),
(311, 'Bedrijven en instellingen', 'G Handel', '2020 november**', 22),
(312, 'Bedrijven en instellingen', 'G Handel', '2020 december*', 42),
(313, 'Bedrijven en instellingen', 'H Vervoer en opslag', '2020 juli', 6),
(314, 'Bedrijven en instellingen', 'H Vervoer en opslag', '2020 augustus', 11),
(315, 'Bedrijven en instellingen', 'H Vervoer en opslag', '2020 september', 20),
(316, 'Bedrijven en instellingen', 'H Vervoer en opslag', '2020 oktober', 9),
(317, 'Bedrijven en instellingen', 'H Vervoer en opslag', '2020 november**', 15),
(318, 'Bedrijven en instellingen', 'H Vervoer en opslag', '2020 december*', 11),
(319, 'Bedrijven en instellingen', 'I Horeca', '2020 juli', 16),
(320, 'Bedrijven en instellingen', 'I Horeca', '2020 augustus', 10),
(321, 'Bedrijven en instellingen', 'I Horeca', '2020 september', 10),
(322, 'Bedrijven en instellingen', 'I Horeca', '2020 oktober', 14),
(323, 'Bedrijven en instellingen', 'I Horeca', '2020 november**', 12),
(324, 'Bedrijven en instellingen', 'I Horeca', '2020 december*', 15),
(325, 'Bedrijven en instellingen', 'J Informatie en communicatie', '2020 juli', 5),
(326, 'Bedrijven en instellingen', 'J Informatie en communicatie', '2020 augustus', 5),
(327, 'Bedrijven en instellingen', 'J Informatie en communicatie', '2020 september', 7),
(328, 'Bedrijven en instellingen', 'J Informatie en communicatie', '2020 oktober', 4),
(329, 'Bedrijven en instellingen', 'J Informatie en communicatie', '2020 november**', 7),
(330, 'Bedrijven en instellingen', 'J Informatie en communicatie', '2020 december*', 3),
(331, 'Bedrijven en instellingen', 'K Financiële dienstverlening', '2020 juli', 27),
(332, 'Bedrijven en instellingen', 'K Financiële dienstverlening', '2020 augustus', 24),
(333, 'Bedrijven en instellingen', 'K Financiële dienstverlening', '2020 september', 14),
(334, 'Bedrijven en instellingen', 'K Financiële dienstverlening', '2020 oktober', 19),
(335, 'Bedrijven en instellingen', 'K Financiële dienstverlening', '2020 november**', 25),
(336, 'Bedrijven en instellingen', 'K Financiële dienstverlening', '2020 december*', 12),
(337, 'Bedrijven en instellingen', 'L Verhuur en handel van onroerend goed', '2020 juli', 2),
(338, 'Bedrijven en instellingen', 'L Verhuur en handel van onroerend goed', '2020 augustus', 2),
(339, 'Bedrijven en instellingen', 'L Verhuur en handel van onroerend goed', '2020 september', 5),
(340, 'Bedrijven en instellingen', 'L Verhuur en handel van onroerend goed', '2020 oktober', 2),
(341, 'Bedrijven en instellingen', 'L Verhuur en handel van onroerend goed', '2020 november**', 5),
(342, 'Bedrijven en instellingen', 'L Verhuur en handel van onroerend goed', '2020 december*', 2),
(343, 'Bedrijven en instellingen', 'M Specialistische zakelijke diensten', '2020 juli', 26),
(344, 'Bedrijven en instellingen', 'M Specialistische zakelijke diensten', '2020 augustus', 12),
(345, 'Bedrijven en instellingen', 'M Specialistische zakelijke diensten', '2020 september', 23),
(346, 'Bedrijven en instellingen', 'M Specialistische zakelijke diensten', '2020 oktober', 16),
(347, 'Bedrijven en instellingen', 'M Specialistische zakelijke diensten', '2020 november**', 23),
(348, 'Bedrijven en instellingen', 'M Specialistische zakelijke diensten', '2020 december*', 19),
(349, 'Bedrijven en instellingen', 'N Verhuur en overige zakelijke diensten', '2020 juli', 19),
(350, 'Bedrijven en instellingen', 'N Verhuur en overige zakelijke diensten', '2020 augustus', 11),
(351, 'Bedrijven en instellingen', 'N Verhuur en overige zakelijke diensten', '2020 september', 19),
(352, 'Bedrijven en instellingen', 'N Verhuur en overige zakelijke diensten', '2020 oktober', 14),
(353, 'Bedrijven en instellingen', 'N Verhuur en overige zakelijke diensten', '2020 november**', 14),
(354, 'Bedrijven en instellingen', 'N Verhuur en overige zakelijke diensten', '2020 december*', 14),
(355, 'Bedrijven en instellingen', 'O Openbaar bestuur en overheidsdiensten', '2020 juli', 0),
(356, 'Bedrijven en instellingen', 'O Openbaar bestuur en overheidsdiensten', '2020 augustus', 0),
(357, 'Bedrijven en instellingen', 'O Openbaar bestuur en overheidsdiensten', '2020 september', 0),
(358, 'Bedrijven en instellingen', 'O Openbaar bestuur en overheidsdiensten', '2020 oktober', 0),
(359, 'Bedrijven en instellingen', 'O Openbaar bestuur en overheidsdiensten', '2020 november**', 0),
(360, 'Bedrijven en instellingen', 'O Openbaar bestuur en overheidsdiensten', '2020 december*', 0),
(361, 'Bedrijven en instellingen', 'P Onderwijs', '2020 juli', 4),
(362, 'Bedrijven en instellingen', 'P Onderwijs', '2020 augustus', 3),
(363, 'Bedrijven en instellingen', 'P Onderwijs', '2020 september', 1),
(364, 'Bedrijven en instellingen', 'P Onderwijs', '2020 oktober', 4),
(365, 'Bedrijven en instellingen', 'P Onderwijs', '2020 november**', 0),
(366, 'Bedrijven en instellingen', 'P Onderwijs', '2020 december*', 0),
(367, 'Bedrijven en instellingen', 'Q Gezondheids- en welzijnszorg', '2020 juli', 8),
(368, 'Bedrijven en instellingen', 'Q Gezondheids- en welzijnszorg', '2020 augustus', 2),
(369, 'Bedrijven en instellingen', 'Q Gezondheids- en welzijnszorg', '2020 september', 9),
(370, 'Bedrijven en instellingen', 'Q Gezondheids- en welzijnszorg', '2020 oktober', 5),
(371, 'Bedrijven en instellingen', 'Q Gezondheids- en welzijnszorg', '2020 november**', 8),
(372, 'Bedrijven en instellingen', 'Q Gezondheids- en welzijnszorg', '2020 december*', 2),
(373, 'Bedrijven en instellingen', 'R Cultuur en sport en recreatie', '2020 juli', 6),
(374, 'Bedrijven en instellingen', 'R Cultuur en sport en recreatie', '2020 augustus', 5),
(375, 'Bedrijven en instellingen', 'R Cultuur en sport en recreatie', '2020 september', 7),
(376, 'Bedrijven en instellingen', 'R Cultuur en sport en recreatie', '2020 oktober', 2),
(377, 'Bedrijven en instellingen', 'R Cultuur en sport en recreatie', '2020 november**', 7),
(378, 'Bedrijven en instellingen', 'R Cultuur en sport en recreatie', '2020 december*', 6),
(379, 'Bedrijven en instellingen', 'S Overige dienstverlening', '2020 juli', 1),
(380, 'Bedrijven en instellingen', 'S Overige dienstverlening', '2020 augustus', 5),
(381, 'Bedrijven en instellingen', 'S Overige dienstverlening', '2020 september', 1),
(382, 'Bedrijven en instellingen', 'S Overige dienstverlening', '2020 oktober', 2),
(383, 'Bedrijven en instellingen', 'S Overige dienstverlening', '2020 november**', 4),
(384, 'Bedrijven en instellingen', 'S Overige dienstverlening', '2020 december*', 1),
(385, 'Bedrijven en instellingen', 'T Huishoudens', '2020 juli', 0),
(386, 'Bedrijven en instellingen', 'T Huishoudens', '2020 augustus', 0),
(387, 'Bedrijven en instellingen', 'T Huishoudens', '2020 september', 0),
(388, 'Bedrijven en instellingen', 'T Huishoudens', '2020 oktober', 0),
(389, 'Bedrijven en instellingen', 'T Huishoudens', '2020 november**', 0),
(390, 'Bedrijven en instellingen', 'T Huishoudens', '2020 december*', 0),
(391, 'Bedrijven en instellingen', 'SBI-code onbekend', '2020 juli', 2),
(392, 'Bedrijven en instellingen', 'SBI-code onbekend', '2020 augustus', 2),
(393, 'Bedrijven en instellingen', 'SBI-code onbekend', '2020 september', 1),
(394, 'Bedrijven en instellingen', 'SBI-code onbekend', '2020 oktober', 0),
(395, 'Bedrijven en instellingen', 'SBI-code onbekend', '2020 november**', 0),
(396, 'Bedrijven en instellingen', 'SBI-code onbekend', '2020 december*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `financieel_branche_overzicht_investeringen`
--

CREATE TABLE `financieel_branche_overzicht_investeringen` (
  `OverzichtID` int(20) NOT NULL,
  `Branche` varchar(255) NOT NULL,
  `Periode` varchar(255) NOT NULL,
  `Investering_Materiele_Vaste_Activa` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `financieel_branche_overzicht_investeringen`
--

INSERT INTO `financieel_branche_overzicht_investeringen` (`OverzichtID`, `Branche`, `Periode`, `Investering_Materiele_Vaste_Activa`) VALUES
(1, 'B Delfstoffenwinning', '2009', 1473.7),
(2, 'B Delfstoffenwinning', '2010', 1446.4),
(3, 'B Delfstoffenwinning', '2011', 2873),
(4, 'B Delfstoffenwinning', '2012', 1713.6),
(5, 'B Delfstoffenwinning', '2013', 1359.5),
(6, 'B Delfstoffenwinning', '2014', 1946.9),
(7, 'B Delfstoffenwinning', '2015', 2890.5),
(8, 'B Delfstoffenwinning', '2016', 1010),
(9, 'B Delfstoffenwinning', '2017', 530.5),
(10, 'B Delfstoffenwinning', '2018', 513.5),
(11, 'B Delfstoffenwinning', '2019*', 822.9),
(12, 'C Industrie', '2009', 7319.2),
(13, 'C Industrie', '2010', 6104.9),
(14, 'C Industrie', '2011', 7218.1),
(15, 'C Industrie', '2012', 7377.7),
(16, 'C Industrie', '2013', 6924.4),
(17, 'C Industrie', '2014', 7207.5),
(18, 'C Industrie', '2015', 8114.3),
(19, 'C Industrie', '2016', 8059.8),
(20, 'C Industrie', '2017', 8802),
(21, 'C Industrie', '2018', 10557.1),
(22, 'C Industrie', '2019*', 12097.6),
(23, 'D Energievoorziening', '2009', 1906.8),
(24, 'D Energievoorziening', '2010', 3387.9),
(25, 'D Energievoorziening', '2011', 3998.7),
(26, 'D Energievoorziening', '2012', 4552.5),
(27, 'D Energievoorziening', '2013', 5185.6),
(28, 'D Energievoorziening', '2014', 6173.4),
(29, 'D Energievoorziening', '2015', 4485.5),
(30, 'D Energievoorziening', '2016', 2419.3),
(31, 'D Energievoorziening', '2017', 2619.1),
(32, 'D Energievoorziening', '2018', 3033.2),
(33, 'D Energievoorziening', '2019*', 4328.4),
(34, 'E Waterbedrijven en afvalbeheer', '2009', 1342.4),
(35, 'E Waterbedrijven en afvalbeheer', '2010', 1703.4),
(36, 'E Waterbedrijven en afvalbeheer', '2011', 1824.1),
(37, 'E Waterbedrijven en afvalbeheer', '2012', 996.9),
(38, 'E Waterbedrijven en afvalbeheer', '2013', 842.7),
(39, 'E Waterbedrijven en afvalbeheer', '2014', 937),
(40, 'E Waterbedrijven en afvalbeheer', '2015', 1054),
(41, 'E Waterbedrijven en afvalbeheer', '2016', 1079.2),
(42, 'E Waterbedrijven en afvalbeheer', '2017', 1018.5),
(43, 'E Waterbedrijven en afvalbeheer', '2018', 1265.5),
(44, 'E Waterbedrijven en afvalbeheer', '2019*', 1329.3),
(45, 'F Bouwnijverheid', '2009', 2030.9),
(46, 'F Bouwnijverheid', '2010', 1790.4),
(47, 'F Bouwnijverheid', '2011', 2025.6),
(48, 'F Bouwnijverheid', '2012', 1700.7),
(49, 'F Bouwnijverheid', '2013', 1727.3),
(50, 'F Bouwnijverheid', '2014', 1652),
(51, 'F Bouwnijverheid', '2015', 1945.8),
(52, 'F Bouwnijverheid', '2016', 2060.4),
(53, 'F Bouwnijverheid', '2017', 2509.6),
(54, 'F Bouwnijverheid', '2018', 3203),
(55, 'F Bouwnijverheid', '2019*', 4479.3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `financieel_branche_overzicht_bedrijven`
--
ALTER TABLE `financieel_branche_overzicht_bedrijven`
  ADD PRIMARY KEY (`OverzichtID`);

--
-- Indexes for table `financieel_branche_overzicht_faillissementen`
--
ALTER TABLE `financieel_branche_overzicht_faillissementen`
  ADD PRIMARY KEY (`OverzichtID`);

--
-- Indexes for table `financieel_branche_overzicht_investeringen`
--
ALTER TABLE `financieel_branche_overzicht_investeringen`
  ADD PRIMARY KEY (`OverzichtID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `financieel_branche_overzicht_bedrijven`
--
ALTER TABLE `financieel_branche_overzicht_bedrijven`
  MODIFY `OverzichtID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `financieel_branche_overzicht_faillissementen`
--
ALTER TABLE `financieel_branche_overzicht_faillissementen`
  MODIFY `OverzichtID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT for table `financieel_branche_overzicht_investeringen`
--
ALTER TABLE `financieel_branche_overzicht_investeringen`
  MODIFY `OverzichtID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
