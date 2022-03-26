-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2022 at 03:47 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ltest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Email`, `password`) VALUES
('Admin1@gmail.com', 'Admin1'),
('Admin2@gmail.com', 'Admin2');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tid` int(250) NOT NULL,
  `amount` int(250) NOT NULL,
  `date` varchar(1000) NOT NULL,
  `uid` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tid`, `amount`, `date`, `uid`) VALUES
(20001, 99, '13.03.2022', 1031),
(20002, 99, '13.03.2022', 1031),
(20003, 49, '13.03.2022', 1032),
(20004, 49, '14.03.2022', 1031),
(20005, 99, '14.03.2022', 1011);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `firstName` varchar(1000) NOT NULL,
  `lastName` varchar(1000) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `mobileNo` varchar(1000) NOT NULL,
  `address` text NOT NULL,
  `userType` varchar(1000) NOT NULL,
  `password` text NOT NULL,
  `leftTest` varchar(225) DEFAULT NULL,
  `totalPoint` varchar(200) DEFAULT NULL,
  `totalTest` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `dob`, `email`, `mobileNo`, `address`, `userType`, `password`, `leftTest`, `totalPoint`, `totalTest`) VALUES
(1011, 'nikita', 'pawar', '2111-01-08', 'nikita8@gmail.com', '8356412054', 'sutarwadi', 'basic', 'nikita', '3', '0', '0'),
(1012, 'kishor', 'jangam', '2111-01-08', 'kishor@gmail.com', '7030601416', 'gokhale nagar', 'standard', 'Kishor@123', '10', '0', '0'),
(1013, 'sonal', 'sharma', '2022-03-23', 'sonal@gmail.com', '8446542681', 'pune', 'standard', '123', '10', '4', '0'),
(1014, 'venktesh', 'pensalwar', '2022-03-02', 'venktesh@gmail.com', '1234567891', '  pune      ', 'standard', '123', '10', '0', '0'),
(1015, 'sonal', 'sharma', '2022-03-11', 'sharmasonal376@gmail.com', '1111111111', 'pune', 'standard', 'sonal', '10', '0', '0'),
(1031, 'kishor', 'batole', '1999-02-08', 'videsh@gmail.com', '9763739992', 'pune', 'premium', 'videsh123', '100', '7', '2'),
(1032, 'videsh', 'batole', '1999-02-08', 'videshbatole1999@gmail.com', '7709289203', 'pashan pune', 'standard', 'videsh', '1', '50', '10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20006;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1033;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
