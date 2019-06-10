-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 10 Juin 2019 à 17:35
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
  `donnee_date` varchar(255) NOT NULL DEFAULT 'CURRENT_TIMESTAMP()',
  `donnee_luminosite` int(11) NOT NULL,
  `donnee_humidite` int(11) NOT NULL,
  `donnee_temperature` int(11) NOT NULL,
  `fk_plante_utilisateur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `donnée_capteur`
--

INSERT INTO `donnée_capteur` (`donnee_id`, `donnee_date`, `donnee_luminosite`, `donnee_humidite`, `donnee_temperature`, `fk_plante_utilisateur_id`) VALUES
(11, '2019-06-10 19:26:30', -201, 100, -10, 2),
(12, '2019-06-10 19:26:46', -201, 100, -10, 2),
(13, '2019-06-10 19:28:25', -201, 100, -10, 2);

-- --------------------------------------------------------

--
-- Structure de la table `plante`
--

CREATE TABLE `plante` (
  `plante_id` int(11) NOT NULL,
  `plante_nom` varchar(255) NOT NULL,
  `plante_description` text NOT NULL,
  `plante_photo` varchar(255) NOT NULL DEFAULT 'photo.jpg',
  `plante_humidite_opti` varchar(255) NOT NULL,
  `plante_temperature_opti` int(255) NOT NULL,
  `plante_luminosite_opti` varchar(255) NOT NULL,
  `plante_periode_plantation` varchar(255) NOT NULL,
  `plante_periode_floraison` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `plante`
--

INSERT INTO `plante` (`plante_id`, `plante_nom`, `plante_description`, `plante_photo`, `plante_humidite_opti`, `plante_temperature_opti`, `plante_luminosite_opti`, `plante_periode_plantation`, `plante_periode_floraison`) VALUES
(5, 'Coquelicot', 'Le coquelicot est une plante classique des prairies en jachère ou des bords de routes. Il y pousse spontanément et égaye nos campagnes de ses fleurs froissées rouge vif marquées à la base des pétales d\'une tâche noire.Cette plante originaire d\'Afrique du Nord et d\'Eurasie s\'est largement naturalisée partout ailleurs, elle possède un cycle végétatif annuel, c\'est à dire qu\'elle se développe et meurt sur une même année.Le coquelicot présente un port dressé et ramifié, les tiges son légèrement velues et portent des feuilles oblongues pénnatifides de 8 à 15 cm de longueur, vert tendre à segments lancéolés.Le charme du coquelicot réside dans sa fleur solitaire de 5 à 8 cm de diamètre rouge brillant marquée à la base d\'un « œil noir » pour l\'espèce la plus commune. Certains cultivars proposent des fleurs semi double à double blanches, roses, oranges, bleues lilas ou même marrons.La culture du coquelicot est très aisée : c\'est une plante qui une fois semée pousse sans souci dans toutes les terre bien drainées. Il supporte bien le calcaire et se contente de peu pour croître et se multiplier abondamment d\'une année sur l’autre grâce au semis spontané. Une exposition ensoleillée lui est nécessaire ainsi qu\'une ambiance pas trop humide pour ne pas voir l\'oïdium se développer sur son feuillage.On sème le coquelicot en début de printemps directement en place car il supporte très mal la transplantation.\r\n', 'coquelicot.png', 'normal', 23, 'soleil, mi-ombre', 'printemps', 'mai, juin, juillet'),
(6, 'Adromischus', 'Les Adromischus font partie de la grande famille des Crassulacées qui compte plus de 150 espèces de plantes au feuillage succulent. Le Genre comprend une trentaine d\'espèces vivaces et de nombreux cultivars souvent acaules, présentant des feuilles très charnues groupées ou disposées en spirales.\r\nLes adromischus sont originaires des régions semi-arides d\' Afrique du Sud et de Namibie où ils forment des touffes compactes et basses ne dépassant pas 10 cm de haut. Seule l\'espèce \'maximus\' peut atteindre 25 cm de hauteur. Les inflorescences portées en épis de fleurs tubulaires aux lobes étalés fleurissent pour la plupart en été.\r\nOn trouve le plus fréquemment l\'espèce \'Cooperi\' en jardinerie ; elle présente des feuilles très charnues, lustrées, gris/vert maculées de tâches pourpre sur le dessus.\r\n', 'adromischus.png', 'normal', 24, 'soleil', 'printemps', 'juin, juillet, août, septembre'),
(7, 'Abelia', 'C\'est au cœur de l\'été que la floraison de l\'Abelia est la plus abondante. De milliers de petites clochettes roses se succèdent jusqu\'à l\'automne. Le calice qui persiste sur la plante après que la fleur soit tombée est d\'un joli rose vif. Il prolonge l\'intérêt décoratif de l\'arbuste. Bien connu pour sa parfaite tenue face au vent et aux embruns, l\'Abélia est vivement recommandé pour les jardins de bords de mer. Il est également apprécié dans les villes car il supporte bien la pollution atmosphérique. Son port buissonnant et compact est un atout supplémentaire pour les petits jardins. C\'est enfin un arbuste très facile à cultiver qui ne demande presque aucun entretien.', 'abelia.png', 'soleil', 7, 'soleil', 'printemps, automne', 'mai aux gelées'),
(8, 'Amélanchier', 'Ce merveilleux arbuste est sans nul doute appelé à connaître un vrai succès dans nos jardins, car il a tout pour plaire, et un talent fou pour donner à la vie du jardin le vrai rythme des saisons.\r\nEn avril-mai, l\'amélanchier se couvre d\'une neige de fleurs étoilées blanches teintées de rose parfois même parfumées, l\'été le pare de baies (les amélanches) aussi savoureuses que décoratives, l\'automne est son plus beau spectacle, flamboiement de cuivre et de pourpre.\r\nSuperbe en plantation isolée avec sa belle silhouette ample et élégante, l\'amélanchier est remarquable en massif ou en haie bocagère. Un merveilleux ami à découvrir sans tarder !', 'amelanchier.png', 'humide', 7, 'soleil, mi-ombre', 'automne', 'avril, mai'),
(9, 'Erica multiflora', 'Erica multiflora, la bruyère à nombreuses fleurs est un arbrisseau persistant de la famille des Ericacées. La bruyère multiflore est originaire des régions méditerranéennes, présentes en France à l’état naturel dans quelques départements du sud, notamment commune en Alpes Maritimes, sur les coteaux calcaires ou dans les bois. Elle est cultivée comme plante ornementale, précieuse pour sa floraison automnale, très résistante à la sécheresse.', 'erica_multiflora.png', 'humide', 5, 'ensoleillé', 'printemps, automne', 'août à décembre'),
(10, 'Aptenia cordifolia', 'L\'Apténie cordée (Aptenia cordifolia) est une petite plante vivace au feuillage succulent originaire d\'Afrique du Sud. Elle fait partie de la famille des Aizoacées et peut parfois être assimilée à un ficoïde. Ses petites feuilles bien charnues d\'un beau vert vif brillant au soleil sont portées par de fines tiges pouvant s\'étaler de manière spectaculaire formant de véritables tapis. De l\'été à l\'automne, apparaissent de petites fleurs rouges de 1 à 2 cm de diamètre en forme de marguerites. Certains cultivars assez rares dans le commerce, présentent des fleurs blanches ou roses.\r\nD\'une hauteur maximale de 5 cm, la plante peut toutefois s\'étaler sur plusieurs mètres habillant délicatement buttes et murets. Idéale en rocailles, elle peut aussi être cultivée en potées au balcon ou en paniers suspendus dans une serre.', 'aptenia_cordifolia.png', 'sec', 10, 'soleil, mi-ombre', 'printemps', 'printemps au début de l\'automne'),
(11, 'Liriodendron tulipifera', 'Le tulipier de Virginie, Liriodendron tulipifera, est un arbre magnifique appartenant à la famille des Magnoliacées. Originaire d’Amérique du nord, il se rencontre surtout au sud-est et centre-ouest du continent, souvent dans les milieux ouverts en bordure de cours d’eau sur les ripisylves.\r\nUtilisé en marquèterie ou pour le lamellé, Liriodendron Tulipifera est également un arbre ornemental de valeur. De grande taille, il montre une élégance naturelle mise en valeur en isolé, associée à une floraison étonnante et parfumée.', 'liriodendron_tulipifera.png', 'humide', 6, 'ensoleillée à mi-ombre ', 'automne', 'juillet à août'),
(12, 'Magnolia x soulangeana', 'Les magnolias sont des arbres anciens dont on trouve des fossiles vieux de plus de 20 millions d’années. Leur magnifique floraison est considérée comme l’une des plus primitives : leurs fleurs sont proches, du point de vue évolutif, des première fleurs existantes.\r\nFascinants, les magnolias sont couramment cultivés aujourd’hui. Le magnolia de Soulange est un hybride crée vers 1820, issu de Magnolia denudata et Magniolia liliflora. Il est représenté aujourd’hui par de nombreuses variétés. De culture facile il se décline en blanc, en rose, ou presque rouge. C’est un arbre de taille modéré, montrant fidèlement une floraison abondante et remarquable. Il est utilisé en arbre isolé, au milieu de la pelouse, ou d’une cour.', 'magnolia-x-soulangeana.png', 'très sec', 6, 'ensoleillée à mi-ombre', 'automne', 'juillet à août'),
(13, 'Dasylirion acrotrichum', 'Dasylirion acrotichum, le dasylirion acrotriche est une plante vivace arbustive xérophyte, originaire du Mexique. Cette jolie plante, utilisée comme ornementale, appartenait à la famille des Agavacées. Aujourd’hui, considéré cependant plus proche des Nolina  et Beaucarnea : le genre Dasylirion  s’inscrit dans famille des Ruscacées, plus généralement dans les Asparagacées.\r\n\r\nLe dasylirion acrotriche est avec le Dasylirion berlandierii,  l’une des espèces les plus rustiques. En France, sa culture est souvent conseillée en pot, mais le dasylirion acrotriche se montre assez rustique pour supporter des climats méditerranéens ou océaniques, voire même plus froid avec une protection contre la pluie.', 'dasylirion.png', 'sec', 20, 'plein soleil à éventuellement mi-ombre ', 'printemps', 'août à septembre'),
(14, 'Crassula ovata', 'Crassula ovata, autrement nommée « arbre à Jade » fait partie de la grande famille des Crassulacées dont le genre compte plus de 150 espèces de succulentes de tailles et de formes très diverses.\r\n\r\nOn trouve facilement Crassula ovata en jardinerie ; facile de culture et ne demandant que peu d\'entretien c\'est une plante idéale pour débuter une collection de plantes grasses. Elle est aussi parfois employée à la formation de bonsaïs.\r\n\r\nCrassula ovata est originaire d\'Afrique du Sud où elle forme un arbuste succulent, au port dressé. La plante se ramifie en tiges épaisses et charnues grisâtres portant des feuilles arrondies très succulente vert brillant, parfois délicatement bordées de rouge. Les feuilles ne dépassent pas 4 cm de long, en automne ou en hiver, des fleurs étoilées généralement blanches mais parfois roses pâles, s\'épanouissent en petites ombelles.\r\n\r\nEn pleine terre et dans de bonne conditions de culture, cette plante peut atteindre plus de 2 m de hauteur pour 1,5 m d\'étalement.', 'crassula_ovata.png', 'sec', 19, 'soleil', 'printemps', 'été'),
(16, 'Aeonium arboreum', 'L’aéonium pourpre, Aeonium arboreum \'Atropurpureum\' est une plante succulente appartenant à la famille des Crassulacées. L’aéonium en arbre, en forme verte botanique, est présente sur le littoral marocain, portugais et espagnol, ainsi que dans certaines îles méditerranéennes.\r\n\r\nL’aeonium en arbre pourpre est une forme horticole, vendue très couramment, certainement plus souvent d’ailleurs que la forme botanique. Cette plante succulente, mi-plante grasse, mi-bonsaï, est à la fois très colorée et particulièrement facile à maintenir, en intérieur comme à l’extérieur pour la belle saison.', 'aeonium_arboreum.png', 'sec', 24, 'soleil à ombre lumineuse ', 'avril à août', 'hiver'),
(17, 'Yucca gloriosa', 'Yucca gloriosa, le yucca superbe, est une plante arbustive monocotylédone appartenant à la famille des Agavacées. Il est originaire des États-Unis, présent sur la zone côtière sud-est en Caroline et en Floride. Ce yucca, étroitement apparenté aux agaves, est une plante xérophyte, mais parfaitement rustique. C’est pourquoi il est devenu le Yucca des jardins. Belle silhouette et superbes fleurs, il est incontournable pour la touche d’exotisme qu’il apporte. Bien que lent à se développer, il est très aisé à maintenir et demande peu de soins.', 'yucca_gloriosa.png', 'sec', 10, 'ensoleillée à mi-ombre ', 'printemps, été', 'été, automne'),
(18, 'Euphorbia horrida', 'Euphorbia horrida fait partie de l\'immense et complexe famille des Euphorbiacées qui comprend 2000 espèces de plantes de toutes formes et de toutes tailles répandues dans les régions tempérées, subtropicales et tropicales du globe.\r\n\r\nEuphorbia horrida est originaire d’Afrique du Sud ; c’est une plante succulente cactiforme dioïque au corps bleuté à grisâtre, qui peut être ramifié à la base. Dans la nature Euphorbia horrida peut atteindre jusqu\'à 1 mètre de hauteur, pour des tiges de 15 cm de diamètre sur lesquelles on distingue 12 à 16 côtes plus ou moins ondulées et bien séparées. Les épines sont en réalité des pédoncules stériles verts à la base puis brun rougeâtre qui, une fois secs deviennent rigides et brun foncé. Ces épines peuvent être solitaires ou groupées et atteindre un maximum de 4 cm de longueur.\r\n\r\nDes fleurs solitaires jaune verdâtre apparaissent en été sous forme de cyathes.\r\n\r\nLa culture d’Euphorbia horrida est assez aisée : elle peut même tolérer de courte gelées si elle est maintenue au sec ; cependant pour plus de tranquillité, n\'hésitez pas à l\'abriter dès que la température descend en dessous de 10°. On ne pourra la planter en pleine terre que dans le Sud de la France en situation chaude et abritée.\r\n\r\nElle trouvera sa place en serre ou en appartement partout ailleurs ; vous lui réserverez un endroit en pleine lumière sans soleil direct, trop brûlant pour elle.\r\n\r\nLe substrat devra être bien drainé afin d’éviter la pourriture des racines et sera composé de 2/5 de terreau, 2/5 de terre de jardin non calcaire et de 1/5 de sable de rivière. Pendant la période de croissance (avril-septembre) arrosez copieusement une fois par semaine, et ajoutez un peu d’engrais liquide une fois par mois. Ensuite, suspendez tous les arrosages durant la saison froide.', 'euphorbia.png', 'très sec', 15, 'pleine lumière sans soleil direct brûlant', 'printemps', 'été'),
(19, 'Stapelia grandiflora', 'Le Stapelia est une jolie plante érigée succulente et vivace. Le genre compte plus de 45 espèces dont  certaines appartiennent désormais aux genres Orbéa, Huernia et autres. Elles prospèrent en Afrique tropicale et méridionale.\r\n\r\nLe Stapelia grandiflora est une plante originale sous bien des angles ;\r\n\r\n    Tout d’abord son feuillage : rudimentaire et dentelé, chaque feuille est en fait une tige dressée, anguleuse et charnue. La plante se ramifie à la base et forme des touffes, aisément divisibles lors de la multiplication.\r\n    Sa fleur étoilée rouge mat pourprée, peut être légèrement striée de jaune. Ses lobes sont plissés aux extrémités. Toute la surface de la fleur est recouverte d’un léger duvet. Sa taille est conséquente en rapport à la plante : près de 20 cm !\r\n\r\nLes sols bien drainés et rocailleux de leur contrée natale sont le terrain de prédilection des Stapelia. Pour une culture réussie, il est nécessaire de lui offrir une excellente luminosité et un substrat bien drainé. Dans le sud de la France elle peut être intégrée dans une rocaille en pleine terre au jardin, l’exposition devra alors être ensoleillée mais pas trop brûlante, le sol légèrement pentu afin de laisser s’écouler l’eau.\r\n\r\nPlus généralement, le Stapélia se plait à l’abri d’une serre en pleine lumière. Le substrat devra être composé d’une part égale de terreau et de sable grossier de rivière. Un ajout de gravillon en surface permettra d’éviter la pourriture du collet. L’hiver tenir au sec en serre froide. En serre chauffée un arrosage parcimonieux pourra être envisagé si le feuillage se flétrit.\r\n \r\nIl est possible de sortir Stapelia grandiflora dès le mois de mai lorsque tout risque de gelée est écarté, les placer alors à la mi-ombre et recommencer les arrosages progressivement jusqu’à deux fois par semaine si l’été est sec et chaud. Un engrais faiblement dosé en azote pourra être ajouté. N’oubliez pas de les hiverner dès l’automne à l’abri de l’humidité et stopper tous les arrosages.', 'stapelia_grandiflora.png', 'normal', 30, 'lumineuse, éviter le soleil brûlant de midi', 'printemps', 'été, automne'),
(22, 'Sansevieria cylindrica', 'Sansevieria cylindrica, la sansevière ou sansevieria à feuilles cylindriques, est une plante succulente appartenant à la famille des Asparagacées. Les sansevierias sont proches des agaves et yuccas, mais alors que ceux-ci sont américains, le genre Sanseveria qui regroupe environ 70 espèces, est africain ou asiatique. La sansevieria à feuilles cylindriques nous vient d’Afrique tropicale. Plante rare, il y a encore 20 ans, elle est devenue un classique des jardineries. Insolite, graphique, très décorative, Sansevieria cylindrica est de plus une plante d’intérieur facile à vivre et de longue durée.', 'sansevieria_cylindrica.png', 'normal', 26, 'lumineux', 'printemps, été', 'été'),
(23, 'Euphorbia tirucalli', 'Euphorbia tirucalli est une plante succulente arbustive de la famille des Euphorbiacées. Originaire d’Afrique australe, Euphorbia tirucalli est aujourd’hui largement distribuée dans de nombreuses régions tropicales et subtropicales. Elle est couramment cultivée.\r\n\r\nEn France, cette euphorbe est une plante succulente qui peut devenir grande, comme un petit arbre, mais considérée comme non rustique, sauf peut-être dans les régions méditerranéennes sans gelées hivernales. Euphorbia tirucalli sera maintenue à l’intérieur, en véranda ou en serre, ou dans un endroit très lumineux, voire sortie au soleil en été et rentrée pour hiver.', 'euphorbia_tirucalli.png', 'sec', 9, 'lumineuse', 'avril à juillet', 'été'),
(24, 'Yucca decipiens', 'nothing', 'yucca_decipiens.png', 'normal', 18, 'ensoleillée', 'printemps', 'printemps, été'),
(25, 'Sedum monregalense', 'Sedum monregalense, l’orpin de Montereale est une petite plante vivace et succulente de la famille des Crassulacées. Sedum monregalense se retrouve également sous le nom de Sedum cruciatum, le sedum à feuilles en croix. Cette petite plante subalpine est d’origine européenne, très peu distribuée en région Provence Alpes côtes d’Azur et Corse, où elle bénéficie d’un statut de protection, et en Italie, près de la ville de Montereale.\r\n\r\nL’orpin de Montereale croît sur les pentes caillouteuses, dans les éboulis ou dans les fissures sur le versant ombragé des montagnes. Cette plante alpine est aussi utilisée en plante de rocaille, formant un dense coussinet de feuilles.', 'sedum_monregalense.png', 'très sec', 10, 'mi-ombre à ombre légère', 'avril à septembre', 'juin à août'),
(27, 'Sansevieria trifasciata', 'La Sansevière (Sansevierie trisfasciata) est une plante grasse acaule et rhizomateuse faisant partie de la famille des Dracaenacées. Elle pousse à l\'état sauvage dans les sols rocailleux d\'Afrique tropicale et subtropicale, de Madagascar, d\'Inde et d\'Indonésie. Elle est cultivée pour ses longues feuilles linéaires et charnues, dressées et verticales. Les feuilles, vertes foncées, sont marginées de jaune et marbrées de vert plus clair. Très graphique la plante peut aussi bien trouver sa place dans un intérieur contemporain que dans un logement plus classique. Très résistante, elle est à conseiller à tous les débutants.\r\n\r\nLa floraison chez les Sansevierias apparaît après une petite dizaine d\'année de culture dans de bonnes conditions. Une inflorescence composée de plusieurs centaines de petites fleurs vertes ou blanches apparaît. Après la floraison, la plante produit de petites baies jaunes qui donneront des graines.', 'sansevieria_trifasciata.png', 'normal', 23, 'lumineux', 'printemps', 'printemps, été'),
(28, 'Kalanchoe daigremontiana', 'Kalanchoe daigremontiana, la plante grasse mère de famille, ou kalanchoé de Daigremont est une plante appartenant à la famille des Crassulacées. Il est originaire de Madagascar, croissant sur les pentes de gneiss et grés, en terre aride. Son aptitude naturelle à la multiplication végétative a transformé le kalanchoé de Daigremont en plante invasive dans plusieurs régions tropicales. Sa distribution est élargie à de nombreuses zones climatiques non gélives. Néanmoins, le kalanchoé mère de famille est la plante grasse par excellence pour les débutants : jolie, facile à cultiver, et un plaisir à multiplier.', 'kalanchoe_daigremontiana.png', 'sec', 13, 'ensoleillé', 'printemps jusque fin août', 'hiver, printemps'),
(29, 'Jovibarba hirta', 'La joubarbe hérissée, Jovibarba hirta est une plante succulente très rustique de la famille de crassulacées. Cette plante de rocaille se développe naturellement dans les fissures des rochers en moyenne et hautes montagnes. Cette charmante petite plante est parfois surnommée artichaut, la joubarbe ressemble effectivement à une rosette d’artichaut très aplatie. C’est une plante alpine facile de culture et très satisfaisante cultivée sur un mur, dans des potées ou auges, ou encore installée en rocaille bien ensoleillée.', 'jovibarba_hirta.png', 'sec', 20, 'ensoleillée à mi-ombre', 'printemps', 'juin à septembre'),
(30, 'Haworthia attenuata', 'L\'haworthie à bande ou Haworthia attenuata fait partie d\'un genre comprenant plus de 150 espèces de petites plantes vivaces produisant de nombreux rejets. C\'est une des plantes succulentes que l\'on trouve le plus couramment en jardineries. De culture très facile, elle est idéale pour débuter une collection.\r\n\r\nHaworthia attenuata présente des feuilles triangulaires vert foncé de 3 à 8 cm de longueur, étroites, agrémentées sur le dessus d\'une ligne médiane de taches blanches, et de bandes transversales  blanches en reliefs au revers.\r\n\r\nEn été, apparaissent des tiges de 30 cm de long portant des fleurs tubulées blanches légèrement marquées de brun clair ou de vert réunies en grappes.', 'photo.jpg', 'sec', 26, 'umineuse, pas de soleil direct, mi-ombre ', 'printemps', 'printemps'),
(31, 'Delosperma lineare', 'Delosperma lineare est une plante grasse originaire d’Afrique du sud. Cette succulente, de la famille des Aizoacées, poussent dans les rochers des régions montagneuses : cette sud-africaine est donc relativement rustique en France et peut être considérée et cultivée comme une plante alpine.\r\n\r\nIl y a cependant dans le genre Delosperma, beaucoup de confusion d’espèces, d’une part parce que les espèces découvertes sont mal décrites et d’autre part, parce que des hybrides, variétés ou même appellations horticoles viennent encore compliquer la distinctions entre ces espèces.\r\nDelosperma lineare est fréquemment confondu par exemple avec le Delosperma nubigerum. Le ficoïde vivace jaune est souvent proposé à la vente : florifère, il est facile de culture en potée, rocaille alpine ou auge.', 'photo.jpg', 'très sec', 9, 'ensoleillée', 'printemps, été', 'juin juillet'),
(32, 'Euphorbia gatbergensis', 'nothing', 'photo.jpg', 'sec', 17, 'ensoleillée, mi-ombre', 'printemps, été', 'juillet, août'),
(33, 'Euphorbia lactea', 'Euphorbia lactea, appelée parfois os de dragon ou euphorbe lactée, est une plante succulente cactiforme en forme de candélabre appartenant à la famille des Euphorbiacées. Couramment cultivée dans toutes les régions tropicales, Euphorbia lactea est originaire d’Asie, probablement plus précisément d’Indes. Elle est très couramment cultivée en Europe sous forme de plante d’appartement : de hauts candélabres qui acceptent un intérieur clair, mais aussi sous sa remarquable forme cristée, Euphorbia lactea ‘Cristata’, beaucoup plus compacte.', 'photo.jpg', 'normal', 25, 'ensoleillée à mi-ombre', 'printemps, été', 'été'),
(34, 'Beaucarnea recurvata', 'Originaire des zones semi-désertiques du sud du Mexique, le beaucarnéa doit ses noms communs à l\'allure particulière de son tronc, en forme de pied d\'éléphant ou de bouteille et son nom latin à son feuillage recourbé (recurvata). Dans son pays d\'origine, c\'est un arbre qui peut atteindre les 10 m. Son port est dressé. Sa large base renferme une réserve d\'eau, pour faire face à des périodes de sécheresses prolongées. Avec le temps, l\'écorce devient grise et se fissure. Au sommet du tronc, une touffe épaisse de feuilles vert foncé, longues (plus de 1m) et minces, retombe.\r\n\r\nLes fleurs du beaucarnéa sont petites, de couleur blanche et apparaissent en quantités en formant des panicules deux à trois fois dans l\'année. Mais vous n\'aurez  probablement pas l\'occasion de les admirer ; elles n\'éclosent que rarement sur des sujets cultivés en pots et toujours sur des arbres de plus de 25 ans.', 'photo.jpg', 'normal', 20, 'soleil, lumière forte en appartement ', 'printemps', 'été');

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

--
-- Contenu de la table `plante_utilisateur`
--

INSERT INTO `plante_utilisateur` (`plante_id`, `plante_nom`, `fk_plante_id`, `fk_utilisateur_id`) VALUES
(2, 'Mon essaie', 7, 2);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
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
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`utilisateur_id`, `utilisateur_nom`, `utilisateur_prenom`, `utilisateur_email`, `utilisateur_login`, `utilisateur_password`) VALUES
(1, 'admin', 'root', '', 'admin', 'root'),
(2, 'Lucas', 'Usereau', 'lucas.test@test.com', 'test', 'test');

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
  MODIFY `donnee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `plante`
--
ALTER TABLE `plante`
  MODIFY `plante_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT pour la table `plante_utilisateur`
--
ALTER TABLE `plante_utilisateur`
  MODIFY `plante_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `utilisateur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
