

DROP TABLE IF EXISTS `contract`;
CREATE TABLE IF NOT EXISTS `contract` (
  `Id_contract` int(11) NOT NULL,
  `Marge` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `contract` (`Id_contract`, `Marge`) VALUES
(1, 5),
(2, 10),
(3, 15),
(4, 20),
(5, 25);

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Phone number` int(11) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `mdp` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `customer` (`id`, `Name`, `Phone number`, `Email`, `mdp`) VALUES

(1, 'jacques', 610203060, 'jacques.sparow@jaipasdidee.fr', 'azerty'),
(2, 'michel', 690807060, 'michel.cestle@bresil.fr', 'azerty'),
(3, 'lucifer', 666666666, 'lucifer.ilfaitchaud@enfer.fr', 'azerty'),
(4, 'noel', 3630, 'noel.pere@polenord.fr', 'azerty'),
(5, 'mike', 611223366, 'mike.et@disney.fr', 'azerty'),
(6, 'sauce', 612405060, 'sauce.no@ketchup.fr', 'azerty'),
(7, 'barak', 651121111, 'barak.omama@maisonblanccasse.fr', 'azerty'),
(8, 'urge', 601816911, 'urge.ence@samu.fr', 'azerty');


DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `Id_product` int(11) NOT NULL,
  `Name_product` varchar(250) NOT NULL,
  `Cout_de_fabrication` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


INSERT INTO `product` (`Id_product`, `Name_product`, `Cout_de_fabrication`) VALUES
(1, 'pneu', 150),(2, 'portiere', 200),
(3, 'pot_d_echappement', 45),
(4, 'essuie_glace', 20),
(5, 'culasse', 400),
(6, 'siege', 42.5),
(7, 'bougie', 15),
(8, 'enjoliveur', 30),
(9, 'volant', 60),
(10, 'tapis_de_sol', 22);
COMMIT;
