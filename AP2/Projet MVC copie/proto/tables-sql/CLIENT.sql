-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 22 avr. 2021 à 15:23
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Projet MVC 2`
--

-- --------------------------------------------------------

--
-- Structure de la table `CLIENT`
--

CREATE TABLE `CLIENT` (
  `Id_CLIENT` int(11) NOT NULL,
  `prenom_CLIENT` varchar(20) DEFAULT NULL,
  `nom_CLIENT` varchar(20) DEFAULT NULL,
  `date_de_naissance_CLIENT` date DEFAULT NULL,
  `adresse_CLIENT` varchar(50) DEFAULT NULL,
  `code_postal_CLIENT` varchar(10) DEFAULT NULL,
  `ville_CLIENT` varchar(20) DEFAULT NULL,
  `telephone_CLIENT` varchar(15) DEFAULT NULL,
  `mail_CLIENT` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `CLIENT`
--

INSERT INTO `CLIENT` (`Id_CLIENT`, `prenom_CLIENT`, `nom_CLIENT`, `date_de_naissance_CLIENT`, `adresse_CLIENT`, `code_postal_CLIENT`, `ville_CLIENT`, `telephone_CLIENT`, `mail_CLIENT`) VALUES
(1, 'Benjamin', 'Bongage', '2002-01-13', '17 rue du pain au chocolat', '78069', 'Vairseilles', '0676394376', 'benjamin.bongage@gmail.com'),
(2, 'Matias', 'Rebecco', '2002-08-14', '56 rue des parapluies', '75013', 'Paris', '0734528632', 'matias.rebeco@hotmail.fr'),
(3, 'Jadde', 'Vingt-Son', '2002-07-23', '98 rue des sugar daddy', '75007', 'Paris', '0635694260', 'vingtaine.jade@gmail.com'),
(4, 'Cloais', 'Deux-sous-cent', '2000-11-21', '43 avenue des riches', '75016', 'Paris', '0607652390', 'centsous.cloais@free.fr'),
(5, 'Chahaut', 'Idée', '1986-03-02', '12 chemin des bubble tea', '94470', 'Crétailles', '0752083021', 'chatonlove94@gmail.com'),
(6, 'Jairaume', 'Deux-sous-cent', '2007-07-26', '43 avenue des riches', '75016', 'Paris', '0745793217', 'jaijai.zoudii@outlook.com'),
(7, 'Axaile', 'Lefromage', '2001-12-05', '7 rue des inconnus', '92880', 'Ruaille Maleméson', '0642298734', 'axou92@orange.fr'),
(8, 'Monsieur', 'Jaune', '1803-10-04', '99 avenue des programmeurs', '91390', 'Paix Hache Paie', '0648392093', 'couleur.jaune@free.fr'),
(9, 'Catcat', 'Bang', '2005-06-09', '700 avenue des sneakers', '75016', 'Paris', '0743976012', '44.cillitbang@gmail.com'),
(10, 'Floriable', 'Bizard', '2002-05-03', '2 chemin des fleurs', '93040', 'Livre Gran', '0688439284', 'queenfloflo93@gmail.com'),
(11, 'Hainezoo', 'Grenaiche', '2001-11-30', '420 rue de la board', '94520', 'Pentain', '0649211466', 'nzo.degre@free.fr');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `CLIENT`
--
ALTER TABLE `CLIENT`
  ADD PRIMARY KEY (`Id_CLIENT`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `CLIENT`
--
ALTER TABLE `CLIENT`
  MODIFY `Id_CLIENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
