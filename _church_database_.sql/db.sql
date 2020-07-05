-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2020 at 09:17 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drive`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'accountant', 'accountant12345', '2019-02-21 11:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `assembly`
--

CREATE TABLE `assembly` (
  `id` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `nameNumeric` int(4) NOT NULL,
  `location` varchar(5) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assembly`
--

INSERT INTO `assembly` (`id`, `name`, `nameNumeric`, `location`, `CreationDate`, `UpdationDate`) VALUES
(1, 'mabusi', 1, 'nzoia', '2019-02-21 12:34:22', '2020-07-02 16:15:31'),
(2, 'lumino', 20, 'soy', '2019-02-21 12:34:33', '0000-00-00 00:00:00'),
(3, 'roberts', 3, 'soy', '2020-05-26 15:00:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `branchName` varchar(100) NOT NULL,
  `branchCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branchName`, `branchCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Lu0', 'lug01', '2019-02-21 12:35:15', '2020-07-02 14:25:30'),
(2, 'kakamega', 'kac', '2019-02-21 12:35:25', '2020-07-02 16:18:18'),
(3, 'nairobi', 'nai03', '2019-02-21 12:35:40', '0000-00-00 00:00:00'),
(4, 'bungoma', 'bug03', '2020-05-26 15:01:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `branchcombination`
--

CREATE TABLE `branchcombination` (
  `id` int(11) NOT NULL,
  `assemblyId` int(11) NOT NULL,
  `branchId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branchcombination`
--

INSERT INTO `branchcombination` (`id`, `assemblyId`, `branchId`, `status`, `CreationDate`, `Updationdate`) VALUES
(1, 1, 1, 1, '2019-02-21 12:38:21', '2019-02-21 12:38:21'),
(2, 2, 2, 1, '2019-02-21 12:38:26', '2019-02-21 12:38:26'),
(3, 3, 3, 1, '2019-02-21 12:38:31', '2019-02-21 12:38:31'),
(4, 1, 4, 1, '2019-02-21 12:38:35', '2019-02-21 12:38:35'),
(5, 2, 1, 1, '2019-02-21 12:38:38', '2019-02-21 12:38:38'),
(6, 3, 4, 0, '2019-02-21 12:38:42', '2019-02-21 12:38:42'),
(7, 3, 1, 0, '2020-06-25 03:23:06', '2020-06-25 03:23:06'),
(8, 1, 1, 0, '2020-06-29 19:11:46', '2020-06-29 19:11:46'),
(9, 1, 2, 1, '2020-07-02 16:19:03', '2020-07-02 16:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `expense_date` date NOT NULL,
  `expense_head` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `Amount`, `description`, `expense_date`, `expense_head`) VALUES
(1, 50000, 'May', '2020-05-27', 'none'),
(2, 7999, 'May', '2020-05-28', ''),
(3, 7999, 'May', '2020-05-28', ''),
(4, 12000, 'Last', '2020-05-26', ''),
(5, 5555, 'l', '2020-05-19', ''),
(6, 4444444, 'rs', '2020-05-07', ''),
(7, 4545, 'ffff', '2020-05-13', '');

-- --------------------------------------------------------

--
-- Table structure for table `expense_type`
--

CREATE TABLE `expense_type` (
  `id` int(11) NOT NULL,
  `expense_head` text COLLATE utf8_unicode_ci NOT NULL,
  `descr` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expense_type`
--

INSERT INTO `expense_type` (`id`, `expense_head`, `descr`) VALUES
(3, 'wood and furniture', 'monthly'),
(4, 'Food', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `income_head` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `income_date` date NOT NULL,
  `Amount` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `income_head`, `income_date`, `Amount`, `description`) VALUES
(105, 'Donation', '2020-07-05', 234, 'sffaadf'),
(103, 'Donation', '2020-07-05', 44, '4rewf'),
(106, 'test', '2020-07-03', 398, 'fads;kfj');

-- --------------------------------------------------------

--
-- Table structure for table `income_type`
--

CREATE TABLE `income_type` (
  `id` int(11) NOT NULL,
  `income_head` text COLLATE utf8_unicode_ci NOT NULL,
  `descr` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `income_type`
--

INSERT INTO `income_type` (`id`, `income_head`, `descr`) VALUES
(1, 'Mpesa', 'Mobiro'),
(2, 'Donation', 'This is a test'),
(3, 'test', 'this is a tes'),
(4, 'test', 'this is a tes'),
(5, 'test3', 'thig'),
(6, 'New', 'This is a new cat'),
(7, 'Bitcoin', 'These are crypto donations made to the church'),
(8, 'Tithe', 'Sunday collection'),
(9, 'Tithe', 'Sunday collection'),
(10, 'Tithe', 'Sunday collection'),
(11, 'PRIZE', 'this is '),
(12, 'PRIZE', 'this is '),
(13, 'new', 'asdfa');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `memberInvolved` varchar(100) NOT NULL,
  `cost` int(100) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `description`, `memberInvolved`, `cost`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'water and elecricity', 'samoya  emmanuel', 2000, '2020-01-01 00:00:00', '2020-05-22 12:36:37', 1),
(2, 'furnitures', 'manda timothy', 5000, '1998-12-28 00:00:00', '2019-03-16 10:22:42', 1),
(3, 'wood', 'John wekesa', 3000, '2020-05-26 18:16:21', '2020-05-26 18:16:21', 1),
(4, 'electricity bill', 'Rurh muhanji', 2000, '2020-05-26 18:27:50', '2020-05-26 18:16:21', 1),
(5, 'transport', 'kenyan john', 7890, '2020-05-26 23:41:30', '2020-05-26 18:16:21', 1),
(6, 'food store', 'purity wekesa', 7000, '2020-05-27 08:52:58', '2020-05-26 18:16:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventorytypes`
--

CREATE TABLE `inventorytypes` (
  `id` int(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventorytypes`
--

INSERT INTO `inventorytypes` (`id`, `description`, `dateCreated`, `status`) VALUES
(1, 'water bills', '2020-05-26 23:44:57', 1),
(2, 'food store', '2020-05-26 23:44:57', 1),
(3, 'electricity bills', '2020-05-26 23:44:57', 1),
(4, 'instrument mantainance', '2020-05-26 23:44:57', 1),
(5, 'stock', '2020-05-27 08:52:07', 1),
(6, 'something', '2020-07-02 16:12:21', 1),
(7, 'khkh', '2020-07-02 16:29:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'member', 'member12345', '2019-02-21 11:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `memberName` varchar(100) NOT NULL,
  `IdNo` varchar(100) NOT NULL,
  `memberEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `assemblyId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `memberName`, `IdNo`, `memberEmail`, `Gender`, `DOB`, `assemblyId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Samoa Mdommu Emmanuel', '33819481', 'samoyaemmanuel@gmail.com', 'Other', '1996-01-01', 1, '2020-05-22 12:36:37', '2019-03-16 10:22:42', 0),
(2, 'Manda Timothy', '33819482', 'tmanda1998@gmail.com', 'Male', '1998-12-28', 2, '2020-05-22 12:37:43', '2019-03-16 10:22:42', 0),
(3, 'mercy samoya', '33819483', 'samoya@gmail.com', 'Female', '2020-04-28', 3, '2020-05-26 20:51:05', '2020-05-26 20:51:05', 1),
(4, 'samoya kasam', '123456', 'kasam@gmail.com', 'Male', '2020-06-10', 1, '2020-06-24 14:56:51', '2020-06-24 14:56:51', 1),
(5, 'criss wamalwa', '12345', 'sade@gmail.com', 'Other', '2020-06-15', 2, '2020-06-24 23:43:58', '2020-06-24 23:43:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `membersummary`
--

CREATE TABLE `membersummary` (
  `id` int(11) NOT NULL,
  `memberId` int(11) DEFAULT NULL,
  `assemblyId` int(11) DEFAULT NULL,
  `branchId` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membersummary`
--

INSERT INTO `membersummary` (`id`, `memberId`, `assemblyId`, `branchId`, `age`, `PostingDate`, `UpdationDate`) VALUES
(1, 1, 1, 1, 55, '2019-02-21 12:38:59', '2020-07-02 09:36:08'),
(2, 2, 2, 2, 60, '2019-02-21 12:38:59', NULL),
(3, 3, 3, 3, 50, '2019-02-21 12:38:59', NULL),
(4, 4, 1, 4, 30, '2019-02-21 12:39:15', NULL),
(5, 5, 2, 1, 60, '2019-02-21 12:39:15', '2020-06-25 04:06:04'),
(6, 6, 3, 2, 45, '2019-02-21 12:39:15', NULL),
(7, 2, 2, 2, 40, '2020-06-25 03:41:58', NULL),
(8, 2, 2, 1, 23, '2020-06-25 03:41:58', NULL),
(9, 3, 3, 4, 34, '2020-06-25 03:48:54', NULL),
(10, 3, 3, 1, 21, '2020-06-25 03:48:54', NULL),
(11, 1, 1, 4, 12, '2020-07-02 16:29:26', NULL);

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
-- Table structure for table `newborns`
--

CREATE TABLE `newborns` (
  `id` int(11) NOT NULL,
  `newbornName` varchar(100) NOT NULL,
  `notificationNo` varchar(100) NOT NULL,
  `fatherEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `assemblyId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newborns`
--

INSERT INTO `newborns` (`id`, `newbornName`, `notificationNo`, `fatherEmail`, `Gender`, `DOB`, `assemblyId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Samoya Mdommu Emmanuel', '33819481', 'mosessamoya@gmail.com', 'Male', '1996-01-01', 1, '2020-05-22 12:36:37', '2020-06-24 23:53:09', 1),
(2, 'Manda Timothy', '33819490', 'gracenanzala1998@gmail.com', 'Male', '1998-12-28', 2, '2020-05-22 12:37:43', '2019-03-16 10:22:42', 1),
(3, 'abraham evusa kisiabuki', '12345', 'hudson@gmail.com', 'Male', '2019-10-30', 3, '2020-05-26 17:36:39', NULL, 1),
(4, 'sa', '123', 'sa@gmail.com', 'Male', '2020-06-03', 1, '2020-06-24 23:16:50', NULL, 1),
(5, 'joan', '12345678', 'sade@gmail.com', 'Female', '2020-06-10', 2, '2020-06-24 23:53:56', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pastor`
--

CREATE TABLE `pastor` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pastor`
--

INSERT INTO `pastor` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'pastor', 'pastor12345', '2019-02-21 11:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `secretary`
--

CREATE TABLE `secretary` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `secretary`
--

INSERT INTO `secretary` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'secretary', 'secretary12345', '2019-02-21 11:00:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assembly`
--
ALTER TABLE `assembly`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branchcombination`
--
ALTER TABLE `branchcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_type`
--
ALTER TABLE `expense_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_type`
--
ALTER TABLE `income_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventorytypes`
--
ALTER TABLE `inventorytypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membersummary`
--
ALTER TABLE `membersummary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  ADD PRIMARY KEY (`Auto`);

--
-- Indexes for table `newborns`
--
ALTER TABLE `newborns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pastor`
--
ALTER TABLE `pastor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secretary`
--
ALTER TABLE `secretary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `assembly`
--
ALTER TABLE `assembly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `branchcombination`
--
ALTER TABLE `branchcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `expense_type`
--
ALTER TABLE `expense_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `income_type`
--
ALTER TABLE `income_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `inventorytypes`
--
ALTER TABLE `inventorytypes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `membersummary`
--
ALTER TABLE `membersummary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  MODIFY `Auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `newborns`
--
ALTER TABLE `newborns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pastor`
--
ALTER TABLE `pastor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `secretary`
--
ALTER TABLE `secretary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
