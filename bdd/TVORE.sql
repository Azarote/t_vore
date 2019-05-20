-- phpMyAdmin SQL Dump
-- version 2.6.4-pl4
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Lundi 20 Mai 2019 à 18:14
-- Version du serveur: 5.0.18
-- Version de PHP: 4.3.11
-- 
-- Base de données: `TVORE`
-- 

-- --------------------------------------------------------

-- 
-- Structure de la table `AVOIR`
-- 

CREATE TABLE `AVOIR` (
  `IdAvoir` int(11) NOT NULL default '0',
  `NumTaille` int(11) NOT NULL default '0',
  `Numcouleur` int(11) NOT NULL default '0',
  PRIMARY KEY  (`IdAvoir`,`NumTaille`,`Numcouleur`),
  KEY `Numcouleur` (`Numcouleur`),
  KEY `NumTaille` (`NumTaille`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `AVOIR`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `CLIENT`
-- 

CREATE TABLE `CLIENT` (
  `IdClient` int(11) NOT NULL auto_increment,
  `NomClient` varchar(255) default NULL,
  `PrenomClient` varchar(255) default NULL,
  `adresseclient` varchar(255) default NULL,
  `CpClient` int(11) default '0',
  `Villeclient` varchar(255) default NULL,
  `TelClient` int(11) default '0',
  `MailClient` varchar(255) default NULL,
  `MdpClient` varchar(255) default NULL,
  PRIMARY KEY  (`IdClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `CLIENT`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `COMMANDE`
-- 

CREATE TABLE `COMMANDE` (
  `IdClient` int(11) NOT NULL default '0',
  `IdTshirt` int(11) NOT NULL default '0',
  `DateHeure` datetime NOT NULL,
  `NombreAchat` int(11) default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `COMMANDE`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `COULEUR`
-- 

CREATE TABLE `COULEUR` (
  `idCouleur` int(11) NOT NULL auto_increment,
  `libellecouleur` varchar(255) default NULL,
  PRIMARY KEY  (`idCouleur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- Contenu de la table `COULEUR`
-- 

INSERT INTO `COULEUR` VALUES (1, 'Noir');
INSERT INTO `COULEUR` VALUES (2, 'Blanc');
INSERT INTO `COULEUR` VALUES (3, 'Gris');
INSERT INTO `COULEUR` VALUES (4, 'Rouge');
INSERT INTO `COULEUR` VALUES (5, 'Bleu');
INSERT INTO `COULEUR` VALUES (6, 'Vert');
INSERT INTO `COULEUR` VALUES (7, 'Jaune');
INSERT INTO `COULEUR` VALUES (8, 'Kaki');
INSERT INTO `COULEUR` VALUES (9, 'Marron');
INSERT INTO `COULEUR` VALUES (10, 'Cyan');
INSERT INTO `COULEUR` VALUES (11, 'Violet');

-- --------------------------------------------------------

-- 
-- Structure de la table `GOODIES`
-- 

CREATE TABLE `GOODIES` (
  `numGoodies` int(11) NOT NULL auto_increment,
  `nomGoodies` varchar(255) character set utf8 default NULL,
  `prixGoodies` decimal(19,4) default '0.0000',
  `photoGoodies` longtext character set utf8,
  `stockGoodies` tinyint(1) default '0',
  PRIMARY KEY  (`numGoodies`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `GOODIES`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `TAILLE`
-- 

CREATE TABLE `TAILLE` (
  `idTaille` int(11) NOT NULL auto_increment,
  `libelletaille` varchar(255) default NULL,
  PRIMARY KEY  (`idTaille`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Contenu de la table `TAILLE`
-- 

INSERT INTO `TAILLE` VALUES (1, 'S');
INSERT INTO `TAILLE` VALUES (2, 'M');
INSERT INTO `TAILLE` VALUES (3, 'L');
INSERT INTO `TAILLE` VALUES (4, 'XL');
INSERT INTO `TAILLE` VALUES (5, 'XXL');
INSERT INTO `TAILLE` VALUES (6, '3XL');
INSERT INTO `TAILLE` VALUES (7, '4XL');
INSERT INTO `TAILLE` VALUES (8, '5XL');

-- --------------------------------------------------------

-- 
-- Structure de la table `TSHIRT`
-- 

CREATE TABLE `TSHIRT` (
  `NumTshirt` int(11) NOT NULL auto_increment,
  `nomtshirt` varchar(255) default NULL,
  `prix` decimal(19,4) default '0.0000',
  `numcouleur` int(11) default '0',
  `numtaille` int(11) default '0',
  `photo` longtext,
  `stock` tinyint(1) default '0',
  PRIMARY KEY  (`NumTshirt`),
  KEY `numcouleur` (`numcouleur`),
  KEY `numtaille` (`numtaille`),
  KEY `nomtshirt` (`nomtshirt`),
  KEY `nomtshirt_2` (`nomtshirt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

-- 
-- Contenu de la table `TSHIRT`
-- 

INSERT INTO `TSHIRT` VALUES (1, 'T-shirt Développeur', '19.9900', 3, 3, '<img src="photos/devGris/devGris.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (2, 'T-shirt Développeur', '19.9900', 3, 3, '<img src="photos/devGris/devGris2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (3, 'T-shirt Développeur', '19.9900', 1, 3, '<img src="photos/devNoir/devNoir.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (4, 'T-shirt Développeur', '19.9900', 1, 3, '<img src="photos/devNoir/devNoir2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (5, 'T-shirt Développeur', '19.9900', 9, 3, '<img src="photos/devMar/devMar.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (6, 'T-shirt Développeur', '19.9900', 9, 3, '<img src="photos/devMar/devMar2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (7, 'T-shirt Bob-omb', '24.9900', 5, 3, '<img src="photos/bombBleu/bombBleu.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (8, 'T-shirt Bob-omb', '24.9900', 5, 3, '<img src="photos/bombBleu/bombBleu2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (9, 'T-shirt Bob-omb', '24.9900', 8, 3, '<img src="photos/bombKaki/bombKaki.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (10, 'T-shirt Bob-omb', '24.9900', 8, 3, '<img src="photos/bombKaki/bombKaki2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (11, 'T-shirt Canarie', '22.9900', 1, 3, '<img src="photos/canBlanc/canBlanc.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (12, 'T-shirt Canarie', '22.9900', 1, 3, '<img src="photos/canBlanc/canBlanc2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (13, 'T-shirt Canarie', '22.9900', 3, 3, '<img src="photos/canGris/canGris.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (14, 'T-shirt Canarie', '22.9900', 3, 3, '<img src="photos/canGris/canGris2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (15, 'T-shirt Canarie', '22.9900', 4, 3, '<img src="photos/canRouge/canRouge.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (16, 'T-shirt Canarie', '22.9900', 4, 3, '<img src="photos/canRouge/canRouge2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (17, 'T-shirt Chauve-Souris', '24.9900', 1, 3, '<img src="photos/chauveBlanc/chauveBlanc.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (18, 'T-shirt Chauve-Souris', '24.9900', 1, 3, '<img src="photos/chauveBlanc/chauveBlanc2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (19, 'T-shirt Corbeau', '24.9900', 3, 3, '<img src="photos/corGris/corGris.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (20, 'T-shirt Corbeau', '24.9900', 3, 3, '<img src="photos/corGris/corGris2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (21, 'T-shirt Corbeau', '24.9900', 4, 3, '<img src="photos/corRouge/corRouge.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (22, 'T-shirt Corbeau', '24.9900', 4, 3, '<img src="photos/corRouge/corRouge2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (23, 'T-shirt Crâne', '19.9900', 5, 3, '<img src="photos/craneBleu/craneBleu.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (24, 'T-shirt Crâne', '19.9900', 5, 3, '<img src="photos/craneBleu/craneBleu2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (25, 'T-shirt Crâne', '19.9900', 1, 3, '<img src="photos/craneNoir/craneNoir.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (26, 'T-shirt Crâne', '19.9900', 1, 3, '<img src="photos/craneNoir/craneNoir2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (27, 'T-shirt Crâne', '19.9900', 6, 3, '<img src="photos/craneVert/craneVert.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (28, 'T-shirt Crâne', '19.9900', 6, 3, '<img src="photos/craneVert/craneVert2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (29, 'T-shirt Docteur-Who', '26.9900', 5, 3, '<img src="photos/docteurBleu/docteurBleu.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (30, 'T-shirt Docteur-Who', '26.9900', 5, 3, '<img src="photos/docteurBleu/docteurBleu2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (31, 'T-shirt Docteur-Who', '26.9900', 3, 3, '<img src="photos/docteurGris/docteurGris.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (32, 'T-shirt Docteur-Who', '26.9900', 3, 3, '<img src="photos/docteurGris/docteurGris2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (33, 'T-shirt Docteur-Who', '26.9900', 6, 3, '<img src="photos/docteurVert/docteurVert.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (34, 'T-shirt Docteur-Who', '26.9900', 6, 3, '<img src="photos/docteurVert/docteurVert2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (35, 'T-shirt Abdos-Donuts', '24.9900', 9, 3, '<img src="photos/donutMar/donutMar.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (36, 'T-shirt Abdos-Donuts', '24.9900', 9, 3, '<img src="photos/donutMar/donutMar2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (37, 'T-shirt Abdos-Donuts', '24.9900', 4, 3, '<img src="photos/donutRouge/donutRouge2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (38, 'T-shirt Abdos-Donuts', '24.9900', 4, 3, '<img src="photos/donutRouge/donutRouge2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (39, 'T-Shirt Mini-Dragons ', '19.9900', 3, 3, '<img src="photos/dragonGris/dragonGris.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (40, 'T-shirt Mini-Dragons', '19.9900', 3, 3, '<img src="photos/dragonGris/dragonGris2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (41, 'T-Shirt Mini-Dragons ', '19.9900', 1, 3, '<img src="photos/dragonNoir/dragonNoir.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (42, 'T-shirt Mini-Dragons', '19.9900', 1, 3, '<img src="photos/dragonNoir/dragonNoir2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (43, 'T-Shirt Nourris moi ! ', '26.9900', 5, 3, '<img src="photos/feedBleu/feedBleu.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (44, 'T-shirt Nourris Moi !', '26.9900', 5, 3, '<img src="photos/feedBleu/feedBleu2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (45, 'T-Shirt Nourris Moi ! ', '26.9900', 2, 3, '<img src="photos/feedBlanc/feedBlanc.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (46, 'T-shirt Nourris Moi !', '26.9900', 2, 3, '<img src="photos/feedBlanc/feedBlanc2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (47, 'T-shirt Style F.R.I.E.N.D.S', '24.9900', 5, 3, '<img src="photos/friendsBleu/friendsBleu.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (48, 'T-shirt Style F.R.I.E.N.D.S', '24.9900', 5, 3, '<img src="photos/friendsBleu/friendsBleu2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (49, 'T-shirt Style F.R.I.E.N.D.S', '24.0000', 3, 3, '<img src="photos/friendsGris/friendsGris.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (50, 'T-shirt Style F.R.I.E.N.D.S', '24.9900', 3, 3, '<img src="photos/friendsGris/friendsGris2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (51, 'T-shirt Hip-Hop', '24.9900', 11, 3, '<img src="photos/hipViolet/hipViolet.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (52, 'T-shirt Hip-Hop', '24.9900', 11, 3, '<img src="photos/hipViolet/hipViolet2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (53, 'T-shirt Hip-Hop', '24.9900', 2, 3, '<img src="photos/hipBlanc/hipBlanc.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (54, 'T-shirt Hip-Hop', '24.9900', 2, 3, '<img src="photos/hipBlanc/hipBlanc2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (55, 'T-shirt Hip-Hop', '24.9900', 1, 3, '<img src="photos/hipNoir/hipNoir.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (56, 'T-shirt Hip-Hop', '24.9900', 1, 3, '<img src="photos/hipNoir/hipNoir2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (57, 'T-shirt Joker', '24.9900', 1, 3, '<img src="photos/jokerNoir/jokerNoir.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (58, 'T-shirt Joker', '24.9900', 1, 3, '<img src="photos/jokerNoir/jokerNoir2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (59, 'T-shirt Joker', '24.9900', 6, 3, '<img src="photos/jokerVert/jokerVert.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (60, 'T-shirt Joker', '24.9900', 6, 3, '<img src="photos/jokerVert/jokerVert2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (61, 'T-shirt Licorne', '22.9900', 2, 3, '<img src="photos/licorneBlanc/licorneBlanc.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (62, 'T-shirt Licorne', '22.9900', 2, 3, '<img src="photos/licorneBlanc/licorneBlanc2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (63, 'T-shirt Licorne', '22.9900', 4, 3, '<img src="photos/licorneRouge/licorneRouge.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (64, 'T-shirt Licorne', '22.9900', 4, 3, '<img src="photos/licorneRouge/licorneRouge2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (65, 'T-shirt Licorne', '22.9900', 6, 3, '<img src="photos/licorneVert/licorneVert.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (66, 'T-shirt Licorne', '22.9900', 6, 3, '<img src="photos/licorneVert/licorneVert2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (67, 'T-shirt Link Ourson', '19.9900', 2, 3, '<img src="photos/linkBlanc/linkBlanc.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (68, 'T-shirt Link Ourson', '19.9900', 2, 3, '<img src="photos/linkBlanc/linkBlanc2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (69, 'T-shirt Link Ourson', '0.0000', 5, 3, '<img src="photos/linkBleu/linkBleu.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (70, 'T-shirt Link Ourson', '19.9900', 5, 3, '<img src="photos/linkBleu/linkBleu2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (71, 'T-shirt Évolution Seigneur des anneaux ', '19.9900', 2, 3, '<img src="photos/lotrBlanc/lotrBlanc.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (72, 'T-shirt Évolution Seigneur des anneaux', '19.9900', 2, 3, '<img src="photos/lotrBlanc/lotrBlanc2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (73, 'T-shirt Évolution Seigneur des anneaux ', '19.9900', 6, 3, '<img src="photos/lotrVert/lotrVert.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (74, 'T-shirt Évolution Seigneur des anneaux', '19.9900', 6, 3, '<img src="photos/lotrVert/lotrVert2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (75, 'T-shirt Masque de Majora', '24.9900', 5, 3, '<img src="photos/majoBleu/majoBleu.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (76, 'T-shirt Masque de Majora', '24.9900', 5, 3, '<img src="photos/majoBleu/majoBleu2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (77, 'T-shirt Masque de Majora', '24.9900', 3, 3, '<img src="photos/majoGris/majoGris.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (78, 'T-shirt Masque de Majora', '24.9900', 3, 3, '<img src="photos/majoGris/majoGris2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (79, 'T-shirt Masque de Majora', '24.9900', 8, 3, '<img src="photos/majoKaki/majoKaki.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (80, 'T-shirt Masque de Majora', '24.9900', 8, 3, '<img src="photos/majoKaki/majoKaki2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (81, 'T-shirt Meeseeks', '26.9900', 5, 3, '<img src="photos/mees/mees.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (82, 'T-shirt Meeseeks', '26.9900', 5, 3, '<img src="photos/mees/mees2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (83, 'T-shirt Blanche-Neige Rock', '24.9900', 3, 3, '<img src="photos/mortGris/mortGris.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (84, 'T-shirt Blanche-Neige Rock', '24.9900', 3, 3, '<img src="photos/mortGris/mortGris2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (85, 'T-shirt Blanche-Neige Rock', '24.9900', 4, 3, '<img src="photos/mortRouge/mortRouge.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (86, 'T-shirt Blanche-Neige Rock', '24.9900', 4, 3, '<img src="photos/mortRouge/mortRouge2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (87, 'T-shirt Blanche-Neige Rock', '24.9900', 11, 3, '<img src="photos/mortViolet/mortViolet.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (88, 'T-shirt Blanche-Neige Rock', '24.9900', 11, 3, '<img src="photos/mortViolet/mortViolet2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (89, 'T-shirt Nerd', '22.9900', 2, 3, '<img src="photos/nerdBlanc/nerdBlanc.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (90, 'T-shirt Nerd', '22.9900', 2, 3, '<img src="photos/nerdBlanc/nerdBlanc2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (91, 'T-shirt Nerd', '22.9900', 5, 3, '<img src="photos/nerdBleu/nerdBleu.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (92, 'T-shirt Nerd', '22.9900', 5, 3, '<img src="photos/nerdBleu/nerdBleu2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (93, 'T-shirt Patronum', '26.9900', 5, 3, '<img src="photos/patroBleu/patroBleu.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (94, 'T-shirt Patronum', '26.9900', 5, 3, '<img src="photos/patroBleu/patroBleu2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (95, 'T-shirt Patronum', '26.9900', 10, 3, '<img src="photos/patroCyan/patroCyan.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (96, 'T-shirt Patronum', '26.9900', 10, 3, '<img src="photos/patroCyan/patroCyan2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (97, 'T-shirt Patronum', '26.9900', 1, 3, '<img src="photos/patroNoir/patroNoir.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (98, 'T-shirt Patronum', '26.9900', 1, 3, '<img src="photos/patroNoir/patroNoir2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (99, 'T-shirt Reliques de la Mort', '24.9900', 5, 3, '<img src="photos/relBleu/relNoir.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (100, 'T-shirt Reliques de la Mort', '24.9900', 5, 3, '<img src="photos/relBleu/relNoir2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (101, 'T-shirt Reliques de la Mort', '24.9900', 3, 3, '<img src="photos/relGris/relGris.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (102, 'T-shirt Reliques de la Mort', '24.9900', 3, 3, '<img src="photos/relGris/relGris2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (103, 'T-shirt Reliques de la Mort', '24.9900', 1, 3, '<img src="photos/relNoir/relNoir.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (104, 'T-shirt Reliques de la Mort', '24.9900', 1, 3, '<img src="photos/relNoir/relNoir2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (105, 'T-shirt Singe', '24.9900', 2, 3, '<img src="photos/singeBlanc/singeBlanc.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (106, 'T-shirt Singe', '24.9900', 2, 3, '<img src="photos/singeBlanc/singeBlanc2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (107, 'T-shirt Surf-Loup', '26.9900', 5, 3, '<img src="photos/surfBleu/surfBleu.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (108, 'T-shirt Surf-Loup', '26.9900', 5, 3, '<img src="photos/surfBleu/surfBleu2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (109, 'T-shirt Surf-Loup', '26.9900', 3, 3, '<img src="photos/surfGris/surfGris.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (110, 'T-shirt Surf-Loup', '26.9900', 3, 3, '<img src="photos/surfGris/surfGris2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (111, 'T-shirt Surf-Loup', '26.9900', 1, 1, '<img src="photos/surfNoir/surfNoir.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (112, 'T-shirt Surf-Loup', '26.9900', 1, 3, '<img src="photos/surfNoir/surfNoir2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (113, 'T-shirt It wasn''t me', '26.9900', 3, 3, '<img src="photos/wasntGris/wasntGris.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (114, 'T-shirt It wasn''t me', '26.9900', 3, 3, '<img src="photos/wasntGris/wasntGris2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (115, 'T-shirt It wasn''t me', '26.9900', 4, 3, '<img src="photos/wasntRouge/wasntRouge.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (116, 'T-shirt It wasn''t me', '26.9900', 4, 3, '<img src="photos/wasntRouge/wasntRouge2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (117, 'T-shirt It wasn''t me', '26.9900', 11, 3, '<img src="photos/wasntViolet/wasntViolet.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (118, 'T-shirt It wasn''t me', '26.9900', 11, 3, '<img src="photos/wasntViolet/wasntViolet2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (119, 'T-shirt Wonder Woman', '24.9900', 5, 3, '<img src="photos/wonderBleu/wonderBleu.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (120, 'T-shirt Wonder Woman', '24.9900', 5, 3, '<img src="photos/wonderBleu/wonderBleu2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (121, 'T-shirt Wonder Woman', '24.9900', 3, 3, '<img src="photos/wonderGris/wonderGris.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (122, 'T-shirt Wonder Woman', '24.9900', 3, 3, '<img src="photos/wonderGris/wonderGris2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (123, 'T-shirt Zombie Féministe', '19.9900', 2, 3, '<img src="photos/zombieBlanc/zombieBlanc.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (124, 'T-shirt Zombie Féministe', '19.9900', 2, 3, '<img src="photos/zombieBlanc/zombieBlanc2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (125, 'T-shirt Zombie Féministe', '19.9900', 1, 3, '<img src="photos/zombieNoir/zombieNoir.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (126, 'T-shirt Zombie Féministe', '19.9900', 1, 3, '<img src="photos/zombieNoir/zombieNoir2.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (127, 'T-shirt Zombie Féministe', '19.9900', 4, 3, '<img src="photos/zombieRouge/zombieRouge.jpg">', 10);
INSERT INTO `TSHIRT` VALUES (128, 'T-shirt Zombie Féministe', '19.9900', 4, 3, '<img src="photos/zombieRouge/zombieRouge2.jpg">', 10);
