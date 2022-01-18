-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2022 at 01:59 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `dt`
--

CREATE TABLE `dt` (
  `id` int(11) NOT NULL,
  `action` varchar(30) NOT NULL,
  `purpose` varchar(30) NOT NULL,
  `DateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dt`
--

INSERT INTO `dt` (`id`, `action`, `purpose`, `DateTime`) VALUES
(14, 'requested', 'viva', '2022-01-11 17:49:20'),
(15, 'requested', 'viva', '2022-01-11 18:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminUser` varchar(50) NOT NULL,
  `adminPass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(1, 'admin', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ans`
--

CREATE TABLE `tbl_ans` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `rightAns` int(11) NOT NULL DEFAULT 0,
  `ans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ans`
--

INSERT INTO `tbl_ans` (`id`, `quesNo`, `rightAns`, `ans`) VALUES
(25, 1, 1, 'Database application and the database '),
(26, 1, 0, 'Data and the database '),
(27, 1, 0, 'The user and the database application '),
(28, 1, 0, 'Database application and SQL '),
(29, 2, 0, 'IDMS '),
(30, 2, 0, 'Oracle '),
(31, 2, 0, 'dBase-II '),
(32, 2, 1, 'R:base '),
(33, 3, 1, 'creating and processing forms '),
(34, 3, 0, 'creating databases '),
(35, 3, 0, 'processing data '),
(36, 3, 0, 'administrating databases '),
(37, 4, 0, 'Microsofts SQL Server '),
(38, 4, 1, 'Microsofts Access '),
(39, 4, 0, 'IBMs DB2 '),
(40, 4, 0, 'Oracle Corporations Oracle '),
(41, 5, 0, 'Users '),
(42, 5, 0, 'Database applications '),
(43, 5, 0, 'DBMS '),
(44, 5, 1, 'COBOL programs ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ques`
--

CREATE TABLE `tbl_ques` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `ques` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ques`
--

INSERT INTO `tbl_ques` (`id`, `quesNo`, `ques`) VALUES
(1, 1, 'The DBMS acts as an interface between what two components of an enterprise-class database system?'),
(2, 2, 'Which of the following products was the first to implement true relational algebra in a PC DBMS?'),
(3, 3, 'The following are functions of a DBMS except ________ .'),
(4, 4, 'A DBMS that combines a DBMS and an application generator is ________ .'),
(5, 5, 'Which of the following is not considered to be a basic element of an enterprise-class database system?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userId`, `name`, `username`, `password`, `email`, `status`) VALUES
(4, 'Harish V', 'Harish', '12345678', 'harish16@gmail.com', 0),
(5, 'gautham', 'gautham', '87654321', 'gautham1234@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_viva`
--

CREATE TABLE `tbl_viva` (
  `id` int(200) NOT NULL,
  `name` varchar(2000) NOT NULL,
  `email` varchar(2000) NOT NULL,
  `facebook` varchar(2000) NOT NULL,
  `skype` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_viva`
--

INSERT INTO `tbl_viva` (`id`, `name`, `email`, `facebook`, `skype`) VALUES
(14, 'Harish V', 'harish16@gmail.com', '6361314897', 'DSCE123'),
(15, 'Gautham V', 'gautham1234@gmail.com', '', '');

--
-- Triggers `tbl_viva`
--
DELIMITER $$
CREATE TRIGGER `check` AFTER INSERT ON `tbl_viva` FOR EACH ROW INSERT INTO dt VALUES(new.id,'requested','viva',NOW())
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `tbl_viva`
--
ALTER TABLE `tbl_viva`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `tbl_viva`
--
ALTER TABLE `tbl_viva`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;