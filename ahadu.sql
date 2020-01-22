
-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2017 at 11:50 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahadu`


CREATE TABLE `clients` (
  `name` varchar(50) NOT NULL,
  `subcity` varchar(100) NOT NULL,
  `houseno` varchar(100) NOT NULL,
  `bank` varchar(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `clients` (`name`, `subcity`, `houseno`, `bank`, `email`, `mob`,`password`) VALUES
('abrsh', 'kolfe', 'kol123','CBE', 'abrsh@gmail.com',091101802 , 'e10adc3949ba59abbe56e057f20f883e');



CREATE TABLE `billadmin_info` (
  `name` varchar(50) NOT NULL,
  `billtype` varchar(100) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `branch` varchar(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
 
INSERT INTO `billadmin_info` (`name`, `billtype`, `companyid`, `branch`, `email`, `mob`,`password`) VALUES
('mebrathail', 'electric', 'mh','head_office', 'mh@gmail.com',091101802, 'e10adc3949ba59abbe56e057f20f883e');




CREATE TABLE `userbalance` (
  `id` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `houseno` varchar(100) NOT NULL,
  `balance` int(30) NOT NULL,
  `status` varchar(100) NOT NULL
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `userbalance` (  `id`,`email`, `name`, `houseno`, `balance`, `status`) VALUES
('55846be776610','abrsh@gmail.com','abrsh','kol123','0.00', 'NOT_ACTIVE ');



CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('55846be776610', 'testing', 'abrsh@gmail.com', 'testing', 'testing stART', '2015-06-19', '09:22:15pm');


CREATE TABLE `billtype` (
  `companyid` text NOT NULL,
  `billtype` varchar(100) NOT NULL,
  `hash` varchar(100) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `duedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
--

INSERT INTO `billtype` (`companyid`, `billtype`, `hash`, `tag`, `duedate`) VALUES
('558920ff906b8', 'WATER BILL', 'WEHA-LEMAT','UTILITY_PAYMENT' ,'2020-03-12 09:03:59'),
('558921841f1ec', 'ELECTIC BILL', 'MEBRAT-HAIL','UTILITY_PAYMENT' ,'2020-03-12 09:03:59'),
('5589222f16b93', 'MOBILE BILL', 'TELE-COM','UTILITY_PAYMENT' ,'2020-03-12 09:03:59'),
('558922ec03021', 'DSTV', 'DSTV','ENTERTAINMENT_PAYMENT' ,'2020-03-12 09:03:59'),
('55897338a6659', 'HOUSERENTAL', 'RENTER','EXPENSS_PAYMENT' ,'2020-03-12 09:03:59'),
('5589741f9ed52', 'OTHER SERVICE PAYMENTS', 'MEBRAT-HAIL','AHADU AS A PAYMENT GATE WAY' ,'-');

ALTER TABLE `clients`
  ADD PRIMARY KEY (`email`);

ALTER TABLE `userbalance`
  ADD PRIMARY KEY (`email`);

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `type` text NOT NULL,
  `message` text NOT NULL,
  `status` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
--


CREATE TABLE IF NOT EXISTS `bill` (
`id` int(10) NOT NULL,
  `owners_id` int(10) NOT NULL,
  `prev` varchar(20) NOT NULL,
  `pres` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--



-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE IF NOT EXISTS `owners` (
`id` int(10) NOT NULL,
  `lname` varchar(60) NOT NULL,
  `fname` varchar(60) NOT NULL,
  `mi` varchar(2) NOT NULL,
  `subcity` varchar(60) NOT NULL,
  `houseno` varchar(15) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owners`
--


-- --------------------------------------------------------

--
-- Table structure for table `tempo_bill`
--

CREATE TABLE IF NOT EXISTS `tempo_bill` (
`id` int(11) NOT NULL,
  `Prev` varchar(40) NOT NULL,
  `Client` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempo_bill`
--

INSERT INTO `tempo_bill` (`id`, `Prev`, `Client`) VALUES
(1, '500', 'tamrat');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`) VALUES
(4, 'ADMIN', 'admin', 'Hailemickael tessega');

-- --------------------------------------------------------

--
-- Table structure for table `user_levels`
--

CREATE TABLE IF NOT EXISTS `user_levels` (
`id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `userlevel` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_levels`
--

INSERT INTO `user_levels` (`id`, `username`, `password`, `userlevel`) VALUES
(1, 'user1', 'user1', '1'),
(2, 'user2', 'user2', '2'),
(3, 'user3', 'user3', '3'),
(4, 'user4', 'user4', '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempo_bill`
--
ALTER TABLE `tempo_bill`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_levels`
--
ALTER TABLE `user_levels`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tempo_bill`
--
ALTER TABLE `tempo_bill`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_levels`
--
ALTER TABLE `user_levels`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
