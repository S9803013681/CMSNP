-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2018 at 06:08 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dacc`
--

-- --------------------------------------------------------

--
-- Table structure for table `container`
--

CREATE TABLE `container` (
  `container_id` int(11) NOT NULL,
  `Model` varchar(26) NOT NULL,
  `status` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `container`
--

INSERT INTO `container` (`container_id`, `Model`, `status`) VALUES
(1, 'C001', 'Delivered'),
(2, 'C002', 'Loaded'),
(4, 'C003', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL,
  `Depature` varchar(26) NOT NULL,
  `Destination` varchar(26) NOT NULL,
  `Sender_name` varchar(26) NOT NULL,
  `Sender_Phone` varchar(20) NOT NULL,
  `Receiver_name` varchar(26) NOT NULL,
  `Receiver_Phone` varchar(20) NOT NULL,
  `container_model` varchar(26) NOT NULL,
  `status` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Depature`, `Destination`, `Sender_name`, `Sender_Phone`, `Receiver_name`, `Receiver_Phone`, `container_model`, `status`) VALUES
(1, 'Asia', 'Europe', 'Rubi', '9813601495', 'Rajiv', '9808790503', 'C001', 'Delivered'),
(2, 'Asia', 'America', 'Rasmita', '9813601495', 'Rajiv', '9808790503', 'C001', 'Delivered'),
(3, 'Asia', 'America', 'Rubi', '9813601495', 'sammi', '9808790503', 'C002', 'Loaded');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `Schedule_id` int(11) NOT NULL,
  `Warehouse_Location` varchar(26) NOT NULL,
  `Depart` time NOT NULL,
  `Destination` varchar(26) NOT NULL,
  `Arrival` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`Schedule_id`, `Warehouse_Location`, `Depart`, `Destination`, `Arrival`) VALUES
(1, 'Asia', '11:00:00', 'Europe', '05:09:00'),
(2, 'Asia', '11:00:00', 'Europe', '09:09:00'),
(3, 'Asia', '11:00:00', 'Europe', '01:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(26) NOT NULL,
  `password` varchar(26) NOT NULL,
  `email` varchar(26) NOT NULL,
  `role` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `role`) VALUES
(1, 'raz', '123', 'admin@example.com', '1'),
(2, 'agent', '123', 'agent@example.com', '2'),
(3, 'smrita', '12345', 's@gmail.com', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `container`
--
ALTER TABLE `container`
  ADD PRIMARY KEY (`container_id`),
  ADD UNIQUE KEY `Model` (`Model`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`Schedule_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `container`
--
ALTER TABLE `container`
  MODIFY `container_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `Schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
