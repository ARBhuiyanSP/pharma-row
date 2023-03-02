-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2023 at 12:52 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharma_row`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `status` int(11) NOT NULL,
  `added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `email`, `birthdate`, `status`, `added`) VALUES
(1, 'Emily', 'Hegmann', 'janis.walker@example.org', '1979-03-16', 0, '1976-04-05 11:59:54'),
(2, 'Miracle', 'Anderson', 'grady.arlo@example.net', '1975-02-02', 1, '2006-04-13 11:34:40'),
(3, 'Kendra', 'Raynor', 'lexi.tremblay@example.net', '1979-03-19', 1, '1987-11-17 14:51:03'),
(4, 'Simone', 'Huel', 'nikolas.little@example.net', '1971-09-30', 0, '2006-05-13 21:56:04'),
(5, 'Ena', 'Harris', 'vicky.flatley@example.org', '2010-10-27', 1, '2004-12-06 06:04:25'),
(6, 'Emiliano', 'Kshlerin', 'sigmund.schoen@example.org', '1979-04-20', 1, '2009-12-10 05:42:56'),
(7, 'Jedediah', 'Hermiston', 'jankunding@example.org', '1976-08-01', 1, '1997-09-06 03:35:39'),
(8, 'Garfield', 'Terry', 'darrion15@example.net', '1974-02-09', 1, '1979-07-15 10:44:20'),
(9, 'Rhea', 'Keebler', 'brandon81@example.net', '2020-08-27', 1, '2007-11-01 16:06:43'),
(10, 'Reid', 'Hegmann', 'torphy.erika@example.net', '2008-03-15', 1, '1983-07-07 20:01:45'),
(11, 'Aubrey', 'Tremblay', 'kennith18@example.com', '1974-09-30', 1, '2012-02-03 10:12:04'),
(12, 'Avery', 'Jenkins', 'jennyfer61@example.org', '1979-01-17', 1, '1977-02-22 11:54:08'),
(13, 'Anika', 'Kihn', 'reinger.hannah@example.net', '1996-05-02', 1, '1984-04-15 02:29:15'),
(14, 'Ocie', 'Wiegand', 'mariane31@example.net', '1974-05-19', 1, '2013-11-20 22:13:15'),
(15, 'Marty', 'Nader', 'mosciski.hildegard@example.net', '2013-01-19', 0, '1983-08-09 22:20:04'),
(16, 'Brent', 'Schmeler', 'ihermiston@example.com', '2002-02-22', 1, '2014-05-01 20:54:14'),
(17, 'Arvilla', 'Adams', 'allen15@example.com', '2021-03-25', 1, '1979-09-01 02:04:34'),
(18, 'Mollie', 'Conroy', 'arielle47@example.net', '1981-09-21', 1, '1987-08-10 10:39:41'),
(19, 'Edd', 'Raynor', 'funk.kimberly@example.org', '1979-08-26', 1, '2003-10-22 22:16:12'),
(20, 'Esmeralda', 'Emard', 'qauer@example.org', '2018-03-14', 1, '1979-01-10 21:21:01'),
(21, 'Dion', 'O\'Hara', 'kip83@example.net', '1980-05-14', 1, '1972-02-10 08:03:52'),
(22, 'Patience', 'Hoeger', 'carter.cecelia@example.net', '1978-07-19', 0, '2016-06-25 17:21:40'),
(23, 'Pearl', 'Shanahan', 'nyasia.white@example.org', '1994-07-14', 1, '1988-09-06 21:30:13'),
(24, 'Janet', 'Bogisich', 'shegmann@example.org', '2012-02-01', 1, '2012-08-06 01:13:56'),
(25, 'Josiane', 'Toy', 'dave.boehm@example.com', '2019-11-14', 1, '2014-03-22 10:43:13'),
(27, 'Winston', 'Jakubowski', 'lemuel77@example.com', '1971-08-08', 1, '1970-03-18 03:29:42'),
(28, 'Travon', 'Rohan', 'orin.langosh@example.org', '1970-08-16', 1, '2016-06-21 15:44:13'),
(29, 'Susie', 'Schmitt', 'theodora59@example.com', '1990-01-27', 1, '1985-08-16 04:18:50'),
(30, 'Roma', 'Friesen', 'trey.turcotte@example.com', '1987-08-24', 1, '1991-02-22 12:57:15'),
(31, 'Gerard', 'Schmitt', 'bonita75@example.net', '2001-07-08', 1, '2020-12-09 23:25:19'),
(32, 'Retha', 'Ryan', 'cierra40@example.org', '1975-08-29', 1, '2019-09-04 18:54:14'),
(33, 'Irwin', 'Reinger', 'chasity.steuber@example.com', '2000-02-19', 1, '2010-11-20 04:27:43'),
(34, 'Cletus', 'Bernhard', 'sandra.stiedemann@example.com', '1974-04-05', 1, '1990-02-15 22:04:40'),
(36, 'Dayne', 'Hagenes', 'reuben27@example.com', '2011-06-05', 1, '2014-07-01 20:58:27'),
(37, 'Mose', 'Stehr', 'josh.abshire@example.com', '1989-10-30', 1, '1973-03-31 18:41:15'),
(39, 'Skye', 'Thompson', 'kylie.dare@example.net', '1987-10-01', 1, '2007-08-06 14:30:21'),
(40, 'Bradley', 'Bernier', 'kris.ernie@example.com', '1981-03-17', 1, '1988-01-27 19:24:33'),
(41, 'Lenora', 'Greenfelder', 'collins.georgianna@example.net', '1994-12-25', 1, '1996-04-19 00:03:56'),
(42, 'Verlie', 'Legros', 'rkunze@example.org', '1980-08-16', 1, '1973-05-12 17:11:05'),
(43, 'Marco', 'Dickens', 'dan37@example.net', '1976-05-21', 1, '1994-04-02 06:32:44'),
(44, 'Toby', 'Steuber', 'kelly08@example.org', '2016-05-15', 1, '1973-03-11 19:48:08'),
(45, 'Bernie', 'Kilback', 'tyson15@example.org', '1990-04-18', 1, '1976-09-24 19:08:26'),
(46, 'Gretchen', 'Gleichner', 'nspencer@example.net', '1983-09-08', 1, '1979-01-31 23:09:16'),
(47, 'Madelyn', 'Swaniawski', 'cassie95@example.net', '1993-09-08', 1, '1976-03-23 01:34:13'),
(48, 'Ashleigh', 'Rohan', 'jeramie.murphy@example.net', '1996-12-14', 1, '2011-09-25 21:39:31'),
(49, 'Arely', 'Douglas', 'leora97@example.org', '1990-05-18', 1, '1971-09-22 08:06:48'),
(51, 'Joaquin', 'Reilly', 'vallie.russel@example.com', '1992-08-17', 1, '1978-03-03 06:28:19'),
(52, 'Phyllis', 'Mueller', 'o\'reilly.luella@example.com', '1997-12-02', 1, '1990-03-18 06:29:31'),
(53, 'Franz', 'Lesch', 'dratke@example.net', '1993-10-20', 1, '2010-03-28 11:46:55'),
(54, 'Tyson', 'Kohler', 'fpfeffer@example.org', '1980-05-27', 1, '1970-03-23 13:51:55'),
(55, 'Toby', 'Beahan', 'powlowski.malachi@example.org', '1972-07-22', 1, '2018-07-04 13:06:30'),
(56, 'Myrtis', 'Weissnat', 'strosin.viva@example.org', '2012-04-19', 1, '1978-07-05 22:37:00'),
(57, 'Keyon', 'Medhurst', 'nmorar@example.org', '1973-10-28', 1, '2020-11-11 11:40:13'),
(58, 'Viola', 'Prosacco', 'beatrice.terry@example.com', '1976-04-01', 1, '1984-01-20 14:50:17'),
(59, 'Christopher', 'Johnson', 'elouise.abbott@example.com', '2019-04-05', 1, '2008-06-21 16:02:58'),
(60, 'Antwan', 'Mills', 'zankunding@example.org', '1982-04-14', 1, '1984-09-05 21:44:05'),
(61, 'Izabella', 'O\'Keefe', 'fcartwright@example.org', '1980-05-23', 1, '2020-06-29 18:46:35'),
(62, 'Leann', 'Parker', 'anderson.blick@example.net', '1973-05-05', 1, '2003-03-13 00:25:18'),
(63, 'Armani', 'Boehm', 'estamm@example.org', '1981-04-21', 1, '1972-10-30 09:00:16'),
(64, 'Brionna', 'Bernier', 'hammes.lindsey@example.net', '2021-08-10', 1, '1975-03-18 11:06:27'),
(65, 'Rogers', 'Swift', 'bbayer@example.net', '2000-10-01', 1, '1987-06-21 11:23:06'),
(66, 'Stephon', 'Rempel', 'wilderman.savion@example.com', '1996-04-09', 1, '1983-03-27 09:31:28'),
(67, 'Janiya', 'Marquardt', 'mitchell.waylon@example.net', '1984-08-21', 1, '1977-06-10 03:47:07'),
(68, 'Ansel', 'Ferry', 'albina80@example.org', '2012-06-21', 1, '2007-05-15 19:54:39'),
(69, 'Mohammad', 'Wisoky', 'sgorczany@example.org', '1979-04-09', 1, '1985-12-06 13:01:43'),
(70, 'Lonie', 'Veum', 'rhianna43@example.net', '2018-11-19', 1, '1975-09-09 21:36:03'),
(71, 'Marvin', 'Brekke', 'juston65@example.com', '2018-04-30', 1, '1996-12-28 17:49:21'),
(72, 'Jazmyn', 'Schamberger', 'elaina80@example.com', '1985-04-14', 1, '1992-10-15 11:13:08'),
(73, 'Otilia', 'Koelpin', 'erdman.loma@example.com', '1977-03-03', 1, '1982-05-02 01:47:41'),
(74, 'Lauretta', 'Kris', 'chelsea.mcclure@example.com', '1983-02-14', 1, '2006-03-06 05:40:07'),
(75, 'Mateo', 'Funk', 'schroeder.anjali@example.org', '2001-05-27', 1, '1998-09-26 03:11:34'),
(76, 'Ova', 'Zemlak', 'melyssa90@example.com', '2011-04-01', 1, '2021-03-20 00:00:59'),
(77, 'Wallace', 'Friesen', 'tkoepp@example.com', '1990-04-18', 1, '1972-02-20 19:20:41'),
(78, 'Meghan', 'Rosenbaum', 'jerrold62@example.org', '2018-03-08', 1, '2013-05-09 20:32:50'),
(79, 'Letitia', 'Nienow', 'agustina.boyer@example.com', '2005-02-11', 1, '2001-11-01 04:21:28'),
(80, 'Mikayla', 'Dietrich', 'vicky61@example.net', '1974-07-11', 1, '1981-04-01 07:37:20'),
(81, 'Shanie', 'Collins', 'yryan@example.org', '2005-07-21', 1, '1980-09-04 01:01:28'),
(82, 'Kody', 'Walker', 'devonte.kessler@example.org', '2014-02-08', 1, '2005-05-11 08:45:35'),
(83, 'Estella', 'Brown', 'clakin@example.com', '1977-11-08', 1, '2017-06-22 12:08:09'),
(84, 'Liana', 'McClure', 'windler.nova@example.com', '1972-08-28', 1, '1970-02-04 06:53:43'),
(85, 'Nikko', 'Cormier', 'emard.clarabelle@example.com', '2020-02-12', 1, '2002-04-28 06:40:52'),
(86, 'Nora', 'Hilpert', 'afton02@example.com', '1970-10-21', 1, '1970-09-28 15:52:19'),
(87, 'Gunner', 'Medhurst', 'zoe.nienow@example.com', '1997-10-10', 1, '2001-08-03 16:41:29'),
(88, 'Stone', 'Quitzon', 'reinger.isabel@example.net', '1988-06-20', 1, '2010-04-15 06:19:32'),
(89, 'Charles', 'Kessler', 'tillman.goyette@example.com', '1996-05-27', 1, '1995-12-12 00:17:07'),
(90, 'Bryana', 'Goldner', 'jones.mia@example.com', '1998-10-14', 1, '1977-12-23 02:22:54'),
(91, 'Missouri', 'Moore', 'yparker@example.com', '2018-06-24', 1, '2016-01-19 17:34:18'),
(92, 'Geo', 'Koepp', 'pfadel@example.com', '2005-09-03', 1, '1994-05-07 20:50:47'),
(93, 'Maxine', 'Fisher', 'fanny.dickens@example.net', '1988-08-27', 1, '1997-06-23 16:09:05'),
(94, 'Amelias', 'Reilly', 'clubowitz@example.com', '1996-11-17', 1, '2002-07-30 23:27:57'),
(95, 'Ilene', 'Bruen', 'yankunding@example.org', '1997-06-12', 1, '2017-03-13 20:20:25'),
(96, 'Maddison', 'Turcotte', 'boyd.hayes@example.org', '2021-08-09', 1, '1972-08-18 14:13:36'),
(97, 'Neha', 'Denesik', 'mckenzie.taya@example.com', '1999-02-15', 1, '1992-02-08 15:21:11'),
(98, 'Paris', 'Swift', 'ryleigh.krajcik@example.net', '2012-02-22', 1, '2003-06-12 21:45:18'),
(99, 'Frederic', 'Shields', 'keshaun.walsh@example.com', '1994-12-10', 1, '2004-02-25 18:37:24'),
(100, 'Nettie', 'Gleichner', 'sgorczany@example.com', '1990-03-18', 1, '1993-09-11 01:39:45'),
(102, 'wert', 'wert', 'wert', '2023-02-19', 0, '2023-02-19 11:31:58');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`) VALUES
(18, 'Square Pharma'),
(19, 'Incepta Pharma'),
(20, 'Beximco Pharma'),
(21, 'Opsonin Pharma'),
(22, 'Renata Limited');

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` int(11) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `building_type` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `parentcat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parentcat`) VALUES
(8, 'Tablets', ''),
(9, 'Syrap', ''),
(10, 'Peracitamol', 'Tablets'),
(11, 'Peracitamol', 'Syrap'),
(12, 'test 3', 'Peracitamol');

-- --------------------------------------------------------

--
-- Table structure for table `chart_data_column`
--

CREATE TABLE `chart_data_column` (
  `month` varchar(10) NOT NULL,
  `sale` int(3) NOT NULL,
  `profit` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `complain_type`
--

CREATE TABLE `complain_type` (
  `id` int(11) NOT NULL,
  `complain_type` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `branch_name` varchar(350) NOT NULL COMMENT 'temprary purpose',
  `name` varchar(650) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(11) NOT NULL,
  `name` varchar(650) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assets` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_types`
--

CREATE TABLE `history_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_challan`
--

CREATE TABLE `inv_challan` (
  `id` int(11) NOT NULL,
  `challan_no` varchar(100) NOT NULL,
  `challan_date` varchar(100) NOT NULL,
  `csn` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_complain`
--

CREATE TABLE `inv_complain` (
  `id` int(11) NOT NULL,
  `complain_id` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `vehicle_reg_no` varchar(100) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `chasis_no` varchar(100) NOT NULL,
  `brand_model` varchar(100) NOT NULL,
  `engine_no` varchar(100) NOT NULL,
  `owner_phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `driver_phone` varchar(100) NOT NULL,
  `milege` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_complaindetails`
--

CREATE TABLE `inv_complaindetails` (
  `id` int(11) NOT NULL,
  `complain_id` varchar(100) NOT NULL,
  `complain_details` varchar(5000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_designation`
--

CREATE TABLE `inv_designation` (
  `id` int(11) NOT NULL,
  `des_id` varchar(100) NOT NULL,
  `designation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_employee`
--

CREATE TABLE `inv_employee` (
  `id` int(11) NOT NULL,
  `employeeid` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `division` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inv_employee`
--

INSERT INTO `inv_employee` (`id`, `employeeid`, `name`, `designation`, `department`, `division`, `company`, `phone`, `email`) VALUES
(7705, 'BLC-000012', 'Khandokar Ibnul Hassan', 'Executive', 'Administration', '', '', '', ''),
(7706, 'BLC-000015', 'Emon Imtiaj', 'Executive', 'Events And Creative', 'Blank', 'Blueline Communications Ltd.', '1730353329', 'emon@saifpowertec.com'),
(7707, 'BLC-000016', 'Md Nantu Mallik', 'Senior Brand Promoter', 'Events And Creative', 'Blank', 'Blueline Communications Ltd.', '0', 'nantu@blueline.com.bd'),
(7708, 'BLC-000020', 'Md Sofiul Azam', 'Video Editor', 'Events And Creative', 'Blank', 'Blueline Communications Ltd.', '0', 'rayhan@saifpowertec.com'),
(7709, 'BLC-000022', 'Md Uzzal Chowdhury', 'Executive', 'Events And Creative', 'Blank', 'Blueline Communications Ltd.', '0', 'uzzal@saifpowertec.com'),
(7710, 'BLC-000028', 'Md Shafiqul Islam Khan', 'Executive', 'Events And Creative', 'Blank', 'Blueline Communications Ltd.', '1752679251', 'shafiqul@saifpowertec.com'),
(7711, 'BLC-000032', 'Shah Md. Fazla Rabbi', 'Graphic Designer', 'Events And Creative', 'Blank', 'Blueline Communications Ltd.', '1719984358', 'rabbi@saifpowertec.com'),
(7712, 'BLC-000040', 'Md Habebullah Khandakar', 'Office Assistant', 'Administration', '', '', '', ''),
(7713, 'BLC-000041', 'Md. Sumon Miah', 'Brand Promoter', 'Administration', '', '', '', ''),
(7714, 'BLC-000045', 'Dipak Chandra Das', 'Senior Online Video Editor', 'Digital Marketing', '', '', '', ''),
(7715, 'BLC-000049', 'Sidratul Muntaha', '3D Modeler', 'Events And Creative', 'Blank', 'Blueline Communications Ltd.', '1787684062', 'saifop@bdmail.net'),
(7716, 'BLC-000051', 'Md Munna Hasan', 'Driver', 'Administration', '', '', '', ''),
(7717, 'BLC-000052', 'Md Rezaul Karim', 'Technician', 'Events And Creative', 'Blank', 'Blueline Communications Ltd.', '', 'saifop@bdmail.net'),
(7718, 'BLC-000053', 'Santiranjan Das', 'Technician', 'Events And Creative', 'Blank', 'Blueline Communications Ltd.', '', 'saifop@bdmail.net'),
(7719, 'BLC-000054', 'Md Abu Bakkar Siddique Sagor', 'Assistant Cameraman', 'Events And Creative', 'Blank', 'Blueline Communications Ltd.', '', 'saifop@bdmail.net'),
(7720, 'BLC-000055', 'Shekh Boholul Shah', 'Assistant Cameraman', 'Events And Creative', 'Blank', 'Blueline Communications Ltd.', '', 'saifop@bdmail.net'),
(7721, 'BLC-000057', 'Md. Jahir Uddin', 'Peon', 'Administration', '', '', '', ''),
(7722, 'BLC-000058', 'Firoza', 'Assistant Cook', 'Administration', '', '', '', ''),
(7723, 'BLC-000059', 'Md. Abdul Jalil', 'Assistant Cook', 'Administration', '', '', '', ''),
(7724, 'ENG-000011', 'Mohammad Serajus Salekin', 'Chief Executive Officer', 'Management', 'E-Engineering', 'E-Engineering Ltd.', '1708467847', 'ceo.salekin@e-enggltd.com'),
(7725, 'ENG-000012', 'H.M. Abdus Sabur Masud', 'Deputy General Manager', 'Market Development', 'E-Engineering', 'E-Engineering Ltd.', '0', 'masud@e-enggltd.com'),
(7726, 'ENG-000013', 'Md. Nazmul Huq', 'Manager', 'Market Development', 'E-Engineering', 'E-Engineering Ltd.', '0', 'nazmul@e-enggltd.com'),
(7727, 'ENG-000014', 'A.T.M Abdul Maleque', 'Executive', 'Finance And Accounts', 'E-Engineering', 'E-Engineering Ltd.', '0', 'maleque@e-enggltd.com'),
(7728, 'ENG-000015', 'Md. Jahangir Alam', 'Senior Officer', 'Market Development', 'E-Engineering', 'E-Engineering Ltd.', '0', 'jahangir@e-enggltd.com'),
(7729, 'ENG-000016', 'Dilip Kumar Das', 'Driver', 'Administration', '', '', '', ''),
(7730, 'Eng-000017', 'Shaikh Shuja Uddin', 'Assistant Manager', 'Market Development', 'E-Engineering', 'E-Engineering Ltd.', '0', 'shujauddin@e-enggltd.com'),
(7731, 'Eng-000021', 'Mohammad Rafiqul Islam', 'Project Co-Ordinator', 'Engineering', '', '', '', ''),
(7732, 'ENG-000026', 'Md. Mahabubur Rahman', 'Senior Manager', 'Finance And Accounts', 'E-Engineering', 'E-Engineering Ltd.', '1777665599', 'mahabub@e-enggltd.com'),
(7733, 'ENG-000029', 'Md. Younus ', 'Assistant Manager', 'Business Development', 'E-Engineering', 'E-Engineering Ltd.', '0', 'rana@e-enggltd.com'),
(7734, 'ENG-000032', 'Md. Moniruzzaman Howlader', 'Executive', 'Engineering', '', '', '', ''),
(7735, 'ENG-000033', 'Abul Kashem', 'Driver', 'Administration', '', '', '', ''),
(7736, 'ENG-000034', 'Md. Johrul Islam', 'Executive', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1961982633', ''),
(7737, 'ENG-000041', 'Md Jasim Uddin', 'Electrician', 'Dredging', '', '', '', ''),
(7738, 'ENG-000044', 'Md. Lavlu Sheikh', 'Work Boat Master', 'Dredging', '', '', '', ''),
(7739, 'ENG-000046', 'Amin Talukder', 'Crew', 'Dredging', '', '', '', ''),
(7740, 'ENG-000047', 'Md. Mamun Sarder', 'Crew', 'Dredging', '', '', '', ''),
(7741, 'ENG-000056', 'Forhad Hossain Bhuiya', 'Assistant Manager', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1771064276', ''),
(7742, 'ENG-000057', 'Md Aminuzzaman', 'Director', 'Market Development', 'E-Engineering', 'E-Engineering Ltd.', '1713016111', 'director.zaman@e-enggltd.com'),
(7743, 'ENG-000058', 'Md Mahfuz Rahman Sarker', 'Deputy General Manager', 'Finance And Accounts', 'E-Engineering', 'E-Engineering Ltd.', '0', 'mahfuz@saifpowertec.com'),
(7744, 'ENG-000060', 'Md Altaf Hossain', 'Supervisor', 'Engineering', '', '', '', ''),
(7745, 'ENG-000067', 'Maisha Momtaj', 'Officer', 'Finance And Accounts', 'E-Engineering', 'E-Engineering Ltd.', '1836078857', 'maisha@e-engltd.com'),
(7746, 'ENG-000071', 'Md. Anamul Kabir', 'Assistant', 'Administration', '', '', '', ''),
(7747, 'ENG-000072', 'Md Ali Hossain', 'Work Boat Master', 'Dredging', '', '', '', ''),
(7748, 'ENG-000073', 'Md Baizid Molla', 'Engine Driver', 'Dredging', '', '', '', ''),
(7749, 'ENG-000079', 'Md Abul Kalam Azad', 'Surveyor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7750, 'ENG-000080', 'Md Julhas Hossain', 'Surveyor', 'Engineering', '', '', '', ''),
(7751, 'ENG-000081', 'Md Babul Hossain', 'Operator', 'Engineering', '', '', '', ''),
(7752, 'ENG-000082', 'Md Iqbal Hossain Khan', 'Assistant', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1749132035', ''),
(7753, 'ENG-000083', 'Md Akbor Hossain', 'Manager', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7754, 'ENG-000087', 'Md Afzal Hossain Morol', 'Site Engineer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1725176218', ''),
(7755, 'ENG-000089', 'Md Sabuj Ali Khan', 'Site Supervisor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1740321785', ''),
(7756, 'ENG-000090', 'Md Abdul Hakim', 'Ship Supervisor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1633605390', ''),
(7757, 'ENG-000094', 'Md. Mahbub Alam', 'Electrician', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1761090548', ''),
(7758, 'ENG-000096', 'Md. Abdullah-al-mamun', 'Project Manager', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1755520132', 'mamun@e-enggltd.com'),
(7759, 'ENG-000113', 'Hasib Sarkar', 'Assistant Site Supervisor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1755125779', ''),
(7760, 'ENG-000114', 'Jasim Uddin', 'Assistant Site Supervisor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1716363904', ''),
(7761, 'ENG-000116', 'Md Badrul Alam', 'Technician', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1720650335', ''),
(7762, 'ENG-000117', 'Md Forhad Hossain', 'Project Co-Ordinator', 'Engineering', '', '', '', ''),
(7763, 'ENG-000118', 'Md. Mamunur Rashid', 'Officer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1715701330', 'rashid@e-enggltd.com'),
(7764, 'ENG-000123', 'Md Jasim Uddin', 'Driver', 'Administration', '', '', '', ''),
(7765, 'ENG-000125', 'Md. Amjad Hosen', 'Supervisor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7766, 'ENG-000129', 'Md Ashraful Alam Shafi', 'Operator', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7767, 'ENG-000130', 'Md Ratul Hasan', 'Crew', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7768, 'ENG-000131', 'Md Shariful Islam', 'Supervisor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7769, 'ENG-000133', 'Md Amirul Islam', 'Lever Man', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7770, 'ENG-000135', 'Anich Mia', 'Pipe Fitter', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7771, 'ENG-000138', 'Abdullahil Kafi', 'Site Engineer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7772, 'ENG-000139', 'Md. Zulfikar Ali', 'Site Supervisor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7773, 'ENG-000141', 'Md Shihab Uddin', 'Supervisor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7774, 'ENG-000143', 'Rob', 'Crew', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7775, 'ENG-000147', 'Mizanur Rahman', 'Excavator Operator', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7776, 'ENG-000151', 'Md Abdur Rahman', 'Site Engineer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7777, 'ENG-000153', 'Md Nazrul Islam', 'Supervisor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7778, 'ENG-000154', 'Shahinur Rahman', 'WINCH Operator', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7779, 'ENG-000158', 'Md Monoarul Islam', 'Executive', 'Finance And Accounts', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7780, 'ENG-000163', 'Md Nazmul Islam Nazrul', 'Excavator Operator', 'Dredging', '', '', '', ''),
(7781, 'ENG-000164', 'Md Salim Reza', 'Supervisor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7782, 'ENG-000166', 'Md. Mosle Uddin', 'Officer', 'Finance And Accounts', 'E-Engineering', 'E-Engineering Ltd.', '1721366875', 'mosleuddin@e-enggltd.com'),
(7783, 'ENG-000167', 'Tasnim Tarafder', 'Director', 'Management', 'E-Engineering', 'E-Engineering Ltd.', '0', 'tasnim@saifpowertec.com'),
(7784, 'ENG-000169', 'Md Dulal Pramanik', 'Operator', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1796398244', ''),
(7785, 'ENG-000170', 'Md Abdullah Al Zul Jabadan', 'Officer', 'Administration', '', '', '', ''),
(7786, 'ENG-000172', 'Md Sojib', 'Pipe Fitter', 'Dredging', '', '', '', ''),
(7787, 'ENG-000174', 'Md. Mayhedi Hasan', 'Assistant Manager', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1720244264', 'mayhedihasan@e-enggltd.com'),
(7788, 'ENG-000175', 'Mohammad Ibrahim', 'Driver', 'Administration', '', '', '', ''),
(7789, 'ENG-000176', 'Md Rafiqul Islam', 'Project Manager', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1710451665', 'rafiqul.islam@e-enggltd.com'),
(7790, 'ENG-000177', 'Bulbul Ahmed', 'Surveyor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7791, 'ENG-000181', 'Md Saiful Islam', 'Peon', 'Administration', '', '', '', ''),
(7792, 'ENG-000188', 'Md Ramiz Alam', 'Officer', 'Finance And Accounts', 'E-Engineering', 'E-Engineering Ltd.', '1716358739', 'ramiz.alam@e-enggltd.com'),
(7793, 'ENG-000191', 'Md Lokman Hossen', 'Driver', 'Administration', '', '', '', ''),
(7794, 'ENG-000192', 'Md Sirajul Islam', 'Surveyor', 'Engineering', '', '', '', ''),
(7795, 'ENG-000193', 'Mohammad Abul Kasem', 'Site Engineer', 'Engineering', '', '', '', ''),
(7796, 'ENG-000201', 'Md Abdul Motin', 'Electrician', 'Engineering', '', '', '', ''),
(7797, 'ENG-000204', 'A K M Saifullah', 'Project Manager', 'Engineering', '', '', '', ''),
(7798, 'ENG-000205', 'Md Ahsan Moner', 'Site Engineer', 'Engineering', '', '', '', ''),
(7799, 'ENG-000210', 'Md Tapu Miah', 'Storeman', 'Engineering', '', '', '', ''),
(7800, 'ENG-000211', 'Md Shafiqul Alam Meraj', 'Site Engineer', 'Engineering', '', '', '', ''),
(7801, 'ENG-000212', 'Rana Sarker', 'Assistant Engine Mechanic', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1730908068', ''),
(7802, 'ENG-000213', 'Md Humayun Kabir', 'Chief Operating Officer', 'Administration', '', '', '', ''),
(7803, 'ENG-000214', 'Md Khokon Shek', 'Storeman', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1757199084', ''),
(7804, 'ENG-000215', 'Md Rashed Hasan', 'Site Engineer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1787684015', 'saifop@bdmail.net'),
(7805, 'ENG-000216', 'Md Nanno Mia', 'Surveyor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1705653447', ''),
(7806, 'ENG-000218', 'Md Al Amin Hossain', 'Site Engineer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1787684200', 'saifop@bdmail.net'),
(7807, 'ENG-000220', 'Khalilur Rahman', 'Site Engineer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1787686712', 'saifop@bdmail.net'),
(7808, 'ENG-000221', 'Md Siful Islam Rubel', 'Storeman', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1787686343', 'saifop@bdmail.net'),
(7809, 'ENG-000228', 'Md Abu Kawsar', 'Site Engineer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1721393188', ''),
(7810, 'ENG-000229', 'Md Ziaul Alam Bhuiya', 'Executive', 'Administration', '', '', '', ''),
(7811, 'ENG-000231', 'Md Sayadur Rahman', 'Site Engineer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1746792300', ''),
(7812, 'ENG-000233', 'Kazi Md Arman Hossain', 'Assistant Supervisor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1752560433', ''),
(7813, 'ENG-000236', 'Ahsan Ullah Chowdhury', 'Assistant Manager', 'Administration', '', '', '', ''),
(7814, 'ENG-000237', 'Md Majedul Islam', 'Site Supervisor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', ''),
(7815, 'ENG-000238', 'Meer Kamrul Hassan', 'Lab Techinacian', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1730785094', 'saifop@bdmail.net'),
(7816, 'ENG-000241', 'Md Rasel Sheikh', 'Assistant Engine Mechanic', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1756095767', ''),
(7817, 'ENG-000245', 'Md Shah Alam Mazumder', 'Site Supervisor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1714976825', ''),
(7818, 'ENG-000247', 'Md Mostafijur Rahman', 'Deputy Manager', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1797175875', 'mostafijur.rahman@e-enggltd.com'),
(7819, 'ENG-000248', 'Belal Hossain', 'Officer', 'Finance And Accounts', 'E-Engineering', 'E-Engineering Ltd.', '1313448002', 'saifop@bdmail.net'),
(7820, 'ENG-000249', 'Delawar Hossain', 'Site Assistant', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1755543191', 'saifop@bdmail.net'),
(7821, 'ENG-000251', 'Md Abu Taleb Molla', 'Operator', 'Maintenance', 'E-Engineering', 'E-Engineering Ltd.', '1719032647', ''),
(7822, 'ENG-000253', 'Md Abdul Halim Sarkar', 'Admin Assistant', 'Engineering', '', '', '', ''),
(7823, 'ENG-000256', 'Md Mashfiqur Rahman', 'Manager', 'Administration', '', '', '', ''),
(7824, 'ENG-000258', 'Md Abdur Razzaque', 'Chief Operating Officer', 'Engineering', '', '', '', ''),
(7825, 'ENG-000260', 'Feroz Khan', 'Bulldozer Operator', 'Operation', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7826, 'ENG-000266', 'Md Humayun Kabir', 'Project Engineer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1718655182', 'humayun.kabir@e-enggltd.com'),
(7827, 'ENG-000267', 'Mohammad Homayun Kabir', 'Project Engineer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7828, 'ENG-000272', 'Md Faruk Hossain', 'Site Engineer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1777790427', 'saifop@bdmail.net'),
(7829, 'ENG-000273', 'Abdul Hadi', 'Site Engineer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '', 'exam@saifpowertec.com'),
(7830, 'ENG-000276', 'S M Hasinur Rahman', 'Site Engineer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1730377071', 'saifop@bdmail.net'),
(7831, 'ENG-000281', 'Mohammad Ashraful Miah', 'Site Engineer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1713383463', 'mohammad.ashraful@e-enggltd.com'),
(7832, 'ENG-000283', 'Md Lokman Ahmed', 'Site Engineer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1730377039', 'saifop@bdmail.net'),
(7833, 'ENG-000285', 'Mohammad Mahmudur Rahman', 'Deputy General Manager', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1712088004', 'mahmudur.rahman@e-enggltd.com'),
(7834, 'ENG-000288', 'Md Mehedi Hasan Akash', 'Driver', 'Administration', '', '', '', ''),
(7835, 'ENG-000289', 'Md Abdul halim', 'Site Engineer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7836, 'ENG-000290', 'Md. Shariful Molla', 'Supervisor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1787684154', 'saifop@bdmail.net'),
(7837, 'ENG-000291', 'Md Yousuf Hosain', 'Supervisor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1787686342', 'saifop@bdmail.net'),
(7838, 'ENG-000292', 'Md Faisal Ahamed Arafat', 'Supervisor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1730783585', 'saifop@bdmail.net'),
(7839, 'ENG-000293', 'Md Amin Biswas', 'Wheel Loader Operator', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7840, 'ENG-000302', 'Md. Rabbi Sheikh', 'Surveyor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7841, 'ENG-000303', 'Md Jalal Uddin', 'Operator', 'Engineering', '', '', '', ''),
(7842, 'ENG-000305', 'Mohammad Mukter Hossain', 'Officer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1787684083', 'saifop@bdmail.net'),
(7843, 'ENG-000306', 'Syful Islam', 'Assistant Engine Driver', 'Dredging', '', '', '', ''),
(7844, 'ENG-000307', 'Mohammad Asaduzzaman Iqbal', 'Surveyor', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1313448004', 'saifop@bdmail.net'),
(7845, 'ENG-000310', 'Md. Shariful Islam', 'Site Engineer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1787684043', 'saifop@bdmail.net'),
(7846, 'ENG-000312', 'Md. Nazrul Islam', 'Site Engineer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1713383486', 'saifop@bdmail.net'),
(7847, 'ENG-000315', 'Md. Nurul Islam', 'Site Engineer', 'Engineering', '', '', '', ''),
(7848, 'ENG-000316', 'Kamrul Hasan', 'Site Engineer', 'Engineering', '', '', '', ''),
(7849, 'ENG-000317', 'Kamol Krishna', 'Surveyor', 'Dredging', '', '', '', ''),
(7850, 'ENG-000318', 'Md Tufan Ahmmad', 'Roller Operator', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7851, 'ENG-000320', 'Md Jownal Abdin', 'Dump Truck Driver', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7852, 'ENG-000321', 'Md Nazrul Islam', 'Mixer Truck Driver', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7853, 'ENG-000327', 'Md Nuruzzaman Shahed', 'Site Engineer', 'Engineering', '', '', '', ''),
(7854, 'ENG-000328', 'Md Abdullah Al Mostain', 'Deputy Project Manager', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1730783589', 'saifop@bdmail.net'),
(7855, 'ENG-000330', 'Mahbub Ahmed', 'Manager', 'Finance And Accounts', 'E-Engineering', 'E-Engineering Ltd.', '', 'mahbub.ahmed@e-enggltd.com'),
(7856, 'ENG-000336', 'Md Abdul Jabbar', 'Manager', 'Dredging', '', '', '', ''),
(7857, 'ENG-000339', 'Md Habibur Rahaman', 'Mixer Truck Driver', 'Maintenance', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7858, 'ENG-000343', 'Md Washim Hossain', 'Wheel Loader Operator', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7859, 'ENG-000346', 'Md Jahirul Hoque', 'Excavator Operator', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7860, 'ENG-000348', 'Md Joherul Islam', 'Operator', 'Market Development', 'E-Engineering', 'E-Engineering Ltd.', '1777056337', 'joherul.islam@e-enggltd.com'),
(7861, 'ENG-000350', 'Mir Aslam', 'Dump Truck Driver', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7862, 'ENG-000351', 'Md Ariful Islam', 'Driver', 'Administration', '', '', '', ''),
(7863, 'ENG-000353', 'Mosaref Hossain', 'Dump Truck Driver', 'Maintenance', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7864, 'ENG-000354', 'Md Jewel Sheikh', 'Harbour Crane Operator', 'Maintenance', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7865, 'ENG-000356', 'Md Babul Sarder', 'Wheel Loader Operator', 'Maintenance', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7866, 'ENG-000360', 'Md Golam Rosul', 'Dump Truck Driver', 'Maintenance', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7867, 'ENG-000363', 'Md. Jalil Khan Noyan', 'Assistant Engineer', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1787684110', 'jalil.khan@e-enggltd.com'),
(7868, 'ENG-000365', 'Shaid Sheik', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7869, 'ENG-000366', 'Md. Hasibul Islam', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7870, 'ENG-000368', 'Tofayel Ahmed', 'Wheel Loader Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7871, 'ENG-000369', 'Siddique Shek', 'Operator', 'Maintenance', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7872, 'ENG-000370', 'Md Abdur Rahman', 'Prime Mover Driver', 'Maintenance', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7873, 'ENG-000371', 'Md Mahabur Rahman', 'Excavator Operator', 'Maintenance', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7874, 'ENG-000372', 'Kazi Raju Ahammad', 'Harbour Crane Operator', 'Maintenance', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7875, 'ENG-000374', 'Md Saidur Rahman Sawon', 'Harbour Crane Operator', 'Maintenance', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7876, 'ENG-000379', 'Md. Raju', 'Driver', 'Administration', '', '', '', ''),
(7877, 'ENG-000380', 'Nafiur Rahman  ', 'Site Engineer', 'Civil', '', '', '', ''),
(7878, 'ENG-000382', 'Md. Mahfuzur Rahman', 'Electrician', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7879, 'ENG-000383', 'Md. Nasibul Sheike', 'Wheel Loader Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7880, 'ENG-000384', 'Md. Shamim', 'Dozzer Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7881, 'ENG-000385', 'Md. Taleb', 'Concrete Pump Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7882, 'ENG-000386', 'Sahidul Islam', 'Pipe Fitter', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7883, 'ENG-000387', 'Md. Riaz', 'Pipe Fitter', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7884, 'ENG-000388', 'Md. Nuruzzaman', 'Pipe Fitter', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7885, 'ENG-000389', 'Md. Bashir Alom', 'Pipe Fitter', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7886, 'ENG-000390', 'Md. Abu Hanif', 'Assistant Rigger', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7887, 'ENG-000391', 'Md. Mokles Akndo', 'Assistant Rigger', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7888, 'ENG-000392', 'Bilas Biswas', 'Assistant Rigger', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7889, 'ENG-000396', 'Md. Mizanur Rahman', 'Batching Plant Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7890, 'ENG-000397', 'Md. Wahiduzzaman', 'Senior Officer', 'Finance And Accounts', 'E-Engineering', 'E-Engineering Ltd.', '1730795086', 'saifop@bdmail.net'),
(7891, 'ENG-000399', 'S. M. Borhan Uddin', 'Site Engineer', 'Civil', '', '', '', ''),
(7892, 'ENG-000400', 'Md. Ahasan', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7893, 'ENG-000401', 'Kleanton Sarker', 'Block Machine Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7894, 'ENG-000402', 'Md Monir Hossain', 'Driver', 'Administration', '', '', '', ''),
(7895, 'ENG-000407', 'Shahid Ullah', 'Welder', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7896, 'ENG-000408', 'Md. Tariqul Islam', 'Officer', 'Finance And Accounts', 'E-Engineering', 'E-Engineering Ltd.', '1730353358', 'mdtariqul909@gmail.com'),
(7897, 'ENG-000409', 'Md. Ayub Ali', 'Plant Engineer', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1787684228', 'saifop@bdmail.net'),
(7898, 'ENG-000410', 'Md. Mahedi Hasan (Roton)', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7899, 'ENG-000412', 'Md. Farhad Hossain', 'Crane Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7900, 'ENG-000413', 'Md. Saiful', 'Concrete Pump Pipe Fitter', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7901, 'ENG-000414', 'Md. Manirul Islam', 'Concrete Pump Pipe Fitter', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7902, 'ENG-000416', 'Md. Nasir Uddin', 'Concrete Pump Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7903, 'ENG-000417', 'Md Sajidur Rahman Sayed', 'Supervisor', 'Civil', '', '', '', ''),
(7904, 'ENG-000419', 'Md. Main Uddin ', 'Long Boom Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7905, 'ENG-000421', 'Md. Rafiqul Islam', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7906, 'ENG-000423', 'Md. Belal Hossain', 'Low Bed Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7907, 'ENG-000425', 'Md. Bablu Molla', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7908, 'ENG-000429', 'Md Rakib Hossain', 'Junior Fitter', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'mrakibhossain34@gmail.com'),
(7909, 'ENG-000430', 'Syed Ahammad', 'Mechanic', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7910, 'ENG-000431', 'Md. Liton Mridha', 'Site Mechanical Engineer', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7911, 'ENG-000432', 'Md Shamim Ul Momin', 'Quantity Surveyor Engineer', 'Civil', '', '', '', ''),
(7912, 'ENG-000433', 'Estaque Ahamed', 'Supervisor', 'Civil', '', '', '', ''),
(7913, 'ENG-000434', 'Sazzad Zaman Anik', 'Senior Officer', 'QMS', 'E-Engineering', 'E-Engineering Ltd.', '1313448001', 'saifop@bdmail.net'),
(7914, 'ENG-000436', 'Md Bachchu Shaik', 'Backhoe Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7915, 'ENG-000440', 'Md Nazmul Huda Bhola', 'Backhoe Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7916, 'ENG-000441', 'Mizanur Rahman', 'Backhoe Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7917, 'ENG-000443', 'Md Shariful Mia Shipon', 'Peon', 'Administration', '', '', '', ''),
(7918, 'ENG-000444', 'Md Nurul Islam', 'Mechanic', 'Civil', '', '', '', ''),
(7919, 'ENG-000449', 'Md Manik Sikder', 'Officer', 'Dredging', '', '', '', ''),
(7920, 'ENG-000451', 'Boshir Uddin', 'Fork Lift Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7921, 'ENG-000454', 'Md Babul Hossain', 'Surveyor', 'Dredging', '', '', '', ''),
(7922, 'ENG-000455', 'Md Mamunul Hasan', 'Store Keeper', 'Civil', '', '', '', ''),
(7923, 'ENG-000456', 'Md Shah Hossain', 'Mixture Truck Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7924, 'ENG-000457', 'Md Tarikul Islam', 'Assistant Lab Technician', 'Civil', '', '', '', ''),
(7925, 'ENG-000465', 'Md Nur Mohammad', 'Mechanic', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7926, 'ENG-000468', 'Md Nuru Mia', 'Wheel Loader Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7927, 'ENG-000470', 'Md Ruhul Amin', 'Crane Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7928, 'ENG-000474', 'Md Mokhlesur Rahman', 'Project Engineer', 'Civil', '', '', '', ''),
(7929, 'ENG-000475', 'Md  Salahuddin Azad', 'Deputy Project Manager', 'Civil', '', '', '', ''),
(7930, 'ENG-000476', 'Md Mahmudun Nabi', 'Trainee Officer', 'QMS', 'E-Engineering', 'E-Engineering Ltd.', '', 'mahmudun.nabi@e-enggltd.com'),
(7931, 'ENG-000477', 'Md Sohel Akhand', 'Officer', 'Finance And Accounts', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7932, 'ENG-000480', 'Md Monirul Islam Manik', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7933, 'ENG-000481', 'Md Motleb Hassan', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7934, 'ENG-000482', 'Md Atikur Rahman', 'Officer', 'Administration', '', '', '', ''),
(7935, 'ENG-000484', 'Md Moshiur Rahman', 'Plant Operator', 'Civil', '', '', '', ''),
(7936, 'ENG-000486', 'Ariful Islam', 'Welder', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7937, 'ENG-000487', 'Romen Chandra Paul', 'Welder', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7938, 'ENG-000488', 'Md Mizanur Rahman', 'Welder', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7939, 'ENG-000490', 'Shahidul Islam', 'Backhoe Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7940, 'ENG-000491', 'Md Abul Hasan', 'Lever Man', 'Dredging', '', '', '', ''),
(7941, 'ENG-000492', 'Md Rashedul Hasan', 'Senior Officer', 'Administration', '', '', '', ''),
(7942, 'ENG-000493', 'Mohammad Mokim Hossain', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7943, 'ENG-000494', 'Md Delshad Hossain', 'Junior Surveyor', 'Civil', '', '', '', ''),
(7944, 'ENG-000495', 'Rayhan Sajal', 'Office Assistant', 'Administration', '', '', '', ''),
(7945, 'ENG-000497', 'Md Abdu Mia', 'Tractor Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7946, 'ENG-000499', 'Md Kamal Miah', 'Tractor Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7947, 'ENG-000500', 'lftekhar Hosen Nayeem', 'Assistant Manager', 'Marine', 'E-Engineering', 'E-Engineering Ltd.', '1313447998', 'iftekhar.hosen@e-enggltd.com'),
(7948, 'ENG-000501', 'Md Sumon Shekh', 'Mechanical Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7949, 'ENG-000502', 'Md ldbar Hossain', 'Welder', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7950, 'ENG-000503', 'Md Shamem', 'Driver', 'Administration', '', '', '', ''),
(7951, 'ENG-000506', 'Masud Rana', 'Lab Techinacian', 'Civil', '', '', '', ''),
(7952, 'ENG-000508', 'Md Nazmul Haque', 'Storeman', 'Store', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7953, 'ENG-000509', 'Dilip Chandra Das', 'Assistant Site Engineer', 'Civil', '', '', '', ''),
(7954, 'ENG-000510', 'Md Ashraf Uddin', 'Officer', 'Finance And Accounts', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7955, 'ENG-000511', 'Md Abdul Hamid', 'Store Helper', 'Administration', '', '', '', ''),
(7956, 'ENG-000515', 'Mehdi Sultan Akhand', 'Junior Engineer', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1787686349', 'saifop@bdmail.net'),
(7957, 'ENG-000516', 'Md Sharif Hossain', 'Manager', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1313447996', 'sharif.hossain@e-enggltd.com'),
(7958, 'ENG-000518', 'Md Sultan Mahmud', 'Site Engineer', 'Civil', '', '', '', ''),
(7959, 'ENG-000519', 'Md Riazul Zannat', 'Lab Techinacian', 'Civil', '', '', '', ''),
(7960, 'ENG-000520', 'Md Limon', 'Assistant', 'Store', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7961, 'ENG-000522', 'Md Mizanur Rahman', 'Dredging Master', 'Dredging', '', '', '', ''),
(7962, 'ENG-000523', 'Md Tipu Sultan', 'Assistant Site Engineer', 'Civil', '', '', '', ''),
(7963, 'ENG-000524', 'Md Al Amin', 'Site Supervisor', 'Civil', '', '', '', ''),
(7964, 'ENG-000525', 'Amirul Islam', 'Site Supervisor', 'Civil', '', '', '', ''),
(7965, 'ENG-000527', 'Shaddam Hossain', 'Site Supervisor', 'Civil', '', '', '', ''),
(7966, 'ENG-000528', 'Md Abdul Malek', 'Site Supervisor', 'Civil', '', '', '', ''),
(7967, 'ENG-000529', 'Habibullah  Bahar', 'Assistant Site Engineer', 'Civil', '', '', '', ''),
(7968, 'ENG-000531', 'Md Rubel', 'Mechanical Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7969, 'ENG-000532', 'Md Forhad Mia', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7970, 'ENG-000533', 'Sheikh Alauddin', 'Site Supervisor', 'Civil', '', '', '', ''),
(7971, 'ENG-000535', 'Raju Ahmed', 'Electrician', 'Civil', '', '', '', ''),
(7972, 'ENG-000536', 'Md Mahamud Ullah', 'Site Supervisor', 'Civil', '', '', '', ''),
(7973, 'ENG-000537', 'Md Asif Hawlader', 'Electrician', 'Civil', '', '', '', ''),
(7974, 'ENG-000538', 'Md Abul Hasan', 'Electrician', 'Civil', '', '', '', ''),
(7975, 'ENG-000539', 'Subrato Das', 'Assistant Site Engineer', 'Civil', '', '', '', ''),
(7976, 'ENG-000540', 'Md Shahriar Shajib', 'Site Supervisor', 'Civil', '', '', '', ''),
(7977, 'ENG-000541', 'Md Monirul Islam', 'Site Supervisor', 'Civil', '', '', '', ''),
(7978, 'ENG-000543', 'Md Zahidur Rahman', 'Director', 'Management', 'E-Engineering', 'E-Engineering Ltd.', '', 'dir.zahidur@e-enggltd.com'),
(7979, 'ENG-000544', 'Md Osman Sardar', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7980, 'ENG-000546', 'Shafiqul Islam', 'Tractor Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7981, 'ENG-000547', 'Md Al Amin Miah', 'Tractor Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7982, 'ENG-000548', 'Md Abdur Razzak', 'Assistant Mechanic', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7983, 'ENG-000549', 'Mehedy Hasan', 'Assistant Site Engineer', 'Civil', '', '', '', ''),
(7984, 'ENG-000550', 'Md Ruhul Quddus', 'Executive Director', 'Dredging', '', '', '', ''),
(7985, 'ENG-000551', 'Md Abdur Rahaman', 'Tyre Feeder', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7986, 'ENG-000553', 'Md Prantho Reza', 'Site Supervisor', 'Civil', '', '', '', ''),
(7987, 'ENG-000554', 'Mohammad Kawsarul Mondol', 'Assistant QS Engineer', 'Civil', '', '', '', ''),
(7988, 'ENG-000555', 'Md Shahadat Hossain', 'Manager', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(7989, 'ENG-000556', 'Jobayer Hossain', 'Site Engineer', 'Civil', '', '', '', ''),
(7990, 'ENG-000557', 'Md Sumon Rana', 'Senior Officer', 'Store', 'E-Engineering', 'E-Engineering Ltd.', '1730377064', 'saifop@bdmail.net'),
(7991, 'ENG-000558', 'Md lnzamul Haque', 'Site Engineer', 'Civil', '', '', '', ''),
(7992, 'ENG-000559', 'B M Ibrahim Islam', 'Site Supervisor', 'Civil', '', '', '', ''),
(7993, 'ENG-000560', 'Zeblul Amin', 'Site Supervisor', 'Civil', '', '', '', ''),
(7994, 'ENG-000561', 'Tapos Mondal', 'Site Supervisor', 'Civil', '', '', '', ''),
(7995, 'ENG-000563', 'Md Jani Hasan', 'Driver', 'Administration', '', '', '', ''),
(7996, 'ENG-000570', 'Md Gulam Rabbany', 'Site Engineer', 'Civil', '', '', '', ''),
(7997, 'ENG-000573', ' Md Uzzol Hossain', 'Site Engineer', 'Civil', '', '', '', ''),
(7998, 'ENG-000574', 'S M Rajibul Hasan', 'Project Engineer', 'Civil', '', '', '', ''),
(7999, 'ENG-000575', 'Md Shoriful Islam', 'Project Engineer', 'Civil', '', '', '', ''),
(8000, 'ENG-000576', 'Nure Alom', 'Driver', 'Administration', '', '', '', ''),
(8001, 'ENG-000577', 'Md Zahidul Islam', 'Site Engineer', 'Civil', '', '', '', ''),
(8002, 'ENG-000580', 'Md Monirul Islam', 'Lab Techinacian', 'Civil', '', '', '', ''),
(8003, 'ENG-000581', 'Md Shobuj Hossin', 'Assistant Lab Technician', 'Civil', '', '', '', ''),
(8004, 'ENG-000582', 'Md Khayrul Islam', 'Lab Techinacian', 'Civil', '', '', '', ''),
(8005, 'ENG-000583', 'Md Mostofa', 'Assistant Lab Technician', 'Civil', '', '', '', ''),
(8006, 'ENG-000585', 'Bulbul Islam', 'Assistant Lab Technician', 'Civil', '', '', '', ''),
(8007, 'ENG-000586', 'Md Estiaq Ahmed', 'Assistant Lab Technician', 'Civil', '', '', '', ''),
(8008, 'ENG-000588', 'Md Asmat Ali', 'Auto CAD Engineer', 'Civil', '', '', '', ''),
(8009, 'ENG-000589', 'Md Sajjad Chowdhury', 'Auto CAD Engineer', 'Civil', '', '', '', ''),
(8010, 'ENG-000590', 'Md Imran Sarker', 'Auto CAD Engineer', 'Civil', '', '', '', ''),
(8011, 'ENG-000591', 'Md Rashed Shake', 'Auto CAD Engineer', 'Civil', '', '', '', ''),
(8012, 'ENG-000593', 'Md Feroj Alom', 'Driver', 'Administration', '', '', '', ''),
(8013, 'ENG-000594', 'Md Eashir Arafat Polash', 'Site Supervisor', 'Civil', '', '', '', ''),
(8014, 'ENG-000595', 'Md Nazrul Islam', 'Site Engineer', 'Civil', '', '', '', ''),
(8015, 'ENG-000596', 'Abdulla Al Mamun', 'Assistant Site Engineer', 'Civil', '', '', '', ''),
(8016, 'ENG-000597', 'Salman Sah', 'Site Engineer', 'Civil', '', '', '', ''),
(8017, 'ENG-000598', 'S M Redoanul Huda', 'Assistant Quantity Surveyor', 'Civil', '', '', '', ''),
(8018, 'ENG-000599', 'Shakil Ahmed', 'Site Engineer', 'Civil', '', '', '', ''),
(8019, 'ENG-000600', 'Md Shahadat Khan', 'Senior Officer', 'QMS', 'E-Engineering', 'E-Engineering Ltd.', '', 'shahadat.khan@e-enggltd.com'),
(8020, 'ENG-000601', 'Nizam Uddin', 'Auto CAD Engineer', 'Civil', '', '', '', ''),
(8021, 'ENG-000603', 'Md Ebrahim Khalil Ullah', 'Site Engineer', 'Civil', '', '', '', ''),
(8022, 'ENG-000604', 'Mohammed Hasan', 'Auto CAD Engineer', 'Civil', '', '', '', ''),
(8023, 'ENG-000607', 'Md Mojammil Hoque', 'Site Engineer', 'Civil', '', '', '', ''),
(8024, 'ENG-000609', 'Md Delwar Howlader', 'Crew', 'Dredging', '', '', '', ''),
(8025, 'ENG-000613', 'Md Raisul Habib', 'Assistant Site Engineer', 'Civil', '', '', '', ''),
(8026, 'ENG-000614', 'Md Shahadat Hossain', 'Supervisor', 'Dredging', '', '', '', ''),
(8027, 'ENG-000615', 'Md Taher Shaikh', 'Assistant Lever Man', 'Dredging', '', '', '', ''),
(8028, 'ENG-000617', 'Md Towhidul Islam', 'Lever Man', 'Dredging', '', '', '', ''),
(8029, 'ENG-000618', 'Shopon', 'Pipe Fitter', 'Dredging', '', '', '', ''),
(8030, 'ENG-000619', 'Md Shahin Hossen', 'Crew', 'Dredging', '', '', '', ''),
(8031, 'ENG-000620', 'Md Foysal Khan', 'Lever Man', 'Dredging', '', '', '', ''),
(8032, 'ENG-000621', 'Md Mozammel Huq', 'Driver', 'Dredging', '', '', '', ''),
(8033, 'ENG-000622', 'Emran Hossain', 'Assistant Engine Driver', 'Dredging', '', '', '', ''),
(8034, 'ENG-000623', 'Monir Ahmed', 'Site Engineer', 'Civil', '', '', '', ''),
(8035, 'ENG-000624', 'Sree Biplob Chandro Sarker', 'Site Engineer', 'Civil', '', '', '', ''),
(8036, 'ENG-000625', 'Md Rasel Mia', 'Site Engineer', 'Civil', '', '', '', ''),
(8037, 'ENG-000628', 'A K M Mainul Hassan', 'Store Officer', 'Store', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8038, 'ENG-000629', 'Sk Zahir Uddin', 'Store Keeper', 'Store', 'E-Engineering', 'E-Engineering Ltd.', '1787684160', 'saifop@bdmail.net'),
(8039, 'ENG-000631', 'Md Shafikur Rahman', 'Site Engineer', 'Civil', '', '', '', ''),
(8040, 'ENG-000632', 'Soharab Ahammad', 'Store Officer', 'Store', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8041, 'ENG-000633', 'Tamvirul Alam', 'Officer', 'Civil', '', '', '', ''),
(8042, 'ENG-000634', 'Ashikul Islam', 'Mechanic', 'Civil', '', '', '', ''),
(8043, 'ENG-000635', 'Uttam Sharma', 'Store Officer', 'Store', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8044, 'ENG-000636', 'Shahidul Islam', 'Store Officer', 'Store', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8045, 'ENG-000637', 'Faisal Ahmad Bhuiyan', 'Store Officer', 'Store', 'E-Engineering', 'E-Engineering Ltd.', '1755637022', 'saifop@bdmail.net'),
(8046, 'ENG-000638', 'Md Nur Alam Sarkar', 'Store In-Charge', 'Civil', '', '', '', ''),
(8047, 'ENG-000640', 'Md Riazul Islam', 'Driver', 'Administration', '', '', '', ''),
(8048, 'ENG-000643', 'Prashanta Biswas', 'Senior Officer', 'QMS', 'E-Engineering', 'E-Engineering Ltd.', '1755543194', 'saifop@bdmail.net'),
(8049, 'ENG-000644', 'Md Unus Ali', 'Peon', 'Administration', '', '', '', ''),
(8050, 'ENG-000646', 'Abu Saed', 'Cook', 'Dredging', '', '', '', ''),
(8051, 'ENG-000647', 'Mamun Gazi', 'Pipe Fitter', 'Dredging', '', '', '', ''),
(8052, 'ENG-000648', 'Md Ratib', 'Crew', 'Dredging', '', '', '', ''),
(8053, 'ENG-000649', 'Pijush Halder', 'Pipe Supervisor', 'Dredging', '', '', '', ''),
(8054, 'ENG-000650', 'Monirujjaman', 'Assistant Engineer', 'Electrical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8055, 'ENG-000651', 'Md Zabbar Sheikh', 'Crew', 'Dredging', '', '', '', ''),
(8056, 'ENG-000652', 'Md Helal Pramanik', 'Cook', 'Dredging', '', '', '', ''),
(8057, 'ENG-000654', 'Razoyan Mahabub', 'Planning Engineer', 'Civil', '', '', '', ''),
(8058, 'ENG-000655', 'Abdul Jabbr', 'Driver', 'Administration', '', '', '', ''),
(8059, 'ENG-000657', 'Rashedul Hoq Majumder', 'Site Surveyor', 'Civil', '', '', '', ''),
(8060, 'ENG-000658', 'Md Shaiful Islam', 'Assistant Site Surveyor', 'Civil', '', '', '', ''),
(8061, 'ENG-000660', 'Md Kibria', 'Asphalt Plant Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8062, 'ENG-000661', 'Omor faruque', 'Bitumen Distributor Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8063, 'ENG-000663', 'Saragit Biswas', 'Mechanical Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8064, 'ENG-000665', 'Md Masud Alam', 'Senior Project Manager', 'Civil', '', '', '', ''),
(8065, 'ENG-000667', 'Md Mehedi Hasan', 'Site Engineer', 'Civil', '', '', '', ''),
(8066, 'ENG-000668', 'Md Osman Shek', 'Roller Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8067, 'ENG-000669', 'Md Abdus Salam Shikdar', 'Wheel Loader Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8068, 'ENG-000670', 'Md Nurul Islam', 'Vibrator Hammer Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8069, 'ENG-000671', 'Md Ariful Biswas', 'Assistant Mechanic', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8070, 'ENG-000672', 'Md Joynal Abedin', 'Tandem Roller Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8071, 'ENG-000673', 'Rakash Chowdhury', 'Site Engineer', 'Civil', '', '', '', ''),
(8072, 'ENG-000674', 'Md Mozahedul Islam', 'Supervisor', 'Civil', '', '', '', ''),
(8073, 'ENG-000675', 'Manoj Roy', 'Mechanical Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8074, 'ENG-000676', 'Md Mazharul Islam', 'Assistant Mechanic', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8075, 'ENG-000678', 'Saudi Al Hasan', 'Site Supervisor', 'Civil', '', '', '', ''),
(8076, 'ENG-000681', 'Md Abdul Mannan', 'Paver Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8077, 'ENG-000683', 'Md Mohiuddin Howlader', 'Supervisor', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8078, 'ENG-000684', 'Md Sariful Islam', 'Supervisor', 'Civil', '', '', '', ''),
(8079, 'ENG-000685', 'Md Jahangir Alam Mukti', 'Supervisor', 'Civil', '', '', '', ''),
(8080, 'ENG-000686', 'Md Shakil Ahmmed', 'Supervisor', 'Civil', '', '', '', ''),
(8081, 'ENG-000688', 'Md Sayed Hossain', 'Supervisor', 'Civil', '', '', '', ''),
(8082, 'ENG-000689', 'Md Montu Munnsi', 'Equipment Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8083, 'ENG-000690', 'Md Rabbani', 'Assistant Mechanic', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8084, 'ENG-000691', 'Ruhul Amin', 'Tractor Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8085, 'ENG-000692', 'Md Sakib Munshi', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8086, 'ENG-000693', 'Md Shahjahan Mia', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8087, 'ENG-000694', 'Md Abdul Kuddus Shorif', 'Bulldozer Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8088, 'ENG-000695', 'Md Afjalur Rahman', 'Assistant Mechanic', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8089, 'ENG-000697', 'Sanjoy Kundu', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8090, 'ENG-000698', 'Md Arifur Rahman Sajol', 'Assistant Electrician', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8091, 'ENG-000699', 'Md Joynu Abedin', 'Welder', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8092, 'ENG-000702', 'Md Abdul Karim', 'Assistant Electrician', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8093, 'ENG-000703', 'Md Mojammel Mia', 'Mechanic', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8094, 'ENG-000709', 'Md Saroar Hossin', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8095, 'ENG-000712', 'Md Abdus Sabur', 'Project Engineer', 'Civil', '', '', '', ''),
(8096, 'ENG-000713', 'Md Rakibul Islam', 'Supervisor', 'Civil', '', '', '', ''),
(8097, 'ENG-000714', 'Sujhon Chandra Saha', 'Supervisor', 'Civil', '', '', '', ''),
(8098, 'ENG-000715', 'Md Emon', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8099, 'ENG-000716', 'Md Kaium Khan', 'Supervisor', 'Civil', '', '', '', ''),
(8100, 'ENG-000718', 'Md Rashedul Islam Rashed', 'Assistant Manager', 'Administration', '', '', '', ''),
(8101, 'ENG-000719', 'Md Maidul Islam', 'Supervisor', 'Civil', '', '', '', ''),
(8102, 'ENG-000720', 'Md Papon Khan', 'Supervisor', 'Civil', '', '', '', ''),
(8103, 'ENG-000721', 'Md Shamim', 'Fork Lift Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8104, 'ENG-000722', 'Md Ariful Islam', 'Supervisor', 'Civil', '', '', '', ''),
(8105, 'ENG-000723', 'Md Abdus Shattar', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8106, 'ENG-000724', 'Md Al Amin', 'Junior Engineer', 'Dredging', '', '', '', ''),
(8107, 'ENG-000725', 'Kazi Md Belayedh Hossain Nazim', 'Batching Plant Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8108, 'ENG-000726', 'Jamal Hossain', 'Lever Man', 'Dredging', '', '', '', ''),
(8109, 'ENG-000727', 'Md Nahidul Islam', 'Crew', 'Dredging', '', '', '', ''),
(8110, 'ENG-000728', 'Md Younush Ali', 'Manager', 'Finance And Accounts', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8111, 'ENG-000729', 'Firoz Sheikh', 'Operator', 'Dredging', '', '', '', ''),
(8112, 'ENG-000730', 'Md Sajedur Rahman', 'Deputy General Manager', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'sajedur@e-enggltd.com'),
(8113, 'ENG-000732', 'Md Alamgir Hossain', 'Supervisor', 'Civil', '', '', '', ''),
(8114, 'ENG-000734', 'Md Jahangir Hassin', 'Supervisor', 'Civil', '', '', '', ''),
(8115, 'ENG-000735', 'Shahadat Hossain', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8116, 'ENG-000737', 'Fazar Rahman', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8117, 'ENG-000738', 'Noman Uddin', 'Operator', 'Dredging', '', '', '', ''),
(8118, 'ENG-000739', 'Md Nayan', 'Crew', 'Dredging', '', '', '', ''),
(8119, 'ENG-000740', 'Halim Shaikh', 'Cook', 'Dredging', '', '', '', ''),
(8120, 'ENG-000741', 'Md Moznur Rahaman', 'Pipe Fitter', 'Dredging', '', '', '', ''),
(8121, 'ENG-000742', 'Md Mijanur Rahman', 'Deputy Manager', 'Finance And Accounts', 'E-Engineering', 'E-Engineering Ltd.', '', 'mijanur.rahman@e-enggltd.com'),
(8122, 'ENG-000743', 'Md Abul Bashr', 'Welder', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8123, 'ENG-000744', 'Md Bassue', 'Welder', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8124, 'ENG-000745', 'Jayanto Sarkar', 'Wheel Loader Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8125, 'ENG-000746', 'Md Ehsan Uddin', 'Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8126, 'ENG-000747', 'Md Majed Ali', 'Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8127, 'ENG-000748', 'Mojammal  Haque', 'Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8128, 'ENG-000749', 'Md Selim Reza', 'Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8129, 'ENG-000750', 'Sonjoy Chandra Biswas', 'Tractor Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8130, 'ENG-000752', 'Md Abdur Rab', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8131, 'ENG-000753', 'Md Ferdous', 'Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8132, 'ENG-000754', 'Md Jabed', 'Driver', 'Administration', '', '', '', ''),
(8133, 'ENG-000758', 'Md Shamsur Rahman', 'Assistant General Manager', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '0', 'shamsur.ce@saifpowertec.com'),
(8134, 'ENG-000759', 'Myin Uddin', 'Manager', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'myin.uddin@e-enggltd.com'),
(8135, 'ENG-000760', 'Md Mizanur Rahman', 'Store Assistant', 'Administration', '', '', '', ''),
(8136, 'ENG-000761', 'Md Jahid Hasan', 'Officer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1965062389', 'jahid.hasan@e-enggltd.com'),
(8137, 'ENG-000765', 'Md Salim Reza ', 'Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'Saifop@saifpowertec.com'),
(8138, 'ENG-000766', 'Uttam Kumar Saha ', 'Project Co-Ordinator', 'Civil', '', '', '', '');
INSERT INTO `inv_employee` (`id`, `employeeid`, `name`, `designation`, `department`, `division`, `company`, `phone`, `email`) VALUES
(8139, 'ENG-000767', 'Md Amran Ali', 'Transit Mixer Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1717005097', 'Saifop@saifpowertec.com'),
(8140, 'ENG-000768', 'Md Monir Hossain', 'Crew', 'Dredging', '', '', '', ''),
(8141, 'ENG-000769', 'Md Sabuj Mia', 'Crew', 'Dredging', '', '', '', ''),
(8142, 'ENG-000770', 'Md Abul Bashar', 'Crew', 'Dredging', '', '', '', ''),
(8143, 'ENG-000771', 'Arafat Miah', 'Assistant Engine Driver', 'Dredging', '', '', '', ''),
(8144, 'ENG-000772', 'Arnab Das', 'Crew', 'Dredging', '', '', '', ''),
(8145, 'ENG-000773', 'Bibek Mondol', 'Crew', 'Dredging', '', '', '', ''),
(8146, 'ENG-000774', 'Md Dulal ', 'Crew', 'Dredging', '', '', '', ''),
(8147, 'ENG-000775', 'Md Foysal Hossain ', 'Assistant Engine Driver', 'Dredging', '', '', '', ''),
(8148, 'ENG-000776', 'Md Abedur Rahman', 'Crew', 'Dredging', '', '', '', ''),
(8149, 'ENG-000778', 'Md Ashik', 'Crew', 'Dredging', '', '', '', ''),
(8150, 'ENG-000779', 'Md Yeasin Sheikh', 'Crew', 'Dredging', '', '', '', ''),
(8151, 'ENG-000781', 'Md Jabed Hossain', 'Crew', 'Dredging', '', '', '', ''),
(8152, 'ENG-000782', 'Md Ekhlas', 'Crew', 'Dredging', '', '', '', ''),
(8153, 'ENG-000784', 'Md Mosarrof Hossen', 'Assistant Engine Driver', 'Dredging', '', '', '', ''),
(8154, 'ENG-000785', 'Md Shimul Ali', 'Crew', 'Dredging', '', '', '', ''),
(8155, 'ENG-000786', 'Md Miraz Hossen ', 'Crew', 'Dredging', '', '', '', ''),
(8156, 'ENG-000787', 'Mohasin Mia', 'Crew', 'Dredging', '', '', '', ''),
(8157, 'ENG-000789', 'Mohammad Ali Asraf', 'Supervisor', 'Dredging', '', '', '', ''),
(8158, 'ENG-000790', 'Mohin Uddin ', 'Assistant Engine Driver', 'Dredging', '', '', '', ''),
(8159, 'ENG-000791', 'Nur Mohhamad', 'Engine Driver', 'Dredging', '', '', '', ''),
(8160, 'ENG-000792', 'Imran Hossain', 'Senior Officer', 'QMS', 'E-Engineering', 'E-Engineering Ltd.', '1778782544', 'Saifop@saifpowertec.com'),
(8161, 'ENG-000793', 'Md Nazrul Islam', 'Executive', 'QMS', 'E-Engineering', 'E-Engineering Ltd.', '1839442055', 'Saifop@saifpowertec.com'),
(8162, 'ENG-000794', 'Md Salauddin Hayat', 'Senior Officer', 'QMS', 'E-Engineering', 'E-Engineering Ltd.', '1672544148', 'Saifop@saifpowertec.com'),
(8163, 'ENG-000795', 'Md Amzad Hossen', 'Senior Officer', 'QMS', 'E-Engineering', 'E-Engineering Ltd.', '1828014901', 'Saifop@saifpowertec.com'),
(8164, 'ENG-000796', 'Md Sofiqul Islalm', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1712815824', 'Saifop@saifpowertec.com'),
(8165, 'ENG-000797', 'Md Masud Rana', 'Batching Plant Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1639154475', 'Saifop@saifpowertec.com'),
(8166, 'ENG-000798', 'Md Shohlel Rana', 'Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1992390419', 'Saifop@saifpowertec.com'),
(8167, 'ENG-000799', 'Md Sazad Hosan', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1852338201', 'Saifop@saifpowertec.com'),
(8168, 'ENG-000800', 'Md Abdul Kader', 'Driver', 'Administration', '', '', '', ''),
(8169, 'ENG-000801', 'MG Rabbani', 'Driver', 'Administration', '', '', '', ''),
(8170, 'ENG-000804', 'Mohammad Osman', 'Driver', 'Administration', '', '', '', ''),
(8171, 'ENG-000806', 'Md Lokman', 'Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1829371741', 'Saifop@saifpowertec.com'),
(8172, 'ENG-000808', 'Abdullah Ahad', 'Supervisor', 'Civil', '', '', '', ''),
(8173, 'ENG-000809', 'Anowar Hossen', 'Mechanic', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1644168010', 'Saifop@saifpowertec.com'),
(8174, 'ENG-000810', 'Md Rashadul Islam', 'Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1744520041', 'Saifop@saifpowertec.com'),
(8175, 'ENG-000811', 'S M Saju', 'Senior Electrician', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1782421760', 'Saifop@saifpowertec.com'),
(8176, 'ENG-000813', 'S M Rakibul Hassan', 'Store Officer', 'Civil', '', '', '', ''),
(8177, 'ENG-000814', 'Md Abdul Karim', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8178, 'ENG-000815', 'Md Zakir Hosen', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8179, 'ENG-000816', 'Md Abdul Kadar', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8180, 'ENG-000817', 'Md Aminur Islam', 'Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8181, 'ENG-000818', 'Mizanur Rahman', 'Trailer Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8182, 'ENG-000819', 'Emon Hossain', 'Crew', 'Dredging', '', '', '', ''),
(8183, 'ENG-000820', 'Md Farooq Sikder ', 'Crew', 'Dredging', '', '', '', ''),
(8184, 'ENG-000823', 'Md Jamirul Islam', 'Assistant', 'Dredging', '', '', '', ''),
(8185, 'ENG-000825', 'Md Mosaref Hossain', 'Assistant', 'Dredging', '', '', '', ''),
(8186, 'ENG-000826', 'Md Masud Saheed', 'Executive Director', 'Dredging', '', '', '', ''),
(8187, 'ENG-000827', 'Alam Molla', 'Project Engineer', 'Civil', '', '', '', ''),
(8188, 'ENG-000828', 'Md Abul Kalam Shamsuddin', 'Store Officer', 'Civil', '', '', '', ''),
(8189, 'ENG-000829', 'Md Rasel Alam', 'Deputy Project Manager', 'Civil', '', '', '', ''),
(8190, 'ENG-000830', 'Abdur Razzak Mollah', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8191, 'ENG-000831', 'Farhad Hossain', 'Welder', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8192, 'ENG-000832', 'Md Milon Hossen', 'Crane Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8193, 'ENG-000834', 'Md Masud Rana', 'Surveyor', 'Civil', '', '', '', ''),
(8194, 'ENG-000835', 'Md Abdullah Al Mamun', 'Driver', 'Administration', '', '', '', ''),
(8195, 'ENG-000836', 'Md Abdur Rashid', 'Mechanic', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8196, 'ENG-000837', 'Md Akash Hossain', 'Concrete Pump Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8197, 'ENG-000838', 'Md Mostafa Kamal', 'Surveyor', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8198, 'ENG-000839', 'Md Tota Mia', 'Tyre Feeder', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8199, 'ENG-000840', 'Md Mahmudul Islam', 'Medical Assistant', 'QMS', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8200, 'ENG-000841', 'Shanta Dey', 'Medical Assistant', 'QMS', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8201, 'ENG-000842', 'Md Zakir Hossain', 'Manager', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8202, 'ENG-000843', 'Md Nur Islam', 'Senior Officer', 'QMS', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8203, 'ENG-000844', 'Habibur Rahman Hasan', 'Senior Manager', 'Dredging', '', '', '', ''),
(8204, 'ENG-000845', 'Mohammed Yakub', 'Store Keeper', 'Dredging', '', '', '', ''),
(8205, 'ENG-000846', 'Md Ali Akbar', 'Bulldozer Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8206, 'ENG-000847', 'Md. Robin Mia', 'Driver', 'Administration', '', '', '', ''),
(8207, 'ENG-000848', 'Md Abdul Mannan', 'Bulldozer Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8208, 'ENG-000849', 'Abu Noman', 'Bulldozer Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8209, 'ENG-000850', 'Mamunar Rasid', 'Bulldozer Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8210, 'ENG-000851', 'Md Mintu Miah', 'Bulldozer Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8211, 'ENG-000852', 'Md Nurnobi Hossain', 'Bulldozer Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8212, 'ENG-000853', 'Md Shahidul', 'Bulldozer Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8213, 'ENG-000854', 'Md Shohid', 'Bulldozer Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8214, 'ENG-000855', 'Md Yasin Sardar', 'Bulldozer Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8215, 'ENG-000856', 'Md Younus', 'Bulldozer Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8216, 'ENG-000857', 'Sha Alam', 'Bulldozer Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8217, 'ENG-000858', 'Sala Uddin', 'Bulldozer Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8218, 'ENG-000859', 'Md lrfat Hossen', 'Welder', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8219, 'ENG-000860', 'Md Shopon Fakir', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8220, 'ENG-000861', 'Md Chan Mia', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8221, 'ENG-000862', 'Md Yousuf', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8222, 'ENG-000863', 'Syed Md Rashal', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8223, 'ENG-000864', 'Md Monir Hosen', 'Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8224, 'ENG-000865', 'Md Abed Ali', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8225, 'ENG-000866', 'Md Elias Mia', 'Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8226, 'ENG-000867', 'Azhar Mahmud', 'Deputy Project Manager', 'Civil', '', '', '', ''),
(8227, 'ENG-000869', 'Md Abdul Momin Mredha', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8228, 'ENG-000870', 'Md Kawsar Ahamed', 'Surveyor', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8229, 'ENG-000871', 'Basar', 'Roller Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8230, 'ENG-000872', 'Md Ziaul Hoque', 'Vibrator Hammer Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8231, 'ENG-000873', 'Md Nazrul Islam', 'Roller Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8232, 'ENG-000874', 'Baizid Bostami', 'Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8233, 'ENG-000875', 'Masud Rana', 'Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8234, 'ENG-000876', 'Md Shahadat Hossen', 'Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8235, 'ENG-000878', 'Md Mohubar Rahman', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8236, 'ENG-000879', 'Nirob', 'Concrete Pump Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8237, 'ENG-000880', 'Md Alamin Gajy', 'Mixer Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8238, 'ENG-000881', 'Titas Biswas', 'Rigger', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8239, 'ENG-000882', 'Md Mustafizur Rahman', 'Helper', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8240, 'ENG-000883', 'Golap Mia', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8241, 'ENG-000885', 'Md Shahidul Islam Hawladar', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8242, 'ENG-000886', 'Md Sofiqul Islam', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8243, 'ENG-000887', 'Touhid Hasan', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8244, 'ENG-000889', 'Moznu', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8245, 'ENG-000891', 'Md Najmul Huda Razu', 'Crane Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8246, 'ENG-000892', 'Md Nurul Afsar', 'Site Supervisor', 'Civil', '', '', '', ''),
(8247, 'ENG-000893', 'Abdus Salam', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1725108347', 'Saifop@saifpowertec.com'),
(8248, 'ENG-000894', 'Abdus Salam', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1910027108', 'Saifop@saifpowertec.com'),
(8249, 'ENG-000895', 'Md Jahangir Alam Khan', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1731354773', 'Saifop@saifpowertec.com'),
(8250, 'ENG-000896', 'Md Salim Shikder', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1753690184', 'Saifop@saifpowertec.com'),
(8251, 'ENG-000897', 'Md Shazib Molla', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1796738277', 'Saifop@saifpowertec.com'),
(8252, 'ENG-000898', 'Mohammad Hasan', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1882100208', 'Saifop@saifpowertec.com'),
(8253, 'ENG-000901', 'Swapan Acharjee', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1811226685', 'Saifop@saifpowertec.com'),
(8254, 'ENG-000902', 'Nazmul', 'Excavator Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1879209361', 'Saifop@saifpowertec.com'),
(8255, 'ENG-000903', 'Ahesanul Haque', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8256, 'ENG-000904', 'Alauddin', 'Vibrating Roller Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8257, 'ENG-000905', 'Amit Bagchi', 'Wheel Loader Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8258, 'ENG-000907', 'Md Razib Shikder', 'Vibrating Roller Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1761241538', 'Saifop@saifpowertec.com'),
(8259, 'ENG-000910', 'Md Yousuf Miah', 'Vibrating Roller Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1316502677', 'Saifop@saifpowertec.com'),
(8260, 'ENG-000911', 'Tofazzal Hossain', 'Wheel Loader Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1922700594', 'Saifop@saifpowertec.com'),
(8261, 'ENG-000912', 'S M Ashik Iqbal Sawpno', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1730917170', 'Saifop@saifpowertec.com'),
(8262, 'ENG-000913', 'Sayed Imran Khan Rocky', 'Vibrating Roller Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1608412290', 'Saifop@saifpowertec.com'),
(8263, 'ENG-000914', 'Md Yousuf Zia', 'Vibrating Roller Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8264, 'ENG-000916', 'Md Babul Hossain', 'Roller Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1770713597', 'Saifop@saifpowertec.com'),
(8265, 'ENG-000918', 'Md Alauddin', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1824838510', 'Saifop@saifpowertec.com'),
(8266, 'ENG-000919', 'Md Nehu Choduri', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1746660203', 'Saifop@saifpowertec.com'),
(8267, 'ENG-000920', 'Rabiul Islam', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1937742799', 'Saifop@saifpowertec.com'),
(8268, 'ENG-000921', 'Md Shohidul Islam', 'Dump Truck Driver', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1741742859', 'Saifop@saifpowertec.com'),
(8269, 'ENG-000922', 'Md Yaladur Rahman', 'Batching Plant Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1736784062', 'Saifop@saifpowertec.com'),
(8270, 'ENG-000924', 'Md Ansarul Haque', 'Pipe Fitter', 'Dredging', '', '', '', ''),
(8271, 'ENG-000925', 'Md. Waliullah', 'Officer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '1777790394', 'saifop@bdmail.net'),
(8272, 'ENG-000927', 'Md Saddam Hossain', 'Wheel Loader Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1710581354', 'Saifop@saifpowertec.com'),
(8273, 'ENG-000928', 'Md Sulaiman Hoque', 'Site Supervisor', 'Civil', '', '', '', ''),
(8274, 'ENG-000929', 'Abul Hossain ', 'Crew', 'Dredging', '', '', '', ''),
(8275, 'ENG-000930', 'Md Anamul Hoque ', 'Crew', 'Dredging', '', '', '', ''),
(8276, 'ENG-000931', 'Mijanur Rahaman ', 'Crew', 'Dredging', '', '', '', ''),
(8277, 'ENG-000932', 'Md Mister Hossion ', 'Crew', 'Dredging', '', '', '', ''),
(8278, 'ENG-000933', 'Md Palash ', 'Assistant Engine Driver', 'Dredging', '', '', '', ''),
(8279, 'ENG-000934', 'Ripon ', 'Assistant', 'Dredging', '', '', '', ''),
(8280, 'ENG-000935', 'Sabbir Khan Mojlis ', 'Crew', 'Dredging', '', '', '', ''),
(8281, 'ENG-000936', 'Farhad Uddin ', 'Assistant Engine Driver', 'Dredging', '', '', '', ''),
(8282, 'ENG-000937', 'Md Mojibur Rahman ', 'Assistant Engine Driver', 'Dredging', '', '', '', ''),
(8283, 'ENG-000938', 'Md Siful Islam ', 'Engine Driver', 'Dredging', '', '', '', ''),
(8284, 'ENG-000939', 'Foizul Ahmed', 'Senior Officer', 'Project ENG', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(8285, 'MPL-000001', 'Jalal Uddin Ahmed Chowdhury', 'Independent Director', 'Management', 'Maxon Power', 'Maxon Power Ltd.', '1787686720', ''),
(8286, 'MPL-005406', 'Jannatun Naima', 'Officer', 'Administration', '', '', '', ''),
(8287, 'MPL-005408', 'Md Joynul Abedin', 'Supervisor', 'Project', 'Maxon Power', 'Maxon Power Ltd.', '1755630103', ''),
(8288, 'MPL-005409', 'Md Ruhul Amin', 'Head of Project', 'Project', 'Maxon Power', 'Maxon Power Ltd.', '1713383472', 'ruhul@saifpowertec.com'),
(8289, 'MPL-005410', 'Md Saiful Alam', 'Senior Manager', 'Project', 'Maxon Power', 'Maxon Power Ltd.', '1714080329', 'saifulalam@saifpowertec.com'),
(8290, 'MPL-005414', 'Md Gias Uddin Akhan', 'Deputy Manager', 'Finance And Accounts', 'Maxon Power', 'Maxon Power Ltd.', '1730783624', 'gias@saifpowertec.com'),
(8291, 'MPL-005416', 'Md Shohel Hossain', 'Deputy Manager', 'Project', 'Maxon Power', 'Maxon Power Ltd.', '1755543159', 'shohelhossain@saifpowertec.com'),
(8292, 'MPL-005417', 'Bissanath Kumar Sadhu', 'Deputy Manager', 'Project', 'Maxon Power', 'Maxon Power Ltd.', '1755543162', 'bissanathkumar@saifpowertec.com'),
(8293, 'MPL-005418', 'Farhana Rahman', 'Officer', 'Finance And Accounts', 'Maxon Power', 'Maxon Power Ltd.', '1755630100', 'farhanarahman@saifpowertec.com'),
(8294, 'MPL-005419', 'Md Hasan Mahabub', 'Logistic Support Officer', 'Project', 'Maxon Power', 'Maxon Power Ltd.', '1730785101', 'hasanmahabub@saifpowertec.com'),
(8295, 'MPL-005420', 'Md Ashraful Alam', 'Senior Manager', 'Project', 'Maxon Power', 'Maxon Power Ltd.', '1713383427', 'ashrafulalam@saifpowertec.com'),
(8296, 'MPL-005421', 'Md Akrama Al Mamun Khan', 'Assistant Manager', 'Project', 'Maxon Power', 'Maxon Power Ltd.', '1708467894', 'akrama@saifpowertec.com'),
(8297, 'MPL-005423', 'Md Mahbubur Rahman', 'Manager', 'Project', 'Maxon Power', 'Maxon Power Ltd.', '1713383429', 'mahbuburrahman@saifpowertec.com'),
(8298, 'MPL-005425', 'Nurun Nobi Chowdhury', 'Deputy General Manager', 'Sales And Marketing', 'Generator Sales', 'Maxon Power Ltd.', '', 'nurunnabi@maxonpowerltd.com'),
(8299, 'MPL-005428', 'Md Shamsul Alam', 'Assistant Manager', 'Sales And Marketing', 'Generator Sales', 'Maxon Power Ltd.', '0', 'shamsulalam@saifpowertec.com'),
(8300, 'MPL-005429', 'Homaira Himu', 'Senior Officer', 'Administration', '', '', '', ''),
(8301, 'MPL-005431', 'Md Sajib Sarker', 'Peon', 'Sales And Marketing', 'Generator Sales', 'Maxon Power Ltd.', '1761419815', 'saifop@bdmail.net'),
(8302, 'MPL-005433', 'Md Akram Hossain', 'Executive Director', 'Equipment', 'Generator Sales', 'Maxon Power Ltd.', '1787684202', 'akram.hossain@maxonpowerltd.com'),
(8303, 'MPL-005434', 'Md. Juyel Miah', 'Assistant Manager', 'Service', 'Generator Sales', 'Maxon Power Ltd.', '', 'juwel@maxonpowerltd.com'),
(8304, 'MPL-005437', 'Lawrence Baroi', 'Deputy Manager', 'Service', 'Generator Sales', 'Maxon Power Ltd.', '', 'lawrence@maxonpowerltd.com'),
(8305, 'MPL-005438', 'Md. Mashiur Rahman', 'Assistant Manager', 'Service', 'Generator Sales', 'Maxon Power Ltd.', '', 'mashiur@maxonpowerltd.com'),
(8306, 'MPL-005439', 'Mohammad Akramul Haque Bhuiyan', 'Executive', 'Service', 'Generator Sales', 'Maxon Power Ltd.', '', ''),
(8307, 'MPL-005440', 'Md Abir Hossain Sohag', 'Engineer', 'Service', 'Generator Sales', 'Maxon Power Ltd.', '', 'abir@saifpowertec.com'),
(8308, 'MPL-005441', 'Md Moyan Uddin', 'Foreman', 'Service', 'Generator Sales', 'Maxon Power Ltd.', '', ''),
(8309, 'MPL-005442', 'Md A.K. Azad', 'Supervisor', 'Service', 'Generator Sales', 'Maxon Power Ltd.', '', ''),
(8310, 'MPL-005443', 'Md Nazrul Islam Babu', 'Supervisor', 'Service', 'Generator Sales', 'Maxon Power Ltd.', '', ''),
(8311, 'MPL-005444', 'Nazrul Islam', 'Senior Technician', 'Service', 'Generator Sales', 'Maxon Power Ltd.', '', ''),
(8312, 'MPL-005445', 'Md Rahamatullah', 'Senior Technician', 'Service', 'Generator Sales', 'Maxon Power Ltd.', '', ''),
(8313, 'MPL-005448', 'A K M Mainul Hasan', 'Officer', 'Administration', '', '', '', ''),
(8314, 'MPL-005454', 'Md Sadikin Zime', 'Assistant Manager', 'Sales And Marketing', 'Generator Sales', 'Maxon Power Ltd.', '1313447916', 'saifop@bdmail.net'),
(8315, 'MPL-005456', 'Mohammad Obaidul Haque', 'General Manager', 'Service', 'Generator Sales', 'Maxon Power Ltd.', '1712252333', 'obaidul.haque@saifpowertec.com'),
(8316, 'MPL-005457', 'Md Kamruzzaman', 'Deputy General Manager', 'Equipment', 'Generator Sales', 'Maxon Power Ltd.', '0', 'kamruzzaman@saifpowertec.com'),
(8317, 'MPL-005458', 'Abul Khair', 'Deputy General Manager', 'Equipment', 'Generator Sales', 'Maxon Power Ltd.', '0', 'abulkhair@saifpowertec.com'),
(8318, 'MPL-005459', 'Rajiv Kumar Gupta', 'Deputy General Manager', 'Project', 'Generator Sales', 'Maxon Power Ltd.', '1313447919', 'rajivkumar@maxonpowerltd.com'),
(8319, 'MPL-005460', 'Md Mizanur Rahman Samrat', 'Driver', 'Administration', '', '', '', ''),
(8320, 'MPL-005462', 'Farhad Ahmed', 'Assistant Manager', 'Finance And Accounts', 'Generator Sales', 'Maxon Power Ltd.', '0', 'fahamed@saifpowertec.com'),
(8321, 'MPL-005464', 'Md. Munna Islam', 'Driver', 'Administration', '', '', '', ''),
(8322, 'MPL-005466', 'Md Emran Howlader', 'Helper', 'Project', 'Generator Sales', 'Maxon Power Ltd.', '', 'saifop@bdmail.net'),
(8323, 'MPL-005468', 'Abul Khair', 'Junior Engineer', 'Project', 'Generator Sales', 'Maxon Power Ltd.', '', 'saifop@bdmail.net'),
(8324, 'MPL-005469', 'Mohammad Mahabubur Rahman', 'Junior Engineer', 'Project', 'Generator Sales', 'Maxon Power Ltd.', '', 'saifop@bdmail.net'),
(8325, 'MPL-005471', 'Nasrin Akter', 'Assistant Manager', 'Finance And Accounts', 'Generator Sales', 'Maxon Power Ltd.', '1730783605', 'nasrin.akter@saifpowertec.com'),
(8326, 'MPL-005472', 'Masud', 'Foreman', 'Project', 'Maxon Power', 'Maxon Power Ltd.', '', 'saifop@bdmail.net'),
(8327, 'MPL-005473', 'Md Mahabubur Rahman', 'Driver', 'Project', 'Generator Sales', 'Maxon Power Ltd.', '', 'saifop@bdmail.net'),
(8328, 'MPL-005474', 'Tanin Islam ', 'Peon', 'Administration', '', '', '', ''),
(8329, 'MPL-005475', 'Abul Kalam Azad', 'Senior Manager', 'Service', 'Generator Sales', 'Maxon Power Ltd.', '1712209108', 'Saifop@saifpowertec.com'),
(8330, 'MPL-005476', 'Roni Ahamed', 'Executive', 'Sales And Marketing', 'Generator Sales', 'Maxon Power Ltd.', '1728460725', 'Saifop@saifpowertec.com'),
(8331, 'MPL-005477', 'Sheikh Khalid Hassan', 'Junior Engineer', 'Project', 'Generator Sales', 'Maxon Power Ltd.', '1923029223', ''),
(8332, 'MPL-005478', 'Sheikh Hasibur Rahman', 'Junior Engineer', 'Project', 'Generator Sales', 'Maxon Power Ltd.', '1921501548', ''),
(8333, 'MPL-005479', 'Md. Azizul Islam', 'Electrician', 'Project', 'Generator Sales', 'Maxon Power Ltd.', '1830480093', ''),
(8334, 'MPL-005480', 'Md. Ismail Sk', 'Helper', 'Project', 'Generator Sales', 'Maxon Power Ltd.', '1775665056', ''),
(8335, 'MPL-005481', 'Md Jahir Uddin', 'Semi Mechanic', 'Project', 'Generator Sales', 'Maxon Power Ltd.', '', 'saifop@bdmail.net'),
(8336, 'SEML-000004', 'Md Riazul Islam', 'Deputy Manager', 'Sales And Marketing', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1713383465', 'riazul.islam@saifpowertec.com'),
(8337, 'SEML-000006', 'Md. Jafar Imam Khan', 'Deputy Manager', 'Sales And Marketing', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1787676145', 'jafor@saifpowertec.com'),
(8338, 'SEML-000009', 'Md Imran', 'Service Technician', 'Service And Maintanance', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1161107322', ''),
(8339, 'SEML-000012', 'Md Mizanur Rahman', 'Senior Technician', 'Service And Maintanance', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1724607616', ''),
(8340, 'SEML-000014', 'Syeda Rowshan Ara', 'Executive', 'Sales And Marketing', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1730377077', 'rowshanara.led@saifpowertec.com'),
(8341, 'SEML-000015', 'Md Sahadat Hossain', 'Senior Officer', 'Sales And Marketing', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1730377046', 'sahadat.solar@saifpowertec.com'),
(8342, 'SEML-000016', 'Md Farhad Uddin', 'Deputy Manager', 'Assembly', '', '', '', ''),
(8343, 'SEML-000018', 'Md Saidur Rahman Sarker', 'Deputy Manager', 'Sales And Marketing', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1713383418', 'Saidur.led@saifpowertec.com'),
(8344, 'SEML-000019', 'Abdullah-Al- Nahian', 'Assistant Manager', 'Sales And Marketing', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1713383436', 'nahian.led@saifpowertec.com'),
(8345, 'SEML-000021', 'Md Zashim Uddin', 'Supervisor', 'Service And Maintanance', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1917792128', ''),
(8346, 'SEML-000027', 'Asha Akther', 'Technician', 'Assembly', '', '', '', ''),
(8347, 'SEML-000029', 'Md Robin', 'Technician', 'Assembly', '', '', '', ''),
(8348, 'SEML-000031', 'Md Shaiful Al Mamun', 'Supervisor', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1787684183', 'saifop@bdmail.net'),
(8349, 'SEML-000033', 'Fatima Akter Lima', 'Technician', 'Assembly', '', '', '', ''),
(8350, 'SEML-000037', 'Md. Mohiuddin Faruk', 'Assistant Manager', 'Sales And Marketing', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1787684058', 'mohiuddin.led@saifpowertec.com'),
(8351, 'SEML-000047', 'Anthony Das', 'Supervisor', 'Service And Maintanance', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1729657067', ''),
(8352, 'SEML-000048', 'Md Nazmul Hossain Mollah', 'Officer', 'Purchase And Procurement', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1777790377', ''),
(8353, 'SEML-000053', 'Ashik Ullah', 'Technician', 'Service And Maintanance', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1996839219', ''),
(8354, 'SEML-000055', 'Md Nobin', 'Welder', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1760460689', ''),
(8355, 'SEML-000068', 'Samsuddin Akando', 'Helper', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1741227745', ''),
(8356, 'SEML-000070', 'Md Rakib Hossain', 'Welder', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1948737098', ''),
(8357, 'SEML-000071', 'Najmul Islam Rasel', 'Helper', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1828621071', ''),
(8358, 'SEML-000075', 'Sokina Akter', 'Junior Technician', 'Assembly', '', '', '', ''),
(8359, 'SEML-000077', 'Rafika Islam', 'Junior Technician', 'Assembly', '', '', '', ''),
(8360, 'SEML-000078', 'Mayna Akter Maly', 'Junior Technician', 'Assembly', '', '', '', ''),
(8361, 'SEML-000081', 'Dewan Morsed', 'Assistant Manager', 'Finance And Accounts', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1714086398', 'dewan.morshed@saifpowertec.com'),
(8362, 'SEML-000082', 'Md. Ripon Miah', 'Assistant Manager', 'Finance And Accounts', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1915953900', ''),
(8363, 'SEML-000087', 'Md Bijoy Biplob', 'Helper', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1762261329', ''),
(8364, 'SEML-000089', 'Shamim Sarker', 'Helper', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1707964962', ''),
(8365, 'SEML-000093', 'Md Monjur Alam', 'Executive', 'Sales And Marketing', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1787676137', 'monjur.alam@saifpowertec.com'),
(8366, 'SEML-000094', 'Md Kamruzzaman', 'Assistant Manager', 'Sales And Marketing', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1787676139', 'md.kamruzzaman@saifpowertec.com'),
(8367, 'SEML-000095', 'Rifat Hossain', 'Helper', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '', 'saifop@bdmail.net'),
(8368, 'SEML-000096', 'Md Mominor Rahman', 'Welder', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '', 'saifop@bdmail.net'),
(8369, 'SEML-000097', 'Naime Mia', 'Helper', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '', 'saifop@bdmail.net'),
(8370, 'SEML-000099', 'Md Jakirul Islam', 'Senior Technician', 'Assembly', '', '', '', ''),
(8371, 'SEML-000100', 'Nasima Begum', 'Officer', 'Finance And Accounts', 'Blank', 'Saif Electrical Manufacturing Ltd.', '0', 'nasima.solar@saifpowertec.com'),
(8372, 'SEML-000103', 'Md Waliul Bari', 'Manager', 'Sales And Marketing', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1787692496', 'bari@saifpowertec.com'),
(8373, 'SEML-000104', 'Kazol Chandra Biswas', 'Helper', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '0', ''),
(8374, 'SEML-000105', 'Md Shahin Sheikh', 'Helper', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '0', ''),
(8375, 'SEML-000106', 'Md Juyal Miah', 'Welder', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1735922754', ''),
(8376, 'SEML-000107', 'Md Shahidul Islam Molla', 'Senior Technician', 'Service And Maintanance', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1715830013', ''),
(8377, 'SEML-000108', 'Most. Monira Akther Moni', 'Technician', 'Assembly', '', '', '', ''),
(8378, 'SEML-000109', 'Jesmin Akter', 'Technician', 'Assembly', '', '', '', ''),
(8379, 'SEML-000110', 'Tumpa Hazra', 'Technician', 'Assembly', '', '', '', ''),
(8380, 'SEML-000113', 'Halima Akter', 'Technician', 'Assembly', '', '', '', ''),
(8381, 'SEML-000116', 'Subaita Akter Mukta', 'Technician', 'Assembly', '', '', '', ''),
(8382, 'SEML-000117', 'Md. Shamsul Islam', 'Technician', 'Assembly', '', '', '', ''),
(8383, 'SEML-000118', 'Md. Shohdul Islam', 'Technician', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '', 'saifop@bdmail.net'),
(8384, 'SEML-000119', 'Shawon Mohammad Shahryiar', 'Senior Manager', 'Sales And Marketing', 'Blank', 'Saif Electrical Manufacturing Ltd.', '', 's.shahryiar@saifpowertec.com'),
(8385, 'SEML-000120', 'Laboni Khatun', 'Technician', 'Assembly', '', '', '', ''),
(8386, 'SEML-000121', 'Soroar Hossain', 'Driver', 'Administration', '', '', '', ''),
(8387, 'SEML-000122', 'Md Goalbar Hossen', 'Helper', 'Administration', '', '', '', ''),
(8388, 'SEML-000123', 'Nur Mohammad Nuru', 'Driver', 'Administration', '', '', '', ''),
(8389, 'SEML-000125', 'Gazi Md Rafiul Hassan', 'Officer', 'Sales And Marketing', 'Blank', 'Saif Electrical Manufacturing Ltd.', '', 'saifop@bdmail.net'),
(8390, 'SEML-000126', 'Md Kazmir Hossain Khan', 'Officer', 'Sales And Marketing', 'Blank', 'Saif Electrical Manufacturing Ltd.', '', 'saifop@bdmail.net'),
(8391, 'SEML-000131', 'Mohammad Shiam Hossain', 'Officer', 'Sales And Marketing', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1755630123', 'shiam.hossain@saifpowertec.com'),
(8392, 'SEML-000132', 'Mir Rubel Mia', 'Manager', 'Sales And Marketing', 'Blank', 'Saif Electrical Manufacturing Ltd.', '', 'saifop@bdmail.net'),
(8393, 'SEML-000133', 'Ashrafi Riaz', 'Helper', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '', 'saifop@bdmail.net'),
(8394, 'SEML-000134', 'Hazrat Ali', 'Helper', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '', 'saifop@bdmail.net'),
(8395, 'SEML-000135', 'Nasim', 'Helper', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '', 'saifop@bdmail.net'),
(8396, 'SEML-000136', 'Md Mahabub Khan', 'Welder', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '', 'saifop@bdmail.net'),
(8397, 'SEML-000138', 'Motin Bapary', 'Cleaner', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '', 'saifop@bdmail.net'),
(8398, 'SEML-000139', 'Md Hasan', 'Welder', 'Pole Fabrication', 'Blank', 'Saif Electrical Manufacturing Ltd.', '', 'saifop@bdmail.net'),
(8399, 'SEML-000141', 'Hamid Ullah', 'Assistant General Manager', 'Finance And Accounts', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1313448089', 'hamid.ullah@saifpowertec.com'),
(8400, 'SEML-000144', 'Md Alamgir Hossain', 'Cleaner', 'Administration', '', '', '', ''),
(8401, 'SEML-000145', 'Md Joynal Abedin', 'Deputy Manager', 'Service And Maintanance', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1716123745', 'Saifop@saifpowertec.com'),
(8402, 'SEML-000146', 'Md Sujon Miah', 'Foreman', 'Service And Maintanance', 'Blank', 'Saif Electrical Manufacturing Ltd.', '1883307672', 'Saifop@saifpowertec.com'),
(8403, 'SML-000001', 'Shaila  Mahmud', 'Assistant General Manager', 'Import', 'Blank', 'SAIF Maritime Ltd.', '1787684123', 'shaila.mahmud@saifmaritimeltd.com'),
(8404, 'SML-000002', 'Sindhu Shekhar Das', 'Executive', 'Import', 'Blank', 'SAIF Maritime Ltd.', '1787684143', 'sindhu@saifmaritimeltd.com'),
(8405, 'SML-000004', 'Sahanaz Bagum', 'Manager', 'Export and Import', 'Blank', 'SAIF Maritime Ltd.', '1718592496', 'sahanaz@saifmaritimeltd.com'),
(8406, 'SML-000007', 'Mohammed Shaiful Hoque', 'Deputy Manager', 'Administration', '', '', '', ''),
(8407, 'SML-000009', 'Nannu Kholefa', 'Driver', 'Administration', '', '', '', ''),
(8408, 'SML-000010', 'Md Fazle Rabbi Gazi', 'Senior Executive', 'Export and Import', 'Blank', 'SAIF Maritime Ltd.', '', 'fazle.rabbi@saifmaritimeltd.com'),
(8409, 'SML-000012', 'Md Abdullah Jahir', 'Chief Operating Officer', 'Administration', '', '', '', ''),
(8410, 'SML-000013', 'Md Washim ', 'Driver', 'Administration', '', '', '', ''),
(8411, 'SML-000014', 'Md. Shihabul Alam', 'Officer', 'Export and Import', 'Blank', 'SAIF Maritime Ltd.', '1781277056', 'shihabul.alam@saifpowertec.com'),
(8412, 'SPHL-000001', 'Md Minhazul Islam', 'Deputy General Manager', 'Finance And Accounts', 'Blank', 'Saif Port Holdings Ltd.', '', 'saifop@bdmail.net'),
(8413, 'SPHL-000002', 'Khan Md Istique Rana', 'Senior Officer', 'Logistics', 'Blank', 'Saif Port Holdings Ltd.', '1787684072', 'monglasphlacc@gmail.com'),
(8414, 'SPHL-000003', 'Khandaker Md Eheteshamul Islam', 'Executive', 'Documentation', '', '', '', ''),
(8415, 'SPHL-000004', 'Sree Delip Kumar Das', 'Electrician', 'Operation', 'Blank', 'Saif Port Holdings Ltd.', '', 'saifop@bdmail.net'),
(8416, 'SPHL-000005', 'Md Jahangir Alam Sheikh', 'Supervisor', 'Operation', 'Blank', 'Saif Port Holdings Ltd.', '', 'saifop@bdmail.net'),
(8417, 'SPHL-000006', 'Md Shakil Hossain', 'Peon', 'Administration', '', '', '', ''),
(8418, 'SPHL-000007', 'Kazi Golam Moktader', 'General Manager', 'Operation', 'Blank', 'Saif Port Holdings Ltd.', '1787684219', 'saifop@bdmail.net'),
(8419, 'SPHL-000017', 'Md. Hasan Tareq', 'Deputy Manager', 'Operation', 'Blank', 'Saif Port Holdings Ltd.', '1758008148', 'hasan.tareq@e-enggltd.com'),
(8420, 'SPHL-000018', 'Md. Altaf Hossain', 'Director', 'Operation', 'Blank', 'Saif Port Holdings Ltd.', '0', 'director.altaf@e-enggltd.com'),
(8421, 'SPHL-000019', 'Pabitra Kumar Sarker', 'General Manager', 'Operation', 'Blank', 'Saif Port Holdings Ltd.', '1971688049', 'pabitra@e-enggltd.com'),
(8422, 'SPHL-000021', 'Md Asadur Rahman', 'Peon', 'Administration', '', '', '', ''),
(8423, 'SPHL-000023', 'Md Rubel Hossain', 'Driver', 'Administration', '', '', '', ''),
(8424, 'SPHL-000024', 'Md Sahabuddin', 'Driver', 'Administration', '', '', '', ''),
(8425, 'SPHL-000025', 'Md Salim Mandal', 'Driver', 'Administration', '', '', '', ''),
(8426, 'SPHL-000026', 'Tutul Kha', 'Driver', 'Administration', '', '', '', ''),
(8427, 'SPHL-000027', 'Md. Motiar Rahman', 'Executive', 'Commercial', 'Blank', 'Saif Port Holdings Ltd.', '1787684060', 'motiar.rahman@e-enggltd.com'),
(8428, 'SPHL-000029', 'Md Sumon', 'Driver', 'Administration', '', '', '', ''),
(8429, 'SPL-000001', 'Tarafder Md. Ruhul Amin', 'Managing Director', 'Management', 'Corporate', 'Saif Powertec Ltd.', '0', 'powertec@bol-online.com'),
(8430, 'SPL-000002', 'Tarafder Nigar Sultana', 'Chairman', 'Management', 'Corporate', 'Saif Powertec Ltd.', '1711531389', 'nigarsultana@saifpowertec.com'),
(8431, 'SPL-000004', 'Tarafder Md Ruhul Saif', 'Director', 'Management', 'Battery', 'Saif Powertec Ltd.', '1713383401', ''),
(8432, 'SPL-000005', 'Mohammed Shawkat Hossain Khan', 'Director', 'Management', 'Renewable Energy', 'Saif Powertec Ltd.', '1730783622', 'shawkat@saifpowertec.com'),
(8433, 'SPL-000006', 'Engr. Md Nasiruddin Chowdhury', 'Additional Managing Director', 'Management', 'Corporate', 'Saif Powertec Ltd.', '1713009681', 'nasir@saifpowertec.com'),
(8434, 'SPL-000008', 'Mostafizur Rahman', 'Executive Director', 'Management', 'Corporate', 'Saif Powertec Ltd.', '0', 'mostafiz@saifpowertec.com'),
(8435, 'SPL-000009', 'Md Hasan Reza', 'Chief Finance Officer', 'Finance And Accounts', 'Corporate', 'Saif Powertec Ltd.', '1713383471', 'hasan.saifpowertec@gmail.com'),
(8436, 'SPL-000010', 'Md. Kamrul Hassan Khan', 'Head of QMS', 'QMS', 'Corporate', 'Saif Powertec Ltd.', '0', 'kamrulhassan@saifpowertec.com'),
(8437, 'SPL-000011', 'Md. Mostafa Kamal Pasha', 'Senior Officer', 'Finance And Accounts', 'Corporate', 'Saif Powertec Ltd.', '0', 'kamalpasha@saifpowertec.com'),
(8438, 'SPL-000012', 'Tariq Ahmed Khan', 'Deputy General Manager', 'Human Resource Management', 'Corporate', 'Saif Powertec Ltd.', '1755548549', 'tariqkhan@saifpowertec.com'),
(8439, 'SPL-000013', 'Md Sohail Hashim Khan', 'Manager', 'Purchase And Procurement', 'Corporate', 'Saif Powertec Ltd.', '0', 'sohail@saifpowertec.com'),
(8440, 'SPL-000014', 'S M Aftab Hossain', 'Chief Operating Officer', 'Project', 'Sub Station', 'Saif Powertec Ltd.', '0', 'aftabhossain@saifpowertec.com'),
(8441, 'SPL-000017', 'Fakir Md. Salehin', 'Company Secretary', 'Legal', 'Corporate', 'Saif Powertec Ltd.', '1714012508', 'mdsalehin@saifpowertec.com'),
(8442, 'SPL-000018', 'Md. Abdul Mannan', 'Peon', 'Administration', '', '', '', ''),
(8443, 'SPL-000019', 'Md. Monirruzzaman', 'Peon', 'Administration', '', '', '', ''),
(8444, 'SPL-000022', 'Md Habibur Rahman', 'Deputy Manager', 'Administration', '', '', '', ''),
(8445, 'SPL-000023', 'Muhammed Fakhrul Islam', 'Senior Manager', 'IT', 'Corporate', 'Saif Powertec Ltd.', '0', 'fakhrulislam@saifpowertec.com'),
(8446, 'SPL-000024', 'Md Amirul Islam', 'General Manager', 'Commercial', 'Corporate', 'Saif Powertec Ltd.', '0', 'amirul.islam@saifpowetec.com'),
(8447, 'SPL-000030', 'Shaila Mokbul Snigdha', 'Executive', 'Administration', '', '', '', ''),
(8448, 'SPL-000031', 'Md Emdadul Hassan', 'Assistant General Manager', 'Finance And Accounts', 'Corporate', 'Saif Powertec Ltd.', '0', ''),
(8449, 'SPL-000032', 'Md Abul Kasem Porag', 'Assistant General Manager', 'Finance And Accounts', 'Corporate', 'Saif Powertec Ltd.', '0', 'abulkasem@saifpowertec.com'),
(8450, 'SPL-000038', 'Md Sohidul Islam', 'Senior Manager', 'Finance And Accounts', 'Renewable Energy', 'Saif Powertec Ltd.', '1755543154', 'sohidul@saifpowertec.com'),
(8451, 'SPL-000044', 'Md. Fazlur Rahman', 'Driver', 'Administration', '', '', '', ''),
(8452, 'SPL-000048', 'Md Mahbubur Rahman', 'Accounts Assistant', 'Finance And Accounts', 'Corporate', 'Saif Powertec Ltd.', '0', 'mahbobur.acc@saifpowertec.com'),
(8453, 'SPL-000056', 'Naznin Nahar', 'Assistant Manager', 'Human Resource Management', 'Corporate', 'Saif Powertec Ltd.', '1730783620', 'naznin@saifpowertec.com'),
(8454, 'SPL-000061', 'Md. Mainul Islam', 'Assistant Manager', 'Commercial', 'Corporate', 'Saif Powertec Ltd.', '', 'sumon.comm@saifpowertec.com'),
(8455, 'SPL-000068', 'Shakil Mahmud', 'Senior Manager', 'Finance And Accounts', 'Renewable Energy', 'Saif Powertec Ltd.', '1755543150', 'shakilmahmud@saifpowertec.com'),
(8456, 'SPL-000069', 'Md Moniruzzaman', 'Manager', 'Operation', 'Renewable Energy', 'Saif Powertec Ltd.', '1713383495', 'muniruzzaman@saifpowertec.com'),
(8457, 'SPL-000070', 'Md Rezaul Karim', 'Senior Manager', 'Operation', 'Renewable Energy', 'Saif Powertec Ltd.', '1713383492', 'mrkarim@saifpowertec.com'),
(8458, 'SPL-000071', 'Shak Iffat Ara', 'Deputy Manager', 'Human Resource Management', 'Corporate', 'Saif Powertec Ltd.', '0', 'iffatara@saifpowertec.com'),
(8459, 'SPL-000074', 'Jennath Ara', 'Executive', 'Finance And Accounts', 'Battery', 'Saif Powertec Ltd.', '1730783582', 'jennath@saifpowertec.com'),
(8460, 'SPL-000076', 'Noor E Haque Mejbahtuz Jahan', 'Assistant Manager', 'Finance And Accounts', 'Renewable Energy', 'Saif Powertec Ltd.', '1730783584', 'jerin@saifpowertec.com'),
(8461, 'SPL-000078', 'Md. Masud Rana', 'Deputy Manager', 'Operation', 'Renewable Energy', 'Saif Powertec Ltd.', '1713383409', 'masudrana@saifpowertec.com'),
(8462, 'SPL-000081', 'Md. Subhra Sadik', 'Assistant Manager', 'IT', 'Corporate', 'Saif Powertec Ltd.', '1730795080', 'subhra@saifpowertec.com'),
(8463, 'SPL-000082', 'Palash Kumer Sarker', 'Officer', 'Operation', 'Renewable Energy', 'Saif Powertec Ltd.', '1777790409', 'palash_kumar85@saifpowertec.com'),
(8464, 'SPL-000083', 'Utpal Chandra Dash', 'Senior Technician', 'Service And Maintanance', 'Renewable Energy', 'Saif Powertec Ltd.', '1777790407', ''),
(8465, 'SPL-000117', 'Md Fulmiah Sabbir', 'Manager', 'Finance And Accounts', 'SPOT', 'Saif Powertec Ltd.', '1713383413', 'fulmiah@saifpowertec.com'),
(8466, 'SPL-000122', 'Shanti Ranjan Howlader', 'Deputy Manager', 'Project', 'Sub Station', 'Saif Powertec Ltd.', '1755542188', 'santiranjonspl@saifpowertec.com'),
(8467, 'SPL-000123', 'Md. Tawhidul Islam', 'Manager', 'Administration', '', '', '', ''),
(8468, 'SPL-000138', 'Md. Arif Khan', 'Supervisor', 'Project', 'Corporate', 'Saif Powertec Ltd.', '1713383478', 'saifop@bdmail.net'),
(8469, 'SPL-000140', 'Md Masud Mia', 'Senior Electrician', 'Project', 'Corporate', 'Saif Powertec Ltd.', '0', ''),
(8470, 'SPL-000142', 'Helal Uddin', 'Welder', 'Switch Gear', 'Sub Station', 'Saif Powertec Ltd.', '0', ''),
(8471, 'SPL-000144', 'Md Imdadul Haque', 'Welder', 'Switch Gear', 'Sub Station', 'Saif Powertec Ltd.', '0', ''),
(8472, 'SPL-000148', 'Md. Mamun Molla', 'Office Assistant', 'Administration', '', '', '', ''),
(8473, 'SPL-000150', 'Md. Abdul Malek', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(8474, 'SPL-000161', 'Md. Kazi Tuhin', 'Security Guard', 'Administration', '', '', '', ''),
(8475, 'SPL-000162', 'Md. Shojib Ullah', 'Office Assistant', 'Administration', '', '', '', ''),
(8476, 'SPL-000195', 'Md. Shamsul Haq', 'Security Inspector', 'Administration', '', '', '', ''),
(8477, 'SPL-000196', 'Mirza Shamim', 'Driver', 'Administration', '', '', '', ''),
(8478, 'SPL-000198', 'Amirul Islam', 'Driver', 'Administration', '', '', '', ''),
(8479, 'SPL-000213', 'Md. Shobuj Sheik', 'Peon', 'Administration', '', '', '', ''),
(8480, 'SPL-000215', 'Md.Rafiqul Alam', 'Peon', 'Administration', '', '', '', ''),
(8481, 'SPL-000253', 'Sree Sarol Chandro Roy', 'Senior Technician', 'Switch Gear', 'Sub Station', 'Saif Powertec Ltd.', '0', ''),
(8482, 'SPL-000255', 'Md Monirul Islam', 'Technician', 'Switch Gear', 'Sub Station', 'Saif Powertec Ltd.', '0', ''),
(8483, 'SPL-000260', 'Md. Nazmul Haque Khan', 'Executive', 'Documentation', '', '', '', ''),
(8484, 'SPL-000270', 'Md. Zakir Hosen', 'Officer', 'Billing', 'SPOT', 'Saif Powertec Ltd.', '1712902989', 'zakir@saifpowertec.com'),
(8485, 'SPL-000288', 'Md. Didar Hossain Bhuiyan', 'Deputy General Manager', 'QMS', 'Corporate', 'Saif Powertec Ltd.', '0', 'didar@saifpowertec.com'),
(8486, 'SPL-000293', 'Md. Zahirul Islam', 'Assistant Manager', 'QMS', 'Corporate', 'Saif Powertec Ltd.', '0', 'zahirul@saifpowertec.com'),
(8487, 'SPL-000301', 'A. F. M. Fahmidur Rahman', 'Senior Manager', 'Business Development', 'Corporate', 'Saif Powertec Ltd.', '1713383444', 'fahmidur@saifpowertec.com'),
(8488, 'SPL-000302', 'Tanvir Anjum', 'Senior Officer', 'Finance And Accounts', 'SPOT', 'Saif Powertec Ltd.', '0', 'tanviranjum@saifpowertec.com'),
(8489, 'SPL-000303', 'Md. Didarul Alam Chowdhury', 'Deputy General Manager', 'Factory Operation', 'Battery', 'Saif Powertec Ltd.', '1777790422', 'didar.dac@saifpowertec.com'),
(8490, 'SPL-000315', 'Beauty Hossain', 'Executive', 'Operation', 'Renewable Energy', 'Saif Powertec Ltd.', '1777790400', 'beauty@saifpowertec.com'),
(8491, 'SPL-000321', 'Md. Sufi Sabbir Ahmed', 'Deputy Manager', 'Administration', '', '', '', ''),
(8492, 'SPL-000322', 'Fatema Tuj Zohora', 'Front Desk Officer', 'Administration', '', '', '', ''),
(8493, 'SPL-000323', 'Nusrat Jahan Tima', 'Assistant Manager', 'Service', 'Power and Energy', 'Saif Powertec Ltd.', '0', 'tima@saifpowertec.com'),
(8494, 'SPL-000325', 'Dewan Rubaiat Hussain', 'Head of IT', 'IT', 'Corporate', 'Saif Powertec Ltd.', '1755630128', 'dewan.rubaiat@saifpowertec.com'),
(8495, 'SPL-000330', 'Md. Mahmudur Rahman', 'Chief Operating Officer', 'Sales And Marketing', 'Power and Energy', 'Saif Powertec Ltd.', '0', 'mahmudur.rahman@saifpowertec.com'),
(8496, 'SPL-000343', 'Md Shafiqul Islam', 'Canteen Boy', 'Administration', '', '', '', ''),
(8497, 'SPL-000350', 'Md. Shafiqul Islam', 'Driver', 'Administration', '', '', '', ''),
(8498, 'SPL-000352', 'Md. Akber Hossen', 'Office Assistant', 'Administration', '', '', '', ''),
(8499, 'SPL-000354', 'Md Zahirul Alam', 'Executive', 'Project', 'Corporate', 'Saif Powertec Ltd.', '1787686719', ''),
(8500, 'SPL-000355', 'Md Sadiqur Rahman', 'Executive', 'Brand Communication', '', '', '', ''),
(8501, 'SPL-000371', 'Forkan Musolli', 'Driver', 'Administration', '', '', '', ''),
(8502, 'SPL-000372', 'Md. Monir Hossain', 'Assistant Manager', 'Administration', '', '', '', ''),
(8503, 'SPL-000373', 'Naved Ibne Azad', 'Assistant Manager', 'Administration', '', '', '', ''),
(8504, 'SPL-000375', 'Aminur Rahman', 'Executive', 'Operation', 'Renewable Energy', 'Saif Powertec Ltd.', '1777790405', 'aminurbc@saifpowertec.com'),
(8505, 'SPL-000381', 'Zubayer Alam Khan', 'Senior Officer', 'Finance And Accounts', 'Battery', 'Saif Powertec Ltd.', '0', 'Zubayer@saifpowertec.com'),
(8506, 'SPL-000383', 'Afroza Khatun', 'Senior Officer', 'Finance And Accounts', 'Renewable Energy', 'Saif Powertec Ltd.', '1787686740', 'afroza@saifpowertec.com'),
(8507, 'SPL-000388', 'Md Alauddin', 'Liason Officer', 'Administration', '', '', '', ''),
(8508, 'SPL-000389', 'Syed Fayejur Rahman', 'Senior Officer', 'Finance And Accounts', 'Corporate', 'Saif Powertec Ltd.', '1709654818', 'palashfayejur@saifpowertec.com'),
(8509, 'SPL-000393', 'Md Khalid Hossain Bhuyan', 'Assistant Manager', 'Purchase And Procurement', 'Corporate', 'Saif Powertec Ltd.', '1787686736', 'khalid@saifpowertec.com'),
(8510, 'SPL-000395', 'Mohammad Beylayet Hossain', 'Assistant Manager', 'Purchase And Procurement', 'Corporate', 'Saif Powertec Ltd.', '0', 'beylayet.khan@saifpowertec.com'),
(8511, 'SPL-000406', 'Md Mohiuddin Sarder Rana', 'Senior Officer', 'Administration', '', '', '', ''),
(8512, 'SPL-000416', 'Md. Shajidul Islam', 'Junior Engineer', 'Administration', '', '', '', ''),
(8513, 'SPL-000422', 'Md Murad', 'Executive', 'Documentation', '', '', '', ''),
(8514, 'SPL-000425', 'Md Mizanur Rahman', 'Yard Checker', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1726048892', ''),
(8515, 'SPL-000426', 'Md. Zia Uddin', 'Supervisor', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1818930959', 'ziauddinspl@gmail.com'),
(8516, 'SPL-000436', 'Masud Khan', 'Fork Lift Operator', 'Administration', '', '', '', ''),
(8517, 'SPL-000445', 'Mohammad Shah Alam', 'Senior Officer', 'Administration', '', '', '', ''),
(8518, 'SPL-000447', 'Md Zillur Rahman', 'Executive', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '1722842885', 'zillur@saifpowertec.com'),
(8519, 'SPL-000456', 'Rifat Hasan Mallick', 'Senior Officer', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1730377073', 'rifat.batt@saifpowertec.com'),
(8520, 'SPL-000457', 'Md. Al- Amin', 'Peon', 'Administration', '', '', '', ''),
(8521, 'SPL-000461', 'Md Murad', 'Driver', 'Administration', '', '', '', ''),
(8522, 'SPL-000463', 'Md. Monir', 'Peon', 'Administration', '', '', '', ''),
(8523, 'SPL-000467', 'Salman Hossain Shamim', 'Senior Officer', 'Purchase And Procurement', 'Corporate', 'Saif Powertec Ltd.', '0', 'shamimsalman@saifpowertec.com'),
(8524, 'SPL-000472', 'Md. Ahsan Tarafder', 'Executive', 'Finance And Accounts', 'Battery', 'Saif Powertec Ltd.', '1730377059', 'ahsan@saifpowertec.com'),
(8525, 'SPL-000481', 'S. M. Tushar Mahmud', 'Supervisor', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8526, 'SPL-000482', 'Md.Farooq Hossain', 'Head Technician', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '1722900252', 'Saifop@saifpowertec.com'),
(8527, 'SPL-000483', 'Ashraful Alam', 'Senior Manager', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1787676127', 'ashraf.mnt@saifpowertec.com'),
(8528, 'SPL-000485', 'Tapan Kumar Roy', 'Head Technician', 'RAndD', 'Battery', 'Saif Powertec Ltd.', '1738238003', 'Saifop@saifpowertec.com'),
(8529, 'SPL-000486', 'Md. Samsuzzaman', 'Supervisor', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8530, 'SPL-000488', 'Bipul Chandra Roy', 'Supervisor', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8531, 'SPL-000489', 'William Davis Liton Hamborn', 'Senior Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8532, 'SPL-000490', 'Md. Faridul Islam', 'Head Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8533, 'SPL-000492', 'Ali Hossain', 'Driver', 'Administration', '', '', '', ''),
(8534, 'SPL-000494', 'Md Kamal Hossain', 'Peon', 'Administration', '', '', '', '');
INSERT INTO `inv_employee` (`id`, `employeeid`, `name`, `designation`, `department`, `division`, `company`, `phone`, `email`) VALUES
(8535, 'SPL-000495', 'Md Rizwanul Kabir', 'Officer', 'Finance And Accounts', 'Corporate', 'Saif Powertec Ltd.', '0', ''),
(8536, 'SPL-000496', 'Md Sofikul Islam', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1729844094', 'Saifop@saifpowertec.com'),
(8537, 'SPL-000497', 'Md. Masum', 'Head Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8538, 'SPL-000498', 'Hera Lal', 'Head Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8539, 'SPL-000499', 'Md. Abdul Kuddus', 'Head Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8540, 'SPL-000500', 'Abu Rasel', 'Head Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8541, 'SPL-000501', 'Md. Ahasan Habib Sarder', 'Senior Officer', 'Charging', 'Battery', 'Saif Powertec Ltd.', '1787676120', 'ahasanhabib@saifpowertec.com'),
(8542, 'SPL-000502', 'Bidduth Chandra Das', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1713081772', 'Saifop@saifpowertec.com'),
(8543, 'SPL-000503', 'Md. Pear Rahman', 'Head Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8544, 'SPL-000504', 'Md. Balal Ali', 'Head Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8545, 'SPL-000505', 'Md. Helal Uddin Sikder', 'Head of Finance And Accounts', 'Finance And Accounts', 'Battery', 'Saif Powertec Ltd.', '1787676121', 'helal@saifpowertec.com'),
(8546, 'SPL-000506', 'Abu Noor Afsher Khan', 'Manager', 'CMP', '', '', '', ''),
(8547, 'SPL-000513', 'Shiten Chandra Roy', 'Head Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8548, 'SPL-000515', 'Dhanesh Chandra Roy', 'Senior Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8549, 'SPL-000516', 'Md. Khurshed Alam Meraj', 'Supervisor', 'CMP', '', '', '', ''),
(8550, 'SPL-000523', 'Md. Abu Shihab', 'Senior Officer', 'QMS', 'Battery', 'Saif Powertec Ltd.', '1709654807', 'shihab.batt@saifpowertec.com'),
(8551, 'SPL-000525', 'Md. Shahidul Islam', 'Head Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8552, 'SPL-000529', 'Md. Abul Kashem Mahbub', 'Manager', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '1709654808', 'dhmahbub@saifpowertec.com'),
(8553, 'SPL-000530', 'Md. Nasim Hasan Askery', 'Senior Officer', 'Purchase And Procurement', 'Corporate', 'Saif Powertec Ltd.', '1727264915', 'askery@saifpowertec.com'),
(8554, 'SPL-000549', 'Md. Rasel Miah', 'Driver', 'Administration', '', '', '', ''),
(8555, 'SPL-000550', 'Abu Zafar', 'Supervisor', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8556, 'SPL-000551', 'Md. Ziaur Rahaman', 'Supervisor', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8557, 'SPL-000552', 'Md. Haider Ali', 'Supervisor', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8558, 'SPL-000553', 'Md. Julhas Uddin', 'Supervisor', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8559, 'SPL-000554', 'Sree Anil Chandro Dab Sharma', 'Head Technician', 'Assembly', '', '', '', ''),
(8560, 'SPL-000555', 'Md Reaz Uddin', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8561, 'SPL-000560', 'A.B.M. Amanul Islam', 'Engineer', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1730353370', 'amanul.batt@saifpowertec.com'),
(8562, 'SPL-000562', 'Syed Abdul Baten', 'Senior Officer', 'Store', 'Renewable Energy', 'Saif Powertec Ltd.', '1787676147', 'abdulbaten@saifpowertec.com'),
(8563, 'SPL-000568', 'Md Zahid Reza', 'Officer', 'Documentation', '', '', '', ''),
(8564, 'SPL-000573', 'Kamrul Hasan Bhuiyan', 'Terminal Superintendent', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1731351713', 'hasanbhuiyan@saifpowertec.com'),
(8565, 'SPL-000581', 'Md. Anowar Hossain', 'Head Technician', 'Gel And VRLA', 'Battery', 'Saif Powertec Ltd.', '1740498922', 'Saifop@saifpowertec.com'),
(8566, 'SPL-000582', 'Md. Shajadul Islam', 'Senior Technician', 'CMP', '', '', '', ''),
(8567, 'SPL-000583', 'Nani Gopal Mhantha', 'Head Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8568, 'SPL-000584', 'Md Shohel Rana', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8569, 'SPL-000585', 'Md. Nazrul Islam', 'Head Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8570, 'SPL-000586', 'Sujan Kumar Dev Sharman', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8571, 'SPL-000587', 'Sree Bishnu Chandra', 'Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8572, 'SPL-000588', 'Md Ashraful Islam', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1756224323', 'Saifop@saifpowertec.com'),
(8573, 'SPL-000589', 'Md. Ektiare Uddin', 'Technician', 'Assembly', '', '', '', ''),
(8574, 'SPL-000590', 'Md. Anisur Rahman', 'Technician', 'Assembly', '', '', '', ''),
(8575, 'SPL-000591', 'Md. Rabiul Islam', 'Senior Technician', 'Assembly', '', '', '', ''),
(8576, 'SPL-000592', 'Paresh Roy', 'Head Technician', 'Assembly', '', '', '', ''),
(8577, 'SPL-000593', 'Super Son Marak', 'Supervisor', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8578, 'SPL-000594', 'Md. Zakariya Hossain', 'Senior Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8579, 'SPL-000600', 'Md. Omar Faruque', 'Assistant Manager', 'Finance And Accounts', 'Renewable Energy', 'Saif Powertec Ltd.', '1787694071', 'faruque.solar@saifpowertec.com'),
(8580, 'SPL-000602', 'Md. Shofiqul Islam', 'Supervisor', 'Assembly', '', '', '', ''),
(8581, 'SPL-000603', 'Md. Sazit Ali', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1716812965', 'Saifop@saifpowertec.com'),
(8582, 'SPL-000604', 'Md. Rabiul Islam', 'Senior Technician', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8583, 'SPL-000606', 'Md. Zahid Hossain', 'Senior Manager', 'Human Resource Management', 'Corporate', 'Saif Powertec Ltd.', '0', 'zahid.hossain@saifpowertec.com'),
(8584, 'SPL-000608', 'Md. Babul Farajee', 'Manager', 'IT', 'Corporate', 'Saif Powertec Ltd.', '1708467887', 'babul.farajee@saifpowertec.com'),
(8585, 'SPL-000610', 'Sheikh Burhan Uddin', 'Junior Engineer', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '0', 'example@example.com'),
(8586, 'SPL-000616', 'Md Mahmudul Hasan', 'Senior Officer', 'Store', 'Renewable Energy', 'Saif Powertec Ltd.', '1787697073', 'mahmudulhasan.solar@saifpowertec.com'),
(8587, 'SPL-000618', 'Md. Zakir Hossain', 'Senior Manager', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1708467877', 'Zakir.batt@saifpowertec.com'),
(8588, 'SPL-000620', 'Md. Anisur Rahman', 'Fork Lift Operator', 'Administration', '', '', '', ''),
(8589, 'SPL-000621', 'Md. Rajib', 'Technician', 'Administration', '', '', '', ''),
(8590, 'SPL-000622', 'Kali Mohon Roy', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8591, 'SPL-000624', 'Samir Ahmed', 'Officer', 'Administration', '', '', '', ''),
(8592, 'SPL-000626', 'Md. Abu Motaleb Khan', 'Manager', 'Administration', '', '', '', ''),
(8593, 'SPL-000630', 'Farjana Shairmin Akter', 'Officer', 'Administration', '', '', '', ''),
(8594, 'SPL-000635', 'Md. Habibur Rahman', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(8595, 'SPL-000643', 'Md. Saddam Ali Mollah', 'Security Guard', 'Administration', '', '', '', ''),
(8596, 'SPL-000653', 'Md. Sayeed Hossain', 'Manager', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '1708467899', 'sayeed.batt@saifpowertec.com'),
(8597, 'SPL-000663', 'Md. Mustafizur Rahman Limon', 'Security Guard', 'Administration', '', '', '', ''),
(8598, 'SPL-000664', 'Md. Mizanur Ali', 'Security Guard', 'Administration', '', '', '', ''),
(8599, 'SPL-000668', 'Md Abu Saiem', 'Officer', 'Finance And Accounts', 'Renewable Energy', 'Saif Powertec Ltd.', '1777790401', 'saiem@saifpowertec.com'),
(8600, 'SPL-000688', 'Md. Nayem Mridha', 'Security Guard', 'Administration', '', '', '', ''),
(8601, 'SPL-000692', 'Md. Afshin-Uz-Zaman', 'General Manager', 'Human Resource Management', 'Corporate', 'Saif Powertec Ltd.', '1708154747', 'afshin@saifpowertec.com'),
(8602, 'SPL-000693', 'Md. Amir Raza Younus', 'Front Desk Officer', 'Administration', '', '', '', ''),
(8603, 'SPL-000694', 'Shambhu Chandra Pal', 'Deputy General Manager', 'Finance And Accounts', 'Corporate', 'Saif Powertec Ltd.', '0', 'shambu@saifpowrtec.com'),
(8604, 'SPL-000695', 'Ferdous Wahid', 'Senior Manager', 'Enterprise Resource Planning', 'Corporate', 'Saif Powertec Ltd.', '1708467826', 'ferdouswahid@saifpowertec.com'),
(8605, 'SPL-000696', 'ATM Rashed Al Bannah', 'Manager', 'Enterprise Resource Planning', 'Corporate', 'Saif Powertec Ltd.', '1708467827', 'rashed@saifpowertec.com'),
(8606, 'SPL-000698', 'Md. Zahidul Islam', 'Office Assistant', 'Administration', '', '', '', ''),
(8607, 'SPL-000702', 'Md. Shahin Molla', 'Security Guard', 'Administration', '', '', '', ''),
(8608, 'SPL-000704', 'Md. Abdul Hamid Chowdhury', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(8609, 'SPL-000708', 'Md. Anowar Mia', 'Security Guard', 'Administration', '', '', '', ''),
(8610, 'SPL-000716', 'Ismail Hossain', 'Driver', 'Administration', '', '', '', ''),
(8611, 'SPL-000719', 'Md Rajeeb Khan', 'Peon', 'Administration', '', '', '', ''),
(8612, 'SPL-000722', 'Md. Habib', 'Driver', 'Administration', '', '', '', ''),
(8613, 'SPL-000726', 'Mohammad Rashedul Hoque', 'Manager', 'Administration', '', '', '', ''),
(8614, 'SPL-000734', 'Golam Mahadi Hassan', 'Junior Engineer', 'Operation', 'Sub Station', 'Saif Powertec Ltd.', '0', 'mahadihasan@saifpowertec.com'),
(8615, 'SPL-000736', 'Rajaur Karim', 'Officer', 'Documentation', '', '', '', ''),
(8616, 'SPL-000737', 'Md. Amirul Islam', 'Yard Checker', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1878802598', ''),
(8617, 'SPL-000738', 'Md. Ibrahim Khalil', 'Executive', 'Finance And Accounts', 'Corporate', 'Saif Powertec Ltd.', '0', 'ibrahimkhalil@saifpowertec.com'),
(8618, 'SPL-000739', 'Md. Jubaidur Rahman', 'Share Officer', 'Finance And Accounts', 'Corporate', 'Saif Powertec Ltd.', '1916968868', 'masum@saifpowertec.com'),
(8619, 'SPL-000741', 'Masud-uz- Zamman', 'Assistant Manager', 'Finance And Accounts', 'Corporate', 'Saif Powertec Ltd.', '0', 'zaman.acc@saifpowertec.com'),
(8620, 'SPL-000742', 'Md. Sajidur Rahman', 'Senior Officer', 'Finance And Accounts', 'Corporate', 'Saif Powertec Ltd.', '1708467888', 'sajidur.acc@saifpowertec.com'),
(8621, 'SPL-000743', 'Palash Sarker', 'Admin Assistant', 'Administration', '', '', '', ''),
(8622, 'SPL-000746', 'Pinky Akter Komol', 'Senior Officer', 'Administration', '', '', '', ''),
(8623, 'SPL-000747', 'Masudur Rahman', 'Senior Officer', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1708154743', 'masudur.batt@saifpowertec.com'),
(8624, 'SPL-000748', 'Mohammed Joglul Haider Rumi', 'Assistant Manager', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1708154756', 'joglul.batt@saifpowertec.com'),
(8625, 'SPL-000750', 'Md. Sohanur Rashid', 'Senior Officer', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1708154748', 'rashid.batt@saifpowertec.com'),
(8626, 'SPL-000752', 'Md. Sayem Khan', 'Officer', 'Purchase And Procurement', 'Corporate', 'Saif Powertec Ltd.', '', 'sayemkhan@saifpowertec.com'),
(8627, 'SPL-000760', 'S.M. Nazmul Ahsan', 'Area Manager', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1708154740', 'nazmul.batt@saifpowertec.com'),
(8628, 'SPL-000761', 'Abu Saleh Md. Sharif', 'Assistant General Manager', 'Finance And Accounts', 'Battery', 'Saif Powertec Ltd.', '1708467833', 'sharif.batt@saifpowertec.com'),
(8629, 'SPL-000762', 'Md. Asaduzzaman Khan', 'Officer', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1708467876', 'asadkhan.batt@saifpowertec.com'),
(8630, 'SPL-000763', 'Md. Tofayel Ahmed', 'Store Officer', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8631, 'SPL-000764', 'Md. Mominur Rahman', 'Assistant Manager', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1708467867', 'mominur.batt@saifpowertec.com'),
(8632, 'SPL-000765', 'Md. Shobuz Hossain', 'Officer', 'Billing', 'SPOT', 'Saif Powertec Ltd.', '1753147480', 'shobuzmahamud786@gmail.com'),
(8633, 'SPL-000766', 'Mohammad Nazrul Islam', 'Senior Officer', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1708154744', 'nazrul.batt@saifpowertec.com'),
(8634, 'SPL-000767', 'Abu Abdullah', 'Officer', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '', 'abdullah.batt@saifpowertec.com'),
(8635, 'SPL-000770', 'Shadhan Tewary', 'Senior Officer', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1708154746', 'shadhan.batt@saifpowertec.com'),
(8636, 'SPL-000771', 'Md. Rakib Hasan Rubel', 'Assistant General Manager', 'Sales And Marketing', 'Power and Energy', 'Saif Powertec Ltd.', '0', 'rubel@saifpowertec.com'),
(8637, 'SPL-000773', 'Md. Nazrul Islam', 'Driver', 'Administration', '', '', '', ''),
(8638, 'SPL-000777', 'Khan Robiul Islam', 'Senior Officer', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1787684133', 'robiul.batt@saifpowertec.com'),
(8639, 'SPL-000778', 'Md. Nazmul Hussain', 'Senior Officer', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1730783598', 'hussain.batt@saifpowertec.com'),
(8640, 'SPL-000779', 'Syed Mahfuzur Rahman', 'Officer', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1787684103', 'mahfuzur.batt@saifpowertec.com'),
(8641, 'SPL-000791', 'Sonia Afroz', 'Officer', 'Finance And Accounts', 'Battery', 'Saif Powertec Ltd.', '178767121', 'Sonia.batt@saifpowertec.com'),
(8642, 'SPL-000794', 'Shubendu Kumar Podder', 'Executive', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1711323580', 'shubhendu.batt@saifpowertec.com'),
(8643, 'SPL-000795', 'Md. Sazu Ahmed', 'Assistant Manager', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1714037605', 'sazu.batt@saifpowertec.com'),
(8644, 'SPL-000796', 'Sheikh Ahmed Adil', 'Manager', 'IT', 'Corporate', 'Saif Powertec Ltd.', '0', 'ahmedadil@saifpowertec.com'),
(8645, 'SPL-000797', 'Merciful Hossain', 'Senior Officer', 'Purchase And Procurement', 'Corporate', 'Saif Powertec Ltd.', '0', 'mercifulhossain@saifpowertec.com'),
(8646, 'SPL-000800', 'Iqbal Hossain Khan', 'Officer', 'Store', 'SPOT', 'Saif Powertec Ltd.', '1721127579', 'iqbal@saifpowertec.com'),
(8647, 'SPL-000802', 'Amran Hossain', 'Manager', 'QMS', 'Battery', 'Saif Powertec Ltd.', '1787684039', 'amran.batt@saifpowertec.com'),
(8648, 'SPL-000803', 'Abdul Fattah', 'Senior Officer', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '1787684198', 'fattah.batt@saifpowertec.com'),
(8649, 'SPL-000805', 'Abu Sadet Md. Sabbir', 'Senior Officer', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8650, 'SPL-000827', 'Md. Abu Naser', 'Senior Officer', 'Finance And Accounts', 'Corporate', 'Saif Powertec Ltd.', '0', 'abunaser.acc@saifpowertec.com'),
(8651, 'SPL-005001', 'Md. Afzal Hossain', 'Admin Assistant', 'Administration', '', '', '', ''),
(8652, 'SPL-005026', 'Md. Masud Alam', 'Assistant Cook', 'Administration', '', '', '', ''),
(8653, 'SPL-005031', 'Md. Syad Nazmul Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(8654, 'SPL-005036', 'Murshalin Khan', 'Office Assistant', 'Administration', '', '', '', ''),
(8655, 'SPL-005037', 'Md. Mahamudul Hoque', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(8656, 'SPL-005038', 'Sudave Parye', 'Security Guard', 'Administration', '', '', '', ''),
(8657, 'SPL-005044', 'Md. Sofikuzzaman', 'Security Guard', 'Administration', '', '', '', ''),
(8658, 'SPL-005046', 'Md. Abdus  Shukur', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(8659, 'SPL-005047', 'Md. Babul Hossin', 'Security Guard', 'Administration', '', '', '', ''),
(8660, 'SPL-005050', 'Md. Abdur Rashid Laskar', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(8661, 'SPL-005054', 'Md. Aminul Islam', 'Security Supervisor', 'Administration', '', '', '', ''),
(8662, 'SPL-005056', 'Md. Abul Kalam Azad', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(8663, 'SPL-005057', 'Md. Shapon Dale', 'Peon', 'Administration', '', '', '', ''),
(8664, 'SPL-005061', 'Md. Abdul Bari Azad', 'Security Supervisor', 'Administration', '', '', '', ''),
(8665, 'SPL-005064', 'Md. Abdul Ali', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(8666, 'SPL-005067', 'Md. Liakat Ali', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(8667, 'SPL-005068', 'Kazi Rafiqul Hasan', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(8668, 'SPL-005069', 'Shekh Monirul Islam', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(8669, 'SPL-005070', 'Md. Delwar Hossain', 'Security Officer', 'Administration', '', '', '', ''),
(8670, 'SPL-005071', 'Md. Saleh Ahmed', 'Security Officer', 'Administration', '', '', '', ''),
(8671, 'SPL-005073', 'Md. Bellal Hossain Mojumdar', 'Security Supervisor', 'Administration', '', '', '', ''),
(8672, 'SPL-005074', 'Md. Mir Nannu Miah', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(8673, 'SPL-005080', 'Md. Khairul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(8674, 'SPL-005081', 'Md Rakibul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(8675, 'SPL-005085', 'Md. Alam Mollah', 'Security Guard', 'Administration', '', '', '', ''),
(8676, 'SPL-005088', 'Masud Reza', 'Peon', 'Administration', '', '', '', ''),
(8677, 'SPL-005089', 'Md. Ziaur Rahman', 'Security Guard', 'Administration', '', '', '', ''),
(8678, 'SPL-005091', 'Ujjal Chandra', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8679, 'SPL-005093', 'Md. Shahidul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(8680, 'SPL-005094', 'Laila Begum', 'Security Guard', 'Administration', '', '', '', ''),
(8681, 'SPL-005097', 'Dilip Kumar Das', 'Security Guard', 'Administration', '', '', '', ''),
(8682, 'SPL-005098', 'Hossain Mollah', 'Security Guard', 'Administration', '', '', '', ''),
(8683, 'SPL-005101', 'Md. Mokaram Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(8684, 'SPL-005104', 'Md. Kabir Hosen', 'Security Guard', 'Administration', '', '', '', ''),
(8685, 'SPL-005107', 'Md. Ibrahim Mollah', 'Security Guard', 'Administration', '', '', '', ''),
(8686, 'SPL-005114', 'Md. Selim Hawlader', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(8687, 'SPL-005115', 'Md. Ariful Islam', 'Security Guard', 'Administration', '', '', '', ''),
(8688, 'SPL-005118', 'Md. Shajahan Ali', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8689, 'SPL-005119', 'Prodip Biswas', 'Security Guard', 'Administration', '', '', '', ''),
(8690, 'SPL-005124', 'Tapash Chandra Roy', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1761817665', 'Saifop@saifpowertec.com'),
(8691, 'SPL-005125', 'Mst. Razia Akter', 'Security Guard', 'Administration', '', '', '', ''),
(8692, 'SPL-005126', 'Md. Shah Newaz Khan', 'Security Guard', 'Administration', '', '', '', ''),
(8693, 'SPL-005127', 'Mst. Monowara Begum', 'Security Guard', 'Administration', '', '', '', ''),
(8694, 'SPL-005129', 'Asma Begam', 'Security Guard', 'Administration', '', '', '', ''),
(8695, 'SPL-005132', 'Md. Jhon Sarder', 'Foreman', 'Switch Gear', 'Sub Station', 'Saif Powertec Ltd.', '0', ''),
(8696, 'SPL-005134', 'Md. Shah Alam', 'Foreman', 'Switch Gear', 'Sub Station', 'Saif Powertec Ltd.', '0', ''),
(8697, 'SPL-005135', 'Md. Kashem Ali', 'Painter', 'Switch Gear', 'Sub Station', 'Saif Powertec Ltd.', '0', ''),
(8698, 'SPL-005137', 'Ms. Amena Khatun', 'Cook Helper', 'Administration', '', '', '', ''),
(8699, 'SPL-005145', 'Md. Razu Ahmed', 'Driver', 'Administration', '', '', '', ''),
(8700, 'SPL-005147', 'Md. Kamal Hossain', 'Yard Checker', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1982902645', ''),
(8701, 'SPL-005148', 'Tufayel Ahmed', 'Assistant Supervisor', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1943933602', ''),
(8702, 'SPL-005150', 'Chandro Shakhar Datt', 'Officer', 'Documentation', '', '', '', ''),
(8703, 'SPL-005152', 'Md. Taherul Islam', 'RST Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1812581925', ''),
(8704, 'SPL-005153', 'Md. Moazzem Hossain', 'RST Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1674698756', ''),
(8705, 'SPL-005154', 'Md. Jelam Matubber', 'Cook Helper', 'Administration', '', '', '', ''),
(8706, 'SPL-005155', 'Md. Jibon Islam', 'Supervisor', 'Administration', '', '', '', ''),
(8707, 'SPL-005156', 'Sanaton Ram', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1761817723', 'Saifop@saifpowertec.com'),
(8708, 'SPL-005157', 'Nishas Richil', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8709, 'SPL-005160', 'Md. Sahabuddin Mollah', 'Cook Helper', 'Administration', '', '', '', ''),
(8710, 'SPL-005162', 'Md. Kajol', 'Driver', 'Administration', '', '', '', ''),
(8711, 'SPL-005164', 'Md. Roton Mahmud', 'Office Assistant', 'Administration', '', '', '', ''),
(8712, 'SPL-005166', 'Sree Sujon Chandara Roy', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8713, 'SPL-005167', 'Paul Roy', 'Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8714, 'SPL-005168', 'Miraj Sardar', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1780728855', 'Saifop@saifpowertec.com'),
(8715, 'SPL-005169', 'Md. Jaherul Islam', 'Peon', 'Administration', '', '', '', ''),
(8716, 'SPL-005171', 'Md. Rasel', 'Peon', 'Administration', '', '', '', ''),
(8717, 'SPL-005172', 'Md. Raju Miah', 'Peon', 'Administration', '', '', '', ''),
(8718, 'SPL-005174', 'Md. Kopil Uddin', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(8719, 'SPL-005180', 'Mr. Pabiitra Deb', 'Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8720, 'SPL-005182', 'Md Mokarrom Hossain', 'Supervisor', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1689683673', ''),
(8721, 'SPL-005183', 'Mohammad Yasin', 'Supervisor', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1819740113', ''),
(8722, 'SPL-005184', 'Md. Munna', 'Assistant Yard Supervisor', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1812453132', ''),
(8723, 'SPL-005185', 'Md. Mofazzal Hossain', 'RST Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1913383575', ''),
(8724, 'SPL-005186', 'Md. Ahmad Ullah', 'Harbour Crane Operator', 'Operation', 'CTED-Dhaka', 'Saif Powertec Ltd.', '1711287656', ''),
(8725, 'SPL-005187', 'Md. Saddequl Islam', 'RST Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1763608728', ''),
(8726, 'SPL-005188', 'Md. Arif Sheikh', 'RST Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1829850877', ''),
(8727, 'SPL-005189', 'Mahafuz Alam', 'Harbour Crane Operator', 'Operation', 'CTED-Dhaka', 'Saif Powertec Ltd.', '1964502287', ''),
(8728, 'SPL-005190', 'Mohammad Hasan', 'Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1867508187', ''),
(8729, 'SPL-005191', 'Md. Shapon', 'Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1627924076', ''),
(8730, 'SPL-005193', 'Shahin Miazi', 'Fork Lift Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1945222840', ''),
(8731, 'SPL-005194', 'Monir Hosen', 'Fork Lift Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1616173837', 'example@example.com'),
(8732, 'SPL-005198', 'Md. Babul', 'Trailer Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1931447982', ''),
(8733, 'SPL-005200', 'Md. Ibrahim', 'Trailer Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1724628245', ''),
(8734, 'SPL-005201', 'Md. Chand Mia', 'Trailer Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1926847636', ''),
(8735, 'SPL-005203', 'Md. Atikur Rahman', 'Trailer Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1732685848', ''),
(8736, 'SPL-005204', 'Md. Joinal Sheikh', 'Driver', 'Administration', '', '', '', ''),
(8737, 'SPL-005205', 'Md. Shopon Miah', 'Supervisor', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '1731219165', 'example@example.com'),
(8738, 'SPL-005206', 'Md. Saiful Islam', 'Foreman', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '1721019205', 'example@example.com'),
(8739, 'SPL-005207', 'Md. Tanim Khan', 'Trainee Technician', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1837925094', ''),
(8740, 'SPL-005208', 'Md. Zahid Hossain', 'Welder', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '1950782450', 'example@example.com'),
(8741, 'SPL-005209', 'M.G.S Qibria', 'Electrician', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '1672977514', 'example@example.com'),
(8742, 'SPL-005210', 'Shakhawat Hossain Khan', 'Senior Technician', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '1747629472', 'example@example.com'),
(8743, 'SPL-005211', 'Md. Kaoser', 'Trailer Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1822774542', ''),
(8744, 'SPL-005212', 'Md. Shofi Ullah', 'Head Cook', 'Administration', '', '', '', ''),
(8745, 'SPL-005215', 'Md. Rajib', 'RST Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1911922792', ''),
(8746, 'SPL-005216', 'Tutul Ali', 'Assistant Foreman', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '1923108962', 'example@example.com'),
(8747, 'SPL-005217', 'Md. Zakir Hossain', 'Trainee Technician', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '1766514329', 'example@example.com'),
(8748, 'SPL-005218', 'Md. Raju', 'Senior Technician', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '1824401593', 'example@example.com'),
(8749, 'SPL-005219', 'Md Ali Hossen', 'Trailer Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1932022537', ''),
(8750, 'SPL-005220', 'Md Imran Hossain Shopon', 'Senior Technician', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '1912143691', 'example@example.com'),
(8751, 'SPL-005221', 'Md. Shahidul Islam', 'Trailer Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1727841873', ''),
(8752, 'SPL-005241', 'Md. Abdul Alim', 'Senior Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8753, 'SPL-005242', 'Md. Faridul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(8754, 'SPL-005243', 'Rony Mollik', 'Security Guard', 'Administration', '', '', '', ''),
(8755, 'SPL-005244', 'Md. Masum Hossain Molla', 'Trailer Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '0', ''),
(8756, 'SPL-005246', 'Md Abdul Razzak', 'Security Guard', 'Administration', '', '', '', ''),
(8757, 'SPL-005248', 'Md. Emdadul Haque', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(8758, 'SPL-005255', 'Md. Tariqul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(8759, 'SPL-005256', 'Md. Imran Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(8760, 'SPL-005257', 'Md. Rofiz', 'Security Guard', 'Administration', '', '', '', ''),
(8761, 'SPL-005260', 'Md Shahin Alam', 'Security Guard', 'Administration', '', '', '', ''),
(8762, 'SPL-005261', 'Md. Sayem', 'Senior Technician', 'Assembly', '', '', '', ''),
(8763, 'SPL-005262', 'Md. Azad Hossain', 'Technician', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '1720571440', ''),
(8764, 'SPL-005263', 'Md Kabul', 'Senior Technician', 'Assembly', '', '', '', ''),
(8765, 'SPL-005264', 'Md. Moklesur Rahman', 'Senior Technician', 'CMP', '', '', '', ''),
(8766, 'SPL-005268', 'Sourave Das', 'Technician', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8767, 'SPL-005269', 'Md. Alomgir Hossain', 'Senior Technician', 'CMP', '', '', '', ''),
(8768, 'SPL-005271', 'Md. Nur Islam', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1723158465', ''),
(8769, 'SPL-005272', 'Amananda Dev', 'Senior Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1799960005', ''),
(8770, 'SPL-005273', 'Joydeb Deb Sharma', 'Senior Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1796106614', ''),
(8771, 'SPL-005274', 'Md. Montasir Billah', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1750779757', ''),
(8772, 'SPL-005275', 'Md. Al Mamun', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1930154681', ''),
(8773, 'SPL-005276', 'Md. Aminul Islam', 'Technician', 'CMP', '', '', '', ''),
(8774, 'SPL-005277', 'Md. Saiful Islam', 'Head Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8775, 'SPL-005278', 'Kabir Mondol', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8776, 'SPL-005279', 'Md. Anamul Haque', 'Head Technician', 'CMP', '', '', '', ''),
(8777, 'SPL-005280', 'Dhanodeb Kumar Ray', 'Senior Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1750215288', ''),
(8778, 'SPL-005281', 'Muhmmad Abu Ryhan', 'Senior Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1727252342', ''),
(8779, 'SPL-005282', 'Md. Shafiqul Islam', 'Head Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1727348755', ''),
(8780, 'SPL-005283', 'Md. Mominul Islam', 'Head Technician', 'CMP', '', '', '', ''),
(8781, 'SPL-005284', 'Alauddin Mohon', 'Senior Technician', 'CMP', '', '', '', ''),
(8782, 'SPL-005285', 'Durjo Kumar Deb Sharma', 'Senior Technician', 'CMP', '', '', '', ''),
(8783, 'SPL-005286', 'Md. Amzad Hossain', 'Senior Technician', 'CMP', '', '', '', ''),
(8784, 'SPL-005287', 'Alu Welson Chisim', 'Head Technician', 'Assembly', '', '', '', ''),
(8785, 'SPL-005289', 'Md. Abu Rayhan Sarker', 'Head Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1920217828', ''),
(8786, 'SPL-005290', 'Badal Miah', 'Head Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8787, 'SPL-005292', 'Md. Masud', 'Head Technician', 'CMP', '', '', '', ''),
(8788, 'SPL-005293', 'Md. Mokhlesur Rahman', 'Technician', 'Gel And VRLA', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8789, 'SPL-005294', 'Md. Fazlur Rahman', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1723758435', 'Saifop@saifpowertec.com'),
(8790, 'SPL-005295', 'Anik Dibra', 'Senior Technician', 'CMP', '', '', '', ''),
(8791, 'SPL-005297', 'Md. Khalil', 'Head Cook', 'Administration', '', '', '', ''),
(8792, 'SPL-005299', 'Ala Uddin', 'Senior Technician', 'Assembly', '', '', '', ''),
(8793, 'SPL-005301', 'Md. Shahjalal', 'Technician', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '1991121898', ''),
(8794, 'SPL-005302', 'Liton Kumar Arjo', 'Head Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1738772070', ''),
(8795, 'SPL-005303', 'Suren Chandra Roy', 'Senior Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '1731318056', 'Saifop@saifpowertec.com'),
(8796, 'SPL-005304', 'Md. Saroar Hossain', 'Senior Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '1729187360', 'Saifop@saifpowertec.com'),
(8797, 'SPL-005306', 'Suman Chandra Sikder', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787686335', 'saifop@bdmail.com'),
(8798, 'SPL-005307', 'Md. Mutaleb Hossen', 'Senior Technician', 'Assembly', '', '', '', ''),
(8799, 'SPL-005308', 'Bijoy Tudu', 'Senior Technician', 'Assembly', '', '', '', ''),
(8800, 'SPL-005311', 'Md. Shamim Reza', 'Technician', 'CMP', '', '', '', ''),
(8801, 'SPL-005312', 'Md. Shamim Kader', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '1731195532', ''),
(8802, 'SPL-005313', 'Md. Abu Bakar Akanda', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1779083977', 'Saifop@saifpowertec.com'),
(8803, 'SPL-005314', 'Md. Attaur Rahman', 'Technician', 'Assembly', '', '', '', ''),
(8804, 'SPL-005315', 'Md. Shafiqul Islam', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1729900239', 'Saifop@saifpowertec.com'),
(8805, 'SPL-005316', 'Palash Mondol', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '1710288564', ''),
(8806, 'SPL-005318', 'Md. Saiful Islam', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1717105912', ''),
(8807, 'SPL-005319', 'Fotik Deb Sharma', 'Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1796721718', ''),
(8808, 'SPL-005320', 'Md. Nazrul Islam', 'Senior Technician', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '1737371245', ''),
(8809, 'SPL-005321', 'Md. Hafizur Rahman', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1738717456', ''),
(8810, 'SPL-005323', 'Md. Faridul Islam', 'Head Technician', 'RAndD', 'Battery', 'Saif Powertec Ltd.', '1866260261', 'Saifop@saifpowertec.com'),
(8811, 'SPL-005324', 'Md. Mamun Hossain', 'Technician', 'CMP', '', '', '', ''),
(8812, 'SPL-005325', 'Md. Omar Faruq', 'Senior Technician', 'CMP', '', '', '', ''),
(8813, 'SPL-005327', 'Rabiul Islam', 'Technician', 'MC', 'Battery', 'Saif Powertec Ltd.', '1829699811', ''),
(8814, 'SPL-005328', 'Sonjit Ray', 'Supervisor', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1768861790', ''),
(8815, 'SPL-005335', 'Md. Mahmudul Hasan', 'Security Guard', 'Administration', '', '', '', ''),
(8816, 'SPL-005339', 'Md. Faruk', 'Security Guard', 'Administration', '', '', '', ''),
(8817, 'SPL-005409', 'Ashiya Khatun', 'Peon', 'Administration', '', '', '', ''),
(8818, 'SPL-005411', 'Md. Shakil', 'Peon', 'Administration', '', '', '', ''),
(8819, 'SPL-005436', 'Md. Shipon Miah', 'Driver', 'Administration', '', '', '', ''),
(8820, 'SPL-005447', 'Md. Abdur Rahim', 'Head Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8821, 'SPL-005450', 'Dalim Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(8822, 'SPL-005451', 'Md. Golam Kibria', 'Security Guard', 'Administration', '', '', '', ''),
(8823, 'SPL-005457', 'Md. Kofil Uddin', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(8824, 'SPL-005460', 'Md. Mahedi Hasan', 'Engineer', 'Operation', 'Sub Station', 'Saif Powertec Ltd.', '0', 'mahedi.hasan@saifpowertec.com'),
(8825, 'SPL-005461', 'Md. Rabiul Awal', 'Technician', 'Switch Gear', 'Sub Station', 'Saif Powertec Ltd.', '0', ''),
(8826, 'SPL-005462', 'Sree Ranjon Roy', 'Driver', 'Administration', '', '', '', ''),
(8827, 'SPL-005463', 'Md. Rafiqul Islam', 'Driver', 'Administration', '', '', '', ''),
(8828, 'SPL-005464', 'Md. Golam Mostafa', 'Driver', 'Administration', '', '', '', ''),
(8829, 'SPL-005465', 'Kuddus Mirda', 'Driver', 'Administration', '', '', '', ''),
(8830, 'SPL-005468', 'Md. Shohel Rana', 'Cleaner', 'Administration', '', '', '', ''),
(8831, 'SPL-005469', 'Md. Mehedi Hasan Rony', 'Manager', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '0', 'rony.batt@saifpowertec.com'),
(8832, 'SPL-005470', 'Md. Rafiul Hasan', 'Manager', 'Sales Operation', 'Battery', 'Saif Powertec Ltd.', '0', 'rafiul.batt@saifpowertec.com'),
(8833, 'SPL-005471', 'Md. Aslam Tarafder', 'Caretaker', 'Administration', '', '', '', ''),
(8834, 'SPL-005472', 'Md. Delwar Hossain', 'Assistant', 'Administration', '', '', '', ''),
(8835, 'SPL-005474', 'Md. Milton Hossain', 'Caretaker', 'Administration', '', '', '', ''),
(8836, 'SPL-005477', 'Md. Ahasan Habib', 'Senior Officer', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '0', 'habib.batt@saifpowertec.com'),
(8837, 'SPL-005479', 'Md. Roknuzzaman', 'Officer', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '0', 'roknuzzaman.batt@saifpowertec.com'),
(8838, 'SPL-005482', 'Md. Roquibul Hasan', 'Officer', 'Sales Operation', 'Battery', 'Saif Powertec Ltd.', '0', 'roquibul.batt@saifpowertec.com'),
(8839, 'SPL-005483', 'Md. Rakibul Islam', 'Executive', 'Brand Communication', '', '', '', ''),
(8840, 'SPL-005488', 'Ekram Bin Mahabub', 'Executive', 'Business Development', 'Corporate', 'Saif Powertec Ltd.', '1730353353', 'ekram@saifpowertec.com'),
(8841, 'SPL-005491', 'Sunil Rozario', 'Assistant Cook', 'Administration', '', '', '', ''),
(8842, 'SPL-005493', 'Somor Rebaru', 'Canteen Boy', 'Administration', '', '', '', ''),
(8843, 'SPL-005494', 'Raju Purification', 'Canteen Boy', 'Administration', '', '', '', ''),
(8844, 'SPL-005495', 'Nabiul Islam', 'Canteen Boy', 'Administration', '', '', '', ''),
(8845, 'SPL-005496', 'Mst. Nazma Begum', 'Canteen Boy', 'Administration', '', '', '', ''),
(8846, 'SPL-005500', 'Md. Jamal Mia Monse', 'Canteen Boy', 'Administration', '', '', '', ''),
(8847, 'SPL-005502', 'Md. Forkan Dewan', 'Canteen Boy', 'Administration', '', '', '', ''),
(8848, 'SPL-005505', 'Md. Mukhlesur Rahman', 'Executive', 'Administration', '', '', '', ''),
(8849, 'SPL-005512', 'Md. Hafizur Rahman', 'Manager', 'Assembly', '', '', '', ''),
(8850, 'SPL-005513', 'Md. Easin Hossain', 'Officer', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '', 'easin.batt@saifpowertec.com'),
(8851, 'SPL-005514', 'Md. Sajjad Hossain', 'Officer', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '', 'sazzad.batt@saifpowertec.com'),
(8852, 'SPL-005515', 'Mohammad Shoibul Islam', 'Officer', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', 'soibul.batt@saifpowertec.com'),
(8853, 'SPL-005518', 'Punam Kumar Kundu', 'Officer', 'Charging', 'Battery', 'Saif Powertec Ltd.', '1777790372', 'kundu.batt@saifpowertec.com'),
(8854, 'SPL-005519', 'Md. Anwarul Kadir', 'Officer', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', 'kadir.batt@saifpowertec.com'),
(8855, 'SPL-005520', 'Md. Ainul Trafder', 'Officer', 'Gel And VRLA', 'Battery', 'Saif Powertec Ltd.', '', 'ainul.batt@saifpowertec.com'),
(8856, 'SPL-005521', 'Milan Kar', 'Officer', 'Planning And Coordination', 'Battery', 'Saif Powertec Ltd.', '1717104095', 'milan.batt@saifpowertec.com'),
(8857, 'SPL-005524', 'Md Mahaful Alam Reza', 'Senior Officer', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', 'mahaful.batt@saifpowertec.com'),
(8858, 'SPL-005525', 'Md. Alfaz Uddin', 'Senior Officer', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1712642207', 'alfaz.batt@saifpowertec.com'),
(8859, 'SPL-005527', 'Md. Sazzad Mahmud', 'Senior Officer', 'Assembly', '', '', '', ''),
(8860, 'SPL-005529', 'Md. Atiqur Rahman', 'Senior Officer', 'Assembly', '', '', '', ''),
(8861, 'SPL-005532', 'Md. Osman Goni', 'Manager', 'Finance And Accounts', 'Battery', 'Saif Powertec Ltd.', '0', 'osman.batt@saifpowertec.com'),
(8862, 'SPL-005533', 'Jahangir Hossain', 'Assistant Manager', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'jahangir.batt@saifpowertec.com'),
(8863, 'SPL-005537', 'Md. Azahar Ali', 'Senior Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '1786767291', 'Saifop@saifpowertec.com'),
(8864, 'SPL-005540', 'Jahangir Ahamed', 'Cleaner', 'Administration', '', '', '', ''),
(8865, 'SPL-005541', 'Md. Maruf Hossain', 'Cleaner', 'Administration', '', '', '', ''),
(8866, 'SPL-005542', 'Md. Momin', 'Assistant', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8867, 'SPL-005545', 'Md Sunshar', 'Head Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8868, 'SPL-005547', 'Petrick Rozario', 'Cleaner', 'Administration', '', '', '', ''),
(8869, 'SPL-005548', 'Md. Monir Hossain', 'Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '1733035109', 'Saifop@saifpowertec.com'),
(8870, 'SPL-005550', 'Md. Panna Sarkar', 'Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '1773420573', 'Saifop@saifpowertec.com'),
(8871, 'SPL-005552', 'Md. Ziyaul Hoque', 'Cleaner', 'Administration', '', '', '', ''),
(8872, 'SPL-005553', 'Md. Alal Hosan', 'Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8873, 'SPL-005554', 'Md. Saikat Mahmod Monir', 'Peon', 'Administration', '', '', '', ''),
(8874, 'SPL-005555', 'Md. Rafiq Mia', 'Cleaner', 'Administration', '', '', '', ''),
(8875, 'SPL-005557', 'Md. Rubel', 'Fork Lift Operator', 'Administration', '', '', '', ''),
(8876, 'SPL-005558', 'Amitabh Roy', 'Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8877, 'SPL-005560', 'Md. Mir Hossain', 'Driver', 'Administration', '', '', '', ''),
(8878, 'SPL-005564', 'Dipok Shaha', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787676131', 'saifop@bdmail.com'),
(8879, 'SPL-005565', 'Kazi Muhammad Baky Billah', 'Fork Lift Operator', 'Administration', '', '', '', ''),
(8880, 'SPL-005566', 'Md. Dulal Ali', 'Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8881, 'SPL-005568', 'Nirmal Chondra Roy', 'Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '1750769427', 'Saifop@saifpowertec.com'),
(8882, 'SPL-005569', 'Md. Sadekul Islam', 'Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8883, 'SPL-005570', 'Md. Younus Ali', 'Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '1876404454', 'Saifop@saifpowertec.com'),
(8884, 'SPL-005571', 'Md. Al Amin', 'Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8885, 'SPL-005572', 'Shahin Sheikh', 'Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8886, 'SPL-005573', 'Md. Imam Mehedi', 'Head Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '1744999739', 'Saifop@saifpowertec.com'),
(8887, 'SPL-005574', 'Md. Golam Rabbane Mia', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787686346', 'saifop@bdmail.com'),
(8888, 'SPL-005575', 'B. M. Naimur Rahman', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1918349897', ''),
(8889, 'SPL-005577', 'Md. Imran Hossen', 'Technician', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8890, 'SPL-005578', 'Sultan Mahmud', 'Technician', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8891, 'SPL-005579', 'Gazi Mahabubur Rahman', 'Technician', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8892, 'SPL-005583', 'Kamal Bepary', 'Senior Technician', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8893, 'SPL-005584', 'Amit Kumar Mondal', 'Technician', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8894, 'SPL-005585', 'Md. Rwoson Ali', 'Technician', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8895, 'SPL-005587', 'Kawser Hossain', 'Technician', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8896, 'SPL-005588', 'Md. Farid Ali', 'Technician', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8897, 'SPL-005590', 'Mahidi Hasan', 'Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8898, 'SPL-005591', 'Md. Moklasur Rahman', 'Supervisor', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8899, 'SPL-005593', 'Md. Rasel', 'Fork Lift Operator', 'Administration', '', '', '', ''),
(8900, 'SPL-005595', 'Biplob Gomes', 'Senior Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8901, 'SPL-005597', 'Md. Shahidul Islam Monir', 'Head Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8902, 'SPL-005598', 'Md. Raja Mia', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8903, 'SPL-005599', 'Amrito Kumar Sarkar', 'Head Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8904, 'SPL-005600', 'Md. Ruhul Amin', 'Head Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8905, 'SPL-005601', 'Probal Mankhin', 'Head Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8906, 'SPL-005602', 'Rajkumar Deb Sharma', 'Head Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8907, 'SPL-005603', 'Soptom Biswas', 'Head Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8908, 'SPL-005605', 'Md. Ruhul Amin', 'Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8909, 'SPL-005606', 'Md. Eleyas Mia', 'Head Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8910, 'SPL-005608', 'Rasel Khan', 'Fork Lift Operator', 'Administration', '', '', '', ''),
(8911, 'SPL-005611', 'Proshanto Kumar Paul', 'Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '1820897631', 'Saifop@saifpowertec.com'),
(8912, 'SPL-005613', 'Md. Badal Hossain', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787684105', 'saifop@bdmail.com'),
(8913, 'SPL-005615', 'Md. Monir Hossain', 'Senior Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8914, 'SPL-005616', 'Md. Babul Miah', 'Helper', 'Service And Maintanance', 'Renewable Energy', 'Saif Powertec Ltd.', '0', ''),
(8915, 'SPL-005617', 'Md. Ariful Islam', 'Senior Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '1771241864', 'Saifop@saifpowertec.com'),
(8916, 'SPL-005618', 'Farhan Saeed', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8917, 'SPL-005619', 'Md. Ismail Hossain', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8918, 'SPL-005620', 'Md. Rakib Rahman', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8919, 'SPL-005622', 'Sarif Hossain', 'Driver', 'Administration', '', '', '', ''),
(8920, 'SPL-005626', 'Md. Abdur Rahaman', 'Senior Technician', 'CMP', '', '', '', ''),
(8921, 'SPL-005628', 'Md. Rasel Hossain', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8922, 'SPL-005629', 'Md. Abdul Alim', 'Assistant', 'CMP', '', '', '', ''),
(8923, 'SPL-005632', 'Md. Mahafuzer Rahman', 'Head Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8924, 'SPL-005633', 'Mostafa Sheikh', 'Senior Technician', 'CMP', '', '', '', ''),
(8925, 'SPL-005634', 'Sala Uddin', 'Head Technician', 'CMP', '', '', '', ''),
(8926, 'SPL-005635', 'Md. Kamal Hossain', 'Head Technician', 'CMP', '', '', '', ''),
(8927, 'SPL-005637', 'Md. Abusama', 'Senior Technician', 'CMP', '', '', '', ''),
(8928, 'SPL-005638', 'Giaul Hak', 'Head Technician', 'CMP', '', '', '', ''),
(8929, 'SPL-005639', 'Md. Hafizur Rahman', 'Head Technician', 'CMP', '', '', '', ''),
(8930, 'SPL-005640', 'Md. Dulal Mia', 'In-Charge', 'Administration', '', '', '', ''),
(8931, 'SPL-005641', 'Chandranath Mondal', 'Head Technician', 'CMP', '', '', '', ''),
(8932, 'SPL-005643', 'Md. Nur Alam Siddik', 'Senior Technician', 'CMP', '', '', '', ''),
(8933, 'SPL-005644', 'Md. Hadichur Rahman', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8934, 'SPL-005647', 'Milon Biswas', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8935, 'SPL-005648', 'Md. Sirajul Islam', 'Senior Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8936, 'SPL-005649', 'Md. Raihan Parves', 'Senior Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8937, 'SPL-005650', 'Abdul Alim', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8938, 'SPL-005652', 'Md. Zalal Uddin', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8939, 'SPL-005655', 'Md. Alamgir Hossain', 'Senior Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8940, 'SPL-005656', 'Md. Babul Hossain', 'Senior Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '1722759266', 'Saifop@saifpowertec.com'),
(8941, 'SPL-005657', 'Rana Palma', 'Senior Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8942, 'SPL-005658', 'Md. Abdus Salam', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8943, 'SPL-005662', 'Md. Mojammal Hossain', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8944, 'SPL-005666', 'Roktim', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8945, 'SPL-005667', 'Methun Biswas', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8946, 'SPL-005669', 'Swadeb Deb Sharma', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8947, 'SPL-005671', 'Md. Hazrat Ali', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1725616762', 'Saifop@saifpowertec.com'),
(8948, 'SPL-005674', 'Md. Belal Hossain', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8949, 'SPL-005676', 'Md. Abdullah', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8950, 'SPL-005678', 'Subas Chandra Dev Sharma', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8951, 'SPL-005682', 'Md. Nuruzzaman', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8952, 'SPL-005683', 'Md. Ab. Hannan Mollha', 'Head Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8953, 'SPL-005685', 'Md. Jakirul Islam', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8954, 'SPL-005686', 'Md. Belayt Hossen', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(8955, 'SPL-005687', 'Md. Anamul Haque', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8956, 'SPL-005691', 'Md. Nazmul Haque', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8957, 'SPL-005693', 'Jamil Rahman', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8958, 'SPL-005705', 'Babu Chandra Ray', 'Senior Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '1723590004', 'Saifop@saifpowertec.com'),
(8959, 'SPL-005706', 'Selim Mia', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8960, 'SPL-005707', 'Md. Arfan Ali', 'Head Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8961, 'SPL-005708', 'Shariful Islam', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8962, 'SPL-005709', 'Md. Abdur Roshid', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8963, 'SPL-005710', 'Md. Anisur Rahman', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8964, 'SPL-005712', 'Md. Julhash Khan', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8965, 'SPL-005713', 'Md. Mainuddin Rana', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8966, 'SPL-005715', 'Md. Ruhul Amin', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8967, 'SPL-005716', 'Md. Rafiul Islam', 'Technician', 'MC', 'Battery', 'Saif Powertec Ltd.', '0', '');
INSERT INTO `inv_employee` (`id`, `employeeid`, `name`, `designation`, `department`, `division`, `company`, `phone`, `email`) VALUES
(8968, 'SPL-005721', 'Md. Mamun Sarker', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8969, 'SPL-005723', 'Md. Saha Alam', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8970, 'SPL-005724', 'Md. Monjur Rashid', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8971, 'SPL-005725', 'Md. Abu Daud', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8972, 'SPL-005727', 'Md. Monarul Islam', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8973, 'SPL-005732', 'Solaiman', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8974, 'SPL-005736', 'Abdur Rahman Sagor', 'Technical Helper', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8975, 'SPL-005742', 'Md. Morad Mia', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1970007213', 'Saifop@saifpowertec.com'),
(8976, 'SPL-005743', 'Md. Rashedul Uddin', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8977, 'SPL-005745', 'Md. Siddikuzzaman', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8978, 'SPL-005755', 'Md. Saiful Islam', 'Loader', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8979, 'SPL-005756', 'Md. Hanif', 'Loader', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '1725071667', 'Saifop@saifpowertec.com'),
(8980, 'SPL-005764', 'Md. Mannan Mia', 'Loader', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8981, 'SPL-005771', 'Saiful Islam', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1935394947', 'Saifop@saifpowertec.com'),
(8982, 'SPL-005773', 'Md. Ahsan Habib', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8983, 'SPL-005774', 'Md. Johirul Islam', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8984, 'SPL-005777', 'Paritose Chandra Roy', 'Technician', 'Assembly', '', '', '', ''),
(8985, 'SPL-005778', 'Md. Abdul Based', 'Senior Technician', 'Assembly', '', '', '', ''),
(8986, 'SPL-005780', 'Robiul Hossain', 'Senior Technician', 'Assembly', '', '', '', ''),
(8987, 'SPL-005781', 'Md. Mosrraf Hossain', 'Technician', 'Assembly', '', '', '', ''),
(8988, 'SPL-005783', 'Md. Omar Faruk Tuhin', 'Technician', 'Assembly', '', '', '', ''),
(8989, 'SPL-005786', 'Suresh Stephen Mankin', 'Senior Technician', 'Assembly', '', '', '', ''),
(8990, 'SPL-005787', 'Samim Hossain', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8991, 'SPL-005789', 'Syed Akram Hossan', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8992, 'SPL-005790', 'Md. Salah Uddin', 'Technician', 'Assembly', '', '', '', ''),
(8993, 'SPL-005794', 'Md. Rasel Mian', 'Technician', 'Assembly', '', '', '', ''),
(8994, 'SPL-005796', 'Md. Jafor Ikbal', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8995, 'SPL-005797', 'Horendra Nath Broman', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8996, 'SPL-005799', 'Md. Sohel Rana', 'Technician', 'Assembly', '', '', '', ''),
(8997, 'SPL-005800', 'Md. Ruhul Amin', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8998, 'SPL-005802', 'Md. Rishadul Islam Ranak', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(8999, 'SPL-005803', 'Ripon Ali', 'Technician', 'Assembly', '', '', '', ''),
(9000, 'SPL-005805', 'Shimanta Mardi', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9001, 'SPL-005806', 'Md. Forhad Hossen', 'Technician', 'Assembly', '', '', '', ''),
(9002, 'SPL-005808', 'Rukunuzzaman', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9003, 'SPL-005809', 'Md. Shamim Ali', 'Technician', 'Assembly', '', '', '', ''),
(9004, 'SPL-005811', 'Md Abdul Qayum Sharif', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9005, 'SPL-005813', 'Md. Abdul Karim', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9006, 'SPL-005816', 'Md. Kamruzzaman', 'Senior Technician', 'Assembly', '', '', '', ''),
(9007, 'SPL-005817', 'Md. Rubel', 'Technician', 'Assembly', '', '', '', ''),
(9008, 'SPL-005819', 'Md. Shohidul Islam', 'Senior Technician', 'Assembly', '', '', '', ''),
(9009, 'SPL-005821', 'Sadiqul', 'Head Technician', 'Assembly', '', '', '', ''),
(9010, 'SPL-005824', 'Md. Mostafizur Rahman', 'Senior Technician', 'Assembly', '', '', '', ''),
(9011, 'SPL-005825', 'Md. Muniruzzaman', 'Head Technician', 'Assembly', '', '', '', ''),
(9012, 'SPL-005827', 'Md. Zahidul Islam', 'Technician', 'Assembly', '', '', '', ''),
(9013, 'SPL-005833', 'Md. Mobarak Ali', 'Senior Technician', 'Assembly', '', '', '', ''),
(9014, 'SPL-005835', 'Md. Abul Hasanat', 'Head Technician', 'Assembly', '', '', '', ''),
(9015, 'SPL-005836', 'Abdul Alim', 'Technician', 'Assembly', '', '', '', ''),
(9016, 'SPL-005837', 'Md. Robiul Islam', 'Technician', 'MC', 'Battery', 'Saif Powertec Ltd.', '1786052332', 'Saifop@saifpowertec.com'),
(9017, 'SPL-005838', 'Md. Masud Rana', 'Senior Technician', 'Assembly', '', '', '', ''),
(9018, 'SPL-005839', 'Md. Sabidul Sharif Rabbi', 'Technician', 'Assembly', '', '', '', ''),
(9019, 'SPL-005840', 'Md. Rafiqul Islam', 'Technician', 'Assembly', '', '', '', ''),
(9020, 'SPL-005841', 'Pankaj Costa', 'Head Technician', 'MC', 'Battery', 'Saif Powertec Ltd.', '1717466603', 'Saifop@saifpowertec.com'),
(9021, 'SPL-005842', 'Md. Shakil Bhuya', 'Technician', 'MC', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9022, 'SPL-005843', 'Md. Mofizul Bari Bhuiya', 'Technician', 'MC', 'Battery', 'Saif Powertec Ltd.', '1950751314', 'Saifop@saifpowertec.com'),
(9023, 'SPL-005847', 'Md. Alam Shek', 'Head Cook', 'Administration', '', '', '', ''),
(9024, 'SPL-005848', 'Md. Monowar Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(9025, 'SPL-005849', 'Md. Anowar Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(9026, 'SPL-005851', 'Md. Mostafizur Rahman', 'Assistant Manager', 'Operation', 'Renewable Energy', 'Saif Powertec Ltd.', '1730783583', ''),
(9027, 'SPL-005853', 'Miraj Sheikh', 'Driver', 'Administration', '', '', '', ''),
(9028, 'SPL-005855', 'Md. Ekbal Hossain', 'Cook Helper', 'Administration', '', '', '', ''),
(9029, 'SPL-005857', 'Md. Belal Hossain Miah', 'Driver', 'Administration', '', '', '', ''),
(9030, 'SPL-005858', 'Md. Nayan', 'Driver', 'Administration', '', '', '', ''),
(9031, 'SPL-005859', 'Md. Sohel Rana', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9032, 'SPL-005863', 'Md. Anowar Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(9033, 'SPL-005872', 'Md. Shahriar Ibn Selim Robin', 'Senior Officer', 'Finance And Accounts', 'Battery', 'Saif Powertec Ltd.', '1917583278', 'robin.batt@saifpowertec.com'),
(9034, 'SPL-005873', 'Md. Aqibul Islam', 'Executive', 'Planning And Coordination', 'Battery', 'Saif Powertec Ltd.', '1878881739', 'aqibul.batt@saifpowertec.com'),
(9035, 'SPL-005878', 'Shamal Chandra Dev Sharma', 'Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9036, 'SPL-005880', 'Rabbi Hossen', 'Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9037, 'SPL-005882', 'Md. Kabiruzzaman', 'Senior Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9038, 'SPL-005886', 'Md. Milon', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9039, 'SPL-005889', 'Md. Atikur Rahman', 'Senior Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9040, 'SPL-005891', 'Sheikh Mohammad Shamshuzzaman', 'Senior Officer', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787692486', 'shamshuzzaman.batt@saifpowertec.com'),
(9041, 'SPL-005892', 'Khaled Ferdous', 'Officer', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787692511', 'ferdous.batt@saifpowertec.com'),
(9042, 'SPL-005893', 'Md. Sariful Islam', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9043, 'SPL-005894', 'Md. Ariful Islam', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9044, 'SPL-005895', 'Salim Raza', 'Senior Technician', 'Assembly', '', '', '', ''),
(9045, 'SPL-005896', 'Komor Chandra Roy', 'Senior Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9046, 'SPL-005897', 'S. M. Maidul Islam', 'Senior Technician', 'MC', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9047, 'SPL-005898', 'Ziaul Hoque', 'Senior Technician', 'Assembly', '', '', '', ''),
(9048, 'SPL-005905', 'Md. Ismail', 'In-Charge', 'Administration', '', '', '', ''),
(9049, 'SPL-005907', 'Md. Abu Ismail', 'Advisor', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1715481344', 'abuismail@saifpowertec.com'),
(9050, 'SPL-005910', 'A.K.M. Fazlul Haque', 'General Manager', 'Administration', '', '', '', ''),
(9051, 'SPL-005911', 'Md. Rezaul Karim', 'Senior Manager', 'Administration', '', '', '', ''),
(9052, 'SPL-005912', 'Sohel Pervez', 'Senior Manager', 'Administration', '', '', '', ''),
(9053, 'SPL-005914', 'Aetasham Rashul', 'Deputy Manager', 'Finance And Accounts', 'SPOT', 'Saif Powertec Ltd.', '1730353302', 'arashul@saifpowertec.com'),
(9054, 'SPL-005915', 'Md. Nasir Mahmud', 'Liason Officer', 'Administration', '', '', '', ''),
(9055, 'SPL-005916', 'Mosarraf Hossain', 'Estate Officer', 'Administration', '', '', '', ''),
(9056, 'SPL-005917', 'Ferhana Ferdous', 'Executive', 'Administration', '', '', '', ''),
(9057, 'SPL-005918', 'Hossain Muhammad Arafat', 'Junior Officer', 'Administration', '', '', '', ''),
(9058, 'SPL-005919', 'Tuton Majumder', 'Assistant Officer', 'Finance And Accounts', 'SPOT', 'Saif Powertec Ltd.', '1866796987', ''),
(9059, 'SPL-005920', 'Md. Zakir Hossain', 'Officer', 'Administration', '', '', '', ''),
(9060, 'SPL-005921', 'Zillur Rahman', 'Technician', 'Assembly', '', '', '', ''),
(9061, 'SPL-005922', 'Md. Shahriar', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9062, 'SPL-005923', 'Md. Helal Khan Panu', 'Supervisor', 'Administration', '', '', '', ''),
(9063, 'SPL-005924', 'Md. Farid', 'Driver', 'Administration', '', '', '', ''),
(9064, 'SPL-005926', 'Md. Ibrahim', 'Driver', 'Administration', '', '', '', ''),
(9065, 'SPL-005927', 'Md. Didarul Alam Mintu', 'Peon', 'Administration', '', '', '', ''),
(9066, 'SPL-005928', 'Seraz Uddin', 'Peon', 'Administration', '', '', '', ''),
(9067, 'SPL-005929', 'Md. Emran Hosain', 'Cleaner', 'Administration', '', '', '', ''),
(9068, 'SPL-005930', 'Babul Ali', 'Peon', 'Administration', '', '', '', ''),
(9069, 'SPL-005932', 'Shovon Ahammed', 'Officer', 'Administration', '', '', '', ''),
(9070, 'SPL-005933', 'Md. Din Islam Jibon', 'Trainee Yard Checker', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1723837423', ''),
(9071, 'SPL-005936', 'Md. Rayhan', 'Driver', 'Administration', '', '', '', ''),
(9072, 'SPL-005937', 'Md. Momen Miah', 'Peon', 'Administration', '', '', '', ''),
(9073, 'SPL-005939', 'Md. Mahbub Alam', 'Helper', 'Administration', '', '', '', ''),
(9074, 'SPL-005943', 'Md. Tarqul Islam', 'Junior Engineer', 'Operation', 'Sub Station', 'Saif Powertec Ltd.', '17978488503', 'tariqul.islam@saifpowertec.com'),
(9075, 'SPL-005949', 'Arif Mia', 'Helper', 'Administration', '', '', '', ''),
(9076, 'SPL-005950', 'Md. Ali Newas Sharif', 'Helper', 'Administration', '', '', '', ''),
(9077, 'SPL-005951', 'Md. Babul Mia', 'Junior Technician', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '1726037967', 'example@example.com'),
(9078, 'SPL-005953', 'Md. Anwar Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(9079, 'SPL-005954', 'Md. Siddik', 'Security Guard', 'Administration', '', '', '', ''),
(9080, 'SPL-005955', 'Md. Shohel Molla', 'Security Guard', 'Administration', '', '', '', ''),
(9081, 'SPL-005962', 'Obaidul Haque Humayun', 'Security Guard', 'Administration', '', '', '', ''),
(9082, 'SPL-005972', 'Md. Al Mamun', 'Junior Engineer', 'Operation', 'Sub Station', 'Saif Powertec Ltd.', '0', 'al.mamun@saifpowertec.com'),
(9083, 'SPL-005973', 'Shah Alam', 'Yard Checker', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1744736436', ''),
(9084, 'SPL-005974', 'KM Harun Or Rashid', 'Officer', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1913367362', ''),
(9085, 'SPL-005977', 'Md. Shihabur Rahman', 'Officer', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', 'shihabur.batt@saifpowertec.com'),
(9086, 'SPL-005978', 'Md. Uzzol Molla', 'Senior Technician', 'Assembly', '', '', '', ''),
(9087, 'SPL-005981', 'Sakibul Islam', 'Technician', 'Assembly', '', '', '', ''),
(9088, 'SPL-005985', 'Mrinal Roy', 'Technician', 'Assembly', '', '', '', ''),
(9089, 'SPL-005986', 'Jotish Chandra Roy', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9090, 'SPL-005990', 'Nurul Islam', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9091, 'SPL-005992', 'Md. Lokman Hossain', 'Security Officer', 'Administration', '', '', '', ''),
(9092, 'SPL-005994', 'S K Abul Kalam', 'Security Guard', 'Administration', '', '', '', ''),
(9093, 'SPL-005995', 'Md. Rafiqul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(9094, 'SPL-005996', 'Nur Mohammad', 'Security Guard', 'Administration', '', '', '', ''),
(9095, 'SPL-005997', 'Md. Saiful Islam', 'Security Guard', 'Administration', '', '', '', ''),
(9096, 'SPL-005998', 'Abu Laich', 'Security Guard', 'Administration', '', '', '', ''),
(9097, 'SPL-005999', 'Md. Farid', 'Security Guard', 'Administration', '', '', '', ''),
(9098, 'SPL-006002', 'Azizul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(9099, 'SPL-006003', 'Md. Bari', 'Technician', 'CMP', '', '', '', ''),
(9100, 'SPL-006005', 'Solaiman', 'Technician', 'Assembly', '', '', '', ''),
(9101, 'SPL-006008', 'Alomgir Hossen', 'Technician', 'Assembly', '', '', '', ''),
(9102, 'SPL-006009', 'Md. Ruhul Amin', 'Technician', 'MC', 'Battery', 'Saif Powertec Ltd.', '1917681636', 'Saifop@saifpowertec.com'),
(9103, 'SPL-006011', 'Md. Faruq Hossen', 'Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '1758244237', 'Saifop@saifpowertec.com'),
(9104, 'SPL-006014', 'Md. Nur Hossain', 'Technician', 'MC', 'Battery', 'Saif Powertec Ltd.', '1766190575', ''),
(9105, 'SPL-006015', 'Md. Suman Baparay', 'Technician', 'MC', 'Battery', 'Saif Powertec Ltd.', '1943591023', ''),
(9106, 'SPL-006017', 'Md. Lion Islam', 'Technician', 'CMP', '', '', '', ''),
(9107, 'SPL-006018', 'Md. Aktarul Islam', 'Technician', 'CMP', '', '', '', ''),
(9108, 'SPL-006019', 'Md. Parves Sarker', 'Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '1781148163', ''),
(9109, 'SPL-006023', 'Akbar', 'Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1914603854', ''),
(9110, 'SPL-006025', 'Johurul Islam', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1912010183', ''),
(9111, 'SPL-006028', 'Ashraful Moula', 'Officer', 'Sales Operation', 'Battery', 'Saif Powertec Ltd.', '0', 'ashraful.batt@saifpowertec.com'),
(9112, 'SPL-006029', 'Md. Tayeb Ali', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(9113, 'SPL-006030', 'Md. Sahab Uddin', 'Security Guard', 'Administration', '', '', '', ''),
(9114, 'SPL-006034', 'Md. Abu Kalam', 'Security Guard', 'Administration', '', '', '', ''),
(9115, 'SPL-006036', 'Md. Azharul Islam', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(9116, 'SPL-006040', 'Bhuyan Tariqul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(9117, 'SPL-006041', 'Jahangir Alam Uzzal', 'Security Guard', 'Administration', '', '', '', ''),
(9118, 'SPL-006044', 'Micheal Sumon Mollick', 'Assistant General Manager', 'Brand Communication', '', '', '', ''),
(9119, 'SPL-006046', 'Md. Belayet Hossain', 'Terminal Superintendent', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1730377020', 'belayet@saifpowertec.com'),
(9120, 'SPL-006047', 'Md. Asadullah', 'Officer', 'Documentation', '', '', '', ''),
(9121, 'SPL-006048', 'Shakhawat Hossain Murad', 'Yard Supervisor', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1730377062', ''),
(9122, 'SPL-006051', 'Md. Mosharof', 'Foreman', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1670399543', ''),
(9123, 'SPL-006052', 'Md. Salim', 'Foreman', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1918024844', ''),
(9124, 'SPL-006053', 'Md. Hassan', 'Lasher', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1624372428', ''),
(9125, 'SPL-006054', 'Abdullah Al Mamun', 'Deputy Manager', 'Project Development And Implemantaion', 'Battery', 'Saif Powertec Ltd.', '1720828110', 'almamun@saifpowertec.com'),
(9126, 'SPL-006058', 'Shakir Ahamed', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9127, 'SPL-006059', 'Jahid Hosen', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9128, 'SPL-006060', 'Taijul Islam', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9129, 'SPL-006061', 'Md. Zakir Hossain', 'Technician', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9130, 'SPL-006063', 'Israfil Hossen', 'Technician', 'Assembly', '', '', '', ''),
(9131, 'SPL-006064', 'Zuthon Chandra Nath', 'Senior Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9132, 'SPL-006066', 'Md. Kabiruzzaman Shuvo', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9133, 'SPL-006071', 'Md. Jahidul Islam', 'Senior Technician', 'CMP', '', '', '', ''),
(9134, 'SPL-006072', 'Md. Omar Faruk Mondol', 'Senior Technician', 'CMP', '', '', '', ''),
(9135, 'SPL-006073', 'Naeem Shekh', 'Technician', 'Assembly', '', '', '', ''),
(9136, 'SPL-006078', 'Md. Abul Taher Sarker', 'Technician', 'CMP', '', '', '', ''),
(9137, 'SPL-006081', 'Faruk Hossain', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9138, 'SPL-006082', 'Dulal Chandra Ray', 'Technician', 'CMP', '', '', '', ''),
(9139, 'SPL-006083', 'Md. Masud Ali', 'Technician', 'CMP', '', '', '', ''),
(9140, 'SPL-006084', 'Md. Abul Kalam Azad', 'Technician', 'CMP', '', '', '', ''),
(9141, 'SPL-006086', 'Md. Nabi Hossain', 'Technician', 'MC', 'Battery', 'Saif Powertec Ltd.', '1932611211', 'Saifop@saifpowertec.com'),
(9142, 'SPL-006090', 'Pervaj Hossen', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9143, 'SPL-006092', 'Md. Saddam Hossain', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9144, 'SPL-006096', 'Ahasan Mollah', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9145, 'SPL-006097', 'Md. Abusaid', 'Technician', 'MC', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9146, 'SPL-006099', 'Debdas Mondal', 'Senior Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9147, 'SPL-006102', 'Tafsir Uddin Ahmed', 'Chief Operating Officer', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1715694880', 'tafsir@saifpowertec.com'),
(9148, 'SPL-006103', 'N. I. M. Shujauddowla', 'General Manager', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1711187854', ''),
(9149, 'SPL-006104', 'Shibu Chandra Bhowmik', 'Chief Engineer', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1730377065', 'shibu1337@saifpowertec.com'),
(9150, 'SPL-006105', 'Md. Nasir', 'Manager', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1313447976', 'nasirctg@saifpowertec.com'),
(9151, 'SPL-006106', 'Jewel Mazumdar', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1723929165', ''),
(9152, 'SPL-006107', 'Al-Amin', 'Technician', 'Assembly', '', '', '', ''),
(9153, 'SPL-006111', 'Md. Aynal Haque', 'Technician', 'CMP', '', '', '', ''),
(9154, 'SPL-006112', 'Md. Morshedur Rahmam', 'Senior Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9155, 'SPL-006121', 'Md. Mahasin', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1728579602', 'Saifop@saifpowertec.com'),
(9156, 'SPL-006123', 'Arif', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1877032878', 'Saifop@saifpowertec.com'),
(9157, 'SPL-006124', 'Md. Sarowar Hossain Khan', 'Technician', 'CMP', '', '', '', ''),
(9158, 'SPL-006125', 'Md. Azgar Ali', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9159, 'SPL-006127', 'Md. Al-Amin Mia', 'Technician', 'Assembly', '', '', '', ''),
(9160, 'SPL-006128', 'Samar Taju', 'Senior Technician', 'CMP', '', '', '', ''),
(9161, 'SPL-006133', 'Md. Parvez Rana', 'Technician', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '1792814323', 'Saifop@saifpowertec.com'),
(9162, 'SPL-006137', 'Abdul Kader Zilani', 'Senior Manager', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1720693267', 'zilani@saifpowertec.com'),
(9163, 'SPL-006138', 'Md. Kawsar Akon', 'Assistant Manager', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1720149009', 'akon.kawsar@saifpowertec.com'),
(9164, 'SPL-006139', 'Mirza Abdul Kader Beg', 'Assistant Manager', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1915516408', 'kader019@saifpowertec.com'),
(9165, 'SPL-006140', 'Md. Qaikozzaman', 'Deputy Manager', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1716043553', 'zaman@saifpowertec.com'),
(9166, 'SPL-006141', 'Md. Anowar Hossain', 'Officer', 'Purchase And Procurement', 'CTED-CTG', 'Saif Powertec Ltd.', '1313447977', 'saifop@bdmail.net'),
(9167, 'SPL-006142', 'Mir Mohammad', 'Store Officer', 'Store', 'CTED-CTG', 'Saif Powertec Ltd.', '1716368915', ''),
(9168, 'SPL-006143', 'Md. Mamun Sarder', 'Store Officer', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1849206161', ''),
(9169, 'SPL-006144', 'Mohammad Shah Alam', 'Assistant Manager', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1313447978', 'salam@saifpowertec.com'),
(9170, 'SPL-006145', 'Diponkar Mitra', 'Junior Engineer', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1313447984', 'saifop@bdmail.net'),
(9171, 'SPL-006146', 'Md. Abdullah Al Noman', 'Junior Engineer', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1313447986', 'saifop@bdmail.net'),
(9172, 'SPL-006147', 'Md. Emam Hossain', 'Supervisor', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1313447983', 'saifop@bdmail.net'),
(9173, 'SPL-006148', 'Sk Md. Abu Sufian', 'Junior Engineer', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1313447982', 'saifop@bdmail.net'),
(9174, 'SPL-006149', 'Rubel Kanti Ghosh', 'Junior Engineer', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1313447987', 'saifop@bdmail.net'),
(9175, 'SPL-006151', 'Md. Jahid Hassan Chowdhury', 'Junior Engineer', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1313447980', 'saifop@bdmail.net'),
(9176, 'SPL-006152', 'Shahedur Rahman Khan', 'Trainee Engineer', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1313447979', 'saifop@bdmail.net'),
(9177, 'SPL-006153', 'Md. Zafor Sadeque', 'Trainee Engineer', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1313447985', 'saifop@bdmail.net'),
(9178, 'SPL-006161', 'Kazi Tohidul Islam', 'Supervisor', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1813005688', ''),
(9179, 'SPL-006162', 'Naresh Kumar Dey', 'Supervisor', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1671472814', ''),
(9180, 'SPL-006163', 'Md. Jamil Islam', 'Supervisor', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1712632205', ''),
(9181, 'SPL-006165', 'Mohammed Idris', 'Welder', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1914018726', ''),
(9182, 'SPL-006166', 'Md. Abdul Haque', 'Welder', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1871387773', ''),
(9183, 'SPL-006167', 'Md. Shohal Howlader', 'Assistant Supervisor', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1745305316', ''),
(9184, 'SPL-006168', 'Md. Zahirul Islam', 'Assistant Supervisor', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1736262651', ''),
(9185, 'SPL-006169', 'Nurul Amin Badsha', 'Senior Technician', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1814461217', ''),
(9186, 'SPL-006170', 'Main Uddin', 'Vulcanizer', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1750763809', ''),
(9187, 'SPL-006171', 'Md. Amanul Haque', 'Storeman', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1812857643', ''),
(9188, 'SPL-006172', 'Md. Salam Dhali', 'Senior Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1313447991', 'saifop@bdmail.net'),
(9189, 'SPL-006173', 'Md. Jahid Kazi', 'Senior Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1313447992', 'saifop@bdmail.net'),
(9190, 'SPL-006175', 'Md. Kamrul Islam Kamal', 'Assistant Supervisor', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1923871929', ''),
(9191, 'SPL-006176', 'Md. Ifthakar Uddin', 'Technician', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1840161613', ''),
(9192, 'SPL-006178', 'Md. Ahmadur Rahaman', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1811186486', ''),
(9193, 'SPL-006179', 'Md. Aslam Hoosain', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '0', ''),
(9194, 'SPL-006180', 'Md. Jakir Shak', 'Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1915094740', ''),
(9195, 'SPL-006181', 'Md. Showkat Akbar', 'Helper', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1717746469', ''),
(9196, 'SPL-006182', 'Md. Sultan Ahammed', 'Vulcanizer', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1729731717', ''),
(9197, 'SPL-006183', 'Md. Shahjahan Ali', 'Technician', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1783092647', ''),
(9198, 'SPL-006184', 'Md. Robiul Islam', 'Technician', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1786245639', ''),
(9199, 'SPL-006185', 'Mohammed Salim', 'Welder', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '182780866', ''),
(9200, 'SPL-006186', 'Ashish Kumar Das', 'Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1834835419', ''),
(9201, 'SPL-006187', 'Shahadat Hossen', 'Helper', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1736570216', ''),
(9202, 'SPL-006188', 'Kutub Uddin', 'Vulcanizer', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '18495118754', ''),
(9203, 'SPL-006189', 'Mamun Hossen', 'Vulcanizer', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1858408937', ''),
(9204, 'SPL-006190', 'Swajan Paul', 'Liason Officer', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1313447993', 'saifop@bdmail.net'),
(9205, 'SPL-006191', 'Md. Didar Mia', 'Assistant Supervisor', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1815368857', ''),
(9206, 'SPL-006192', 'Md. Jahangir Alam', 'Technician', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1812813086', ''),
(9207, 'SPL-006193', 'Md. Rashed', 'Helper', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '1821157503', 'example@example.com'),
(9208, 'SPL-006194', 'Md. Sakib Uddin', 'Technician', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1554328736', ''),
(9209, 'SPL-006197', 'Mitun Dey', 'Helper', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1824784522', ''),
(9210, 'SPL-006198', 'Abdul Mannan Nayam', 'Helper', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1831417611', ''),
(9211, 'SPL-006200', 'Naru Safa', 'Senior Mechanic', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1821417255', ''),
(9212, 'SPL-006201', 'Md. Nazim Uddin', 'Senior Electrician', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1828770790', ''),
(9213, 'SPL-006202', 'Md. Sajjad Hossen Saju', 'Electrician', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1820010969', ''),
(9214, 'SPL-006203', 'Ahmod Nobi', 'Technician', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1814465404', ''),
(9215, 'SPL-006204', 'Md. Ashraful Islam Chowdhury', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1628690942', ''),
(9216, 'SPL-006205', 'Md. Nur Uddin', 'Technician', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1812511138', ''),
(9217, 'SPL-006206', 'Zahidul Islam', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1831093155', ''),
(9218, 'SPL-006208', 'Tawhidul Islam', 'Technician', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1713171075', ''),
(9219, 'SPL-006209', 'Mohammad Rakib', 'Technician', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1813005687', ''),
(9220, 'SPL-006211', 'Abdul Hakim', 'Storeman', 'Store', 'CTED-CTG', 'Saif Powertec Ltd.', '1673794015', ''),
(9221, 'SPL-006212', 'Md. Aminul Islam', 'Storeman', 'Store', 'CTED-CTG', 'Saif Powertec Ltd.', '1874383831', ''),
(9222, 'SPL-006213', 'Sahedul Islam', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1751620442', ''),
(9223, 'SPL-006215', 'Mohammad Rubel', 'Lathe Man', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1839402608', ''),
(9224, 'SPL-006217', 'Mohammed Moin Uddin', 'Semi Mechanic', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1843664910', ''),
(9225, 'SPL-006218', 'Md. Imran', 'Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1829575851', ''),
(9226, 'SPL-006219', 'Kamrul Hasan', 'Technician', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1823832587', ''),
(9227, 'SPL-006220', 'Md. Raju Hossen', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1941711103', ''),
(9228, 'SPL-006221', 'Md. Hasan', 'Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1622977467', ''),
(9229, 'SPL-006222', 'Md. Joynal Abedin', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1879563980', ''),
(9230, 'SPL-006223', 'Suzauddin Moni', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1921935817', ''),
(9231, 'SPL-006224', 'Md. Iqbal Hosan', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1817576157', ''),
(9232, 'SPL-006225', 'Md. Sakib', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1879729969', ''),
(9233, 'SPL-006226', 'Md. Sohel', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1829506425', ''),
(9234, 'SPL-006227', 'Md. Ajmir Hossan', 'Helper', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1812333132', ''),
(9235, 'SPL-006228', 'Md. Musa Mia', 'Helper', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1824231798', ''),
(9236, 'SPL-006229', 'Md. Mahfuj', 'Helper', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1845543466', ''),
(9237, 'SPL-006230', 'Imam Uddin', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1825739450', ''),
(9238, 'SPL-006231', 'Mohammed Parvej', 'Helper', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1839014383', ''),
(9239, 'SPL-006232', 'Biplob Chandra Pal', 'Helper', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1635456896', ''),
(9240, 'SPL-006233', 'Moin Uddin', 'Helper', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1877198810', ''),
(9241, 'SPL-006234', 'Abu Bakar', 'Officer', 'CMP', '', '', '', ''),
(9242, 'SPL-006237', 'Md. Shahidullah', 'Peon', 'Administration', '', '', '', ''),
(9243, 'SPL-006238', 'Babul Chowdhury', 'Cleaner', 'Administration', '', '', '', ''),
(9244, 'SPL-006239', 'Orabindu Dey', 'Cleaner', 'Administration', '', '', '', ''),
(9245, 'SPL-006240', 'Milon Das', 'Driver', 'Administration', '', '', '', ''),
(9246, 'SPL-006241', 'Md. Rana', 'Driver', 'Administration', '', '', '', ''),
(9247, 'SPL-006243', 'Md. Bodiuzzaman Badol', 'Driver', 'Administration', '', '', '', ''),
(9248, 'SPL-006244', 'Md. Morshed Hossen Shuvo', 'Driver', 'Administration', '', '', '', ''),
(9249, 'SPL-006245', 'Abdur Sattar', 'Driver', 'Administration', '', '', '', ''),
(9250, 'SPL-006249', 'Muhammad Zahed Hossain', 'Head of CTMS', 'CTMS', '', '', '', ''),
(9251, 'SPL-006250', 'Mintu', 'Senior Technician', 'CMP', '', '', '', ''),
(9252, 'SPL-006251', 'Md. Mostafizur Rahman', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1923853374', ''),
(9253, 'SPL-006253', 'Soyed Mohammad Mostofa Kamal', 'Head Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1710918010', ''),
(9254, 'SPL-006254', 'Sumon Chandra Das', 'Technician', 'Warehouse And Logistics', 'Battery', 'Saif Powertec Ltd.', '1781738188', ''),
(9255, 'SPL-006262', 'Md. Enayat Ullah', 'Senior Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1838006316', ''),
(9256, 'SPL-006264', 'Md. Shahab Uddin', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1724089182', ''),
(9257, 'SPL-006267', 'Md. Momen Shakh', 'Technician', 'CMP', '', '', '', ''),
(9258, 'SPL-006268', 'Mostakim Hossain', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '1737391398', ''),
(9259, 'SPL-006272', 'Md. Khairul Alam', 'Technician', 'MC', 'Battery', 'Saif Powertec Ltd.', '1737999358', ''),
(9260, 'SPL-006278', 'Al Amin', 'Technician', 'Assembly', '', '', '', ''),
(9261, 'SPL-006279', 'Dipu Chandra Roy', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1705947138', ''),
(9262, 'SPL-006282', 'Mahidul Islam', 'Technician', 'Assembly', '', '', '', ''),
(9263, 'SPL-006283', 'Upaton Roy', 'Technician', 'Assembly', '', '', '', ''),
(9264, 'SPL-006284', 'Md. Sohel Rana', 'Senior Technician', 'CMP', '', '', '', ''),
(9265, 'SPL-006285', 'Md. Sumon Mia', 'Senior Technician', 'CMP', '', '', '', ''),
(9266, 'SPL-006287', 'Md. Uzzol Khan', 'Senior Technician', 'Assembly', '', '', '', ''),
(9267, 'SPL-006288', 'Md. Mahmudul Islam', 'Senior Technician', 'CMP', '', '', '', ''),
(9268, 'SPL-006290', 'Anower Hossain', 'Technician', 'Administration', '', '', '', ''),
(9269, 'SPL-006291', 'Md. Rubel Mia', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1964102406', ''),
(9270, 'SPL-006295', 'Munna Mollah', 'Technician', 'Assembly', '', '', '', ''),
(9271, 'SPL-006314', 'Md. Samsul Hoque Sohel', 'Area Manager', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1711262682', 'samsul.batt@saifpowertec.com'),
(9272, 'SPL-006318', 'Mohammad Shahin', 'Driver', 'Administration', '', '', '', ''),
(9273, 'SPL-006319', 'Md. Mozammel', 'Helper', 'Administration', '', '', '', ''),
(9274, 'SPL-006320', 'Md. Omar Faruq', 'Senior Officer', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1619528962', ''),
(9275, 'SPL-006325', 'Kazi Mahadi Hasan', 'Officer', 'Finance And Accounts', 'Battery', 'Saif Powertec Ltd.', '0', 'mahadi.batt@saifpowertec.com'),
(9276, 'SPL-006326', 'Md. Hanif Hossain', 'Service Engineer', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1313447988', 'saifop@bdmail.net'),
(9277, 'SPL-006327', 'Mahbubur Rahman Khan', 'Assistant Manager', 'CTMS', '', '', '', ''),
(9278, 'SPL-006331', 'Mohammad Sodrul Islam Beg', 'Assistant Equipment Co-Ordinator', 'CTMS', '', '', '', ''),
(9279, 'SPL-006332', 'Golam Sarwar', 'Assistant Equipment Co-Ordinator', 'CTMS', '', '', '', ''),
(9280, 'SPL-006334', 'Md. Razaul Karim', 'Assistant Equipment Co-Ordinator', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1819825494', ''),
(9281, 'SPL-006335', 'Md. Abdulla Al Mujahid', 'Documentation Staff Trainee', 'CTMS', '', '', '', ''),
(9282, 'SPL-006337', 'Md. Arafath Hamdad', 'Yard Checker', 'CTMS', '', '', '', ''),
(9283, 'SPL-006338', 'Jatindra Nath Sharma', 'Technician', 'MC', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9284, 'SPL-006340', 'Privel Costa', 'Senior Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9285, 'SPL-006341', 'Md.Shafayetur Rahman', 'Assistant Equipment Co-Ordinator', 'CTMS', '', '', '', ''),
(9286, 'SPL-006343', 'Dev Raj Sarker', 'Senior Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9287, 'SPL-006344', 'Kamal Farook Jahan', 'Regional Manager', 'Business Development', 'Corporate', 'Saif Powertec Ltd.', '1313448042', 'kamal.jahan@saifpowertec.com'),
(9288, 'SPL-006345', 'Moni Babu', 'Senior Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9289, 'SPL-006346', 'Md. Ripon Khandakar', 'Senior Technician', 'CMP', '', '', '', ''),
(9290, 'SPL-006347', 'Md. Habibur Rahman', 'Supervisor', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9291, 'SPL-006348', 'Tanveer Muhammad Nafiul Hussain', 'Chief Operating Officer', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1730785091', 'captain.tanveer@saifpowertec.com'),
(9292, 'SPL-006349', 'Mosharof Hossain', 'Terminal Manager', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1713489458', 'mosharof@saifpowertec.com'),
(9293, 'SPL-006350', 'Md. Maruf Ali Biswas', 'Deputy Manager', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1730353332', 'maruf@saifpowertec.com'),
(9294, 'SPL-006352', 'Muhammad Ibrahim Rubal', 'Deputy Manager', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1730353333', 'ibrahim@saifpowertec.com'),
(9295, 'SPL-006353', 'Md. Masud Rana', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1725706569', ''),
(9296, 'SPL-006354', 'Soliamamn Siddiki', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1765053659', ''),
(9297, 'SPL-006355', 'Md. Saiful Alam Bhuiyan', 'Deputy Manager', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1730353334', 'saifulbabu@saifpowertec.com'),
(9298, 'SPL-006356', 'Ratan Chandra Majumder', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1820164523', ''),
(9299, 'SPL-006357', 'Mohammad Jahed Hossen', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1611802248', ''),
(9300, 'SPL-006358', 'Monsur Alam', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1629185751', ''),
(9301, 'SPL-006359', 'Md. Solaiman', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1815627725', ''),
(9302, 'SPL-006360', 'Md. Monsur Alam', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1813253799', ''),
(9303, 'SPL-006361', 'Dipankar Chowdhury', 'CFS Shed Incharge', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1730353335', ''),
(9304, 'SPL-006362', 'Md. Salauddin Kadar', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1313447975', 'saifop@bdmail.net'),
(9305, 'SPL-006363', 'Md. Saddam Hossen', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1313447974', 'saifop@bdmail.net'),
(9306, 'SPL-006364', 'Ahsan Mahmud', 'Executive', 'Administration', '', '', '', ''),
(9307, 'SPL-006365', 'Nazrul Islam', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1865588611', ''),
(9308, 'SPL-006366', 'Md. Sahjahan', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1828033959', ''),
(9309, 'SPL-006367', 'Md. Omar Faruk', 'Office Assistant', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1674777152', ''),
(9310, 'SPL-006368', 'Md. Jahirul Islam', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1821778295', ''),
(9311, 'SPL-006369', 'Md. Mohiuddin', 'Office Assistant', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1638557804', ''),
(9312, 'SPL-006370', 'Md. Belal Uddin', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1675897964', ''),
(9313, 'SPL-006371', 'Md. Solaman', 'Store Officer', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1815561424', ''),
(9314, 'SPL-006372', 'Usathoai Marma', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1840078424', ''),
(9315, 'SPL-006373', 'Md. Jahangir Alam', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1876209028', ''),
(9316, 'SPL-006374', 'Md. Abu Taiub', 'Driver', 'Administration', '', '', '', ''),
(9317, 'SPL-006375', 'Md. Easin Hossain', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1840563205', ''),
(9318, 'SPL-006376', 'Monir Hossain', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1721126881', ''),
(9319, 'SPL-006377', 'Md. Aminur Rasul', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1710999933', ''),
(9320, 'SPL-006378', 'Md. Mohin Uddin', 'Mobile Harbor Crane Operator', 'Mobile Harbour Crane', 'SPOT', 'Saif Powertec Ltd.', '1712735115', ''),
(9321, 'SPL-006379', 'Habib A Rasul Shahin', 'Mobile Harbor Crane Operator', 'Mobile Harbour Crane', 'SPOT', 'Saif Powertec Ltd.', '1811586300', ''),
(9322, 'SPL-006380', 'Md. Faruk', 'Mobile Harbor Crane Operator', 'Mobile Harbour Crane', 'SPOT', 'Saif Powertec Ltd.', '1817798113', ''),
(9323, 'SPL-006381', 'Md. Harun Miah', 'WINCH Operator', 'RMG', 'SPOT', 'Saif Powertec Ltd.', '1811962468', ''),
(9324, 'SPL-006382', 'Anowar Hossain Gazi', 'Mobile Harbor Crane Operator', 'Mobile Harbour Crane', 'SPOT', 'Saif Powertec Ltd.', '1715339233', ''),
(9325, 'SPL-006383', 'Md. Nur Nabi', 'Mobile Harbor Crane Operator', 'Mobile Harbour Crane', 'SPOT', 'Saif Powertec Ltd.', '1815179285', ''),
(9326, 'SPL-006384', 'Md. Abul Kasham', 'Mobile Harbor Crane Operator', 'Mobile Harbour Crane', 'SPOT', 'Saif Powertec Ltd.', '1822000055', ''),
(9327, 'SPL-006385', 'Md. Salim Uddin', 'Mobile Harbor Crane Operator', 'Mobile Harbour Crane', 'SPOT', 'Saif Powertec Ltd.', '1842827043', ''),
(9328, 'SPL-006386', 'Md. Shohel Rana', 'Mobile Harbor Crane Operator', 'Mobile Harbour Crane', 'SPOT', 'Saif Powertec Ltd.', '1681829085', ''),
(9329, 'SPL-006387', 'Md. Didar  Alam', 'WINCH Operator', 'RMG', 'SPOT', 'Saif Powertec Ltd.', '1747133678', ''),
(9330, 'SPL-006388', 'Md. Shain Shak', 'WINCH Operator', 'RMG', 'SPOT', 'Saif Powertec Ltd.', '1956856321', ''),
(9331, 'SPL-006389', 'Md. Yeasin', 'WINCH Operator', 'RMG', 'SPOT', 'Saif Powertec Ltd.', '1851539424', ''),
(9332, 'SPL-006390', 'Sheikh Farid Bablu', 'WINCH Operator', 'RMG', 'SPOT', 'Saif Powertec Ltd.', '1816001229', ''),
(9333, 'SPL-006391', 'Md. Shahid', 'Mobile Harbor Crane Operator', 'Mobile Harbour Crane', 'SPOT', 'Saif Powertec Ltd.', '1772953898', ''),
(9334, 'SPL-006392', 'Mohammed Kalam', 'WINCH Operator', 'RMG', 'SPOT', 'Saif Powertec Ltd.', '1718862690', ''),
(9335, 'SPL-006393', 'Md. Samsul Alam Babul', 'WINCH Operator', 'RMG', 'SPOT', 'Saif Powertec Ltd.', '1815140161', ''),
(9336, 'SPL-006394', 'Md. Firoz Alam', 'Mobile Harbor Crane Operator', 'Mobile Harbour Crane', 'SPOT', 'Saif Powertec Ltd.', '1712945084', ''),
(9337, 'SPL-006395', 'Sree Ratan  Chandra Mojumdar', 'WINCH Operator', 'RMG', 'SPOT', 'Saif Powertec Ltd.', '1879408883', ''),
(9338, 'SPL-006396', 'Md. Sahab Uddin', 'WINCH Operator', 'RMG', 'SPOT', 'Saif Powertec Ltd.', '1964978471', ''),
(9339, 'SPL-006397', 'Md. Rasel', 'WINCH Operator', 'RMG', 'SPOT', 'Saif Powertec Ltd.', '1932533268', ''),
(9340, 'SPL-006407', 'Md. Manjur Alam', 'Driver', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1823988566', ''),
(9341, 'SPL-006408', 'Md. Solaiman Hossen', 'Photo copier', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1624986825', ''),
(9342, 'SPL-006409', 'Mohammad  Arman', 'Office Boy', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1680449523', ''),
(9343, 'SPL-006410', 'Md. Manju Sarkar', 'Office Boy', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1851689011', ''),
(9344, 'SPL-006411', 'Idris', 'Office Boy', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1959479584', ''),
(9345, 'SPL-006413', 'Giash Uddin Ahammed Samim', 'RTG SC Controller', 'CCT Yard', '', '', '', ''),
(9346, 'SPL-006414', 'Md. Sala Uddin Sakib', 'Assistant Welfare Officer', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1674165511', ''),
(9347, 'SPL-006415', 'Helal Uddin', 'Radio And HHT Keeper', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1674165511', ''),
(9348, 'SPL-006416', 'Norul Kabir', 'Photo copier', 'CTMS', '', '', '', ''),
(9349, 'SPL-006422', 'Rajib Barman', 'Trainee Officer', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1729556500', 'rajib@saifpowertec.com'),
(9350, 'SPL-006424', 'Md. Faruk Hosen', 'RTG Checker', 'CCT Yard', '', '', '', ''),
(9351, 'SPL-006426', 'Md Rashedu Rahat', 'Officer', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1713383466', 'rahat@saifpowertec.com'),
(9352, 'SPL-006428', 'Md. Faruk', 'Driver', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1877091641', ''),
(9353, 'SPL-006429', 'Mohammed Younus', 'Driver', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1878164330', ''),
(9354, 'SPL-006432', 'Ripan Ahmed', 'RTG SC Controller', 'CCT Yard', '', '', '', ''),
(9355, 'SPL-006435', 'Md Nura Alam', 'Keep Down Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1914444548', ''),
(9356, 'SPL-006436', 'Md. Rafiqul Islam', 'Supervisor', 'CFS', '', '', '', ''),
(9357, 'SPL-006437', 'Khalekuzaman', 'Assistant Supervisor', 'CFS', '', '', '', ''),
(9358, 'SPL-006438', 'Md. Wahidur Rahman', 'Handover Clerk', 'CFS', '', '', '', ''),
(9359, 'SPL-006439', 'Mohammed Aslam', 'Handover Clerk', 'CFS', '', '', '', ''),
(9360, 'SPL-006441', 'Md. Faruk', 'Tally Clerk', 'CFS', '', '', '', ''),
(9361, 'SPL-006442', 'Mohammad Monjur Alam', 'Tally Clerk', 'CFS', '', '', '', ''),
(9362, 'SPL-006443', 'Md. Amir Hossain', 'Assistant Supervisor', 'CFS', '', '', '', ''),
(9363, 'SPL-006444', 'Md. Mostafa Kamal', 'Tally Clerk', 'CFS', '', '', '', ''),
(9364, 'SPL-006445', 'Md. Amdad Hossain', 'Tally Clerk', 'CFS', '', '', '', ''),
(9365, 'SPL-006446', 'Md. Nur Uddin Jahid', 'Tally Clerk', 'CFS', '', '', '', ''),
(9366, 'SPL-006447', 'Md. Shekh Farid', 'Tally Clerk', 'CFS', '', '', '', ''),
(9367, 'SPL-006449', 'Md. Anisul Hoque', 'Tally Clerk', 'CFS', '', '', '', ''),
(9368, 'SPL-006450', 'Ali Hossain Chowdhury', 'Tally Clerk', 'CFS', '', '', '', ''),
(9369, 'SPL-006451', 'Pabon Mazumder', 'Tally Clerk', 'CFS', '', '', '', ''),
(9370, 'SPL-006453', 'Md. Abu Taher', 'ICD Checker', 'CCT Yard', '', '', '', ''),
(9371, 'SPL-006454', 'Md. Harunur Rashid', 'RTG SC Controller', 'CCT Yard', '', '', '', ''),
(9372, 'SPL-006455', 'Mohammad Salauddin', 'Keep Down Checker', 'CCT Yard', '', '', '', ''),
(9373, 'SPL-006456', 'Akramul Hoque', 'RTG SC Controller', 'CCT Yard', '', '', '', ''),
(9374, 'SPL-006458', 'Md. Hossain', 'Carpenter', 'CFS', '', '', '', ''),
(9375, 'SPL-006460', 'Md. Nuru Uddin', 'Mark Man', 'CFS', '', '', '', ''),
(9376, 'SPL-006461', 'Md. Sah Jahan', 'Mark Man', 'CFS', '', '', '', ''),
(9377, 'SPL-006462', 'Md. Amdadul Haque Khokon', 'RTG SC Controller', 'CCT Yard', '', '', '', ''),
(9378, 'SPL-006463', 'Md. Mafizur Rahaman', 'Mark Man', 'CFS', '', '', '', ''),
(9379, 'SPL-006465', 'Abdul Aziz', 'Mark Man', 'CFS', '', '', '', ''),
(9380, 'SPL-006466', 'Md. Mosarraf Hossain', 'Office Boy', 'CFS', '', '', '', ''),
(9381, 'SPL-006467', 'Md. Ibrahim', 'Supervisor', 'CFS', '', '', '', ''),
(9382, 'SPL-006468', 'Md. Tipu', 'Mark Man', 'CFS', '', '', '', ''),
(9383, 'SPL-006471', 'Md. Moynul  Islam', 'Keep Down Checker', 'CCT Yard', '', '', '', ''),
(9384, 'SPL-006472', 'Hajio Amin Akter', 'RTG Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1624434115', ''),
(9385, 'SPL-006473', 'Md. Salim Miah', 'Keep Down Checker', 'CCT Yard', '', '', '', ''),
(9386, 'SPL-006475', 'Uzzal Biswas', 'Senior Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9387, 'SPL-006478', 'Md. Mohiuddin', 'Assistant Ship Planner', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1813956389', 'mohiuddin.arif@saifpowertec.com'),
(9388, 'SPL-006479', 'Md. Delowar Hossain', 'Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1612065172', ''),
(9389, 'SPL-006480', 'Abdul Basher', 'Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1827841025', ''),
(9390, 'SPL-006481', 'Nur Ahmed', 'Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1614743737', ''),
(9391, 'SPL-006482', 'Md. Abu Taher', 'Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1725075298', ''),
(9392, 'SPL-006483', 'Sujun Chowdhury', 'Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1711953719', ''),
(9393, 'SPL-006484', 'Md. Abdul Salam', 'Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1817776733', ''),
(9394, 'SPL-006485', 'Abu Taleb Chy', 'Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1766444999', ''),
(9395, 'SPL-006486', 'Md. Mahmudur Rahman', 'Senior Assistant Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1816630286', ''),
(9396, 'SPL-006487', 'Nurul Afser', 'Senior Assistant Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1830063988', ''),
(9397, 'SPL-006488', 'Md. Ahidul Alam', 'RTG Checker', 'CCT Yard', '', '', '', ''),
(9398, 'SPL-006489', 'Aga Emdadul Hoque Chowdhury', 'Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1814485278', ''),
(9399, 'SPL-006490', 'Md. Farhad Hossain', 'Senior Assistant Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1812869965', ''),
(9400, 'SPL-006492', 'Md. Salah Uddin', 'Tracer', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1853099297', ''),
(9401, 'SPL-006493', 'Md. Mashiur Rahman', 'RTG Checker', 'CCT Yard', '', '', '', ''),
(9402, 'SPL-006495', 'Prakas Das', 'Tracer', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1813165760', ''),
(9403, 'SPL-006496', 'Suman Talukdar', 'Tracer', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1823140994', ''),
(9404, 'SPL-006498', 'Krishna Dey', 'Tracer', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1813050470', ''),
(9405, 'SPL-006499', 'Md. Nahidul Islam', 'Tracer', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1820190000', ''),
(9406, 'SPL-006500', 'Md. Emroul Qush', 'RTG Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1628267721', ''),
(9407, 'SPL-006501', 'Md. Babaul Haoladar', 'Tracer', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1674079071', ''),
(9408, 'SPL-006502', 'Md. Solaiman', 'Tracer', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1850178805', ''),
(9409, 'SPL-006503', 'Md. Faruk Azam', 'Tracer', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1675002998', ''),
(9410, 'SPL-006504', 'Abbas Uddin', 'Yard Checker', 'CCT Yard', '', '', '', ''),
(9411, 'SPL-006505', 'Md. Jahangir Hossain', 'Yard Checker', 'CCT Yard', '', '', '', ''),
(9412, 'SPL-006506', 'Md. Anis Ullah', 'Radio And HHT Keeper', 'CTMS', '', '', '', ''),
(9413, 'SPL-006507', 'Azim Uddin', 'Radio And HHT Keeper', 'CTMS', '', '', '', ''),
(9414, 'SPL-006510', 'Md. Ibrahim Khalil Sabuz', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1674078949', ''),
(9415, 'SPL-006511', 'Manir Ahammad', 'Door Closer', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1818799387', ''),
(9416, 'SPL-006512', 'Md. Alam Miah', 'Assistant Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1824831575', ''),
(9417, 'SPL-006513', 'Mohammad Elias', 'Assistant Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1313447959', 'saifop@bdmail.net'),
(9418, 'SPL-006514', 'Kazi Shakawat Alam', 'Assistant Ship Planner', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1829695594', ''),
(9419, 'SPL-006515', 'Kazi Shaed Ullah', 'Senior Assistant Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1670296781', '');
INSERT INTO `inv_employee` (`id`, `employeeid`, `name`, `designation`, `department`, `division`, `company`, `phone`, `email`) VALUES
(9420, 'SPL-006516', 'Md. Gias Uddin', 'Deck And Crane Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1861633625', ''),
(9421, 'SPL-006517', 'Md. Nurul Islam', 'Deck And Crane Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1816356231', ''),
(9422, 'SPL-006518', 'Muhammad Abul Mansur', 'Deck And Crane Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1819537836', ''),
(9423, 'SPL-006519', 'A.K.M.Mahmudul Haque Tipu', 'Assistant Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1673178151', ''),
(9424, 'SPL-006520', 'Mohammad Towhidul Islam', 'Deck And Crane Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1673663585', ''),
(9425, 'SPL-006521', 'Md Jainal Abedin', 'Deck And Crane Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1812616341', ''),
(9426, 'SPL-006522', 'Md. Iqbal Hossain', 'Assistant Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1812602857', ''),
(9427, 'SPL-006523', 'Fazlul Halim Chowdhury', 'Tracer', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1813935087', ''),
(9428, 'SPL-006524', 'Md. Amzul Hoque', 'Assistant Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1719240143', ''),
(9429, 'SPL-006525', 'Bipul Kanti Barua', 'Assistant Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1553312218', ''),
(9430, 'SPL-006526', 'Shariful Islam', 'Deck And Crane Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1728079414', ''),
(9431, 'SPL-006527', 'Mohammed Anisuzzaman', 'Deck And Crane Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1818401720', ''),
(9432, 'SPL-006528', 'Mohammd Zakaria', 'Keep Down Checker', 'CCT Yard', '', '', '', ''),
(9433, 'SPL-006529', 'Md. Tofajjal Hossain', 'Assistant Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1715600761', ''),
(9434, 'SPL-006530', 'Sumon Sen Gupta', 'Senior Assistant Ship Supervisor', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1710734733', ''),
(9435, 'SPL-006531', 'Md. Abdur Rahim', 'Deck And Crane Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1813373943', ''),
(9436, 'SPL-006532', 'Mohammed Mostafizur Rahaman', 'Admin Assistant', 'Administration', '', '', '', ''),
(9437, 'SPL-006533', 'Md. Jashed', 'Deck And Crane Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1881626775', ''),
(9438, 'SPL-006535', 'Md. Shakhawat Hossain', 'Deck And Crane Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1821797017', ''),
(9439, 'SPL-006536', 'Paritosh Majumder', 'Deck And Crane Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1626648757', ''),
(9440, 'SPL-006537', 'Md. Baktiar Uddin', 'Deck And Crane Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1753296767', ''),
(9441, 'SPL-006538', 'Md. Fakru Doula Chowdhury', 'Deck And Crane Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1915069191', ''),
(9442, 'SPL-006539', 'Shamsur Rahman', 'Supervisor', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1521533623', ''),
(9443, 'SPL-006540', 'Md. Shahin Miah', 'Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1775670234', ''),
(9444, 'SPL-006541', 'Md. Siddik', 'RTG Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1811214463', ''),
(9445, 'SPL-006543', 'Suman Chandra Paul', 'Empty Area Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1811950129', ''),
(9446, 'SPL-006544', 'Muhammad Gias Uddin', 'RTG Checker', 'CCT Yard', '', '', '', ''),
(9447, 'SPL-006545', 'Sk Rasel Ahmed', 'Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1974935154', ''),
(9448, 'SPL-006547', 'Md. Zahangir', 'Supervisor', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1313447960', 'saifop@bdmail.net'),
(9449, 'SPL-006548', 'Md. Rokibul Hasan', 'Keep Down Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1727863146', ''),
(9450, 'SPL-006549', 'Md. Zia Uddin', 'Empty Area Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1818133850', ''),
(9451, 'SPL-006550', 'Md. Abdul Mannan', 'Keep Down Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1819884491', ''),
(9452, 'SPL-006551', 'Sheikh Md Zahidul Amin', 'RTG SC Controller', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1813541467', ''),
(9453, 'SPL-006552', 'Md. Jashim Uddin', 'RTG Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1819356209', ''),
(9454, 'SPL-006553', 'Sumon Darjee', 'Deck And Crane Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1811124691', 'example@example.com'),
(9455, 'SPL-006554', 'Md. Musa', 'Trainee Tracer', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1815656021', ''),
(9456, 'SPL-006555', 'Sabuz Mazumder', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1819510110', ''),
(9457, 'SPL-006556', 'Md. Elias', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '1823462840', ''),
(9458, 'SPL-006557', 'Shibu Prasade Day', 'Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1827677777', ''),
(9459, 'SPL-006558', 'Md. Mezbaul Shakil', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1689444666', ''),
(9460, 'SPL-006559', 'Didarul Alam Joni', 'Trainee Tracer', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1755844889', ''),
(9461, 'SPL-006560', 'S.M Shah Nawaz', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1819628130', ''),
(9462, 'SPL-006561', 'Deloar Hossain', 'Trainee Tracer', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1825136648', ''),
(9463, 'SPL-006562', 'Kaisarul Islam', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1874825558', ''),
(9464, 'SPL-006563', 'Md. Zahid Hossain', 'Trainee Tracer', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1829495894', ''),
(9465, 'SPL-006564', 'Md. Faroque Hossain', 'Trainee Tracer', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1855536411', ''),
(9466, 'SPL-006566', 'Bepan Kanti Das', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1961833913', ''),
(9467, 'SPL-006567', 'Md. Shahidullah Mijan', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1830223308', ''),
(9468, 'SPL-006568', 'Md. Khorshed Alam', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1823521312', ''),
(9469, 'SPL-006569', 'Ripon Paul', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1834828828', ''),
(9470, 'SPL-006570', 'Md. Abu Sadak Sojib', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1834457513', ''),
(9471, 'SPL-006573', 'Mohammad Moinuddin', 'Trainee Tracer', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1882421999', ''),
(9472, 'SPL-006575', 'Md. Rabiul Hossain', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1822343758', ''),
(9473, 'SPL-006576', 'Md. Ismail', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1857644469', ''),
(9474, 'SPL-006577', 'Kamal Ahmad', 'RTG SC Controller', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1715570290', ''),
(9475, 'SPL-006578', 'Shafiul Azam Chowduary', 'RTG SC Controller', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1811212230', ''),
(9476, 'SPL-006579', 'Abdul Mannan', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1811313973', ''),
(9477, 'SPL-006581', 'Md. Yashin', 'Keep Down Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1632197489', ''),
(9478, 'SPL-006582', 'Shaikh Nazrul Islam', 'Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1770482251', ''),
(9479, 'SPL-006583', 'Md. Rahel', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1864831569', ''),
(9480, 'SPL-006584', 'Md. Anwar Hossain', 'Empty Area Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1819356209', ''),
(9481, 'SPL-006585', 'Md. Sayed Nur', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1824176888', ''),
(9482, 'SPL-006586', 'Md. Jamal', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1812047246', ''),
(9483, 'SPL-006589', 'Md. Saiful Alam', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1913191949', ''),
(9484, 'SPL-006590', 'Md. Salim', 'RTG SC Controller', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1926168055', ''),
(9485, 'SPL-006591', 'Akramul Hoque Rubel', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1858413263', ''),
(9486, 'SPL-006592', 'Muhammad Abdur Rahim Chowdhury', 'RTG Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1811182360', ''),
(9487, 'SPL-006593', 'Isme Azam Rubel', 'Deck And Crane Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1711668464', ''),
(9488, 'SPL-006594', 'Abu Bakker', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1851218222', ''),
(9489, 'SPL-006595', 'Sheikh Md Titumir Akter', 'Yard Checker', 'CTMS', '', '', '', ''),
(9490, 'SPL-006596', 'Md. Ashraf Uddin', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1811859250', ''),
(9491, 'SPL-006597', 'Md. Emran Ahaead', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1846965979', ''),
(9492, 'SPL-006598', 'S.M.Ifteker Pavel', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1628371759', ''),
(9493, 'SPL-006599', 'Mohammad Osman Gani', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1617401043', ''),
(9494, 'SPL-006600', 'Md. Shah Jalal Sumon', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1749205390', ''),
(9495, 'SPL-006601', 'Liton Mia', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1850525075', ''),
(9496, 'SPL-006602', 'Md. Kaisar Hamid', 'Supervisor', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1313447961', 'saifop@bdmail.net'),
(9497, 'SPL-006603', 'Md.Faisal', 'RTG SC Controller', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1864483390', ''),
(9498, 'SPL-006605', 'Md. Eiran', 'Door Closer', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1830092752', ''),
(9499, 'SPL-006606', 'Md. Elias', 'Door Closer', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1818059093', ''),
(9500, 'SPL-006609', 'Shohel Barua', 'RTG SC Controller', 'CCT Yard', '', '', '', ''),
(9501, 'SPL-006614', 'Md. Humyun Bhuiyan', 'Door Closer', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1812384508', ''),
(9502, 'SPL-006628', 'Md. Abdud Duyan', 'Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1632082012', 'example@example.com'),
(9503, 'SPL-006633', 'Mohammad Mizanur Rahman', 'RTG SC Controller', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1821590967', ''),
(9504, 'SPL-006634', 'Md. Belal Hossain', 'Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1811612722', ''),
(9505, 'SPL-006635', 'Mohammed Samsuddin', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1849270800', 'example@example.com'),
(9506, 'SPL-006636', 'Abdullah Al-Momen', 'RTG SC Controller', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1879466969', ''),
(9507, 'SPL-006637', 'Mohammed Faruq', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1820196072', 'example@example.com'),
(9508, 'SPL-006639', 'Md. Aminul Islam', 'Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1814940818', ''),
(9509, 'SPL-006640', 'Jaynal Abedin Rony', 'Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1832221474', ''),
(9510, 'SPL-006641', 'Sany Dutta', 'Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1859185217', ''),
(9511, 'SPL-006642', 'Liton Das', 'Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1863219409', ''),
(9512, 'SPL-006643', 'Md. Farid Nijami', 'Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1814977521', ''),
(9513, 'SPL-006644', 'Rajib Chakraborty', 'Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1675849756', ''),
(9514, 'SPL-006645', 'Md. Monjur Alam', 'Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1836040112', ''),
(9515, 'SPL-006646', 'Abdur Rashid', 'Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1622608395', ''),
(9516, 'SPL-006647', 'Md. Jasim', 'Door Closer', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1827414466', ''),
(9517, 'SPL-006648', 'Sobrota Barua', 'Door Closer', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1812601828', ''),
(9518, 'SPL-006663', 'Rifat Sultana', 'Front Desk Officer', 'Administration', '', '', '', ''),
(9519, 'SPL-006664', 'Farukh Ahmed Khan', 'Executive Director', 'Administration', '', '', '', ''),
(9520, 'SPL-006665', 'Laboni Yesmin', 'Front Desk Officer', 'Administration', '', '', '', ''),
(9521, 'SPL-006667', 'Ashiqur Rahman Ratul', 'Officer', 'Commercial', 'Battery', 'Saif Powertec Ltd.', '0', 'ashiqur@saifpowertec.com'),
(9522, 'SPL-006668', 'Tanzila Islam Lima', 'Senior Officer', 'Enterprise Resource Planning', 'Corporate', 'Saif Powertec Ltd.', '1730353369', 'lima@saifpowertec.com'),
(9523, 'SPL-006672', 'Mst. Shila Akter Boby', 'Front Desk Officer', 'Administration', '', '', '', ''),
(9524, 'SPL-006706', 'Md. Monir Hossain', 'ITV Operator', 'ITV', 'SPOT', 'Saif Powertec Ltd.', '1822343801', ''),
(9525, 'SPL-006729', 'Abdul Wahed', 'Manager', 'Human Resource Management', 'Corporate', 'Saif Powertec Ltd.', '1708154728', 'wahed@saifpowertec.com'),
(9526, 'SPL-006730', 'Md. Nurul Alam', 'Technician', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1684089565', 'mosharof@saifpowertec.com'),
(9527, 'SPL-006745', 'Akhlasur Rahman Gulap', 'Lasher', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1923489867', ''),
(9528, 'SPL-006746', 'Mohammad Ali Bhuiyan', 'Lasher', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1882677865', 'saifop@bdmail.net'),
(9529, 'SPL-006748', 'Md. Al Mamun Islam', 'Service Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9530, 'SPL-006769', 'Md. Najmul Haque', 'Service Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9531, 'SPL-006809', 'Shyamuel Sarkar Pinku', 'Yard Checker', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '0', 'example@example.com'),
(9532, 'SPL-006861', 'Abul Hassan', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1819509529', ''),
(9533, 'SPL-006862', 'Md. Abdul Nabi', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1819308449', ''),
(9534, 'SPL-006863', 'Md Alam Hossain', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1726300633', ''),
(9535, 'SPL-006864', 'Mohd Aminul Haque', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1675109191', ''),
(9536, 'SPL-006865', 'Md. Altaf Hossain', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1313447970', 'saifop@bdmail.net'),
(9537, 'SPL-006866', 'Md. Shahjahan', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1913632663', ''),
(9538, 'SPL-006868', 'Md Akram Hossain Akanda', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1717373461', ''),
(9539, 'SPL-006869', 'Noor Mohammad', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1712473057', 'saifop@bdmail.net'),
(9540, 'SPL-006871', 'Md. Ayub Ali', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1836641320', ''),
(9541, 'SPL-006873', 'Abdur Rashid', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1818120445', ''),
(9542, 'SPL-006875', 'Md. Mohsin', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1788774459', ''),
(9543, 'SPL-006876', 'Syed Minhajul Kabir', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '181977265', ''),
(9544, 'SPL-006877', 'Md. Rafiqul Islam Taluqdar', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1711199960', ''),
(9545, 'SPL-006878', 'Md Iqbal Hossain', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1954254989', ''),
(9546, 'SPL-006891', 'Md. Anowarul Islam', 'Peon', 'Administration', '', '', '', ''),
(9547, 'SPL-006893', 'Md. Helal Uddin', 'Service Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1744954204', ''),
(9548, 'SPL-006894', 'Md. Shahinur Ali', 'Service Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1704337844', ''),
(9549, 'SPL-006895', 'Suhel Ahmed', 'Service Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9550, 'SPL-006897', 'Md. Imam Hossain', 'Executive', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1715514091', 'imam@saifpowertec.com'),
(9551, 'SPL-006898', 'Philip Gomes', 'Shift In-Charge', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1313447958', 'saifop@bdmail.net'),
(9552, 'SPL-006899', 'Md. Mahbub Khan', 'Senior Documentation Staff', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1746787994', ''),
(9553, 'SPL-006900', 'Md. Riaz Hossan', 'Shift In-Charge', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1850369641', ''),
(9554, 'SPL-006901', 'Md. Momin Ullah', 'Senior Documentation Staff', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1918810204', ''),
(9555, 'SPL-006902', 'Md. Omar Faruk', 'Senior Documentation Staff', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1818112642', ''),
(9556, 'SPL-006903', 'Md. Lutful Hoque', 'Senior Documentation Staff', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1830355420', ''),
(9557, 'SPL-006904', 'Md. Saiful Islam', 'Senior Documentation Staff', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1818077011', ''),
(9558, 'SPL-006905', 'Md. Ahasan Ullah', 'Senior Documentation Staff', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1815711232', ''),
(9559, 'SPL-006906', 'Md. Shah Alam', 'Senior Documentation Staff', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1814728148', ''),
(9560, 'SPL-006907', 'Md. Nazrul Islam', 'Senior Documentation Staff', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1857280989', ''),
(9561, 'SPL-006908', 'SK. Riad Mahmud Alam', 'Senior Documentation Staff', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1614269457', ''),
(9562, 'SPL-006909', 'Md. Mahin Uddin', 'Senior Documentation Staff', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1813405052', ''),
(9563, 'SPL-006910', 'Mohammad Sayem Hussain', 'Senior Documentation Staff', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1823834970', ''),
(9564, 'SPL-006911', 'Md. Rahmat Ullah', 'Senior Documentation Staff', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1816354798', ''),
(9565, 'SPL-006912', 'Mark Julius Pratchard', 'Senior Documentation Staff', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1671700957', ''),
(9566, 'SPL-006913', 'Md. Shahinul Alam', 'Deputy Manager', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1730353347', 'shahin@saifpowertec.com'),
(9567, 'SPL-006914', 'Sheikh Mohammed Aurangjeb', 'Senior Documentation Staff', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1718547426', ''),
(9568, 'SPL-006915', 'Mohin Uddin', 'Documentation Staff Trainee', 'CTMS', '', '', '', ''),
(9569, 'SPL-006918', 'Md. Nurul Alam', 'Terminal Superintendent', 'Quay Yard Supervisor', 'SPOT', 'Saif Powertec Ltd.', '1730353331', 'alam.op@saifpowertec.com'),
(9570, 'SPL-006919', 'Md. Hadaytul Islam Shkder', 'Senior Yard Supervisor', 'Quay Yard Supervisor', 'SPOT', 'Saif Powertec Ltd.', '1715594601', ''),
(9571, 'SPL-006920', 'Md.  Yousuf', 'Assistant Yard Superintendent', 'Quay Yard Supervisor', 'SPOT', 'Saif Powertec Ltd.', '1711204207', ''),
(9572, 'SPL-006921', 'Md. Saiful Islam', 'Yard Supervisor', 'Quay Yard Supervisor', 'SPOT', 'Saif Powertec Ltd.', '', ''),
(9573, 'SPL-006922', 'Sunil Das', 'Yard Supervisor', 'Quay Yard Supervisor', 'SPOT', 'Saif Powertec Ltd.', '1712206144', ''),
(9574, 'SPL-006923', 'Md. Moha Uddin', 'Yard Supervisor', 'Quay Yard Supervisor', 'SPOT', 'Saif Powertec Ltd.', '1716951956', ''),
(9575, 'SPL-006924', 'Mohammed Jasim Uddin Sikder', 'Yard Supervisor', 'Quay Yard Supervisor', 'SPOT', 'Saif Powertec Ltd.', '1783349673', ''),
(9576, 'SPL-006925', 'M. A. Kader Farid', 'Yard Supervisor', 'Quay Yard Supervisor', 'SPOT', 'Saif Powertec Ltd.', '1819058832', ''),
(9577, 'SPL-006926', 'Md. Mostofa Khan', 'Yard Supervisor', 'Quay Yard Supervisor', 'SPOT', 'Saif Powertec Ltd.', '1790312482', 'mosharof@saifpowertec.com'),
(9578, 'SPL-006927', 'Md Rabiul Awal', 'Yard Supervisor', 'Quay Yard Supervisor', 'SPOT', 'Saif Powertec Ltd.', '1736824299', ''),
(9579, 'SPL-006928', 'Md. Akramul Hoque', 'Yard Supervisor', 'Quay Yard Supervisor', 'SPOT', 'Saif Powertec Ltd.', '1818027994', ''),
(9580, 'SPL-006929', 'Md. Shamsul Alam Rony', 'Senior Keep Down Checker', 'Quay Yard Supervisor', 'SPOT', 'Saif Powertec Ltd.', '1813180039', ''),
(9581, 'SPL-006930', 'Md. Sarwar Alam', 'Terminal Superintendent', 'Quay Yard Supervisor', 'SPOT', 'Saif Powertec Ltd.', '1713380493', 'sarwaralam@saifpowertec.com'),
(9582, 'SPL-006931', 'Md. Kamal Miah', 'Assistant Yard Superintendent', 'Quay Yard Supervisor', 'SPOT', 'Saif Powertec Ltd.', '1741513852', ''),
(9583, 'SPL-006940', 'Abdur Rahman', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(9584, 'SPL-006941', 'Md. Zakaria Biswas', 'Security Guard', 'Administration', '', '', '', ''),
(9585, 'SPL-006942', 'Md Imtiaz Ahmmad Emon', 'Yard Checker', 'Administration', '', '', '', ''),
(9586, 'SPL-006948', 'Md. Shakib Ahmed', 'Driver', 'Administration', '', '', '', ''),
(9587, 'SPL-006952', 'Md. Mizanur Rahman', 'Senior Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9588, 'SPL-006955', 'Mohammed Mohiuddin', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1819031939', ''),
(9589, 'SPL-006956', 'Md. Hasan Mia Abul Kalam', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1726494946', ''),
(9590, 'SPL-006958', 'Abdul Sukur', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1819781640', ''),
(9591, 'SPL-006959', 'Mohammad Nashir Uddin', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1313447973', 'saifop@bdmail.net'),
(9592, 'SPL-006960', 'Md. Abu Tayab', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1818913287', ''),
(9593, 'SPL-006961', 'Md. Abdus Salam', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1813992233', ''),
(9594, 'SPL-006962', 'Md.Jahir Hossen Babu', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1676065083', ''),
(9595, 'SPL-006964', 'Mahabub Alam', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1987547173', ''),
(9596, 'SPL-006966', 'Md. Salah Uddin', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1813989158', ''),
(9597, 'SPL-006967', 'Habibur Rahman Shekh', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1722927601', ''),
(9598, 'SPL-006968', 'Md. Hafij Sheikh', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1922912079', ''),
(9599, 'SPL-006969', 'Md. Harun Ar Rashid Gazi', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1726081823', ''),
(9600, 'SPL-006970', 'Md. Enamul Haque', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1313447972', 'saifop@bdmail.net'),
(9601, 'SPL-006971', 'Mohammad Mahbubul Alam', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1913161838', ''),
(9602, 'SPL-006972', 'Shah Mun Tasin Farid', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1712078531', ''),
(9603, 'SPL-006973', 'Md. Siful Islam Shapan', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1989103234', ''),
(9604, 'SPL-006974', 'Md. Ahssan Ulla', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1817777051', ''),
(9605, 'SPL-006975', 'Nurun Nosir Chowdhury', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1817258774', ''),
(9606, 'SPL-006976', 'Farid Hosaain', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1715223368', ''),
(9607, 'SPL-006977', 'Md. Abul Kalam', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1728543349', ''),
(9608, 'SPL-006979', 'S.M. Awal Karim', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1811850505', ''),
(9609, 'SPL-006980', 'Md. Nazmul Hossain', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1912568046', ''),
(9610, 'SPL-006981', 'Md. Kamrul Hasan', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1926449575', ''),
(9611, 'SPL-006983', 'Jakirul Islam', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1914782493', ''),
(9612, 'SPL-006984', 'Abul Hasem', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1788322761', ''),
(9613, 'SPL-006985', 'Md. Samsuddin', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1816557856', ''),
(9614, 'SPL-006987', 'Md. Al Amin', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1747643258', ''),
(9615, 'SPL-006988', 'Syed Mizanur Rahman', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1631927404', ''),
(9616, 'SPL-006990', 'Mahfujul Islam', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1795956360', ''),
(9617, 'SPL-006991', 'A.S.M. Sayem', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1816447789', ''),
(9618, 'SPL-006994', 'Mohammed Fakir Alamgir', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1813362146', ''),
(9619, 'SPL-006995', 'Md. Khursid Alam', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1875333328', ''),
(9620, 'SPL-006996', 'Md. Nayem Shake', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1766077694', ''),
(9621, 'SPL-006997', 'Sajib Miah', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1811264068', ''),
(9622, 'SPL-006999', 'Md. Nuruzzaman', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1822365087', ''),
(9623, 'SPL-007001', 'Main Uddin', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1633037226', ''),
(9624, 'SPL-007002', 'Md. Rumel Akanda', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1912369005', ''),
(9625, 'SPL-007003', 'Tanvir Ahmed', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1632014202', ''),
(9626, 'SPL-007004', 'Tanvir Rahman', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1632898462', ''),
(9627, 'SPL-007005', 'Md. Salah Uddin', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1922877023', ''),
(9628, 'SPL-007006', 'Md. Khaled Hasan Mubin', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1825403478', ''),
(9629, 'SPL-007007', 'Nayem Hasan Tipu', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1775685359', ''),
(9630, 'SPL-007008', 'Md. Fahad Hossain', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1751214476', ''),
(9631, 'SPL-007009', 'Nazmul Karim', 'Assistant General Manager', 'Administration', '', '', '', ''),
(9632, 'SPL-007010', 'Md. Jabed', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '1811125252', ''),
(9633, 'SPL-007011', 'Md. Abdul Sattar', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '1830153536', ''),
(9634, 'SPL-007012', 'Md. Akter Hossan', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '1812812863', ''),
(9635, 'SPL-007013', 'Anoweroul Momin Bhuyian', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '1817737979', ''),
(9636, 'SPL-007014', 'Md. Minaz Khan', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '1824892999', ''),
(9637, 'SPL-007015', 'Ikramul Islam', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1939108640', ''),
(9638, 'SPL-007016', 'Golam Rasul', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1960441630', ''),
(9639, 'SPL-007017', 'Sujan Hory', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1925222212', ''),
(9640, 'SPL-007018', 'Jobayer Hasan Shovu', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1777481414', ''),
(9641, 'SPL-007019', 'Md. Tuhin Hossain', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1728337343', ''),
(9642, 'SPL-007020', 'Md. Naim Hossan', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1995373695', ''),
(9643, 'SPL-007021', 'Md. Al Amin Hossain', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1625927572', ''),
(9644, 'SPL-007022', 'Md. Shamim Sk', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1981386216', ''),
(9645, 'SPL-007023', 'Md. Mashud Rana', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1936258767', ''),
(9646, 'SPL-007024', 'Mohammad Irfan Hassan', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1622460112', ''),
(9647, 'SPL-007025', 'Md. Tohidur Rahman', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1921320986', ''),
(9648, 'SPL-007026', 'Md. Ashikur Islam', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1948140440', ''),
(9649, 'SPL-007027', 'Sattajit Das', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1954667930', ''),
(9650, 'SPL-007028', 'Md. Ashik Rana', 'RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1956499056', ''),
(9651, 'SPL-007029', 'Yeasin Arafat', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1616285028', ''),
(9652, 'SPL-007030', 'Md. Parves', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1778539984', ''),
(9653, 'SPL-007031', 'Md. Johirul Islam', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1776509308', ''),
(9654, 'SPL-007032', 'Sayed Ahmad', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1771438315', ''),
(9655, 'SPL-007033', 'Md. Mizanur Rahman', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1723607323', ''),
(9656, 'SPL-007034', 'Methun Kumar', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1961622066', ''),
(9657, 'SPL-007036', 'Poltu Haq Tarafder', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '1815357192', ''),
(9658, 'SPL-007037', 'Md. Ali Hossain', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '1534406270', ''),
(9659, 'SPL-007038', 'Md. Abdur Rahim', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '1846035526', ''),
(9660, 'SPL-007039', 'Md. Nurul Islam', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '1819526564', ''),
(9661, 'SPL-007040', 'Nur Islam Sohel', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '0', ''),
(9662, 'SPL-007041', 'Md. Eaqub', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '1825261580', ''),
(9663, 'SPL-007042', 'Md. Parvez Ahamad', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '1831531429', ''),
(9664, 'SPL-007043', 'Md. Sumon Islam', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '1827402460', 'example@example.com'),
(9665, 'SPL-007044', 'Biplob Dash', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '0', ''),
(9666, 'SPL-007045', 'Forhad Miah', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '0', 'example@example.com'),
(9667, 'SPL-007046', 'Md. Kide Azam', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '0', ''),
(9668, 'SPL-007047', 'Abdul Aziz', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '1850737111', ''),
(9669, 'SPL-007048', 'Md. Elias Miah', 'Supervisor', 'Administration', '', '', '', ''),
(9670, 'SPL-007050', 'Baizid Haider Chaudhury', 'Manager', 'IT', 'Corporate', 'Saif Powertec Ltd.', '1673319733', 'baizid@saifpowertec.com'),
(9671, 'SPL-007051', 'Md. Anisul Haque Tarafder', 'Deputy Manager', 'Delivery', '', '', '', ''),
(9672, 'SPL-007052', 'Md. Mizanur Rahman', 'Supervisor In-Charge', 'Delivery', '', '', '', ''),
(9673, 'SPL-007053', 'Kazi Shamsuddin', 'Medical Assistant', 'Delivery', '', '', '', ''),
(9674, 'SPL-007054', 'Md. Alamgir Hossain', 'Medical Assistant', 'Delivery', '', '', '', ''),
(9675, 'SPL-007055', 'Utpal Biswas', 'Labour In-Charge', 'Delivery', '', '', '', ''),
(9676, 'SPL-007056', 'Md. Shafiqul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(9677, 'SPL-007057', 'Md. Jahir Uddin', 'Delivery Supervisor', 'Delivery', '', '', '', ''),
(9678, 'SPL-007058', 'Md. Shahjahan Hossain', 'Delivery Supervisor', 'Delivery', '', '', '', ''),
(9679, 'SPL-007059', 'Md. Moshiur Rahman', 'Delivery Supervisor', 'Delivery', '', '', '', ''),
(9680, 'SPL-007060', 'Sheik Asif Mahbub', 'Delivery Supervisor', 'Delivery', '', '', '', ''),
(9681, 'SPL-007061', 'Md. Monirul Alam', 'Delivery Supervisor', 'Delivery', '', '', '', ''),
(9682, 'SPL-007062', 'Md. Helal Uddin', 'Delivery Supervisor', 'Delivery', '', '', '', ''),
(9683, 'SPL-007064', 'Mohammed Monjurul Alam Bappy', 'Delivery Supervisor', 'Delivery', '', '', '', ''),
(9684, 'SPL-007065', 'Md. Arif Hossain', 'Delivery Supervisor', 'Delivery', '', '', '', ''),
(9685, 'SPL-007066', 'S.M. Ashif Rahman', 'Delivery Supervisor', 'Delivery', '', '', '', ''),
(9686, 'SPL-007067', 'Md. Abul Khair Bhuiyan', 'Billing Assistant', 'Delivery', '', '', '', ''),
(9687, 'SPL-007068', 'Md. Fazle Alam', 'Billing Assistant', 'Delivery', '', '', '', ''),
(9688, 'SPL-007069', 'Mohammed Tauhidul Islam Bhuyain', 'Officer', 'Delivery', '', '', '', ''),
(9689, 'SPL-007070', 'Mir Md. Abdur Rahman', 'Labour Supervisor', 'Delivery', '', '', '', ''),
(9690, 'SPL-007071', 'Md. Harun Ur Rashid', 'Labour Supervisor', 'Delivery', '', '', '', ''),
(9691, 'SPL-007072', 'Firujul Amin', 'Labour Supervisor', 'Delivery', '', '', '', ''),
(9692, 'SPL-007073', 'Md. Nurul Alam', 'Labour Supervisor', 'Delivery', '', '', '', ''),
(9693, 'SPL-007074', 'Dulal Chandra Voumik', 'Labour Supervisor', 'Delivery', '', '', '', ''),
(9694, 'SPL-007075', 'Air Mohammed', 'Labour Supervisor', 'Delivery', '', '', '', ''),
(9695, 'SPL-007076', 'Md. Mohosin Meah', 'Labour Supervisor', 'Delivery', '', '', '', ''),
(9696, 'SPL-007077', 'Md. Ali', 'Driver', 'Delivery', '', '', '', ''),
(9697, 'SPL-007078', 'Abdul Malek', 'Driver', 'Delivery', '', '', '', ''),
(9698, 'SPL-007079', 'Md Touhidul Alam', 'Trainee Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '', 'example@example.com'),
(9699, 'SPL-007080', 'Julfikar Ali', 'Peon', 'Administration', '', '', '', ''),
(9700, 'SPL-007082', 'Md. Helal', 'Delivery Supervisor', 'Delivery', '', '', '', ''),
(9701, 'SPL-007083', 'Md. Humayun Kabir', 'Assistant Manager', 'Delivery', '', '', '', ''),
(9702, 'SPL-007084', 'Md. Merazul Islam', 'Billing Assistant', 'Delivery', '', '', '', ''),
(9703, 'SPL-007087', 'A.T.M. Khaled Noor', 'General Manager', 'Marketing And Sales- Export And Corporate', 'Battery', 'Saif Powertec Ltd.', '1819239166', 'khaled@saifpowertec.com'),
(9704, 'SPL-007089', 'Md. Reyazul Islam', 'Officer', 'Administration', '', '', '', ''),
(9705, 'SPL-007092', 'Md. Raju Uddin', 'Carpenter', 'Project', 'Corporate', 'Saif Powertec Ltd.', '0', ''),
(9706, 'SPL-007098', 'Musa Kalimullah', 'Trainee Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1772198518', ''),
(9707, 'SPL-007101', 'Rakibul Hasan', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1772198518', ''),
(9708, 'SPL-007102', 'Md. Kutub Uddin', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1921805386', ''),
(9709, 'SPL-007104', 'Shimul Islam', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '0', ''),
(9710, 'SPL-007105', 'Md. Alal Hossain', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '0', ''),
(9711, 'SPL-007108', 'Md. Sazzad Ahammad', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '0', ''),
(9712, 'SPL-007110', 'Masum Sheikh', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '0', ''),
(9713, 'SPL-007111', 'Md. Mehadi Hassan', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '0', ''),
(9714, 'SPL-007115', 'Mohammed Faridul Alam', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1860700072', ''),
(9715, 'SPL-007116', 'Humayun Kabir', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1856093923', ''),
(9716, 'SPL-007118', 'Nazrul Islam Rubal', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1819536598', ''),
(9717, 'SPL-007119', 'Md. Ibrahim Khalil', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1824955118', ''),
(9718, 'SPL-007120', 'Md. Shohel Rana', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1744527272', ''),
(9719, 'SPL-007121', 'Shahidul Haque', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1611883551', ''),
(9720, 'SPL-007124', 'Md. Abu Syed', 'Documentation Staff Trainee', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '0', ''),
(9721, 'SPL-007127', 'Md. Nizam Uddin', 'Executive', 'Administration', '', '', '', ''),
(9722, 'SPL-007129', 'Md. Abdul Barik', 'Admin Assistant', 'Administration', '', '', '', ''),
(9723, 'SPL-007130', 'Md. Azaharul Haque', 'Security Guard', 'Administration', '', '', '', ''),
(9724, 'SPL-007132', 'Md. Nazim Uddin', 'Security Guard', 'Administration', '', '', '', ''),
(9725, 'SPL-007134', 'Uzzwal Biswas', 'Yard Checker', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1736428356', ''),
(9726, 'SPL-007136', 'Mainul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(9727, 'SPL-007137', 'Md. Sumon Khan', 'Driver', 'Administration', '', '', '', ''),
(9728, 'SPL-007138', 'Md. Imran Hossain Milon', 'Helper', 'Administration', '', '', '', ''),
(9729, 'SPL-007144', 'Md. Meraz', 'Service Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1754299880', ''),
(9730, 'SPL-007145', 'Md. Khalid Hasan', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1767096191', ''),
(9731, 'SPL-007146', 'Md. Zakaria Islam', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1763403287', ''),
(9732, 'SPL-007147', 'Md. Shahinur Rahman', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1760616119', ''),
(9733, 'SPL-007148', 'Md. Lokman Hossain Molla', 'Executive Director', 'Business Development', 'Corporate', 'Saif Powertec Ltd.', '1777654759', 'lokmanhossain@saifpowertec.com'),
(9734, 'SPL-007150', 'Muhammad Rasel', 'Senior Officer', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '0', 'rasel.batt@saifpowertec.com'),
(9735, 'SPL-007152', 'Konok', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1761720472', ''),
(9736, 'SPL-007158', 'Md. Zahid Molla', 'Security Guard', 'Administration', '', '', '', ''),
(9737, 'SPL-007159', 'Md. Noor Amin Mondol', 'Security Supervisor', 'Administration', '', '', '', ''),
(9738, 'SPL-007160', 'Md. Abul Khair', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(9739, 'SPL-007161', 'Md. Nurer Rahman', 'Security Guard', 'Administration', '', '', '', ''),
(9740, 'SPL-007163', 'Md. Karim Uddin', 'Security Supervisor', 'Administration', '', '', '', ''),
(9741, 'SPL-007166', 'Md. Ataher Hossain', 'Security Inspector', 'Administration', '', '', '', ''),
(9742, 'SPL-007167', 'Md. Raj Mamud', 'Driver', 'Administration', '', '', '', ''),
(9743, 'SPL-007168', 'Md. Hazrat Ali', 'Driver', 'Administration', '', '', '', ''),
(9744, 'SPL-007170', 'Mohammad Shahabuddin', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(9745, 'SPL-007171', 'Md. Obaydul Haq', 'Security Inspector', 'Administration', '', '', '', ''),
(9746, 'SPL-007173', 'Md Sumon ', 'Office Assistant', 'Administration', '', '', '', ''),
(9747, 'SPL-007175', 'Md. Asik Sikder', 'Technician', 'IT', 'Corporate', 'Saif Powertec Ltd.', '0', 'asiksikder@saifpowertec.com'),
(9748, 'SPL-007178', 'Md. Salim', 'Driver', 'Administration', '', '', '', ''),
(9749, 'SPL-007180', 'Kazi Rabbi Hasan Shanto', 'Door Closer', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '0', ''),
(9750, 'SPL-007181', 'Md. Abul Kashem', 'Assistant Manager', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9751, 'SPL-007183', 'Md. Shamim Hossain', 'Service Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '0', ''),
(9752, 'SPL-007184', 'Md. Mohiuddin', 'Service Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787684211', 'saifop@bdmail.com'),
(9753, 'SPL-007186', 'Md. Zahidul Islam', 'Project Engineer', 'Project', 'Corporate', 'Saif Powertec Ltd.', '1313448043', 'Saif@saifpowertec.com'),
(9754, 'SPL-007190', 'Md Monowar Hossain', 'Carpenter', 'Project', 'Corporate', 'Saif Powertec Ltd.', '0', ''),
(9755, 'SPL-007191', 'Md. Samim Hossain', 'Helper', 'Project', 'Corporate', 'Saif Powertec Ltd.', '0', ''),
(9756, 'SPL-007193', 'Provas Sikder', 'Site Engineer', 'Project', 'Corporate', 'Saif Powertec Ltd.', '0', ''),
(9757, 'SPL-007194', 'Arman Hossain', 'Officer', 'Administration', '', '', '', ''),
(9758, 'SPL-007195', 'Mohammed Salim Kabir', 'Yard Checker', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1787684025', 'salim@saifmaritimeltd.com'),
(9759, 'SPL-007198', 'Razib Hasan', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '0', 'example@example.com'),
(9760, 'SPL-007203', 'Md. Assaduzzaman', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(9761, 'SPL-007204', 'Md. Shopon Ali', 'Office Assistant', 'Administration', '', '', '', ''),
(9762, 'SPL-007209', 'Md. Nobel', 'Security Guard', 'Administration', '', '', '', ''),
(9763, 'SPL-007213', 'Md. Najim Uddin Nirob', 'Security Guard', 'Administration', '', '', '', ''),
(9764, 'SPL-007214', 'Md. Rezon Ahmed', 'Security Guard', 'Administration', '', '', '', ''),
(9765, 'SPL-007221', 'Shirin Sultana', 'Officer', 'Administration', '', '', '', ''),
(9766, 'SPL-007223', 'Raihan', 'Cleaner', 'Administration', '', '', '', ''),
(9767, 'SPL-007229', 'Sayed Usman Ali', 'Driver', 'Administration', '', '', '', ''),
(9768, 'SPL-007233', 'James Shimul Gomes', 'Executive', 'Administration', '', '', '', ''),
(9769, 'SPL-007235', 'Sheikh Zahidul Islam', 'Fork Lift Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1732221341', ''),
(9770, 'SPL-007239', 'Md. Abir Hossain', 'Officer', 'Finance And Accounts', 'Battery', 'Saif Powertec Ltd.', '1777790398', 'abir.hossain@saifpowertec.com'),
(9771, 'SPL-007240', 'Md. Barak Ullah', 'Carpenter', 'Store', 'Battery', 'Saif Powertec Ltd.', '1813332110', 'Saifop@saifpowertec.com'),
(9772, 'SPL-007241', 'Khokon Chandra Das', 'Technician', 'Store', 'Battery', 'Saif Powertec Ltd.', '1728641911', 'Saifop@saifpowertec.com'),
(9773, 'SPL-007242', 'Halim Miah', 'Technician', 'Quality Assurance', 'Battery', 'Saif Powertec Ltd.', '1951770036', 'Saifop@saifpowertec.com'),
(9774, 'SPL-007243', 'Khyrul Alam Chowdhury', 'Technician', 'CMP', '', '', '', ''),
(9775, 'SPL-007244', 'Sojib Hossain', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1916076499', ''),
(9776, 'SPL-007245', 'Md. Amiruzzaman', 'Technician', 'MC', 'Battery', 'Saif Powertec Ltd.', '1949267979', 'Saifop@saifpowertec.com'),
(9777, 'SPL-007248', 'Md. Shahjahan Ali', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1770954210', ''),
(9778, 'SPL-007249', 'Md. Sujon Mia', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1636545543', ''),
(9779, 'SPL-007250', 'Dipon Chandoro Das', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1796342509', ''),
(9780, 'SPL-007251', 'Sheenjoy Mondol', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1765875989', ''),
(9781, 'SPL-007252', 'Md. Jahangir Alam', 'Technician', 'Store', 'Battery', 'Saif Powertec Ltd.', '1798962625', ''),
(9782, 'SPL-007253', 'Swapan Kumar Ray', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1737273105', ''),
(9783, 'SPL-007254', 'Md. Romio Ripon', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1854194343', 'Saifop@saifpowertec.com'),
(9784, 'SPL-007255', 'Achinta Kumar Roy', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '17377001203', ''),
(9785, 'SPL-007256', 'Md. Shoriful Islam Shaon', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1957288725', ''),
(9786, 'SPL-007258', 'Nur Mohammad Haque', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1969297642', ''),
(9787, 'SPL-007260', 'Md. Asadullah', 'Technician', 'CMP', '', '', '', ''),
(9788, 'SPL-007262', 'Md. Azizul Islam', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '1935286819', ''),
(9789, 'SPL-007264', 'Md. Nazmul Mollah', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '1788056186', ''),
(9790, 'SPL-007266', 'Abdul Hamid Sarker', 'Technician', 'CMP', '', '', '', ''),
(9791, 'SPL-007268', 'Abinash Kumar', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1794925486', ''),
(9792, 'SPL-007269', 'Ram Prosad Buktoy', 'Carpenter', 'Store', 'Battery', 'Saif Powertec Ltd.', '1825891239', 'Saifop@saifpowertec.com'),
(9793, 'SPL-007270', 'Md. Mubarak Hossen', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1965487622', ''),
(9794, 'SPL-007271', 'Md. Ruhul Amin', 'Technician', 'Gel And VRLA', 'Battery', 'Saif Powertec Ltd.', '1782117051', ''),
(9795, 'SPL-007272', 'Md. Rana Hosen', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1725011964', ''),
(9796, 'SPL-007275', 'Md. Bashir Howlader', 'Technician', 'Store', 'Battery', 'Saif Powertec Ltd.', '1715749002', 'Saifop@saifpowertec.com'),
(9797, 'SPL-007279', 'Subud Chandra Sarker', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1834527957', ''),
(9798, 'SPL-007282', 'Md. Sultan Ali', 'Peon', 'Administration', '', '', '', ''),
(9799, 'SPL-007283', 'Nur Nobi', 'Peon', 'Administration', '', '', '', ''),
(9800, 'SPL-007284', 'Md. Angur', 'Caretaker', 'Administration', '', '', '', ''),
(9801, 'SPL-007285', 'Md. Nipu', 'Driver', 'Administration', '', '', '', ''),
(9802, 'SPL-007286', 'Mohammad Alamgir', 'Driver', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1972866536', 'example@example.com'),
(9803, 'SPL-007287', 'Sumon Mia', 'Executive', 'Human Resource Management', 'Corporate', 'Saif Powertec Ltd.', '1787686347', 'sumon.miah@saifpowertec.com'),
(9804, 'SPL-007288', 'Umme Kausar Sultana', 'Deputy Manager', 'Customer Care', 'Corporate', 'Saif Powertec Ltd.', '1817182075', 'umme.kausar@saifpowertec.com'),
(9805, 'SPL-007289', 'Md. Ahadul Islam', 'Trainee Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '0', ''),
(9806, 'SPL-007293', 'Md. Akib Khan', 'Yard Checker', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1915730321', ''),
(9807, 'SPL-007294', 'Abu Sadat Md. Sayem', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '0', ''),
(9808, 'SPL-007295', 'Y A Moontasir', 'Junior Engineer', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1313447989', 'saifop@bdmail.net'),
(9809, 'SPL-007298', 'Muhammad Ashiquzzaman', 'Senior Manager', 'Human Resource Management', 'Corporate', 'Saif Powertec Ltd.', '1787684204', 'ashiq.zaman@saifpowertec.com'),
(9810, 'SPL-007299', 'A N M Inzamamul Huque Ornim', 'IT Assistant', 'IT', 'Corporate', 'Saif Powertec Ltd.', '1755630129', 'inzam.huque.@saifpowertec.com'),
(9811, 'SPL-007303', 'Md. Homaun Kabir Soarder', 'Service Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1721074316', ''),
(9812, 'SPL-007306', 'Md. Ala Uddin Imran', 'Service Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787684248', 'saifop@bdmail.com'),
(9813, 'SPL-007308', 'Md. Lutfor Rahman', 'Security Guard', 'Administration', '', '', '', ''),
(9814, 'SPL-007317', 'Md Lokman Hossan', 'Tally Clerk', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1725990572', ''),
(9815, 'SPL-007318', 'Md. Tazul Islam', 'Officer', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1755637016', 'saifop@bdmail.com'),
(9816, 'SPL-007319', 'Tasmia Noor', 'Trainee Officer', 'Finance And Accounts', 'Corporate', 'Saif Powertec Ltd.', '1928122298', 'tasmia.noor@saifpowertec.com'),
(9817, 'SPL-007320', 'Abdur Razzak', 'Senior Officer', 'Store', 'Battery', 'Saif Powertec Ltd.', '1755637014', 'razzak.batt@saifpowertec.com'),
(9818, 'SPL-007321', 'Tanzim Kisher Shogan', 'Officer', 'Administration', '', '', '', ''),
(9819, 'SPL-007323', 'Md. Azgar Munsi', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1313448033', 'Saif@saifpowertec.com'),
(9820, 'SPL-007324', 'Md Mukul Mollah', 'Driver', 'Administration', '', '', '', ''),
(9821, 'SPL-007325', 'Delwar Hossain', 'Senior Officer', 'Administration', '', '', '', ''),
(9822, 'SPL-007328', 'Md Khairul Islam', 'Mechanic', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '1919232457', 'example@example.com'),
(9823, 'SPL-007331', 'Md Hasan', 'Driver', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1610208385', 'example@example.com'),
(9824, 'SPL-007333', 'Md Kamrul Hassan', 'Yard Checker', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1715313114', ''),
(9825, 'SPL-007334', 'Md Yousuf', 'Yard Checker', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '0', ''),
(9826, 'SPL-007336', 'Md Saroar Islam', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1675500787', ''),
(9827, 'SPL-007337', 'Md Umar Faruk', 'Office Assistant', 'Administration', '', '', '', ''),
(9828, 'SPL-007338', 'Babu Molla', 'Security Guard', 'Administration', '', '', '', ''),
(9829, 'SPL-007339', 'Khairul Islam', 'Officer', 'Gel And VRLA', 'Battery', 'Saif Powertec Ltd.', '1755637015', 'khairul.batt@saifpowertec.com'),
(9830, 'SPL-007340', 'Md Bahauddin Bhuiyan', 'Senior Manager', 'Business Development', 'Corporate', 'Saif Powertec Ltd.', '1755543163', ''),
(9831, 'SPL-007341', 'Md Jalal Uddin', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1798511560', ''),
(9832, 'SPL-007342', 'Mohammed Babul', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1830000216', ''),
(9833, 'SPL-007343', 'A S A Mahedi Alam Khan', 'Assistant Manager', 'Legal', 'Corporate', 'Saif Powertec Ltd.', '1670666123', 'mehedi.alam@saifpowertec.com'),
(9834, 'SPL-007344', 'Prodip Kumar Biswas', 'Assistant Manager', 'Marketing And Sales- Export And Corporate', 'Battery', 'Saif Powertec Ltd.', '1859347257', 'prodip.batt@saifpowertec.com'),
(9835, 'SPL-007345', 'Md. Masud', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1864964636', ''),
(9836, 'SPL-007348', 'Md.Monir Hossain Mahmud', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '1911034596', ''),
(9837, 'SPL-007349', 'Md Monuar Hosen', 'Trainee RTG Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '1951569711', ''),
(9838, 'SPL-007350', 'Md. Bulbul Islam', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1723983200', ''),
(9839, 'SPL-007351', 'Ashis Kumar Sharan', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1777104920', ''),
(9840, 'SPL-007352', 'Moniruzzaman', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1922408493', ''),
(9841, 'SPL-007355', 'Md. Moyenul Islam', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1750309888', ''),
(9842, 'SPL-007356', 'Shovon Sen', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1942425448', ''),
(9843, 'SPL-007357', 'Md. Farhan Masuk Limon', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1716914579', ''),
(9844, 'SPL-007358', 'Md.Tanvir Islam', 'Trainee Yard Checker', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '1868932231', ''),
(9845, 'SPL-007364', 'Shajal Kumer Sharma', 'Chief Operating Officer', 'Factory Operation', 'Battery', 'Saif Powertec Ltd.', '1713064885', 'shajal.sharma@saifpowertec.com');
INSERT INTO `inv_employee` (`id`, `employeeid`, `name`, `designation`, `department`, `division`, `company`, `phone`, `email`) VALUES
(9846, 'SPL-007407', 'Manik Chandra Majumder', 'Door Closer', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1855478165', ''),
(9847, 'SPL-007408', 'Md Sazzat Hossain', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1843286039', ''),
(9848, 'SPL-007409', 'Abdul Latif Zahid', 'Head of Product and Service', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1914865960', 'alzahid@saifpowertec.com'),
(9849, 'SPL-007410', 'Md Ajam Khan', 'Trainee Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1864837272', ''),
(9850, 'SPL-007411', 'Stalin Khisha', 'Junior Engineer', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1914293068', ''),
(9851, 'SPL-007412', 'Mohammad Main Uddin', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1849725623', ''),
(9852, 'SPL-007413', 'Tareq Hasan', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1912924928', ''),
(9853, 'SPL-007416', 'Ryhan Uddin', 'Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1759014585', ''),
(9854, 'SPL-007417', 'Md. Rasel Khan', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1742487599', ''),
(9855, 'SPL-007418', 'Kabir Hossain', 'Trainee Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1722071531', ''),
(9856, 'SPL-007421', 'Sheak Sohidul Islam', 'Service Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787684033', 'saifop@bdmail.com'),
(9857, 'SPL-007423', 'Md Kamal Hossain', 'Driver', 'Administration', '', '', '', ''),
(9858, 'SPL-007424', 'Md Hannan', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1755072080', ''),
(9859, 'SPL-007425', 'Mohammad Sajjad Hosen', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '1820324603', ''),
(9860, 'SPL-007429', 'Mohammad Shahidul Alam Miah', 'Chief Operating Officer', 'Management', 'Renewable Energy', 'Saif Powertec Ltd.', '0', 'shahidul.alam@saifpowertec.com'),
(9861, 'SPL-007430', 'Md. Hujaifa', 'Security Guard', 'Administration', '', '', '', ''),
(9862, 'SPL-007432', 'Sajib Mia', 'Security Guard', 'Administration', '', '', '', ''),
(9863, 'SPL-007435', 'Akram Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(9864, 'SPL-007437', 'Md Sultan Hossain', 'Brand Promoter', 'Brand Communication', '', '', '', ''),
(9865, 'SPL-007438', 'Tanveer Qureshee', 'Web Designer', 'IT', 'Corporate', 'Saif Powertec Ltd.', '1755543176', 'tanveer.qureshee@saifpowertec.com'),
(9866, 'SPL-007440', 'Md. Shofiqul Islam Rubel', 'Service Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787684208', 'saifop@bdmail.com'),
(9867, 'SPL-007441', 'Asim Kumar Biswas', 'Senior Officer', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1787684016', 'asimkumar.batt@saifpowertec.com'),
(9868, 'SPL-007442', 'Md. Rahamat Ali', 'Officer', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1787684013', 'rahamatali.batt@saifpowertec.com'),
(9869, 'SPL-007445', 'Omer Faruk Reyad', 'Peon', 'Delivery', '', '', '', ''),
(9870, 'SPL-007446', 'Md Taslim Uddin', 'Delivery Checker', 'Delivery', '', '', '', ''),
(9871, 'SPL-007447', 'Md Abdul Mannan', 'Chief Marketing Officer', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1714096602', 'abdul.mannan@saifpowertec.com'),
(9872, 'SPL-007448', 'Md Jubayer Hosain', 'Senior Officer', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1787684036', 'jubayer.batt@saifpowertec.com'),
(9873, 'SPL-007454', 'F M Mahedi Hasan', 'Junior Engineer', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1947296750', ''),
(9874, 'SPL-007455', 'Md. Anisur Rahman', 'Junior Engineer', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1712608646', ''),
(9875, 'SPL-007456', 'Md. Khairul Islam', 'Junior Engineer', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1828348515', ''),
(9876, 'SPL-007459', 'Md. Shakran Habib', 'Junior Engineer', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1778308552', ''),
(9877, 'SPL-007460', 'Md. Jayed Biswas', 'Junior Engineer', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1313447995', 'saifop@bdmail.net'),
(9878, 'SPL-007461', 'Md. Suman Fakir', 'Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1725012374', ''),
(9879, 'SPL-007462', 'Khukon Chowdhury', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1812077360', ''),
(9880, 'SPL-007463', 'Nayan Dewanjee', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1815045751', ''),
(9881, 'SPL-007464', 'Md. Sazzad Hossain', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1829066370', ''),
(9882, 'SPL-007465', 'Md Robel Hossen', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1813005687', ''),
(9883, 'SPL-007466', 'Md. Kaiyum Hossain', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '1825764245', ''),
(9884, 'SPL-007468', 'Md Anik Islam', 'Executive', 'QMS', 'Corporate', 'Saif Powertec Ltd.', '1755543197', 'anik.islam@saifpowertec.com'),
(9885, 'SPL-007469', 'Salim', 'Technician', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '1725030067', 'example@saifpowertec.com'),
(9886, 'SPL-007471', 'Nayan Mia', 'Brand Promoter', 'Brand Communication', '', '', '', ''),
(9887, 'SPL-007472', 'Md Sahid', 'Harbour Crane Operator', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9888, 'SPL-007473', 'Md Jahangir Alam', 'Harbour Crane Operator', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9889, 'SPL-007474', 'Jamal Uddin', 'Mechanic', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9890, 'SPL-007475', 'Md Tarikul Islam Khokon', 'Harbour Crane Operator', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9891, 'SPL-007477', 'Saydul Islam', 'Assistant Mechanic', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9892, 'SPL-007480', 'Sumon Bhakta', 'Executive', 'MC', 'Battery', 'Saif Powertec Ltd.', '1787684034', 'sumon.bhakta@saifpowertec.com'),
(9893, 'SPL-007483', 'Md Morsed Bapari', 'Technician', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9894, 'SPL-007484', 'Md Golam Rabbi', 'Junior Technician', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9895, 'SPL-007485', 'Gopal Sarker', 'Manager', 'Commercial', 'Battery', 'Saif Powertec Ltd.', '1755543189', 'gopal.batt@saifpowertec.com'),
(9896, 'SPL-007486', 'Tapos Kumer Datta', 'Assistant General Manager', 'Finance And Accounts', 'SPOT', 'Saif Powertec Ltd.', '1755543153', 'tapos.datta@saifpowertec.com'),
(9897, 'SPL-007488', 'Md Koushik Ahmed', 'Yard Checker', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9898, 'SPL-007489', 'Md Rezaul Karim', 'Technician', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9899, 'SPL-007490', 'Md Rafiul Islam Tusar', 'Yard Checker', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9900, 'SPL-007491', 'Md Ikbal Hossain', 'Senior Officer', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1787684037', 'ikbal.batt@saifpowertec.com'),
(9901, 'SPL-007492', 'Nowshed Alam', 'Mechanic', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '1826129019', 'saifop@bdmail.net'),
(9902, 'SPL-007493', 'Md Arifur Rahman', 'Mechanic', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9903, 'SPL-007494', 'Md. Rezaul Karim Chy', 'Harbour Crane Operator', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9904, 'SPL-007495', 'Rejaul Karim', 'Harbour Crane Operator', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9905, 'SPL-007497', 'Md Hanif', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787684033', 'saifop@bdmail.net'),
(9906, 'SPL-007500', 'Kazi Anamul Haque', 'Harbour Crane Operator', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9907, 'SPL-007501', 'Md Toslim Uddin', 'Helper', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9908, 'SPL-007502', 'Emran Hossain', 'Helper', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9909, 'SPL-007505', 'Md Moniruzzaman', 'Assistant Manager', 'RAndD', 'Battery', 'Saif Powertec Ltd.', '1787684038', 'moniruzzaman.batt@saifpowertec.com'),
(9910, 'SPL-007506', 'Shohel Rana', 'Manager', 'Gel And VRLA', 'Battery', 'Saif Powertec Ltd.', '1787684218', 'shohel.batt@saifpowertec.com'),
(9911, 'SPL-007508', 'Md Abdul Halim Molla', 'Driver', 'Administration', '', '', '', ''),
(9912, 'SPL-007511', 'Md Easin Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(9913, 'SPL-007513', 'Rabbi', 'Security Guard', 'Administration', '', '', '', ''),
(9914, 'SPL-007514', 'Md Aktarul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(9915, 'SPL-007516', 'Md Mohshin Reza', 'Security Guard', 'Administration', '', '', '', ''),
(9916, 'SPL-007523', 'Md Mahfuzur Rahman', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(9917, 'SPL-007524', 'Arafat Mahmud', 'Security Guard', 'Administration', '', '', '', ''),
(9918, 'SPL-007525', 'Sahidul Sarder', 'Security Guard', 'Administration', '', '', '', ''),
(9919, 'SPL-007526', 'Md Mamun Islam', 'Security Guard', 'Administration', '', '', '', ''),
(9920, 'SPL-007529', 'Md Sagir Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(9921, 'SPL-007531', 'Md. Shariful Islam', 'Security Guard', 'Administration', '', '', '', ''),
(9922, 'SPL-007534', 'Md. Imam Hasan (Mamun)', 'Senior Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787684052', 'saifop@bdmail.net'),
(9923, 'SPL-007535', 'HM Moniruzzaman', 'Senior Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787684049', 'saifop@bdmail.net'),
(9924, 'SPL-007536', 'Md Nurul Hoda', 'Yard Checker', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9925, 'SPL-007538', 'Md. Masud Rana', 'Security Guard', 'Administration', '', '', '', ''),
(9926, 'SPL-007542', 'Md Asadul', 'Security Guard', 'Administration', '', '', '', ''),
(9927, 'SPL-007544', 'Masum Fakir', 'Security Guard', 'Administration', '', '', '', ''),
(9928, 'SPL-007546', 'Md Shahid', 'Security Guard', 'Administration', '', '', '', ''),
(9929, 'SPL-007547', 'Md Shakil Islam Bhuyain', 'Security Guard', 'Administration', '', '', '', ''),
(9930, 'SPL-007548', 'Md Nasimul Hasan', 'Assistant Manager', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787684207', 'saifop@bdmail.net'),
(9931, 'SPL-007550', 'Md. Sumon Mia', 'Senior Officer', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1755630120', 'sumon.batt@saifpowertec.com'),
(9932, 'SPL-007551', 'Md. Salauddin Gazi', 'Senior Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787684022', 'saifop@bdmail.net'),
(9933, 'SPL-007552', 'Md. Nurul Islam', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787684045', 'saifop@bdmail.net'),
(9934, 'SPL-007553', 'Md. Hasibur Rahman Jihad', 'Documentation Staff Trainee', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9935, 'SPL-007555', 'Abdul Zabbar', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9936, 'SPL-007557', 'Humayun Kabir', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9937, 'SPL-007558', 'Md. Hanif', 'QGC Operator', 'QGC', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9938, 'SPL-007569', 'Noor Moksud Khan', 'Manager', 'Finance And Accounts', 'Corporate', 'Saif Powertec Ltd.', '1713383443', 'noor.moksud@saifpowertec.com'),
(9939, 'SPL-007570', 'Md Shafiqul Islam', 'Deputy Manager', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787684053', 'shafiqul.batt@saifpowertec.com'),
(9940, 'SPL-007571', 'Md Abdul Jalil Mondol', 'Director', 'Legal', 'Corporate', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9941, 'SPL-007572', 'Md Raton Ali Molla', 'Driver', 'Administration', '', '', '', ''),
(9942, 'SPL-007574', 'Jakir Hossain', 'Officer', 'Administration', '', '', '', ''),
(9943, 'SPL-007708', 'Md Hasibur Rahman', 'Security Guard', 'Administration', '', '', '', ''),
(9944, 'SPL-007709', 'Md Abul Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(9945, 'SPL-007711', 'Md Rezaul Islam', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(9946, 'SPL-007712', 'Md Ripon Mia', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(9947, 'SPL-007714', 'Md Ashraf Faruk', 'Security Guard', 'Administration', '', '', '', ''),
(9948, 'SPL-007716', 'Md Mahabul Haque', 'Security Guard', 'Administration', '', '', '', ''),
(9949, 'SPL-007717', 'Md Najmul Hossen', 'Assistant', 'Store', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9950, 'SPL-007718', 'Md Sharif Hossain', 'Driver', 'Administration', '', '', '', ''),
(9951, 'SPL-007719', 'Tareq Hasan', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '', ''),
(9952, 'SPL-007723', 'Kazi Md Masud Rana', 'Door Closer', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9953, 'SPL-007724', 'Md Rijon Hossain', 'Peon', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9954, 'SPL-007725', 'Md Showkat Alam Talukder', 'Senior Manager', 'Sales Operation', 'Battery', 'Saif Powertec Ltd.', '1713383455', 'saifop@bdmail.net'),
(9955, 'SPL-007727', 'Md Monwar Hossain', 'Executive', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9956, 'SPL-007728', 'Delour Hasan Sayed', 'Executive', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9957, 'SPL-007729', 'Atiqur Rahman Bhuiyan', 'Executive', 'IT', 'Corporate', 'Saif Powertec Ltd.', '1787684124', 'atiqur.rahman@saifpowertec.com'),
(9958, 'SPL-007739', 'Md Nazrul Islam', 'Delivery Supervisor', 'Delivery', '', '', '', ''),
(9959, 'SPL-007747', 'Md Ariful Islam', 'Driver', 'Administration', '', '', '', ''),
(9960, 'SPL-007749', 'Md Nur Uddin', 'Driver', 'Administration', '', '', '', ''),
(9961, 'SPL-007751', 'Md Shohel Miah', 'Caretaker', 'Administration', '', '', '', ''),
(9962, 'SPL-007752', 'Moinul Bari Tushar', 'Manager', 'Operation', 'Corporate', 'Saif Powertec Ltd.', '1787684242', 'moinul.batt@saifpowertec.com'),
(9963, 'SPL-007755', 'Md. Sala Uddin', 'Executive', 'Finance And Accounts', 'SPOT', 'Saif Powertec Ltd.', '', 'sala.uddin@saifpowertec.com'),
(9964, 'SPL-007756', 'Md. Shimul Hossan Molla', 'Office Assistant', 'Administration', '', '', '', ''),
(9965, 'SPL-007757', 'Md. Mariful Islam', 'Trainee Officer', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787684104', 'saifop@bdmail.net'),
(9966, 'SPL-007758', 'Md. Shahadat Hossain', 'Manager', 'Finance And Accounts', 'Battery', 'Saif Powertec Ltd.', '1787684056', 'shahadat.batt@saifpowertec.com'),
(9967, 'SPL-007766', 'Md Shafiqul Islam', 'Fork Lift Operator', 'Administration', '', '', '', ''),
(9968, 'SPL-007769', 'Md. Kamrul Hasan', 'Security Guard', 'Administration', '', '', '', ''),
(9969, 'SPL-007775', 'Md Mahbubul Alam', 'Senior Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787686724', 'saifop@bdmail.net'),
(9970, 'SPL-007777', 'Md Ashrafuzzaman Ripon', 'Senior Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787686730', 'saifop@bdmail.net'),
(9971, 'SPL-007778', 'Mohammad Motaher Hossain', 'Senior Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787686348', 'saifop@bdmail.net'),
(9972, 'SPL-007780', 'Md Morad Shaikh', 'Assistant Carpenter', 'Administration', '', '', '', ''),
(9973, 'SPL-007781', 'Asif Bhuya', 'Service Engineer', 'Operation', 'Corporate', 'Saif Powertec Ltd.', '1755543173', 'asif.batt@saifpowertec.com'),
(9974, 'SPL-007782', 'Jannatul Ferdose Flora', 'Officer', 'Purchase And Procurement', 'Corporate', 'Saif Powertec Ltd.', '1787692505', 'jannatul.ferdose@saifpowertec.com'),
(9975, 'SPL-007783', 'Loman Munshi', 'Office Assistant', 'Administration', '', '', '', ''),
(9976, 'SPL-007786', 'Md Rabiul Awal ', 'Driver', 'Administration', '', '', '', ''),
(9977, 'SPL-007790', 'Md Saiful Islam', 'Junior Engineer', 'Operation', 'Sub Station', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9978, 'SPL-007791', 'Md Mizanur Rahman', 'Operation Engineer', 'Operation', 'Sub Station', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9979, 'SPL-007792', 'Arif Mahmud', 'Security Guard', 'Administration', '', '', '', ''),
(9980, 'SPL-007793', 'Md Monir Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(9981, 'SPL-007796', 'Sumaiya Akter Bithi', 'Security Guard', 'Administration', '', '', '', ''),
(9982, 'SPL-007797', 'Ujjal Halder', 'Technician', 'IT', 'Corporate', 'Saif Powertec Ltd.', '1787684240', 'ujjal.halder@saifpowertec.com'),
(9983, 'SPL-007798', 'Md Aminul Islam', 'Office Assistant', 'Administration', '', '', '', ''),
(9984, 'SPL-007808', 'Md Rubel', 'Security Guard', 'Administration', '', '', '', ''),
(9985, 'SPL-007810', 'Saidul Reja Juel', 'Security Guard', 'Administration', '', '', '', ''),
(9986, 'SPL-007812', 'Mosa Mola', 'Driver', 'Administration', '', '', '', ''),
(9987, 'SPL-007813', 'Md Mamun Sharker', 'Security Guard', 'Administration', '', '', '', ''),
(9988, 'SPL-007815', 'Swapan Mazumder', 'Tracer', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(9989, 'SPL-007817', 'Md Hazrat Ali', 'Assistant Manager', 'Finance And Accounts', 'SPOT', 'Saif Powertec Ltd.', '', 'hazrat.ali@saifpowertec.com'),
(9990, 'SPL-007819', 'Raesh Sheik', 'Senior Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1787684119', 'saifop@bdmail.net'),
(9991, 'SPL-007823', 'Hasan Shikder', 'Driver', 'Administration', '', '', '', ''),
(9992, 'SPL-007827', 'Mohammad Easud Mia', 'Caretaker', 'Administration', '', '', '', ''),
(9993, 'SPL-007832', 'Md Razu Ahmed', 'Security Guard', 'Administration', '', '', '', ''),
(9994, 'SPL-007835', 'Oasman Ali', 'Security Guard', 'Administration', '', '', '', ''),
(9995, 'SPL-007836', 'Roni Mia', 'Security Guard', 'Administration', '', '', '', ''),
(9996, 'SPL-007839', 'Md Delowar Hossen', 'Security Officer', 'Administration', '', '', '', ''),
(9997, 'SPL-007841', 'Md Tomizul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(9998, 'SPL-007843', 'Turki Molla', 'Security Guard', 'Administration', '', '', '', ''),
(9999, 'SPL-007845', 'Md Shahajan Bhuyan', 'Helper', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10000, 'SPL-007846', 'Md Jasim', 'Assistant Foreman', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10001, 'SPL-007847', 'Md lsmail Hossain Munjur Bhuiya', 'Helper', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10002, 'SPL-007849', 'Md Abu Taher', 'Office Assistant', 'Administration', '', '', '', ''),
(10003, 'SPL-007850', 'Md Johurul Islam Shahin', 'Office Assistant', 'Administration', '', '', '', ''),
(10004, 'SPL-007853', 'Md Khokan Shikdar', 'Senior Auto Technician', 'Service', 'Ignite Workshop', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10005, 'SPL-007854', 'Md Arif', 'Technician', 'Service', 'Ignite Workshop', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10006, 'SPL-007859', 'Ariful Sheikh', 'Security Guard', 'Administration', '', '', '', ''),
(10007, 'SPL-007860', 'Md Zamrul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10008, 'SPL-007861', 'Md Ebrahim Kazi', 'Security Guard', 'Administration', '', '', '', ''),
(10009, 'SPL-007863', 'Md Mizanur Rahman', 'Security Supervisor', 'Administration', '', '', '', ''),
(10010, 'SPL-007864', 'Arun Jodder', 'Service Engineer', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10011, 'SPL-007865', 'Antor', 'Technician', 'Service', 'Ignite Workshop', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10012, 'SPL-007867', 'Md Rubel Mia', 'Driver', 'Administration', '', '', '', ''),
(10013, 'SPL-007868', 'Md. Alauddin', 'Driver', 'Administration', '', '', '', ''),
(10014, 'SPL-007869', 'Md. Riazul Islam', 'Driver', 'Administration', '', '', '', ''),
(10015, 'SPL-007871', 'Hridoy Mia', 'Cook Helper', 'Administration', '', '', '', ''),
(10016, 'SPL-007872', 'Shahariar Hossain', 'Assistant Manager', 'Charging', 'Battery', 'Saif Powertec Ltd.', '1313447913', 'shahariar.batt@saifpowertec.com'),
(10017, 'SPL-007873', 'Md Salah Uddin Abbasi', 'Manager', 'Business Development', 'Corporate', 'Saif Powertec Ltd.', '1713383457', 'saifop@bdmail.net'),
(10018, 'SPL-007874', 'Md Saiful Islam', 'Driver', 'Administration', '', '', '', ''),
(10019, 'SPL-007876', 'Md Akter Hossain', 'Security Supervisor', 'Administration', '', '', '', ''),
(10020, 'SPL-007878', 'Md Uzzal Khan', 'Security Guard', 'Administration', '', '', '', ''),
(10021, 'SPL-007879', 'Mamun Mia', 'Security Guard', 'Administration', '', '', '', ''),
(10022, 'SPL-007881', 'Md Raj Sheikh', 'Security Guard', 'Administration', '', '', '', ''),
(10023, 'SPL-007883', 'Arifin  Khan', 'Officer', 'Human Resource Management', 'Corporate', 'Saif Powertec Ltd.', '1313447911', 'arifin.khan@saifpowertec.com'),
(10024, 'SPL-007884', 'Md Jahidul Islam', 'Executive', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '1313447914', 'jahidul.islam@saifpowertec.com'),
(10025, 'SPL-007885', 'Md Munna Amin', 'Technician', 'Administration', '', '', '', ''),
(10026, 'SPL-007886', 'Md Shariful Islam', 'Cleaner', 'Administration', '', '', '', ''),
(10027, 'SPL-007887', 'Apu Das', 'Cleaner', 'Administration', '', '', '', ''),
(10028, 'SPL-007888', 'Md Masud Rana', 'Peon', 'Administration', '', '', '', ''),
(10029, 'SPL-007889', 'Md Motiur Rahman', 'Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10030, 'SPL-007890', 'Lelin Roy', 'Electrician', 'Administration', '', '', '', ''),
(10031, 'SPL-007891', 'Easin Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(10032, 'SPL-007892', 'Masudur Rahaman', 'Security Guard', 'Administration', '', '', '', ''),
(10033, 'SPL-007897', 'Mahfuz Ahmed', 'Executive', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '', 'mahfuz.ahmed@saifpowertec.com'),
(10034, 'SPL-007898', 'Md Efthaer Bhuiyan', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10035, 'SPL-007899', 'Md Jobayer Hossain Khan', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10036, 'SPL-007901', 'Md Shihabul Hasan', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10037, 'SPL-007902', 'Rimon khan', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10038, 'SPL-007903', 'Shihabul Hasan', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10039, 'SPL-007904', 'Shamim', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10040, 'SPL-007905', 'Md Tuhin Hossain', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10041, 'SPL-007906', ' Md Tipu Sultan', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10042, 'SPL-007908', 'Md Rashadul Islam', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10043, 'SPL-007909', 'Md Mahmud Hasan', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10044, 'SPL-007910', 'Md Kazi Kamrul Hassan', 'Junior Engineer', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10045, 'SPL-007911', 'Md Kaisar Uddin Kasfi', 'Junior Engineer', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10046, 'SPL-007915', 'Md Monsor Alam', 'Junior Engineer', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10047, 'SPL-007919', 'Avishek Chowdhury', 'Junior Engineer', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10048, 'SPL-007921', ' Nur Mohammed', 'Helper', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10049, 'SPL-007923', 'Ibrahim Khalil', 'Senior Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10050, 'SPL-007924', 'Md Jahangir Alam', 'Helper', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10051, 'SPL-007927', 'Mohammad Romjan Ali', 'Helper', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10052, 'SPL-007929', 'Subodh Kumer Voumik', 'Helper', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10053, 'SPL-007930', 'Md Mamaun', 'Helper', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10054, 'SPL-007931', 'Abdul Aziz', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10055, 'SPL-007932', 'Md Abdullah Mamun', 'Helper', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10056, 'SPL-007933', 'Md Nahim Uddin', 'Helper', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10057, 'SPL-007935', 'Md Jahidul Islam', 'Helper', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10058, 'SPL-007936', 'Akter Hossain', 'Helper', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10059, 'SPL-007937', 'Shantha Chandra Das', 'Junior Engineer', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10060, 'SPL-007938', 'Md Sazzad Hossain', 'Junior Engineer', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10061, 'SPL-007939', 'Md Kamal', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10062, 'SPL-007940', 'Ashok Barua', 'Driver', 'Administration', '', '', '', ''),
(10063, 'SPL-007941', 'Md Sumon Molla', 'Driver', 'Administration', '', '', '', ''),
(10064, 'SPL-007942', 'Md Mohasin Ali', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(10065, 'SPL-007943', 'Md Jibon Mia', 'Security Guard', 'Administration', '', '', '', ''),
(10066, 'SPL-007947', ' Md Bukhari Sheikh', 'Security Guard', 'Administration', '', '', '', ''),
(10067, 'SPL-007951', 'Sinthia Rahman Nisha', 'Front Desk Officer', 'Administration', '', '', '', ''),
(10068, 'SPL-007953', 'Md Al Amin Hosein', 'Executive', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '', 'alamin.hosein@saifpowertec.com'),
(10069, 'SPL-007954', 'Istiaque Ahamed', 'Area Manager', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10070, 'SPL-007955', 'Md Mahfuzer Rahman', 'Executive', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '', 'mahfuzer.rahman@saifpowertec.com'),
(10071, 'SPL-007957', 'Md Raijul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10072, 'SPL-007958', 'Md Mofizur Rahman', 'Security Guard', 'Administration', '', '', '', ''),
(10073, 'SPL-007963', 'Md Al Amin', 'Trailer Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10074, 'SPL-007964', 'Didar Hossain', 'Assistant Cook', 'Administration', '', '', '', ''),
(10075, 'SPL-007965', 'Sharfaraz Ali Haider', 'Officer', 'Administration', '', '', '', ''),
(10076, 'SPL-007967', 'Subrata Halder', 'Officer', 'Administration', '', '', '', ''),
(10077, 'SPL-007968', 'Tanjina Biswas', 'Officer', 'Administration', '', '', '', ''),
(10078, 'SPL-007969', 'Delowar Hossain', 'Executive Director', 'Commercial', 'Corporate', 'Saif Powertec Ltd.', '1313447941', 'delowar.hossain@saifpowertec.com'),
(10079, 'SPL-007970', 'Md Jubaer Ahmed Tushar', 'Officer', 'Service', 'Ignite Workshop', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10080, 'SPL-007972', 'Md Khurshed Alam', 'Senior Officer', 'Administration', '', '', '', ''),
(10081, 'SPL-007973', 'Jonayed', 'Trailer Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10082, 'SPL-007974', 'Md Ajijul Haque', 'Trailer Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10083, 'SPL-007975', 'Yasin Mollik', 'Trailer Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10084, 'SPL-007976', 'Md Emam Hasan Sagor', 'Trailer Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10085, 'SPL-007978', 'Maruf Hossain', 'Helper', 'Administration', '', '', '', ''),
(10086, 'SPL-007980', 'Md Joynal', 'Driver', 'Administration', '', '', '', ''),
(10087, 'SPL-007981', 'Md Yousuf Nobi', 'Driver', 'Administration', '', '', '', ''),
(10088, 'SPL-007984', 'Md Rafiqul Islam Mintu', 'Security Guard', 'Administration', '', '', '', ''),
(10089, 'SPL-007985', 'Syed Nirob Ali', 'Security Guard', 'Administration', '', '', '', ''),
(10090, 'SPL-007993', 'Md Emam Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(10091, 'SPL-007994', 'Md Mahabbat Ali', 'Security Guard', 'Administration', '', '', '', ''),
(10092, 'SPL-007996', 'Md Nazmul Kabir', 'Security Guard', 'Administration', '', '', '', ''),
(10093, 'SPL-007997', 'Tareq', 'Driver', 'Administration', '', '', '', ''),
(10094, 'SPL-007999', 'Md Al Amin Shikder', 'Driver', 'Administration', '', '', '', ''),
(10095, 'SPL-008003', 'Md Rasel Mia', 'Security Guard', 'Administration', '', '', '', ''),
(10096, 'SPL-008010', 'Md Zalal Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(10097, 'SPL-008012', 'Farhana Moinul Nishi', 'Officer', 'Human Resource Management', 'Corporate', 'Saif Powertec Ltd.', '', 'farhana.moinul@saifpowertec.com'),
(10098, 'SPL-008013', 'Sumaiya Rahman Ratri', 'Officer', 'Customer Care', 'Corporate', 'Saif Powertec Ltd.', '1313448007', 'sumaiya.rahman@saifpowertec.com'),
(10099, 'SPL-008017', 'Ali Hasan', 'Security Guard', 'Administration', '', '', '', ''),
(10100, 'SPL-008019', 'Md Faruk Hosan', 'Security Guard', 'Administration', '', '', '', ''),
(10101, 'SPL-008020', 'Md Raihan Sikder', 'Security Guard', 'Administration', '', '', '', ''),
(10102, 'SPL-008023', 'Md Kamrul Hasan', 'Security Guard', 'Administration', '', '', '', ''),
(10103, 'SPL-008024', 'Md Zahedul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10104, 'SPL-008025', 'Md Rajib Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(10105, 'SPL-008026', 'Rasel Molla', 'Security Guard', 'Administration', '', '', '', ''),
(10106, 'SPL-008029', 'Md Anamul Hosen', 'Security Guard', 'Administration', '', '', '', ''),
(10107, 'SPL-008030', 'Md Al Amin', 'Security Guard', 'Administration', '', '', '', ''),
(10108, 'SPL-008031', 'Moin Uddin', 'Security Guard', 'Administration', '', '', '', ''),
(10109, 'SPL-008032', 'Md Sagor Ali', 'Security Guard', 'Administration', '', '', '', ''),
(10110, 'SPL-008033', 'Md Badsha Ali', 'Security Guard', 'Administration', '', '', '', ''),
(10111, 'SPL-008034', 'Md Shamim Hawlader', 'Security Guard', 'Administration', '', '', '', ''),
(10112, 'SPL-008035', 'Md Didar Hosen', 'Security Guard', 'Administration', '', '', '', ''),
(10113, 'SPL-008037', 'Md Rahen Ali', 'Security Guard', 'Administration', '', '', '', ''),
(10114, 'SPL-008038', 'Md Shakil Hossen', 'Security Guard', 'Administration', '', '', '', ''),
(10115, 'SPL-008039', 'Md Hridoy Hossen', 'Security Guard', 'Administration', '', '', '', ''),
(10116, 'SPL-008041', 'Md Arman Mia', 'Security Guard', 'Administration', '', '', '', ''),
(10117, 'SPL-008042', 'Raj Mathiyas Purification', 'Security Guard', 'Administration', '', '', '', ''),
(10118, 'SPL-008044', 'Sajit Robi Dash', 'Driver', 'Administration', '', '', '', ''),
(10119, 'SPL-008047', 'Md Rajib', 'Junior Technician', 'Service', 'Ignite Workshop', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10120, 'SPL-008050', 'Lalu Biswas', 'Trainee Yard Checker', 'CTMS', '', '', '', ''),
(10121, 'SPL-008051', 'Sumon Hossain', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10122, 'SPL-008052', 'Sumon Kumar Biswas', 'Trainee Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10123, 'SPL-008054', 'Mohammed Jobayer Hosen', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10124, 'SPL-008055', 'Md Younus', 'Driver', 'Administration', '', '', '', ''),
(10125, 'SPL-008056', 'Hossain Imam Chowdhury', 'Manager', 'Administration', '', '', '', ''),
(10126, 'SPL-008057', 'Shahnawaz Hossain Ahmed', 'Manager', 'Business Development', 'Corporate', 'Saif Powertec Ltd.', '1313448041', 'shahahmed@saifpowertec.com'),
(10127, 'SPL-008058', 'Nur Hossain', 'Executive', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '', 'nur.hossain@saifpowertec.com'),
(10128, 'SPL-008059', 'Md Alamgir Hossain', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10129, 'SPL-008061', 'Md Arif Hossain', 'Officer', 'Administration', '', '', '', ''),
(10130, 'SPL-008062', 'Md lmdadul Haque', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10131, 'SPL-008063', 'Shoekat Hossain', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10132, 'SPL-008065', 'Md Samiul Islam', 'Trainee Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10133, 'SPL-008067', 'Md Shohag Shaikh', 'Trainee Yard Checker', 'CCT Yard', '', '', '', ''),
(10134, 'SPL-008068', 'Ekramul Islam', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10135, 'SPL-008069', 'Md Enamul Moral', 'Trainee Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10136, 'SPL-008070', 'Md Kamal Hossin', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10137, 'SPL-008072', 'Abul Hasnat', 'Trainee Yard Checker', 'CCT Yard', '', '', '', ''),
(10138, 'SPL-008073', 'Md Javed Hossain', 'Trainee Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10139, 'SPL-008074', 'Mohammad Shajjad Alam', 'Trainee Yard Checker', 'CCT Yard', '', '', '', ''),
(10140, 'SPL-008075', 'Md Wazed Alam', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10141, 'SPL-008076', ' Md Hasan Murad', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10142, 'SPL-008077', ' Iqbal Hasan', 'Trainee Yard Checker', 'Ship Planning', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10143, 'SPL-008078', 'Uzzal Kabiraj', 'Site Engineer', 'Operation', 'Renewable Energy', 'Saif Powertec Ltd.', '1730377034', 'uzzal.kabiraj@saifpowertec.com'),
(10144, 'SPL-008079', 'Sabak Burua', 'Junior Technician', 'Service', 'Ignite Workshop', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10145, 'SPL-008082', 'Sukanto Biswas', 'Area Manager', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10146, 'SPL-008087', 'Mehedi Hasan', 'Security Guard', 'Administration', '', '', '', ''),
(10147, 'SPL-008088', 'Dalen Tripura', 'Security Guard', 'Administration', '', '', '', ''),
(10148, 'SPL-008095', 'Md Moklesur Rahaman', 'Security Guard', 'Administration', '', '', '', ''),
(10149, 'SPL-008096', 'Md Anowar Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(10150, 'SPL-008097', 'Md Imran', 'Security Guard', 'Administration', '', '', '', ''),
(10151, 'SPL-008099', 'Md Raju Shorif', 'Security Guard', 'Administration', '', '', '', ''),
(10152, 'SPL-008100', 'Antor Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(10153, 'SPL-008103', 'Md. Nezam Uddin Rakib', 'Peon', 'Administration', '', '', '', ''),
(10154, 'SPL-008104', 'Md Muzammel Hosen', 'Trainee Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10155, 'SPL-008105', 'Md Yasin', 'Cleaner', 'Administration', '', '', '', ''),
(10156, 'SPL-008107', 'Md Shablu Mia', 'Senior Technician', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10157, 'SPL-008108', 'Mintu Sheikh', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10158, 'SPL-008110', 'Md Jahangir Hossain', 'Trainee Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10159, 'SPL-008111', 'Md Rafiul Islam Ridoy', 'Junior Engineer', 'Operation', 'Sub Station', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10160, 'SPL-008112', 'Md Salauddin', 'Senior Officer', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '', 'salauddin.batt@saifpowertec.com'),
(10161, 'SPL-008113', 'Md Samiuzzaman', 'Technical Helper', 'Maintenance', 'CTED-Dhaka', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10162, 'SPL-008114', 'Md Abdul Hamid', 'Driver', 'Administration', '', '', '', ''),
(10163, 'SPL-008116', 'Dulal Roy', 'Driver', 'Administration', '', '', '', ''),
(10164, 'SPL-008117', 'Md Saiful Islam', 'Driver', 'Administration', '', '', '', ''),
(10165, 'SPL-008118', 'Nur Mohammed Tuhin', 'Senior Officer', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10166, 'SPL-008119', 'Belal Hossen', 'Helper', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10167, 'SPL-008122', 'Tofayel Ahmed', 'Driver', 'Administration', '', '', '', ''),
(10168, 'SPL-008124', 'Ziaur Rahaman', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(10169, 'SPL-008127', 'Rajip Hasan', 'Security Guard', 'Administration', '', '', '', ''),
(10170, 'SPL-008128', 'Mohammed Tafiqul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10171, 'SPL-008135', 'Md Mofazzel Hossin', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(10172, 'SPL-008138', 'Abdul Mamun', 'Security Guard', 'Administration', '', '', '', ''),
(10173, 'SPL-008141', 'Habibur Rahaman', 'Executive', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1730783578', 'saifop@bdmail.net'),
(10174, 'SPL-008142', 'Md Rofiqul Islam', 'Officer', 'Commercial', 'Corporate', 'Saif Powertec Ltd.', '', 'rofiqul.islam@saifpowertec.com'),
(10175, 'SPL-008143', 'Md Nurul Islam', 'Senior Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10176, 'SPL-008144', 'Monoronjon Sarder', 'Senior Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10177, 'SPL-008146', 'Shamol Rozario', 'Cook', 'Service', 'Ignite Workshop', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10178, 'SPL-008148', 'Md Sohag', 'Junior Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10179, 'SPL-008149', 'Abdul Hamid', 'Senior Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10180, 'SPL-008150', 'Rakib Hasan', 'Peon', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10181, 'SPL-008151', 'Md Shajjad Alam', 'Peon', 'Delivery', '', '', '', ''),
(10182, 'SPL-008152', 'Md Ismail', 'Cook', 'Administration', '', '', '', ''),
(10183, 'SPL-008155', 'Suman', 'Helper', 'Administration', '', '', '', ''),
(10184, 'SPL-008156', 'Md Abu Taleb', 'Junior Technician', 'Service', 'Ignite Workshop', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10185, 'SPL-008157', 'Md Arif', 'Driver', 'Administration', '', '', '', ''),
(10186, 'SPL-008158', 'Md Mahabur Molla', 'Driver', 'Administration', '', '', '', ''),
(10187, 'SPL-008160', 'Md lmran Sikder', 'Driver', 'Administration', '', '', '', ''),
(10188, 'SPL-008163', 'Md Altaf Hossain Khan', 'Director', 'Administration', '', '', '', ''),
(10189, 'SPL-008164', 'Md Rakib Hossen', 'Security Guard', 'Administration', '', '', '', ''),
(10190, 'SPL-008165', 'Sakil Howlader', 'Security Guard', 'Administration', '', '', '', ''),
(10191, 'SPL-008167', ' Md Tareq', 'Security Guard', 'Administration', '', '', '', ''),
(10192, 'SPL-008171', 'Md Zanu Mia', 'Security Supervisor', 'Administration', '', '', '', ''),
(10193, 'SPL-008172', 'Md Tanbin', 'Security Guard', 'Administration', '', '', '', ''),
(10194, 'SPL-008173', 'Ayon Sarker Santo', 'Security Guard', 'Administration', '', '', '', ''),
(10195, 'SPL-008176', 'Tamjidur Rahman', 'Security Guard', 'Administration', '', '', '', ''),
(10196, 'SPL-008179', 'Md Hafizul Sarker', 'Security Guard', 'Administration', '', '', '', ''),
(10197, 'SPL-008180', 'Rayagual Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10198, 'SPL-008181', 'Palash Chandra Dey', 'Assistant Manager', 'Business Development', 'Corporate', 'Saif Powertec Ltd.', '1313708118', 'palash.chandra@saifpowertec.com'),
(10199, 'SPL-008182', 'Md Liakot Ali Ripon', 'Technician', 'Assembly', '', '', '', ''),
(10200, 'SPL-008183', 'Md Rizon', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10201, 'SPL-008184', 'Khairul Anwar Chowdhury', 'Manager', 'Human Resource Management', 'SPOT', 'Saif Powertec Ltd.', '1313448110', 'khairul.anwar@saifpowertec.com'),
(10202, 'SPL-008185', 'Md Eamdadul Haque', 'Executive', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10203, 'SPL-008186', 'Md Sohal Rana', 'Executive', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10204, 'SPL-008187', 'Md Riaz', 'Junior Technician', 'Service', 'Ignite Workshop', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10205, 'SPL-008188', 'Md Masum Billah', 'Senior Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10206, 'SPL-008189', 'Mahummad Mainul Islam', 'Door Closer', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10207, 'SPL-008190', 'Mohammad Abdul Mannan', 'Door Closer', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10208, 'SPL-008193', 'Md A Malek', 'Driver', 'Administration', '', '', '', ''),
(10209, 'SPL-008195', 'Santo Sarkar', 'Security Guard', 'Administration', '', '', '', ''),
(10210, 'SPL-008198', 'Md Habibullah Hossen', 'Security Guard', 'Administration', '', '', '', ''),
(10211, 'SPL-008200', 'Mohammad Sadeq', 'Security Guard', 'Administration', '', '', '', ''),
(10212, 'SPL-008201', 'Md Rashed Uddin', 'Security Guard', 'Administration', '', '', '', ''),
(10213, 'SPL-008206', 'Rasel Mia', 'Security Guard', 'Administration', '', '', '', ''),
(10214, 'SPL-008209', 'Sree Proshanto Biswas', 'Security Guard', 'Administration', '', '', '', ''),
(10215, 'SPL-008211', 'Shahin Molla', 'Security Guard', 'Administration', '', '', '', ''),
(10216, 'SPL-008213', 'Md Jahedul', 'Security Guard', 'Administration', '', '', '', ''),
(10217, 'SPL-008214', 'Md Rahman Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10218, 'SPL-008215', 'Md Hasanur Rahman', 'Security Guard', 'Administration', '', '', '', ''),
(10219, 'SPL-008216', 'Md Rashedul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10220, 'SPL-008217', 'Mohammad Kafil Uddin', 'Trailer Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10221, 'SPL-008218', 'Md Aslam Hossain', 'Trailer Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10222, 'SPL-008219', 'Md Rasel Mia', 'Trailer Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10223, 'SPL-008220', 'Md Mahfuzur Rahman', 'Assistant General Manager', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '', 'mahfuzurrahman@saifpowertec.com'),
(10224, 'SPL-008224', 'Mohammad Salim Uddin Chowdhury', 'Field Assistant', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10225, 'SPL-008225', 'Md Balal Hossain', 'Technician', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10226, 'SPL-008226', 'Md Jahid Hassan', 'Field Assistant', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10227, 'SPL-008227', 'Md Aminul Islam Shahin', 'Project In-charge', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10228, 'SPL-008230', 'Md Masud Rana', 'Field Assistant', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10229, 'SPL-008231', 'Dolan Das Dilip', 'Door Closer', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10230, 'SPL-008233', 'Mizanur Rahman', 'SAE', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10231, 'SPL-008235', 'Dulal Mia', 'Project In-charge', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10232, 'SPL-008236', 'Md Sohel Jamodder', 'Project In-charge', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10233, 'SPL-008242', 'Md Zahurul Islam', 'Branch Manager', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10234, 'SPL-008244', 'Md Arif Billha', 'Project In-charge', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10235, 'SPL-008249', 'Md Ashraful Islam', 'Project In-charge', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10236, 'SPL-008250', 'Md Tajul Islam', 'Field Assistant', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10237, 'SPL-008251', 'Shyamal Kuamar Mondal', 'Project In-charge', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10238, 'SPL-008253', 'Md Nazrul Islam', 'Project In-charge', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10239, 'SPL-008255', 'Md Alamgir Kabir', 'Technician', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10240, 'SPL-008256', 'Md Motasim Billah', 'Project In-charge', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10241, 'SPL-008258', 'Sabuj Sutradhor', 'Project In-charge', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10242, 'SPL-008262', 'Md Shafiqul Islam', 'Technician', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10243, 'SPL-008264', 'Abdul Malek', 'Technician', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10244, 'SPL-008269', 'Md Khairul Islam', 'Project In-charge', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10245, 'SPL-008270', 'Md Firoz Hossain', 'Field Assistant', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10246, 'SPL-008271', 'Golam Mostofa', 'Project In-charge', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10247, 'SPL-008272', 'Md Rasel Hossain', 'Project In-charge', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10248, 'SPL-008273', 'Md Limon Miah', 'Field Assistant', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10249, 'SPL-008275', 'Md Azmot Talukdar', 'Field Assistant', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10250, 'SPL-008276', 'Md Nazrul Islam', 'Project In-charge', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10251, 'SPL-008278', 'Md Mahabub Alam', 'Auditor', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10252, 'SPL-008279', 'Md Mokhlesur Rahman', 'Auditor', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10253, 'SPL-008280', 'Md Kaykokbad', 'Auditor', 'Kabikha Project', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10254, 'SPL-008283', 'Md Saiful Islam', 'Driver', 'Administration', '', '', '', ''),
(10255, 'SPL-008284', 'Md Jamal', 'Driver', 'Administration', '', '', '', ''),
(10256, 'SPL-008285', 'Md Shahadat Hossain', 'Area Manager', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '', 'shahadat.hussain@saifpowertec.com'),
(10257, 'SPL-008286', 'Shawkat Ali Choudhury', 'Executive Director', 'Business Development', 'Corporate', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10258, 'SPL-008287', 'Md Yousuf Iqbal Chowdhury', 'Executive Director', 'Business Development', 'Corporate', 'Saif Powertec Ltd.', '', 'yousufchy@saifpowertec.com'),
(10259, 'SPL-008289', 'Md Zahid Hassan Pavel', 'Caretaker', 'Administration', '', '', '', ''),
(10260, 'SPL-008290', 'Md Manik', 'Security Guard', 'Administration', '', '', '', ''),
(10261, 'SPL-008291', 'Md Mahbub Alam', 'Security Supervisor', 'Administration', '', '', '', ''),
(10262, 'SPL-008292', 'Md Alamgir Dewan', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(10263, 'SPL-008293', 'Md Shafiqul Islam', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(10264, 'SPL-008298', 'Md Asadul Mia', 'Security Guard', 'Administration', '', '', '', ''),
(10265, 'SPL-008303', 'Rahadul Mollah', 'Security Guard', 'Administration', '', '', '', ''),
(10266, 'SPL-008304', 'Md Mostafa Morol', 'Security Guard', 'Administration', '', '', '', ''),
(10267, 'SPL-008306', 'Dhurbo Kumar Mondal', 'Security Guard', 'Administration', '', '', '', ''),
(10268, 'SPL-008307', 'Md Mahfuj Kazi', 'Security Guard', 'Administration', '', '', '', ''),
(10269, 'SPL-008310', 'Alam Hossin', 'Security Guard', 'Administration', '', '', '', ''),
(10270, 'SPL-008311', 'Md Jony Ahmad', 'Security Guard', 'Administration', '', '', '', ''),
(10271, 'SPL-008312', 'Zibon Madber', 'Helper', 'Administration', '', '', '', ''),
(10272, 'SPL-008315', 'Rony Das', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10273, 'SPL-008316', 'Md Shaidul Islam', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10274, 'SPL-008317', 'Md Rubel Islam', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10275, 'SPL-008318', 'Delowar Hossain', 'Trainee Yard Checker', 'CCT Yard', '', '', '', ''),
(10276, 'SPL-008319', 'Md Safiqul Islam', 'Trainee Yard Checker', 'CCT Yard', '', '', '', '');
INSERT INTO `inv_employee` (`id`, `employeeid`, `name`, `designation`, `department`, `division`, `company`, `phone`, `email`) VALUES
(10277, 'SPL-008320', 'Md Emon Hossen', 'Trainee Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10278, 'SPL-008321', 'Md Sujan Islam', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10279, 'SPL-008322', 'Aminur Rahman Khan', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10280, 'SPL-008324', 'Khairul Islam', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10281, 'SPL-008325', 'Hasimur Rahman', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10282, 'SPL-008326', 'Sujoy Kumar', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10283, 'SPL-008327', 'Md lmran Hossain', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10284, 'SPL-008329', 'Raihan Hossain', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10285, 'SPL-008330', 'Md Momin Molla', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10286, 'SPL-008331', 'Md Abdur Rahman', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10287, 'SPL-008332', 'Alamin Gazi', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10288, 'SPL-008333', 'Narayan Chandra Das', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10289, 'SPL-008334', 'Yeasin Khan', 'Trainee RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10290, 'SPL-008341', 'Md Mizanur Rahman', 'Security Supervisor', 'Administration', '', '', '', ''),
(10291, 'SPL-008344', 'Md Sabbir Ali', 'Security Guard', 'Administration', '', '', '', ''),
(10292, 'SPL-008345', 'Khan Mahmud  Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(10293, 'SPL-008346', 'Kawser', 'Security Guard', 'Administration', '', '', '', ''),
(10294, 'SPL-008347', 'Raju Ahmed', 'Security Guard', 'Administration', '', '', '', ''),
(10295, 'SPL-008350', 'Md Mafijul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10296, 'SPL-008351', 'Aksadul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10297, 'SPL-008354', 'Md Saiful Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10298, 'SPL-008355', 'Md Samim Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10299, 'SPL-008357', 'Momin Mia', 'Security Guard', 'Administration', '', '', '', ''),
(10300, 'SPL-008358', 'Md Arif', 'Security Guard', 'Administration', '', '', '', ''),
(10301, 'SPL-008359', 'Saharia Ahmed Roni', 'Security Guard', 'Administration', '', '', '', ''),
(10302, 'SPL-008363', 'Md Ashraf Hossain Bikash', 'Security Guard', 'Administration', '', '', '', ''),
(10303, 'SPL-008364', 'Abdullah Al Mamun', 'Security Guard', 'Administration', '', '', '', ''),
(10304, 'SPL-008365', 'Md Ferozul  Islam', 'Peon', 'Administration', '', '', '', ''),
(10305, 'SPL-008366', 'Md Ariful Islam', 'Junior Technician', 'Operation', 'Sub Station', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10306, 'SPL-008367', 'Afjal Hossain Opu', 'Trainee Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10307, 'SPL-008368', 'Md Jahidur Rahaman', 'Executive', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '', 'jahidur.rahaman@saifpowertec.com'),
(10308, 'SPL-008369', 'Anichur Rahman Shimul ', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(10309, 'SPL-008370', 'Nazim Uddin ', 'Security Guard', 'Administration', '', '', '', ''),
(10310, 'SPL-008371', 'Md Ibrahim ', 'Security Guard', 'Administration', '', '', '', ''),
(10311, 'SPL-008373', 'Md Kawsar Hossain ', 'Security Guard', 'Administration', '', '', '', ''),
(10312, 'SPL-008378', 'Md Sabuj', 'Security Guard', 'Administration', '', '', '', ''),
(10313, 'SPL-008379', 'Md Shakhawat Hossain Mukul ', 'Security Guard', 'Administration', '', '', '', ''),
(10314, 'SPL-008380', 'Md Zakaria', 'Security Guard', 'Administration', '', '', '', ''),
(10315, 'SPL-008384', 'Md. Emam Hossain', 'Supervisor', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '', ''),
(10316, 'SPL-008385', 'Md Kawsar ', 'Security Guard', 'Administration', '', '', '', ''),
(10317, 'SPL-008386', 'Md Rafiqul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10318, 'SPL-008389', 'Md Solaiman', 'Security Guard', 'Administration', '', '', '', ''),
(10319, 'SPL-008390', 'Suxa Mia ', 'Security Guard', 'Administration', '', '', '', ''),
(10320, 'SPL-008391', 'Shahed Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(10321, 'SPL-008392', 'Shakowat Hossan', 'Security Guard', 'Administration', '', '', '', ''),
(10322, 'SPL-008394', 'Abu Nayem', 'Security Guard', 'Administration', '', '', '', ''),
(10323, 'SPL-008395', 'Manik Hossan', 'Security Guard', 'Administration', '', '', '', ''),
(10324, 'SPL-008396', 'Md Evrahim Talukder', 'Security Guard', 'Administration', '', '', '', ''),
(10325, 'SPL-008397', 'Md Hanif', 'Security Guard', 'Administration', '', '', '', ''),
(10326, 'SPL-008398', 'Md Imran hossain', 'Security Guard', 'Administration', '', '', '', ''),
(10327, 'SPL-008401', 'Naim Hossain', 'Security Officer', 'Administration', '', '', '', ''),
(10328, 'SPL-008403', 'Sapon Chandra Biswas', 'Security Guard', 'Administration', '', '', '', ''),
(10329, 'SPL-008404', 'Abdur Rahim Papon', 'Officer', 'Administration', '', '', '', ''),
(10330, 'SPL-008405', 'Md Monirul Islam', 'Manager', 'Enterprise Resource Planning', 'Corporate', 'Saif Powertec Ltd.', '1725938395', 'monirul.islam@saifpowertec.com'),
(10331, 'SPL-008406', 'Abu  Sufean', 'Peon', 'Administration', '', '', '', ''),
(10332, 'SPL-008409', 'Md  Abdul Hakim', 'Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1746499234', 'Saifop@saifpowertec.com'),
(10333, 'SPL-008410', 'Md Karim Hawlader', 'Senior Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1772302286', 'Saifop@saifpowertec.com'),
(10334, 'SPL-008411', 'Md Minazul Islam', 'Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1707783740', 'Saifop@saifpowertec.com'),
(10335, 'SPL-008412', 'Md Rayhan Hosen', 'Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1755443528', 'Saifop@saifpowertec.com'),
(10336, 'SPL-008413', 'Orun Hasda', 'Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1307320792', 'Saifop@saifpowertec.com'),
(10337, 'SPL-008414', 'Md Hasanur Jaman Foysal', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1975104471', 'Saifop@saifpowertec.com'),
(10338, 'SPL-008415', 'Md Salam howlader', 'Senior Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1764495489', 'Saifop@saifpowertec.com'),
(10339, 'SPL-008417', 'Bepul Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(10340, 'SPL-008418', 'Md Abul Kalam', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(10341, 'SPL-008422', 'Sojib Bapari', 'Security Guard', 'Administration', '', '', '', ''),
(10342, 'SPL-008423', 'Md Sultan Nur Uddin', 'Security Guard', 'Administration', '', '', '', ''),
(10343, 'SPL-008424', 'Sohag hossen ', 'Security Guard', 'Administration', '', '', '', ''),
(10344, 'SPL-008425', 'Md Zakir Hossain', 'RST Operator', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1615500283', 'Saifop@saifpowertec.com'),
(10345, 'SPL-008426', 'Suzauddin Moni', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '', ''),
(10346, 'SPL-008427', 'Mijanur Molla', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1738878565', 'Saifop@saifpowertec.com'),
(10347, 'SPL-008428', 'Shahadat Hossen', 'Helper', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '', ''),
(10348, 'SPL-008429', 'Irfan Uddin Ahmed', 'Officer', 'Human Resource Management', 'Corporate', 'Saif Powertec Ltd.', '1711312939', 'Saifop@saifpowertec.com'),
(10349, 'SPL-008430', 'Md Habibur Rahman', 'Medical Assistant', 'QMS', 'Battery', 'Saif Powertec Ltd.', '1916587490', 'Saifop@saifpowertec.com'),
(10350, 'SPL-008431', 'Md Hasibul Kobir', 'Executive', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10351, 'SPL-008432', 'Md Jahidul Islam', 'Executive', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1728072550', 'Saifop@saifpowertec.com'),
(10352, 'SPL-008433', 'Md Merin Islam', 'Executive', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1722126740', 'Saifop@saifpowertec.com'),
(10353, 'SPL-008434', 'Sandip Das', 'Executive', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '', ''),
(10354, 'SPL-008435', 'Nasaruddin', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1877599885', 'Saifop@saifpowertec.com'),
(10355, 'SPL-008436', 'Habib A Rasul Shahin', 'RMG Operator', 'RMG', 'SPOT', 'Saif Powertec Ltd.', '', ''),
(10356, 'SPL-008437', 'Md Faruk Hossin', 'Senior Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1822499883', 'Saifop@saifpowertec.com'),
(10357, 'SPL-008438', 'Md Shariful Islam', 'Executive', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1724457076', 'shariful.islam@saifpowertec.com'),
(10358, 'SPL-008440', 'Sheshir Rozario', 'Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1771110781', 'Saifop@saifpowertec.com'),
(10359, 'SPL-008441', 'Md Jakarul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10360, 'SPL-008443', 'Akash Par', 'Security Guard', 'Administration', '', '', '', ''),
(10361, 'SPL-008446', 'Jesayo Rema', 'Security Guard', 'Administration', '', '', '', ''),
(10362, 'SPL-008447', 'Md Asif', 'Security Guard', 'Administration', '', '', '', ''),
(10363, 'SPL-008448', 'Md Sabuj Khan', 'Security Guard', 'Administration', '', '', '', ''),
(10364, 'SPL-008450', 'Md Milon Hossain', 'Driver', 'Administration', '', '', '', ''),
(10365, 'SPL-008451', 'Rashidul Islam', 'Executive', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'rashidul2697@gmail.com'),
(10366, 'SPL-008453', 'Md Taiab Ali', 'Security Guard', 'Administration', '', '', '', ''),
(10367, 'SPL-008458', 'SK Golam Rasul', 'Security Guard', 'Administration', '', '', '', ''),
(10368, 'SPL-008460', 'Wasim Akram', 'Security Guard', 'Administration', '', '', '', ''),
(10369, 'SPL-008462', 'Md Fardous Mahmud', 'Officer', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1715842509', 'Saifop@saifpowertec.com'),
(10370, 'SPL-008465', 'Md Mahe Alam ', 'Cleaner', 'Administration', '', '', '', ''),
(10371, 'SPL-008467', 'Md Mahafijur Rahman', 'Executive', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '', 'mahafuj1091@gmail.com'),
(10372, 'SPL-008470', 'Md Faruk', 'Driver', 'Administration', '', '', '', ''),
(10373, 'SPL-008471', 'Abdullah Al Mamum', 'Security Guard', 'Administration', '', '', '', ''),
(10374, 'SPL-008472', 'Md Abdul halim', 'Security Guard', 'Administration', '', '', '', ''),
(10375, 'SPL-008473', 'Md Alamgir Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10376, 'SPL-008474', 'Md Joynal Hawlader', 'Security Guard', 'Administration', '', '', '', ''),
(10377, 'SPL-008475', 'Md Mikail Sheikh', 'Security Guard', 'Administration', '', '', '', ''),
(10378, 'SPL-008476', 'Md Moshiur Rahman', 'Security Guard', 'Administration', '', '', '', ''),
(10379, 'SPL-008478', 'Md Nayem', 'Security Guard', 'Administration', '', '', '', ''),
(10380, 'SPL-008479', 'Md Rashed', 'Security Guard', 'Administration', '', '', '', ''),
(10381, 'SPL-008480', 'Md Reajul Haque', 'Security Guard', 'Administration', '', '', '', ''),
(10382, 'SPL-008483', 'Rana Islam Joy', 'Security Guard', 'Administration', '', '', '', ''),
(10383, 'SPL-008485', 'Rifat', 'Security Guard', 'Administration', '', '', '', ''),
(10384, 'SPL-008487', 'Saymon Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10385, 'SPL-008489', 'Md. Zahidul Islam', 'Assistant Manager', 'Marketing And Sales- Export And Corporate', 'Battery', 'Saif Powertec Ltd.', '', 'zahidul.islam@saifpowertec.com'),
(10386, 'SPL-008490', 'Md. Saddam Hossen', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '', ''),
(10387, 'SPL-008491', 'Md Moniruzzaman', 'Supervisor', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10388, 'SPL-008492', 'Md Kamruzzaman', 'Supervisor', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10389, 'SPL-008494', 'Mohammed Morshed Alam', 'Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10390, 'SPL-008495', 'Md Aman Ullah', 'Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10391, 'SPL-008496', 'Md Mostakim', 'Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10392, 'SPL-008497', 'Hasmat Ali', 'Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10393, 'SPL-008499', 'Md. Jakir Shak', 'Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '', ''),
(10394, 'SPL-008500', 'Md Abu Bakar Akanda', 'Security Guard', 'Administration', '', '', '', ''),
(10395, 'SPL-008501', 'Md Azim Uddin', 'Security Guard', 'Administration', '', '', '', ''),
(10396, 'SPL-008502', 'Easin Howlater', 'Security Guard', 'Administration', '', '', '', ''),
(10397, 'SPL-008503', 'Md Forhad Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(10398, 'SPL-008504', 'Md Hasan Ali', 'Security Guard', 'Administration', '', '', '', ''),
(10399, 'SPL-008506', 'Md Jwel  Mia', 'Security Guard', 'Administration', '', '', '', ''),
(10400, 'SPL-008507', 'Md Jwel Howlader', 'Security Guard', 'Administration', '', '', '', ''),
(10401, 'SPL-008508', 'Md Kurshid Alam', 'Security Guard', 'Administration', '', '', '', ''),
(10402, 'SPL-008511', 'Md Rahat', 'Security Guard', 'Administration', '', '', '', ''),
(10403, 'SPL-008512', 'Md Robin Molla', 'Security Guard', 'Administration', '', '', '', ''),
(10404, 'SPL-008514', 'Saon Talukder', 'Security Guard', 'Administration', '', '', '', ''),
(10405, 'SPL-008515', 'Md Shahadat Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(10406, 'SPL-008518', 'Md Mizanur Rahman', 'Security Guard', 'Administration', '', '', '', ''),
(10407, 'SPL-008519', 'Md Nur E Alam', 'Security Guard', 'Administration', '', '', '', ''),
(10408, 'SPL-008520', 'Md Ashraful Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10409, 'SPL-008522', 'Md Sanowar Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(10410, 'SPL-008523', 'Ryhan Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(10411, 'SPL-008524', 'Subrata Tripura', 'Security Guard', 'Administration', '', '', '', ''),
(10412, 'SPL-008526', 'Sajib Khan', 'Driver', 'Administration', '', '', '', ''),
(10413, 'SPL-008527', 'A Alim', 'Executive', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10414, 'SPL-008528', 'Md Nuruzzaman', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10415, 'SPL-008530', 'Sree Nayan Kumar Das', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10416, 'SPL-008531', 'Nabodip Chandro Ray', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10417, 'SPL-008532', 'Asif Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(10418, 'SPL-008533', 'Azgor Ali', 'Security Guard', 'Administration', '', '', '', ''),
(10419, 'SPL-008535', 'Hossen Ahmod', 'Security Guard', 'Administration', '', '', '', ''),
(10420, 'SPL-008536', 'Md Ayat Khandokar', 'Security Guard', 'Administration', '', '', '', ''),
(10421, 'SPL-008538', 'Md Shahid  Babu Liyon', 'Security Guard', 'Administration', '', '', '', ''),
(10422, 'SPL-008541', 'Md Tarek Hossain', 'Security Guard', 'Administration', '', '', '', ''),
(10423, 'SPL-008542', 'Md Sakib', 'Security Guard', 'Administration', '', '', '', ''),
(10424, 'SPL-008543', 'Md Jubaer Molla', 'Security Guard', 'Administration', '', '', '', ''),
(10425, 'SPL-008544', 'Md Mizanur Rahman', 'Security Guard', 'Administration', '', '', '', ''),
(10426, 'SPL-008545', 'Rasel Sharder', 'Security Guard', 'Administration', '', '', '', ''),
(10427, 'SPL-008548', 'Md Safikul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10428, 'SPL-008550', 'Md. Joynal Abedin', 'Semi Mechanic', 'PM and FLT', 'CTED-CTG', 'Saif Powertec Ltd.', '', ''),
(10429, 'SPL-008551', 'Mohammed Romzan Ali', 'Driver', 'Administration', '', '', '', ''),
(10430, 'SPL-008552', 'Md Moniruzzaman', 'Supervisor', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '', ''),
(10431, 'SPL-008553', 'Md Kawsar Mahmud', 'Yard Checker', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10432, 'SPL-008554', 'Md Sujon Islam', 'Junior Engineer', 'Operation', 'Sub Station', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10433, 'SPL-008555', 'Mohan Chandra Das', 'Senior Technician', 'Service', 'Ignite Workshop', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10434, 'SPL-008556', 'Mohammod  Moshior Rahman', 'Executive', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10435, 'SPL-008557', 'Arifur Rahman Bhuiyan', 'Medical Assistant', 'Delivery', '', '', '', ''),
(10436, 'SPL-008558', 'Md Shajedul Islam', 'Manager', 'Business Development', 'Corporate', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10437, 'SPL-008559', 'Md Mahedi Hasan Rony', 'Driver', 'Administration', '', '', '', ''),
(10438, 'SPL-008560', 'Kazi Enamul Hak', 'Lasher', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10439, 'SPL-008561', 'Ahmed Sayed Al Fatah', 'Assistant General Manager', 'Business Development', 'Power and Energy', 'Saif Powertec Ltd.', '1715155202', 'fatah@saifglobalsports.com'),
(10440, 'SPL-008565', 'Md Shohel Mia', 'Security Guard', 'Administration', '', '', '', ''),
(10441, 'SPL-008566', 'Md Sohel Rana', 'Security Guard', 'Administration', '', '', '', ''),
(10442, 'SPL-008567', 'Abdul Aziz Emon', 'Security Guard', 'Administration', '', '', '', ''),
(10443, 'SPL-008571', 'Kaisar Arafat', 'Senior Officer', 'Administration', '', '', '', ''),
(10444, 'SPL-008572', 'Md Helal Uddin', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10445, 'SPL-008573', 'Md Imran', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10446, 'SPL-008574', 'Md Kaisar Hosen', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10447, 'SPL-008575', 'Md Mamunur Rashid', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10448, 'SPL-008576', 'Mohammad Sazzad Hossain', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10449, 'SPL-008577', 'Md Tarek Aziz', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10450, 'SPL-008578', 'Md Anisul Haque', 'Deputy Manager', 'IT', 'Corporate', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10451, 'SPL-008579', 'Md Jahangir Alam', 'Helper', 'QGC and RTG', 'CTED-CTG', 'Saif Powertec Ltd.', '', ''),
(10452, 'SPL-008580', 'Ashikur Rahaman Ashik', 'Trainee Officer', 'Documentation', '', '', '', ''),
(10453, 'SPL-008581', 'Md Helal Uddin', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '', ''),
(10454, 'SPL-008582', 'Md Rimon Sharker', 'Caretaker', 'Administration', '', '', '', ''),
(10455, 'SPL-008584', 'Md Rasidul  Islam', 'Driver', 'Administration', '', '', '', ''),
(10456, 'SPL-008585', 'Md  Shakhawat Hossain', 'Lasher', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10457, 'SPL-008587', 'Zaker Hossan', 'Assistant Security Supervisor', 'Administration', '', '', '', ''),
(10458, 'SPL-008588', 'Hriday Roy', 'Security Guard', 'Administration', '', '', '', ''),
(10459, 'SPL-008589', 'Md Sajib', 'Security Guard', 'Administration', '', '', '', ''),
(10460, 'SPL-008592', 'Md Samsher Alam', 'Security Guard', 'Administration', '', '', '', ''),
(10461, 'SPL-008593', 'Md Saddam Hosen', 'Security Guard', 'Administration', '', '', '', ''),
(10462, 'SPL-008594', 'Sanjidul Islam', 'Officer', 'Documentation', '', '', '', ''),
(10463, 'SPL-008595', 'Nuruzzaman Khan', 'Senior Officer', 'Sales And Marketing', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10464, 'SPL-008596', 'Md. Shohidul Islam', 'Manager', 'Operation', 'Renewable Energy', 'Saif Powertec Ltd.', '173078366', 'shohidulislam@saifpowertec.com'),
(10465, 'SPL-008597', 'Muhammad Rakib Hasan', 'Assistant General Manager', 'Sales And Marketing', 'Renewable Energy', 'Saif Powertec Ltd.', '0', ''),
(10466, 'SPL-008598', 'Md Mehedi Hasan', 'Officer', 'Sales And Marketing', 'Renewable Energy', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10467, 'SPL-008600', 'Sajal Kumar Biswas', 'Manager', 'Service And Maintanance', 'Renewable Energy', 'Saif Powertec Ltd.', '1755543151', 'sajalkumar@saifpowertec.com'),
(10468, 'SPL-008602', 'Shohel Bin Hoque', 'General Manager', 'Oil and Gas', 'Corporate', 'Saif Powertec Ltd.', '1755508019', 'Saifop@saifpowertec.com'),
(10469, 'SPL-008603', 'Rubel Ahmed', 'Office Assistant', 'Administration', '', '', '', ''),
(10470, 'SPL-008605', 'Maznunur Rahman', 'Senior Officer', 'Finance And Accounts', 'Corporate', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10471, 'SPL-008606', 'Shahidul Haque', 'SC Operator', 'SC', 'SPOT', 'Saif Powertec Ltd.', '', ''),
(10472, 'SPL-008607', 'Md Golam Rasul', 'Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1729314177', 'Saifop@saifpowertec.com'),
(10473, 'SPL-008608', 'Mustak Ahamad Mahsin', 'Technician', 'Maintenance', 'Battery', 'Saif Powertec Ltd.', '1756409942', 'Saifop@saifpowertec.com'),
(10474, 'SPL-008609', 'Naeem Mia ', 'Lasher', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1403226177', 'Saifop@saifpowertec.com'),
(10475, 'SPL-008610', 'Shamsur Rahman', 'Supervisor', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '', ''),
(10476, 'SPL-008611', 'Md Emon Hossen', 'Trainee Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '', ''),
(10477, 'SPL-008612', 'Md. Morshed Hossen Shuvo', 'Driver', 'Administration', '', '', '', ''),
(10478, 'SPL-008613', 'Faridul Islam', 'Trainee Yard Checker', 'Operation', 'SPOT', 'Saif Powertec Ltd.', '1921225595', 'Saifop@saifpowertec.com'),
(10479, 'SPL-008614', 'Anarul', 'Helper', 'Administration', '', '', '', ''),
(10480, 'SPL-008615', 'Tanzina Hoque', 'Assistant General Manager', 'Finance And Accounts', 'Renewable Energy', 'Saif Powertec Ltd.', '1709663877', 'tanzina.hoque@saifpowertec.com'),
(10481, 'SPL-008616', 'Md Selim Islam', 'Office Assistant', 'Administration', '', '', '', ''),
(10482, 'SPL-008617', 'Md Anis Molla', 'Driver', 'Administration', '', '', '', ''),
(10483, 'SPL-008618', 'Md Nizam Uddin', 'Driver', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1825664949', 'Saifop@saifpowertec.com'),
(10484, 'SPL-008620', 'Murshid Alam', 'Executive', 'Sales And Marketing', 'Battery', 'Saif Powertec Ltd.', '1714822646', 'Saifop@saifpowertec.com'),
(10485, 'SPL-008621', 'Khondoker Raian Fazlay Alahi', 'Executive', 'Commercial', 'Corporate', 'Saif Powertec Ltd.', '1553388905', 'Saifop@saifpowertec.com'),
(10486, 'SPL-008623', 'Md Al Amin', 'Driver', 'Administration', '', '', '', ''),
(10487, 'SPL-008624', 'Nahidor Rahman', 'Billing Assistant', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '1765062022', 'Saifop@saifpowertec.com'),
(10488, 'SPL-008625', 'Md Asadullah', 'Security Guard', 'Administration', '', '', '', ''),
(10489, 'SPL-008626', 'Hasan Sharif', 'Security Guard', 'Administration', '', '', '', ''),
(10490, 'SPL-008628', 'Md Sahidul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10491, 'SPL-008629', 'Shirajul Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10492, 'SPL-008630', 'Md Tarikul Islam ', 'Security Guard', 'Administration', '', '', '', ''),
(10493, 'SPL-008631', 'Hridoy Kumar Karmoker', 'Officer', 'Assembly', '', '', '', ''),
(10494, 'SPL-008632', 'Md Shariful Islam Khan ', 'Trainee Officer', 'Yard Planning And Documentation', 'SPOT', 'Saif Powertec Ltd.', '1738312286', 'Saifop@saifpowertec.com'),
(10495, 'SPL-008633', 'Nur Islam Sohel', 'FLT Operator', 'FLT', 'SPOT', 'Saif Powertec Ltd.', '', ''),
(10496, 'SPL-008634', 'Mohammad Shah Alam', 'RTG Operator', 'RTG', 'SPOT', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10497, 'SPL-008635', 'Abu Siddeque ', 'Cleaner', 'Administration', '', '', '', ''),
(10498, 'SPL-008636', 'Munne Akhter ', 'Cleaner', 'Administration', '', '', '', ''),
(10499, 'SPL-008637', 'Md Saiful ISlam ', 'Cleaner', 'Administration', '', '', '', ''),
(10500, 'SPL-008638', 'Jakir Mia', 'Cleaner', 'Administration', '', '', '', ''),
(10501, 'SPL-008639', 'Golam Mostofa ', 'Cleaner', 'Administration', '', '', '', ''),
(10502, 'SPL-008641', 'Abdullah Al Mamun', 'Programmer', 'Enterprise Resource Planning', 'Corporate', 'Saif Powertec Ltd.', '1748176877', 'Saifop@saifpowertec.com'),
(10503, 'SPL-008642', 'Firoz Alam ', 'Cleaner', 'Administration', '', '', '', ''),
(10504, 'SPL-008643', 'Md Hanif ', 'Cleaner', 'Administration', '', '', '', ''),
(10505, 'SPL-008644', 'Md Sohid Ullah ', 'Cleaner', 'Administration', '', '', '', ''),
(10506, 'SPL-008645', 'Md Kamal Talukdar ', 'Cleaner', 'Administration', '', '', '', ''),
(10507, 'SPL-008646', 'Md Suruz Ali', 'Cleaner', 'Administration', '', '', '', ''),
(10508, 'SPL-008647', 'Abdur Rahim ', 'Cleaner', 'Administration', '', '', '', ''),
(10509, 'SPL-008648', 'Adhori Akter', 'Cleaner', 'Administration', '', '', '', ''),
(10510, 'SPL-008649', 'Sajeda Begum ', 'Cleaner', 'Administration', '', '', '', ''),
(10511, 'SPL-008650', 'Hasina Begum ', 'Cleaner', 'Administration', '', '', '', ''),
(10512, 'SPL-008651', 'Mousumi Akter', 'Cleaner', 'Administration', '', '', '', ''),
(10513, 'SPL-008652', 'Md Helal Uddin ', 'Cleaner', 'Administration', '', '', '', ''),
(10514, 'SPL-008653', 'Asma Khatun ', 'Cleaner', 'Administration', '', '', '', ''),
(10515, 'SPL-008654', 'Shilpy ', 'Cleaner', 'Administration', '', '', '', ''),
(10516, 'SPL-008655', 'Bithi Akter ', 'Cleaner', 'Administration', '', '', '', ''),
(10517, 'SPL-008656', 'Mst Khadija Begum ', 'Cleaner', 'Administration', '', '', '', ''),
(10518, 'SPL-008657', 'Md Babul Haolader ', 'Cleaner', 'Administration', '', '', '', ''),
(10519, 'SPL-008658', 'Mst Alema ', 'Cleaner', 'Administration', '', '', '', ''),
(10520, 'SPL-008659', 'Mojida Begum ', 'Cleaner', 'Administration', '', '', '', ''),
(10521, 'SPL-008660', 'Lucky Begum ', 'Cleaner', 'Administration', '', '', '', ''),
(10522, 'SPL-008661', 'Mohin Uddin ', 'Cleaner', 'Administration', '', '', '', ''),
(10523, 'SPL-008662', 'Shamsul Haq Farazi', 'Cleaner', 'Administration', '', '', '', ''),
(10524, 'SPL-008663', 'Abul Hossain ', 'Cleaner', 'Administration', '', '', '', ''),
(10525, 'SPL-008664', 'Khalilur Rahman ', 'Cleaner', 'Administration', '', '', '', ''),
(10526, 'SPL-008665', 'Md Liton Mia ', 'Cleaner', 'Administration', '', '', '', ''),
(10527, 'SPL-008666', 'Md Dulal Mia ', 'Cleaner', 'Administration', '', '', '', ''),
(10528, 'SPL-008667', 'Md Ranju Mia', 'Cleaner', 'Administration', '', '', '', ''),
(10529, 'SPL-008668', 'Mst Jinora ', 'Cleaner', 'Administration', '', '', '', ''),
(10530, 'SPL-008669', 'Taslima Khatun', 'Cleaner', 'Administration', '', '', '', ''),
(10531, 'SPL-008671', 'Md Tariqul Islam Mazumder ', 'Cleaner', 'Administration', '', '', '', ''),
(10532, 'SPL-008672', 'Md Abdul Momin ', 'Security Guard', 'Administration', '', '', '', ''),
(10533, 'SPL-008673', 'Md Aminul Islam ', 'Security Guard', 'Administration', '', '', '', ''),
(10534, 'SPL-008674', 'Md Delowar Hossain ', 'Security Guard', 'Administration', '', '', '', ''),
(10535, 'SPL-008676', 'Mura Mia', 'Caretaker', 'Administration', '', '', '', ''),
(10536, 'SPL-008677', 'Sabbir Hossain Molla', 'Caretaker', 'Administration', '', '', '', ''),
(10537, 'SPL-008679', 'Md Feroj Ahmed', 'Security Guard', 'Administration', '', '', '', ''),
(10538, 'SPL-008680', 'Md Mokul Hossain ', 'Security Supervisor', 'Administration', '', '', '', ''),
(10539, 'SPL-008682', 'Md Rabbi Hasan', 'Security Guard', 'Administration', '', '', '', ''),
(10540, 'SPL-008684', 'Md Saiful ISlam ', 'Security Guard', 'Administration', '', '', '', ''),
(10541, 'SPL-008685', 'Md Sayful Sheikh', 'Security Guard', 'Administration', '', '', '', ''),
(10542, 'SPL-008687', 'Md Shipon Mia', 'Security Guard', 'Administration', '', '', '', ''),
(10543, 'SPL-008688', 'Md Sohan Pk', 'Security Guard', 'Administration', '', '', '', ''),
(10544, 'SPL-008689', 'Mehedi Hasan Musa ', 'Security Guard', 'Administration', '', '', '', ''),
(10545, 'SPL-008691', 'Rubel ', 'Security Guard', 'Administration', '', '', '', ''),
(10546, 'SPL-008692', 'Bhola Nath Dey ', 'Advisor', 'Management', 'Corporate', 'Saif Powertec Ltd.', '1712507358', 'Saif@saifpowertec.com'),
(10547, 'SPL-008693', 'Md Elius ', 'Semi Mechanic', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1400733328', 'Saif@saifpowertec.com'),
(10548, 'SPL-008694', 'Md Sala Uddin ', 'Semi Mechanic', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1993150500', 'Saif@saifpowertec.com'),
(10549, 'SPL-008695', 'Sk Abdul Farhad', 'Supervisor', 'Delivery', '', '', '', ''),
(10550, 'SPL-008696', 'Md Sagar Shieq', 'Driver', 'Terminal Operation', 'SPOT', 'Saif Powertec Ltd.', '', ''),
(10551, 'SPL-008697', 'Md Azimul Hayat', 'Trainee Yard Checker', 'CCT Yard', '', '', '', ''),
(10552, 'SPL-008698', 'Md Elius ', 'Semi Mechanic', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '', ''),
(10553, 'SPL-008699', 'Md Elias Howlader ', 'Officer', 'Documentation', '', '', '', ''),
(10554, 'SPL-008700', 'Md Elias Mamun ', 'Trainee Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '1909943258', 'Saif@saifpowertec.com'),
(10555, 'SPL-008701', 'Md Yeasin Rabin ', 'Trainee Yard Checker', 'CCT Yard', '', '', '', ''),
(10556, 'SPL-008702', 'Mohammed Tanim Khan ', 'Trainee Yard Checker', 'CTMS', '', '', '', ''),
(10557, 'SPL-008705', 'Rajib Chakraborty', 'Yard Checker', 'NCT Yard', 'SPOT', 'Saif Powertec Ltd.', '', ''),
(10558, 'SPPL-000001', 'Rubya Chowdhury', 'Managing Director', 'Management', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1755543180', 'rubyachowdhury@saifpowertec.com'),
(10559, 'SPPL-000002', 'Sk Aftab Uddin', 'Deputy Manager', 'Administration', '', '', '', ''),
(10560, 'SPPL-000003', 'Md Mahmudur Rahman', 'Deputy Manager', 'VAT And TAX', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1755548542', 'mrahman9@saifpowertec.com'),
(10561, 'SPPL-000004', 'Md Shahadat Hossain', 'Factory Manager', 'Factory Operation', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1730785096', 'shahadat@saifpowertec.com'),
(10562, 'SPPL-000007', 'Dipak Kumar Shaha', 'Deputy Manager', 'Sales And Marketing', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1777790427', 'dipak@saifpowertec.com'),
(10563, 'SPPL-000009', 'Md. Sazratul Alam', 'Assistant Manager', 'Quality Assurance', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1730353318', 'sazratul.alam@saifpowertec.com'),
(10564, 'SPPL-000011', 'Md Rajib Mahmud', 'Senior Officer', 'Sales And Marketing', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1755543175', 'rajib.sppl@saifpowertec.com'),
(10565, 'SPPL-000012', 'Rubel', 'Operator', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1628657887', ''),
(10566, 'SPPL-000013', 'Ibrahim', 'Operator', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1754013055', ''),
(10567, 'SPPL-000014', 'Sahin', 'Assistant Operator', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1744611148', ''),
(10568, 'SPPL-000015', 'Rasel Miah', 'Foreman', 'Maintenance', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1811223375', ''),
(10569, 'SPPL-000016', 'Bedar', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1734137846', ''),
(10570, 'SPPL-000018', 'Begum', 'Assistant Operator', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1840882734', ''),
(10571, 'SPPL-000020', 'Lily', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1725799862', ''),
(10572, 'SPPL-000022', 'Rupbanu', 'Cleaner', 'Administration', '', '', '', ''),
(10573, 'SPPL-000023', 'Josna', 'Head Technician', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1904382394', ''),
(10574, 'SPPL-000024', 'Kohinur', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1686468409', ''),
(10575, 'SPPL-000025', 'Rehana', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1937996900', ''),
(10576, 'SPPL-000026', 'Somla', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1829708676', ''),
(10577, 'SPPL-000028', 'Monowara', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1989964962', ''),
(10578, 'SPPL-000029', 'Md Hossain Ali', 'Assistant', 'Quality Assurance', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1755630106', ''),
(10579, 'SPPL-000030', 'Johra', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1719359175', ''),
(10580, 'SPPL-000031', 'Nazmin', 'Assistant Operator', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1792489924', ''),
(10581, 'SPPL-000032', 'Selina', 'Assistant Operator', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '0', ''),
(10582, 'SPPL-000033', 'Selina', 'Cleaner', 'Administration', '', '', '', ''),
(10583, 'SPPL-000034', 'Md Nur Moohammad', 'Technician', 'Maintenance', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1797407040', ''),
(10584, 'SPPL-000036', 'Ataur Rahman', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1992763328', ''),
(10585, 'SPPL-000037', 'Amdadul', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1773912452', ''),
(10586, 'SPPL-000039', 'Sahadat Hossain', 'Helper', 'Delivery', '', '', '', ''),
(10587, 'SPPL-000041', 'Anwar Foraizi', 'Driver', 'Administration', '', '', '', ''),
(10588, 'SPPL-000042', 'Nasrin', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1936755758', ''),
(10589, 'SPPL-000043', 'Aminul', 'Operator', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1936755758', ''),
(10590, 'SPPL-000044', 'Md Osman Gani', 'Driver', 'Administration', '', '', '', ''),
(10591, 'SPPL-000046', 'Sojib', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1839991407', ''),
(10592, 'SPPL-000047', 'Maksuda', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1718632882', ''),
(10593, 'SPPL-000051', 'Most Shirina Begum', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1990806286', ''),
(10594, 'SPPL-000052', 'Shahnaj', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1764685696', ''),
(10595, 'SPPL-000053', 'Beauty', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1952609467', ''),
(10596, 'SPPL-000054', 'Nurjahan Begum', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1914276473', ''),
(10597, 'SPPL-000056', 'Choity', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1991034763', ''),
(10598, 'SPPL-000059', 'Maksuda', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1881990573', ''),
(10599, 'SPPL-000060', 'Md Sagor', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1632328767', ''),
(10600, 'SPPL-000061', 'Jalal', 'Assistant Operator', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1936058876', ''),
(10601, 'SPPL-000064', 'Nazrul Islam', 'Foreman', 'Maintenance', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1716395682', ''),
(10602, 'SPPL-000066', 'Karina Aktar', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1798241906', ''),
(10603, 'SPPL-000067', 'Amzad Hossain', 'Assistant', 'Store', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1731591391', ''),
(10604, 'SPPL-000068', 'Fatema Akter', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1995670484', ''),
(10605, 'SPPL-000069', 'Nabia Aktar', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1632328767', ''),
(10606, 'SPPL-000072', 'Sheuly Akter', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1840882734', ''),
(10607, 'SPPL-000076', 'Md Shohidul', 'Helper', 'Administration', '', '', '', ''),
(10608, 'SPPL-000079', 'Ahad Miah', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1630940220', ''),
(10609, 'SPPL-000085', 'Selina Begum', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1949489474', ''),
(10610, 'SPPL-000090', 'Tulsi Rani', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1774183373', ''),
(10611, 'SPPL-000093', 'Abu Taher', 'Driver', 'Administration', '', '', '', ''),
(10612, 'SPPL-000094', 'Md Moshiur Rahman', 'Deputy Manager', 'Finance And Accounts', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '0', 'moshiurrahman@saifpowertec.com'),
(10613, 'SPPL-000097', 'Md Almas', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1982591764', ''),
(10614, 'SPPL-000098', 'Md Firoz Alam', 'Peon', 'Administration', '', '', '', ''),
(10615, 'SPPL-000103', 'Nilofa Begum', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1922546703', ''),
(10616, 'SPPL-000105', 'Md Saiful Islam', 'Operator', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1916374707', ''),
(10617, 'SPPL-000109', 'Tuhin Chowdhury', 'Assistant Officer', 'Sales And Marketing', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '1681909220', 'tuhin.chowdhury@saifpowertec.com'),
(10618, 'SPPL-000113', 'Md Fargiam Hossain', 'Store Assistant', 'Store', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '', 'saifop@bdmail.net'),
(10619, 'SPPL-000120', 'Md Rabiul  Islam', 'Quality Control Inspector', 'Quality Assurance', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '', 'saifop@bdmail.net'),
(10620, 'SPPL-000121', 'Mst Parvin Begum', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '', 'saifop@bdmail.net'),
(10621, 'SPPL-000123', 'Mehedi Hasan', 'Shift In-Charge', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '', 'saifop@bdmail.net'),
(10622, 'SPPL-000124', 'Jakir Hossain Raju', 'Operator', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '', 'saifop@bdmail.net'),
(10623, 'SPPL-000126', 'Mst Shima Akter', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '', 'saifop@bdmail.net'),
(10624, 'SPPL-000130', 'Ariful Alam', 'Manager', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '', 'saifop@bdmail.net'),
(10625, 'SPPL-000131', 'Arzina', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '', 'saifop@bdmail.net'),
(10626, 'SPPL-000133', 'Mst Nazmin Akter', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '', 'saifop@bdmail.net'),
(10627, 'SPPL-000134', 'Mst Rujna', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '', 'saifop@bdmail.net'),
(10628, 'SPPL-000135', 'Ratna', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '', 'saifop@bdmail.net'),
(10629, 'SPPL-000136', 'Hanif', 'Helper', 'Production', 'Blank', 'Saif Plastic and Polymer Industries Ltd.', '', 'saifop@bdmail.net'),
(10630, 'SPL-008706', 'Md Al Imran', 'Security Guard', 'Administration', '', '', '', ''),
(10631, 'SPL-008707', 'Md Azad Sheikh', 'Security Guard', 'Administration', '', '', '', ''),
(10632, 'SPL-008708', 'Foysal Sarder', 'Security Guard', 'Administration', '', '', '', ''),
(10633, 'SPL-008709', 'Md Jahid Hosen', 'Security Guard', 'Administration', '', '', '', ''),
(10634, 'SPL-008710', 'Md Masum Mia', 'Security Guard', 'Administration', '', '', '', ''),
(10635, 'SPL-008711', 'Md Nur Hossen Mia', 'Security Guard', 'Administration', '', '', '', ''),
(10636, 'SPL-008712', 'Md Rakeb Molla', 'Security Guard', 'Administration', '', '', '', ''),
(10637, 'SPL-008713', 'Reaz Shak', 'Security Guard', 'Administration', '', '', '', ''),
(10638, 'SPL-008714', 'Md Sabbir Islam', 'Security Guard', 'Administration', '', '', '', ''),
(10639, 'SPL-008715', 'Md Saykat Hosen', 'Security Guard', 'Administration', '', '', '', ''),
(10640, 'SPL-008717', 'Md Shamim Reza', 'Security Guard', 'Administration', '', '', '', ''),
(10641, 'SPL-008718', 'Md Shohag Mia', 'Security Guard', 'Administration', '', '', '', ''),
(10642, 'SPL-008719', 'Md Sofiyar Rahman', 'Security Guard', 'Administration', '', '', '', ''),
(10643, 'SPL-008720', 'Md Sujan Mia', 'Security Guard', 'Administration', '', '', '', ''),
(10644, 'ENG-000940', 'Md Robiul Islam', 'Operator', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '', 'saifop@bdmail.net'),
(10645, 'ENG-000941', 'Md Sarwar Hossain', 'Driver', 'Administration', '', '', '', ''),
(10646, 'ENG-000942', 'Khan Md Ahsan Habib', 'Assistant Manager', 'Mechanical', 'E-Engineering', 'E-Engineering Ltd.', '1767554601', 'Saif@saifpowertec.com'),
(10647, 'ENG-000943', 'Md Belal Uddin', 'Driver', 'Administration', '', '', '', ''),
(10648, 'ENG-000944', 'Ashiqur Rahman ', 'Driver', 'Administration', '', '', '', ''),
(10649, 'ENG-000945', 'Murad Howlader ', 'Driver', 'Administration', '', '', '', ''),
(10650, 'MPL-005482', 'Bishwajit Sarker', 'Assistant Manager', 'Sales And Marketing', 'Generator Sales', 'Maxon Power Ltd.', '1730377048', 'Bishwajit.led@saifpowertec.com'),
(10651, 'SGS-000029', 'Assadujjaman Rony ', 'Manager', 'Sports Management Operation', 'Blank', 'Saif Global Sports Ltd.', '1919544254', 'Saif@saifpowertec.com'),
(10652, 'SGS-000030', 'Mohebul Kabir Rony ', 'Deputy Manager', 'Sports Management Operation', 'Blank', 'Saif Global Sports Ltd.', '1911668774', 'Saif@saifpowertec.com'),
(10653, 'SPHL-000030', 'Md Al Amin', 'Driver', 'Administration', '', '', '', ''),
(10654, 'SPL-008721', 'Md Ekramul Hoque', 'Driver', 'Administration', '', '', '', ''),
(10655, 'SPL-008722', 'Md Anik Fakir ', 'Security Guard', 'Administration', '', '', '', ''),
(10656, 'SPL-008723', 'Md Anowarul Islam ', 'Security Guard', 'Administration', '', '', '', ''),
(10657, 'SPL-008724', 'Md Ashraful Islam ', 'Security Guard', 'Administration', '', '', '', ''),
(10658, 'SPL-008725', 'Muhammad Minar Alam', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1816306032', 'Saif@saifpowertec.com'),
(10659, 'SPL-008726', 'Faisal Sheikh Imdadul ', 'Security Guard', 'Administration', '', '', '', ''),
(10660, 'SPL-008727', 'Md Habibur Rahman ', 'Security Guard', 'Administration', '', '', '', ''),
(10661, 'SPL-008728', 'Jahed Talukder ', 'Security Guard', 'Administration', '', '', '', ''),
(10662, 'SPL-008729', 'Md Mitul Mia ', 'Security Guard', 'Administration', '', '', '', ''),
(10663, 'SPL-008730', 'Md Nahid Hosen ', 'Security Guard', 'Administration', '', '', '', ''),
(10664, 'SPL-008731', 'Md Rasel Khan ', 'Security Guard', 'Administration', '', '', '', ''),
(10665, 'SPL-008733', 'Md Safaet Jumman ', 'Security Guard', 'Administration', '', '', '', ''),
(10666, 'SPL-008734', 'Md Saiful ISlam ', 'Security Guard', 'Administration', '', '', '', ''),
(10667, 'SPL-008735', 'Md Yousup', 'Security Guard', 'Administration', '', '', '', ''),
(10668, 'SPL-008736', 'Ebadul Madbar', 'Helper', 'Administration', '', '', '', ''),
(10669, 'SPL-008737', 'Md Razib ', 'Driver', 'Administration', '', '', '', ''),
(10670, 'SPL-008738', 'Md Nazrul Islam ', 'Helper', 'Administration', '', '', '', ''),
(10671, 'SPL-008739', 'Md Sontu Ali', 'Technician', 'Gel And VRLA', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10672, 'SPL-008740', 'Nurul Amin', 'Technician', 'Gel And VRLA', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10673, 'SPL-008741', 'Rasel Mia', 'Technician', 'Gel And VRLA', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10674, 'SPL-008742', 'Aktarul Islam', 'Technician', 'Gel And VRLA', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10675, 'SPL-008743', 'Md Sharif Hossain', 'Technician', 'Gel And VRLA', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10676, 'SPL-008744', 'Kawsar Miah', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10677, 'SPL-008745', 'Md Biplob Hosen', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10678, 'SPL-008746', 'Md Rasel Mia', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10679, 'SPL-008747', 'Md Shamim Mia', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10680, 'SPL-008748', 'Md Sneha Islam', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10681, 'SPL-008749', 'Nemai Chandro Roy', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10682, 'SPL-008750', 'Sonaton Chandra Dev Sharma', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10683, 'SPL-008751', 'Arafat Hossain', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10684, 'SPL-008752', 'Md Hadul Islam', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10685, 'SPL-008753', 'Raju Rana', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10686, 'SPL-008754', 'Sowpon Kumar', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10687, 'SPL-008755', 'Tanmoy Ali', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10688, 'SPL-008756', 'Torun Hasda', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10689, 'SPL-008757', 'Yeasin Mia Shimul', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10690, 'SPL-008758', 'Md Zobaidur Rahman', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10691, 'SPL-008759', 'Md Giashuddin', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10692, 'SPL-008760', 'Md Jahid', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10693, 'SPL-008761', 'Md Musa', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10694, 'SPL-008762', 'Md Rafiqul Islam', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10695, 'SPL-008763', 'Sobuj Mollah', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10696, 'SPL-008764', 'Mohammad Faisal Hasan', 'Assistant General Manager', 'Service', 'CTED-Dhaka', 'Saif Powertec Ltd.', '0', 'faisalhasan@saifpowertec.com'),
(10697, 'SPL-008765', 'Dabbroto Kundu', 'Technician', 'Operation', 'Sub Station', 'Saif Powertec Ltd.', '1937236828', ''),
(10698, 'SPL-008767', 'Ashini Sharma', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10699, 'SPL-008768', 'Khokon Sarker', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10700, 'SPL-008769', 'Md Somun Mia', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10701, 'SPL-008770', 'Polas Ray', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10702, 'SPL-008771', 'Saidul', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10703, 'SPL-008772', 'Md Emon Mia', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10704, 'SPL-008773', 'Md Karim Mia', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10705, 'SPL-008774', 'Md Rezaul Karim', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10706, 'SPL-008775', 'Md Shahadat Hossin', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10707, 'SPL-008776', 'Md Shahadat', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10708, 'SPL-008777', 'Sabuj Mia ', 'Technician', 'Service And WSS', 'Battery', 'Saif Powertec Ltd.', '1712567260', 'Saif@saifpowertec.com'),
(10709, 'SPL-008778', 'Bodruddoja', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1857366548', 'Saif@saifpowertec.com'),
(10710, 'SPL-008779', 'Delowar Hossain', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1828456983', 'Saif@saifpowertec.com'),
(10711, 'SPL-008780', 'Md Abul Kasem', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1826349311', 'Saif@saifpowertec.com'),
(10712, 'SPL-008781', 'Md Tarikul Islam Rabbi', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10713, 'SPL-008782', 'Md Al- Amin', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10714, 'SPL-008783', 'Md Aminur Rashid Sizan ', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1816061115', 'Saif@saifpowertec.com'),
(10715, 'SPL-008784', 'Ali Azam Khan', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10716, 'SPL-008785', 'Apu Chandra Das', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10717, 'SPL-008786', 'Md Jamsed Ali', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'Saif@saifpowertec.com');
INSERT INTO `inv_employee` (`id`, `employeeid`, `name`, `designation`, `department`, `division`, `company`, `phone`, `email`) VALUES
(10718, 'SPL-008787', 'Atul Chandra Roy', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10719, 'SPL-008788', 'Md Junayut Karim', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1843330414', 'Saif@saifpowertec.com'),
(10720, 'SPL-008789', 'Md Nahid Hossain', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10721, 'SPL-008790', 'Md Nannu Mia', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10722, 'SPL-008791', 'Ridoy Mia', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10723, 'SPL-008792', 'Md Sumon Ali', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10724, 'SPL-008793', 'Md Takirul Islam', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10725, 'SPL-008794', 'Md Tipu Sultan', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10726, 'SPL-008795', 'Md Alamin', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10727, 'SPL-008796', 'Md Enait Hossen', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10728, 'SPL-008797', 'Md Liton Ahamed', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10729, 'SPL-008798', 'Md Manik Hossain', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10730, 'SPL-008799', 'Md Masud Rana', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10731, 'SPL-008800', 'Rabbi Hossen', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10732, 'SPL-008801', 'Rabbin Seikh', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10733, 'SPL-008802', 'Md Nabed Hossen', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1840230042', 'Saif@saifpowertec.com'),
(10734, 'SPL-008803', 'Md Sahin', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10735, 'SPL-008804', 'Md Tariqul Islam', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10736, 'SPL-008805', 'Alamgir Hosen', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10737, 'SPL-008806', 'Joni Islam', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10738, 'SPL-008807', 'Md Al Amin', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10739, 'SPL-008808', 'Md Habib Ulla', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10740, 'SPL-008809', 'Md Motalib', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10741, 'SPL-008810', 'Md Raju Islam', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10742, 'SPL-008811', 'Md Sabirul Islam', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10743, 'SPL-008812', 'Md Tanvir Miah', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10744, 'SPL-008813', 'Rakibul Islam', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10745, 'SPL-008814', 'Shorif Howlader', 'Technician', 'Plate Preparation', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10746, 'SPL-008815', 'Md Mizanur Rahman', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1826125470', 'Saif@saifpowertec.com'),
(10747, 'SPL-008816', 'Md Toufiq Ahmed', 'Technician', 'Assembly', '', '', '', ''),
(10748, 'SPL-008817', 'Md Bappi', 'Technician', 'Assembly', '', '', '', ''),
(10749, 'SPL-008818', 'Md Nasir Uddin', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1880690392', 'Saif@saifpowertec.com'),
(10750, 'SPL-008819', 'Md Hafij Uddin', 'Technician', 'Assembly', '', '', '', ''),
(10751, 'SPL-008820', 'Md Reazul Islam', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1905577845', 'Saif@saifpowertec.com'),
(10752, 'SPL-008821', 'Masum Mia', 'Technician', 'Assembly', '', '', '', ''),
(10753, 'SPL-008822', 'Mithun Kumar Das', 'Technician', 'Store', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10754, 'SPL-008823', 'Md Shakhawat Alam', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1835904270', 'Saif@saifpowertec.com'),
(10755, 'SPL-008824', 'Md Sabbir Masud Rayhan', 'Technician', 'Assembly', '', '', '', ''),
(10756, 'SPL-008825', 'Md Yousuf', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'Saif@saifpowertec.com'),
(10757, 'SPL-008826', 'Mishan Sushil', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1829500058', 'Saif@saifpowertec.com'),
(10758, 'SPL-008827', 'Shaymol Chandra Haolader', 'Peon', 'Administration', '', '', '', ''),
(10759, 'SPL-008828', 'Shanti Mazumder', 'Peon', 'Administration', '', '', '', ''),
(10760, 'SPL-008829', 'Mohammad Mohsin Ali', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1870039576', 'Saif@saifpowertec.com'),
(10761, 'SPL-008830', 'Sherajul Islam', 'Technician', 'Store', 'Battery', 'Saif Powertec Ltd.', '', 'Saifop@saifpowertec.com'),
(10762, 'SPL-008831', 'Abdur Rahman Bulbul', 'Technician', 'Store', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10763, 'SPL-008832', 'Mohammed Shah Noor', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1640834490', 'Saif@saifpowertec.com'),
(10764, 'SPL-008833', 'Gouranga Chandra Roy', 'Technician', 'Assembly', '', '', '', ''),
(10765, 'SPL-008834', 'Rajib Dey', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1864483684', 'Saif@saifpowertec.com'),
(10766, 'SPL-008835', 'Md Al Amin', 'Technician', 'Assembly', '', '', '', ''),
(10767, 'SPL-008836', 'Md Emran Hossen', 'Technician', 'Assembly', '', '', '', ''),
(10768, 'SPL-008837', 'Daren Costa', 'Peon', 'Administration', '', '', '', ''),
(10769, 'SPL-008838', 'Md Milon Rana', 'Caretaker', 'Administration', '', '', '', ''),
(10770, 'SPL-008839', 'Md Jahirul Islam', 'Technician', 'Assembly', '', '', '', ''),
(10771, 'SPL-008840', 'Jogesh Chandra Das', 'Peon', 'Administration', '', '', '', ''),
(10772, 'SPL-008841', 'Md Habib Miah', 'Peon', 'Administration', '', '', '', ''),
(10773, 'SPL-008842', 'Md Hossen Mollah', 'Peon', 'Administration', '', '', '', ''),
(10774, 'SPL-008843', 'Md Nur Alam', 'Technician', 'Charging', 'Battery', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10775, 'SPL-008844', 'Md Kanchon Ali', 'Peon', 'Administration', '', '', '', ''),
(10776, 'SPL-008845', 'Md Mostakin', 'Peon', 'Administration', '', '', '', ''),
(10777, 'SPL-008846', 'Md Sujon Ali', 'Technician', 'Assembly', '', '', '', ''),
(10778, 'SPL-008847', 'Md Omar Ali', 'Canteen Boy', 'Administration', '', '', '', ''),
(10779, 'SPL-008848', 'Md Riffat Uddin ', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1883328794', 'Saif@saifpowertec.com'),
(10780, 'SPL-008849', 'Md Wasim Mondol', 'Technician', 'Assembly', '', '', '', ''),
(10781, 'SPL-008850', 'Md Rasel Rana', 'Technician', 'Assembly', '', '', '', ''),
(10782, 'SPL-008851', 'Rupam Chakma', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1873137594', 'Saif@saifpowertec.com'),
(10783, 'SPL-008852', 'Ripon Chandro', 'Technician', 'Assembly', '', '', '', ''),
(10784, 'SPL-008853', 'Md Samsul Haq', 'Peon', 'Administration', '', '', '', ''),
(10785, 'SPL-008854', 'Md Younus ', 'Peon', 'Administration', '', '', '', ''),
(10786, 'SPL-008855', 'Md Yeasin Sarker', 'Canteen Boy', 'Administration', '', '', '', ''),
(10787, 'SPL-008856', 'Shaiful Islam', 'Technical Helper', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1823961830', 'Saif@saifpowertec.com'),
(10788, 'SPL-008857', 'Md Ariful Islam ', 'Driver', 'Administration', '', '', '', ''),
(10789, 'SPL-008858', 'Rasal Howlader', 'Driver', 'Administration', '', '', '', ''),
(10790, 'SPL-008859', 'Imjath Hossen', 'Trainee Engineer', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1839512886', 'Saif@saifpowertec.com'),
(10791, 'SPL-008862', 'Md Shameen Azad Munna', 'Trainee Engineer', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1854678099', 'Saif@saifpowertec.com'),
(10792, 'SPL-008863', 'Muhammad Arman Kibria ', 'Trainee Engineer', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1817260938', 'Saif@saifpowertec.com'),
(10793, 'SPL-008864', 'Muhammad Nurul Alam', 'Trainee Engineer', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1624882961', 'Saif@saifpowertec.com'),
(10794, 'SPL-008866', 'Shoriful Islam', 'Trainee Engineer', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1788123290', 'Saif@saifpowertec.com'),
(10795, 'SPL-008867', 'Shuvro Chandro', 'Trainee Engineer', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '1861219527', 'Saif@saifpowertec.com'),
(10796, 'SPL-008868', 'Md Ahasan Tarak', 'Trainee Engineer', 'Maintenance', 'CTED-CTG', 'Saif Powertec Ltd.', '', 'saifop@bdmail.net'),
(10797, 'Grand Total', '', '', '', '', '', '', ''),
(10798, 'SPL-14-Floor-Washroom', '14 Floor Washroom', '-', '-', '-', 'SPL', '', ''),
(10799, 'SPL-14-Floor-Kitchen', '14 Floor Kitchen Room', '-', '-', '-', 'SPL', '', ''),
(10800, 'SPL-BOD', 'SPL-BOD', '-', '-', '-', '-', '', ''),
(10801, 'SPL-2nd-Washroom', 'SPL 2nd Floor Washroom', '-', '-', '-', '-', '', ''),
(10802, 'SPL-2nd-Kitchen', 'SPL-2nd Floor Kitchen Room', '-', '-', '-', '-', '', ''),
(10803, 'SPL-14-Floor-Photocopy', 'SPL-14-Floor-Photocopy', '-', '-', '-', '-', '', ''),
(10804, 'SPL-2nd-Floor-Photocopy', 'SPL-2nd-Floor-Photocopy', '-', '-', '-', '-', '', ''),
(10805, 'SPL-SECU-KICD', 'SPL security kicd', '-', '-', '-', '-', '', ''),
(10806, 'SPL-SECU-COMMON', 'SPL security (Common)', '-', '-', '-', '-', '', ''),
(10807, 'SPL-SECU-KT', 'SPL security Khawaja Tower', '-', '-', '-', '-', '', ''),
(10808, 'SPL-SECU-PF', 'SPL security Pubail', '-', '-', '-', '-', '', ''),
(10809, 'SPL-SECU-PROJECT', 'SPL security Project', '-', '-', '-', '-', '', ''),
(10810, 'SPL-SECU-MD_HOUSE', 'SPL security MD House', '-', '-', '-', '-', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_ga_listunit`
--

CREATE TABLE `inv_ga_listunit` (
  `id` int(11) NOT NULL,
  `lunit_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `lunit_name` varchar(25) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_invoice`
--

CREATE TABLE `inv_invoice` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `invoice_date` varchar(100) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `total_qty` varchar(100) NOT NULL,
  `total_amount` varchar(100) NOT NULL,
  `total_service` varchar(100) NOT NULL,
  `grand_total` varchar(100) NOT NULL,
  `debit` varchar(100) NOT NULL,
  `credit` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_invoice_details`
--

CREATE TABLE `inv_invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `material_id` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `unit_price` varchar(100) NOT NULL,
  `part_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_issue`
--

CREATE TABLE `inv_issue` (
  `id` int(11) NOT NULL,
  `issue_id` varchar(25) NOT NULL,
  `issue_date` date NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `division` varchar(100) NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `issued_by` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_issuedetail`
--

CREATE TABLE `inv_issuedetail` (
  `id` int(11) NOT NULL,
  `issue_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `issue_date` date NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `issue_qty` float NOT NULL,
  `issue_price` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_item_unit`
--

CREATE TABLE `inv_item_unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_item_unit`
--

INSERT INTO `inv_item_unit` (`id`, `unit_name`) VALUES
(26, 'Pics'),
(27, 'Box');

-- --------------------------------------------------------

--
-- Table structure for table `inv_job_card`
--

CREATE TABLE `inv_job_card` (
  `id` int(11) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `complain_id` varchar(100) NOT NULL,
  `milege` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL,
  `inv_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_job_card_details`
--

CREATE TABLE `inv_job_card_details` (
  `id` int(11) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `task_details` varchar(100) NOT NULL,
  `assign_to` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_material`
--

CREATE TABLE `inv_material` (
  `id` int(11) NOT NULL,
  `material_id_code` varchar(10) DEFAULT NULL,
  `material_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `material_sub_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `material_description` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `brand_name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `material_min_stock` int(11) DEFAULT NULL,
  `avg_con_sump` int(11) DEFAULT NULL,
  `lead_time` int(11) DEFAULT NULL,
  `re_order_level` int(11) NOT NULL,
  `qty_unit` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `op_balance_qty` int(11) NOT NULL,
  `op_balance_val` int(11) NOT NULL,
  `chk_print` int(11) DEFAULT NULL,
  `cur_qty` int(11) DEFAULT NULL,
  `cur_price` int(11) DEFAULT NULL,
  `cur_value` int(11) DEFAULT NULL,
  `last_issue` date DEFAULT NULL,
  `last_receive` date DEFAULT NULL,
  `part_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_material`
--

INSERT INTO `inv_material` (`id`, `material_id_code`, `material_id`, `material_sub_id`, `material_description`, `brand_name`, `type`, `material_min_stock`, `avg_con_sump`, `lead_time`, `re_order_level`, `qty_unit`, `op_balance_qty`, `op_balance_val`, `chk_print`, `cur_qty`, `cur_price`, `cur_value`, `last_issue`, `last_receive`, `part_no`) VALUES
(390, '01-01-001', '44', '172', 'Napa Extra', '', '', 100, NULL, NULL, 0, '26', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(391, '01-01-002', '44', '172', 'Ace Plus', '', '', 100, NULL, NULL, 0, '26', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(392, '01-01-003', '44', '172', 'Napa', '', '', 100, NULL, NULL, 0, '26', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(393, '01-01-004', '44', '172', 'Ace', '', '', 100, NULL, NULL, 0, '26', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialbalance`
--

CREATE TABLE `inv_materialbalance` (
  `id` int(11) NOT NULL,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbin_val` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbout_val` float NOT NULL,
  `mbprice` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 NOT NULL,
  `mbserial` float NOT NULL,
  `mbserial_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `jvno` varchar(25) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialcategory`
--

CREATE TABLE `inv_materialcategory` (
  `id` int(11) NOT NULL,
  `material_sub_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `material_sub_description` varchar(75) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_materialcategory`
--

INSERT INTO `inv_materialcategory` (`id`, `material_sub_id`, `category_id`, `material_sub_description`) VALUES
(172, '01-01-000', '44', 'Paracitamol'),
(173, '01-02-000', '44', 'Diclofen');

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialcategorysub`
--

CREATE TABLE `inv_materialcategorysub` (
  `id` int(11) NOT NULL,
  `category_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `category_description` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `stock_acct_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `chk_sbalance` int(11) DEFAULT NULL,
  `consumption_ac` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_materialcategorysub`
--

INSERT INTO `inv_materialcategorysub` (`id`, `category_id`, `category_description`, `stock_acct_id`, `chk_sbalance`, `consumption_ac`) VALUES
(44, '01-00-000', 'Tablet', NULL, NULL, NULL),
(45, '02-00-000', 'Capsule', NULL, NULL, NULL),
(46, '03-00-000', 'Sirup', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inv_particulars`
--

CREATE TABLE `inv_particulars` (
  `id` int(11) NOT NULL,
  `particulars_id` varchar(100) NOT NULL,
  `type_id` varchar(100) NOT NULL,
  `particulars` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_particulars_type`
--

CREATE TABLE `inv_particulars_type` (
  `id` int(11) NOT NULL,
  `type_id` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_product`
--

CREATE TABLE `inv_product` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `alert_qty` int(11) NOT NULL,
  `rak_no` varchar(20) NOT NULL,
  `packing_mode` varchar(50) NOT NULL,
  `box_pics` int(11) NOT NULL,
  `free_per_box` int(11) NOT NULL,
  `free_pics` int(11) NOT NULL,
  `buy_price` float NOT NULL,
  `sale_price` float NOT NULL,
  `pics_sale` float NOT NULL,
  `price_date` varchar(15) NOT NULL,
  `barcode` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(20) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inv_product`
--

INSERT INTO `inv_product` (`id`, `type_id`, `brand_id`, `cat_id`, `product_name`, `alert_qty`, `rak_no`, `packing_mode`, `box_pics`, `free_per_box`, `free_pics`, `buy_price`, `sale_price`, `pics_sale`, `price_date`, `barcode`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(6, 6, 18, 9, 'asdfds', 23432, '234', 'Carton', 24323, 0, 0, 1243, 5674, 0.23, '10/03/1991', '', 1, '2023-03-02 09:59:41', '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_purchase`
--

CREATE TABLE `inv_purchase` (
  `id` int(11) NOT NULL,
  `purchase_no` varchar(25) CHARACTER SET utf8 NOT NULL,
  `purchase_date` datetime DEFAULT NULL,
  `purchase_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `receive_acct_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `supplier_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `postedtogl` int(11) DEFAULT NULL,
  `remarks` varchar(180) CHARACTER SET utf8 DEFAULT NULL,
  `purchase_type` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `purchase_ware_hosue_id` int(11) DEFAULT NULL,
  `purchase_unit_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `chk_year_end` int(11) DEFAULT NULL,
  `receive_total` float DEFAULT NULL,
  `no_of_material` float DEFAULT NULL,
  `challanno` varchar(500) DEFAULT NULL,
  `jv_no` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `requisitionno` varchar(500) DEFAULT NULL,
  `requisition_date` datetime DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_purchasedetail`
--

CREATE TABLE `inv_purchasedetail` (
  `id` int(11) NOT NULL,
  `purchase_no` varchar(25) CHARACTER SET utf8 NOT NULL,
  `material_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `purchase_qty` float NOT NULL,
  `unit_price` float NOT NULL,
  `sl_no` int(11) NOT NULL,
  `total_purchase` float NOT NULL,
  `rd_serial_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_receive`
--

CREATE TABLE `inv_receive` (
  `id` int(11) NOT NULL,
  `mrr_no` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mrr_date` date DEFAULT NULL,
  `purchase_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `receive_acct_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `supplier_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `postedtogl` int(11) DEFAULT NULL,
  `vat_challan_no` varchar(100) NOT NULL,
  `remarks` varchar(180) CHARACTER SET utf8 DEFAULT NULL,
  `receive_type` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) DEFAULT NULL,
  `receive_unit_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `chk_year_end` int(11) DEFAULT NULL,
  `receive_total` float DEFAULT NULL,
  `no_of_material` float DEFAULT NULL,
  `challanno` varchar(500) DEFAULT NULL,
  `challan_date` date NOT NULL,
  `jv_no` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `requisitionno` varchar(500) DEFAULT NULL,
  `requisition_date` datetime DEFAULT NULL,
  `received_by` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `mrr_image` varchar(10000) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_receivedetail`
--

CREATE TABLE `inv_receivedetail` (
  `id` int(11) NOT NULL,
  `mrr_no` varchar(25) CHARACTER SET utf8 NOT NULL,
  `material_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `receive_qty` float NOT NULL,
  `unit_price` float NOT NULL,
  `sl_no` int(11) NOT NULL,
  `total_receive` float NOT NULL,
  `rd_serial_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(1000) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_requisition`
--

CREATE TABLE `inv_requisition` (
  `id` int(11) NOT NULL,
  `requisition_id` varchar(25) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `requisition_date` datetime NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `no_of_material` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_requisition_details`
--

CREATE TABLE `inv_requisition_details` (
  `id` int(11) NOT NULL,
  `requisition_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `requisition_qty` float NOT NULL,
  `sl_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_return`
--

CREATE TABLE `inv_return` (
  `id` int(11) NOT NULL,
  `return_id` varchar(25) NOT NULL,
  `return_date` date NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `approval_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_returndetail`
--

CREATE TABLE `inv_returndetail` (
  `id` int(11) NOT NULL,
  `return_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `return_date` date NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `return_qty` float NOT NULL,
  `return_price` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_serviceinvoice`
--

CREATE TABLE `inv_serviceinvoice` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `service_name` varchar(2000) NOT NULL,
  `amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_supplier`
--

CREATE TABLE `inv_supplier` (
  `id` int(11) NOT NULL,
  `supplier_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `supplier_company` varchar(120) CHARACTER SET utf8 NOT NULL,
  `supplier_address` varchar(150) CHARACTER SET utf8 NOT NULL,
  `supplier_city` varchar(50) CHARACTER SET utf8 NOT NULL,
  `supplier_country` varchar(50) CHARACTER SET utf8 NOT NULL,
  `contact_person` varchar(75) CHARACTER SET utf8 NOT NULL,
  `sposition` varchar(75) CHARACTER SET utf8 NOT NULL,
  `supplier_phone` varchar(18) CHARACTER SET utf8 NOT NULL,
  `supplier_op_balance` float NOT NULL,
  `supplier_type` varchar(100) NOT NULL,
  `material_type` varchar(100) NOT NULL,
  `cc` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_supplierbalance`
--

CREATE TABLE `inv_supplierbalance` (
  `id` int(11) NOT NULL,
  `sb_ref_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `sb_date` date NOT NULL,
  `sb_supplier_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `sb_dr_amount` float NOT NULL,
  `sb_cr_amount` float NOT NULL,
  `sb_remark` varchar(175) CHARACTER SET utf8 NOT NULL,
  `sb_partac_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_supplierbalance`
--

INSERT INTO `inv_supplierbalance` (`id`, `sb_ref_id`, `warehouse_id`, `sb_date`, `sb_supplier_id`, `sb_dr_amount`, `sb_cr_amount`, `sb_remark`, `sb_partac_id`, `approval_status`) VALUES
(3381, 'OP', '', '2023-02-20', 'SID-001', 0, 0, 'Opening balance', 'OP', 0),
(3382, 'OP', '', '2023-02-22', 'SID-002', 0, 2343, 'Opening balance', 'OP', 0),
(3383, 'OP', '', '2023-02-22', 'SID-002', 0, 2343, 'Opening balance', 'OP', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_technicianinfo`
--

CREATE TABLE `inv_technicianinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `department` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `district` varchar(100) NOT NULL,
  `postcode` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `emg_contact` varchar(100) NOT NULL,
  `emg_rel` varchar(100) NOT NULL,
  `emg_tel` varchar(100) NOT NULL,
  `emg_mob` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_tranferdetail`
--

CREATE TABLE `inv_tranferdetail` (
  `id` int(11) NOT NULL,
  `transfer_id` varchar(100) NOT NULL,
  `material_id` varchar(100) NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `transfer_qty` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `inwarehouse` varchar(100) NOT NULL,
  `outwarehouse` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inv_tranferdetail`
--

INSERT INTO `inv_tranferdetail` (`id`, `transfer_id`, `material_id`, `material_name`, `transfer_qty`, `unit`, `type`, `inwarehouse`, `outwarehouse`) VALUES
(1070, 'WT-001', '01-01-001', '386', '5', '22', '1', '18', '17'),
(1071, 'WT-002', '01-01-001', '386', '2', '22', '1', '17', '18'),
(1072, 'WT-003', '01-01-001', '386', '7', '22', '1', '18', '17'),
(1073, 'TRN-BT003', '01-01-003', '388', '10', '22', '1', '18', '17');

-- --------------------------------------------------------

--
-- Table structure for table `inv_transfermaster`
--

CREATE TABLE `inv_transfermaster` (
  `id` int(11) NOT NULL,
  `transfer_id` varchar(100) NOT NULL,
  `transfer_date` varchar(100) NOT NULL,
  `from_warehouse` varchar(100) NOT NULL,
  `to_warehouse` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inv_transfermaster`
--

INSERT INTO `inv_transfermaster` (`id`, `transfer_id`, `transfer_date`, `from_warehouse`, `to_warehouse`, `remarks`) VALUES
(522, 'WT-001', '2023-02-12', '17', '18', 'f'),
(523, 'WT-002', '2023-02-12', '18', '17', 'jl'),
(524, 'WT-003', '2023-02-12', '17', '18', 'ewer'),
(525, 'TRN-BT003', '2023-02-12', '17', '18', 'ads');

-- --------------------------------------------------------

--
-- Table structure for table `inv_voucher`
--

CREATE TABLE `inv_voucher` (
  `id` int(11) NOT NULL,
  `voucher_id` varchar(100) NOT NULL,
  `voucher_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_voucherdetails`
--

CREATE TABLE `inv_voucherdetails` (
  `id` int(11) NOT NULL,
  `voucher_id` varchar(100) NOT NULL,
  `voucher_cat` varchar(100) NOT NULL,
  `voucher_type` varchar(100) NOT NULL,
  `voucher_details` varchar(5000) NOT NULL,
  `amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_voucher_cat`
--

CREATE TABLE `inv_voucher_cat` (
  `id` int(11) NOT NULL,
  `voucher_id` varchar(100) NOT NULL,
  `voucher_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_warehosueinfo`
--

CREATE TABLE `inv_warehosueinfo` (
  `id` int(11) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `name` varchar(75) CHARACTER SET utf8 NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_warehosueinfo`
--

INSERT INTO `inv_warehosueinfo` (`id`, `warehouse_id`, `name`, `short_name`, `project_id`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13, 'WH-000', 'Central warehouse', 'CW', '4', 'Payra', NULL, 0, '2020-09-09 05:38:39', NULL, NULL),
(17, 'WH-002', 'Battery', 'BT', '4', '-', NULL, 0, '2023-02-12 05:04:56', NULL, NULL),
(18, 'WH-003', 'Plastic', 'PL', '4', '-', NULL, 0, '2023-02-12 05:05:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(400) DEFAULT NULL,
  `code` varchar(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_details`
--

CREATE TABLE `item_details` (
  `id` int(11) NOT NULL,
  `parent_item_id` int(11) NOT NULL,
  `sub_item_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `item_code` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `materialbalance`
--

CREATE TABLE `materialbalance` (
  `id` int(11) NOT NULL,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbin_val` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbout_val` float NOT NULL,
  `mbprice` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 NOT NULL,
  `mbserial` float NOT NULL,
  `mbserial_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `jvno` varchar(25) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mem_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mem_id`, `firstname`, `lastname`, `address`) VALUES
(3, 'Sakura', 'Haruna', 'Konoha');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('backend','frontend') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `view_permission_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'view_route',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 - Dashboard , 2 - Email , 3 - Both',
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `project_id` int(11) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cannonical_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent_category`
--

CREATE TABLE `parent_category` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `parent_code` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plant_and_equipment`
--

CREATE TABLE `plant_and_equipment` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `equipment_type` int(11) DEFAULT NULL,
  `date_form` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `name` varchar(700) DEFAULT NULL,
  `eel_code` varchar(300) DEFAULT NULL,
  `country_of_origin` varchar(400) DEFAULT NULL,
  `capacity` varchar(300) DEFAULT NULL,
  `make_by` varchar(300) DEFAULT NULL,
  `model` varchar(300) DEFAULT NULL,
  `year_of_manufac` int(11) DEFAULT NULL,
  `present_location` varchar(300) DEFAULT NULL,
  `present_condition` varchar(400) DEFAULT NULL,
  `remarks` text NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `present_condition`
--

CREATE TABLE `present_condition` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `name` varchar(400) DEFAULT NULL,
  `unit_name` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_movement`
--

CREATE TABLE `product_movement` (
  `id` int(11) NOT NULL,
  `movement_no` varchar(500) DEFAULT NULL,
  `entry_date` datetime NOT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `project_form` int(11) DEFAULT NULL,
  `project_to` int(11) DEFAULT NULL,
  `total_quantity` int(11) NOT NULL,
  `remarks` text DEFAULT NULL,
  `movement_type` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_movement_details`
--

CREATE TABLE `product_movement_details` (
  `id` int(11) NOT NULL,
  `movement_no` varchar(500) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `name` varchar(500) NOT NULL,
  `incharge` varchar(100) NOT NULL,
  `address` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `code`, `name`, `incharge`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'PR-001', 'Corporate', '-', 'Khawaja Tower, Dhaka', NULL, NULL, '2023-02-12 05:04:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_type`
--

CREATE TABLE `project_type` (
  `id` int(11) NOT NULL,
  `name` varchar(600) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_inv_issue`
-- (See below for the actual view)
--
CREATE TABLE `qry_inv_issue` (
`issue_id` varchar(25)
,`issue_date` date
,`employee_id` varchar(100)
,`material_id` varchar(9)
,`issue_qty` float
,`warehouse_id` varchar(100)
,`project_id` varchar(25)
,`package_id` varchar(100)
,`building_id` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_typewiseconsumption`
-- (See below for the actual view)
--
CREATE TABLE `qry_typewiseconsumption` (
`material_id` varchar(9)
,`issue_qty` float
,`type` varchar(100)
,`issue_date` date
,`warehouse_id` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_typewisestock`
-- (See below for the actual view)
--
CREATE TABLE `qry_typewisestock` (
`mb_ref_id` varchar(25)
,`mb_materialid` varchar(25)
,`mb_date` date
,`mbin_qty` float
,`mbout_qty` float
,`mbtype` varchar(30)
,`project_id` varchar(100)
,`warehouse_id` varchar(100)
,`package_id` varchar(100)
,`type` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `rlp_access_chain`
--

CREATE TABLE `rlp_access_chain` (
  `id` int(11) NOT NULL,
  `chain_type` varchar(150) NOT NULL DEFAULT 'default',
  `division_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `rlp_type` int(11) DEFAULT NULL,
  `users` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rlp_acknowledgement`
--

CREATE TABLE `rlp_acknowledgement` (
  `id` int(11) NOT NULL,
  `rlp_info_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ack_order` int(11) NOT NULL COMMENT 'acknowledge order to show the RLP',
  `ack_status` tinyint(4) NOT NULL DEFAULT 0,
  `ack_request_date` datetime NOT NULL,
  `ack_updated_date` datetime DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=not visible; 1= visible',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rlp_delete_history`
--

CREATE TABLE `rlp_delete_history` (
  `id` int(11) NOT NULL,
  `rlp_info_id` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rlp_details`
--

CREATE TABLE `rlp_details` (
  `id` int(11) NOT NULL,
  `rlp_info_id` int(11) NOT NULL,
  `item_des` longtext DEFAULT NULL,
  `purpose` longtext DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `estimated_price` float DEFAULT NULL,
  `supplier` text DEFAULT NULL,
  `details_remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rlp_info`
--

CREATE TABLE `rlp_info` (
  `id` int(11) NOT NULL,
  `rlp_no` varchar(100) NOT NULL,
  `rlp_user_id` int(11) UNSIGNED NOT NULL,
  `rlp_user_office_id` varchar(500) NOT NULL,
  `priority` tinyint(4) NOT NULL,
  `request_date` datetime NOT NULL,
  `request_division` int(11) DEFAULT NULL,
  `request_department` int(11) NOT NULL,
  `request_person` varchar(650) DEFAULT NULL,
  `designation` varchar(500) DEFAULT NULL,
  `email` varchar(500) NOT NULL,
  `contact_number` varchar(100) DEFAULT NULL,
  `user_remarks` text DEFAULT NULL,
  `rlp_status` tinyint(1) NOT NULL DEFAULT 5,
  `is_viewd` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rlp_remarks_history`
--

CREATE TABLE `rlp_remarks_history` (
  `id` int(11) NOT NULL,
  `rlp_info_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `remarks` longtext NOT NULL,
  `remarks_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `all` tinyint(1) NOT NULL DEFAULT 0,
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disclaimer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sttable`
--

CREATE TABLE `sttable` (
  `id` int(11) NOT NULL,
  `vehicleno` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `registrationno` varchar(150) NOT NULL,
  `tax_issdt` date NOT NULL,
  `tax_expdt` date NOT NULL,
  `fit_issdt` date NOT NULL,
  `fit_expdt` date NOT NULL,
  `ins_issdt` date NOT NULL,
  `ins_expdt` date NOT NULL,
  `rou_issdt` date NOT NULL,
  `rou_expdt` date NOT NULL,
  `engineno` varchar(55) NOT NULL,
  `chasisno` varchar(50) NOT NULL,
  `regdate` date NOT NULL,
  `serialno` varchar(50) NOT NULL,
  `modelno` varchar(50) NOT NULL,
  `ccno` varchar(50) NOT NULL,
  `netvalue` int(11) NOT NULL,
  `sno` int(11) NOT NULL,
  `myear` varchar(50) NOT NULL,
  `office` varchar(75) NOT NULL,
  `division` varchar(79) NOT NULL,
  `location` varchar(80) NOT NULL,
  `photo` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sub_code` varchar(400) NOT NULL,
  `name` varchar(600) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `supplier_phone` varchar(100) NOT NULL,
  `supplier_op_balance` varchar(100) NOT NULL,
  `supplier_type` varchar(100) NOT NULL,
  `material_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `code`, `name`, `address`, `contact_person`, `supplier_phone`, `supplier_op_balance`, `supplier_type`, `material_type`) VALUES
(210, 'SID-001', 'No Supplier', '-', '-', '-', '0', 'cash', '44'),
(211, 'SID-002', 'Test', 'asef', 'asdf', '324534', '2343', 'cash', '45'),
(212, 'SID-002', 'Testrtrtrtrt', 'asef', 'asdf', '324534', '2343', 'cash', '46');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payment`
--

CREATE TABLE `supplier_payment` (
  `id` int(11) NOT NULL,
  `voucherid` varchar(15) CHARACTER SET latin1 NOT NULL,
  `voucherdate` date NOT NULL,
  `supplierid` varchar(15) CHARACTER SET latin1 NOT NULL,
  `paymenttype` varchar(25) CHARACTER SET latin1 NOT NULL,
  `amount` double NOT NULL,
  `remarks` varchar(500) CHARACTER SET latin1 NOT NULL,
  `sp_photo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(250) NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(250) NOT NULL,
  `PostalCode` varchar(30) NOT NULL,
  `Country` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_billpayment`
--

CREATE TABLE `tb_billpayment` (
  `id` int(11) NOT NULL,
  `mr_no` varchar(100) NOT NULL,
  `mr_date` varchar(100) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `accheadname` varchar(100) NOT NULL,
  `debitamount` varchar(100) NOT NULL,
  `creditamount` varchar(100) NOT NULL,
  `mode` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `check_no` text NOT NULL,
  `check_date` varchar(100) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_ledger`
--

CREATE TABLE `tb_ledger` (
  `id` int(11) NOT NULL,
  `source` varchar(100) NOT NULL,
  `ref_no` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `tran_date` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL,
  `debit` varchar(100) NOT NULL,
  `credit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `temp_product_receive_data`
--

CREATE TABLE `temp_product_receive_data` (
  `id` int(11) NOT NULL,
  `receive_no` varchar(500) NOT NULL,
  `receive_date` datetime NOT NULL,
  `product_id` int(11) NOT NULL,
  `part_no` varchar(500) NOT NULL,
  `supplier_id` varchar(250) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` float NOT NULL DEFAULT 0,
  `project_id` int(11) NOT NULL,
  `project_to_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tv_users`
--

CREATE TABLE `tv_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` varchar(10) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` varchar(10) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(6, 'Medicine '),
(9, 'Beauty Product');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `id2` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` int(11) DEFAULT NULL,
  `project_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `is_term_accept` tinyint(1) NOT NULL DEFAULT 0 COMMENT ' 0 = not accepted,1 = accepted',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `branch_id`, `department_id`, `id2`, `name`, `first_name`, `last_name`, `user_type`, `designation`, `project_id`, `warehouse_id`, `email`, `password`, `status`, `confirmation_code`, `confirmed`, `is_term_accept`, `remember_token`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, NULL, NULL, 1, 'Admin SPL', 'Admin', 'SPL', 'admin', NULL, '2', '13', 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 'b1970adb3f301c8440c81e45b526060c', 1, 0, 'PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr', 1, 1, '2019-01-14 00:17:02', '2019-01-20 20:36:38', NULL),
(4, 1, 1, 3, 4, 'Super Admin', 'Super', 'Admin', 'superAdmin', 16, '2', '7', 'superadmin@admin.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 'b1970adb3f301c8440c81e45b526060c', 1, 0, 'PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr', 4, 4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure for view `qry_inv_issue`
--
DROP TABLE IF EXISTS `qry_inv_issue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_inv_issue`  AS SELECT `group_inventory`.`inv_issue`.`issue_id` AS `issue_id`, `group_inventory`.`inv_issue`.`issue_date` AS `issue_date`, `group_inventory`.`inv_issue`.`employee_id` AS `employee_id`, `group_inventory`.`inv_issuedetail`.`material_id` AS `material_id`, `group_inventory`.`inv_issuedetail`.`issue_qty` AS `issue_qty`, `group_inventory`.`inv_issue`.`warehouse_id` AS `warehouse_id`, `group_inventory`.`inv_issue`.`project_id` AS `project_id`, `group_inventory`.`inv_issuedetail`.`package_id` AS `package_id`, `group_inventory`.`inv_issuedetail`.`building_id` AS `building_id` FROM (`group_inventory`.`inv_issue` join `group_inventory`.`inv_issuedetail` on(`group_inventory`.`inv_issue`.`issue_id` = `group_inventory`.`inv_issuedetail`.`issue_id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `qry_typewiseconsumption`
--
DROP TABLE IF EXISTS `qry_typewiseconsumption`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_typewiseconsumption`  AS SELECT `qry_inv_issue`.`material_id` AS `material_id`, `qry_inv_issue`.`issue_qty` AS `issue_qty`, `inventory_module`.`inv_material`.`type` AS `type`, `qry_inv_issue`.`issue_date` AS `issue_date`, `qry_inv_issue`.`warehouse_id` AS `warehouse_id` FROM (`inventory_module`.`inv_material` join `inventory_module`.`qry_inv_issue` on(`inventory_module`.`inv_material`.`material_id_code` = `qry_inv_issue`.`material_id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `qry_typewisestock`
--
DROP TABLE IF EXISTS `qry_typewisestock`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_typewisestock`  AS SELECT `inventory_module`.`inv_materialbalance`.`mb_ref_id` AS `mb_ref_id`, `inventory_module`.`inv_materialbalance`.`mb_materialid` AS `mb_materialid`, `inventory_module`.`inv_materialbalance`.`mb_date` AS `mb_date`, `inventory_module`.`inv_materialbalance`.`mbin_qty` AS `mbin_qty`, `inventory_module`.`inv_materialbalance`.`mbout_qty` AS `mbout_qty`, `inventory_module`.`inv_materialbalance`.`mbtype` AS `mbtype`, `inventory_module`.`inv_materialbalance`.`project_id` AS `project_id`, `inventory_module`.`inv_materialbalance`.`warehouse_id` AS `warehouse_id`, `inventory_module`.`inv_materialbalance`.`package_id` AS `package_id`, `inventory_module`.`inv_material`.`type` AS `type` FROM (`inventory_module`.`inv_material` join `inventory_module`.`inv_materialbalance` on(`inventory_module`.`inv_material`.`material_id_code` = `inventory_module`.`inv_materialbalance`.`mb_materialid`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complain_type`
--
ALTER TABLE `complain_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_challan`
--
ALTER TABLE `inv_challan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_complain`
--
ALTER TABLE `inv_complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_complaindetails`
--
ALTER TABLE `inv_complaindetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_designation`
--
ALTER TABLE `inv_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_employee`
--
ALTER TABLE `inv_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_invoice`
--
ALTER TABLE `inv_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_invoice_details`
--
ALTER TABLE `inv_invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_issue`
--
ALTER TABLE `inv_issue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_issuedetail`
--
ALTER TABLE `inv_issuedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_job_card`
--
ALTER TABLE `inv_job_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_job_card_details`
--
ALTER TABLE `inv_job_card_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_material`
--
ALTER TABLE `inv_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialbalance`
--
ALTER TABLE `inv_materialbalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialcategory`
--
ALTER TABLE `inv_materialcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialcategorysub`
--
ALTER TABLE `inv_materialcategorysub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_particulars`
--
ALTER TABLE `inv_particulars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_particulars_type`
--
ALTER TABLE `inv_particulars_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_product`
--
ALTER TABLE `inv_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_purchase`
--
ALTER TABLE `inv_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_purchasedetail`
--
ALTER TABLE `inv_purchasedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_receive`
--
ALTER TABLE `inv_receive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_receivedetail`
--
ALTER TABLE `inv_receivedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_return`
--
ALTER TABLE `inv_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_returndetail`
--
ALTER TABLE `inv_returndetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_serviceinvoice`
--
ALTER TABLE `inv_serviceinvoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_supplier`
--
ALTER TABLE `inv_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_supplierbalance`
--
ALTER TABLE `inv_supplierbalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_technicianinfo`
--
ALTER TABLE `inv_technicianinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_tranferdetail`
--
ALTER TABLE `inv_tranferdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_transfermaster`
--
ALTER TABLE `inv_transfermaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_voucher`
--
ALTER TABLE `inv_voucher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_voucherdetails`
--
ALTER TABLE `inv_voucherdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_voucher_cat`
--
ALTER TABLE `inv_voucher_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_warehosueinfo`
--
ALTER TABLE `inv_warehosueinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materialbalance`
--
ALTER TABLE `materialbalance`
  ADD KEY `id` (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mem_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rlp_access_chain`
--
ALTER TABLE `rlp_access_chain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rlp_acknowledgement`
--
ALTER TABLE `rlp_acknowledgement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlp_info_id` (`rlp_info_id`);

--
-- Indexes for table `rlp_delete_history`
--
ALTER TABLE `rlp_delete_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlp_info_id` (`rlp_info_id`);

--
-- Indexes for table `rlp_details`
--
ALTER TABLE `rlp_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlp_info_id` (`rlp_info_id`);

--
-- Indexes for table `rlp_info`
--
ALTER TABLE `rlp_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rlp_remarks_history`
--
ALTER TABLE `rlp_remarks_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlp_info_id` (`rlp_info_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sttable`
--
ALTER TABLE `sttable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `tb_billpayment`
--
ALTER TABLE `tb_billpayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_ledger`
--
ALTER TABLE `tb_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2101;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `complain_type`
--
ALTER TABLE `complain_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `inv_challan`
--
ALTER TABLE `inv_challan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `inv_complain`
--
ALTER TABLE `inv_complain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `inv_complaindetails`
--
ALTER TABLE `inv_complaindetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `inv_designation`
--
ALTER TABLE `inv_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inv_employee`
--
ALTER TABLE `inv_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10811;

--
-- AUTO_INCREMENT for table `inv_invoice`
--
ALTER TABLE `inv_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `inv_invoice_details`
--
ALTER TABLE `inv_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `inv_issue`
--
ALTER TABLE `inv_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1116;

--
-- AUTO_INCREMENT for table `inv_issuedetail`
--
ALTER TABLE `inv_issuedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2112;

--
-- AUTO_INCREMENT for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `inv_job_card`
--
ALTER TABLE `inv_job_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `inv_job_card_details`
--
ALTER TABLE `inv_job_card_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `inv_material`
--
ALTER TABLE `inv_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- AUTO_INCREMENT for table `inv_materialbalance`
--
ALTER TABLE `inv_materialbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78724;

--
-- AUTO_INCREMENT for table `inv_materialcategory`
--
ALTER TABLE `inv_materialcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `inv_materialcategorysub`
--
ALTER TABLE `inv_materialcategorysub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `inv_particulars`
--
ALTER TABLE `inv_particulars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inv_particulars_type`
--
ALTER TABLE `inv_particulars_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inv_product`
--
ALTER TABLE `inv_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inv_purchase`
--
ALTER TABLE `inv_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `inv_purchasedetail`
--
ALTER TABLE `inv_purchasedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inv_receive`
--
ALTER TABLE `inv_receive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3565;

--
-- AUTO_INCREMENT for table `inv_receivedetail`
--
ALTER TABLE `inv_receivedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4683;

--
-- AUTO_INCREMENT for table `inv_return`
--
ALTER TABLE `inv_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `inv_returndetail`
--
ALTER TABLE `inv_returndetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `inv_serviceinvoice`
--
ALTER TABLE `inv_serviceinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `inv_supplier`
--
ALTER TABLE `inv_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inv_supplierbalance`
--
ALTER TABLE `inv_supplierbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3384;

--
-- AUTO_INCREMENT for table `inv_technicianinfo`
--
ALTER TABLE `inv_technicianinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inv_tranferdetail`
--
ALTER TABLE `inv_tranferdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1074;

--
-- AUTO_INCREMENT for table `inv_transfermaster`
--
ALTER TABLE `inv_transfermaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;

--
-- AUTO_INCREMENT for table `inv_voucher`
--
ALTER TABLE `inv_voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inv_voucherdetails`
--
ALTER TABLE `inv_voucherdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inv_voucher_cat`
--
ALTER TABLE `inv_voucher_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inv_warehosueinfo`
--
ALTER TABLE `inv_warehosueinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `materialbalance`
--
ALTER TABLE `materialbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rlp_access_chain`
--
ALTER TABLE `rlp_access_chain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rlp_acknowledgement`
--
ALTER TABLE `rlp_acknowledgement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rlp_delete_history`
--
ALTER TABLE `rlp_delete_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rlp_details`
--
ALTER TABLE `rlp_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rlp_info`
--
ALTER TABLE `rlp_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rlp_remarks_history`
--
ALTER TABLE `rlp_remarks_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sttable`
--
ALTER TABLE `sttable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_billpayment`
--
ALTER TABLE `tb_billpayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tb_ledger`
--
ALTER TABLE `tb_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rlp_acknowledgement`
--
ALTER TABLE `rlp_acknowledgement`
  ADD CONSTRAINT `rlp_acknowledgement_ibfk_1` FOREIGN KEY (`rlp_info_id`) REFERENCES `rlp_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rlp_delete_history`
--
ALTER TABLE `rlp_delete_history`
  ADD CONSTRAINT `rlp_delete_history_ibfk_1` FOREIGN KEY (`rlp_info_id`) REFERENCES `rlp_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rlp_details`
--
ALTER TABLE `rlp_details`
  ADD CONSTRAINT `rlp_details_ibfk_1` FOREIGN KEY (`rlp_info_id`) REFERENCES `rlp_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
