-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 31 Mai 2019 à 13:07
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
-- Structure de la table `donnée_capteur`
--

CREATE TABLE `donnée_capteur` (
  `donnee_id` int(11) NOT NULL,
  `donnee_date` date NOT NULL,
  `donnee_luminosite` int(11) NOT NULL,
  `donnee_humidite` int(11) NOT NULL,
  `donnee_temperature` int(11) NOT NULL,
  `fk_plante_utilisateur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Structure de la table `plante_utilisateur`
--

CREATE TABLE `plante_utilisateur` (
  `plante_id` int(11) NOT NULL,
  `plante_nom` varchar(255) NOT NULL,
  `fk_plante_id` int(11) NOT NULL,
  `fk_utilisateur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `utilisateur_id` int(11) NOT NULL,
  `utilisateur_nom` varchar(255) NOT NULL,
  `utilisateur_prenom` varchar(255) NOT NULL,
  `utilisateur_login` varchar(255) NOT NULL,
  `utilisateur_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `donnée_capteur`
--
ALTER TABLE `donnée_capteur`
  ADD PRIMARY KEY (`donnee_id`),
  ADD KEY `fk_plante_utilisateur` (`fk_plante_utilisateur_id`);

--
-- Index pour la table `plante`
--
ALTER TABLE `plante`
  ADD PRIMARY KEY (`plante_id`);

--
-- Index pour la table `plante_utilisateur`
--
ALTER TABLE `plante_utilisateur`
  ADD PRIMARY KEY (`plante_id`),
  ADD KEY `fk_plante` (`fk_plante_id`),
  ADD KEY `fk_utilisateur_id` (`fk_utilisateur_id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`utilisateur_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `donnée_capteur`
--
ALTER TABLE `donnée_capteur`
  MODIFY `donnee_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `plante`
--
ALTER TABLE `plante`
  MODIFY `plante_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `plante_utilisateur`
--
ALTER TABLE `plante_utilisateur`
  MODIFY `plante_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `utilisateur_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `donnée_capteur`
--
ALTER TABLE `donnée_capteur`
  ADD CONSTRAINT `fk_plante_utilisateur` FOREIGN KEY (`fk_plante_utilisateur_id`) REFERENCES `plante_utilisateur` (`plante_id`);

--
-- Contraintes pour la table `plante_utilisateur`
--
ALTER TABLE `plante_utilisateur`
  ADD CONSTRAINT `fk_plante` FOREIGN KEY (`fk_plante_id`) REFERENCES `plante` (`plante_id`),
  ADD CONSTRAINT `fk_utilisateur_id` FOREIGN KEY (`fk_utilisateur_id`) REFERENCES `utilisateur` (`utilisateur_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
