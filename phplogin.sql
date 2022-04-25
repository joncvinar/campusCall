-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 11:24 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phplogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `email`, `usertype`) VALUES
(20, 'test', '12345', 'test@montclair.edu', 'student'),
(33, 'omar', '12345', 'omar@montclair.edu', 'teacher'),
(37, 'okay', '123456789', 'okat@montclair.edu', 'teacher'),
(38, 'sadf', '123456789', 'asdf@montclair.edu', 'student'),
(39, 'afdsfa', '123456789', 'sdfa@montclair.edu', 'student'),
(40, 'Chris', '12345678', 'chris@montclair.edu', 'teacher'),
(41, 'asd', '12345678', 'we@montclair.edu', 'teacher'),
(42, 'thedude', '12345678', 'thedude@montclair.edu', 'teacher'),
(43, 'Das', '12345678', 'das@montclair.edu', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `allthecourses`
--

CREATE TABLE `allthecourses` (
  `Coursename` varchar(50) NOT NULL,
  `Courseid` int(11) NOT NULL,
  `Teacherid` int(11) NOT NULL,
  `Semester` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allthecourses`
--

INSERT INTO `allthecourses` (`Coursename`, `Courseid`, `Teacherid`, `Semester`) VALUES
('NEW', 123, 33, 'Spring2022'),
('Thisclass', 564, 33, 'Summer12022'),
('MAth', 758, 33, 'Summer22022'),
('Dante', 41235, 33, 'Spring2022');

-- --------------------------------------------------------

--
-- Table structure for table `dante`
--

CREATE TABLE `dante` (
  `studentid` int(6) UNSIGNED NOT NULL,
  `studentsname` varchar(30) NOT NULL,
  `studentemail` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dante`
--

INSERT INTO `dante` (`studentid`, `studentsname`, `studentemail`, `reg_date`) VALUES
(39, 'afdsfa', 'sdfa@montclair.edu', '2022-04-25 21:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `math`
--

CREATE TABLE `math` (
  `studentid` int(6) UNSIGNED NOT NULL,
  `studentsname` varchar(30) NOT NULL,
  `studentemail` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `math`
--

INSERT INTO `math` (`studentid`, `studentsname`, `studentemail`, `reg_date`) VALUES
(39, 'afdsfa', 'sdfa@montclair.edu', '2022-04-24 15:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `new`
--

CREATE TABLE `new` (
  `studentid` int(6) UNSIGNED NOT NULL,
  `studentsname` varchar(30) NOT NULL,
  `studentemail` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `new`
--

INSERT INTO `new` (`studentid`, `studentsname`, `studentemail`, `reg_date`) VALUES
(20, 'test', 'test@montclair.edu', '2022-04-24 03:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `thisclass`
--

CREATE TABLE `thisclass` (
  `studentid` int(6) UNSIGNED NOT NULL,
  `studentsname` varchar(30) NOT NULL,
  `studentemail` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allthecourses`
--
ALTER TABLE `allthecourses`
  ADD PRIMARY KEY (`Courseid`);

--
-- Indexes for table `dante`
--
ALTER TABLE `dante`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `math`
--
ALTER TABLE `math`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `new`
--
ALTER TABLE `new`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `thisclass`
--
ALTER TABLE `thisclass`
  ADD PRIMARY KEY (`studentid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `dante`
--
ALTER TABLE `dante`
  MODIFY `studentid` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `math`
--
ALTER TABLE `math`
  MODIFY `studentid` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `new`
--
ALTER TABLE `new`
  MODIFY `studentid` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `thisclass`
--
ALTER TABLE `thisclass`
  MODIFY `studentid` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
