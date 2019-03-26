-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mar. 26 mars 2019 à 13:30
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Projet-Nesti`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresses`
--

CREATE TABLE `adresses` (
  `id` int(11) NOT NULL,
  `numeroRue` varchar(10) NOT NULL,
  `nomRue` varchar(100) NOT NULL,
  `codePostal` varchar(50) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `pays` varchar(30) NOT NULL,
  `id_utilisateurs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `adresses`
--

INSERT INTO `adresses` (`id`, `numeroRue`, `nomRue`, `codePostal`, `ville`, `pays`, `id_utilisateurs`) VALUES
(1, '221b', 'Backer Street', 'NW1 6XE', 'Londre', 'Royaume-Uni', 1),
(2, '1938', 'Clinton Street', '62960', 'Metropolis', 'New Troy', 2),
(3, '32b', 'Bld des Âmes charitables', 'NG11 0JN', 'Gotham City', 'New York', 3),
(4, '2066', 'Crist Drive', '94022', 'Los Altos', 'Californie', 4);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom_categorie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom_categorie`) VALUES
(5, 'condiments'),
(7, 'epicerie'),
(2, 'fruits'),
(1, 'legumes'),
(6, 'liquides'),
(4, 'poissons'),
(3, 'viandes');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_recettes`
--

CREATE TABLE `categorie_recettes` (
  `id` int(11) NOT NULL,
  `nom_categorie` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie_recettes`
--

INSERT INTO `categorie_recettes` (`id`, `nom_categorie`) VALUES
(1, 'Saison'),
(2, 'Repas'),
(3, 'Dessert');

-- --------------------------------------------------------

--
-- Structure de la table `factures`
--

