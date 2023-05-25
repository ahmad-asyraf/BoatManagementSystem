-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 05:15 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boatsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `boat`
--

CREATE TABLE `boat` (
  `boatID` varchar(50) NOT NULL,
  `companyID` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `capacity` int(11) NOT NULL,
  `pickupLoc` varchar(50) NOT NULL,
  `dropoffLoc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boat`
--

INSERT INTO `boat` (`boatID`, `companyID`, `price`, `capacity`, `pickupLoc`, `dropoffLoc`) VALUES
('Bot Express', 'Express BHD', 25, 15, 'dUNGUN', 'Merang'),
('Bot laju', 'Gemas Emas', 65, 20, 'Merang', 'Kuala Terengganu'),
('Bot terbang', 'Fly Express', 23, 23, 'Duyung', 'Beach Resort'),
('merang', 'merang', 12, 1, 'Kuala Terengganu', 'Kuala Berang'),
('Pahang', 'merang', 50, 12, 'Marang', 'Kuala Terengganu'),
('sejahtera2', 'sejahtera', 19, 2, 'Terengganu', 'Kuala Pilah'),
('terengganu', 'TTDDI', 22, 3, 'ganu', 'ganu');

-- --------------------------------------------------------

--
-- Table structure for table `boatcompany`
--

CREATE TABLE `boatcompany` (
  `bname` varchar(50) NOT NULL,
  `offno` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass1` varchar(50) NOT NULL,
  `pass2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boatcompany`
--

INSERT INTO `boatcompany` (`bname`, `offno`, `address`, `email`, `pass1`, `pass2`) VALUES
('Alia', '412345678', 'Terengganu', 'alia@gmail.com', '123', '123'),
('elisya', '412345678', 'Malaysia', 'elisya@gmail,com', '789', '789'),
('elly', '412345678', 'Malaysia', 'elly@gmail.com', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass1` varchar(50) NOT NULL,
  `pass2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`fname`, `lname`, `phno`, `address`, `email`, `pass1`, `pass2`) VALUES
('Ahmad', 'Asyraf', '31231', 'dasdsad', 'asyraf@mail.com', '1234', '1234'),
('athi', 'azman', '194758698', 'No.75, lorong best,', 'athi@gmail.com', '11', '11'),
('Nur', 'Liya', '123456789', 'Malaysia', 'liya@gmail.com', '123', '123'),
('Mia', 'Sara', '123456789', 'Terengganu', 'mia@gmail.com', '123', '123'),
('Shah', 'Widad', '123456789', 'Terengganu', 'shah@gmail.com', '123', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boat`
--
ALTER TABLE `boat`
  ADD PRIMARY KEY (`boatID`);

--
-- Indexes for table `boatcompany`
--
ALTER TABLE `boatcompany`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
