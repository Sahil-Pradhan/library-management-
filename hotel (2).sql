-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2024 at 07:08 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `username`, `password`) VALUES
(1, 'Administrator', 'Admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guest_id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contactno` varchar(13) NOT NULL,
  `checkin` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `fullname`, `address`, `contactno`, `checkin`, `user_id`) VALUES
(2, 'Unisha', 'Balkuamri', 'fd', '2024-10-11', NULL),
(3, 'Unisha', 'Balkuamri', 'fd', '2024-10-15', NULL),
(4, 'Unisha', 'Balkuamri', '987654321', '2024-10-23', NULL),
(5, 'Priya', 'Balkuamri', '987654321', '2024-10-09', NULL),
(6, 'priyanshu', 'Balkuamri', '987654321', '2024-10-16', NULL),
(7, 'priyanshu', 'Balkuamri', '98765432', '2024-10-17', NULL),
(8, 'Uni', 'Balkuamri', '987654321', '2024-10-17', NULL),
(9, 'Uni', 'Balkuamri', '987654321', '2024-10-17', NULL),
(10, 'Unisha', 'Balkuamri', '87654321', '2024-10-17', NULL),
(11, 'Uni', 'Balkuamri', '9876543', '2024-10-18', NULL),
(12, 'Unisha', 'Balkuamri', '9876543', '2024-10-18', NULL),
(13, 'Unisha', 'dfghj', '87654321', '2024-10-18', NULL),
(14, 'Unisha', 'dfghj', '87654321', '2024-10-23', NULL),
(15, 'Unisha', 'Balkuamri', '345678', '2024-10-17', NULL),
(16, 'Unisha', 'Balkuamri', '345678', '2024-10-18', NULL),
(17, 'Unisha', 'Balkuamri', '345678', '2024-10-25', NULL),
(25, 'Siddharth', 'Balkuamri', '987654', '2024-10-19', 7),
(26, 'Setu', 'Kitachour', '9876543', '2024-10-20', 7),
(27, 'priyanshu', 'Kitachour', '9876543', '2024-10-22', 6),
(29, 'Priyansh', 'Kitachour', '9876543', '2024-10-23', 7),
(30, 'Priyansh', 'Kitachour', '9876543', '2024-10-23', 7),
(31, 'Priyansh', 'Kitachour', '9876543', '2024-10-23', 7),
(35, 'udud udud', 'Kitachour', '9812345678', '2024-10-26', 7),
(36, 'meow mowe', 'kjhgf', '123456789', '2024-10-26', 7),
(37, 'meow mowe', 'kjhgf', '234567890', '2024-10-26', 7),
(38, 'meow mowe', 'kjhgf', '09876543', '2024-10-27', 7),
(39, 'uniiiiiiiiiiiiiiiiiii', 'svdfv', '65432', '2024-10-27', 18),
(40, 'Unisha Bista', 'mkjuhygtf', '1234', '2024-10-31', 18),
(41, 'Unisha Bista', 'mkjuhygtf', '1234', '2024-10-30', 18),
(42, 'Unishaaaaaaaaaaaaa', 'mkjuhygtf', '1234', '2024-10-26', 18),
(43, 'Unishaaaaaaaaaaaaa', 'mkjuhygtf', '1234', '2024-10-28', 18),
(62, 'Srijana BIisat', 'Kitachour', '9812345678', '2024-10-31', 7),
(63, 'Jackyy jackju', 'Kitachour', '9812345678', '2024-10-30', 7),
(64, '', '', '', '2024-11-21', 2),
(65, 'qwe', '', '', '2024-11-20', 2),
(66, '', '', '', '2024-11-14', 2);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `price` varchar(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type`, `price`, `photo`) VALUES
(1, 'Standard', '1800', 'stan2.jfif'),
(2, 'Deluxe', '2400', 'delroom1.jfif'),
(3, 'Super Deluxe', '2800', '4.jpg'),
(4, 'Single Bed', '3800', '5.jpg'),
(12, 'Standard', '1500', 'stan1.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_no` int(5) NOT NULL,
  `extra_bed` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `days` int(2) NOT NULL,
  `checkin` date NOT NULL,
  `checkin_time` time NOT NULL,
  `checkout` date NOT NULL,
  `checkout_time` time NOT NULL,
  `bill` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `guest_id`, `room_id`, `room_no`, `extra_bed`, `status`, `days`, `checkin`, `checkin_time`, `checkout`, `checkout_time`, `bill`) VALUES
