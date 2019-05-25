-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 25 mai 2019 à 21:56
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
(7, 1, 5, 'bombBleu/bombBleu.jpg', 0),
(8, 1, 5, 'bombBleu/bombBleu2.jpg', 0),
(9, 1, 8, 'bombKaki/bombKaki.jpg', 0),
(10, 9, 8, 'bombKaki/bombKaki2.jpg', 1),
(11, 9, 2, 'canBlanc/canBlanc.jpg', 0),
(12, 9, 2, 'canBlanc/canBlanc2.jpg', 0),
(13, 9, 3, 'canGris/canGris.jpg', 0),
(14, 9, 3, 'canGris/canGris2.jpg', 0),
(15, 15, 4, 'canRouge/canRouge.jpg', 1),
(16, 15, 4, 'canRouge/canRouge2.jpg', 0),
(17, 17, 2, 'chauveBlanc/chauveBlanc.jpg', 1),
(18, 17, 2, 'chauveBlanc/chauveBlanc2.jpg', 0),
(19, 19, 3, 'corGris/corGris.jpg', 1),
(20, 19, 3, 'corGris/corGris2.jpg', 0),
(21, 19, 4, 'corRouge/corRouge.jpg', 0),
(22, 19, 4, 'corRouge/corRouge2.jpg', 0),
(23, 19, 5, 'craneBleu/craneBleu.jpg', 0),
(24, 19, 5, 'craneBleu/craneBleu2.jpg', 0),
(25, 19, 1, 'craneNoir/craneNoir.jpg', 0),
(26, 19, 1, 'craneNoir/craneNoir2.jpg', 0),
(27, 27, 6, 'craneVert/craneVert.jpg', 1),
(28, 27, 6, 'craneVert/craneVert2.jpg', 0),
(29, 27, 5, 'docteurBleu/docteurBleu.jpg', 0),
(30, 29, 5, 'docteurBleu/docteurBleu2.jpg', 1),
(31, 29, 3, 'docteurGris/docteurGris.jpg', 0),
(32, 29, 3, 'docteurGris/docteurGris2.jpg', 0),
(33, 29, 6, 'docteurVert/docteurVert.jpg', 0),
(34, 29, 6, 'docteurVert/docteurVert2.jpg', 0),
(35, 29, 9, 'donutMar/donutMar.jpg', 0),
(36, 35, 9, 'donutMar/donutMar2.jpg', 1),
(37, 35, 4, 'donutRouge/donutRouge.jpg', 0),
(38, 35, 4, 'donutRouge/donutRouge2.jpg', 0),
(39, 35, 3, 'dragonGris/dragonGris.jpg', 0),
(40, 35, 3, 'dragonGris/dragonGris2.jpg', 0),
(41, 41, 1, 'dragonNoir/dragonNoir.jpg', 1),
(42, 41, 1, 'dragonNoir/dragonNoir2.jpg', 0),
(43, 43, 5, 'feedBleu/feedBleu.jpg', 1),
(44, 43, 5, 'feedBleu/feedBleu2.jpg', 0),
(45, 43, 2, 'feedBlanc/feedBlanc.jpg', 0),
(46, 43, 2, 'feedBlanc/feedBlanc2.jpg', 0),
(47, 43, 5, 'friendsBleu/friendsBleu.jpg', 0),
(48, 43, 5, 'friendsBleu/friendsBleu2.jpg', 0),
(49, 43, 3, 'friendsGris/friendsGris.jpg', 0),
(50, 49, 3, 'friendsGris/friendsGris2.jpg', 1),
(51, 51, 11, 'hipViolet/hipViolet.jpg', 1),
(52, 51, 11, 'hipViolet/hipViolet2.jpg', 0),
(53, 51, 2, 'hipBlanc/hipBlanc.jpg', 0),
(54, 51, 2, 'hipBlanc/hipBlanc2.jpg', 0),
(55, 51, 1, 'hipNoir/hipNoir.jpg', 0),
(56, 51, 1, 'hipNoir/hipNoir2.jpg', 0),
(57, 51, 1, 'jokerNoir/jokerNoir.jpg', 0),
(58, 51, 1, 'jokerNoir/jokerNoir2.jpg', 0),
(59, 59, 6, 'jokerVert/jokerVert.jpg', 1),
(60, 59, 6, 'jokerVert/jokerVert2.jpg', 0),
(61, 59, 2, 'licorneBlanc/licorneBlanc.jpg', 0),
(62, 61, 2, 'licorneBlanc/licorneBlanc2.jpg', 1),
(63, 61, 4, 'licorneRouge/licorneRouge.jpg', 0),
(64, 61, 4, 'licorneRouge/licorneRouge2.jpg', 0),
(65, 61, 6, 'licorneVert/licorneVert.jpg', 0),
(66, 61, 6, 'licorneVert/licorneVert2.jpg', 0),
(67, 61, 2, 'linkBlanc/linkBlanc.jpg', 0),
(68, 61, 2, 'linkBlanc/linkBlanc2.jpg', 0),
(69, 69, 5, 'linkBleu/linkBleu.jpg', 1),
(70, 69, 5, 'linkBleu/linkBleu2.jpg', 0),
(71, 71, 2, 'lotrBlanc/lotrBlanc.jpg', 1),
(72, 71, 2, 'lotrBlanc/lotrBlanc2.jpg', 0),
(73, 71, 6, 'lotrVert/lotrVert.jpg', 0),
(74, 71, 6, 'lotrVert/lotrVert2.jpg', 0),
(75, 71, 5, 'majoBleu/majoBleu.jpg', 0),
(76, 71, 5, 'majoBleu/majoBleu2.jpg', 0),
(77, 71, 3, 'majoGris/majoGris.jpg', 0),
(78, 71, 3, 'majoGris/majoGris2.jpg', 0),
(79, 79, 8, 'majoKaki/majoKaki.jpg', 1),
(80, 79, 8, 'majoKaki/majoKaki2.jpg', 0),
(81, 79, 5, 'mees/mees.jpg', 0),
(82, 81, 5, 'mees/mees2.jpg', 1),
(83, 81, 3, 'mortGris/mortGris.jpg', 0),
(84, 81, 3, 'mortGris/mortGris2.jpg', 0),
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
(99, 93, 5, 'relBleu/relBleu.jpg', 0),
(100, 93, 5, 'relBleu/relBleu2.jpg', 0),
(101, 93, 3, 'relGris/relGris.jpg', 0),
(102, 93, 3, 'relGris/relGris2.jpg', 0),
(103, 103, 1, 'relNoir/relNoir.jpg', 1),
(104, 103, 1, 'relNoir/relNoir2.jpg', 0),
(105, 105, 2, 'singeBlanc/singeBlanc.jpg', 1),
(106, 105, 2, 'singeBlanc/singeBlanc2.jpg', 0),
(107, 105, 5, 'surfBleu/surfBleu.jpg', 0),
(108, 105, 5, 'surfBleu/surfBleu2.jpg', 0),
(109, 105, 3, 'surfGris/surfGris.jpg', 0),
(110, 105, 3, 'surfGris/surfGris2.jpg', 0),
(111, 111, 1, 'surfNoir/surfNoir.jpg', 1),
(112, 111, 1, 'surfNoir/surfNoir2.jpg', 0),
(113, 111, 3, 'wasntGris/wasntGris.jpg', 0),
(114, 111, 3, 'wasntGris/wasntGris2.jpg', 0),
(115, 111, 4, 'wasntRouge/wasntRouge.jpg', 0),
(116, 111, 4, 'wasntRouge/wasntRouge2.jpg', 0),
(117, 117, 11, 'wasntViolet/wasntViolet.jpg', 1),
(118, 117, 11, 'wasntViolet/wasntViolet2.jpg', 0),
(119, 117, 5, 'wonderBleu/wonderBleu.jpg', 0),
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
  `stock` int(11) NOT NULL DEFAULT '20'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reftshirt`
--

INSERT INTO `reftshirt` (`numRef`, `numTshirt`, `numCouleur`, `numTaille`, `stock`) VALUES
(1, 1, 3, 3, 26),
(2, 1, 1, 3, 24),
(3, 1, 9, 3, 11),
(4, 9, 5, 3, 29),
(5, 9, 8, 3, 8),
(6, 15, 2, 3, 21),
(7, 15, 3, 3, 28),
(8, 15, 4, 3, 21),
(9, 17, 2, 3, 16),
(10, 19, 3, 3, 15),
(11, 19, 4, 3, 20),
(12, 27, 5, 3, 26),
(13, 27, 1, 3, 14),
(14, 27, 6, 3, 13),
(15, 29, 5, 3, 19),
(16, 29, 3, 3, 28),
(17, 29, 6, 3, 28),
(18, 35, 9, 3, 26),
(19, 35, 4, 3, 18),
(20, 41, 3, 3, 6),
(21, 41, 1, 3, 20),
(22, 43, 5, 3, 29),
(23, 43, 2, 3, 29),
(24, 49, 5, 3, 28),
(25, 49, 3, 3, 25),
(26, 51, 11, 3, 12),
(27, 51, 2, 3, 6),
(28, 51, 1, 3, 13),
(29, 59, 1, 3, 17),
(30, 59, 6, 3, 19),
(31, 61, 2, 3, 12),
(32, 61, 4, 3, 23),
(33, 61, 6, 3, 27),
(34, 69, 2, 3, 9),
(35, 69, 5, 3, 12),
(36, 71, 2, 3, 28),
(37, 71, 6, 3, 24),
(38, 79, 5, 3, 5),
(39, 79, 3, 3, 24),
(40, 79, 8, 3, 27),
(41, 81, 5, 3, 7),
(42, 85, 3, 3, 23),
(43, 85, 4, 3, 15),
(44, 85, 11, 3, 29),
(45, 89, 2, 3, 18),
(46, 89, 5, 3, 26),
(47, 93, 5, 3, 22),
(48, 93, 10, 3, 25),
(49, 93, 1, 3, 29),
(50, 103, 5, 3, 19),
(51, 103, 3, 3, 25),
(52, 103, 1, 3, 15),
(53, 105, 2, 3, 22),
(54, 111, 5, 3, 9),
(55, 111, 3, 3, 26),
(57, 111, 1, 3, 23),
(58, 117, 3, 3, 6),
(59, 117, 4, 3, 9),
(60, 117, 11, 3, 23),
(61, 119, 5, 3, 9),
(62, 119, 3, 3, 22),
(63, 123, 2, 3, 28),
(64, 123, 1, 3, 21),
(65, 123, 4, 3, 14),
(66, 130, 0, 3, 27),
(67, 131, 0, 3, 13),
(68, 132, 0, 3, 29),
(69, 133, 0, 3, 27),
(70, 134, 0, 3, 18),
(71, 135, 0, 3, 5),
(72, 136, 0, 3, 16),
(73, 137, 0, 3, 11),
(585, 1, 3, 1, 27),
(586, 1, 3, 2, 24),
(587, 1, 3, 4, 9),
(588, 1, 3, 5, 16),
(589, 1, 3, 6, 27),
(590, 1, 3, 7, 6),
(591, 1, 3, 8, 21),
(592, 1, 1, 1, 6),
(593, 1, 1, 2, 13),
(594, 1, 1, 4, 16),
(595, 1, 1, 5, 12),
(596, 1, 1, 6, 10),
(597, 1, 1, 7, 7),
(598, 1, 1, 8, 26),
(599, 1, 9, 1, 29),
(600, 1, 9, 2, 11),
(601, 1, 9, 4, 16),
(602, 1, 9, 5, 18),
(603, 1, 9, 6, 11),
(604, 1, 9, 7, 22),
(605, 1, 9, 8, 24),
(606, 9, 5, 1, 24),
(607, 9, 5, 2, 17),
(608, 9, 5, 4, 8),
(609, 9, 5, 5, 10),
(610, 9, 5, 6, 20),
(611, 9, 5, 7, 16),
(612, 9, 5, 8, 14),
(613, 9, 8, 1, 21),
(614, 9, 8, 2, 6),
(615, 9, 8, 4, 11),
(616, 9, 8, 5, 11),
(617, 9, 8, 6, 17),
(618, 9, 8, 7, 20),
(619, 9, 8, 8, 20),
(620, 15, 2, 1, 13),
(621, 15, 2, 2, 24),
(622, 15, 2, 4, 26),
(623, 15, 2, 5, 27),
(624, 15, 2, 6, 29),
(625, 15, 2, 7, 11),
(626, 15, 2, 8, 12),
(627, 15, 3, 1, 24),
(628, 15, 3, 2, 5),
(629, 15, 3, 4, 21),
(630, 15, 3, 5, 11),
(631, 15, 3, 6, 11),
(632, 15, 3, 7, 18),
(633, 15, 3, 8, 29),
(634, 15, 4, 1, 10),
(635, 15, 4, 2, 9),
(636, 15, 4, 4, 10),
(637, 15, 4, 5, 19),
(638, 15, 4, 6, 9),
(639, 15, 4, 7, 10),
(640, 15, 4, 8, 16),
(641, 17, 2, 1, 22),
(642, 17, 2, 2, 9),
(643, 17, 2, 4, 23),
(644, 17, 2, 5, 8),
(645, 17, 2, 6, 15),
(646, 17, 2, 7, 24),
(647, 17, 2, 8, 20),
(648, 19, 3, 1, 23),
(649, 19, 3, 2, 26),
(650, 19, 3, 4, 7),
(651, 19, 3, 5, 25),
(652, 19, 3, 6, 26),
(653, 19, 3, 7, 25),
(654, 19, 3, 8, 18),
(655, 19, 4, 1, 12),
(656, 19, 4, 2, 27),
(657, 19, 4, 4, 17),
(658, 19, 4, 5, 24),
(659, 19, 4, 6, 13),
(660, 19, 4, 7, 17),
(661, 19, 4, 8, 16),
(662, 27, 5, 1, 25),
(663, 27, 5, 2, 23),
(664, 27, 5, 4, 12),
(665, 27, 5, 5, 8),
(666, 27, 5, 6, 28),
(667, 27, 5, 7, 9),
(668, 27, 5, 8, 9),
(669, 27, 1, 1, 13),
(670, 27, 1, 2, 7),
(671, 27, 1, 4, 17),
(672, 27, 1, 5, 11),
(673, 27, 1, 6, 22),
(674, 27, 1, 7, 25),
(675, 27, 1, 8, 29),
(676, 27, 6, 1, 13),
(677, 27, 6, 2, 27),
(678, 27, 6, 4, 15),
(679, 27, 6, 5, 15),
(680, 27, 6, 6, 23),
(681, 27, 6, 7, 18),
(682, 27, 6, 8, 14),
(683, 29, 5, 1, 15),
(684, 29, 5, 2, 25),
(685, 29, 5, 4, 29),
(686, 29, 5, 5, 13),
(687, 29, 5, 6, 23),
(688, 29, 5, 7, 21),
(689, 29, 5, 8, 9),
(690, 29, 3, 1, 25),
(691, 29, 3, 2, 22),
(692, 29, 3, 4, 27),
(693, 29, 3, 5, 15),
(694, 29, 3, 6, 17),
(695, 29, 3, 7, 8),
(696, 29, 3, 8, 10),
(697, 29, 6, 1, 22),
(698, 29, 6, 2, 24),
(699, 29, 6, 4, 24),
(700, 29, 6, 5, 18),
(701, 29, 6, 6, 13),
(702, 29, 6, 7, 7),
(703, 29, 6, 8, 16),
(704, 35, 9, 1, 6),
(705, 35, 9, 2, 26),
(706, 35, 9, 4, 7),
(707, 35, 9, 5, 27),
(708, 35, 9, 6, 10),
(709, 35, 9, 7, 14),
(710, 35, 9, 8, 9),
(711, 35, 4, 1, 25),
(712, 35, 4, 2, 17),
(713, 35, 4, 4, 9),
(714, 35, 4, 5, 11),
(715, 35, 4, 6, 25),
(716, 35, 4, 7, 14),
(717, 35, 4, 8, 15),
(718, 41, 3, 1, 29),
(719, 41, 3, 2, 20),
(720, 41, 3, 4, 8),
(721, 41, 3, 5, 24),
(722, 41, 3, 6, 19),
(723, 41, 3, 7, 16),
(724, 41, 3, 8, 19),
(725, 41, 1, 1, 17),
(726, 41, 1, 2, 22),
(727, 41, 1, 4, 8),
(728, 41, 1, 5, 17),
(729, 41, 1, 6, 8),
(730, 41, 1, 7, 8),
(731, 41, 1, 8, 14),
(732, 43, 5, 1, 15),
(733, 43, 5, 2, 27),
(734, 43, 5, 4, 14),
(735, 43, 5, 5, 6),
(736, 43, 5, 6, 12),
(737, 43, 5, 7, 10),
(738, 43, 5, 8, 10),
(739, 43, 2, 1, 17),
(740, 43, 2, 2, 24),
(741, 43, 2, 4, 16),
(742, 43, 2, 5, 26),
(743, 43, 2, 6, 6),
(744, 43, 2, 7, 20),
(745, 43, 2, 8, 26),
(746, 49, 5, 1, 19),
(747, 49, 5, 2, 11),
(748, 49, 5, 4, 20),
(749, 49, 5, 5, 10),
(750, 49, 5, 6, 10),
(751, 49, 5, 7, 18),
(752, 49, 5, 8, 29),
(753, 49, 3, 1, 13),
(754, 49, 3, 2, 23),
(755, 49, 3, 4, 20),
(756, 49, 3, 5, 29),
(757, 49, 3, 6, 6),
(758, 49, 3, 7, 13),
(759, 49, 3, 8, 17),
(760, 51, 11, 1, 16),
(761, 51, 11, 2, 24),
(762, 51, 11, 4, 20),
(763, 51, 11, 5, 21),
(764, 51, 11, 6, 15),
(765, 51, 11, 7, 10),
(766, 51, 11, 8, 23),
(767, 51, 2, 1, 29),
(768, 51, 2, 2, 25),
(769, 51, 2, 4, 8),
(770, 51, 2, 5, 11),
(771, 51, 2, 6, 24),
(772, 51, 2, 7, 8),
(773, 51, 2, 8, 15),
(774, 51, 1, 1, 19),
(775, 51, 1, 2, 21),
(776, 51, 1, 4, 20),
(777, 51, 1, 5, 8),
(778, 51, 1, 6, 23),
(779, 51, 1, 7, 14),
(780, 51, 1, 8, 22),
(781, 59, 1, 1, 12),
(782, 59, 1, 2, 15),
(783, 59, 1, 4, 11),
(784, 59, 1, 5, 27),
(785, 59, 1, 6, 26),
(786, 59, 1, 7, 18),
(787, 59, 1, 8, 9),
(788, 59, 6, 1, 12),
(789, 59, 6, 2, 27),
(790, 59, 6, 4, 20),
(791, 59, 6, 5, 15),
(792, 59, 6, 6, 11),
(793, 59, 6, 7, 5),
(794, 59, 6, 8, 12),
(795, 61, 2, 1, 14),
(796, 61, 2, 2, 6),
(797, 61, 2, 4, 10),
(798, 61, 2, 5, 26),
(799, 61, 2, 6, 22),
(800, 61, 2, 7, 28),
(801, 61, 2, 8, 17),
(802, 61, 4, 1, 21),
(803, 61, 4, 2, 26),
(804, 61, 4, 4, 14),
(805, 61, 4, 5, 12),
(806, 61, 4, 6, 15),
(807, 61, 4, 7, 7),
(808, 61, 4, 8, 13),
(809, 61, 6, 1, 14),
(810, 61, 6, 2, 24),
(811, 61, 6, 4, 27),
(812, 61, 6, 5, 6),
(813, 61, 6, 6, 19),
(814, 61, 6, 7, 23),
(815, 61, 6, 8, 29),
(816, 69, 2, 1, 23),
(817, 69, 2, 2, 21),
(818, 69, 2, 4, 7),
(819, 69, 2, 5, 17),
(820, 69, 2, 6, 9),
(821, 69, 2, 7, 16),
(822, 69, 2, 8, 23),
(823, 69, 5, 1, 13),
(824, 69, 5, 2, 16),
(825, 69, 5, 4, 11),
(826, 69, 5, 5, 28),
(827, 69, 5, 6, 27),
(828, 69, 5, 7, 21),
(829, 69, 5, 8, 21),
(830, 71, 2, 1, 13),
(831, 71, 2, 2, 23),
(832, 71, 2, 4, 20),
(833, 71, 2, 5, 25),
(834, 71, 2, 6, 11),
(835, 71, 2, 7, 27),
(836, 71, 2, 8, 24),
(837, 71, 6, 1, 6),
(838, 71, 6, 2, 6),
(839, 71, 6, 4, 8),
(840, 71, 6, 5, 18),
(841, 71, 6, 6, 12),
(842, 71, 6, 7, 25),
(843, 71, 6, 8, 8),
(844, 79, 5, 1, 12),
(845, 79, 5, 2, 7),
(846, 79, 5, 4, 19),
(847, 79, 5, 5, 18),
(848, 79, 5, 6, 6),
(849, 79, 5, 7, 21),
(850, 79, 5, 8, 7),
(851, 79, 3, 1, 16),
(852, 79, 3, 2, 7),
(853, 79, 3, 4, 6),
(854, 79, 3, 5, 28),
(855, 79, 3, 6, 18),
(856, 79, 3, 7, 27),
(857, 79, 3, 8, 26),
(858, 79, 8, 1, 20),
(859, 79, 8, 2, 17),
(860, 79, 8, 4, 19),
(861, 79, 8, 5, 17),
(862, 79, 8, 6, 23),
(863, 79, 8, 7, 11),
(864, 79, 8, 8, 6),
(865, 81, 5, 1, 19),
(866, 81, 5, 2, 21),
(867, 81, 5, 4, 18),
(868, 81, 5, 5, 22),
(869, 81, 5, 6, 27),
(870, 81, 5, 7, 14),
(871, 81, 5, 8, 11),
(872, 85, 3, 1, 6),
(873, 85, 3, 2, 21),
(874, 85, 3, 4, 5),
(875, 85, 3, 5, 7),
(876, 85, 3, 6, 18),
(877, 85, 3, 7, 12),
(878, 85, 3, 8, 28),
(879, 85, 4, 1, 23),
(880, 85, 4, 2, 29),
(881, 85, 4, 4, 20),
(882, 85, 4, 5, 10),
(883, 85, 4, 6, 9),
(884, 85, 4, 7, 11),
(885, 85, 4, 8, 26),
(886, 85, 11, 1, 14),
(887, 85, 11, 2, 13),
(888, 85, 11, 4, 21),
(889, 85, 11, 5, 9),
(890, 85, 11, 6, 5),
(891, 85, 11, 7, 17),
(892, 85, 11, 8, 15),
(893, 89, 2, 1, 19),
(894, 89, 2, 2, 21),
(895, 89, 2, 4, 20),
(896, 89, 2, 5, 7),
(897, 89, 2, 6, 20),
(898, 89, 2, 7, 23),
(899, 89, 2, 8, 27),
(900, 89, 5, 1, 11),
(901, 89, 5, 2, 18),
(902, 89, 5, 4, 6),
(903, 89, 5, 5, 18),
(904, 89, 5, 6, 21),
(905, 89, 5, 7, 19),
(906, 89, 5, 8, 28),
(907, 93, 5, 1, 29),
(908, 93, 5, 2, 7),
(909, 93, 5, 4, 20),
(910, 93, 5, 5, 23),
(911, 93, 5, 6, 25),
(912, 93, 5, 7, 26),
(913, 93, 5, 8, 26),
(914, 93, 10, 1, 21),
(915, 93, 10, 2, 23),
(916, 93, 10, 4, 24),
(917, 93, 10, 5, 20),
(918, 93, 10, 6, 25),
(919, 93, 10, 7, 10),
(920, 93, 10, 8, 22),
(921, 93, 1, 1, 26),
(922, 93, 1, 2, 6),
(923, 93, 1, 4, 26),
(924, 93, 1, 5, 29),
(925, 93, 1, 6, 16),
(926, 93, 1, 7, 12),
(927, 93, 1, 8, 9),
(928, 103, 5, 1, 27),
(929, 103, 5, 2, 28),
(930, 103, 5, 4, 29),
(931, 103, 5, 5, 9),
(932, 103, 5, 6, 26),
(933, 103, 5, 7, 23),
(934, 103, 5, 8, 8),
(935, 103, 3, 1, 15),
(936, 103, 3, 2, 23),
(937, 103, 3, 4, 17),
(938, 103, 3, 5, 9),
(939, 103, 3, 6, 17),
(940, 103, 3, 7, 27),
(941, 103, 3, 8, 29),
(942, 103, 1, 1, 12),
(943, 103, 1, 2, 18),
(944, 103, 1, 4, 22),
(945, 103, 1, 5, 29),
(946, 103, 1, 6, 24),
(947, 103, 1, 7, 28),
(948, 103, 1, 8, 15),
(949, 105, 2, 1, 12),
(950, 105, 2, 2, 9),
(951, 105, 2, 4, 28),
(952, 105, 2, 5, 9),
(953, 105, 2, 6, 6),
(954, 105, 2, 7, 26),
(955, 105, 2, 8, 6),
(956, 111, 5, 1, 23),
(957, 111, 5, 2, 15),
(958, 111, 5, 4, 29),
(959, 111, 5, 5, 20),
(960, 111, 5, 6, 10),
(961, 111, 5, 7, 11),
(962, 111, 5, 8, 17),
(963, 111, 3, 1, 25),
(964, 111, 3, 2, 19),
(965, 111, 3, 4, 17),
(966, 111, 3, 5, 24),
(967, 111, 3, 6, 15),
(968, 111, 3, 7, 21),
(969, 111, 3, 8, 6),
(970, 111, 1, 1, 11),
(971, 111, 1, 2, 11),
(972, 111, 1, 4, 14),
(973, 111, 1, 5, 9),
(974, 111, 1, 6, 24),
(975, 111, 1, 7, 12),
(976, 111, 1, 8, 11),
(977, 117, 3, 1, 13),
(978, 117, 3, 2, 29),
(979, 117, 3, 4, 27),
(980, 117, 3, 5, 18),
(981, 117, 3, 6, 5),
(982, 117, 3, 7, 16),
(983, 117, 3, 8, 11),
(984, 117, 4, 1, 28),
(985, 117, 4, 2, 28),
(986, 117, 4, 4, 24),
(987, 117, 4, 5, 9),
(988, 117, 4, 6, 17),
(989, 117, 4, 7, 28),
(990, 117, 4, 8, 11),
(991, 117, 11, 1, 15),
(992, 117, 11, 2, 14),
(993, 117, 11, 4, 19),
(994, 117, 11, 5, 23),
(995, 117, 11, 6, 6),
(996, 117, 11, 7, 5),
(997, 117, 11, 8, 28),
(998, 119, 5, 1, 22),
(999, 119, 5, 2, 20),
(1000, 119, 5, 4, 6),
(1001, 119, 5, 5, 14),
(1002, 119, 5, 6, 22),
(1003, 119, 5, 7, 13),
(1004, 119, 5, 8, 20),
(1005, 119, 3, 1, 9),
(1006, 119, 3, 2, 28),
(1007, 119, 3, 4, 9),
(1008, 119, 3, 5, 8),
(1009, 119, 3, 6, 8),
(1010, 119, 3, 7, 11),
(1011, 119, 3, 8, 24),
(1012, 123, 2, 1, 11),
(1013, 123, 2, 2, 29),
(1014, 123, 2, 4, 7),
(1015, 123, 2, 5, 19),
(1016, 123, 2, 6, 20),
(1017, 123, 2, 7, 12),
(1018, 123, 2, 8, 20),
(1019, 123, 1, 1, 9),
(1020, 123, 1, 2, 5),
(1021, 123, 1, 4, 17),
(1022, 123, 1, 5, 19),
(1023, 123, 1, 6, 11),
(1024, 123, 1, 7, 22),
(1025, 123, 1, 8, 22),
(1026, 123, 4, 1, 14),
(1027, 123, 4, 2, 24),
(1028, 123, 4, 4, 22),
(1029, 123, 4, 5, 10),
(1030, 123, 4, 6, 29),
(1031, 123, 4, 7, 9),
(1032, 123, 4, 8, 5),
(1033, 130, 0, 1, 20),
(1034, 130, 0, 2, 6),
(1035, 130, 0, 4, 13),
(1036, 130, 0, 5, 17),
(1037, 130, 0, 6, 18),
(1038, 130, 0, 7, 8),
(1039, 130, 0, 8, 8),
(1040, 131, 0, 1, 12),
(1041, 131, 0, 2, 29),
(1042, 131, 0, 4, 5),
(1043, 131, 0, 5, 8),
(1044, 131, 0, 6, 23),
(1045, 131, 0, 7, 11),
(1046, 131, 0, 8, 6),
(1047, 132, 0, 1, 16),
(1048, 132, 0, 2, 8),
(1049, 132, 0, 4, 12),
(1050, 132, 0, 5, 9),
(1051, 132, 0, 6, 27),
(1052, 132, 0, 7, 29),
(1053, 132, 0, 8, 10),
(1054, 133, 0, 1, 10),
(1055, 133, 0, 2, 16),
(1056, 133, 0, 4, 18),
(1057, 133, 0, 5, 14),
(1058, 133, 0, 6, 13),
(1059, 133, 0, 7, 16),
(1060, 133, 0, 8, 13),
(1061, 134, 0, 1, 10),
(1062, 134, 0, 2, 8),
(1063, 134, 0, 4, 5),
(1064, 134, 0, 5, 23),
(1065, 134, 0, 6, 20),
(1066, 134, 0, 7, 26),
(1067, 134, 0, 8, 17),
(1068, 135, 0, 1, 25),
(1069, 135, 0, 2, 21),
(1070, 135, 0, 4, 26),
(1071, 135, 0, 5, 13),
(1072, 135, 0, 6, 8),
(1073, 135, 0, 7, 22),
(1074, 135, 0, 8, 5),
(1075, 136, 0, 1, 29),
(1076, 136, 0, 2, 27),
(1077, 136, 0, 4, 20),
(1078, 136, 0, 5, 13),
(1079, 136, 0, 6, 25),
(1080, 136, 0, 7, 6),
(1081, 136, 0, 8, 28),
(1082, 137, 0, 1, 15),
(1083, 137, 0, 2, 14),
(1084, 137, 0, 4, 21),
(1085, 137, 0, 5, 8),
(1086, 137, 0, 6, 21),
(1087, 137, 0, 7, 29),
(1088, 137, 0, 8, 26);

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
(49, 'T-shirt Style F.R.I.E.N.D.S', '24.00', 1),
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
(130, 'Bonet', '0.00', 0),
(131, 'Coussin', '0.00', 0),
(132, 'Mug', '0.00', 0),
(133, 'Parapluie', '0.00', 0),
(134, 'Sac', '0.00', 0),
(135, 'Sac de sport', '0.00', 0),
(136, 'Sac Totoro', '0.00', 0),
(137, 'Tapis', '0.00', 0);

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
  MODIFY `numTaille` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `tshirt`
--
ALTER TABLE `tshirt`
  MODIFY `numTshirt` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `LienPhotoCouleur` FOREIGN KEY (`numCouleur`) REFERENCES `couleur` (`numCouleur`),
  ADD CONSTRAINT `LienPhotoTshirt` FOREIGN KEY (`numTshirt`) REFERENCES `tshirt` (`NumTshirt`);

--
-- Contraintes pour la table `reftshirt`
--
ALTER TABLE `reftshirt`
  ADD CONSTRAINT `LienRefTshirtCouleur` FOREIGN KEY (`numCouleur`) REFERENCES `couleur` (`numCouleur`),
  ADD CONSTRAINT `LienRefTshirtTaille` FOREIGN KEY (`numTaille`) REFERENCES `taille` (`numTaille`),
  ADD CONSTRAINT `LienRefTshirtTshirt` FOREIGN KEY (`numTshirt`) REFERENCES `tshirt` (`NumTshirt`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
