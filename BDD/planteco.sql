-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 10, 2019 at 08:18 AM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `planteco`
--

-- --------------------------------------------------------

--
-- Table structure for table `donnée_capteur`
--

CREATE TABLE `donnée_capteur` (
  `donnee_id` int(11) NOT NULL,
  `donnee_date` varchar(255) NOT NULL DEFAULT 'CURRENT_TIMESTAMP()',
  `donnee_luminosite` int(11) NOT NULL,
  `donnee_humidite` int(11) NOT NULL,
  `donnee_temperature` int(11) NOT NULL,
  `fk_plante_utilisateur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donnée_capteur`
--

INSERT INTO `donnée_capteur` (`donnee_id`, `donnee_date`, `donnee_luminosite`, `donnee_humidite`, `donnee_temperature`, `fk_plante_utilisateur_id`) VALUES
(7, '2019-06-09 16:39:12', -10, -20107, 100, 1),
(8, '2019-06-10 09:15:28', -10, -20107, 100, 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `plante_utilisateur`
--

CREATE TABLE `plante_utilisateur` (
  `plante_id` int(11) NOT NULL,
  `plante_nom` varchar(255) NOT NULL,
  `fk_plante_id` int(11) NOT NULL,
  `fk_utilisateur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plante_utilisateur`
--

INSERT INTO `plante_utilisateur` (`plante_id`, `plante_nom`, `fk_plante_id`, `fk_utilisateur_id`) VALUES
(1, 'plante test de l\'utilisateur', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `utilisateur_id` int(11) NOT NULL,
  `utilisateur_nom` varchar(255) NOT NULL,
  `utilisateur_prenom` varchar(255) NOT NULL,
  `utilisateur_email` varchar(255) NOT NULL,
  `utilisateur_login` varchar(255) NOT NULL,
  `utilisateur_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`utilisateur_id`, `utilisateur_nom`, `utilisateur_prenom`, `utilisateur_email`, `utilisateur_login`, `utilisateur_password`) VALUES
(1, 'admin', 'root', '', 'admin', 'root'),
(2, 'Lucas', 'Usereau', 'lucas.test@test.com', 'test', 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donnée_capteur`
--
ALTER TABLE `donnée_capteur`
  ADD PRIMARY KEY (`donnee_id`),
  ADD KEY `fk_plante_utilisateur` (`fk_plante_utilisateur_id`);

--
-- Indexes for table `plante`
--
ALTER TABLE `plante`
  ADD PRIMARY KEY (`plante_id`);

--
-- Indexes for table `plante_utilisateur`
--
ALTER TABLE `plante_utilisateur`
  ADD PRIMARY KEY (`plante_id`),
  ADD KEY `fk_plante` (`fk_plante_id`),
  ADD KEY `fk_utilisateur_id` (`fk_utilisateur_id`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`utilisateur_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donnée_capteur`
--
ALTER TABLE `donnée_capteur`
  MODIFY `donnee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `plante`
--
ALTER TABLE `plante`
  MODIFY `plante_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plante_utilisateur`
--
ALTER TABLE `plante_utilisateur`
  MODIFY `plante_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `utilisateur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donnée_capteur`
--
ALTER TABLE `donnée_capteur`
  ADD CONSTRAINT `fk_plante_utilisateur` FOREIGN KEY (`fk_plante_utilisateur_id`) REFERENCES `plante_utilisateur` (`plante_id`);

--
-- Constraints for table `plante_utilisateur`
--
ALTER TABLE `plante_utilisateur`
  ADD CONSTRAINT `fk_plante` FOREIGN KEY (`fk_plante_id`) REFERENCES `plante` (`plante_id`),
  ADD CONSTRAINT `fk_utilisateur_id` FOREIGN KEY (`fk_utilisateur_id`) REFERENCES `utilisateur` (`utilisateur_id`);
