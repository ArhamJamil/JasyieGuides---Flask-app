-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2020 at 05:07 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rockyarham`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `srno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneno` varchar(20) NOT NULL,
  `messages` varchar(2000) NOT NULL,
  `date` datetime(6) DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`srno`, `name`, `email`, `phoneno`, `messages`, `date`) VALUES
(1, 'qwerty', 'qwerty@gmail.com', '123456789', 'hello this is databases from  python flask', '0000-00-00 00:00:00.000000'),
(2, 'Arham Jamil', 'MUHAMMADARHAMJAMILSABIH@gmail.com', '0303228335', 't3qwt', NULL),
(3, 'Arham Jamil', 'MUHAMMADARHAMJAMILSABIH@gmail.com', '0303228335', 't3qwt', '2020-03-15 20:51:12.346229'),
(4, 'Arham Jamil', 'rockyarham1290@gmail.com', '0303228335', 'wwww', '2020-03-15 21:10:23.292168'),
(5, 'Arham Jamil', 'sabihnaz@gmail.com', '0303228335', 'adfdfasfsfafafaf', '2020-03-15 20:33:07.358754'),
(6, 'Arham Jamil', 'sabihnaz@gmail.com', '0303228335', 'adfdfasfsfafafaf', '2020-03-15 20:33:44.642860'),
(7, 'Arham Jamil', 'sabihnaz@gmail.com', '0303228335', 'adfdfasfsfafafaf', '2020-03-15 20:35:59.798357'),
(8, 'Arham Jamil', 'sabihnaz@gmail.com', '0303228335', 'adfdfasfsfafafaf', '2020-03-15 20:38:39.850988'),
(9, '', '', '0303228335', 'hffd', '2020-03-15 20:39:17.226815'),
(10, 'Arham Jamil', 'muhammadaj27NOV@gmail.com', '0303228335', 'hffdwt4wtwt', '2020-03-15 20:39:37.314730'),
(11, 'Arham Jamil', 'muhammadaj27NOV@gmail.com', '0303228335', 'hffdwt4wtwt', '2020-03-15 20:44:46.257160');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`srno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
