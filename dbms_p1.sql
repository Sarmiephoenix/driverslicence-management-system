-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 10, 2019 at 01:57 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbms_p1`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `dscn` char(12) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(20) NOT NULL,
  PRIMARY KEY (`dscn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `citizen`
--

CREATE TABLE IF NOT EXISTS `citizen` (
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `dscn` char(12) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `phone_no` char(10) NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`dscn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `citizen`
--

INSERT INTO `citizen` (`first_name`, `middle_name`, `last_name`, `dscn`, `gender`, `dob`, `phone_no`, `mail_id`, `address`) VALUES
('Matthew', 'Dike', 'Athan', '2082468', 'm', '1992-10-16', '0905467890', 'matthew@yahoo.com', '45 Pound road'),
('Emeka', 'Francis', 'Okoye', '2670', 'm', '1992-10-22', '0907676565', 'emokoye@yahoo.com', '2 Junction street'),
('John', 'Francis', 'Okute', '5656', 'M', '1994-05-24', '0908767656', 'johnf@yahoo.om', ''),
('Chijioke', 'Matthew', 'Okeke', '969729', 'm', '1986-10-23', '0705654343', 'matt@yahoo.com', '4 Ikeja street');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE IF NOT EXISTS `complaint` (
  `dscn` char(12) NOT NULL,
  `cdate` date NOT NULL,
  `cdesc` text NOT NULL,
  `cid` int(4) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--


-- --------------------------------------------------------

--
-- Table structure for table `dl`
--

CREATE TABLE IF NOT EXISTS `dl` (
  `dscn` char(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cov` varchar(20) NOT NULL,
  `edate` date NOT NULL,
  `eid` varchar(10) NOT NULL,
  `dl_id` int(4) NOT NULL AUTO_INCREMENT,
  `passwd` varchar(50) NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `dl_status` int(4) NOT NULL,
  `dl_issue_date` date NOT NULL,
  PRIMARY KEY (`dl_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dl`
--

INSERT INTO `dl` (`dscn`, `name`, `cov`, `edate`, `eid`, `dl_id`, `passwd`, `mail_id`, `dl_status`, `dl_issue_date`) VALUES
('969729', 'Chijioke Matthew Okeke', 'LMV', '2019-11-05', 'e1', 1, '102', 'matt@yahoo.com', 1, '0000-00-00'),
('2082468', 'Matthew Dike Athan', 'LMV', '2019-11-06', 'e2', 2, '478', 'matthew@yahoo.com', 0, '0000-00-00'),
('2082468', 'Matthew Dike Athan', 'LMV', '2019-11-06', 'e3', 3, '478', 'matthew@yahoo.com', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `inspector`
--

CREATE TABLE IF NOT EXISTS `inspector` (
  `id` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `privilege` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inspector`
--

INSERT INTO `inspector` (`id`, `username`, `password`, `privilege`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `license`
--

CREATE TABLE IF NOT EXISTS `license` (
  `id` int(4) NOT NULL,
  `dscn` char(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `license_no` varchar(20) NOT NULL,
  `cov` varchar(20) NOT NULL,
  `license_issue_date` date NOT NULL,
  `license_expiry_date` date NOT NULL,
  `mail_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `license`
--


-- --------------------------------------------------------

--
-- Table structure for table `llr`
--

CREATE TABLE IF NOT EXISTS `llr` (
  `dscn` char(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cov` varchar(20) NOT NULL,
  `edate` date NOT NULL,
  `eid` varchar(10) NOT NULL,
  `llr_id` int(4) NOT NULL AUTO_INCREMENT,
  `epwd` char(10) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `llr_status` int(4) NOT NULL,
  `llr_issue_date` date NOT NULL,
  PRIMARY KEY (`llr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `llr`
--

INSERT INTO `llr` (`dscn`, `name`, `cov`, `edate`, `eid`, `llr_id`, `epwd`, `passwd`, `mail_id`, `llr_status`, `llr_issue_date`) VALUES
('969729', 'Chijioke Matthew Okeke', 'LMV', '2019-11-05', 'e1', 1, 'SLH04H5', '102', 'matt@yahoo.com', 1, '0000-00-00'),
('2082468', 'Matthew Dike Athan', 'LMV', '2019-11-06', 'e2', 2, 'JD7623W', '478', 'matthew@yahoo.com', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE IF NOT EXISTS `offices` (
  `district` varchar(30) NOT NULL,
  `rto_address` varchar(300) NOT NULL,
  PRIMARY KEY (`district`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offices`
--


-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE IF NOT EXISTS `reg` (
  `dscn` char(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cov` varchar(30) NOT NULL,
  `model` varchar(20) NOT NULL,
  `company` varchar(20) NOT NULL,
  `rdate` date NOT NULL,
  `r_id` int(4) NOT NULL AUTO_INCREMENT,
  `passwd` varchar(30) NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `reg_status` int(4) NOT NULL,
  `reg_issue_date` date NOT NULL,
  `vno` varchar(20) NOT NULL,
  `reg_expiry_date` date NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`dscn`, `name`, `cov`, `model`, `company`, `rdate`, `r_id`, `passwd`, `mail_id`, `reg_status`, `reg_issue_date`, `vno`, `reg_expiry_date`) VALUES
('5656', 'John Francis Okute', 'MCWG', 'Camry', 'Toyota', '2019-05-23', 1, '123', 'johnf@yahoo.om', 0, '0000-00-00', '', '0000-00-00'),
('2670', 'Emeka Francis Okoye', 'LMV', 'Camry', 'Toyota', '2019-11-05', 2, '999', 'emokoye@yahoo.com', 0, '0000-00-00', '', '0000-00-00'),
('969729', 'Chijioke Matthew Okeke', 'LMV', 'Honda Pilot', 'Honda', '2019-11-05', 3, '102', 'matt@yahoo.com', 1, '0000-00-00', '', '0000-00-00'),
('2082468', 'Matthew Dike Athan', 'LMV', 'Lexus 300', 'Toyota', '2019-11-06', 4, '478', 'matthew@yahoo.com', 0, '0000-00-00', '', '0000-00-00');
