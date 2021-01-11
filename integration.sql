-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  lun. 11 jan. 2021 à 08:25
-- Version du serveur :  8.0.18
-- Version de PHP :  7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `integration`
--

-- --------------------------------------------------------

--
-- Structure de la table `contract`
--

DROP TABLE IF EXISTS `contract`;
CREATE TABLE IF NOT EXISTS `contract` (
  `Id_contract` int(11) NOT NULL,
  `Marge` float NOT NULL,
  PRIMARY KEY (`Id_contract`),
  UNIQUE KEY `Id_contract` (`Id_contract`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contract`
--

INSERT INTO `contract` (`Id_contract`, `Marge`) VALUES
(1, 5),
(2, 10),
(3, 15),
(4, 20),
(5, 25);

-- --------------------------------------------------------

--
-- Structure de la table `costumer`
--

DROP TABLE IF EXISTS `costumer`;
CREATE TABLE IF NOT EXISTS `costumer` (
  `id` int(11) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Phone number` int(11) NOT NULL,
  `Email address` varchar(250) NOT NULL,
  `mdp` varchar(250) NOT NULL,
  `Token` varchar(250) NOT NULL,
  `id_contract` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_costumer_contract` (`id_contract`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `costumer`
--

INSERT INTO `costumer` (`id`, `Name`, `Phone number`, `Email address`, `mdp`, `Token`, `id_contract`) VALUES
(1, 'jacques', 610203060, 'jacques.sparow@jaipasdidee.fr', 'azerty', 't7hjd', 0),
(2, 'michel', 690807060, 'michel.cestle@bresil.fr', 'azerty', 'gkq2b', 0),
(3, 'lucifer', 666666666, 'lucifer.ilfaitchaud@enfer.fr', 'azerty', 'hdstr', 0),
(4, 'noel', 3630, 'noel.pere@polenord.fr', 'azerty', 'vty45', 0),
(5, 'mike', 611223366, 'mike.et@disney.fr', 'azerty', '6rzwc', 0),
(6, 'sauce', 612405060, 'sauce.no@ketchup.fr', 'azerty', 'mlkph', 0),
(7, 'barak', 651121111, 'barak.omama@maisonblanccasse.fr', 'azerty', 'ops5m', 0),
(8, 'urge', 601816911, 'urge.ence@samu.fr', 'azerty', '7ht3n', 0);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `Id_product` int(11) NOT NULL,
  `Name_product` varchar(250) NOT NULL,
  `Cout_de_fabrication` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`Id_product`, `Name_product`, `Cout_de_fabrication`) VALUES
(1, 'pneu', 150),
(2, 'portiere', 200),
(3, 'pot_d_echappement', 45),
(4, 'essuie_glace', 20),
(5, 'culasse', 400),
(6, 'siege', 42.5),
(7, 'bougie', 15),
(8, 'enjoliveur', 30),
(9, 'volant', 60),
(10, 'tapis_de_sol', 22);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
