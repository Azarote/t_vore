-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 26 mai 2019 à 15:39
-- Version du serveur :  10.1.28-MariaDB
-- Version de PHP :  5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tvore`
--

-- --------------------------------------------------------

--
-- Structure de la table `avoir`
--

CREATE TABLE `avoir` (
  `IdAvoir` int(11) NOT NULL DEFAULT '0',
  `NumTaille` int(11) NOT NULL DEFAULT '0',
  `Numcouleur` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `IdClient` int(11) NOT NULL,
  `NomClient` varchar(255) DEFAULT NULL,
  `PrenomClient` varchar(255) DEFAULT NULL,
  `adresseclient` varchar(255) DEFAULT NULL,
  `CpClient` int(11) DEFAULT '0',
  `Villeclient` varchar(255) DEFAULT NULL,
  `TelClient` int(11) DEFAULT '0',
  `MailClient` varchar(255) DEFAULT NULL,
  `MdpClient` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `IdClient` int(11) NOT NULL DEFAULT '0',
  `IdTshirt` int(11) NOT NULL DEFAULT '0',
  `DateHeure` datetime NOT NULL,
  `NombreAchat` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `couleur`
--

CREATE TABLE `couleur` (
  `numCouleur` int(11) NOT NULL,
  `libellecouleur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `couleur`
--

