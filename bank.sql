-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2019 at 10:48 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Account_number` int(20) NOT NULL,
  `Balance` int(20) NOT NULL,
  `Category` text NOT NULL,
  `Record_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `Branch_name` varchar(100) NOT NULL,
  `Branch_city` text NOT NULL,
  `Assets` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`Branch_name`, `Branch_city`, `Assets`) VALUES
('Gasabo_12', 'Gasabo', 16000000),
('Huye_16', 'Huye', 9000000),
('Kicukiro_11', 'kicukiro', 15000000),
('Muhanga_17', 'Muhanga', 12000000),
('Musanze_18', 'Musanze', 12000000),
('Nyagatare_15', 'Nyagatare', 10000000),
('Nyarugenge_13', 'Nyarugenge', 18000000),
('Rubavu_20', 'Rubavu', 10000000),
('Rulindo_19', 'Rulindo', 8000000),
('Rusizi_21', 'Rusizi', 12000000),
('Rwamagana_14', 'Rwamagana', 8000000);

-- --------------------------------------------------------

--
-- Table structure for table `credit_card`
--

CREATE TABLE `credit_card` (
  `credit_card_number` int(20) NOT NULL,
  `limited_amount` int(10) NOT NULL,
  `Date_expired` date NOT NULL,
  `Record_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Record-id` int(20) NOT NULL,
  `Customer_name` text NOT NULL,
  `Customer_street` text NOT NULL,
  `Customer_city` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Record-id`, `Customer_name`, `Customer_street`, `Customer_city`) VALUES
(1, 'NTISERURWA SULAIMAN', 'kigali,Gasabo 23 ave', 'Gasabo '),
(2, 'NZOZINZIZA NYAMPINGA GLORIA', 'Rwamagana,Muhazi,34 ave', 'Rwamagana'),
(3, ' MUKARUKUNDO DELPHINE', 'Huye,Kaminuza,56 st', 'Huye'),
(4, 'JABO DIVIN PARACLET', 'Kigali,Kicukiro 23 st', 'Kicukiro '),
(7, 'NDAMAGE DIUEDONNÈ', 'Musanze,Kinigi 67 st', 'Musanze'),
(8, 'GASHONGA AMOURAM', 'Nyagatare,Matimba 787st', 'Nyagatare'),
(9, 'NDAHAYO GISELE ', 'Muhanga,Kabgayi', 'Muhanga'),
(10, 'NDANYUZWE HERITIER', 'Kigali,Nyarungenge 676 ave', 'Nyarungenge '),
(13, 'NIBUTSINTWARI CHADRACK', 'Kigali,Kicukiro 45 ave', 'Kicukiro '),
(14, 'NSABIMANA DANIEL', 'Kigali,kicukiro 456 st', 'kicukiro '),
(15, ' NSHIMIYIMANA MOISE', 'Kigali,kicukiro,367 ave', 'kicukiro'),
(16, 'PENDA YANGE NIYO NADINE', 'Kigali,Kicukiro 222 st', 'Kicukiro '),
(17, 'UWANYIRIGIRA SANDRINE ', 'Kigali,Kicukiro 456 st', 'Kicukiro '),
(18, 'NIYITANGA JEAN PIERRE', 'Kigali,Kicukiro 67 ave', 'Kicukiro '),
(19, 'NIYIGENA ESTHER', 'Kigali,Kicukiro, 345 ave', 'Kicukiro'),
(20, ' KABAGEMA CARINE', 'Kigali,Kicukiro 56 st', 'Kicukiro '),
(21, ' MUHUMUZA THIERRY', 'Kigali,Kicukiro,56 ave', 'Kicukiro'),
(22, 'ABAYISENGA ALINE JOYEUSE SALUS', 'Kigali,Kicukiro 67 st', 'Kicukiro '),
(23, 'MANIRIHO ANASTASE', 'Kigali,Kicukiro 333 st', 'Kicukiro '),
(24, 'TURABUMUKIZA JOSEPH', 'Kigali,Kicukiro, 56 st', 'Kicukiro'),
(25, 'DUSABIMANA EMMANUEL', 'Kigali,Kicukiro 69 ave', 'Kicukiro '),
(26, ' MURERA BLANCHE', 'Kigali,Kicukiro 212 st', 'Kicukiro '),
(27, 'NIYITUGIZE FABIOLA', 'Kigali,Gasabo KG 56 st', 'Gasabo '),
(28, 'NDAYISENGA ERIC', 'Kigali,Gasabo KG 90 st', 'Gasabo '),
(29, 'NGIRUWONSANGA EMMANUEL', 'Kigali,Gasabo, KG 47 ave', 'Gasabo'),
(30, 'TUYISENGE THEOGENE', 'Kigali,Gasabo KG 56 st', 'Gasabo'),
(31, 'NIYITEGURA EUGENE', 'Kigali,Gasabo KG 66 st', 'Gasabo '),
(32, 'NSANZIMANA FABRICE', 'Kigali,Gasabo KG 60 ave', 'Gasabo '),
(33, 'MUHOZA RENE', 'Kigali,Gasabo KG 67 ave', 'Gasabo '),
(34, 'TUGIZWENIMANA GERVAIS', 'Kigali,Gasabo KG 17 ave', 'Gasabo '),
(35, 'RUTINDUKA EMMANUEL', 'Kigali,Gasabo KG 17 ave', 'Gasabo '),
(36, 'MUSONERA MARIE AIME', 'Kigali,Gasabo KG 170 st', 'Gasabo '),
(37, 'NGABIRE REBECCA', 'Kigali,Gasabo KG 170 st', 'Gasabo '),
(38, 'RUTAYISIRE FRANK ', 'Kigali,Gasabo KG 53 st', 'Gasabo '),
(39, 'USANASE UWINEZA VERONIQUE ', 'Kigali,Gasabo KG 32 ave', 'Gasabo '),
(40, 'RUTAYISIRE MARIE MERCI HERMIONE', 'Kigali,Gasabo KG 12 st', 'Gasabo '),
(41, 'NZAYISENGA THEOGENE ', 'Kigali,Nyarugenge KN 50 ave', 'Nyarugenge'),
(42, 'RUGWIRO DALIUS', 'Kigali,Nyarugenge KN 12 ave', 'Nyarugenge'),
(43, 'NTWALI EMMANUEL ', 'Kigali,Nyarugenge KN 57 st', 'Nyarugenge'),
(44, 'NIZEYIMANA JEAN NEPOMUSCENE', 'Kigali,Nyarugenge KN 75 ave', 'Nyarugenge'),
(45, 'TWIZERIMANA JEAN DAMASCENE', 'Kigali,Nyarugenge KN 70 st', 'Nyarugenge'),
(46, 'SADIKI ETIENNE', 'Kigali,Nyarugenge KN 45 st', 'Nyarugenge'),
(47, 'NSHIMIYIMANA JEAN CLAUDE', 'Kigali,Nyarugenge KN 123 ave', 'Nyarugenge'),
(48, 'NIYIGENA CLAUDINE', 'Kigali,Nyarugenge KN 89 ave', 'Nyarugenge'),
(49, 'DUSABIMANA JOEL', 'Kigali,Nyarugenge KN 122 ave', 'Nyarugenge'),
(50, 'NIYONSABA JEAN DE LA PAIX', 'Kigali,Nyarugenge KN 78 st', 'Nyarugenge'),
(51, 'NIYOMUTABAZI AIME ', 'Kigali,Nyarugenge KN 50 ave', 'Nyarugenge'),
(52, 'SHIMWE MARIE ROSE', 'Kigali,Nyarugenge KN 567 st', 'Nyarugenge'),
(53, 'HABUMUGISHA ANASTHASE', 'Kigali,Nyarugenge KN 57 st', 'Nyarugenge '),
(54, 'ISHIMWE ADELINE ', 'Kigali,Nyarugenge KN 56 ave', 'Nyarugenge'),
(55, 'NYAMPINGA GAUDENCE', 'Rwamagana,Rwamagana RR 132 st', 'Rwamagana'),
(56, 'AKINTORE SHEMSA', 'Rwamagana,Rwamagana RR 123 st', 'Rwamagana'),
(57, 'UMWIZA JOSIANE', 'Rwamagana,Musha RM 13 st', 'Rwamagana'),
(58, 'DUSHIMIYIMANA OLIVER', 'Rwamagana,Muhazi RM 167 ave', 'Rwamagana'),
(59, 'GASASIRA EMMANUEL ', 'Rwamagana,Musha RM 15 st', 'Rwamagana'),
(60, 'IRANKUNDA CLEMENT ', 'Rwamagana,Musha RM 15 st', 'Rwamagana '),
(61, 'UKURIKIYUMUKIZA FELIX', 'Rwamagana,Musha RM 15 st', 'Rwamagana '),
(62, 'HABINEZA PATRICK ', 'Rwamagana,Rwamagana RR 12 st', 'Rwamagana'),
(63, 'MUHIRWA CHARLES ', 'Rwamagana,Rwamagana RR 13 st', 'Rwamagana'),
(64, 'KUBWIMANA JEAN CLAUDE', 'Rwamagana,Musha RM 132 st', 'Rwamagana'),
(65, 'NDIYUNZE EMMANUEL', 'Rwamagana,Gahengeri RG 12 st', 'Rwamagana'),
(66, 'TUYIZERE PACIFIQUE', 'Rwamagana,Rwamagana RR 68 st', 'Rwamagana'),
(67, 'KAMANZI FIDELE', 'Rwamagana,Ntunga RN 66 ave', 'Rwamagana'),
(68, 'IZABAYO SOLANGE ', 'Rwamagana,Rwamagana RR 67 st', 'Rwamagana '),
(69, 'UMURERWA JOSIANE', 'Nyagatare,Mutara NM 45 st', 'Nyagatare'),
(70, 'KANANI EMMANUEL', 'Nyagatare,Matimba NM 90 ave', 'Nyagatare'),
(71, 'UWASE ANGELIQUE', 'Nyagatare,Nyagatare NN 123 st', 'Nyagatare'),
(72, 'UWINGENEYE CLEMENCE ', 'Nyagatare,Nyagatare NN 13 ave', 'Nyagatare'),
(73, 'EGIDE MUPENZI', 'Nyagatare,Nyagatare NN 56 ave', 'Nyagatare'),
(74, 'NIYOMUKIZA UMUTONI GISELE ', 'Nyagatare,Nyagatare NN 56 ave', 'Nyagatare'),
(75, 'NSHIMIYIMANA EMMANUEL', 'Nyagatare,Nyagatare NN 32 st', 'Nyagatare'),
(76, 'MUKAKALISA ANITHA', 'Nyagatare,Nyagatare NN 67 ave', 'Nyagatare'),
(77, 'ISHIMWE ERIC ', 'Nyagatare,Nyagatare NN 213 ave', 'Nyagatare'),
(78, 'HAKIZIMANA SAMUEL ', 'Nyagatare,Nyagatare NN 12 st', 'Nyagatare'),
(79, 'MUNEZERO ANGELIQUE ', 'Nyagatare,Nyagatare NN 45 st', 'Nyagatare'),
(80, 'NSENGIMANA FRANCOIS XAVIER ', 'Nyagatare,Matimba NM 23 ave', 'Nyagatare'),
(81, 'NIYOMUGABO GILBERT ', 'Nyagatare,Nyagatare NN 12 ave', 'Nyagatare'),
(82, 'HAKIZIMANA  ALBERT', 'Nyagatare,Nyagatare NN 145 st', 'Nyagatare'),
(83, 'MUTEGETSI FREDY', 'Huye,Ngoma HN 12 ave', 'Huye'),
(84, 'IMANIRADUKUNDA THACIEN ', 'Huye,Huye HH 30 st', 'Huye'),
(85, 'NYIRANGIZWENIMANA THEOPISTE', 'Huye,Ngoma HN 145 ave', 'Huye'),
(86, 'HABIMANA ALPHONSE ', 'Huye,Huye HH 23 st', 'Huye'),
(87, 'MUSHIMIYIMANA LILIOSE ', 'Huye,Huye HH 35 st', 'Huye'),
(88, 'BIZIMANA RICHARD', 'Huye,Huye HH 32 ave', 'Huye'),
(89, 'IRADUKUNDA CLAUDINE', 'Huye,Ngoma HN 32 ave', 'Huye'),
(90, 'ANTETERE PHILEMON', 'Huye,Huye HH 12 ave', 'Huye'),
(91, 'UWAMAHORO JEANNETTE', 'Huye,Ngoma HN 45 ave', 'Huye'),
(92, 'NSEKEYUKUNZE IRADUKUNDA GENTILLE ', 'Huye,Ngoma HN 12 ave', 'Huye'),
(93, 'AHISHAKIYE VIVINE ', 'Huye,Huye HH 23 st', 'Huye'),
(94, 'MUTUYIMANA DELPHINE', 'Huye,Huye HH 29 st', 'Huye'),
(95, 'NIGAKUZE PASCALINE ', 'Huye,Kaminuza HK 43 st', 'Huye'),
(96, 'NKUSI JOSEPH ', 'Huye,Huye HH 23 st', 'Huye'),
(97, 'HABUMUGISHA SILAS', 'Muhanga,Muhanga MM 89 ave', 'Muhanga'),
(98, 'BAMPIRE DINAH', 'Muhanga,Muhanga MM 67 st', 'Muhanga'),
(99, 'NTAKIRUTIMANA MANASSE ', 'Muhanga,Muhanga MM 45 ave', 'Muhanga'),
(100, 'TUYISENGE KEVINE OLGA', 'Muhanga,Kabgayi MK 123 ave', 'Muhanga'),
(101, 'ZANINKA ELISABETH ', 'Muhanga,Muhanga MM 59 ave', 'Muhanga'),
(102, 'TUYISABE CLAUDINE', 'Muhanga,Muhanga MM 13 ave', 'Muhanga'),
(103, 'MUTONI DJALIA', 'Muhanga,Muhanga MM 56 st', 'Muhanga'),
(104, 'NGANIMANA MIKE ', 'Muhanga,Kabgayi MK 54 st', 'Muhanga'),
(105, 'MUKABYAGAJU HONORINE', 'Muhanga,Muhanga MM 26 st', 'Muhanga'),
(106, 'NKURUNZIZA EMMANUEL ', 'Muhanga,Muhanga MM 545 ave', 'Muhanga'),
(107, 'TUYISENGE GASPARD', 'Muhanga,Muhanga MM 16 ave', 'Muhanga'),
(108, 'TWAMBAJIMANA JEAN DE DIEU', 'Muhanga,Muhanga MM 26 st', 'Muhanga'),
(109, 'IZERIMANA WELLARS', 'Muhanga,Gitarama MG 57 ave', 'Muhanga'),
(110, 'NIYIGENA EMMANUEL ', 'Muhanga,Muhanga MM 56 st', 'Muhanga'),
(111, 'MANIRERE VERONIQUE ', 'Musanze,Ruhengeri MR 23 ave', 'Musanze'),
(112, 'BIGIRIMANA MARIUS', 'Musanze,Musanze MM 26 st', 'Musanze'),
(113, 'MUKASEKURU FRANCINE', 'Musanze,Musanze MM 45 st', 'Musanze'),
(114, 'MUKARUKUNDO ANGELIQUE', 'Musanze,Musanze MM 56 ave', 'Musanze'),
(115, 'MUGABO JEAN FORBIN ', 'Musanze,Kinigi MK 34 ave', 'Musanze'),
(116, 'NIYOBUHUNGIRO TITO', 'Musanze,Musanze MM 67 st', 'Musanze'),
(117, 'NIYONKURU REVELIEN ', 'Musanze,Musanze MM 45 ave', 'Musanze'),
(118, 'NGABONZIMA ALAIN ', 'Musanze,Musanze MM 34 ave', 'Musanze'),
(119, 'UTUJE NICOLE SOPHIE', 'Musanze,Musanze MM 23 ave', 'Musanze'),
(120, 'BIMENYIMANA THEOGENE', 'Musanze,Kinigi MK 16 ave', 'Musanze'),
(121, 'UWAMAHORO ANGELIQUE ', 'Musanze,Musanze MM 123 ave', 'Musanze'),
(122, 'DUSABE VALENS', 'Musanze,Musanze MM 213 st', 'Musanze'),
(123, 'BAHOZA AIMABLE ', 'Musanze,Musanze MM 67 ave', 'Musanze'),
(124, 'NIYONKURU CONSTANTE ', 'Musanze,Musanze MM 45 st', 'Musanze'),
(125, 'UWAJENEZA SOLANGE ', 'Rulindo, Cyeu RC 45 st', 'Rulindo'),
(126, 'MAHORO FRANCOISE', 'Rulindo, Rulindo RR 67 st', 'Rulindo'),
(127, 'HARERIMANA ISHIMWE GRATIEN ', 'Rulindo, Rulindo RR 67 st', 'Rulindo'),
(128, 'BENIMANA THIERRY', 'Rulindo, Rulindo RR 243 ave', 'Rulindo'),
(129, 'NIZEYIMANA JEAN DE DIEU ', 'Rulindo, Rulindo RR 33 ave', 'Rulindo'),
(130, 'UZAMUKUNDA JOSIANE', 'Rulindo, Rulindo RR 126 st', 'Rulindo'),
(131, 'MUTUYIMANA VIRGINIE', 'Rulindo, Rulindo RR 123 ave', 'Rulindo'),
(132, 'NIYIBIGIRA SERGE', 'Rulindo, Rulindo RR 33 ave', 'Rulindo'),
(133, 'NISHIMIRWE LIBEREE ', 'Rulindo, Cyeru RC 34 ave', 'Rulindo'),
(134, 'NIYIGENA ELIAS ', 'Rulindo, Bukumba 34 ave', 'Rulindo'),
(135, 'GASHUMBA WILSON ', 'Rulindo, Motobo RM 45 st', 'Rulindo'),
(136, 'NYAMURANGWA EMERY ', 'Rulindo, Buhoma RB 56 ave', 'Rulindo'),
(137, 'BENEGUSENGA PATRICK', 'Rulindo, Nyarutovu RN 12 ave', 'Rulindo'),
(138, 'HATEGEKIMANA NESTOR ', 'Rulindo, Bugarura RB 37 ave', 'Rulindo'),
(139, 'UWINEZA GEORGETTE ', 'Rulindo, Bukonya RB 34 st', 'Rulindo'),
(140, 'NIYOMUGABO HASSAN ', 'Rubavu,Gisenyi RG 67 ave  ', 'Rubavu'),
(141, 'HAZITAYEZU PHILIPPE ', 'Rubavu,Gisenyi RG 46 st  ', 'Rubavu'),
(142, 'HABINEZA ELIE', 'Rubavu,Nyamyumba RN 35 ave ', 'Rubavu'),
(143, 'NSENGIMANA EMMANUEL', 'Rubavu,Rubavu RR 90 ave ', 'Rubavu'),
(144, 'NYIRINKINDI FRANCK ', 'Rubavu,Rubavu RR 78 st  ', 'Rubavu'),
(145, 'MUKUNZI GATALI JOSUE', 'Rubavu,Kayove RK 56 st  ', 'Rubavu'),
(146, 'MUHORACYEYE CHANTAL ', 'Rubavu,Rubavu RR 234 st ', 'Rubavu'),
(147, 'UWIMANA REGINE ', 'Rubavu,Cyanzarwe RC 45 ave  ', 'Rubavu'),
(148, 'UWIMANA MARIE FRANCOISE', 'Rubavu,Rubavu RR 67 ave  ', 'Rubavu'),
(149, 'TUYISINGIZE VIATEUR', 'Rubavu,Kayove RK 67 ave  ', 'Rubavu'),
(150, 'TUYISHIMIRE LEONILLE', 'Rubavu,Mutura RM 24 ave ', 'Rubavu'),
(151, 'DUSHIMIMANA DANIEL', 'Rubavu,Gasiza RG 45 st  ', 'Rubavu'),
(152, 'NIYONKURU BERCHMAS ', 'Rubavu,Rubavu RR 123 st  ', 'Rubavu'),
(153, 'REBA ADDA', 'Rubavu,Rubavu RR 45 st  ', 'Rubavu'),
(154, 'YISABIRUMVA LAETITIA', 'Rubavu,Nyamyumba, RN 456 st', 'Rubavu'),
(155, 'IRADUKUNDA PATRICK', 'Rusizi, Kamembe RK 12ave', 'Rusizi'),
(156, 'NIYONKURU ARISTIDE ', 'Rusizi, Bugarama RB 12 ave', 'Rusizi'),
(157, 'IRADUKUNDA EUGENE ', 'Rusizi, Rusizi RR 145 st', 'Rusizi'),
(158, 'KAMPIRE HENRIETTE', 'Rusizi, Kamembe RK 12 ave', 'Rusizi'),
(159, 'NTAKIRUTIMANA DESIRE ', 'Rusizi, Kamembe RK 23 ave', 'Rusizi'),
(160, 'KWIZERA MUGISHA FRORENTINE ', 'Rusizi, Rusizi RR 12 st', 'Rusizi'),
(161, 'MUGISHA JEAN DE DIEU ', 'Rusizi, Cyangugu RC 12 ave', 'Rusizi'),
(162, 'UWIZERA ALINE ', 'Rusizi, Impala RI 34 ave', 'Rusizi'),
(163, 'UMUTONI VANESSA', 'Rusizi, Gashonga RG 56 ave', 'Rusizi'),
(164, 'UMURERWA MARIE GRACE ', 'Rusizi, Border RB 12 st', 'Rusizi'),
(165, 'BYIRINGIRO HESRON', 'Rusizi, Bugarama RB 123 ave', 'Rusizi'),
(166, 'MUKABYIRINGIRO ESTHER', 'Rusizi, Cyangugu RC 112 ave', 'Rusizi'),
(167, 'NSENGIMANA FAISAL', 'Rusizi, Impala RI 123 ave', 'Rusizi'),
(168, 'NIKUZWE JOSELYNE', 'Rusizi, Gatare RG 45 ave', 'Rusizi'),
(169, 'INGABIRE INES ', 'Rusizi, Bugarama RB 45 ave', 'Rusizi');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `Loan_number` int(12) NOT NULL,
  `Loan_amount` int(20) NOT NULL,
  `Paid_back_amount` int(20) NOT NULL,
  `Remaining_amount` int(20) NOT NULL,
  `Record_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `Record_id` int(20) NOT NULL,
  `Manager_name` text NOT NULL,
  `Manager_email` text NOT NULL,
  `Branch_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`Record_id`, `Manager_name`, `Manager_email`, `Branch_id`) VALUES
(1, 'TUYISHIME ERIC', 'E.TUYISHIME@sacco.com', 'Muhanga_17'),
(2, 'KABATESI RUTH', 'R.KABATESI@sacco.com', 'Gasabo_12'),
(3, 'NIRAGIRE RUTAGENGWA EMERY ', 'E.NIRAGIRE@sacco.com', 'Rwamagana_14'),
(4, 'IRADUKUNDA UMUTONI LAETITIA', 'L.IRADUKUNDA@sacco.com', 'Kicukiro_11'),
(5, 'NYIRANDEGEYA DONATHA', 'D.NYIRANDEGEYA@sacco.com', 'Nyarugenge_13'),
(6, 'NIYONGIRA AIMABLE', 'A.NIYONGIRA@sacco.com', 'Musanze_18'),
(7, 'BUNTUBWIMANA ENOCK', 'E.BUNTUBWIMANA@sacco.com', 'Rulindo_19'),
(8, 'MAZIMPAKA EMMANUEL', 'E.MAZIMPAKA@sacco.com', 'Rubavu_20'),
(9, 'UWIRINGIYIMANA JOHN ', 'J.UWIRINGIYIMANA@sacco.com', 'Nyagatare_15'),
(10, 'NIRINGIYIMANA VITAL ', 'V.NIRINGIYIMANA@sacco.com', 'Rusizi_21'),
(11, 'HORANIMANA MAURICE', 'M.HORANIMANA@sacco.com', 'Huye_16');

-- --------------------------------------------------------

--
-- Table structure for table `teller`
--

CREATE TABLE `teller` (
  `Teller_ID` int(20) NOT NULL,
  `Teller_name` text NOT NULL,
  `Teller_email` text NOT NULL,
  `Branch_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teller`
--

INSERT INTO `teller` (`Teller_ID`, `Teller_name`, `Teller_email`, `Branch_id`) VALUES
(1, 'Muhirwa Richarido', 'r.muhirwa@sacco.com', 'Gasabo_12'),
(2, 'anne kevine', 'k.anne@sacco.com', 'Gasabo_12'),
(3, 'umuhuza aime', 'a.umuza@sacco.com', 'Gasabo_12'),
(4, 'ahmed mutusi', 'a.mutesi@sacco.com', 'Gasabo_12'),
(5, 'Amani mupenzi', 'a.mupenzi@sacco.com', 'Kicukiro_11'),
(6, 'Aline Gasaro', 'a.gasaro@sacco.com', 'Kicukiro_11'),
(7, 'Alice Rwaka', 'a.rwaka@sacco.com', 'Kicukiro_11'),
(8, 'Alain Musa', 'a.musa@sacco.com', 'Kicukiro_11'),
(9, 'Abigail Keza ', 'a.keza@sacco.com', 'Nyarugenge_13'),
(10, 'Bernard Mucyo', 'b.mucyo@sacco.com', 'Nyarugenge_13'),
(11, 'Benjamin Muhumure', 'b.muhumure@sacco.com', 'Nyarugenge_13'),
(12, 'Bella Gihozo', 'b.gihozo@sacco.com', 'Nyarugenge_13'),
(13, 'Bernadette Muhoza ', 'b.muhoza@sacco.com', 'Rwamagana_14'),
(14, 'Bagire vincent', 'v.bagire@sacco.com', 'Rwamagana_14'),
(15, 'NYIRANDIKUMANA SARAH ', 'S.NYIRANDIKUMANA@sacco.com', 'Rwamagana_14'),
(16, ' DUFITUMUKIZA SAMUEL ', 'S. DUFITUMUKIZA@sacco.com', 'Rwamagana_14'),
(17, 'UWUMUREMYI JEANNETTE', 'J.UWUMUREMYI@sacco.com', 'Muhanga_17'),
(18, 'BAJENEZA YVES REGIS', 'R.BAJENEZA@sacco.com', 'Muhanga_17'),
(19, ' RUKUNDO MUNEZERO PHILEMON ', ' P.RUKUNDO@sacco.com', 'Muhanga_17'),
(20, 'IRADUKUNDA CHRITIAN PACIFIQUE', 'P.IRADUKUNDA@sacco.com', 'Muhanga_17'),
(21, 'NAMAHIRWEYIMANA JOSEPH', 'J.NAMAHIRWEYIMANA@sacco.com', 'Musanze_18'),
(22, 'KURAWIGE ODETTE ', 'O.KURAWIGE@sacco.com', 'Musanze_18'),
(23, 'NIYONIZEYE JOSELYNE', 'J.NIYONIZEYE@sacco.com', 'Musanze_18'),
(24, 'MURINDAHABI FELIX ', 'F.MURINDAHABI@sacco.com', 'Musanze_18'),
(25, 'AKIMANA DOMINA', 'D.AKIMANA@sacco.com', 'Nyagatare_15'),
(26, 'HAGENIMANA ALPHONSE', 'A.HAGENIMANA@sacco.com', 'Nyagatare_15'),
(27, 'GATO ZEPHANIE', 'Z.GATO@sacco.com', 'Nyagatare_15'),
(28, 'TWARAYISABYE DASSAN ', 'D.TWARAYISABYE@sacco.com', 'Nyagatare_15'),
(29, ' NKURUNZIZA PATRICK', 'P.NKURUNZIZA@sacco.com', 'Huye_16'),
(30, ' IRADUKUNDA MARIAM', 'M.IRADUKUNDA@sacco.com', 'Huye_16'),
(31, 'RUBAGUMIRE EMMY NELTONS ', 'N.RUBAGUMIRE@sacco.com', 'Huye_16'),
(32, 'ISIMBI DEBORAH', 'D.ISIMBI@sacco.com', 'Huye_16'),
(33, 'IYAMUREMYE JACQUES', 'J.IYAMUREMYE@sacco.com', 'Rubavu_20'),
(34, 'MANIRAFASHA CLEMENCE', 'C.MANIRAFASHA@sacco.com', 'Rubavu_20'),
(35, 'KAREGEYA FRED', 'D.KAREGEYA@sacco.com', 'Rubavu_20'),
(36, 'IKUZWE CHRISTIAN', 'C.IKUZWE@sacco.com', 'Rubavu_20'),
(37, 'MUNEZERO LAMBERT CHARMANT', 'L.MUNEZERO@sacco.com', 'Rusizi_21'),
(38, 'IRANKUNDA GERVAIS', 'G.IRANKUNDA@sacco.com', 'Rusizi_21'),
(39, 'IRADUKUNDA FELIX', 'F.IRADUKUNDA@sacco.com', 'Rusizi_21'),
(40, 'MUSA RAMADHAN', 'R.MUSA@sacco.com', 'Rusizi_21'),
(41, 'NIYONGOMBWA ALEXIS', 'A.NIYONGOMBWA@sacco.com', 'Rulindo_19'),
(42, 'NIYONZIMA SAMUEL ', 'S.NIYONZIMA@sacco.com', 'Rulindo_19'),
(43, 'NYIRARUKUNDO HONORINE ', 'H.NYIRARUKUNDO@sacco.com', 'Rulindo_19'),
(44, 'TWIZEYIMANA BRIGITTE ', 'B.TWIZEYIMANA@sacco.com', 'Rulindo_19');

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `Transfer_ID` int(20) NOT NULL,
  `Acount_number` int(20) NOT NULL,
  `Receiver_account_number` int(20) NOT NULL,
  `Amount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Account_number`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`Branch_name`);

--
-- Indexes for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD PRIMARY KEY (`credit_card_number`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Record-id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`Loan_number`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`Record_id`);

--
-- Indexes for table `teller`
--
ALTER TABLE `teller`
  ADD PRIMARY KEY (`Teller_ID`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`Transfer_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Record-id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `Loan_number` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `Record_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teller`
--
ALTER TABLE `teller`
  MODIFY `Teller_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `Transfer_ID` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