(1, 1, 1, 1, 0, 'Check Out', 1, '2024-10-17', '14:05:48', '2024-10-15', '22:06:08', '2000'),
(2, 3, 1, 2, 1, 'Check Out', 2, '2024-10-15', '02:40:05', '2024-10-17', '04:40:27', '4800'),
(4, 7, 6, 1, 1, 'Check Out', 1, '2024-10-17', '20:40:13', '2024-10-18', '05:53:37', '3134'),
(10, 24, 3, 3, 2, 'Check In', 1, '2024-10-26', '22:02:55', '2024-10-23', '00:00:00', '4400'),
(11, 25, 4, 5, 3, 'Check Out', 2, '2024-10-19', '02:30:10', '2024-10-19', '10:31:09', '10000'),
(12, 26, 4, 2, 0, 'Check Out', 5, '2024-10-20', '22:02:10', '2024-10-27', '06:50:29', '19000'),
(13, 27, 3, 3, 1, 'Check Out', 2, '2024-10-22', '00:07:22', '2024-10-23', '08:07:39', '6400'),
(14, 28, 9, 1, 0, 'Check In', 2, '2024-10-23', '22:30:43', '2024-10-24', '00:00:00', '246912'),
(15, 32, 2, 0, 0, 'Pending', 0, '2024-10-23', '00:00:00', '0000-00-00', '00:00:00', ''),
(16, 33, 1, 0, 0, 'Pending', 0, '2024-10-25', '00:00:00', '0000-00-00', '00:00:00', ''),
(21, 40, 1, 20, 0, 'Check In', 2, '2024-10-31', '16:01:16', '2024-10-29', '00:00:00', '4000'),
(22, 41, 1, 0, 0, 'Pending', 0, '2024-10-30', '00:00:00', '0000-00-00', '00:00:00', ''),
(23, 43, 1, 0, 0, 'Pending', 0, '2024-10-28', '00:00:00', '0000-00-00', '00:00:00', ''),
(28, 62, 10, 0, 0, 'Pending', 0, '2024-10-31', '00:00:00', '0000-00-00', '00:00:00', ''),
(29, 63, 4, 0, 0, 'Pending', 0, '2024-10-30', '00:00:00', '0000-00-00', '00:00:00', ''),
(30, 64, 1, 0, 0, 'Pending', 0, '2024-11-21', '00:00:00', '0000-00-00', '00:00:00', ''),
(31, 65, 2, 0, 0, 'Pending', 0, '2024-11-20', '00:00:00', '0000-00-00', '00:00:00', ''),
(32, 66, 2, 0, 0, 'Pending', 0, '2024-11-14', '00:00:00', '0000-00-00', '00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phonenumber` varchar(10) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `phonenumber`, `username`, `password`) VALUES
(2, 'Unisha Bista', 'Balkuamri', '2147483647', 'unisha', '1234567890'),
(6, 'Priyanshu ', 'godawari', '2147483647', 'priya', '1234'),
(7, 'Srijana Bista', 'Lalitpur', '2147483647', 'srijana', '12345678'),
(12, 'Unisha Bista', 'Balkuamri', '2147483647', 'unisha', '1234567y'),
(13, 'Unisha Bista', 'Balkuamri', '9812344561', 'uni', '12345hgfd'),
(14, 'Unisha Bista', 'Balkuamri', '9623455656', 'uni', '1234567dfgh'),
(15, 'Unisha Bista', 'Balkuamri', '0112345678', 'uni', '12345678uuu'),
(16, 'Setu Bista', 'Kitachour', '9812345678', 'uni12', '123456778uni'),
(17, 'Prem Karki', 'Godawari', '9812344561', 'uni0', '0987654321prem'),
(18, 'Prem Karki', 'Godawari', '9812345678', 'uni123', '12345678uni');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `guest`
--
ALTER TABLE `guest`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
