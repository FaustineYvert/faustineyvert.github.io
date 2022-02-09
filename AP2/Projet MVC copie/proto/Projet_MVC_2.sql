-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 23 avr. 2021 à 20:38
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
-- Structure de la table `AIMER`
--

CREATE TABLE `AIMER` (
  `Id_PRODUIT` int(11) NOT NULL,
  `Id_CLIENT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `CHAUSSURE`
--

CREATE TABLE `CHAUSSURE` (
  `pointure_CHAUSSURE` int(11) NOT NULL,
  `Id_PRODUIT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `ville_CLIENT` varchar(50) DEFAULT NULL,
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
(11, 'Hainezoo', 'Grenaiche', '2001-11-30', '420 rue de la board', '94520', 'Pentain', '0649211466', 'nzo.degre@free.fr'),
(12, 'Ricola', 'Effaceur', '2020-01-01', '11 rue des gommes', '91000', 'Grigny la grande borne', '0606060606', 'ricola.effaceur@gomme.com');

-- --------------------------------------------------------

--
-- Structure de la table `COMMANDE`
--

CREATE TABLE `COMMANDE` (
  `Id_COMMANDE` int(11) NOT NULL,
  `total_COMMANDE` float DEFAULT NULL,
  `Id_CLIENT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `COMPOSER`
--

CREATE TABLE `COMPOSER` (
  `Id_PRODUIT` int(11) NOT NULL,
  `Id_COMMANDE` int(11) NOT NULL,
  `quantité` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `PRODUIT`
--

CREATE TABLE `PRODUIT` (
  `Id_PRODUIT` int(11) NOT NULL,
  `type_PRODUIT` varchar(50) DEFAULT NULL,
  `genre_PRODUIT` varchar(1) DEFAULT NULL,
  `prix_PRODUIT` float DEFAULT NULL,
  `char_PRODUIT` varchar(1) DEFAULT NULL,
  `photo_PRODUIT` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `PRODUIT`
--

INSERT INTO `PRODUIT` (`Id_PRODUIT`, `type_PRODUIT`, `genre_PRODUIT`, `prix_PRODUIT`, `char_PRODUIT`, `photo_PRODUIT`) VALUES
(1, 'Sweat à capuche', 'M', 19.99, 'V', './resources/img/sweats/1.jpeg'),
(2, 'Sweat à capuche', 'M', 19.99, 'V', './resources/img/sweats/2.jpeg'),
(3, 'Sweat à capuche', 'M', 19.99, 'V', './resources/img/sweats/3.jpeg'),
(4, 'Sweat à capuche', 'M', 19.99, 'V', './resources/img/sweats/4.jpeg'),
(5, 'Sweat à capuche', 'M', 19.99, 'V', './resources/img/sweats/5.jpeg'),
(6, 'Sweat à capuche', 'M', 19.99, 'V', './resources/img/sweats/6.jpeg'),
(7, 'Sweat à capuche', 'M', 19.99, 'V', './resources/img/sweats/7.jpeg'),
(8, 'Sweat à capuche', 'M', 19.99, 'V', './resources/img/sweats/8.jpeg'),
(9, 'Sweat à capuche', 'M', 19.99, 'V', './resources/img/sweats/9.jpeg'),
(10, 'Sweat à capuche', 'M', 19.99, 'V', './resources/img/sweats/10.jpeg'),
(11, 'Pull', 'M', 9.99, 'V', './resources/img/pulls/11.jpeg'),
(12, 'Pull', 'M', 9.99, 'V', './resources/img/pulls/12.jpeg'),
(13, 'Pull', 'M', 9.99, 'V', './resources/img/pulls/13.jpeg'),
(14, 'Pull', 'M', 9.99, 'V', './resources/img/pulls/14.jpeg'),
(15, 'Pull', 'M', 9.99, 'V', './resources/img/pulls/15.jpeg'),
(16, 'Pull', 'M', 9.99, 'V', './resources/img/pulls/16.jpeg'),
(17, 'Pull', 'M', 9.99, 'V', './resources/img/pulls/17.jpeg'),
(18, 'Pull', 'M', 9.99, 'V', './resources/img/pulls/18.jpeg'),
(19, 'Pull', 'M', 9.99, 'V', './resources/img/pulls/19.jpeg'),
(20, 'T-shirt', 'M', 5.99, 'V', './resources/img/tshirts/20.jpeg'),
(21, 'T-shirt', 'M', 5.99, 'V', './resources/img/tshirts/21.jpeg'),
(22, 'T-shirt', 'M', 5.99, 'V', './resources/img/tshirts/22.jpeg'),
(23, 'T-shirt', 'M', 5.99, 'V', './resources/img/tshirts/23.jpeg'),
(24, 'T-shirt', 'M', 5.99, 'V', './resources/img/tshirts/24.jpeg'),
(25, 'T-shirt', 'M', 5.99, 'V', './resources/img/tshirts/25.jpeg'),
(26, 'T-shirt', 'M', 5.99, 'V', './resources/img/tshirts/26.jpeg'),
(27, 'T-shirt', 'M', 5.99, 'V', './resources/img/tshirts/27.jpeg'),
(28, 'T-shirt', 'M', 5.99, 'V', './resources/img/tshirts/28.jpeg'),
(29, 'T-shirt', 'M', 5.99, 'V', './resources/img/tshirts/29.jpeg'),
(30, 'T-shirt', 'M', 5.99, 'V', './resources/img/tshirts/30.jpeg'),
(31, 'Jeans', 'H', 29.99, 'V', './resources/img/jeans/H/31.jpeg'),
(32, 'Jeans', 'H', 29.99, 'V', './resources/img/jeans/H/32.jpeg'),
(33, 'Jeans', 'H', 29.99, 'V', './resources/img/jeans/H/33.jpeg'),
(34, 'Jeans', 'H', 29.99, 'V', './resources/img/jeans/H/34.jpeg'),
(35, 'Jeans', 'H', 29.99, 'V', './resources/img/jeans/H/35.jpeg'),
(36, 'Jeans', 'F', 29.99, 'V', './resources/img/jeans/F/36.jpeg'),
(37, 'Jeans', 'F', 29.99, 'V', './resources/img/jeans/F/37.jpeg'),
(38, 'Jeans', 'F', 29.99, 'V', './resources/img/jeans/F/38.jpeg'),
(39, 'Jeans', 'F', 29.99, 'V', './resources/img/jeans/F/39.jpeg'),
(40, 'Short', 'H', 24.99, 'V', './resources/img/shorts/H/40.jpeg'),
(41, 'Short', 'H', 24.99, 'V', './resources/img/shorts/H/41.jpeg'),
(42, 'Short', 'H', 24.99, 'V', './resources/img/shorts/H/42.jpeg'),
(43, 'Short', 'H', 24.99, 'V', './resources/img/shorts/H/43.jpeg'),
(44, 'Short', 'F', 19.99, 'V', './resources/img/shorts/F/44.jpeg'),
(45, 'Short', 'F', 19.99, 'V', './resources/img/shorts/F/45.jpeg'),
(46, 'Short', 'F', 19.99, 'V', './resources/img/shorts/F/46.jpeg'),
(47, 'Short', 'F', 19.99, 'V', './resources/img/shorts/F/47.jpeg'),
(48, 'Chaussure basse', 'M', 89.99, 'C', './resources/img/basse/48.jpeg'),
(49, 'Chaussure basse', 'M', 339.99, 'C', './resources/img/basse/49.jpeg'),
(50, 'Chaussure basse', 'M', 149.99, 'C', './resources/img/basse/50.jpeg'),
(51, 'Chaussure basse', 'M', 130, 'C', './resources/img/basse/51.jpeg'),
(52, 'Chaussure basse', 'M', 110, 'C', './resources/img/basse/52.jpeg'),
(53, 'Chaussure basse', 'M', 150, 'C', './resources/img/basse/53.jpeg'),
(54, 'Chaussure basse', 'M', 100, 'C', './resources/img/basse/54.jpeg'),
(55, 'Chaussure basse', 'M', 99.99, 'C', './resources/img/basse/55.jpeg'),
(56, 'Chaussure montante', 'M', 95, 'C', './resources/img/montante/56.jpeg'),
(57, 'Chaussure montante', 'M', 70, 'C', './resources/img/montante/57.jpeg'),
(58, 'Chaussure montante', 'M', 79.99, 'C', './resources/img/montante/58.jpeg'),
(59, 'Chaussure montante', 'M', 280, 'C', './resources/img/montante/59.jpeg'),
(60, 'Chaussure montante', 'M', 450, 'C', './resources/img/montante/60.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `VETEMENT`
--

CREATE TABLE `VETEMENT` (
  `taille_VETEMENT` varchar(3) NOT NULL,
  `Id_PRODUIT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `AIMER`
--
ALTER TABLE `AIMER`
  ADD PRIMARY KEY (`Id_PRODUIT`,`Id_CLIENT`),
  ADD KEY `Id_CLIENT` (`Id_CLIENT`);

--
-- Index pour la table `CHAUSSURE`
--
ALTER TABLE `CHAUSSURE`
  ADD PRIMARY KEY (`pointure_CHAUSSURE`),
  ADD UNIQUE KEY `Id_PRODUIT` (`Id_PRODUIT`);

--
-- Index pour la table `CLIENT`
--
ALTER TABLE `CLIENT`
  ADD PRIMARY KEY (`Id_CLIENT`);

--
-- Index pour la table `COMMANDE`
--
ALTER TABLE `COMMANDE`
  ADD PRIMARY KEY (`Id_COMMANDE`),
  ADD KEY `Id_CLIENT` (`Id_CLIENT`);

--
-- Index pour la table `COMPOSER`
--
ALTER TABLE `COMPOSER`
  ADD PRIMARY KEY (`Id_PRODUIT`,`Id_COMMANDE`),
  ADD KEY `Id_COMMANDE` (`Id_COMMANDE`);

--
-- Index pour la table `PRODUIT`
--
ALTER TABLE `PRODUIT`
  ADD PRIMARY KEY (`Id_PRODUIT`);

--
-- Index pour la table `VETEMENT`
--
ALTER TABLE `VETEMENT`
  ADD PRIMARY KEY (`taille_VETEMENT`),
  ADD UNIQUE KEY `Id_PRODUIT` (`Id_PRODUIT`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `CLIENT`
--
ALTER TABLE `CLIENT`
  MODIFY `Id_CLIENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `COMMANDE`
--
ALTER TABLE `COMMANDE`
  MODIFY `Id_COMMANDE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `PRODUIT`
--
ALTER TABLE `PRODUIT`
  MODIFY `Id_PRODUIT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `AIMER`
--
ALTER TABLE `AIMER`
  ADD CONSTRAINT `aimer_ibfk_1` FOREIGN KEY (`Id_PRODUIT`) REFERENCES `PRODUIT` (`Id_PRODUIT`),
  ADD CONSTRAINT `aimer_ibfk_2` FOREIGN KEY (`Id_CLIENT`) REFERENCES `CLIENT` (`Id_CLIENT`);

--
-- Contraintes pour la table `CHAUSSURE`
--
ALTER TABLE `CHAUSSURE`
  ADD CONSTRAINT `chaussure_ibfk_1` FOREIGN KEY (`Id_PRODUIT`) REFERENCES `PRODUIT` (`Id_PRODUIT`);

--
-- Contraintes pour la table `COMMANDE`
--
ALTER TABLE `COMMANDE`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`Id_CLIENT`) REFERENCES `CLIENT` (`Id_CLIENT`);

--
-- Contraintes pour la table `COMPOSER`
--
ALTER TABLE `COMPOSER`
  ADD CONSTRAINT `composer_ibfk_1` FOREIGN KEY (`Id_PRODUIT`) REFERENCES `PRODUIT` (`Id_PRODUIT`),
  ADD CONSTRAINT `composer_ibfk_2` FOREIGN KEY (`Id_COMMANDE`) REFERENCES `COMMANDE` (`Id_COMMANDE`);

--
-- Contraintes pour la table `VETEMENT`
--
ALTER TABLE `VETEMENT`
  ADD CONSTRAINT `vetement_ibfk_1` FOREIGN KEY (`Id_PRODUIT`) REFERENCES `PRODUIT` (`Id_PRODUIT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
