-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: recettesMaison
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Apéritif'),(2,'Entrée'),(3,'Plat'),(4,'Plat Complet'),(5,'Accompagnement'),(6,'Dessert');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20210203100041','2021-02-03 11:00:45',1236);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (27,1,'tranches de boeuf','20 tranches'),(28,1,'huile d\'olive','2 càs'),(29,1,'jus de citron','4 càs'),(30,1,'parmesan rapé','20g'),(31,2,'riz','200g'),(32,2,'carotte','4'),(33,2,'chou chinois','5 feuilles'),(34,2,'champignons noirs','1 poignet'),(35,2,'mini épis maïs','1 bocal'),(36,2,'oeuf','2'),(37,2,'blancs poulet','2 filets'),(38,3,'mascarpone','200g'),(39,3,'oeuf','3'),(40,3,'sucre','200g'),(41,3,'biscuit cuiller','30 biscuits'),(42,3,'café','1 tasse'),(43,3,'chocolat poudre','20g'),(44,4,'pate feuilleté','1'),(45,4,'knacki','10'),(46,5,'haricots-verts','200g'),(47,5,'beurre','1 noix'),(48,5,'échalotte','1 tête'),(49,5,'crème fraîche','50ml'),(50,6,'poulet entier','1 entier'),(51,6,'ail','1 tête'),(52,6,'huile d\'olive','1 filet');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (9,1,'assiette'),(10,2,'wok'),(11,2,'poele'),(12,2,'bol'),(13,3,'batteur'),(14,4,'four'),(15,5,'casserole'),(16,6,'four');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,2,'Carpaccio de boeuf','1. Étaler les tranches de boeuf sur un plat (sans qu\'elles se chevauchent).\r\n2. Verser le jus du citron et l\'huile d\'olive, sur la viande.\r\n3. Ajouter les baies roses, les graines de coriandre et l\'oignon haché finement.\r\n4. Et saupoudrer de parmesan.\r\n5. Laisser mariner au moins 2 heures.Au moment de servir, ajouter la ciboulette finement ciselée.','https://mf.imdoc.fr/content/3/4/7/523474/carpaccio-wd.jpg',1),(2,6,'Bol renversé','1.Emincer les blancs de poulet, les saler, poivrer\r\n2.Emincer le chou chinois, couper les carottes en rondelles fines\r\n3.Faire tremper les champignons noirs dans de l\'eau chaude, puis les couper en lamelles. Ecraser les gousses d\'ail.\r\n4.Cuisson : faire revenir les morceaux de poulet dans un peu d\'huile chaude.\r\n5.Ajouter les légumes (chou chinois, carottes, champignons) ainsi que l\'ail écrasé.\r\n6.Mélanger dans un bol 2 cuillères à soupe de sauce soja, 2 cuillères à soupe de sauce d\'huitres, 2 cuillères à soupe d\'eau et 1 cuillère à soupe de fécule de maïs.\r\n7.Verser ce mélange sur le poulet et les légumes, laisser mijoter à feu vif pendant 3 minutes.\r\n8.Dans une autre casserole, faire cuire les 4 oeufs au plat et les réserver de côté.\r\n9.Comment servir cette préparation :\r\n- prendre 4 bols\r\n- y verser d\'abord l\'oeuf au plat,\r\n- puis les légumes et poulet en sauce et en dernier le riz\r\n- bien tasser le tout au fond du bol\r\n- poser une assiette sur chaque bol à l\'envers et, devant chaque convive, retourner délicatement l\'assiette et le bol sans les séparer.\r\n10.Tourner le bol en le soulevant doucement, afin de faire sortir la préparation sans qu\'elle ne s\'écroule.\r\n11.Déguster','https://i.pinimg.com/originals/23/c1/20/23c12019afd239fcfd6a86ace7a7d422.jpg',1),(3,9,'Tiramisu','1.Séparer les blancs des jaunes d\'oeufs.\r\n2.Mélanger les jaunes avec le sucre roux et le sucre vanillé.\r\n3.Ajouter le mascarpone au fouet.\r\n4.Monter les blancs en neige et les incorporer délicatement à la spatule au mélange précédent. Réserver.\r\n5.Mouiller les biscuits dans le café rapidement avant d\'en tapisser le fond du plat.\r\n6.Recouvrir d\'une couche de crème au mascarpone puis répéter l\'opération en alternant couche de biscuits et couche de crème en terminant par cette dernière.\r\n7.Saupoudrer de cacao.\r\n8.Mettre au réfrigérateur 4 heures minimum puis déguster frais.','https://www.galbani.fr/wp-content/uploads/2017/07/le_veritable_tiramisu_par_il_gusto_italiano_0.png',0),(4,8,'Feuilletés à la saucisse','1.Etalez la pâte feuilletée.\r\n2.Coupez huit rectangles de la longueur des saucisses sur environ 5 cm de large.\r\n3.Badigeonnez les morceaux de moutarde et de crème fraîche. Poivrez. Posez les saucisses dessus et enroulez la pâte autour. Découpez 4 à 5 tronçons pour chaque.\r\n4.Dorez les feuilletés avec le jaune d\'oeuf délayé dans le lait.\r\n5.Faites cuire 15 à 20 minutes au four à 180°C (thermostat 6).\r\n6.Servez chaud à l\'apéritif ou avec une salade.','https://www.fourchette-et-bikini.fr/sites/default/files/styles/full_320x256/public/roules_feuilletes_saucisse_express.jpg?itok=EfFpj__q',0),(5,10,'Haricots-verts à la crème','1.Détailler les tranches de lard fumé en lardons.\r\n2.Peler et hacher les gousses d\'ail et les faire revenir à feu doux dans une poêle avec 1 cuillère à soupe d\'huile d\'olive.\r\n3.Après 3 minutes de cuisson, ajouter les lardons.\r\n4.Dans un bol, écraser le fromage frais à la fourchette puis le détendre avec la crème liquide.\r\n5.Incorporer les haricots verts à la poêle et les faire revenir avec l\'ail et les lardons, à feu doux pendant 10 minutes.\r\n6.Verser le mélange fromage-crème, assaisonner et mélanger bien. Laisser cuire quelques minutes de plus.\r\n7.Déguster chaud.','https://cache.marieclaire.fr/data/photo/w1000_ci/5f/haricots-verts-au-beurre-et-au-persil.jpg',0),(6,4,'Poulet roti','1.Préchauffer le four a 220°c (thermostat 7). Dans un petit bol, bien mélanger l\'huile, le thym, le romarin et l\'ail haché.\r\n2.Rincer la cavité et l’extérieur du poulet, éponger avec du papier essuie-tout. Replier les ailes sous le poulet et dégager avec soin la peau des poitrines. \r\nFrotter la chair en dessous de la peau avec le mélange d\'huile ainsi que la cavité et l\'extérieur du poulet. Mettre les gousses d\'ail et le citron dans la cavité. \r\nFiceler les pattes ensemble. Saler et poivrer.\r\n3.Déposer le poulet sur la grille de la lèchefrite. Faire rôtir une heure. Retirer du four et incliner le poulet dans la lèchefrite pour que le jus s\'échappe de la cavité. Arroser de jus et remettre le poulet au four.\r\n4.Pour finir, déposer le poulet dans un plat de service et laisser reposer 15 minutes. Découper et servir avec du riz, des frites, etc. Pour réduire le gras éviter de manger la peau.','https://fac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Ffac.2F2018.2F07.2F30.2F6077ae5f-0073-4290-ab6a-52a8c04cf7ba.2Ejpeg/850x478/quality/90/crop-from/center/poulet-roti-dore-au-miel.jpeg',0);
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sub_category`
--

LOCK TABLES `sub_category` WRITE;
/*!40000 ALTER TABLE `sub_category` DISABLE KEYS */;
INSERT INTO `sub_category` VALUES (1,2,'Entrée chaude'),(2,2,'Entrée froide'),(3,2,'Soupe'),(4,3,'Plat chaud'),(5,3,'Plat froid'),(6,4,'Plat unique chaud'),(7,4,'Plat unique froid'),(8,1,'Apéritif dînatoire'),(9,6,'Gâteau'),(10,5,'Légumes'),(11,5,'Féculents');
/*!40000 ALTER TABLE `sub_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-07 13:20:58
