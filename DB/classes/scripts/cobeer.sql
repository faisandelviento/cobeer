-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: cobeer
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `cobeer`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cobeer` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `cobeer`;

--
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `autor` varchar(50) DEFAULT NULL,
  `texto` text,
  `fechaCreacion` datetime DEFAULT NULL,
  `idDepartamento` int unsigned NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `indBaja` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `pk_articulos_departamentos` (`idDepartamento`),
  FULLTEXT KEY `search_idx` (`titulo`,`autor`,`texto`,`descripcion`,`tags`),
  CONSTRAINT `pk_articulos_departamentos` FOREIGN KEY (`idDepartamento`) REFERENCES `departamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` VALUES (30,'Com publicar un article a la web de CoBeer','Publicar un article a la web de CoBeer és una excel·lent manera de compartir les teves experiències i coneixements amb altres amants de la cervesa artesana. ','Albert Guardiola','Si ets un amant de la cervesa artesana i t\'agradaria compartir les teves opinions i coneixements amb altres aficionats, la web de CoBeer és un gran lloc per publicar els teus articles. Per publicar-hi un article, segueix aquests senzills passos:\r\n\r\nRegistra\'t a la web de CoBeer i inicia la sessió.\r\n\r\nFes clic a l\'enllaç \"Publica un article\" que es troba a la part superior de la pàgina.\r\n\r\nEscriu el títol del teu article i el contingut en el quadre de text proporcionat. Pots afegir imatges i vídeos per il·lustrar el teu article.\r\n\r\nRevisa el teu article per assegurar-te que no hi ha errors ortogràfics ni gramaticals i que el contingut és coherent.\r\n\r\nFes clic al botó \"Publicar\" per enviar el teu article per a la revisió dels editors de CoBeer.\r\n\r\nEspera a rebre un correu electrònic de confirmació que el teu article ha estat publicat a la pàgina web.\r\n\r\nPublicar un article a la web de CoBeer és una excel·lent manera de compartir les teves experiències i coneixements amb altres amants de la cervesa artesana. Si tens alguna pregunta o necessites ajuda per publicar el teu article, no dubtis a contactar amb els editors de CoBeer per obtenir assistència.','2023-04-09 12:04:00',5,'#cobeer,#etpx',_binary '\0');
INSERT INTO `articulo` VALUES (31,'Descobreix com fer cervesa artesana a casa','Fer cervesa artesana a casa: una guia bàsica per a principiants.','Marc Adorno','Fer la teva pròpia cervesa artesana és una activitat que ha guanyat popularitat en els últims anys. Si estàs interessat a provar a fer la teva pròpia cervesa a casa, aquí tens algunes recomanacions per començar.\r\n\r\nEn primer lloc, és important tenir en compte que fer cervesa artesana és un procés que requereix paciència, temps i dedicació. No és una tasca que es pugui fer en una estona. Cal dedicar-hi un parell d\'hores al dia durant diverses setmanes, i estar disposat a seguir les instruccions amb cura per assegurar-te que la cervesa surti bé.\r\n\r\nUna de les opcions més senzilles per als principiants és començar amb un kit de cervesa artesana. Aquests kits inclouen tot el necessari per fer una cervesa, incloent les instruccions. A més a més, solen ser més econòmics que comprar tots els materials per separat.\r\n\r\nPer fer cervesa artesana, necessitaràs eines com ara un termòmetre, una olla gran i una varietat de fusters. També hauràs de decidir quin tipus de cervesa vols fer, ja que cada varietat té diferents ingredients i requeriments de temps i temperatura.\r\n\r\nSigui quin sigui el tipus de cervesa que triïs fer, és important seguir les instruccions amb precisió. No et saltis cap pas i assegura\'t de tenir tots els ingredients abans de començar. Si tens alguna pregunta o problema durant el procés, pots buscar ajuda en fòrums de cervesa artesana en línia o preguntar a altres persones que també facin cervesa a casa.\r\n\r\nEn resum, fer cervesa artesana a casa pot ser una activitat divertida i gratificant. Si ets un principiant, comença amb un kit de cervesa artesana i segueix les instruccions amb cura. Amb pràctica i dedicació, podrs arribar a crear les teves pròpies varietats de cervesa artesana úniques i delicioses.','2023-04-09 12:04:00',5,'#cobeer,#etpx',_binary '\0');
INSERT INTO `articulo` VALUES (32,'Fermentació de la cervesa, fàcil','La fermentació és una part important del procés de fer cervesa artesana. Si estàs interessat en com fer cervesa a casa, és important que entenguis els fonaments de la fermentació. Aquí tens tot el que necessites saber.','Jonathan Martínez','La fermentació és una part important del procés de fer cervesa artesana. Si estàs interessat en com fer cervesa a casa, és important que entenguis els fonaments de la fermentació. Aquí tens tot el que necessites saber.\r\n\r\nLa fermentació és el procés químic en el qual els sucres del most són convertits en alcohol i gas carbònic pel llevat. El llevat és un microorganisme que consumeix els sucres presents en el most i produeix alcohol i gas carbònic com a resultat. A mesura que el llevat consumeix els sucres, la densitat del most disminueix i la cervesa s\'acaba fermentant.\r\n\r\nHi ha dues tipus de fermentació que es poden utilitzar per fer cervesa artesana: la fermentació alta i la fermentació baixa. La fermentació alta és el procés en el qual el llevat es posa a fermentar a temperatures més altes, i produeix cerveses amb un sabor més dolç i afrutat. La fermentació baixa és quan el llevat es posa a fermentar a temperatures més baixes, i produeix cerveses més lleugeres i amargues.\r\n\r\nEl temps de fermentació també és important. Generalment, la fermentació primària té lloc durant una setmana a una temperatura constant. Després, la cervesa es traspassa a un altre recipient per a la fermentació secundària, on es deixa reposar durant una o dues setmanes més. La fermentació secundària ajuda a la cervesa a madurar i desenvolupar més sabor i aroma.\r\n\r\nUn altre factor important en la fermentació de la cervesa és la quantitat de llevat que s\'utilitza. Utilitzar massa o massa poc llevat pot afectar negativament el procés de fermentació. És important seguir les recomanacions del fabricant per assegurar-te que estàs utilitzant la quantitat adequada de llevat.\r\n\r\nEn resum, la fermentació és una part important del procés de fer cervesa artesana. És important comprendre els fonaments del procés per assegurar-te que la teva cervesa surti bé. Segueix les recomanacions de temperatura, temps i quantitat de llevat per obtenir una cervesa artesana deliciosa i ben fermentada.','2023-04-09 13:04:00',5,'#cobeer,#fermentacio',_binary '\0');
INSERT INTO `articulo` VALUES (33,'La bullida del llúpol','El procés de bullida de la malta amb el llúpol és un pas crucial en la producció de cervesa. Aquest procés implica la cocció de la malta triturada en ','David Roca','El procés de bullida de la malta amb el llúpol és un pas crucial en la producció de cervesa. Aquest procés implica la cocció de la malta triturada en aigua, juntament amb el llúpol, per obtenir una solució rica en sucres fermentables i aromes. A continuació, explorarem en detall aquest procés.\r\n\r\nEn primer lloc, la malta triturada s\'afegirà a l\'aigua calenta per començar la fase d\'extracció. Els enzims presents en la malta començaran a descompondre els hidrats de carboni complexos en sucres fermentables. A mesura que la cocció continuï, els sucres es dissoldran en l\'aigua, creant una solució dolça coneguda com a most.\r\n\r\nDesprés d\'uns 30 minuts de cocció, s\'afegirà el llúpol. El llúpol és una planta amb una gran varietat de sabors i aromes, que s\'utilitza per equilibrar la dolçor de la malta i proporcionar notes aromàtiques a la cervesa. El llúpol també té propietats antibacterianes, la qual cosa ajuda a prevenir la contaminació de la cervesa.\r\n\r\nDurant la cocció, el llúpol es descompon en els seus components amargs i aromàtics, que s\'integren a la solució de most. Els productors de cervesa poden controlar la quantitat i el moment d\'afegir el llúpol per ajustar el perfil de sabor i aroma de la cervesa.\r\n\r\nDesprés de bullir la malta i el llúpol durant aproximadament una hora, la solució resultada es refreda ràpidament per evitar la formació de sabors indesitjables. A continuació, es trasllada a un fermentador, on es cultivaran les llevats. Les llevats consumiran els sucres fermentables presents en la solució per produir alcohol i diòxid de carboni, deixant una cervesa carbonatada amb un perfil de sabor i aroma únic.\r\n\r\nEn resum, el procés de bullida de la malta amb el llúpol és una etapa crucial en la producció de cervesa. A través d\'aquest procés, s\'extreuen sucres fermentables i es creen sabors i aromes únics. El llúpol és un ingredient clau en la cervesa, que ajuda a equilibrar la dolçor de la malta i a proporcionar aromes agradables.','2023-04-09 18:04:00',5,'#cobeer,#llúpol',_binary '\0');
INSERT INTO `articulo` VALUES (45,'Cervesa sí, però amb cap!','Si els adolescents són ben informats i encoratjats a fer eleccions responsables, poden gaudir de la cervesa amb seguretat i sense riscos per a la seva','Albert Guardiola','El consum responsable de cervesa és una qüestió important i ha de ser considerat especialment quan es tracta d\'adolescents. És important que els adolescents comprenguin que l\'alcohol pot ser perjudicial per a la seva salut i que el consum excessiu pot tenir greus conseqüències a curt i llarg termini.\r\n\r\nEl primer pas cap a un consum responsable de cervesa és educar als adolescents sobre els efectes de l\'alcohol en el cos i en la ment. Han de ser conscients que el consum d\'alcohol pot afectar la seva capacitat de prendre decisions i de conduir, i pot causar danys irreparables als òrgans interns. Els adolescents també han de comprendre que el consum excessiu d\'alcohol pot afectar el seu desenvolupament físic i mental, i que pot afectar negativament el seu rendiment escolar i les seves relacions socials.\r\n\r\nEls pares i els educadors han de jugar un paper important en la promoció d\'un consum responsable de cervesa entre els adolescents. Han de parlar obertament amb els seus fills o estudiants sobre els riscos del consum d\'alcohol i establir línies clares de comunicació perquè els adolescents puguin parlar sobre qualsevol problema relacionat amb l\'alcohol.\r\n\r\nEls adolescents també han de ser ensenyats a fer eleccions responsables quan es tracta de consumir alcohol. Han de ser encoratjats a beure amb moderació i a no conduir després de beure. També han de ser conscients que el consum d\'alcohol pot ser una activitat social agradable, però han de saber quan aturar-se i quan dir \"no\" si se\'ls ofereix més alcohol del que poden suportar.\r\n\r\nEn resum, el consum responsable de cervesa entre adolescents és una qüestió important que requereix educació, suport i comunicació oberta. Si els adolescents són ben informats i encoratjats a fer eleccions responsables, poden gaudir de la cervesa amb seguretat i sense riscos per a la seva salut i benestar.','2023-04-10 08:04:00',2,'#cobeer,#consum,#responsable',_binary '\0');
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `indBaja` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (2,'Dietètica','CFGS de Dietètica)',_binary '\0');
INSERT INTO `departamento` VALUES (3,'Comerç Internacional','CFGS de Comerç Internacional',_binary '\0');
INSERT INTO `departamento` VALUES (4,'CAI','CFGM de Cures Auxiliars',_binary '\0');
INSERT INTO `departamento` VALUES (5,'DAW','CFGS de DAW',_binary '\0');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurso`
--

