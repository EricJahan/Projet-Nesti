-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  lun. 18 mars 2019 à 09:56
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
(1, 'Légumes'),
(2, 'Fruits'),
(3, 'Viandes'),
(4, 'Poissons'),
(5, 'Condiments'),
(6, 'Liquides');

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
(5, 'Ail', '3.990', 3, 5, 1),
(6, 'Sel', '1.650', 1, 5, 1000),
(7, 'Poivre', '4.860', 1, 5, 1000),
(8, 'Curcuma', '3.480', 1, 5, 1000),
(9, 'riz', '4.480', 1, 4, 1000),
(10, 'Huile de tournesol', '2.650', 2, 6, 100),
(11, 'Farine', '0.950', 1, 4, 1000),
(12, 'Oeufs', '5.480', 3, 4, 1),
(13, 'Sucre', '0.900', 1, 5, 1000),
(14, 'Beurre', '1.710', 1, 5, 1000),
(15, 'Rhum', '14.500', 2, 6, 100),
(16, 'Poulet', '9.790', 1, 3, 1000),
(17, 'Herbes de provence', '6.250', 1, 5, 1000),
(18, 'Pommes de terre', '1.450', 1, 1, 1000);

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
(1, 'Crevettes sautées curry coco', '1- Décortiquer et laver les crevettes.\r\n2- Faire frire les crevettes dans une poêle avec une cuillère d\'huile et deux gousse d\'ail.\r\n3- Délayer de la pâte de curry (une cuillère à soupe) et un fond d\'eau dans un verre. L\'ajouter dans la poêle avec les crevettes.\r\n4- Ajouter 50cl de crème de coco dans la préparation.\r\n5- Assaisonnez d\'une pincée de sel, de poivre, de curry en poudre et de curcuma.\r\n6- Laissez refroidir une demi-heure / une heure permet aux crevettes de prendre le goût de la coco.\r\n7- Réchauffer au moment du repas.\r\n\r\nNote : Servir avec du riz ou du vermicelle chinois.\r\nNote : Vous pouvez ajouter de la citronnelle selon les goûts.', '4', '1heure'),
(2, 'Pâte à crêpes', 'Etape 1\r\nMettre la farine dans une terrine et former un puits.\r\nEtape 2\r\nY déposer les oeufs entiers, le sucre, l\'huile et le beurre.\r\nEtape 3\r\nMélanger délicatement avec un fouet en ajoutant au fur et à mesure le lait. La pâte ainsi obtenue doit avoir une consistance d\'un liquide légèrement épais.\r\nEtape 4\r\nParfumer de rhum.\r\nEtape 5\r\nFaire chauffer une poêle antiadhésive et la huiler très légèrement. Y verser une louche de pâte, la répartir dans la poêle puis attendre qu\'elle soit cuite d\'un côté avant de la retourner. Cuire ainsi toutes les crêpes à feu doux.\r\n', '4', '30 minutes'),
(3, 'Poulet rôti', '\r\nEtape 1\r\nCette recette est extrêmement simple.\r\nEtape 2\r\nIl vous suffit de mettre le poulet dans un plat à four.\r\nEtape 3\r\nPendant ce temps-là, préchauffer le four à 210-240°C (thermostat 7-8).\r\nEtape 4\r\nPrenez le beurre et découpez-le en morceaux pour le mettre sur le poulet un peu partout.\r\nEtape 5\r\nSalez, poivrez et herbez la bête...\r\nEtape 6\r\nEnsuite, attaquez-vous au patates... Il faut les éplucher et puis les faire tremper dans l\'eau pour les rincer et les essuyer.\r\nEtape 7\r\nIl faut après les découper.\r\nEtape 8\r\nAlors, là, c\'est comme vous le sentez... faites de jolies formes si vous le voulez, moi, je fais simplement des carrés.\r\nEtape 9\r\nEn fait, je prends la pomme de terre, la découpe en longueur, la tourne, et puis après la découpe dans l\'autre longueur et puis je la tourne dans l\'autre sens pour la découper en largeur... et ça, ça fait des sortes de carrés.\r\nEtape 10\r\nEt je mets toutes les pommes de terres dans le plat autour du poulet. Les sale.\r\nEtape 11\r\nEt puis direction le four après avoir arrosé le tout d\'un demi-verre d\'eau.\r\nEtape 12\r\nJe laisse cuire 1h15... plus ou moins en fonction du poulet et des pommes de terre.\r\nEtape 13\r\nJe le tourne régulièrement pendant la cuisson, sur chaque face... Et puis s\'il le faut je réarrose d\'eau... comme ça, les pommes de terre baignent dans le jus. ', '4', '1h15');

-- --------------------------------------------------------

--
-- Structure de la table `relationIF`
--

CREATE TABLE `relationIF` (
  `id_facture` int(11) NOT NULL,
  `id_ingredients` int(11) NOT NULL,
  `quantite_ingredient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `relationRC`
--

CREATE TABLE `relationRC` (
  `id_categorie` int(11) NOT NULL,
  `id_recettes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `relationRI`
--

CREATE TABLE `relationRI` (
  `id_ingredients` int(11) NOT NULL,
  `id_recettes` int(11) NOT NULL,
  `quantite_ingredients` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  ADD KEY `ingredients_unite_mesures_FK` (`id_unite_mesures`),
  ADD KEY `ingredients_categories0_FK` (`id_categories`);

--
-- Index pour la table `recettes`
--
ALTER TABLE `recettes`
  ADD PRIMARY KEY (`id`);

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
-- Index pour la table `unite_mesures`
--
ALTER TABLE `unite_mesures`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `factures`
--
ALTER TABLE `factures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `recettes`
--
ALTER TABLE `recettes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- Contraintes pour la table `relationIF`
--
ALTER TABLE `relationIF`
  ADD CONSTRAINT `relationIF_factures_FK` FOREIGN KEY (`id_facture`) REFERENCES `factures` (`id`),
  ADD CONSTRAINT `relationIF_ingredients0_FK` FOREIGN KEY (`id_ingredients`) REFERENCES `ingredients` (`id`);

--
-- Contraintes pour la table `relationRC`
--
ALTER TABLE `relationRC`
  ADD CONSTRAINT `relationRC_categories_FK` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id`),
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