CREATE TABLE `factures` (
  `id` int(11) NOT NULL,
  `nomClient` varchar(100) NOT NULL,
  `id_ingredients` int(11) NOT NULL,
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_paiement` date NOT NULL,
  `id_adresses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prix` decimal(15,3) NOT NULL,
  `id_unite_mesures` int(11) NOT NULL,
  `id_categories` int(11) NOT NULL,
  `poids` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ingredients`
--

INSERT INTO `ingredients` (`id`, `nom`, `prix`, `id_unite_mesures`, `id_categories`, `poids`) VALUES
(1, 'Crevettes', '14.000', 1, 4, 1000),
(2, 'Pâte de curry', '16.000', 1, 5, 1000),
(3, 'Curry poudre', '38.330', 1, 5, 1000),
(4, 'Crème de coco', '6.500', 2, 6, 100),
(5, 'Ail', '1.000', 3, 5, 1),
(6, 'Sel', '1.360', 1, 5, 1000),
(7, 'Poivre', '35.000', 1, 5, 1000),
(8, 'Curcuma', '39.480', 1, 5, 1000),
(9, 'riz', '2.130', 1, 7, 1000),
(10, 'Huile de tournesol', '1.980', 2, 6, 100),
(11, 'Farine', '0.950', 1, 7, 1000),
(12, 'Oeufs', '0.360', 3, 7, 1),
(13, 'Sucre', '0.890', 1, 5, 1000),
(14, 'Beurre', '9.120', 1, 5, 1000),
(15, 'Rhum', '17.870', 2, 6, 100),
(16, 'Poulet', '6.450', 1, 3, 1000),
(17, 'Herbes de provence', '23.330', 1, 5, 1000),
(18, 'Pommes de terre', '1.450', 1, 1, 1000),
(19, 'Lait', '0.890', 2, 6, 100);

-- --------------------------------------------------------

--
-- Structure de la table `recettes`
--

CREATE TABLE `recettes` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `quantite_personne` varchar(45) NOT NULL,
  `tempsPreparation` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `recettes`
--

INSERT INTO `recettes` (`id`, `nom`, `description`, `quantite_personne`, `tempsPreparation`) VALUES
(1, 'Crevettes sautées curry coco', '<br>\r\nEtape 1 :\r\nDécortiquer et laver les crevettes.<br>\r\nEtape 2 :\r\nFaire frire les crevettes dans une poêle avec une cuillère d\'huile et deux gousse d\'ail.<br>\r\nEtape 3 : \r\nDélayer de la pâte de curry (une cuillère à soupe) et un fond d\'eau dans un verre. L\'ajouter dans la poêle avec les crevettes.<br>\r\nEtape 4 :\r\nAjouter 50cl de crème de coco dans la préparation.<br>\r\nEtape 5 : \r\nAssaisonnez d\'une pincée de sel, de poivre, de curry en poudre et de curcuma.<br>\r\nEtape 6 : \r\nLaissez refroidir une demi-heure / une heure permet aux crevettes de prendre le goût de la coco.<br>\r\nEtape7 : \r\nRéchauffer au moment du repas.<br>\r\n<br>\r\nNote : <br>\r\n- Servir avec du riz ou du vermicelle chinois.<br>\r\n- Vous pouvez ajouter de la citronnelle selon les goûts.<br>', '4', '1 heure'),
(2, 'Pâte à crêpes', '<br>\r\nEtape 1 : \r\nMettre la farine dans une terrine et former un puits.\r\n<br>\r\nEtape 2 : \r\nY déposer les oeufs entiers, le sucre, l\'huile et le beurre.\r\n<br>\r\nEtape 3 : \r\nMélanger délicatement avec un fouet en ajoutant au fur et à mesure le lait. La pâte ainsi obtenue doit avoir une consistance d\'un liquide légèrement épais.\r\n<br>\r\nEtape 4 : \r\nParfumer de rhum.\r\n<br>\r\nEtape 5 : \r\nFaire chauffer une poêle antiadhésive et la huiler très légèrement. Y verser une louche de pâte, la répartir dans la poêle puis attendre qu\'elle soit cuite d\'un côté avant de la retourner. Cuire ainsi toutes les crêpes à feu doux.\r\n', '4', '30 minutes'),
(3, 'Poulet rôti avec pommes de terre', '<br>\r\nEtape 1 : \r\nMettre le poulet dans un plat à four.\r\n<br>\r\nEtape 2 : \r\nPréchauffer le four à 210-240°C (thermostat 7-8).\r\n<br>\r\nEtape 3 : \r\nDécouper le beurre en morceaux pour en mettre sur le poulet un peu partout.\r\n<br>\r\nEtape 4 : \r\nSaler, poivrer et herber la bête...\r\n<br>\r\nEtape 5 : \r\nEplucher les patates puis les rincer, essuyer et les découper à votre préférence (cubes, tranches...).\r\n<br>\r\nEtape 6 : \r\nMettre toutes les pommes de terres dans le plat autour du poulet. Les saler.\r\n<br>\r\nEtape 7 : \r\nDirection le four après avoir arrosé le tout d\'un demi-verre d\'eau.\r\n<br>\r\nEtape 8 : \r\nLaisser cuire 1h15... plus ou moins en fonction du poulet et des pommes de terre.\r\n<br>\r\nEtape 9 : \r\nTourner régulièrement pendant la cuisson, sur chaque face... Puis s\'il le faut arroser d\'eau pendant la cuisson...', '4', '1h15');

-- --------------------------------------------------------

--
-- Structure de la table `relationCSC`
--

CREATE TABLE `relationCSC` (
  `id_categorie_recette` int(11) NOT NULL,
  `id_sscategorie_recette` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `relationCSC`
--

INSERT INTO `relationCSC` (`id_categorie_recette`, `id_sscategorie_recette`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 8),
(3, 9),
(3, 10);

-- --------------------------------------------------------

--
-- Structure de la table `relationIF`
--

CREATE TABLE `relationIF` (
  `id_facture` int(11) NOT NULL,
  `id_ingredients` int(11) NOT NULL,
  `quantite_ingredients` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `relationRC`
--

CREATE TABLE `relationRC` (
  `id_categorie` int(11) NOT NULL,
  `id_recettes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `relationRC`
--

INSERT INTO `relationRC` (`id_categorie`, `id_recettes`) VALUES
(5, 1),
(11, 2),
(7, 3);

-- --------------------------------------------------------

--
-- Structure de la table `relationRI`
--

CREATE TABLE `relationRI` (
  `id_recettes` int(11) NOT NULL,
  `id_ingredients` int(11) NOT NULL,
  `quantite_ingredients` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `relationRI`
--

INSERT INTO `relationRI` (`id_recettes`, `id_ingredients`, `quantite_ingredients`) VALUES
(1, 1, 400),
(1, 2, 15),
(1, 3, 3),
(1, 4, 50),
(1, 5, 20),
(3, 6, 3),
(3, 7, 1),
(1, 8, 1),
(1, 9, 350),
(1, 10, 2),
(2, 10, 3),
(2, 11, 300),
(2, 12, 3),
(2, 13, 15),
(2, 14, 50),
(3, 14, 50),
(2, 15, 5),
(3, 16, 1200),
(3, 17, 5),
(3, 18, 2000),
(2, 19, 60);

-- --------------------------------------------------------

--
-- Structure de la table `sous_categorie_recettes`
--

CREATE TABLE `sous_categorie_recettes` (
  `id` int(11) NOT NULL,
  `nom_sscategorie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sous_categorie_recettes`
--

INSERT INTO `sous_categorie_recettes` (`id`, `nom_sscategorie`) VALUES
(1, 'printemps'),
(2, 'été'),
(3, 'automne'),
(4, 'hiver'),
(5, 'poissons'),
(6, 'viandes'),
(7, 'volaille'),
(8, 'tartes'),
(9, 'verrine'),
(10, 'entremets'),
(11, 'sucré');

-- --------------------------------------------------------

--
-- Structure de la table `unite_mesures`
--

CREATE TABLE `unite_mesures` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `desc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `unite_mesures`
--

INSERT INTO `unite_mesures` (`id`, `nom`, `desc`) VALUES
(1, 'gr', 'Grammes'),
(2, 'cl', 'Centilitres'),
(3, 'u', 'unite');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `mdp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `mail`, `mdp`) VALUES
(1, 'Holmes', 'Sherlock', 's.holmes@detective.net', '12345'),
(2, 'Kent', 'Clark', 'superman@hotmail.fr', '12345'),
(3, 'Wayne', 'Bruce', 'batman@live.fr', '12345'),
(4, 'Job', 'Steve', 'iphone@apple.com', '12345');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adresses`
--
ALTER TABLE `adresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adresses_utilisateurs_FK` (`id_utilisateurs`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom_categorie` (`nom_categorie`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `categorie_recettes`
--
ALTER TABLE `categorie_recettes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `factures`
--
ALTER TABLE `factures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `factures_adresses_FK` (`id_adresses`);

--
-- Index pour la table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `ingredients_unite_mesures_FK` (`id_unite_mesures`),
  ADD KEY `ingredients_categories0_FK` (`id_categories`);

--
-- Index pour la table `recettes`
--
ALTER TABLE `recettes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- Index pour la table `relationCSC`
--
ALTER TABLE `relationCSC`
  ADD PRIMARY KEY (`id_categorie_recette`,`id_sscategorie_recette`),
  ADD KEY `id_sscategorie_recette` (`id_sscategorie_recette`);

--
-- Index pour la table `relationIF`
--
ALTER TABLE `relationIF`
  ADD PRIMARY KEY (`id_facture`,`id_ingredients`),
  ADD KEY `relationIF_ingredients0_FK` (`id_ingredients`);

--
-- Index pour la table `relationRC`
--
ALTER TABLE `relationRC`
  ADD PRIMARY KEY (`id_categorie`,`id_recettes`),
  ADD KEY `relationRC_recettes0_FK` (`id_recettes`);

--
-- Index pour la table `relationRI`
--
ALTER TABLE `relationRI`
  ADD PRIMARY KEY (`id_ingredients`,`id_recettes`),
  ADD KEY `relationRI_recettes0_FK` (`id_recettes`);

--
-- Index pour la table `sous_categorie_recettes`
--
ALTER TABLE `sous_categorie_recettes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `unite_mesures`
--
ALTER TABLE `unite_mesures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adresses`
--
ALTER TABLE `adresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `categorie_recettes`
--
ALTER TABLE `categorie_recettes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `factures`
--
ALTER TABLE `factures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `recettes`
--
ALTER TABLE `recettes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `sous_categorie_recettes`
--
ALTER TABLE `sous_categorie_recettes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `unite_mesures`
--
ALTER TABLE `unite_mesures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `adresses`
--
ALTER TABLE `adresses`
  ADD CONSTRAINT `adresses_utilisateurs_FK` FOREIGN KEY (`id_utilisateurs`) REFERENCES `utilisateurs` (`id`);

--
-- Contraintes pour la table `factures`
--
ALTER TABLE `factures`
  ADD CONSTRAINT `factures_adresses_FK` FOREIGN KEY (`id_adresses`) REFERENCES `adresses` (`id`);

--
-- Contraintes pour la table `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_categories0_FK` FOREIGN KEY (`id_categories`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `ingredients_unite_mesures_FK` FOREIGN KEY (`id_unite_mesures`) REFERENCES `unite_mesures` (`id`);

--
-- Contraintes pour la table `relationCSC`
--
ALTER TABLE `relationCSC`
  ADD CONSTRAINT `relationcsc_ibfk_1` FOREIGN KEY (`id_categorie_recette`) REFERENCES `categorie_recettes` (`id`),
  ADD CONSTRAINT `relationcsc_ibfk_2` FOREIGN KEY (`id_sscategorie_recette`) REFERENCES `sous_categorie_recettes` (`id`);

--
-- Contraintes pour la table `relationIF`
--
ALTER TABLE `relationIF`
  ADD CONSTRAINT `relationIF_factures_FK` FOREIGN KEY (`id_facture`) REFERENCES `factures` (`id`),
  ADD CONSTRAINT `relationIF_ingredients0_FK` FOREIGN KEY (`id_ingredients`) REFERENCES `ingredients` (`id`);

--
-- Contraintes pour la table `relationRC`
--
ALTER TABLE `relationRC`
  ADD CONSTRAINT `relationRC_categories_FK` FOREIGN KEY (`id_categorie`) REFERENCES `sous_categorie_recettes` (`id`),
  ADD CONSTRAINT `relationRC_recettes0_FK` FOREIGN KEY (`id_recettes`) REFERENCES `recettes` (`id`);

--
-- Contraintes pour la table `relationRI`
--
ALTER TABLE `relationRI`
  ADD CONSTRAINT `relationRI_ingredients_FK` FOREIGN KEY (`id_ingredients`) REFERENCES `ingredients` (`id`),
  ADD CONSTRAINT `relationRI_recettes0_FK` FOREIGN KEY (`id_recettes`) REFERENCES `recettes` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
