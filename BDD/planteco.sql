-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 10, 2019 at 08:11 AM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `planteco`
--

-- --------------------------------------------------------

--
-- Table structure for table `plante`
--

CREATE TABLE `plante` (
  `plante_id` int(11) NOT NULL,
  `plante_nom` varchar(255) NOT NULL,
  `plante_description` text NOT NULL,
  `plante_photo` varchar(255) NOT NULL,
  `plante_humidite_opti` varchar(255) NOT NULL,
  `plante_temperature_opti` varchar(255) NOT NULL,
  `plante_luminosite_opti` varchar(255) NOT NULL,
  `plante_periode_plantation` varchar(255) NOT NULL,
  `plante_periode_floraison` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plante`
--

INSERT INTO `plante` (`plante_id`, `plante_nom`, `plante_description`, `plante_photo`, `plante_humidite_opti`, `plante_temperature_opti`, `plante_luminosite_opti`, `plante_periode_plantation`, `plante_periode_floraison`) VALUES
(1, 'plante_test', 'elle est en test', 'wow.png', '50', '50', '50', '', 'wow');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `plante`
--
ALTER TABLE `plante`
  ADD PRIMARY KEY (`plante_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `plante`
--
ALTER TABLE `plante`
  MODIFY `plante_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
