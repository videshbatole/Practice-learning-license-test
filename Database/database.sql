-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2022 at 05:22 AM
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
(1011, 'nikita', 'pawar', '2111-01-08', 'nikita8@gmail.com', '2222222222', 'sutarwadi', 'basic', 'nikita', '3', '0', '0'),
(1012, 'kishor', 'jangam', '2111-01-08', 'kishor@gmail.com', '3333333333', 'gokhale nagar', 'standard', 'Kishor@123', '10', '0', '0'),
(1013, 'sonal', 'sharma', '2022-03-23', 'sonal@gmail.com', '4444444444', 'pune', 'standard', '123', '10', '4', '0'),
(1014, 'venktesh', 'pensalwar', '2022-03-02', 'venktesh@gmail.com', '1234567891', '  pune      ', 'standard', '123', '10', '0', '0'),
(1015, 'sonal', 'sharma', '2022-03-11', 'sharmasonal376@gmail.com', '1111111111', 'pune', 'standard', 'sonal', '10', '0', '0'),
(1031, 'kishor', 'batole', '1999-02-08', 'videsh@gmail.com', '1212121212', 'pune', 'premium', 'videsh123', '100', '7', '2'),
(1032, 'videsh', 'batole', '1999-02-08', 'videshb@gmail.com', '3232323232', 'pashan pune', 'standard', 'videsh', '1', '50', '10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1033;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
