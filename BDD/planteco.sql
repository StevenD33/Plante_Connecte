-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 10, 2019 at 09:17 AM
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
  `plante_photo` varchar(255) NOT NULL DEFAULT 'photo.jpg',
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
(1, 'plante_test', 'elle est en test', 'wow.png', '50', '50', '50', '', 'wow'),
(5, 'Coquelicot', 'Le coquelicot est une plante classique des prairies en jachère ou des bords de routes. Il y pousse spontanément et égaye nos campagnes de ses fleurs froissées rouge vif marquées à la base des pétales d\'une tâche noire.Cette plante originaire d\'Afrique du Nord et d\'Eurasie s\'est largement naturalisée partout ailleurs, elle possède un cycle végétatif annuel, c\'est à dire qu\'elle se développe et meurt sur une même année.Le coquelicot présente un port dressé et ramifié, les tiges son légèrement velues et portent des feuilles oblongues pénnatifides de 8 à 15 cm de longueur, vert tendre à segments lancéolés.Le charme du coquelicot réside dans sa fleur solitaire de 5 à 8 cm de diamètre rouge brillant marquée à la base d\'un « œil noir » pour l\'espèce la plus commune. Certains cultivars proposent des fleurs semi double à double blanches, roses, oranges, bleues lilas ou même marrons.La culture du coquelicot est très aisée : c\'est une plante qui une fois semée pousse sans souci dans toutes les terre bien drainées. Il supporte bien le calcaire et se contente de peu pour croître et se multiplier abondamment d\'une année sur l’autre grâce au semis spontané. Une exposition ensoleillée lui est nécessaire ainsi qu\'une ambiance pas trop humide pour ne pas voir l\'oïdium se développer sur son feuillage.On sème le coquelicot en début de printemps directement en place car il supporte très mal la transplantation.\r\n', 'photo.jpg', 'normal', '23', 'soleil, mi-ombre', 'printemps', 'mai, juin, juillet'),
(6, 'Adromischus', 'Les Adromischus font partie de la grande famille des Crassulacées qui compte plus de 150 espèces de plantes au feuillage succulent. Le Genre comprend une trentaine d\'espèces vivaces et de nombreux cultivars souvent acaules, présentant des feuilles très charnues groupées ou disposées en spirales.\r\nLes adromischus sont originaires des régions semi-arides d\' Afrique du Sud et de Namibie où ils forment des touffes compactes et basses ne dépassant pas 10 cm de haut. Seule l\'espèce \'maximus\' peut atteindre 25 cm de hauteur. Les inflorescences portées en épis de fleurs tubulaires aux lobes étalés fleurissent pour la plupart en été.\r\nOn trouve le plus fréquemment l\'espèce \'Cooperi\' en jardinerie ; elle présente des feuilles très charnues, lustrées, gris/vert maculées de tâches pourpre sur le dessus.\r\n', 'photo.jpg', 'normal', '24', 'soleil', 'printemps', 'juin, juillet, août, septembre'),
(7, 'Abelia', 'C\'est au cœur de l\'été que la floraison de l\'Abelia est la plus abondante. De milliers de petites clochettes roses se succèdent jusqu\'à l\'automne. Le calice qui persiste sur la plante après que la fleur soit tombée est d\'un joli rose vif. Il prolonge l\'intérêt décoratif de l\'arbuste. Bien connu pour sa parfaite tenue face au vent et aux embruns, l\'Abélia est vivement recommandé pour les jardins de bords de mer. Il est également apprécié dans les villes car il supporte bien la pollution atmosphérique. Son port buissonnant et compact est un atout supplémentaire pour les petits jardins. C\'est enfin un arbuste très facile à cultiver qui ne demande presque aucun entretien.', 'photo.jpg', 'soleil', '7', 'soleil', 'printemps, automne', 'mai aux gelées'),
(8, 'Amélanchier', 'Ce merveilleux arbuste est sans nul doute appelé à connaître un vrai succès dans nos jardins, car il a tout pour plaire, et un talent fou pour donner à la vie du jardin le vrai rythme des saisons.\r\nEn avril-mai, l\'amélanchier se couvre d\'une neige de fleurs étoilées blanches teintées de rose parfois même parfumées, l\'été le pare de baies (les amélanches) aussi savoureuses que décoratives, l\'automne est son plus beau spectacle, flamboiement de cuivre et de pourpre.\r\nSuperbe en plantation isolée avec sa belle silhouette ample et élégante, l\'amélanchier est remarquable en massif ou en haie bocagère. Un merveilleux ami à découvrir sans tarder !', 'photo.jpg', 'humide', '7', 'soleil, mi-ombre', 'automne', 'avril, mai'),
(9, 'Erica multiflora', 'Erica multiflora, la bruyère à nombreuses fleurs est un arbrisseau persistant de la famille des Ericacées. La bruyère multiflore est originaire des régions méditerranéennes, présentes en France à l’état naturel dans quelques départements du sud, notamment commune en Alpes Maritimes, sur les coteaux calcaires ou dans les bois. Elle est cultivée comme plante ornementale, précieuse pour sa floraison automnale, très résistante à la sécheresse.', 'photo.jpg', 'humide', '5', 'ensoleillé', 'printemps, automne', 'août à décembre'),
(10, 'Aptenia cordifolia', 'L\'Apténie cordée (Aptenia cordifolia) est une petite plante vivace au feuillage succulent originaire d\'Afrique du Sud. Elle fait partie de la famille des Aizoacées et peut parfois être assimilée à un ficoïde. Ses petites feuilles bien charnues d\'un beau vert vif brillant au soleil sont portées par de fines tiges pouvant s\'étaler de manière spectaculaire formant de véritables tapis. De l\'été à l\'automne, apparaissent de petites fleurs rouges de 1 à 2 cm de diamètre en forme de marguerites. Certains cultivars assez rares dans le commerce, présentent des fleurs blanches ou roses.\r\nD\'une hauteur maximale de 5 cm, la plante peut toutefois s\'étaler sur plusieurs mètres habillant délicatement buttes et murets. Idéale en rocailles, elle peut aussi être cultivée en potées au balcon ou en paniers suspendus dans une serre.', 'photo.jpg', 'sec', '10', 'soleil, mi-ombre', 'printemps', 'printemps au début de l\'automne'),
(11, 'Liriodendron tulipifera', 'Le tulipier de Virginie, Liriodendron tulipifera, est un arbre magnifique appartenant à la famille des Magnoliacées. Originaire d’Amérique du nord, il se rencontre surtout au sud-est et centre-ouest du continent, souvent dans les milieux ouverts en bordure de cours d’eau sur les ripisylves.\r\nUtilisé en marquèterie ou pour le lamellé, Liriodendron Tulipifera est également un arbre ornemental de valeur. De grande taille, il montre une élégance naturelle mise en valeur en isolé, associée à une floraison étonnante et parfumée.', 'photo.jpg', 'humide', '6', 'ensoleillée à mi-ombre ', 'automne', 'juillet à août'),
(12, 'Magnolia x soulangeana', 'Les magnolias sont des arbres anciens dont on trouve des fossiles vieux de plus de 20 millions d’années. Leur magnifique floraison est considérée comme l’une des plus primitives : leurs fleurs sont proches, du point de vue évolutif, des première fleurs existantes.\r\nFascinants, les magnolias sont couramment cultivés aujourd’hui. Le magnolia de Soulange est un hybride crée vers 1820, issu de Magnolia denudata et Magniolia liliflora. Il est représenté aujourd’hui par de nombreuses variétés. De culture facile il se décline en blanc, en rose, ou presque rouge. C’est un arbre de taille modéré, montrant fidèlement une floraison abondante et remarquable. Il est utilisé en arbre isolé, au milieu de la pelouse, ou d’une cour.', 'photo.jpg', 'très sec', '6', 'ensoleillée à mi-ombre', 'automne', 'juillet à août'),
(13, 'Dasylirion acrotrichum', 'Dasylirion acrotichum, le dasylirion acrotriche est une plante vivace arbustive xérophyte, originaire du Mexique. Cette jolie plante, utilisée comme ornementale, appartenait à la famille des Agavacées. Aujourd’hui, considéré cependant plus proche des Nolina  et Beaucarnea : le genre Dasylirion  s’inscrit dans famille des Ruscacées, plus généralement dans les Asparagacées.\r\n\r\nLe dasylirion acrotriche est avec le Dasylirion berlandierii,  l’une des espèces les plus rustiques. En France, sa culture est souvent conseillée en pot, mais le dasylirion acrotriche se montre assez rustique pour supporter des climats méditerranéens ou océaniques, voire même plus froid avec une protection contre la pluie.', 'photo.jpg', 'sec', '20', 'plein soleil à éventuellement mi-ombre ', 'printemps', 'août à septembre');

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
  MODIFY `plante_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
