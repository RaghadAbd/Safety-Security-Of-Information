-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 07:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visitors`
--

-- --------------------------------------------------------

--
-- Table structure for table `visitor_logs`
--

CREATE TABLE `visitor_logs` (
  `id` int(11) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `user_ip_address` varchar(50) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visitor_logs`
--

INSERT INTO `visitor_logs` (`id`, `page_url`, `user_ip_address`, `created`) VALUES
(23, 'http://localhost/Lab%204/APP1/img-tag.php', '::1', '2022-11-29 20:59:12'),
(30, 'http://localhost/Lab%204/APP1/img-tag.php', '::1', '2022-11-30 20:18:03'),
(31, 'http://localhost/Lab%204/APP1/img-tag.php', '::1', '2022-11-30 20:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_logs2`
--

CREATE TABLE `visitor_logs2` (
  `id` int(11) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `user_ip_address` varchar(50) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visitor_logs2`
--

INSERT INTO `visitor_logs2` (`id`, `page_url`, `user_ip_address`, `created`) VALUES
(2, 'http://localhost/tjreep/img-tag.php', '::1', '2022-11-30 20:06:29'),
(3, 'http://localhost/Lab%204/APP2/img-tag.php', '::1', '2022-11-30 20:10:19'),
(6, 'http://localhost/Lab%204/APP2/img-tag.php', '::1', '2022-11-30 20:18:33'),
(7, 'http://localhost/Lab%204/APP2/img-tag.php', '::1', '2022-11-30 20:18:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `visitor_logs`
--
ALTER TABLE `visitor_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_logs2`
--
ALTER TABLE `visitor_logs2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `visitor_logs`
--
ALTER TABLE `visitor_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `visitor_logs2`
--
ALTER TABLE `visitor_logs2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
