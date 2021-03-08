-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 19 Mai 2019 à 09:22
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestion_des_commandes`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `numClient` varchar(15) NOT NULL,
  `nomClient` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`numClient`, `nomClient`) VALUES
('1231232', 'eratet');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `numClient` varchar(50) NOT NULL,
  `numProduit` varchar(50) NOT NULL,
  `qte` int(15) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `numProduit` varchar(50) NOT NULL,
  `design` varchar(50) NOT NULL,
  `pu` int(15) NOT NULL,
  `stock` int(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`numProduit`, `design`, `pu`, `stock`) VALUES
('slfksjfkjskdjk', 'dsfkljskfjsldj', 123, 12),
('dfg', 'tyu', 567, 34),
('moi', 'sdfkls', 3, 52),
('ix', 'sdjfksdfj', 352, 234),
('a', 'aa', 3, 5),
('b', 'aa', 3, 5),
('c', 'aa', 3, 5),
('bd', 'sdkfj', 3, 35);

-- --------------------------------------------------------

--
-- Structure de la table `usrer`
--

CREATE TABLE `usrer` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `usrer`
--

INSERT INTO `usrer` (`id`, `username`, `password`) VALUES
(1, 'tatamo', '1212'),
(4, 'toto', '1313');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`numClient`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`numClient`,`numProduit`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`numProduit`);

--
-- Index pour la table `usrer`
--
ALTER TABLE `usrer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `usrer`
--
ALTER TABLE `usrer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
