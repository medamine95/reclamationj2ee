-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 06 déc. 2017 à 20:38
-- Version du serveur :  10.1.28-MariaDB
-- Version de PHP :  7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `j2ee`
--

-- --------------------------------------------------------

--
-- Structure de la table `loginadmin`
--

CREATE TABLE `loginadmin` (
  `user` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `loginadmin`
--

INSERT INTO `loginadmin` (`user`, `password`) VALUES
('admin', 'adminpassword123');

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

CREATE TABLE `reclamation` (
  `id` int(25) NOT NULL,
  `nomr` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `city` varchar(20) NOT NULL,
  `reclamationtxt` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reclamation`
--

INSERT INTO `reclamation` (`id`, `nomr`, `prenom`, `city`, `reclamationtxt`) VALUES
(1, 'null', 'null', 'null', 'null'),
(2, 'Mohamed', 'Amine', 'Tunis', 'oh yeah '),
(3, 'null', 'null', 'null', 'null'),
(4, 'KILLED', 'FOR', 'VALAHALA', 'fama zebla lahné ijew a3mlou tala bélehi  ! '),
(6, 'null', 'null', 'null', 'null'),
(7, 'null', 'null', 'null', 'null'),
(8, 'null', 'null', 'null', 'null'),
(9, 'null', 'null', 'null', 'null'),
(10, 'null', 'null', 'null', 'null');

-- --------------------------------------------------------

--
-- Structure de la table `responsable`
--

CREATE TABLE `responsable` (
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `responsable`
--

INSERT INTO `responsable` (`first_name`, `last_name`, `username`, `password`) VALUES
('KILL', 'BILL', 'REVED', '123'),
('KILL', 'BILL', 'REVED', '123'),
('KILL', 'KILL', 'KILL', '123'),
('null', 'null', 'null', 'null'),
('karfewi', 'med amine', 'med', '123'),
('null', 'null', 'null', 'null');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`first_name`, `last_name`, `username`, `password`) VALUES
('', '', 'ghfhgf', ''),
('anis', 'haweri', 'karfewi', '123'),
('aze', 'er', 'er', 'erer'),
('ghg', 'fghfgh', 'ohyeah', '12'),
('hmidi', 'marwen', 'karfa3', '123'),
('hukj', '', '', ''),
('KILL', 'BILL', 'v2', 'hunt'),
('med', 'amine', 'mohamed', '123'),
('sayeb', 'ya3n', 'REV', '123'),
('supressed', 'responsable', 'Rolo', '123'),
('taib', 'adhibi', 'karfa', '123');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `loginadmin`
--
ALTER TABLE `loginadmin`
  ADD PRIMARY KEY (`user`);

--
-- Index pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`first_name`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `reclamation`
--
ALTER TABLE `reclamation`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