DROP TABLE IF EXISTS `recurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recurso` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `idArticulo` int unsigned NOT NULL,
  `indBaja` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `pk_recursos_articulos` (`idArticulo`),
  CONSTRAINT `pk_recursos_articulos` FOREIGN KEY (`idArticulo`) REFERENCES `articulo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurso`
--

LOCK TABLES `recurso` WRITE;
/*!40000 ALTER TABLE `recurso` DISABLE KEYS */;
INSERT INTO `recurso` VALUES (1,'/cobeer/DB/local/media/30/cerveza-casera-3.jpg',30,_binary '\0');
INSERT INTO `recurso` VALUES (2,'/cobeer/DB/local/media/31/cerveza-SF-1.jpg',31,_binary '\0');
INSERT INTO `recurso` VALUES (3,'/cobeer/DB/local/media/32/ferm1.jpg',32,_binary '\0');
INSERT INTO `recurso` VALUES (4,'/cobeer/DB/local/media/32/ferm2.jpg',32,_binary '\0');
INSERT INTO `recurso` VALUES (5,'/cobeer/DB/local/media/33/llupol.jpg',33,_binary '\0');
INSERT INTO `recurso` VALUES (6,'/cobeer/DB/local/media/45/01.jpg',45,_binary '\0');
/*!40000 ALTER TABLE `recurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido1` varchar(50) DEFAULT NULL,
  `apellido2` varchar(50) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL,
  `idDepartamento` int unsigned NOT NULL,
  `indBaja` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `pk_usuarios_departamentos` (`idDepartamento`),
  CONSTRAINT `pk_usuarios_departamentos` FOREIGN KEY (`idDepartamento`) REFERENCES `departamento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-10  9:20:09
