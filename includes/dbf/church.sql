-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2020 at 09:49 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'admin12345', '2019-02-21 11:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `Amount` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `expense_date` date NOT NULL,
  `expense_head` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`Amount`, `description`, `expense_date`, `expense_head`) VALUES
(50000, 'May', '2020-05-27', 'none'),
(7999, 'May', '2020-05-28', ''),
(7999, 'May', '2020-05-28', ''),
(12000, 'Last', '2020-05-26', ''),
(5555, 'l', '2020-05-19', ''),
(4444444, 'rs', '2020-05-07', ''),
(454545, 'ffff', '2020-05-13', ''),
(11111111, 'grg', '2020-05-28', '');

-- --------------------------------------------------------

--
-- Table structure for table `expense_type`
--

CREATE TABLE `expense_type` (
  `expense_head` text COLLATE utf8_unicode_ci NOT NULL,
  `descr` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expense_type`
--

INSERT INTO `expense_type` (`expense_head`, `descr`) VALUES
('Electrical bills', 'Monthly '),
('Lunch', 'Weekly');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `income_head` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `income_date` date NOT NULL,
  `Amount` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`income_head`, `income_date`, `Amount`, `description`) VALUES
('', '2020-05-26', 881, 'igu'),
('', '2020-05-27', 6667, 'eghuih'),
('', '2020-05-27', 6667, 'eghuih'),
('', '2020-05-27', 6667, 'eghuih'),
('', '2020-05-26', 484, 'giugu'),
('', '2020-05-26', 484, 'giugu'),
('', '2020-05-26', 484, 'giugu'),
('', '2020-05-27', 455, 'iiii'),
('', '2020-05-27', 30000, ''),
('', '2020-05-11', 7777777, 'eee'),
('', '2020-05-11', 7777777, 'eee'),
('', '2020-05-11', 7777777, 'eee'),
('', '2020-05-11', 7777777, 'eee'),
('', '2020-05-11', 7777777, 'eee');

-- --------------------------------------------------------

--
-- Table structure for table `income_type`
--

CREATE TABLE `income_type` (
  `income_head` text COLLATE utf8_unicode_ci NOT NULL,
  `descr` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `income_type`
--

INSERT INTO `income_type` (`income_head`, `descr`) VALUES
('Mpesae', 'Church paybill'),
('Donation', 'This is a test'),
('test', 'this is a tes'),
('test', 'this is a tes'),
('test3', 'thig'),
('New', 'This is a new cat');

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_payments`
--

CREATE TABLE `mpesa_payments` (
  `Auto` int(11) NOT NULL,
  `TransactionType` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `TransID` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `TransTime` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `TransAmount` double NOT NULL,
  `BusinessShortCode` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `BillRefNumber` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `InvoiceNumber` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ThirdPartyTransID` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `MSISDN` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `FirstName` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `MiddleName` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `LastName` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `OrgAccountBalance` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mpesa_payments`
--

INSERT INTO `mpesa_payments` (`Auto`, `TransactionType`, `TransID`, `TransTime`, `TransAmount`, `BusinessShortCode`, `BillRefNumber`, `InvoiceNumber`, `ThirdPartyTransID`, `MSISDN`, `FirstName`, `MiddleName`, `LastName`, `OrgAccountBalance`) VALUES
(1, 'test', '1111', 'test', 30000, '564424', '5', '56', '34445', '663366tcst', 'Dena', 'Blaze', 'Last', 88);

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) NOT NULL,
  `Section` varchar(5) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(9, 'One', 1, 'A', '2019-02-21 12:34:22', '0000-00-00 00:00:00'),
(10, 'Two', 2, 'B', '2019-02-21 12:34:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(22, 7, 9, 10, 100, '2019-02-21 12:38:59', NULL),
(23, 7, 9, 9, 90, '2019-02-21 12:38:59', NULL),
(24, 7, 9, 8, 99, '2019-02-21 12:38:59', NULL),
(25, 8, 10, 10, 90, '2019-02-21 12:39:15', NULL),
(26, 8, 10, 9, 90, '2019-02-21 12:39:15', NULL),
(27, 8, 10, 8, 100, '2019-02-21 12:39:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `RollId` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(7, 'Eyob Shiferaw', '0192', 'eyoba21@gmail.com', 'Male', '2007-01-01', 9, '2019-02-21 12:36:37', NULL, 1),
(8, 'Tesfu Amsale', '0011', 'tesfu@gmail.com', 'Male', '2000-12-28', 10, '2019-02-21 12:37:43', '2019-03-16 10:22:42', 1),
(9, 'ee', 'dd', 'yyferu@gm.com', 'Male', '2020-05-06', 9, '2020-05-26 11:06:26', NULL, 1),
(10, '3437', '47', '4here@q4h.q3re', 'Male', '2020-05-12', 9, '2020-05-26 17:11:10', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(28, 9, 8, 1, '2019-02-21 12:38:21', '2019-02-21 12:38:21'),
(29, 9, 9, 1, '2019-02-21 12:38:26', '2019-02-21 12:38:26'),
(30, 9, 10, 1, '2019-02-21 12:38:31', '2019-02-21 12:38:31'),
(31, 10, 8, 1, '2019-02-21 12:38:35', '2019-02-21 12:38:35'),
(32, 10, 9, 1, '2019-02-21 12:38:38', '2019-02-21 12:38:38'),
(33, 10, 10, 1, '2019-02-21 12:38:42', '2019-02-21 12:38:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(8, 'Maths', 'Maths01', '2019-02-21 12:35:15', '2019-03-14 19:50:31'),
(9, 'English', 'Eng11', '2019-02-21 12:35:25', '0000-00-00 00:00:00'),
(10, 'Biology', 'Bio12', '2019-02-21 12:35:40', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  ADD PRIMARY KEY (`Auto`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  MODIFY `Auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
