-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2024 at 05:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gifezz`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `otp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `nama`, `username`, `email`, `phone`, `password`, `gender`, `otp`) VALUES
(5, 'Marco Rivero Hutagaol', 'rivero', 'rivero@gmail.com', '+6288261986035', '$2y$10$6cMHXFCm58HDkVggwbWrXOZEePMWVovtnRcfNGeQrEkrVzaIHhtqK', 'male', ''),
(15, 'Mufti Fardan Lubis', 'mufti', 'mufti@gmail.com', '+6281362895645', '$2y$10$QjJ8nEY8skEe/96riLg5jOvdUvBHRGaJxzBKP3vfV8dy75cn5Nhq6', 'male', ''),
(16, 'Anggie Rahmadina', 'anggie', 'anggie@gmail.com', '+6282274138273', '$2y$10$gul52HpzlaGjQcpnKiiGIuN9b709DcXaJORqZLEdl3aFDHC.9YZ3W', 'female', ''),
(17, 'Shelly', 'shelly', 'shelly@gmail.com', '+6289652650177', '$2y$10$KYQox5IqIJzTy4.P22.kXOK2XKscH296eU09xPODM2.uS6vfTH2iO', 'female', ''),
(18, 'Marvel Pasaribu', 'marvel', 'marvel@gmail.com', '+6281213405507', '$2y$10$e5DzqR7PNMizRS8K0Q2dF.7KDbBoEJinJTmKXr7x4cBmYRmzis4uS', 'male', '');

-- --------------------------------------------------------

--
-- Table structure for table `confessbox`
--

CREATE TABLE `confessbox` (
  `id` int(11) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `confessbox`
--

INSERT INTO `confessbox` (`id`, `pengirim`, `penerima`, `pesan`) VALUES
(1, 'John', 'Jane', 'And you have got a smile that could light up this whole town.'),
(2, 'Siti', 'Budi', 'I stare at you when you are not looking'),
(3, 'Tono', 'Santi', 'I will be yours forever, just tell me when to start.'),
(4, 'Leon', 'Ashley', 'If my love for you is a crime, I want to be the most wanted criminal.'),
(5, 'Halim', 'Nazwa', 'In a room full of art, I\'d still stare at you.');

-- --------------------------------------------------------

--
-- Table structure for table `confessbox2`
--

CREATE TABLE `confessbox2` (
  `id` int(11) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `confessbox2`
--

INSERT INTO `confessbox2` (`id`, `pengirim`, `penerima`, `pesan`) VALUES
(1, 'Jane', 'John', 'I stare at you when you are not looking'),
(2, 'Rafael', 'Ruth', 'And you have got a smile that could light up this ...'),
(3, 'Heston', 'Tina', 'In a room full of art, I\'d still stare at you.'),
(4, 'Dina', 'Ferry', 'If my love for you is a crime, I want to be the most wanted criminal.'),
(5, 'Irwan', 'Venny', 'I will be yours forever, just tell me when to star');

-- --------------------------------------------------------

--
-- Table structure for table `submit`
--

CREATE TABLE `submit` (
  `id` int(11) NOT NULL,
  `akun` varchar(50) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submit`
--

INSERT INTO `submit` (`id`, `akun`, `pengirim`, `penerima`, `pesan`) VALUES
(1, '', 'John', 'Jane', 'And you have got a smile that could light up this whole town.'),
(2, '', 'Siti', 'Budi', 'I stare at you when you are not looking'),
(3, '', 'Tono', 'Santi', 'I will be yours forever, just tell me when to start.'),
(4, '', 'Leon', 'Ashley', 'If my love for you is a crime, I want to be the most wanted criminal.'),
(5, '', 'Halim', 'Nazwa', 'In a room full of art, I\'d still stare at you.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confessbox`
--
ALTER TABLE `confessbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confessbox2`
--
ALTER TABLE `confessbox2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submit`
--
ALTER TABLE `submit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `confessbox`
--
ALTER TABLE `confessbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `confessbox2`
--
ALTER TABLE `confessbox2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `submit`
--
ALTER TABLE `submit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
