-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 09 jan. 2026 à 14:43
-- Version du serveur : 8.0.44
-- Version de PHP : 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cinema`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `id_acteur` int NOT NULL,
  `nom` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_naissance` date NOT NULL,
  `nb_film` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`id_acteur`, `nom`, `prenom`, `date_naissance`, `nb_film`) VALUES
(1, 'DiCaprio', 'Leonardo', '1974-11-11', 55),
(2, 'Pitt', 'Brad', '1963-12-18', 60),
(3, 'Ford', 'Harrison', '1942-07-13', 56),
(4, 'Cruise', 'Tom', '1962-07-03', 50),
(5, 'Washington', 'Denzel', '1954-12-28', 55),
(6, 'Cassel', 'Vincent', '1966-11-23', 60),
(7, 'Hamill', 'Mark', '1951-09-25', 45),
(8, 'Reno', 'Jean', '1948-07-30', 75),
(9, 'Clooney', 'George', '1961-05-06', 70),
(10, 'Reeves', 'Keanu', '1964-09-02', 70),
(11, 'Depp', 'Johnny', '1963-06-09', 80),
(12, 'Dujardin', 'Jean', '1972-06-19', 50);

-- --------------------------------------------------------

--
-- Structure de la table `acteur_film`
--

CREATE TABLE `acteur_film` (
  `id_acteur` int NOT NULL,
  `id_film` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `acteur_film`
--

INSERT INTO `acteur_film` (`id_acteur`, `id_film`) VALUES
(3, 2),
(7, 2);

-- --------------------------------------------------------

--
-- Structure de la table `casting`
--

CREATE TABLE `casting` (
  `id_acteur` int NOT NULL,
  `id_film` int NOT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nb_jour_tournage` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `casting`
--

INSERT INTO `casting` (`id_acteur`, `id_film`, `role`, `nb_jour_tournage`) VALUES
(3, 2, 'Han Solo', 200),
(7, 2, 'Luke Skywalker', 210);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id_film` int NOT NULL,
  `titre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `genre(s)` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_sortie` date NOT NULL,
  `pays` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_realisateur` int NOT NULL,
  `distributeur` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `duree` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id_film`, `titre`, `genre(s)`, `date_sortie`, `pays`, `id_realisateur`, `distributeur`, `duree`) VALUES
(1, 'Alien', 'Science fiction', '2016-01-01', 'Amérique', 1, 'Universal ', 117),
(2, 'Stars Wars', 'Science Fiction', '2026-01-01', 'Amérique', 2, 'Lucas Films', 124),
(3, 'Inception', 'Science Fiction', '2010-07-21', 'Amérique', 3, 'Warner Bros', 148),
(4, 'Titanic', 'Drame / Romance', '1998-01-07', 'Amérique', 4, '20th Century Fox', 195),
(5, 'Gladiator', 'Action / Drame', '2000-05-05', 'Amérique', 5, 'Universal', 155),
(6, 'Le Dîner de cons', 'Comédie', '1998-04-15', 'France', 6, 'Gaumont', 80),
(7, 'Intouchables', 'Comédie / Drame', '2011-11-02', 'France', 7, 'Gaumont', 112),
(8, 'Matrix', 'Science Fiction', '1999-06-23', 'Amérique', 8, 'Warner Bros', 136),
(9, 'The Dark Knight', 'Action', '2008-07-16', 'Amérique', 9, 'Warner Bros', 152),
(10, 'Pulp Fiction', 'Policier', '1994-10-14', 'Amérique', 10, 'Miramax', 154);

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id_pays` int NOT NULL,
  `libelle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `id_realisateur` int NOT NULL,
  `nom` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_naissance` date NOT NULL,
  `nb_film_ecrit` int NOT NULL,
  `nb_film_produit` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`id_realisateur`, `nom`, `prenom`, `date_naissance`, `nb_film_ecrit`, `nb_film_produit`) VALUES
(1, 'Scott', 'Ridley', '2005-09-01', 20, 20),
(2, 'Lucas', 'Georges', '1950-01-16', 15, 15),
(4, 'Cameron', 'James', '1954-08-16', 18, 22),
(6, 'Burton', 'Tim', '1958-08-25', 20, 25),
(10, 'Zemeckis', 'Robert', '1951-05-14', 22, 28);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`id_acteur`);

--
-- Index pour la table `acteur_film`
--
ALTER TABLE `acteur_film`
  ADD PRIMARY KEY (`id_acteur`,`id_film`),
  ADD KEY `id_film` (`id_film`);

--
-- Index pour la table `casting`
--
ALTER TABLE `casting`
  ADD KEY `id_film` (`id_film`),
  ADD KEY `id_acteur` (`id_acteur`) USING BTREE;

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`),
  ADD KEY `id_realisateur` (`id_realisateur`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id_pays`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`id_realisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `id_acteur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `casting`
--
ALTER TABLE `casting`
  MODIFY `id_acteur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id_film` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `id_pays` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `id_realisateur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `acteur_film`
--
ALTER TABLE `acteur_film`
  ADD CONSTRAINT `acteur_film_ibfk_1` FOREIGN KEY (`id_acteur`) REFERENCES `acteur` (`id_acteur`),
  ADD CONSTRAINT `acteur_film_ibfk_2` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