INSERT INTO `couleur` (`numCouleur`, `libellecouleur`) VALUES
(0, ''),
(2, 'Blanc'),
(5, 'Bleu'),
(10, 'Cyan'),
(3, 'Gris'),
(7, 'Jaune'),
(8, 'Kaki'),
(9, 'Marron'),
(1, 'Noir'),
(4, 'Rouge'),
(6, 'Vert'),
(11, 'Violet');

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE `photo` (
  `numPhoto` int(11) NOT NULL,
  `numTshirt` int(11) NOT NULL,
  `numCouleur` int(11) NOT NULL,
  `cheminImage` varchar(100) NOT NULL,
  `parDefaut` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `photo`
--

INSERT INTO `photo` (`numPhoto`, `numTshirt`, `numCouleur`, `cheminImage`, `parDefaut`) VALUES
(1, 1, 3, 'devGris/devGris.jpg', 1),
(2, 1, 3, 'devGris/devGris2.jpg', 0),
(3, 1, 1, 'devNoir/devNoir.jpg', 0),
(4, 1, 1, 'devNoir/devNoir2.jpg', 0),
(5, 1, 9, 'devMar/devMar.jpg', 0),
(6, 1, 9, 'devMar/devMar2.jpg', 0),
(7, 9, 5, 'bombBleu/bombBleu.jpg', 0),
(8, 9, 5, 'bombBleu/bombBleu2.jpg', 0),
(9, 9, 8, 'bombKaki/bombKaki.jpg', 0),
(10, 9, 8, 'bombKaki/bombKaki2.jpg', 1),
(11, 15, 2, 'canBlanc/canBlanc.jpg', 0),
(12, 15, 2, 'canBlanc/canBlanc2.jpg', 0),
(13, 15, 3, 'canGris/canGris.jpg', 0),
(14, 15, 3, 'canGris/canGris2.jpg', 0),
(15, 15, 4, 'canRouge/canRouge.jpg', 1),
(16, 15, 4, 'canRouge/canRouge2.jpg', 0),
(17, 17, 2, 'chauveBlanc/chauveBlanc.jpg', 1),
(18, 17, 2, 'chauveBlanc/chauveBlanc2.jpg', 0),
(19, 19, 3, 'corGris/corGris.jpg', 1),
(20, 19, 3, 'corGris/corGris2.jpg', 0),
(21, 19, 4, 'corRouge/corRouge.jpg', 0),
(22, 19, 4, 'corRouge/corRouge2.jpg', 0),
(23, 27, 5, 'craneBleu/craneBleu.jpg', 0),
(24, 27, 5, 'craneBleu/craneBleu2.jpg', 0),
(25, 27, 1, 'craneNoir/craneNoir.jpg', 0),
(26, 27, 1, 'craneNoir/craneNoir2.jpg', 0),
(27, 27, 6, 'craneVert/craneVert.jpg', 1),
(28, 27, 6, 'craneVert/craneVert2.jpg', 0),
(29, 29, 5, 'docteurBleu/docteurBleu.jpg', 0),
(30, 29, 5, 'docteurBleu/docteurBleu2.jpg', 1),
(31, 29, 3, 'docteurGris/docteurGris.jpg', 0),
(32, 29, 3, 'docteurGris/docteurGris2.jpg', 0),
(33, 29, 6, 'docteurVert/docteurVert.jpg', 0),
(34, 29, 6, 'docteurVert/docteurVert2.jpg', 0),
(35, 35, 9, 'donutMar/donutMar.jpg', 0),
(36, 35, 9, 'donutMar/donutMar2.jpg', 1),
(37, 35, 4, 'donutRouge/donutRouge.jpg', 0),
(38, 35, 4, 'donutRouge/donutRouge2.jpg', 0),
(39, 41, 3, 'dragonGris/dragonGris.jpg', 0),
(40, 41, 3, 'dragonGris/dragonGris2.jpg', 0),
(41, 41, 1, 'dragonNoir/dragonNoir.jpg', 1),
(42, 41, 1, 'dragonNoir/dragonNoir2.jpg', 0),
(43, 43, 5, 'feedBleu/feedBleu.jpg', 1),
(44, 43, 5, 'feedBleu/feedBleu2.jpg', 0),
(45, 43, 2, 'feedBlanc/feedBlanc.jpg', 0),
(46, 43, 2, 'feedBlanc/feedBlanc2.jpg', 0),
(47, 49, 5, 'friendsBleu/friendsBleu.jpg', 0),
(48, 49, 5, 'friendsBleu/friendsBleu2.jpg', 0),
(49, 49, 3, 'friendsGris/friendsGris.jpg', 0),
(50, 49, 3, 'friendsGris/friendsGris2.jpg', 1),
(51, 51, 11, 'hipViolet/hipViolet.jpg', 1),
(52, 51, 11, 'hipViolet/hipViolet2.jpg', 0),
(53, 51, 2, 'hipBlanc/hipBlanc.jpg', 0),
(54, 51, 2, 'hipBlanc/hipBlanc2.jpg', 0),
(55, 51, 1, 'hipNoir/hipNoir.jpg', 0),
(56, 51, 1, 'hipNoir/hipNoir2.jpg', 0),
(57, 59, 1, 'jokerNoir/jokerNoir.jpg', 0),
(58, 59, 1, 'jokerNoir/jokerNoir2.jpg', 0),
(59, 59, 6, 'jokerVert/jokerVert.jpg', 1),
(60, 59, 6, 'jokerVert/jokerVert2.jpg', 0),
(61, 61, 2, 'licorneBlanc/licorneBlanc.jpg', 0),
(62, 61, 2, 'licorneBlanc/licorneBlanc2.jpg', 1),
(63, 61, 4, 'licorneRouge/licorneRouge.jpg', 0),
(64, 61, 4, 'licorneRouge/licorneRouge2.jpg', 0),
(65, 61, 6, 'licorneVert/licorneVert.jpg', 0),
(66, 61, 6, 'licorneVert/licorneVert2.jpg', 0),
(67, 69, 2, 'linkBlanc/linkBlanc.jpg', 0),
(68, 69, 2, 'linkBlanc/linkBlanc2.jpg', 0),
(69, 69, 5, 'linkBleu/linkBleu.jpg', 1),
(70, 69, 5, 'linkBleu/linkBleu2.jpg', 0),
(71, 71, 2, 'lotrBlanc/lotrBlanc.jpg', 1),
(72, 71, 2, 'lotrBlanc/lotrBlanc2.jpg', 0),
(73, 71, 6, 'lotrVert/lotrVert.jpg', 0),
(74, 71, 6, 'lotrVert/lotrVert2.jpg', 0),
(75, 79, 5, 'majoBleu/majoBleu.jpg', 0),
(76, 79, 5, 'majoBleu/majoBleu2.jpg', 0),
(77, 79, 3, 'majoGris/majoGris.jpg', 0),
(78, 79, 3, 'majoGris/majoGris2.jpg', 0),
(79, 79, 8, 'majoKaki/majoKaki.jpg', 1),
(80, 79, 8, 'majoKaki/majoKaki2.jpg', 0),
(81, 81, 5, 'mees/mees.jpg', 0),
(82, 81, 5, 'mees/mees2.jpg', 1),
(83, 85, 3, 'mortGris/mortGris.jpg', 0),
(84, 85, 3, 'mortGris/mortGris2.jpg', 0),
(85, 85, 4, 'mortRouge/mortRouge.jpg', 1),
(86, 85, 4, 'mortRouge/mortRouge2.jpg', 0),
(87, 85, 11, 'mortViolet/mortViolet.jpg', 0),
(88, 85, 11, 'mortViolet/mortViolet2.jpg', 0),
(89, 89, 2, 'nerdBlanc/nerdBlanc.jpg', 1),
(90, 89, 2, 'nerdBlanc/nerdBlanc2.jpg', 0),
(91, 89, 5, 'nerdBleu/nerdBleu.jpg', 0),
(92, 89, 5, 'nerdBleu/nerdBleu2.jpg', 0),
(93, 93, 5, 'patroBleu/patroBleu.jpg', 1),
(94, 93, 5, 'patroBleu/patroBleu2.jpg', 0),
(95, 93, 10, 'patroCyan/patroCyan.jpg', 0),
(96, 93, 10, 'patroCyan/patroCyan2.jpg', 0),
(97, 93, 1, 'patroNoir/patroNoir.jpg', 0),
(98, 93, 1, 'patroNoir/patroNoir2.jpg', 0),
(99, 103, 5, 'relBleu/relBleu.jpg', 0),
(100, 103, 5, 'relBleu/relBleu2.jpg', 0),
(101, 103, 3, 'relGris/relGris.jpg', 0),
(102, 103, 3, 'relGris/relGris2.jpg', 0),
(103, 103, 1, 'relNoir/relNoir.jpg', 1),
(104, 103, 1, 'relNoir/relNoir2.jpg', 0),
(105, 105, 2, 'singeBlanc/singeBlanc.jpg', 1),
(106, 105, 2, 'singeBlanc/singeBlanc2.jpg', 0),
(107, 111, 5, 'surfBleu/surfBleu.jpg', 0),
(108, 111, 5, 'surfBleu/surfBleu2.jpg', 0),
(109, 111, 3, 'surfGris/surfGris.jpg', 0),
(110, 111, 3, 'surfGris/surfGris2.jpg', 0),
(111, 111, 1, 'surfNoir/surfNoir.jpg', 1),
(112, 111, 1, 'surfNoir/surfNoir2.jpg', 0),
(113, 117, 3, 'wasntGris/wasntGris.jpg', 0),
(114, 117, 3, 'wasntGris/wasntGris2.jpg', 0),
(115, 117, 4, 'wasntRouge/wasntRouge.jpg', 0),
(116, 117, 4, 'wasntRouge/wasntRouge2.jpg', 0),
(117, 117, 11, 'wasntViolet/wasntViolet.jpg', 1),
(118, 117, 11, 'wasntViolet/wasntViolet2.jpg', 0),
(119, 119, 5, 'wonderBleu/wonderBleu.jpg', 0),
(120, 119, 5, 'wonderBleu/wonderBleu2.jpg', 1),
(121, 119, 3, 'wonderGris/wonderGris.jpg', 0),
(122, 119, 3, 'wonderGris/wonderGris2.jpg', 0),
(123, 123, 2, 'zombieBlanc/zombieBlanc.jpg', 1),
(124, 123, 2, 'zombieBlanc/zombieBlanc2.jpg', 0),
(125, 123, 1, 'zombieNoir/zombieNoir.jpg', 0),
(126, 123, 1, 'zombieNoir/zombieNoir2.jpg', 0),
(127, 123, 4, 'zombieRouge/zombieRouge.jpg', 0),
(128, 123, 4, 'zombieRouge/zombieRouge2.jpg', 0),
(129, 130, 0, 'goodies/bonet.jpg', 1),
(259, 131, 0, 'goodies/coussin.jpg', 1),
(260, 132, 0, 'goodies/mug.jpg', 1),
(261, 133, 0, 'goodies/parapluie.jpg', 1),
(262, 134, 0, 'goodies/sac.jpg', 1),
(263, 135, 0, 'goodies/sacSport.jpg', 1),
(264, 136, 0, 'goodies/sacTotoro.jpg', 1),
(265, 137, 0, 'goodies/tapis.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `reftshirt`
--

CREATE TABLE `reftshirt` (
  `numRef` int(11) NOT NULL,
  `numTshirt` int(11) NOT NULL,
  `numCouleur` int(11) NOT NULL,
  `numTaille` int(11) NOT NULL,
  `parDefaut` tinyint(1) NOT NULL DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '20'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reftshirt`
--

INSERT INTO `reftshirt` (`numRef`, `numTshirt`, `numCouleur`, `numTaille`, `parDefaut`, `stock`) VALUES
(1, 1, 3, 3, 0, 26),
(2, 1, 1, 3, 0, 24),
(3, 1, 9, 3, 0, 11),
(4, 9, 5, 3, 0, 29),
(5, 9, 8, 3, 0, 8),
(6, 15, 2, 3, 0, 21),
(7, 15, 3, 3, 0, 28),
(8, 15, 4, 3, 0, 21),
(9, 17, 2, 3, 0, 16),
(10, 19, 3, 3, 0, 15),
(11, 19, 4, 3, 0, 20),
(12, 27, 5, 3, 0, 26),
(13, 27, 1, 3, 0, 14),
(14, 27, 6, 3, 0, 13),
(15, 29, 5, 3, 0, 19),
(16, 29, 3, 3, 0, 28),
(17, 29, 6, 3, 0, 28),
(18, 35, 9, 3, 0, 26),
(19, 35, 4, 3, 0, 18),
(20, 41, 3, 3, 0, 6),
(21, 41, 1, 3, 0, 20),
(22, 43, 5, 3, 0, 29),
(23, 43, 2, 3, 0, 29),
(24, 49, 5, 3, 0, 28),
(25, 49, 3, 3, 0, 25),
(26, 51, 11, 3, 0, 12),
(27, 51, 2, 3, 0, 6),
(28, 51, 1, 3, 0, 13),
(29, 59, 1, 3, 0, 17),
(30, 59, 6, 3, 0, 19),
(31, 61, 2, 3, 0, 12),
(32, 61, 4, 3, 0, 23),
(33, 61, 6, 3, 0, 27),
(34, 69, 2, 3, 0, 9),
(35, 69, 5, 3, 0, 12),
(36, 71, 2, 3, 0, 28),
(37, 71, 6, 3, 0, 24),
(38, 79, 5, 3, 0, 5),
(39, 79, 3, 3, 0, 24),
(40, 79, 8, 3, 0, 27),
(41, 81, 5, 3, 0, 7),
(42, 85, 3, 3, 0, 23),
(43, 85, 4, 3, 0, 15),
(44, 85, 11, 3, 0, 29),
(45, 89, 2, 3, 0, 18),
(46, 89, 5, 3, 0, 26),
(47, 93, 5, 3, 0, 22),
(48, 93, 10, 3, 0, 25),
(49, 93, 1, 3, 0, 29),
(50, 103, 5, 3, 0, 19),
(51, 103, 3, 3, 0, 25),
(52, 103, 1, 3, 0, 15),
(53, 105, 2, 3, 0, 22),
(54, 111, 5, 3, 0, 9),
(55, 111, 3, 3, 0, 26),
(57, 111, 1, 3, 0, 23),
(58, 117, 3, 3, 0, 6),
(59, 117, 4, 3, 0, 9),
(60, 117, 11, 3, 0, 23),
(61, 119, 5, 3, 0, 9),
(62, 119, 3, 3, 0, 22),
(63, 123, 2, 3, 0, 28),
(64, 123, 1, 3, 0, 21),
(65, 123, 4, 3, 0, 14),
(585, 1, 3, 1, 0, 27),
(586, 1, 3, 2, 1, 24),
(587, 1, 3, 4, 0, 9),
(588, 1, 3, 5, 0, 16),
(589, 1, 3, 6, 0, 27),
(590, 1, 3, 7, 0, 6),
(591, 1, 3, 8, 0, 21),
(592, 1, 1, 1, 0, 6),
(593, 1, 1, 2, 0, 13),
(594, 1, 1, 4, 0, 16),
(595, 1, 1, 5, 0, 12),
(596, 1, 1, 6, 0, 10),
(597, 1, 1, 7, 0, 7),
(598, 1, 1, 8, 0, 26),
(599, 1, 9, 1, 0, 29),
(600, 1, 9, 2, 0, 11),
(601, 1, 9, 4, 0, 16),
(602, 1, 9, 5, 0, 18),
(603, 1, 9, 6, 0, 11),
(604, 1, 9, 7, 0, 22),
(605, 1, 9, 8, 0, 24),
(606, 9, 5, 1, 0, 24),
(607, 9, 5, 2, 0, 17),
(608, 9, 5, 4, 0, 8),
(609, 9, 5, 5, 0, 10),
(610, 9, 5, 6, 0, 20),
(611, 9, 5, 7, 0, 16),
(612, 9, 5, 8, 0, 14),
(613, 9, 8, 1, 0, 21),
(614, 9, 8, 2, 1, 6),
(615, 9, 8, 4, 0, 11),
(616, 9, 8, 5, 0, 11),
(617, 9, 8, 6, 0, 17),
(618, 9, 8, 7, 0, 20),
(619, 9, 8, 8, 0, 20),
(620, 15, 2, 1, 0, 13),
(621, 15, 2, 2, 0, 24),
(622, 15, 2, 4, 0, 26),
(623, 15, 2, 5, 0, 27),
(624, 15, 2, 6, 0, 29),
(625, 15, 2, 7, 0, 11),
(626, 15, 2, 8, 0, 12),
(627, 15, 3, 1, 0, 24),
(628, 15, 3, 2, 0, 5),
(629, 15, 3, 4, 0, 21),
(630, 15, 3, 5, 0, 11),
(631, 15, 3, 6, 0, 11),
(632, 15, 3, 7, 0, 18),
(633, 15, 3, 8, 0, 29),
(634, 15, 4, 1, 0, 10),
(635, 15, 4, 2, 1, 9),
(636, 15, 4, 4, 0, 10),
(637, 15, 4, 5, 0, 19),
(638, 15, 4, 6, 0, 9),
(639, 15, 4, 7, 0, 10),
(640, 15, 4, 8, 0, 16),
(641, 17, 2, 1, 0, 22),
(642, 17, 2, 2, 1, 9),
(643, 17, 2, 4, 0, 23),
(644, 17, 2, 5, 0, 8),
(645, 17, 2, 6, 0, 15),
(646, 17, 2, 7, 0, 24),
(647, 17, 2, 8, 0, 20),
(648, 19, 3, 1, 0, 23),
(649, 19, 3, 2, 1, 26),
(650, 19, 3, 4, 0, 7),
(651, 19, 3, 5, 0, 25),
(652, 19, 3, 6, 0, 26),
(653, 19, 3, 7, 0, 25),
(654, 19, 3, 8, 0, 18),
(655, 19, 4, 1, 0, 12),
(656, 19, 4, 2, 0, 27),
(657, 19, 4, 4, 0, 17),
(658, 19, 4, 5, 0, 24),
(659, 19, 4, 6, 0, 13),
(660, 19, 4, 7, 0, 17),
(661, 19, 4, 8, 0, 16),
(662, 27, 5, 1, 0, 25),
(663, 27, 5, 2, 0, 23),
(664, 27, 5, 4, 0, 12),
(665, 27, 5, 5, 0, 8),
(666, 27, 5, 6, 0, 28),
(667, 27, 5, 7, 0, 9),
(668, 27, 5, 8, 0, 9),
(669, 27, 1, 1, 0, 13),
(670, 27, 1, 2, 0, 7),
(671, 27, 1, 4, 0, 17),
(672, 27, 1, 5, 0, 11),
(673, 27, 1, 6, 0, 22),
(674, 27, 1, 7, 0, 25),
(675, 27, 1, 8, 0, 29),
(676, 27, 6, 1, 0, 13),
(677, 27, 6, 2, 1, 27),
(678, 27, 6, 4, 0, 15),
(679, 27, 6, 5, 0, 15),
(680, 27, 6, 6, 0, 23),
(681, 27, 6, 7, 0, 18),
(682, 27, 6, 8, 0, 14),
(683, 29, 5, 1, 0, 15),
(684, 29, 5, 2, 1, 25),
(685, 29, 5, 4, 0, 29),
(686, 29, 5, 5, 0, 13),
(687, 29, 5, 6, 0, 23),
(688, 29, 5, 7, 0, 21),
(689, 29, 5, 8, 0, 9),
(690, 29, 3, 1, 0, 25),
(691, 29, 3, 2, 0, 22),
(692, 29, 3, 4, 0, 27),
(693, 29, 3, 5, 0, 15),
(694, 29, 3, 6, 0, 17),
(695, 29, 3, 7, 0, 8),
(696, 29, 3, 8, 0, 10),
(697, 29, 6, 1, 0, 22),
(698, 29, 6, 2, 0, 24),
(699, 29, 6, 4, 0, 24),
(700, 29, 6, 5, 0, 18),
(701, 29, 6, 6, 0, 13),
(702, 29, 6, 7, 0, 7),
(703, 29, 6, 8, 0, 16),
(704, 35, 9, 1, 0, 6),
(705, 35, 9, 2, 1, 26),
(706, 35, 9, 4, 0, 7),
(707, 35, 9, 5, 0, 27),
(708, 35, 9, 6, 0, 10),
(709, 35, 9, 7, 0, 14),
(710, 35, 9, 8, 0, 9),
(711, 35, 4, 1, 0, 25),
(712, 35, 4, 2, 0, 17),
(713, 35, 4, 4, 0, 9),
(714, 35, 4, 5, 0, 11),
(715, 35, 4, 6, 0, 25),
(716, 35, 4, 7, 0, 14),
(717, 35, 4, 8, 0, 15),
(718, 41, 3, 1, 0, 29),
(719, 41, 3, 2, 0, 20),
(720, 41, 3, 4, 0, 8),
(721, 41, 3, 5, 0, 24),
(722, 41, 3, 6, 0, 19),
(723, 41, 3, 7, 0, 16),
(724, 41, 3, 8, 0, 19),
(725, 41, 1, 1, 0, 17),
(726, 41, 1, 2, 1, 22),
(727, 41, 1, 4, 0, 8),
(728, 41, 1, 5, 0, 17),
(729, 41, 1, 6, 0, 8),
(730, 41, 1, 7, 0, 8),
(731, 41, 1, 8, 0, 14),
(732, 43, 5, 1, 0, 15),
(733, 43, 5, 2, 1, 27),
(734, 43, 5, 4, 0, 14),
(735, 43, 5, 5, 0, 6),
(736, 43, 5, 6, 0, 12),
(737, 43, 5, 7, 0, 10),
(738, 43, 5, 8, 0, 10),
(739, 43, 2, 1, 0, 17),
(740, 43, 2, 2, 0, 24),
(741, 43, 2, 4, 0, 16),
(742, 43, 2, 5, 0, 26),
(743, 43, 2, 6, 0, 6),
(744, 43, 2, 7, 0, 20),
(745, 43, 2, 8, 0, 26),
(746, 49, 5, 1, 0, 19),
(747, 49, 5, 2, 0, 11),
(748, 49, 5, 4, 0, 20),
(749, 49, 5, 5, 0, 10),
(750, 49, 5, 6, 0, 10),
(751, 49, 5, 7, 0, 18),
(752, 49, 5, 8, 0, 29),
(753, 49, 3, 1, 0, 13),
(754, 49, 3, 2, 1, 23),
(755, 49, 3, 4, 0, 20),
(756, 49, 3, 5, 0, 29),
(757, 49, 3, 6, 0, 6),
(758, 49, 3, 7, 0, 13),
(759, 49, 3, 8, 0, 17),
(760, 51, 11, 1, 0, 16),
(761, 51, 11, 2, 1, 24),
(762, 51, 11, 4, 0, 20),
(763, 51, 11, 5, 0, 21),
(764, 51, 11, 6, 0, 15),
(765, 51, 11, 7, 0, 10),
(766, 51, 11, 8, 0, 23),
(767, 51, 2, 1, 0, 29),
(768, 51, 2, 2, 0, 25),
(769, 51, 2, 4, 0, 8),
(770, 51, 2, 5, 0, 11),
(771, 51, 2, 6, 0, 24),
(772, 51, 2, 7, 0, 8),
(773, 51, 2, 8, 0, 15),
(774, 51, 1, 1, 0, 19),
(775, 51, 1, 2, 0, 21),
(776, 51, 1, 4, 0, 20),
(777, 51, 1, 5, 0, 8),
(778, 51, 1, 6, 0, 23),
(779, 51, 1, 7, 0, 14),
(780, 51, 1, 8, 0, 22),
(781, 59, 1, 1, 0, 12),
(782, 59, 1, 2, 0, 15),
(783, 59, 1, 4, 0, 11),
(784, 59, 1, 5, 0, 27),
(785, 59, 1, 6, 0, 26),
(786, 59, 1, 7, 0, 18),
(787, 59, 1, 8, 0, 9),
(788, 59, 6, 1, 0, 12),
(789, 59, 6, 2, 1, 27),
(790, 59, 6, 4, 0, 20),
(791, 59, 6, 5, 0, 15),
(792, 59, 6, 6, 0, 11),
(793, 59, 6, 7, 0, 5),
(794, 59, 6, 8, 0, 12),
(795, 61, 2, 1, 0, 14),
(796, 61, 2, 2, 1, 6),
(797, 61, 2, 4, 0, 10),
(798, 61, 2, 5, 0, 26),
(799, 61, 2, 6, 0, 22),
(800, 61, 2, 7, 0, 28),
(801, 61, 2, 8, 0, 17),
(802, 61, 4, 1, 0, 21),
(803, 61, 4, 2, 0, 26),
(804, 61, 4, 4, 0, 14),
(805, 61, 4, 5, 0, 12),
(806, 61, 4, 6, 0, 15),
(807, 61, 4, 7, 0, 7),
(808, 61, 4, 8, 0, 13),
(809, 61, 6, 1, 0, 14),
(810, 61, 6, 2, 0, 24),
(811, 61, 6, 4, 0, 27),
(812, 61, 6, 5, 0, 6),
(813, 61, 6, 6, 0, 19),
(814, 61, 6, 7, 0, 23),
(815, 61, 6, 8, 0, 29),
(816, 69, 2, 1, 0, 23),
(817, 69, 2, 2, 0, 21),
(818, 69, 2, 4, 0, 7),
(819, 69, 2, 5, 0, 17),
(820, 69, 2, 6, 0, 9),
(821, 69, 2, 7, 0, 16),
(822, 69, 2, 8, 0, 23),
(823, 69, 5, 1, 0, 13),
(824, 69, 5, 2, 1, 16),
(825, 69, 5, 4, 0, 11),
(826, 69, 5, 5, 0, 28),
(827, 69, 5, 6, 0, 27),
(828, 69, 5, 7, 0, 21),
(829, 69, 5, 8, 0, 21),
(830, 71, 2, 1, 0, 13),
(831, 71, 2, 2, 1, 23),
(832, 71, 2, 4, 0, 20),
(833, 71, 2, 5, 0, 25),
(834, 71, 2, 6, 0, 11),
(835, 71, 2, 7, 0, 27),
(836, 71, 2, 8, 0, 24),
(837, 71, 6, 1, 0, 6),
(838, 71, 6, 2, 0, 6),
(839, 71, 6, 4, 0, 8),
(840, 71, 6, 5, 0, 18),
(841, 71, 6, 6, 0, 12),
(842, 71, 6, 7, 0, 25),
(843, 71, 6, 8, 0, 8),
(844, 79, 5, 1, 0, 12),
(845, 79, 5, 2, 0, 7),
(846, 79, 5, 4, 0, 19),
(847, 79, 5, 5, 0, 18),
(848, 79, 5, 6, 0, 6),
(849, 79, 5, 7, 0, 21),
(850, 79, 5, 8, 0, 7),
(851, 79, 3, 1, 0, 16),
(852, 79, 3, 2, 0, 7),
(853, 79, 3, 4, 0, 6),
(854, 79, 3, 5, 0, 28),
(855, 79, 3, 6, 0, 18),
(856, 79, 3, 7, 0, 27),
(857, 79, 3, 8, 0, 26),
(858, 79, 8, 1, 0, 20),
(859, 79, 8, 2, 1, 17),
(860, 79, 8, 4, 0, 19),
(861, 79, 8, 5, 0, 17),
(862, 79, 8, 6, 0, 23),
(863, 79, 8, 7, 0, 11),
(864, 79, 8, 8, 0, 6),
(865, 81, 5, 1, 0, 19),
(866, 81, 5, 2, 1, 21),
(867, 81, 5, 4, 0, 18),
(868, 81, 5, 5, 0, 22),
(869, 81, 5, 6, 0, 27),
(870, 81, 5, 7, 0, 14),
(871, 81, 5, 8, 0, 11),
(872, 85, 3, 1, 0, 6),
(873, 85, 3, 2, 0, 21),
(874, 85, 3, 4, 0, 5),
(875, 85, 3, 5, 0, 7),
(876, 85, 3, 6, 0, 18),
(877, 85, 3, 7, 0, 12),
(878, 85, 3, 8, 0, 28),
(879, 85, 4, 1, 0, 23),
(880, 85, 4, 2, 1, 29),
(881, 85, 4, 4, 0, 20),
(882, 85, 4, 5, 0, 10),
(883, 85, 4, 6, 0, 9),
(884, 85, 4, 7, 0, 11),
(885, 85, 4, 8, 0, 26),
(886, 85, 11, 1, 0, 14),
(887, 85, 11, 2, 0, 13),
(888, 85, 11, 4, 0, 21),
(889, 85, 11, 5, 0, 9),
(890, 85, 11, 6, 0, 5),
(891, 85, 11, 7, 0, 17),
(892, 85, 11, 8, 0, 15),
(893, 89, 2, 1, 0, 19),
(894, 89, 2, 2, 1, 21),
(895, 89, 2, 4, 0, 20),
(896, 89, 2, 5, 0, 7),
(897, 89, 2, 6, 0, 20),
(898, 89, 2, 7, 0, 23),
(899, 89, 2, 8, 0, 27),
(900, 89, 5, 1, 0, 11),
(901, 89, 5, 2, 0, 18),
(902, 89, 5, 4, 0, 6),
(903, 89, 5, 5, 0, 18),
(904, 89, 5, 6, 0, 21),
(905, 89, 5, 7, 0, 19),
(906, 89, 5, 8, 0, 28),
(907, 93, 5, 1, 0, 29),
(908, 93, 5, 2, 1, 7),
(909, 93, 5, 4, 0, 20),
(910, 93, 5, 5, 0, 23),
(911, 93, 5, 6, 0, 25),
(912, 93, 5, 7, 0, 26),
(913, 93, 5, 8, 0, 26),
(914, 93, 10, 1, 0, 21),
(915, 93, 10, 2, 0, 23),
(916, 93, 10, 4, 0, 24),
(917, 93, 10, 5, 0, 20),
(918, 93, 10, 6, 0, 25),
(919, 93, 10, 7, 0, 10),
(920, 93, 10, 8, 0, 22),
(921, 93, 1, 1, 0, 26),
(922, 93, 1, 2, 0, 6),
(923, 93, 1, 4, 0, 26),
(924, 93, 1, 5, 0, 29),
(925, 93, 1, 6, 0, 16),
(926, 93, 1, 7, 0, 12),
(927, 93, 1, 8, 0, 9),
(928, 103, 5, 1, 0, 27),
(929, 103, 5, 2, 0, 28),
(930, 103, 5, 4, 0, 29),
(931, 103, 5, 5, 0, 9),
(932, 103, 5, 6, 0, 26),
(933, 103, 5, 7, 0, 23),
(934, 103, 5, 8, 0, 8),
(935, 103, 3, 1, 0, 15),
(936, 103, 3, 2, 0, 23),
(937, 103, 3, 4, 0, 17),
(938, 103, 3, 5, 0, 9),
(939, 103, 3, 6, 0, 17),
(940, 103, 3, 7, 0, 27),
(941, 103, 3, 8, 0, 29),
(942, 103, 1, 1, 0, 12),
(943, 103, 1, 2, 1, 18),
(944, 103, 1, 4, 0, 22),
(945, 103, 1, 5, 0, 29),
(946, 103, 1, 6, 0, 24),
(947, 103, 1, 7, 0, 28),
(948, 103, 1, 8, 0, 15),
(949, 105, 2, 1, 0, 12),
(950, 105, 2, 2, 1, 9),
(951, 105, 2, 4, 0, 28),
(952, 105, 2, 5, 0, 9),
(953, 105, 2, 6, 0, 6),
(954, 105, 2, 7, 0, 26),
(955, 105, 2, 8, 0, 6),
(956, 111, 5, 1, 0, 23),
(957, 111, 5, 2, 0, 15),
(958, 111, 5, 4, 0, 29),
(959, 111, 5, 5, 0, 20),
(960, 111, 5, 6, 0, 10),
(961, 111, 5, 7, 0, 11),
(962, 111, 5, 8, 0, 17),
(963, 111, 3, 1, 0, 25),
(964, 111, 3, 2, 0, 19),
(965, 111, 3, 4, 0, 17),
(966, 111, 3, 5, 0, 24),
(967, 111, 3, 6, 0, 15),
(968, 111, 3, 7, 0, 21),
(969, 111, 3, 8, 0, 6),
(970, 111, 1, 1, 0, 11),
(971, 111, 1, 2, 1, 11),
(972, 111, 1, 4, 0, 14),
(973, 111, 1, 5, 0, 9),
(974, 111, 1, 6, 0, 24),
(975, 111, 1, 7, 0, 12),
(976, 111, 1, 8, 0, 11),
(977, 117, 3, 1, 0, 13),
(978, 117, 3, 2, 0, 29),
(979, 117, 3, 4, 0, 27),
(980, 117, 3, 5, 0, 18),
(981, 117, 3, 6, 0, 5),
(982, 117, 3, 7, 0, 16),
(983, 117, 3, 8, 0, 11),
(984, 117, 4, 1, 0, 28),
(985, 117, 4, 2, 0, 28),
(986, 117, 4, 4, 0, 24),
(987, 117, 4, 5, 0, 9),
(988, 117, 4, 6, 0, 17),
(989, 117, 4, 7, 0, 28),
(990, 117, 4, 8, 0, 11),
(991, 117, 11, 1, 0, 15),
(992, 117, 11, 2, 1, 14),
(993, 117, 11, 4, 0, 19),
(994, 117, 11, 5, 0, 23),
(995, 117, 11, 6, 0, 6),
(996, 117, 11, 7, 0, 5),
(997, 117, 11, 8, 0, 28),
(998, 119, 5, 1, 0, 22),
(999, 119, 5, 2, 1, 20),
(1000, 119, 5, 4, 0, 6),
(1001, 119, 5, 5, 0, 14),
(1002, 119, 5, 6, 0, 22),
(1003, 119, 5, 7, 0, 13),
(1004, 119, 5, 8, 0, 20),
(1005, 119, 3, 1, 0, 9),
(1006, 119, 3, 2, 0, 28),
(1007, 119, 3, 4, 0, 9),
(1008, 119, 3, 5, 0, 8),
(1009, 119, 3, 6, 0, 8),
(1010, 119, 3, 7, 0, 11),
(1011, 119, 3, 8, 0, 24),
(1012, 123, 2, 1, 0, 11),
(1013, 123, 2, 2, 1, 29),
(1014, 123, 2, 4, 0, 7),
(1015, 123, 2, 5, 0, 19),
(1016, 123, 2, 6, 0, 20),
(1017, 123, 2, 7, 0, 12),
(1018, 123, 2, 8, 0, 20),
(1019, 123, 1, 1, 0, 9),
(1020, 123, 1, 2, 0, 5),
(1021, 123, 1, 4, 0, 17),
(1022, 123, 1, 5, 0, 19),
(1023, 123, 1, 6, 0, 11),
(1024, 123, 1, 7, 0, 22),
(1025, 123, 1, 8, 0, 22),
(1026, 123, 4, 1, 0, 14),
(1027, 123, 4, 2, 0, 24),
(1028, 123, 4, 4, 0, 22),
(1029, 123, 4, 5, 0, 10),
(1030, 123, 4, 6, 0, 29),
(1031, 123, 4, 7, 0, 9),
(1032, 123, 4, 8, 0, 5),
(1033, 130, 0, 0, 1, 20),
(1040, 131, 0, 0, 1, 12),
(1047, 132, 0, 0, 1, 16),
(1054, 133, 0, 0, 1, 10),
(1061, 134, 0, 0, 1, 10),
(1068, 135, 0, 0, 1, 25),
(1075, 136, 0, 0, 1, 29),
(1082, 137, 0, 0, 1, 15);

-- --------------------------------------------------------

--
-- Structure de la table `taille`
--

CREATE TABLE `taille` (
  `numTaille` int(11) NOT NULL,
  `libelletaille` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `taille`
--

INSERT INTO `taille` (`numTaille`, `libelletaille`) VALUES
(0, ''),
(6, '3XL'),
(7, '4XL'),
(8, '5XL'),
(3, 'L'),
(2, 'M'),
(1, 'S'),
(4, 'XL'),
(5, 'XXL');

-- --------------------------------------------------------

--
-- Structure de la table `tshirt`
--

CREATE TABLE `tshirt` (
  `numTshirt` int(11) NOT NULL,
  `nomtshirt` varchar(255) DEFAULT NULL,
  `prix` decimal(19,2) DEFAULT '0.00',
  `genre` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tshirt`
--

INSERT INTO `tshirt` (`numTshirt`, `nomtshirt`, `prix`, `genre`) VALUES
(1, 'T-shirt Développeur', '19.99', 1),
(9, 'T-shirt Bob-omb', '24.99', 1),
(15, 'T-shirt Canarie', '22.99', 2),
(17, 'T-shirt Chauve-Souris', '24.99', 1),
(19, 'T-shirt Corbeau', '24.99', 2),
(27, 'T-shirt Crâne', '19.99', 2),
(29, 'T-shirt Docteur-Who', '26.99', 1),
(35, 'T-shirt Abdos-Donuts', '24.99', 1),
(41, 'T-Shirt Mini-Dragons ', '19.99', 2),
(43, 'T-Shirt Nourris moi ! ', '26.99', 2),
(49, 'T-shirt Style F.R.I.E.N.D.S', '24.99', 1),
(51, 'T-shirt Hip-Hop', '24.99', 2),
(59, 'T-shirt Joker', '24.99', 1),
(61, 'T-shirt Licorne', '22.99', 2),
(69, 'T-shirt Link Ourson', '19.99', 2),
(71, 'T-shirt Évolution Seigneur des anneaux ', '19.99', 1),
(79, 'T-shirt Masque de Majora', '24.99', 1),
(81, 'T-shirt Meeseeks', '26.99', 1),
(85, 'T-shirt Blanche-Neige Rock', '24.99', 2),
(89, 'T-shirt Nerd', '22.99', 1),
(93, 'T-shirt Patronum', '26.99', 1),
(103, 'T-shirt Reliques de la Mort', '24.99', 1),
(105, 'T-shirt Singe', '24.99', 2),
(111, 'T-shirt Surf-Loup', '26.99', 1),
(117, 'T-shirt It wasn\'t me', '26.99', 2),
(119, 'T-shirt Wonder Woman', '24.99', 2),
(123, 'T-shirt Zombie Féministe', '19.99', 2),
(130, 'Bonnet Ingénieur', '14.99', 0),
(131, 'Coussin Ourson', '12.99', 0),
(132, 'Mug Développeur Web ', '9.99', 0),
(133, 'Parapluie Chat', '9.99', 0),
(134, 'Sac étudiant', '19.99', 0),
(135, 'Sac de sport', '24.99', 0),
(136, 'Sac Totoro', '9.99', 0),
(137, 'Tapis de Souris Ramen', '9.99', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `avoir`
--
ALTER TABLE `avoir`
  ADD PRIMARY KEY (`IdAvoir`,`NumTaille`,`Numcouleur`),
  ADD KEY `Numcouleur` (`Numcouleur`),
  ADD KEY `NumTaille` (`NumTaille`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`IdClient`);

--
-- Index pour la table `couleur`
--
ALTER TABLE `couleur`
  ADD PRIMARY KEY (`numCouleur`),
  ADD UNIQUE KEY `libellecouleur` (`libellecouleur`);

--
-- Index pour la table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`numPhoto`),
  ADD UNIQUE KEY `cheminImage` (`cheminImage`),
  ADD KEY `LienPhotoCouleur` (`numCouleur`),
  ADD KEY `LienPhotoTshirt` (`numTshirt`);

--
-- Index pour la table `reftshirt`
--
ALTER TABLE `reftshirt`
  ADD PRIMARY KEY (`numRef`),
  ADD UNIQUE KEY `Triplet` (`numTshirt`,`numCouleur`,`numTaille`) USING BTREE,
  ADD KEY `LienRefTshirtCouleur` (`numCouleur`),
  ADD KEY `LienRefTshirtTaille` (`numTaille`);

--
-- Index pour la table `taille`
--
ALTER TABLE `taille`
  ADD PRIMARY KEY (`numTaille`),
  ADD UNIQUE KEY `libelletaille` (`libelletaille`);

--
-- Index pour la table `tshirt`
--
ALTER TABLE `tshirt`
  ADD PRIMARY KEY (`numTshirt`),
  ADD UNIQUE KEY `nomtshirt` (`nomtshirt`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `IdClient` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `couleur`
--
ALTER TABLE `couleur`
  MODIFY `numCouleur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `photo`
--
ALTER TABLE `photo`
  MODIFY `numPhoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT pour la table `reftshirt`
--
ALTER TABLE `reftshirt`
  MODIFY `numRef` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1096;

--
-- AUTO_INCREMENT pour la table `taille`
--
ALTER TABLE `taille`
  MODIFY `numTaille` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `tshirt`
--
ALTER TABLE `tshirt`
  MODIFY `numTshirt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `LienPhotoCouleur` FOREIGN KEY (`numCouleur`) REFERENCES `couleur` (`numCouleur`),
  ADD CONSTRAINT `LienPhotoTshirt` FOREIGN KEY (`numTshirt`) REFERENCES `tshirt` (`numTshirt`);

--
-- Contraintes pour la table `reftshirt`
--
ALTER TABLE `reftshirt`
  ADD CONSTRAINT `LienRefTshirtCouleur` FOREIGN KEY (`numCouleur`) REFERENCES `couleur` (`numCouleur`),
  ADD CONSTRAINT `LienRefTshirtTaille` FOREIGN KEY (`numTaille`) REFERENCES `taille` (`numTaille`),
  ADD CONSTRAINT `LienRefTshirtTshirt` FOREIGN KEY (`numTshirt`) REFERENCES `tshirt` (`numTshirt`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
