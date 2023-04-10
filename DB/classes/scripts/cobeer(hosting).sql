-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-04-2023 a las 10:47:08
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cobeer`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `id` int UNSIGNED NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `autor` varchar(50) DEFAULT NULL,
  `texto` text,
  `fechaCreacion` datetime DEFAULT NULL,
  `idDepartamento` int UNSIGNED NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `indBaja` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id`, `titulo`, `descripcion`, `autor`, `texto`, `fechaCreacion`, `idDepartamento`, `tags`, `indBaja`) VALUES
(30, 'Com publicar un article a la web de CoBeer', 'Publicar un article a la web de CoBeer és una excel·lent manera de compartir les teves experiències i coneixements amb altres amants de la cervesa artesana. ', 'Albert Guardiola', 'Si ets un amant de la cervesa artesana i t\'agradaria compartir les teves opinions i coneixements amb altres aficionats, la web de CoBeer és un gran lloc per publicar els teus articles. Per publicar-hi un article, segueix aquests senzills passos:\r\n\r\nRegistra\'t a la web de CoBeer i inicia la sessió.\r\n\r\nFes clic a l\'enllaç \"Publica un article\" que es troba a la part superior de la pàgina.\r\n\r\nEscriu el títol del teu article i el contingut en el quadre de text proporcionat. Pots afegir imatges i vídeos per il·lustrar el teu article.\r\n\r\nRevisa el teu article per assegurar-te que no hi ha errors ortogràfics ni gramaticals i que el contingut és coherent.\r\n\r\nFes clic al botó \"Publicar\" per enviar el teu article per a la revisió dels editors de CoBeer.\r\n\r\nEspera a rebre un correu electrònic de confirmació que el teu article ha estat publicat a la pàgina web.\r\n\r\nPublicar un article a la web de CoBeer és una excel·lent manera de compartir les teves experiències i coneixements amb altres amants de la cervesa artesana. Si tens alguna pregunta o necessites ajuda per publicar el teu article, no dubtis a contactar amb els editors de CoBeer per obtenir assistència.', '2023-04-09 12:04:00', 5, '#cobeer,#etpx', b'0'),
(31, 'Descobreix com fer cervesa artesana a casa', 'Fer cervesa artesana a casa: una guia bàsica per a principiants.', 'Marc Adorno', 'Fer la teva pròpia cervesa artesana és una activitat que ha guanyat popularitat en els últims anys. Si estàs interessat a provar a fer la teva pròpia cervesa a casa, aquí tens algunes recomanacions per començar.\r\n\r\nEn primer lloc, és important tenir en compte que fer cervesa artesana és un procés que requereix paciència, temps i dedicació. No és una tasca que es pugui fer en una estona. Cal dedicar-hi un parell d\'hores al dia durant diverses setmanes, i estar disposat a seguir les instruccions amb cura per assegurar-te que la cervesa surti bé.\r\n\r\nUna de les opcions més senzilles per als principiants és començar amb un kit de cervesa artesana. Aquests kits inclouen tot el necessari per fer una cervesa, incloent les instruccions. A més a més, solen ser més econòmics que comprar tots els materials per separat.\r\n\r\nPer fer cervesa artesana, necessitaràs eines com ara un termòmetre, una olla gran i una varietat de fusters. També hauràs de decidir quin tipus de cervesa vols fer, ja que cada varietat té diferents ingredients i requeriments de temps i temperatura.\r\n\r\nSigui quin sigui el tipus de cervesa que triïs fer, és important seguir les instruccions amb precisió. No et saltis cap pas i assegura\'t de tenir tots els ingredients abans de començar. Si tens alguna pregunta o problema durant el procés, pots buscar ajuda en fòrums de cervesa artesana en línia o preguntar a altres persones que també facin cervesa a casa.\r\n\r\nEn resum, fer cervesa artesana a casa pot ser una activitat divertida i gratificant. Si ets un principiant, comença amb un kit de cervesa artesana i segueix les instruccions amb cura. Amb pràctica i dedicació, podrs arribar a crear les teves pròpies varietats de cervesa artesana úniques i delicioses.', '2023-04-09 12:04:00', 5, '#cobeer,#etpx', b'0'),
(32, 'Fermentació de la cervesa, fàcil', 'La fermentació és una part important del procés de fer cervesa artesana. Si estàs interessat en com fer cervesa a casa, és important que entenguis els fonaments de la fermentació. Aquí tens tot el que necessites saber.', 'Jonathan Martínez', 'La fermentació és una part important del procés de fer cervesa artesana. Si estàs interessat en com fer cervesa a casa, és important que entenguis els fonaments de la fermentació. Aquí tens tot el que necessites saber.\r\n\r\nLa fermentació és el procés químic en el qual els sucres del most són convertits en alcohol i gas carbònic pel llevat. El llevat és un microorganisme que consumeix els sucres presents en el most i produeix alcohol i gas carbònic com a resultat. A mesura que el llevat consumeix els sucres, la densitat del most disminueix i la cervesa s\'acaba fermentant.\r\n\r\nHi ha dues tipus de fermentació que es poden utilitzar per fer cervesa artesana: la fermentació alta i la fermentació baixa. La fermentació alta és el procés en el qual el llevat es posa a fermentar a temperatures més altes, i produeix cerveses amb un sabor més dolç i afrutat. La fermentació baixa és quan el llevat es posa a fermentar a temperatures més baixes, i produeix cerveses més lleugeres i amargues.\r\n\r\nEl temps de fermentació també és important. Generalment, la fermentació primària té lloc durant una setmana a una temperatura constant. Després, la cervesa es traspassa a un altre recipient per a la fermentació secundària, on es deixa reposar durant una o dues setmanes més. La fermentació secundària ajuda a la cervesa a madurar i desenvolupar més sabor i aroma.\r\n\r\nUn altre factor important en la fermentació de la cervesa és la quantitat de llevat que s\'utilitza. Utilitzar massa o massa poc llevat pot afectar negativament el procés de fermentació. És important seguir les recomanacions del fabricant per assegurar-te que estàs utilitzant la quantitat adequada de llevat.\r\n\r\nEn resum, la fermentació és una part important del procés de fer cervesa artesana. És important comprendre els fonaments del procés per assegurar-te que la teva cervesa surti bé. Segueix les recomanacions de temperatura, temps i quantitat de llevat per obtenir una cervesa artesana deliciosa i ben fermentada.', '2023-04-09 13:04:00', 5, '#cobeer,#fermentacio', b'0'),
(33, 'La bullida del llúpol', 'El procés de bullida de la malta amb el llúpol és un pas crucial en la producció de cervesa. Aquest procés implica la cocció de la malta triturada en ', 'David Roca', 'El procés de bullida de la malta amb el llúpol és un pas crucial en la producció de cervesa. Aquest procés implica la cocció de la malta triturada en aigua, juntament amb el llúpol, per obtenir una solució rica en sucres fermentables i aromes. A continuació, explorarem en detall aquest procés.\r\n\r\nEn primer lloc, la malta triturada s\'afegirà a l\'aigua calenta per començar la fase d\'extracció. Els enzims presents en la malta començaran a descompondre els hidrats de carboni complexos en sucres fermentables. A mesura que la cocció continuï, els sucres es dissoldran en l\'aigua, creant una solució dolça coneguda com a most.\r\n\r\nDesprés d\'uns 30 minuts de cocció, s\'afegirà el llúpol. El llúpol és una planta amb una gran varietat de sabors i aromes, que s\'utilitza per equilibrar la dolçor de la malta i proporcionar notes aromàtiques a la cervesa. El llúpol també té propietats antibacterianes, la qual cosa ajuda a prevenir la contaminació de la cervesa.\r\n\r\nDurant la cocció, el llúpol es descompon en els seus components amargs i aromàtics, que s\'integren a la solució de most. Els productors de cervesa poden controlar la quantitat i el moment d\'afegir el llúpol per ajustar el perfil de sabor i aroma de la cervesa.\r\n\r\nDesprés de bullir la malta i el llúpol durant aproximadament una hora, la solució resultada es refreda ràpidament per evitar la formació de sabors indesitjables. A continuació, es trasllada a un fermentador, on es cultivaran les llevats. Les llevats consumiran els sucres fermentables presents en la solució per produir alcohol i diòxid de carboni, deixant una cervesa carbonatada amb un perfil de sabor i aroma únic.\r\n\r\nEn resum, el procés de bullida de la malta amb el llúpol és una etapa crucial en la producció de cervesa. A través d\'aquest procés, s\'extreuen sucres fermentables i es creen sabors i aromes únics. El llúpol és un ingredient clau en la cervesa, que ajuda a equilibrar la dolçor de la malta i a proporcionar aromes agradables.', '2023-04-09 18:04:00', 5, '#cobeer,#llúpol', b'0'),
(45, 'Cervesa sí, però amb cap!', 'Si els adolescents són ben informats i encoratjats a fer eleccions responsables, poden gaudir de la cervesa amb seguretat i sense riscos per a la seva', 'Albert Guardiola', 'El consum responsable de cervesa és una qüestió important i ha de ser considerat especialment quan es tracta d\'adolescents. És important que els adolescents comprenguin que l\'alcohol pot ser perjudicial per a la seva salut i que el consum excessiu pot tenir greus conseqüències a curt i llarg termini.\r\n\r\nEl primer pas cap a un consum responsable de cervesa és educar als adolescents sobre els efectes de l\'alcohol en el cos i en la ment. Han de ser conscients que el consum d\'alcohol pot afectar la seva capacitat de prendre decisions i de conduir, i pot causar danys irreparables als òrgans interns. Els adolescents també han de comprendre que el consum excessiu d\'alcohol pot afectar el seu desenvolupament físic i mental, i que pot afectar negativament el seu rendiment escolar i les seves relacions socials.\r\n\r\nEls pares i els educadors han de jugar un paper important en la promoció d\'un consum responsable de cervesa entre els adolescents. Han de parlar obertament amb els seus fills o estudiants sobre els riscos del consum d\'alcohol i establir línies clares de comunicació perquè els adolescents puguin parlar sobre qualsevol problema relacionat amb l\'alcohol.\r\n\r\nEls adolescents també han de ser ensenyats a fer eleccions responsables quan es tracta de consumir alcohol. Han de ser encoratjats a beure amb moderació i a no conduir després de beure. També han de ser conscients que el consum d\'alcohol pot ser una activitat social agradable, però han de saber quan aturar-se i quan dir \"no\" si se\'ls ofereix més alcohol del que poden suportar.\r\n\r\nEn resum, el consum responsable de cervesa entre adolescents és una qüestió important que requereix educació, suport i comunicació oberta. Si els adolescents són ben informats i encoratjats a fer eleccions responsables, poden gaudir de la cervesa amb seguretat i sense riscos per a la seva salut i benestar.', '2023-04-10 08:04:00', 2, '#cobeer,#consum,#responsable', b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `indBaja` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `nombre`, `descripcion`, `indBaja`) VALUES
(2, 'Dietètica', 'CFGS de Dietètica)', b'0'),
(3, 'Comerç Internacional', 'CFGS de Comerç Internacional', b'0'),
(4, 'CAI', 'CFGM de Cures Auxiliars', b'0'),
(5, 'DAW', 'CFGS de DAW', b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recurso`
--

CREATE TABLE `recurso` (
  `id` int UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `idArticulo` int UNSIGNED NOT NULL,
  `indBaja` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recurso`
--

INSERT INTO `recurso` (`id`, `url`, `idArticulo`, `indBaja`) VALUES
(1, '/cobeer/DB/local/media/30/cerveza-casera-3.jpg', 30, b'0'),
(2, '/cobeer/DB/local/media/31/cerveza-SF-1.jpg', 31, b'0'),
(3, '/cobeer/DB/local/media/32/ferm1.jpg', 32, b'0'),
(4, '/cobeer/DB/local/media/32/ferm2.jpg', 32, b'0'),
(5, '/cobeer/DB/local/media/33/llupol.jpg', 33, b'0'),
(6, '/cobeer/DB/local/media/45/01.jpg', 45, b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int UNSIGNED NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido1` varchar(50) DEFAULT NULL,
  `apellido2` varchar(50) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL,
  `idDepartamento` int UNSIGNED NOT NULL,
  `indBaja` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pk_articulos_departamentos` (`idDepartamento`);
ALTER TABLE `articulo` ADD FULLTEXT KEY `search_idx` (`titulo`,`autor`,`texto`,`descripcion`,`tags`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recurso`
--
ALTER TABLE `recurso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pk_recursos_articulos` (`idArticulo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pk_usuarios_departamentos` (`idDepartamento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `recurso`
--
ALTER TABLE `recurso`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `pk_articulos_departamentos` FOREIGN KEY (`idDepartamento`) REFERENCES `departamento` (`id`);

--
-- Filtros para la tabla `recurso`
--
ALTER TABLE `recurso`
  ADD CONSTRAINT `pk_recursos_articulos` FOREIGN KEY (`idArticulo`) REFERENCES `articulo` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `pk_usuarios_departamentos` FOREIGN KEY (`idDepartamento`) REFERENCES `departamento` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
