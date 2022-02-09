-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 22 avr. 2021 à 15:24
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
-- Structure de la table `PRODUIT`
--

CREATE TABLE `PRODUIT` (
  `Id_PRODUIT` int(11) NOT NULL,
  `type_PRODUIT` varchar(50) DEFAULT NULL,
  `genre_PRODUIT` varchar(1) DEFAULT NULL,
  `prix_PRODUIT` float DEFAULT NULL,
  `char_PRODUIT` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `PRODUIT`
--

INSERT INTO `PRODUIT` (`Id_PRODUIT`, `type_PRODUIT`, `genre_PRODUIT`, `prix_PRODUIT`, `char_PRODUIT`) VALUES
(1, 'Sweat à capuche', 'M', 19.99, 'V'),
(2, 'Sweat à capuche', 'M', 19.99, 'V'),
(3, 'Sweat à capuche', 'M', 19.99, 'V'),
(4, 'Sweat à capuche', 'M', 19.99, 'V'),
(5, 'Sweat à capuche', 'M', 19.99, 'V'),
(6, 'Sweat à capuche', 'M', 19.99, 'V'),
(7, 'Sweat à capuche', 'M', 19.99, 'V'),
(8, 'Sweat à capuche', 'M', 19.99, 'V'),
(9, 'Sweat à capuche', 'M', 19.99, 'V'),
(10, 'Sweat à capuche', 'M', 19.99, 'V'),
(11, 'Pull', 'M', 9.99, 'V'),
(12, 'Pull', 'M', 9.99, 'V'),
(13, 'Pull', 'M', 9.99, 'V'),
(14, 'Pull', 'M', 9.99, 'V'),
(15, 'Pull', 'M', 9.99, 'V'),
(16, 'Pull', 'M', 9.99, 'V'),
(17, 'Pull', 'M', 9.99, 'V'),
(18, 'Pull', 'M', 9.99, 'V'),
(19, 'Pull', 'M', 9.99, 'V'),
(20, 'T-shirt', 'M', 5.99, 'V'),
(21, 'T-shirt', 'M', 5.99, 'V'),
(22, 'T-shirt', 'M', 5.99, 'V'),
(23, 'T-shirt', 'M', 5.99, 'V'),
(24, 'T-shirt', 'M', 5.99, 'V'),
(25, 'T-shirt', 'M', 5.99, 'V'),
(26, 'T-shirt', 'M', 5.99, 'V'),
(27, 'T-shirt', 'M', 5.99, 'V'),
(28, 'T-shirt', 'M', 5.99, 'V'),
(29, 'T-shirt', 'M', 5.99, 'V'),
(30, 'T-shirt', 'M', 5.99, 'V'),
(31, 'Jeans', 'H', 29.99, 'V'),
(32, 'Jeans', 'H', 29.99, 'V'),
(33, 'Jeans', 'H', 29.99, 'V'),
(34, 'Jeans', 'H', 29.99, 'V'),
(35, 'Jeans', 'H', 29.99, 'V'),
(36, 'Jeans', 'F', 29.99, 'V'),
(37, 'Jeans', 'F', 29.99, 'V'),
(38, 'Jeans', 'F', 29.99, 'V'),
(39, 'Jeans', 'F', 29.99, 'V'),
(40, 'Short', 'H', 24.99, 'V'),
(41, 'Short', 'H', 24.99, 'V'),
(42, 'Short', 'H', 24.99, 'V'),
(43, 'Short', 'H', 24.99, 'V'),
(44, 'Short', 'F', 19.99, 'V'),
(45, 'Short', 'F', 19.99, 'V'),
(46, 'Short', 'F', 19.99, 'V'),
(47, 'Short', 'F', 19.99, 'V'),
(48, 'Chaussure basse', 'M', 89.99, 'C'),
(49, 'Chaussure basse', 'M', 339.99, 'C'),
(50, 'Chaussure basse', 'M', 149.99, 'C'),
(51, 'Chaussure basse', 'M', 130, 'C'),
(52, 'Chaussure basse', 'M', 110, 'C'),
(53, 'Chaussure basse', 'M', 150, 'C'),
(54, 'Chaussure basse', 'M', 100, 'C'),
(55, 'Chaussure basse', 'M', 99.99, 'C'),
(56, 'Chaussure montante', 'M', 95, 'C'),
(57, 'Chaussure montante', 'M', 70, 'C'),
(58, 'Chaussure montante', 'M', 79.99, 'C'),
(59, 'Chaussure montante', 'M', 280, 'C'),
(60, 'Chaussure montante', 'M', 450, 'C');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `PRODUIT`
--
ALTER TABLE `PRODUIT`
  ADD PRIMARY KEY (`Id_PRODUIT`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `PRODUIT`
--
ALTER TABLE `PRODUIT`
  MODIFY `Id_PRODUIT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
