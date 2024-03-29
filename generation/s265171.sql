-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 20, 2019 at 12:53 PM
-- Server version: 5.7.26-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s265171`
--

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE `reservation` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seat` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchased` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`email`, `seat`, `purchased`) VALUES
('u1@p.it', 'A4', 0),
('u2@p.it', 'B2', 1),
('u2@p.it', 'B3', 1),
('u2@p.it', 'B4', 1),
('u1@p.it', 'D4', 0),
('u2@p.it', 'F4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `password`, `salt`) VALUES
('u1@p.it', '5bd8fedd08d4106d0bb767477a98dcea23a49fde8e98891452bc5e50e1bbb497be5790b30eb5ec208ccbb39d1393b555750985ab5bc7c3c8212936c36129015a', 'c7c7fe0283bb5c830c4b29578ac5b16c1bea62eede6008ebe3a7837cc8697ab358bd95fc6c9ba2e78283afd210922e74912c6ad9c9a35be34e3cf722268b0b9b'),
('u2@p.it', '76ee6496876c918f814c3ea648c907e77fa298406a40b4e17794b1854286ed28a73daaaf666d665baebdb092311d3755fd42e29e581eddbe155e16cdd6b98c71', '6206d169a3b764f9985263159b7c6769357462681118149d0448e7212af82bf08967351af3f185c38f747a579a9ea751a972c66f4b370daa08cae939b6119d66');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`seat`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
