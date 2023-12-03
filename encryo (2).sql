-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 12:13 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `encryo`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(11) NOT NULL,
  `feedback` varchar(200) NOT NULL,
  `uid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblkeys`
--

CREATE TABLE `tblkeys` (
  `phn` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pkey` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblkeys`
--

INSERT INTO `tblkeys` (`phn`, `email`, `pkey`) VALUES
(8989898989, 'sj@mail.com', '-----BEGIN PUBLIC KEY-----\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDBhtUmpg2e5NIpohj0FHPE/w0/\n6GuzOEbrDtdslpXxEwU/bt6MjJ5EqdUrTgeaGotowOgp2L3USMbWE3KgRIRiDM31\nQBBsNFVYfeHg66lkNoZp18D2RI7ph5YhxFnvdmU8WDT/XRVkIqetkmqBYVmp4BCf\nMZ7SR8C5yTMKcpBMfwIDAQAB\n-----END PUBLIC KEY-----'),
(9898989898, 'test@mail.com', '-----BEGIN PUBLIC KEY-----\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCtXf+P8N5sYAs01wsQqfhyDBS2\nVxNfE+qrGS7YKWwJDiRC88hsXSX3heuqp2aDP31fdwURIAi6DgTf5VhPza+552vV\n5xiYp7haLt4OJfZA3E5hEjufiuDJN/qv1QeM6daVQ5GJ5ahfDvaWxr1ZBWL2ey7I\n+NVO6iy9sstTTCz89QIDAQAB\n-----END PUBLIC KEY-----');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogin`
--

CREATE TABLE `tbllogin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbllogin`
--

INSERT INTO `tbllogin` (`username`, `password`, `utype`) VALUES
('admin@mail.com', 'admin', 'admin'),
('hishamkp@gmail.com', '1234', 'user'),
('samp@mail.com', '1234', 'user'),
('sj@mail.com', '1234', 'user'),
('test@mail.com', '1234', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `fname` varchar(50) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobs` bigint(100) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`fname`, `sname`, `email`, `mobs`, `uid`) VALUES
('hisham', 'kp', 'hishamkp@gmail.com', 7034642606, 2),
('samp', 'samp', 'samp@mail.com', 2147483647, 1),
('Siddharth', 'Jayakumar', 'sj@mail.com', 8989898989, 4),
('test', 'test', 'test@mail.com', 9898989898, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `tblkeys`
--
ALTER TABLE `tblkeys`
  ADD PRIMARY KEY (`phn`);

--
-- Indexes for table `tbllogin`
--
ALTER TABLE `tbllogin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `UNIQUE` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
