-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 05:59 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_files`
--

CREATE TABLE `all_files` (
  `product_id` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `file_name` varchar(50) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_files`
--

INSERT INTO `all_files` (`product_id`, `number`, `first_name`, `last_name`, `email`, `state`, `zip`, `file_name`, `user_id`) VALUES
(1, 0, 'first name', 'last name', 'email', 'state', 0, '', 2),
(2, 2147483647, 'jack', 'william', 'jw@gmail.com', 'active', 1230, '', 2),
(3, 2147483647, 'ram', 'kapur', 'rk@gmail.com', 'inactive', 1200, '', 2),
(4, 1701811471, 'akram', 'hossain', 'ah@gmail.com', 'active', 9092, '', 2),
(5, 1785321482, 'jalal', 'yonus', 'jy@gmail.com', 'active', 2350, '', 2),
(6, 2147483647, 'kolim', 'uddin', 'ku@gmail.com', 'inactive', 5689, '', 2),
(7, 0, 'first name', 'last name', 'email', 'state', 0, '', 2),
(8, 2147483647, 'jack', 'william', 'jw@gmail.com', 'active', 1230, '', 2),
(9, 2147483647, 'ram', 'kapur', 'rk@gmail.com', 'inactive', 1200, '', 2),
(10, 1701811471, 'akram', 'hossain', 'ah@gmail.com', 'active', 9092, '', 2),
(11, 1785321482, 'jalal', 'yonus', 'jy@gmail.com', 'active', 2350, '', 2),
(12, 2147483647, 'kolim', 'uddin', 'ku@gmail.com', 'inactive', 5689, '', 2),
(13, 0, 'first name', 'last name', 'email', 'state', 0, '', 2),
(14, 2147483647, 'jack', 'william', 'jw@gmail.com', 'active', 1230, '', 2),
(15, 2147483647, 'ram', 'kapur', 'rk@gmail.com', 'inactive', 1200, '', 2),
(16, 1701811471, 'akram', 'hossain', 'ah@gmail.com', 'active', 9092, '', 2),
(17, 1785321482, 'jalal', 'yonus', 'jy@gmail.com', 'active', 2350, '', 2),
(18, 2147483647, 'kolim', 'uddin', 'ku@gmail.com', 'inactive', 5689, '', 2),
(19, 0, 'first name', 'last name', 'email', 'state', 0, 'data 2', 14),
(20, 2147483647, 'jack', 'william', 'jw@gmail.com', 'active', 1230, 'data 2', 14),
(21, 2147483647, 'ram', 'kapur', 'rk@gmail.com', 'active', 1200, 'data 2', 14),
(22, 1701811471, 'akram', 'hossain', 'ah@gmail.com', 'active', 9092, 'data 2', 14),
(23, 1785321482, 'jalal', 'yonus', 'jy@gmail.com', 'active', 2350, 'data 2', 14),
(24, 2147483647, 'kolim', 'uddin', 'ku@gmail.com', 'active', 5689, 'data 2', 14);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL DEFAULT 'user',
  `useremail` varchar(50) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `usertype`, `useremail`, `status`) VALUES
(1, 'Admin', '1234', 'admin', 'admin@admin.com', 'block'),
(2, 'asd', '123456', 'user', 'asd@project.com', 'Active'),
(10, 'user1', '1234', 'user', 'user1@project.com', 'active'),
(14, 'lal', '123456', 'user', 'lal@gg.com', 'active'),
(15, 'new user', '456789', 'user', 'new@user.com', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_files`
--
ALTER TABLE `all_files`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_files`
--
ALTER TABLE `all_files`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
