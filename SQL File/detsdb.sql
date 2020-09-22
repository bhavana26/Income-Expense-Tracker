-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2019 at 05:54 AM
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
-- Database: `detsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `spclexpense`
--

CREATE TABLE `spclexpense` (
  `ID` int(10) NOT NULL,
  `UserId` int(10) NOT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `ExpenseItem` varchar(200) DEFAULT NULL,
  `ExpenseCost` varchar(200) DEFAULT NULL,
  `NoteDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblexpense`
--

CREATE TABLE `tblexpense` (
  `ID` int(10) NOT NULL,
  `UserId` int(10) NOT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `ExpenseItem` varchar(200) DEFAULT NULL,
  `ExpenseCost` varchar(200) DEFAULT NULL,
  `NoteDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblexpense`
--

INSERT INTO `tblexpense` (`ID`, `UserId`, `ExpenseDate`, `ExpenseItem`, `ExpenseCost`, `NoteDate`) VALUES
(38, 12, '0219-10-08', 'eggs', '50', '2019-10-08 07:30:12'),
(39, 12, '2019-10-08', 'milk', '100', '2019-10-08 07:30:35'),
(40, 12, '2019-10-06', 'bread', '40', '2019-10-08 07:31:06'),
(41, 12, '2019-10-07', 'water', '350', '2019-10-08 08:14:20'),
(42, 12, '2019-10-06', 'bread', '200', '2019-10-08 08:15:44'),
(43, 13, '2019-10-02', 'Milk', '50', '2019-10-08 11:59:03'),
(44, 13, '2019-10-08', 'milk', '60', '2019-10-08 11:59:27'),
(45, 13, '2019-10-08', 'eggs', '100', '2019-10-08 11:59:47'),
(46, 13, '2019-10-27', 'Special Expense', '500', '2019-10-08 12:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblincome`
--

CREATE TABLE `tblincome` (
  `ID` int(10) NOT NULL,
  `UserId` int(10) NOT NULL,
  `IncomeDate` date DEFAULT NULL,
  `IncomeItem` varchar(200) DEFAULT NULL,
  `IncomeCost` varchar(200) DEFAULT NULL,
  `NoteDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblincome`
--

INSERT INTO `tblincome` (`ID`, `UserId`, `IncomeDate`, `IncomeItem`, `IncomeCost`, `NoteDate`) VALUES
(1, 11, '2019-12-07', 'salary', '600000', '2019-10-07 19:14:22'),
(3, 12, '2019-10-08', 'salary', '1000', '2019-10-08 07:31:29'),
(4, 12, '2019-10-06', 'salary', '500', '2019-10-08 08:13:37'),
(5, 12, '2019-10-07', 'salary', '400', '2019-10-08 08:13:59'),
(6, 13, '2019-10-08', 'allowance', '300', '2019-10-08 12:00:13'),
(7, 13, '2019-10-08', 'salary', '150', '2019-10-08 12:00:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(150) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(11, 'Bhavana', 'garapatibhavana@gmail.com', 8297242727, 'd85c24adb0e8985ace79c55d713786fd', '2019-10-07 16:30:25'),
(12, 'sunny', 'chowdary.velicheti@gmail.com', 8297242727, '25d55ad283aa400af464c76d713c07ad', '2019-10-08 06:43:15'),
(13, 'Savithri', 'savithri.cherukuri@gmail.com', 8297242727, '25d55ad283aa400af464c76d713c07ad', '2019-10-08 11:57:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblexpense`
--
ALTER TABLE `tblexpense`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblincome`
--
ALTER TABLE `tblincome`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblexpense`
--
ALTER TABLE `tblexpense`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tblincome`
--
ALTER TABLE `tblincome`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
