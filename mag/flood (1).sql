-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 30, 2019 at 11:47 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flood`
--

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

DROP TABLE IF EXISTS `signin`;
CREATE TABLE IF NOT EXISTS `signin` (
  `loginstatus` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signin`
--

INSERT INTO `signin` (`loginstatus`, `username`) VALUES
(0, '123'),
(0, '789');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE IF NOT EXISTS `signup` (
  `type` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `rpassword` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `mobno` int(12) NOT NULL,
  `organization` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`username`(25))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`type`, `username`, `password`, `rpassword`, `email`, `mobno`, `organization`) VALUES
('victim', '123', '123', '123', 'mjk@mj.con', 7678, ''),
('victim', '12348678', '123', '123', 'bgh@mjj.bhn', 2345, ''),
('victim', '789', '789', '789', 'loi@pol.mkl', 865, 'rtfh'),
('victim', 'war', '12345', '12345', 'qwe@poi.mnj', 123654, 'okju'),
('victim', 'warr', '145', '145', 'qwe@poi.mnj', 123654, 'okju'),
('victim', 'warrr', '202cb962ac59075b964b07152d234b70', '123', 'qwe@poi.mnj', 123654, 'okju'),
('victim', '1234', '81dc9bdb52d04dc20036dbd8313ed055', '1234', 'reg@hfn.jd', 58484, 'hjhg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
