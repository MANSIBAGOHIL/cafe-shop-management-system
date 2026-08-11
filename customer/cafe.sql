-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 07:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `item` varchar(225) NOT NULL,
  `quantity` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`name`, `email`, `item`, `quantity`) VALUES
('Mansiba Gohil', 'mansibagohil1512@gmail.com', 'coffee', 2),
('Mansiba Gohil', 'mansibagohil1512@gmail.com', 'coffee', 2),
('Mansiba Gohil', 'mansibagohil1512@gmail.com', 'coffee', 3),
('Mansiba Gohil', 'mansibagohil1512@gmail.com', 'coffee', 3),
('nidhi', 'nidhi2@gmail.com', 'tea', 2),
('nidhi', 'nidhi2@gmail.com', 'tea', 2),
('Mansi', 'mansiba3@gmail.com', 'coffee', 2),
('Mansi', 'mansiba3@gmail.com', 'coffee', 2),
('Mansiba Gohil', 'mansibagohil1512@gmail.com', 'coffee', 2),
('Mansiba Gohil', 'mansibagohil1512@gmail.com', 'coffee', 2);

-- --------------------------------------------------------

--
-- Table structure for table `book_table`
--

CREATE TABLE `book_table` (
  `name` varchar(225) NOT NULL,
  `phone_no` int(10) NOT NULL,
  `email` varchar(225) NOT NULL,
  `person` int(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_table`
--

INSERT INTO `book_table` (`name`, `phone_no`, `email`, `person`, `date`) VALUES
('0', 2147483647, 'mansiba3@gmail.com', 2, '2023-05-15'),
('Mansi', 2147483647, 'mansiba3@gmail.com', 2, '2023-05-15');

-- --------------------------------------------------------

--
-- Table structure for table `book_table2`
--

CREATE TABLE `book_table2` (
  `name` varchar(255) NOT NULL,
  `phone_no` char(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `person_count` int(11) NOT NULL,
  `booking_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_table2`
--

INSERT INTO `book_table2` (`name`, `phone_no`, `email`, `person_count`, `booking_date`) VALUES
('Mansi', '9925199655', 'mansiba3@gmail.com', 2, '2023-05-15');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
