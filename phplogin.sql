-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2022 at 02:30 AM
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
(40, 'Chris', '12345678', 'chris@montclair.edu', 'teacher');

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
('TEST', 123, 33, 'SUMMER 1 2022'),
('asdasdqw', 165, 33, 'Summer22022'),
('qew', 213, 33, 'Spring2022'),
('Chris', 867, 40, 'Summer12022'),
('New course', 1234, 33, 'Spring2022'),
('dasdf', 1412, 33, 'Summer12022'),
('Software eng', 12341, 22, 'Summer12022'),
('asndasdf', 13321, 33, 'Fall2022'),
('asdasd', 13421, 33, 'Fall2022'),
('asdsad', 123123, 37, 'Spring2022');

-- --------------------------------------------------------

--
-- Table structure for table `asdasd`
--

CREATE TABLE `asdasd` (
  `studentname` int(6) UNSIGNED NOT NULL,
  `studentsid` varchar(30) NOT NULL,
  `stduentemail` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `asdasdqw`
--

CREATE TABLE `asdasdqw` (
  `studentname` int(6) UNSIGNED NOT NULL,
  `studentsid` varchar(30) NOT NULL,
  `stduentemail` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `asdsad`
--

CREATE TABLE `asdsad` (
  `studentname` int(6) UNSIGNED NOT NULL,
  `studentsid` varchar(30) NOT NULL,
  `stduentemail` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `asndasdf`
--

CREATE TABLE `asndasdf` (
  `studentname` int(6) UNSIGNED NOT NULL,
  `studentsid` varchar(30) NOT NULL,
  `stduentemail` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chris`
--

CREATE TABLE `chris` (
  `studentname` int(6) UNSIGNED NOT NULL,
  `studentsid` varchar(30) NOT NULL,
  `stduentemail` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dasdf`
--

CREATE TABLE `dasdf` (
  `studentname` int(6) UNSIGNED NOT NULL,
  `studentsid` varchar(30) NOT NULL,
  `stduentemail` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sdfasf`
--

CREATE TABLE `sdfasf` (
  `students` int(6) UNSIGNED NOT NULL,
  `studentsids` varchar(30) NOT NULL,
  `stduentemails` varchar(30) NOT NULL,
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
-- Indexes for table `asdasd`
--
ALTER TABLE `asdasd`
  ADD PRIMARY KEY (`studentname`);

--
-- Indexes for table `asdasdqw`
--
ALTER TABLE `asdasdqw`
  ADD PRIMARY KEY (`studentname`);

--
-- Indexes for table `asdsad`
--
ALTER TABLE `asdsad`
  ADD PRIMARY KEY (`studentname`);

--
-- Indexes for table `asndasdf`
--
ALTER TABLE `asndasdf`
  ADD PRIMARY KEY (`studentname`);

--
-- Indexes for table `chris`
--
ALTER TABLE `chris`
  ADD PRIMARY KEY (`studentname`);

--
-- Indexes for table `dasdf`
--
ALTER TABLE `dasdf`
  ADD PRIMARY KEY (`studentname`);

--
-- Indexes for table `sdfasf`
--
ALTER TABLE `sdfasf`
  ADD PRIMARY KEY (`students`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `asdasd`
--
ALTER TABLE `asdasd`
  MODIFY `studentname` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asdasdqw`
--
ALTER TABLE `asdasdqw`
  MODIFY `studentname` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asdsad`
--
ALTER TABLE `asdsad`
  MODIFY `studentname` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asndasdf`
--
ALTER TABLE `asndasdf`
  MODIFY `studentname` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chris`
--
ALTER TABLE `chris`
  MODIFY `studentname` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dasdf`
--
ALTER TABLE `dasdf`
  MODIFY `studentname` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sdfasf`
--
ALTER TABLE `sdfasf`
  MODIFY `students` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
