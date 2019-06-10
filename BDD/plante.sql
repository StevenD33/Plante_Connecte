-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 10 Juin 2019 à 07:39
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `planteco`
--

-- --------------------------------------------------------

--
-- Structure de la table `plante`
--

CREATE TABLE `plante` (
  `plante_id` int(11) NOT NULL,
  `plante_nom` varchar(255) NOT NULL,
  `plante_categorie` varchar(255) NOT NULL,
  `plante_description` text NOT NULL,
  `plante_photo` varchar(255) NOT NULL,
  `plante_humidite_opti` int(11) NOT NULL,
  `plante_temperature_opti` int(11) NOT NULL,
  `plante_luminosite_opti` int(11) NOT NULL,
  `plante_periode_floraison` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `plante`
--

INSERT INTO `plante` (`plante_id`, `plante_nom`, `plante_categorie`, `plante_description`, `plante_photo`, `plante_humidite_opti`, `plante_temperature_opti`, `plante_luminosite_opti`, `plante_periode_floraison`) VALUES
(1, 'plante_test', 'test', 'elle est en test', 'wow.png', 50, 50, 50, 'wow'),
(2, 'essaie', 'k', 'k', 'k', 1, 1, 1, 'k');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `plante`
--
ALTER TABLE `plante`
  ADD PRIMARY KEY (`plante_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `plante`
--
ALTER TABLE `plante`
  MODIFY `plante_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
