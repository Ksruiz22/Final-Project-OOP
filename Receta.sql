-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2022 a las 06:39:22
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `recetas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorías`
--

CREATE TABLE `categorías` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(115) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `categorías`
--

INSERT INTO `categorías` (`ID`, `Nombre`) VALUES
(1, 'Bebidas'),
(2, 'Sopas'),
(3, 'Aperitivos y Principios'),
(4, 'Platos'),
(5, 'Postres');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(115) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`ID`, `Nombre`) VALUES
(1, 'Piña'),
(2, 'Maíz'),
(3, 'Azúcar'),
(4, 'Aliños de chocolate'),
(5, 'Nuez moscada'),
(6, 'Sal'),
(7, 'Chocolate con leche de coco'),
(8, 'Pastillas de chocolate'),
(9, 'Leche de coco'),
(10, 'Leche'),
(11, 'Aguacate'),
(12, 'Guanabaná'),
(13, 'Canela'),
(14, 'Guineo'),
(15, 'Esencia de vainilla'),
(16, 'Borojó'),
(17, 'Agua'),
(18, 'Leche en polvo'),
(19, 'Huevo'),
(20, 'Salpresos'),
(21, 'Plátanos verdes'),
(22, 'Cebollas'),
(23, 'Tallos de cebolla'),
(24, 'Albahaca'),
(25, 'Bija (achiote)'),
(26, 'Manteca'),
(27, 'Cilantro cimarrón'),
(29, 'Pimienta'),
(30, 'Camarón'),
(31, 'Papa'),
(32, 'Guacucos'),
(33, 'Cebolla cabezona'),
(34, 'Tómate maduro'),
(35, 'Huevo de pescado'),
(36, 'Mantequilla'),
(37, 'Cebolleta'),
(38, 'Picha de toro o de tortuga macho'),
(39, 'Carne de res'),
(40, 'Carne serrana'),
(41, 'Yuca'),
(42, 'Cebolla larga'),
(43, 'Chillangua'),
(44, 'Poleo molido'),
(45, 'Pescado seco'),
(46, 'Queso'),
(47, 'Diente de ajo'),
(48, 'Carne pulpa de res'),
(49, 'Huevo de res'),
(50, 'Chimbilaco'),
(51, 'Lentejas'),
(52, 'Ají'),
(53, 'Pimentón'),
(54, 'Comino'),
(55, 'Queso costeño'),
(56, 'Cabezas de langostino'),
(57, 'Ñame chocoano'),
(58, 'Carne de cerdo'),
(59, 'Miel de panela'),
(60, 'Hojas de plátano '),
(61, 'Clavos de olor'),
(62, 'Panela raspada'),
(63, 'Bocadillo de guayaba'),
(64, 'Coco'),
(65, 'Panela en melado'),
(66, 'Queso rallado'),
(67, 'Camarones'),
(68, 'Langostinos'),
(69, 'Taza de vinagre'),
(70, 'Limón'),
(71, 'Mostaza'),
(72, 'Cucharada de tomillo'),
(73, 'Cilantro'),
(74, 'Aceite'),
(75, 'Papaya biche'),
(77, 'Galletas dulces'),
(78, 'Papaya pelada y picada'),
(79, 'Melón pelado y picado'),
(80, 'Banano pelado y picado'),
(81, 'Mango '),
(82, 'Naranja'),
(83, 'Almíbar de azúcar'),
(84, 'Vino rojo'),
(85, 'Carne gorda de res cortada en trozos'),
(86, 'Carne de cerdo picada en trozos'),
(87, 'Arracacha'),
(88, 'Zanahoria'),
(89, 'Hojas de repollo'),
(91, 'Ramillete de perejil y cilantro'),
(92, 'Cucharada de aceite'),
(93, 'Cucharada de cilantro'),
(94, 'Tallos de cebolla junca'),
(95, 'Azafrán'),
(97, 'Miel de abeja'),
(98, 'Harina de trigo'),
(99, 'Rodaja de pan francés'),
(100, 'Agua de azahares'),
(101, 'Carne de res molida'),
(102, 'Carne de cerdo molida'),
(103, 'Tocino'),
(104, 'Chorizo'),
(105, 'Polvo de hornear'),
(106, 'Fécula de maíz'),
(108, 'Astillas de canela'),
(109, 'Copoazú'),
(110, 'Jugo de caña de azúcar'),
(111, 'Plátanos topochos'),
(112, 'Ahuyama'),
(113, 'Hojas de cilantro cimarrón'),
(114, 'Gallina'),
(115, 'Chontaduro'),
(116, 'Cachama grande'),
(117, 'Marañones'),
(118, 'Pomarrosas'),
(119, 'Hojas de naranja agria'),
(120, 'Lulo'),
(121, 'Jugo de maracuyá/piña'),
(122, 'Aguardiente'),
(123, 'Cualquier fruta'),
(124, 'Arroz'),
(125, 'Ullucos'),
(126, 'Pulpa de chontaduro'),
(127, 'Copa de vino rojo seco'),
(128, 'Lomo biche'),
(129, ''),
(130, 'Orégano'),
(131, 'Hígado'),
(132, 'Pimentón verde'),
(133, 'Pimentón rojo'),
(134, 'Uvas pasas'),
(135, 'Brevas'),
(136, 'Bicarbonato'),
(138, 'Mandarina'),
(139, 'Plátano maduro'),
(140, 'Hojas de naranjo'),
(141, 'Bizcochuelo'),
(142, 'Vino moscatel'),
(143, 'Corozo'),
(144, 'Ciruela cocota'),
(145, 'Costilla de res'),
(146, 'Costilla de cerdo'),
(147, 'Apio'),
(148, 'Mazorca'),
(150, 'Garbanzo'),
(151, 'Chicharrón de cerdo'),
(152, 'Tajada de yuca'),
(153, 'Guayaba'),
(154, 'Jugo de naranja'),
(155, 'Leche de cabra'),
(157, 'Suero'),
(158, 'Hoja de bleo de chupa'),
(159, 'Ñame'),
(160, 'Suero'),
(161, 'Costilla'),
(162, 'Rabo de res'),
(163, 'Chicharrón'),
(164, 'Guandúes '),
(165, 'Plátano amarillo'),
(166, 'Guiso'),
(167, 'Hoja de maíz'),
(168, 'Cabuya'),
(169, 'Hoja grande de mazorca'),
(170, 'Tripa delgada de cerdo'),
(171, 'Aceite vegetal'),
(172, 'Jugo de limón'),
(173, 'Bagre'),
(174, 'Perejil'),
(175, 'Mojarra'),
(176, 'Banano maduro'),
(177, 'Remolacha'),
(178, 'Milo'),
(179, 'Copa de Brandy'),
(180, 'Cilantro de Castilla y cebolleta'),
(181, 'Yerbabuena'),
(182, 'Cerveza'),
(183, 'Poleo'),
(184, 'Hoja de laurel molido'),
(185, 'Tomillo'),
(186, 'Guayabita tostada'),
(187, 'Higuillo'),
(188, 'Almojábanas'),
(189, 'Crema de leche'),
(190, 'Curubas maduras'),
(191, 'Tómate de árbol'),
(192, 'Hielo'),
(193, 'Maíz sabanero'),
(194, 'Habas'),
(195, 'Papa sabanera'),
(196, 'Cebolla junca'),
(197, 'Harina de cebada'),
(198, 'Nata de leche'),
(199, 'Sobrebarriga'),
(200, 'Ramo de yerba'),
(201, 'Lomo de ternera'),
(202, 'Feijoas'),
(203, 'Ponqué');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productrecipes`
--

CREATE TABLE `productrecipes` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(40) COLLATE utf8_bin NOT NULL,
  `Cantidad` varchar(25) COLLATE utf8_bin NOT NULL,
  `Receta_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Nombre_receta` varchar(40) COLLATE utf8_bin NOT NULL,
  `Preparación` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `productrecipes`
--

INSERT INTO `productrecipes` (`ID`, `Nombre`, `Cantidad`, `Receta_ID`, `Product_ID`, `Nombre_receta`, `Preparación`) VALUES
(2, 'Piña', ' 1 piña rallada', 1, 1, 'Colada de Piña', 'Se cocina el maíz en el agua (1 hora), se saca, se muele y se cuela con el agua (tuga) hasta que quede bien diluido. Se pone a cocinar hasta que empiece a cuajar (15 minutos), se le agregan los aliños de chocolate (se revuelven constantemente), luego el azúcar y por último la piña rallada y su jugo. Se revuelve con una cuchara de palo hasta que cuaje (10 minutos), se le agrega la pizquita de sal y la nuez moscada. Se baja el fuego y se deja reposar. Se sirve tibia o fría.'),
(3, 'Maíz', '1 libra', 1, 2, 'Colada de Piña', 'Se cocina el maíz en el agua (1 hora), se saca, se muele y se cuela con el agua (tuga) hasta que quede bien diluido. Se pone a cocinar hasta que empiece a cuajar (15 minutos), se le agregan los aliños de chocolate (se revuelven constantemente), luego el azúcar y por último la piña rallada y su jugo. Se revuelve con una cuchara de palo hasta que cuaje (10 minutos), se le agrega la pizquita de sal y la nuez moscada. Se baja el fuego y se deja reposar. Se sirve tibia o fría.'),
(4, 'Azúcar', '250 gr', 1, 3, 'Colada de Piña', 'Se cocina el maíz en el agua (1 hora), se saca, se muele y se cuela con el agua (tuga) hasta que quede bien diluido. Se pone a cocinar hasta que empiece a cuajar (15 minutos), se le agregan los aliños de chocolate (se revuelven constantemente), luego el azúcar y por último la piña rallada y su jugo. Se revuelve con una cuchara de palo hasta que cuaje (10 minutos), se le agrega la pizquita de sal y la nuez moscada. Se baja el fuego y se deja reposar. Se sirve tibia o fría.'),
(5, 'Agua', '1½ litro ', 1, 17, 'Colada de Piña', 'Se cocina el maíz en el agua (1 hora), se saca, se muele y se cuela con el agua (tuga) hasta que quede bien diluido. Se pone a cocinar hasta que empiece a cuajar (15 minutos), se le agregan los aliños de chocolate (se revuelven constantemente), luego el azúcar y por último la piña rallada y su jugo. Se revuelve con una cuchara de palo hasta que cuaje (10 minutos), se le agrega la pizquita de sal y la nuez moscada. Se baja el fuego y se deja reposar. Se sirve tibia o fría.'),
(6, 'Aliños de Chocolate', '1 cucharadita', 1, 4, 'Colada de Piña', 'Se cocina el maíz en el agua (1 hora), se saca, se muele y se cuela con el agua (tuga) hasta que quede bien diluido. Se pone a cocinar hasta que empiece a cuajar (15 minutos), se le agregan los aliños de chocolate (se revuelven constantemente), luego el azúcar y por último la piña rallada y su jugo. Se revuelve con una cuchara de palo hasta que cuaje (10 minutos), se le agrega la pizquita de sal y la nuez moscada. Se baja el fuego y se deja reposar. Se sirve tibia o fría.'),
(7, 'Nuez moscada', '¼', 1, 5, 'Colada de Piña', 'Se cocina el maíz en el agua (1 hora), se saca, se muele y se cuela con el agua (tuga) hasta que quede bien diluido. Se pone a cocinar hasta que empiece a cuajar (15 minutos), se le agregan los aliños de chocolate (se revuelven constantemente), luego el azúcar y por último la piña rallada y su jugo. Se revuelve con una cuchara de palo hasta que cuaje (10 minutos), se le agrega la pizquita de sal y la nuez moscada. Se baja el fuego y se deja reposar. Se sirve tibia o fría.'),
(8, 'Sal', '1 pizca', 1, 6, 'Colada de Piña', 'Se cocina el maíz en el agua (1 hora), se saca, se muele y se cuela con el agua (tuga) hasta que quede bien diluido. Se pone a cocinar hasta que empiece a cuajar (15 minutos), se le agregan los aliños de chocolate (se revuelven constantemente), luego el azúcar y por último la piña rallada y su jugo. Se revuelve con una cuchara de palo hasta que cuaje (10 minutos), se le agrega la pizquita de sal y la nuez moscada. Se baja el fuego y se deja reposar. Se sirve tibia o fría.'),
(9, 'Pastilla de chocolate', '8', 2, 8, 'Chocolate con leche de coco', 'Se pone a cocinar a fuego lento la leche de coco con las pastillas de chocolate, batiendo fuertemente con un molinillo. Cuando estén disueltas se les agrega la leche de vaca y el azúcar. Se bate bien hasta que espese a gusto. Se sirve caliente.'),
(10, 'Leche de coco', '2 tazas', 2, 9, 'Chocolate con leche de coco', 'Se pone a cocinar a fuego lento la leche de coco con las pastillas de chocolate, batiendo fuertemente con un molinillo. Cuando estén disueltas se les agrega la leche de vaca y el azúcar. Se bate bien hasta que espese a gusto. Se sirve caliente.'),
(11, 'Leche', '1 Litro', 2, 10, 'Chocolate con leche de coco', 'Se pone a cocinar a fuego lento la leche de coco con las pastillas de chocolate, batiendo fuertemente con un molinillo. Cuando estén disueltas se les agrega la leche de vaca y el azúcar. Se bate bien hasta que espese a gusto. Se sirve caliente.'),
(12, 'Azúcar', 'Al gusto', 2, 3, 'Chocolate con leche de coco', 'Se pone a cocinar a fuego lento la leche de coco con las pastillas de chocolate, batiendo fuertemente con un molinillo. Cuando estén disueltas se les agrega la leche de vaca y el azúcar. Se bate bien hasta que espese a gusto. Se sirve caliente.'),
(13, 'Aguacate', '1', 3, 11, 'Fresco de aguacate', 'Se abre el aguacate y se extrae la pulpa con una cuchara. Se bate o licua con la leche y el azúcar. Se sirve frío.'),
(14, 'Leche', '1 Litro', 3, 10, 'Fresco de aguacate', 'Se abre el aguacate y se extrae la pulpa con una cuchara. Se bate o licua con la leche y el azúcar. Se sirve frío.'),
(15, 'Azúcar', '125 gr', 3, 3, 'Fresco de aguacate', 'Se abre el aguacate y se extrae la pulpa con una cuchara. Se bate o licua con la leche y el azúcar. Se sirve frío.'),
(16, 'Guineo', '6', 4, 14, 'Jugo de guineo', 'Se pone la leche a hervir con la canela, y apenas dé el primer hervor se baja y se deja enfriar. Se le añaden los guineos, se baten bien con molinillo (o se licuan) con el azúcar, la esencia de vainilla y la nuez moscada. Se le agrega hielo y se sirve.'),
(17, 'Leche', '1½', 4, 10, 'Jugo de guineo', 'Se pone la leche a hervir con la canela, y apenas dé el primer hervor se baja y se deja enfriar. Se le añaden los guineos, se baten bien con molinillo (o se licuan) con el azúcar, la esencia de vainilla y la nuez moscada. Se le agrega hielo y se sirve.'),
(18, 'Azúcar', '250 gr', 4, 3, 'Jugo de guineo', 'Se pone la leche a hervir con la canela, y apenas dé el primer hervor se baja y se deja enfriar. Se le añaden los guineos, se baten bien con molinillo (o se licuan) con el azúcar, la esencia de vainilla y la nuez moscada. Se le agrega hielo y se sirve.'),
(19, 'Esencia de vainilla', '½ cucharadita', 4, 15, 'Jugo de guineo', 'Se pone la leche a hervir con la canela, y apenas dé el primer hervor se baja y se deja enfriar. Se le añaden los guineos, se baten bien con molinillo (o se licuan) con el azúcar, la esencia de vainilla y la nuez moscada. Se le agrega hielo y se sirve.'),
(20, 'Nuez moscada', '¼ cucharadita', 4, 5, 'Jugo de guineo', 'Se pone la leche a hervir con la canela, y apenas dé el primer hervor se baja y se deja enfriar. Se le añaden los guineos, se baten bien con molinillo (o se licuan) con el azúcar, la esencia de vainilla y la nuez moscada. Se le agrega hielo y se sirve.'),
(21, 'Canela en astillas', 'Al gusto', 4, 108, 'Jugo de guineo', 'Se pone la leche a hervir con la canela, y apenas dé el primer hervor se baja y se deja enfriar. Se le añaden los guineos, se baten bien con molinillo (o se licuan) con el azúcar, la esencia de vainilla y la nuez moscada. Se le agrega hielo y se sirve.'),
(22, 'Borojó', '1', 5, 16, 'Sorbete de borojó', 'Se corta la fruta en dos, con una cuchara se le extrae la pulpa, que se pone en un poco de agua, y se bate con molinillo hasta disolverla (o se licua). Se disuelve la leche en polvo en agua, y se incorpora la vainilla, la nuez moscada, los huevos y el azúcar. Se bate (o se licua) y se agrega la fruta. Se puede incorporar hielo picado y servirse frío.'),
(23, 'Agua', '8 vasos', 5, 17, 'Sorbete de borojó', 'Se corta la fruta en dos, con una cuchara se le extrae la pulpa, que se pone en un poco de agua, y se bate con molinillo hasta disolverla (o se licua). Se disuelve la leche en polvo en agua, y se incorpora la vainilla, la nuez moscada, los huevos y el azúcar. Se bate (o se licua) y se agrega la fruta. Se puede incorporar hielo picado y servirse frío.'),
(24, 'Leche en polvo', '1 taza', 5, 18, 'Sorbete de borojó', 'Se corta la fruta en dos, con una cuchara se le extrae la pulpa, que se pone en un poco de agua, y se bate con molinillo hasta disolverla (o se licua). Se disuelve la leche en polvo en agua, y se incorpora la vainilla, la nuez moscada, los huevos y el azúcar. Se bate (o se licua) y se agrega la fruta. Se puede incorporar hielo picado y servirse frío.'),
(25, 'Azúcar', '250 gr', 5, 3, 'Sorbete de borojó', 'Se corta la fruta en dos, con una cuchara se le extrae la pulpa, que se pone en un poco de agua, y se bate con molinillo hasta disolverla (o se licua). Se disuelve la leche en polvo en agua, y se incorpora la vainilla, la nuez moscada, los huevos y el azúcar. Se bate (o se licua) y se agrega la fruta. Se puede incorporar hielo picado y servirse frío.'),
(26, 'Huevo', '2, batidos', 5, 19, 'Sorbete de borojó', 'Se corta la fruta en dos, con una cuchara se le extrae la pulpa, que se pone en un poco de agua, y se bate con molinillo hasta disolverla (o se licua). Se disuelve la leche en polvo en agua, y se incorpora la vainilla, la nuez moscada, los huevos y el azúcar. Se bate (o se licua) y se agrega la fruta. Se puede incorporar hielo picado y servirse frío.'),
(28, 'Nuez moscada', '½ cucharadita', 5, 5, 'Sorbete de borojó', 'Se corta la fruta en dos, con una cuchara se le extrae la pulpa, que se pone en un poco de agua, y se bate con molinillo hasta disolverla (o se licua). Se disuelve la leche en polvo en agua, y se incorpora la vainilla, la nuez moscada, los huevos y el azúcar. Se bate (o se licua) y se agrega la fruta. Se puede incorporar hielo picado y servirse frío.'),
(29, 'Agua', '10 tazas', 6, 17, 'Caldo de dentón salpreso', 'Los dentones se lavan muy bien y se ponen en agua hirviendo por 10 minutos para desalarlos. Se bota el agua y el pescado se deja aparte. En las 10 tazas de agua se ponen los plátanos a cocinar por 25 minutos a fuego alto. Aparte, se sofríen en la manteca (o en el aceite) las cebollas, el tomate, la bija, y se agregan al caldo con los pescados, la pimienta y el comino. Se tapa y se deja conservar por 20 minutos a fuego lento. Se le añade el cilantro, se prueba de sal y se sirve.'),
(30, 'Salpresos', '4 dentones', 6, 20, 'Caldo de dentón salpreso', 'Los dentones se lavan muy bien y se ponen en agua hirviendo por 10 minutos para desalarlos. Se bota el agua y el pescado se deja aparte. En las 10 tazas de agua se ponen los plátanos a cocinar por 25 minutos a fuego alto. Aparte, se sofríen en la manteca (o en el aceite) las cebollas, el tomate, la bija, y se agregan al caldo con los pescados, la pimienta y el comino. Se tapa y se deja conservar por 20 minutos a fuego lento. Se le añade el cilantro, se prueba de sal y se sirve.'),
(31, 'Plátano verde', '3', 6, 21, 'Caldo de dentón salpreso', 'Los dentones se lavan muy bien y se ponen en agua hirviendo por 10 minutos para desalarlos. Se bota el agua y el pescado se deja aparte. En las 10 tazas de agua se ponen los plátanos a cocinar por 25 minutos a fuego alto. Aparte, se sofríen en la manteca (o en el aceite) las cebollas, el tomate, la bija, y se agregan al caldo con los pescados, la pimienta y el comino. Se tapa y se deja conservar por 20 minutos a fuego lento. Se le añade el cilantro, se prueba de sal y se sirve.'),
(32, 'Cebolla cabezona', '2', 6, 33, 'Caldo de dentón salpreso', 'Los dentones se lavan muy bien y se ponen en agua hirviendo por 10 minutos para desalarlos. Se bota el agua y el pescado se deja aparte. En las 10 tazas de agua se ponen los plátanos a cocinar por 25 minutos a fuego alto. Aparte, se sofríen en la manteca (o en el aceite) las cebollas, el tomate, la bija, y se agregan al caldo con los pescados, la pimienta y el comino. Se tapa y se deja conservar por 20 minutos a fuego lento. Se le añade el cilantro, se prueba de sal y se sirve.'),
(33, 'Tallo de cebolla', '4', 6, 23, 'Caldo de dentón salpreso', 'Los dentones se lavan muy bien y se ponen en agua hirviendo por 10 minutos para desalarlos. Se bota el agua y el pescado se deja aparte. En las 10 tazas de agua se ponen los plátanos a cocinar por 25 minutos a fuego alto. Aparte, se sofríen en la manteca (o en el aceite) las cebollas, el tomate, la bija, y se agregan al caldo con los pescados, la pimienta y el comino. Se tapa y se deja conservar por 20 minutos a fuego lento. Se le añade el cilantro, se prueba de sal y se sirve.'),
(34, 'Tomate maduro', '2', 6, 34, 'Caldo de dentón salpreso', 'Los dentones se lavan muy bien y se ponen en agua hirviendo por 10 minutos para desalarlos. Se bota el agua y el pescado se deja aparte. En las 10 tazas de agua se ponen los plátanos a cocinar por 25 minutos a fuego alto. Aparte, se sofríen en la manteca (o en el aceite) las cebollas, el tomate, la bija, y se agregan al caldo con los pescados, la pimienta y el comino. Se tapa y se deja conservar por 20 minutos a fuego lento. Se le añade el cilantro, se prueba de sal y se sirve.'),
(35, 'Albahaca', '3 ramitas', 6, 24, 'Caldo de dentón salpreso', 'Los dentones se lavan muy bien y se ponen en agua hirviendo por 10 minutos para desalarlos. Se bota el agua y el pescado se deja aparte. En las 10 tazas de agua se ponen los plátanos a cocinar por 25 minutos a fuego alto. Aparte, se sofríen en la manteca (o en el aceite) las cebollas, el tomate, la bija, y se agregan al caldo con los pescados, la pimienta y el comino. Se tapa y se deja conservar por 20 minutos a fuego lento. Se le añade el cilantro, se prueba de sal y se sirve.'),
(36, 'Bija', '1 cucharada', 6, 25, 'Caldo de dentón salpreso', 'Los dentones se lavan muy bien y se ponen en agua hirviendo por 10 minutos para desalarlos. Se bota el agua y el pescado se deja aparte. En las 10 tazas de agua se ponen los plátanos a cocinar por 25 minutos a fuego alto. Aparte, se sofríen en la manteca (o en el aceite) las cebollas, el tomate, la bija, y se agregan al caldo con los pescados, la pimienta y el comino. Se tapa y se deja conservar por 20 minutos a fuego lento. Se le añade el cilantro, se prueba de sal y se sirve.'),
(37, 'Manteca', '2 cucharadas', 6, 26, 'Caldo de dentón salpreso', 'Los dentones se lavan muy bien y se ponen en agua hirviendo por 10 minutos para desalarlos. Se bota el agua y el pescado se deja aparte. En las 10 tazas de agua se ponen los plátanos a cocinar por 25 minutos a fuego alto. Aparte, se sofríen en la manteca (o en el aceite) las cebollas, el tomate, la bija, y se agregan al caldo con los pescados, la pimienta y el comino. Se tapa y se deja conservar por 20 minutos a fuego lento. Se le añade el cilantro, se prueba de sal y se sirve.'),
(38, 'Cilantro cimarrón', '4 hojas', 6, 27, 'Caldo de dentón salpreso', 'Los dentones se lavan muy bien y se ponen en agua hirviendo por 10 minutos para desalarlos. Se bota el agua y el pescado se deja aparte. En las 10 tazas de agua se ponen los plátanos a cocinar por 25 minutos a fuego alto. Aparte, se sofríen en la manteca (o en el aceite) las cebollas, el tomate, la bija, y se agregan al caldo con los pescados, la pimienta y el comino. Se tapa y se deja conservar por 20 minutos a fuego lento. Se le añade el cilantro, se prueba de sal y se sirve.'),
(39, 'Sal', 'Al gusto', 6, 6, 'Caldo de dentón salpreso', 'Los dentones se lavan muy bien y se ponen en agua hirviendo por 10 minutos para desalarlos. Se bota el agua y el pescado se deja aparte. En las 10 tazas de agua se ponen los plátanos a cocinar por 25 minutos a fuego alto. Aparte, se sofríen en la manteca (o en el aceite) las cebollas, el tomate, la bija, y se agregan al caldo con los pescados, la pimienta y el comino. Se tapa y se deja conservar por 20 minutos a fuego lento. Se le añade el cilantro, se prueba de sal y se sirve.'),
(40, 'Pimienta', 'Al gusto', 6, 29, 'Caldo de dentón salpreso', 'Los dentones se lavan muy bien y se ponen en agua hirviendo por 10 minutos para desalarlos. Se bota el agua y el pescado se deja aparte. En las 10 tazas de agua se ponen los plátanos a cocinar por 25 minutos a fuego alto. Aparte, se sofríen en la manteca (o en el aceite) las cebollas, el tomate, la bija, y se agregan al caldo con los pescados, la pimienta y el comino. Se tapa y se deja conservar por 20 minutos a fuego lento. Se le añade el cilantro, se prueba de sal y se sirve.'),
(41, 'Agua', '12 tazas', 7, 17, 'Caldo de gasapo', 'Se pone a hervir el agua, se le agregan los gasapos, se dejan cocinar por 5 minutos, se sacan y se pelan. En el caldo se ponen a cocinar los plátanos y las papas por 30 minutos a fuego alto. Se le agrega el refrito, sal y pimienta. Se revuelve, se baja a fuego lento. Se le incorpora la leche de coco y los gasapos pelados, se tapa y se deja conservar por 10 minutos. Se sirve con arroz.'),
(42, 'Camarón', '1 kg', 7, 30, 'Caldo de gasapo', 'Se pone a hervir el agua, se le agregan los gasapos, se dejan cocinar por 5 minutos, se sacan y se pelan. En el caldo se ponen a cocinar los plátanos y las papas por 30 minutos a fuego alto. Se le agrega el refrito, sal y pimienta. Se revuelve, se baja a fuego lento. Se le incorpora la leche de coco y los gasapos pelados, se tapa y se deja conservar por 10 minutos. Se sirve con arroz.'),
(43, 'Papa', '1 libra', 7, 31, 'Caldo de gasapo', 'Se pone a hervir el agua, se le agregan los gasapos, se dejan cocinar por 5 minutos, se sacan y se pelan. En el caldo se ponen a cocinar los plátanos y las papas por 30 minutos a fuego alto. Se le agrega el refrito, sal y pimienta. Se revuelve, se baja a fuego lento. Se le incorpora la leche de coco y los gasapos pelados, se tapa y se deja conservar por 10 minutos. Se sirve con arroz.'),
(44, 'Plátano verde', '4', 7, 21, 'Caldo de gasapo', 'Se pone a hervir el agua, se le agregan los gasapos, se dejan cocinar por 5 minutos, se sacan y se pelan. En el caldo se ponen a cocinar los plátanos y las papas por 30 minutos a fuego alto. Se le agrega el refrito, sal y pimienta. Se revuelve, se baja a fuego lento. Se le incorpora la leche de coco y los gasapos pelados, se tapa y se deja conservar por 10 minutos. Se sirve con arroz.'),
(45, 'Leche de coco', '1 taza', 7, 9, 'Caldo de gasapo', 'Se pone a hervir el agua, se le agregan los gasapos, se dejan cocinar por 5 minutos, se sacan y se pelan. En el caldo se ponen a cocinar los plátanos y las papas por 30 minutos a fuego alto. Se le agrega el refrito, sal y pimienta. Se revuelve, se baja a fuego lento. Se le incorpora la leche de coco y los gasapos pelados, se tapa y se deja conservar por 10 minutos. Se sirve con arroz.'),
(46, 'Sal', 'Al gusto', 7, 6, 'Caldo de gasapo', 'Se pone a hervir el agua, se le agregan los gasapos, se dejan cocinar por 5 minutos, se sacan y se pelan. En el caldo se ponen a cocinar los plátanos y las papas por 30 minutos a fuego alto. Se le agrega el refrito, sal y pimienta. Se revuelve, se baja a fuego lento. Se le incorpora la leche de coco y los gasapos pelados, se tapa y se deja conservar por 10 minutos. Se sirve con arroz.'),
(47, 'Pimienta', 'Al gusto', 7, 29, 'Caldo de gasapo', 'Se pone a hervir el agua, se le agregan los gasapos, se dejan cocinar por 5 minutos, se sacan y se pelan. En el caldo se ponen a cocinar los plátanos y las papas por 30 minutos a fuego alto. Se le agrega el refrito, sal y pimienta. Se revuelve, se baja a fuego lento. Se le incorpora la leche de coco y los gasapos pelados, se tapa y se deja conservar por 10 minutos. Se sirve con arroz.'),
(48, 'Agua', '10 tazas', 8, 17, 'Caldo de guacuco', 'Luego se le va añadiendo la leche caliente y el caldo mientras se sigue rebullendo hasta que quede una crema suave (unos 15 minutos). No se debe dejar hervir en ningún momento. Se le incorpora la crema de leche, se revuelve y se sirve en cazuelas o platos soperos con la cebolla larga (o la cebolleta), rociada por encima.'),
(49, 'Guacuco', '8', 8, 32, 'Caldo de guacuco', 'Luego se le va añadiendo la leche caliente y el caldo mientras se sigue rebullendo hasta que quede una crema suave (unos 15 minutos). No se debe dejar hervir en ningún momento. Se le incorpora la crema de leche, se revuelve y se sirve en cazuelas o platos soperos con la cebolla larga (o la cebolleta), rociada por encima.'),
(50, 'Plátano verde', '2', 8, 21, 'Caldo de guacuco', 'Luego se le va añadiendo la leche caliente y el caldo mientras se sigue rebullendo hasta que quede una crema suave (unos 15 minutos). No se debe dejar hervir en ningún momento. Se le incorpora la crema de leche, se revuelve y se sirve en cazuelas o platos soperos con la cebolla larga (o la cebolleta), rociada por encima.'),
(51, 'Papa', '500 gr', 8, 31, 'Caldo de guacuco', 'Luego se le va añadiendo la leche caliente y el caldo mientras se sigue rebullendo hasta que quede una crema suave (unos 15 minutos). No se debe dejar hervir en ningún momento. Se le incorpora la crema de leche, se revuelve y se sirve en cazuelas o platos soperos con la cebolla larga (o la cebolleta), rociada por encima.'),
(52, 'Tallos de cebolla en rama', '4', 8, 23, 'Caldo de guacuco', 'Luego se le va añadiendo la leche caliente y el caldo mientras se sigue rebullendo hasta que quede una crema suave (unos 15 minutos). No se debe dejar hervir en ningún momento. Se le incorpora la crema de leche, se revuelve y se sirve en cazuelas o platos soperos con la cebolla larga (o la cebolleta), rociada por encima.'),
(53, 'Cebolla cabezona', '2', 8, 33, 'Caldo de guacuco', 'Luego se le va añadiendo la leche caliente y el caldo mientras se sigue rebullendo hasta que quede una crema suave (unos 15 minutos). No se debe dejar hervir en ningún momento. Se le incorpora la crema de leche, se revuelve y se sirve en cazuelas o platos soperos con la cebolla larga (o la cebolleta), rociada por encima.'),
(54, 'Tomate maduro', '2', 8, 34, 'Caldo de guacuco', 'Luego se le va añadiendo la leche caliente y el caldo mientras se sigue rebullendo hasta que quede una crema suave (unos 15 minutos). No se debe dejar hervir en ningún momento. Se le incorpora la crema de leche, se revuelve y se sirve en cazuelas o platos soperos con la cebolla larga (o la cebolleta), rociada por encima.'),
(55, 'Huevos de pescado ', '1 kg', 10, 35, 'Crema de huevos de pescado', 'Se lavan y se secan los huevos, se pican y se ponen con el sofrito, sal y pimienta en la mantequilla a fuego moderado por 10 minutos. Aparte, se pone la leche a hervir a fuego medio, se le agrega el plátano raspado y se deja cocinar por 15 minutos, se baja a fuego muy lento y se incorporan los huevos y la leche de coco; se revuelve, se tapa y se deja conservar por 10 minutos. Se espolvorea con la cebolleta y el raspado de picha y se sirve.'),
(56, 'Leche', '8 tazas', 10, 10, 'Crema de huevos de pescado', 'Se lavan y se secan los huevos, se pican y se ponen con el sofrito, sal y pimienta en la mantequilla a fuego moderado por 10 minutos. Aparte, se pone la leche a hervir a fuego medio, se le agrega el plátano raspado y se deja cocinar por 15 minutos, se baja a fuego muy lento y se incorporan los huevos y la leche de coco; se revuelve, se tapa y se deja conservar por 10 minutos. Se espolvorea con la cebolleta y el raspado de picha y se sirve.'),
(57, 'Mantequilla', '5 cucharadas', 10, 36, 'Crema de huevos de pescado', 'Se lavan y se secan los huevos, se pican y se ponen con el sofrito, sal y pimienta en la mantequilla a fuego moderado por 10 minutos. Aparte, se pone la leche a hervir a fuego medio, se le agrega el plátano raspado y se deja cocinar por 15 minutos, se baja a fuego muy lento y se incorporan los huevos y la leche de coco; se revuelve, se tapa y se deja conservar por 10 minutos. Se espolvorea con la cebolleta y el raspado de picha y se sirve.'),
(58, 'Plátanos verde', '1', 10, 21, 'Crema de huevos de pescado', 'Se lavan y se secan los huevos, se pican y se ponen con el sofrito, sal y pimienta en la mantequilla a fuego moderado por 10 minutos. Aparte, se pone la leche a hervir a fuego medio, se le agrega el plátano raspado y se deja cocinar por 15 minutos, se baja a fuego muy lento y se incorporan los huevos y la leche de coco; se revuelve, se tapa y se deja conservar por 10 minutos. Se espolvorea con la cebolleta y el raspado de picha y se sirve.'),
(59, 'Leche de coco', '1 taza', 10, 9, 'Crema de huevos de pescado', 'Se lavan y se secan los huevos, se pican y se ponen con el sofrito, sal y pimienta en la mantequilla a fuego moderado por 10 minutos. Aparte, se pone la leche a hervir a fuego medio, se le agrega el plátano raspado y se deja cocinar por 15 minutos, se baja a fuego muy lento y se incorporan los huevos y la leche de coco; se revuelve, se tapa y se deja conservar por 10 minutos. Se espolvorea con la cebolleta y el raspado de picha y se sirve.'),
(60, 'Cebolleta', '2 cucharadas', 10, 37, 'Crema de huevos de pescado', 'Se lavan y se secan los huevos, se pican y se ponen con el sofrito, sal y pimienta en la mantequilla a fuego moderado por 10 minutos. Aparte, se pone la leche a hervir a fuego medio, se le agrega el plátano raspado y se deja cocinar por 15 minutos, se baja a fuego muy lento y se incorporan los huevos y la leche de coco; se revuelve, se tapa y se deja conservar por 10 minutos. Se espolvorea con la cebolleta y el raspado de picha y se sirve.'),
(61, 'Picha de toro o de tortuga macho', '½ cucharadita', 10, 38, 'Crema de huevos de pescado', 'Se lavan y se secan los huevos, se pican y se ponen con el sofrito, sal y pimienta en la mantequilla a fuego moderado por 10 minutos. Aparte, se pone la leche a hervir a fuego medio, se le agrega el plátano raspado y se deja cocinar por 15 minutos, se baja a fuego muy lento y se incorporan los huevos y la leche de coco; se revuelve, se tapa y se deja conservar por 10 minutos. Se espolvorea con la cebolleta y el raspado de picha y se sirve.'),
(62, 'Maíz ', '1 kg', 20, 2, 'Panochas', 'Se muele el maíz en grueso, se lava muy bien restregándolo en el agua para sacarle la caspa. Una vez limpio se muele otra vez en fino. Esta masa se mezcla con la miel y las especias, se amasa muy bien, se toman porciones y se hacen galletas, que se colocan sobre una lata engrasada y se llevan al horno precalentado a 350° por 12 minutos aproximadamente.'),
(63, 'Miel de panela', '1 taza', 20, 59, 'Panochas', 'Se muele el maíz en grueso, se lava muy bien restregándolo en el agua para sacarle la caspa. Una vez limpio se muele otra vez en fino. Esta masa se mezcla con la miel y las especias, se amasa muy bien, se toman porciones y se hacen galletas, que se colocan sobre una lata engrasada y se llevan al horno precalentado a 350° por 12 minutos aproximadamente.'),
(66, 'Plátanos', '8', 22, 139, 'Gato encerrado', 'Se ponen los plátanos a asar al horno hasta que estén dorados, se sacan y se cortan a lo largo hasta el corazón, que se le extrae rellenando su espacio con el bocadillo y el queso. Se regresan al horno por 10 minutos y se sirven. (Opcional: se les puede rociar un poco de mantequilla y de sal).'),
(67, 'Queso blanco', 'Queso', 22, 46, 'Gato encerrado', 'Se ponen los plátanos a asar al horno hasta que estén dorados, se sacan y se cortan a lo largo hasta el corazón, que se le extrae rellenando su espacio con el bocadillo y el queso. Se regresan al horno por 10 minutos y se sirven. (Opcional: se les puede rociar un poco de mantequilla y de sal).'),
(68, 'Bocadillo de guayaba', '250 gr', 22, 63, 'Gato encerrado', 'Se ponen los plátanos a asar al horno hasta que estén dorados, se sacan y se cortan a lo largo hasta el corazón, que se le extrae rellenando su espacio con el bocadillo y el queso. Se regresan al horno por 10 minutos y se sirven. (Opcional: se les puede rociar un poco de mantequilla y de sal).'),
(69, 'Yuca', '3 libras', 23, 41, 'Enyucado', 'Se pone la yuca rallada en una batea, se le agrega el coco rallado (se mezcla bien), luego los aliños de chocolate, el melado, el queso y la sal. Se amasa todo bien y se vierte en un molde previamente engrasado. Se lleva al horno precalentado a 350ºC por 20 minutos, hasta que pase la prueba del cuchillo.'),
(70, 'Coco', '1', 23, 64, 'Enyucado', 'Se pone la yuca rallada en una batea, se le agrega el coco rallado (se mezcla bien), luego los aliños de chocolate, el melado, el queso y la sal. Se amasa todo bien y se vierte en un molde previamente engrasado. Se lleva al horno precalentado a 350ºC por 20 minutos, hasta que pase la prueba del cuchillo.'),
(71, 'Panela en melado', '1', 23, 65, 'Enyucado', 'Se pone la yuca rallada en una batea, se le agrega el coco rallado (se mezcla bien), luego los aliños de chocolate, el melado, el queso y la sal. Se amasa todo bien y se vierte en un molde previamente engrasado. Se lleva al horno precalentado a 350ºC por 20 minutos, hasta que pase la prueba del cuchillo.'),
(72, 'Queso rallado', '250 gr', 23, 66, 'Enyucado', 'Se pone la yuca rallada en una batea, se le agrega el coco rallado (se mezcla bien), luego los aliños de chocolate, el melado, el queso y la sal. Se amasa todo bien y se vierte en un molde previamente engrasado. Se lleva al horno precalentado a 350ºC por 20 minutos, hasta que pase la prueba del cuchillo.'),
(73, 'Sal', '1 pizquita', 23, 6, 'Enyucado', 'Se pone la yuca rallada en una batea, se le agrega el coco rallado (se mezcla bien), luego los aliños de chocolate, el melado, el queso y la sal. Se amasa todo bien y se vierte en un molde previamente engrasado. Se lleva al horno precalentado a 350ºC por 20 minutos, hasta que pase la prueba del cuchillo.'),
(74, 'Pescado fresco', '1 kg', 29, 45, 'Pescado encurtido', 'Se pasa el pescado por agua hirviendo por 1 minuto, se saca y se escurre. Se mezcla el resto de los ingredientes y se pone el pescado a marinar por mínimo 6 horas. (Opcionalmente se puede revolver con vegetales cocidos, como zanahoria y apio). Se sirve sobre una cama de lechuga y con tajaditas de limón.'),
(75, 'Cebolla larga', '3 tallos', 29, 42, 'Pescado encurtido', 'Se pasa el pescado por agua hirviendo por 1 minuto, se saca y se escurre. Se mezcla el resto de los ingredientes y se pone el pescado a marinar por mínimo 6 horas. (Opcionalmente se puede revolver con vegetales cocidos, como zanahoria y apio). Se sirve sobre una cama de lechuga y con tajaditas de limón.'),
(76, 'Vinagre', '1 taza', 29, 69, 'Pescado encurtido', 'Se pasa el pescado por agua hirviendo por 1 minuto, se saca y se escurre. Se mezcla el resto de los ingredientes y se pone el pescado a marinar por mínimo 6 horas. (Opcionalmente se puede revolver con vegetales cocidos, como zanahoria y apio). Se sirve sobre una cama de lechuga y con tajaditas de limón.'),
(77, 'Limón', '6', 29, 70, 'Pescado encurtido', 'Se pasa el pescado por agua hirviendo por 1 minuto, se saca y se escurre. Se mezcla el resto de los ingredientes y se pone el pescado a marinar por mínimo 6 horas. (Opcionalmente se puede revolver con vegetales cocidos, como zanahoria y apio). Se sirve sobre una cama de lechuga y con tajaditas de limón.'),
(78, 'Mostaza', '1 cucharada', 29, 71, 'Pescado encurtido', 'Se pasa el pescado por agua hirviendo por 1 minuto, se saca y se escurre. Se mezcla el resto de los ingredientes y se pone el pescado a marinar por mínimo 6 horas. (Opcionalmente se puede revolver con vegetales cocidos, como zanahoria y apio). Se sirve sobre una cama de lechuga y con tajaditas de limón.'),
(79, 'Tomillo', '1 cucharada', 29, 185, 'Pescado encurtido', 'Se pasa el pescado por agua hirviendo por 1 minuto, se saca y se escurre. Se mezcla el resto de los ingredientes y se pone el pescado a marinar por mínimo 6 horas. (Opcionalmente se puede revolver con vegetales cocidos, como zanahoria y apio). Se sirve sobre una cama de lechuga y con tajaditas de limón.'),
(80, 'Cilantro', '1 cucharada', 29, 73, 'Pescado encurtido', 'Se pasa el pescado por agua hirviendo por 1 minuto, se saca y se escurre. Se mezcla el resto de los ingredientes y se pone el pescado a marinar por mínimo 6 horas. (Opcionalmente se puede revolver con vegetales cocidos, como zanahoria y apio). Se sirve sobre una cama de lechuga y con tajaditas de limón.'),
(81, 'Aceite', '2 cucharadas', 29, 74, 'Pescado encurtido', 'Se pasa el pescado por agua hirviendo por 1 minuto, se saca y se escurre. Se mezcla el resto de los ingredientes y se pone el pescado a marinar por mínimo 6 horas. (Opcionalmente se puede revolver con vegetales cocidos, como zanahoria y apio). Se sirve sobre una cama de lechuga y con tajaditas de limón.'),
(82, 'Sal', 'Al gusto', 29, 6, 'Pescado encurtido', 'Se pasa el pescado por agua hirviendo por 1 minuto, se saca y se escurre. Se mezcla el resto de los ingredientes y se pone el pescado a marinar por mínimo 6 horas. (Opcionalmente se puede revolver con vegetales cocidos, como zanahoria y apio). Se sirve sobre una cama de lechuga y con tajaditas de limón.'),
(83, 'Pimienta', 'Al gusto', 29, 29, 'Pescado encurtido', 'Se pasa el pescado por agua hirviendo por 1 minuto, se saca y se escurre. Se mezcla el resto de los ingredientes y se pone el pescado a marinar por mínimo 6 horas. (Opcionalmente se puede revolver con vegetales cocidos, como zanahoria y apio). Se sirve sobre una cama de lechuga y con tajaditas de limón.'),
(84, 'Papaya biche', '1', 33, 75, 'Cabellito de papaya biche', 'Se corta la piel de la papaya y se deja deslechar por un día. Se pela, se corta la pulpa en trozos y luego en palitos (lo más delgados posibles). Se ponen a calar en agua de azúcar, hasta que estén a punto.'),
(85, 'Agua', '½ litro', 33, 17, 'Cabellito de papaya biche', 'Se corta la piel de la papaya y se deja deslechar por un día. Se pela, se corta la pulpa en trozos y luego en palitos (lo más delgados posibles). Se ponen a calar en agua de azúcar, hasta que estén a punto.'),
(86, 'Azúcar', '500 gr', 33, 3, 'Cabellito de papaya biche', 'Se corta la piel de la papaya y se deja deslechar por un día. Se pela, se corta la pulpa en trozos y luego en palitos (lo más delgados posibles). Se ponen a calar en agua de azúcar, hasta que estén a punto.'),
(87, 'Cocos pelados', '2', 34, 64, 'Cocadas', 'Se ponen el afrecho del coco y el agua de los dos cocos, media libra (250 gr) de azúcar y los clavos, a cocinar. Cuando empiece a espesarse el almíbar, se le agrega el resto del azúcar y el jugo del limón, se revuelve con la cagüinga (cuchara de palo) hasta que se endurezca. Se sacan pequeñas porciones con una cuchara, se ponen sobre una fuente húmeda y se dejan enfriar.'),
(88, 'Azúcar', '750 gr', 34, 3, 'Cocadas', 'Se ponen el afrecho del coco y el agua de los dos cocos, media libra (250 gr) de azúcar y los clavos, a cocinar. Cuando empiece a espesarse el almíbar, se le agrega el resto del azúcar y el jugo del limón, se revuelve con la cagüinga (cuchara de palo) hasta que se endurezca. Se sacan pequeñas porciones con una cuchara, se ponen sobre una fuente húmeda y se dejan enfriar.'),
(89, 'Clavos de olor molidos', '4', 34, 61, 'Cocadas', 'Se ponen el afrecho del coco y el agua de los dos cocos, media libra (250 gr) de azúcar y los clavos, a cocinar. Cuando empiece a espesarse el almíbar, se le agrega el resto del azúcar y el jugo del limón, se revuelve con la cagüinga (cuchara de palo) hasta que se endurezca. Se sacan pequeñas porciones con una cuchara, se ponen sobre una fuente húmeda y se dejan enfriar.'),
(90, 'Limón', '1', 34, 70, 'Cocadas', 'Se ponen el afrecho del coco y el agua de los dos cocos, media libra (250 gr) de azúcar y los clavos, a cocinar. Cuando empiece a espesarse el almíbar, se le agrega el resto del azúcar y el jugo del limón, se revuelve con la cagüinga (cuchara de palo) hasta que se endurezca. Se sacan pequeñas porciones con una cuchara, se ponen sobre una fuente húmeda y se dejan enfriar.'),
(91, 'Leche', '2 litros', 37, 10, 'La Macana', 'Se ponen todos los ingredientes juntos a cocinar en un recipiente a fuego lento, revolviendo constantemente hasta lograr una colada espesa. Se sirve caliente.'),
(92, 'Mantequilla', '4 cucharadas', 37, 36, 'La Macana', 'Se ponen todos los ingredientes juntos a cocinar en un recipiente a fuego lento, revolviendo constantemente hasta lograr una colada espesa. Se sirve caliente.'),
(93, 'Huevo', '4 yemas batidas', 37, 19, 'La Macana', 'Se ponen todos los ingredientes juntos a cocinar en un recipiente a fuego lento, revolviendo constantemente hasta lograr una colada espesa. Se sirve caliente.'),
(94, 'Galletas dulces', '2 tazas', 37, 77, 'La Macana', 'Se ponen todos los ingredientes juntos a cocinar en un recipiente a fuego lento, revolviendo constantemente hasta lograr una colada espesa. Se sirve caliente.'),
(95, 'Azúcar', '2 tazas', 37, 3, 'La Macana', 'Se ponen todos los ingredientes juntos a cocinar en un recipiente a fuego lento, revolviendo constantemente hasta lograr una colada espesa. Se sirve caliente.'),
(96, 'Piña pelada y picada', '½', 38, 1, 'Macedonia de frutas', 'Se mezclan todas las frutas con el jugo de naranja, el vino y el almíbar (en ese orden). Se revuelve bien, se agrega hielo picado y se sirve. (Se le puede añadir cualquier otra fruta que se desee).'),
(97, 'Papaya pelada y picada', '½', 38, 78, 'Macedonia de frutas', 'Se mezclan todas las frutas con el jugo de naranja, el vino y el almíbar (en ese orden). Se revuelve bien, se agrega hielo picado y se sirve. (Se le puede añadir cualquier otra fruta que se desee).'),
(98, 'Melón pelado y picado', '1 melón', 38, 79, 'Macedonia de frutas', 'Se mezclan todas las frutas con el jugo de naranja, el vino y el almíbar (en ese orden). Se revuelve bien, se agrega hielo picado y se sirve. (Se le puede añadir cualquier otra fruta que se desee).'),
(99, 'Banano pelado y picado', '2', 38, 80, 'Macedonia de frutas', 'Se mezclan todas las frutas con el jugo de naranja, el vino y el almíbar (en ese orden). Se revuelve bien, se agrega hielo picado y se sirve. (Se le puede añadir cualquier otra fruta que se desee).'),
(100, 'Mango maduro', '2', 38, 81, 'Macedonia de frutas', 'Se mezclan todas las frutas con el jugo de naranja, el vino y el almíbar (en ese orden). Se revuelve bien, se agrega hielo picado y se sirve. (Se le puede añadir cualquier otra fruta que se desee).'),
(101, 'Naranja', '4', 38, 82, 'Macedonia de frutas', 'Se mezclan todas las frutas con el jugo de naranja, el vino y el almíbar (en ese orden). Se revuelve bien, se agrega hielo picado y se sirve. (Se le puede añadir cualquier otra fruta que se desee).'),
(102, 'Almíbar de azúcar', '½ taza', 38, 83, 'Macedonia de frutas', 'Se mezclan todas las frutas con el jugo de naranja, el vino y el almíbar (en ese orden). Se revuelve bien, se agrega hielo picado y se sirve. (Se le puede añadir cualquier otra fruta que se desee).'),
(103, 'Copa de vino rojo', '1', 38, 127, 'Macedonia de frutas', 'Se mezclan todas las frutas con el jugo de naranja, el vino y el almíbar (en ese orden). Se revuelve bien, se agrega hielo picado y se sirve. (Se le puede añadir cualquier otra fruta que se desee).'),
(104, 'Plátano maduro', '3', 47, 139, 'Empanaditas de maduro', 'Se muelen los plátanos y se amasan bien con un poco de sal. Se toman porciones y se pampean formando arepitas. Se les pone en la mitad un poco de queso bañado con miel de abeja y se cierran formando empanaditas. Estas se rebozan en el batido de huevos y harina y se fríen inmediatamente en aceite caliente, hasta que doren.'),
(105, 'Queso', '500 gr', 47, 46, 'Empanaditas de maduro', 'Se muelen los plátanos y se amasan bien con un poco de sal. Se toman porciones y se pampean formando arepitas. Se les pone en la mitad un poco de queso bañado con miel de abeja y se cierran formando empanaditas. Estas se rebozan en el batido de huevos y harina y se fríen inmediatamente en aceite caliente, hasta que doren.'),
(106, 'Miel de abeja', '3 cucharadas', 47, 97, 'Empanaditas de maduro', 'Se muelen los plátanos y se amasan bien con un poco de sal. Se toman porciones y se pampean formando arepitas. Se les pone en la mitad un poco de queso bañado con miel de abeja y se cierran formando empanaditas. Estas se rebozan en el batido de huevos y harina y se fríen inmediatamente en aceite caliente, hasta que doren.'),
(107, 'Huevo', '3, batidos', 47, 19, 'Empanaditas de maduro', 'Se muelen los plátanos y se amasan bien con un poco de sal. Se toman porciones y se pampean formando arepitas. Se les pone en la mitad un poco de queso bañado con miel de abeja y se cierran formando empanaditas. Estas se rebozan en el batido de huevos y harina y se fríen inmediatamente en aceite caliente, hasta que doren.'),
(108, 'Harina de trigo', '2 cucharadas', 47, 98, 'Empanaditas de maduro', 'Se muelen los plátanos y se amasan bien con un poco de sal. Se toman porciones y se pampean formando arepitas. Se les pone en la mitad un poco de queso bañado con miel de abeja y se cierran formando empanaditas. Estas se rebozan en el batido de huevos y harina y se fríen inmediatamente en aceite caliente, hasta que doren.'),
(109, 'Sal', 'Al gusto', 47, 6, 'Empanaditas de maduro', 'Se muelen los plátanos y se amasan bien con un poco de sal. Se toman porciones y se pampean formando arepitas. Se les pone en la mitad un poco de queso bañado con miel de abeja y se cierran formando empanaditas. Estas se rebozan en el batido de huevos y harina y se fríen inmediatamente en aceite caliente, hasta que doren.'),
(112, 'Rodaja de pan francés', '8 ', 50, 99, 'Torrijas', 'Se remojan las rodajas en la leche y en el agua de azahares, se dejan escurrir. Se rebozan los huevos, se espolvorean con el azúcar y el rallado de limón, e inmediatamente se fríen en una mezcla de aceite y mantequilla calientes, hasta dorar. Se espolvorean nuevamente con azúcar y canela (o anís) y se sirven. Son muy apreciadas para el desayuno.'),
(113, 'Leche', '1 taza', 50, 10, 'Torrijas', 'Se remojan las rodajas en la leche y en el agua de azahares, se dejan escurrir. Se rebozan los huevos, se espolvorean con el azúcar y el rallado de limón, e inmediatamente se fríen en una mezcla de aceite y mantequilla calientes, hasta dorar. Se espolvorean nuevamente con azúcar y canela (o anís) y se sirven. Son muy apreciadas para el desayuno.'),
(114, 'Azúcar', '2', 50, 3, 'Torrijas', 'Se remojan las rodajas en la leche y en el agua de azahares, se dejan escurrir. Se rebozan los huevos, se espolvorean con el azúcar y el rallado de limón, e inmediatamente se fríen en una mezcla de aceite y mantequilla calientes, hasta dorar. Se espolvorean nuevamente con azúcar y canela (o anís) y se sirven. Son muy apreciadas para el desayuno.'),
(115, 'Agua de azahares', '2', 50, 100, 'Torrijas', 'Se remojan las rodajas en la leche y en el agua de azahares, se dejan escurrir. Se rebozan los huevos, se espolvorean con el azúcar y el rallado de limón, e inmediatamente se fríen en una mezcla de aceite y mantequilla calientes, hasta dorar. Se espolvorean nuevamente con azúcar y canela (o anís) y se sirven. Son muy apreciadas para el desayuno.'),
(116, 'Limón', '1', 50, 70, 'Torrijas', 'Se remojan las rodajas en la leche y en el agua de azahares, se dejan escurrir. Se rebozan los huevos, se espolvorean con el azúcar y el rallado de limón, e inmediatamente se fríen en una mezcla de aceite y mantequilla calientes, hasta dorar. Se espolvorean nuevamente con azúcar y canela (o anís) y se sirven. Son muy apreciadas para el desayuno.'),
(117, 'Huevo batido', '4', 50, 19, 'Torrijas', 'Se remojan las rodajas en la leche y en el agua de azahares, se dejan escurrir. Se rebozan los huevos, se espolvorean con el azúcar y el rallado de limón, e inmediatamente se fríen en una mezcla de aceite y mantequilla calientes, hasta dorar. Se espolvorean nuevamente con azúcar y canela (o anís) y se sirven. Son muy apreciadas para el desayuno.'),
(120, 'Canela en polvo', '1 cucharada', 50, 13, 'Torrijas', 'Se remojan las rodajas en la leche y en el agua de azahares, se dejan escurrir. Se rebozan los huevos, se espolvorean con el azúcar y el rallado de limón, e inmediatamente se fríen en una mezcla de aceite y mantequilla calientes, hasta dorar. Se espolvorean nuevamente con azúcar y canela (o anís) y se sirven. Son muy apreciadas para el desayuno.'),
(121, 'Aceite', '1 cucharada', 50, 74, 'Torrijas', 'Se remojan las rodajas en la leche y en el agua de azahares, se dejan escurrir. Se rebozan los huevos, se espolvorean con el azúcar y el rallado de limón, e inmediatamente se fríen en una mezcla de aceite y mantequilla calientes, hasta dorar. Se espolvorean nuevamente con azúcar y canela (o anís) y se sirven. Son muy apreciadas para el desayuno.'),
(122, 'Mantequilla', '1 cucharada', 50, 36, 'Torrijas', 'Se remojan las rodajas en la leche y en el agua de azahares, se dejan escurrir. Se rebozan los huevos, se espolvorean con el azúcar y el rallado de limón, e inmediatamente se fríen en una mezcla de aceite y mantequilla calientes, hasta dorar. Se espolvorean nuevamente con azúcar y canela (o anís) y se sirven. Son muy apreciadas para el desayuno.'),
(123, 'Arroz', '2 tazas', 52, 124, 'Arroz con chorizo', 'Se fríen los chorizos. En la manteca que soltaron se sofríe la cebolla y un poco el arroz, se agrega el agua, sal y pimienta, se cocina a fuego medio hasta que empiece a secar, se pican los chorizos y se incorporan, se revuelve y se tapa. Se baja a fuego lento y se deja terminar de cocinar y secar completamente y se sirve.'),
(124, 'Agua', '4 tazas', 52, 17, 'Arroz con chorizo', 'Se fríen los chorizos. En la manteca que soltaron se sofríe la cebolla y un poco el arroz, se agrega el agua, sal y pimienta, se cocina a fuego medio hasta que empiece a secar, se pican los chorizos y se incorporan, se revuelve y se tapa. Se baja a fuego lento y se deja terminar de cocinar y secar completamente y se sirve.'),
(125, 'Chorizo', '8', 52, 104, 'Arroz con chorizo', 'Se fríen los chorizos. En la manteca que soltaron se sofríe la cebolla y un poco el arroz, se agrega el agua, sal y pimienta, se cocina a fuego medio hasta que empiece a secar, se pican los chorizos y se incorporan, se revuelve y se tapa. Se baja a fuego lento y se deja terminar de cocinar y secar completamente y se sirve.'),
(126, 'Tallos de cebolla junca', '2', 52, 94, 'Arroz con chorizo', 'Se fríen los chorizos. En la manteca que soltaron se sofríe la cebolla y un poco el arroz, se agrega el agua, sal y pimienta, se cocina a fuego medio hasta que empiece a secar, se pican los chorizos y se incorporan, se revuelve y se tapa. Se baja a fuego lento y se deja terminar de cocinar y secar completamente y se sirve.'),
(127, 'Sal', 'Al gusto', 52, 6, 'Arroz con chorizo', 'Se fríen los chorizos. En la manteca que soltaron se sofríe la cebolla y un poco el arroz, se agrega el agua, sal y pimienta, se cocina a fuego medio hasta que empiece a secar, se pican los chorizos y se incorporan, se revuelve y se tapa. Se baja a fuego lento y se deja terminar de cocinar y secar completamente y se sirve.'),
(128, 'Pimienta', 'Al gusto', 52, 29, 'Arroz con chorizo', 'Se fríen los chorizos. En la manteca que soltaron se sofríe la cebolla y un poco el arroz, se agrega el agua, sal y pimienta, se cocina a fuego medio hasta que empiece a secar, se pican los chorizos y se incorporan, se revuelve y se tapa. Se baja a fuego lento y se deja terminar de cocinar y secar completamente y se sirve.'),
(129, 'Maíz', '500 gr', 59, 2, 'Mazamorra', 'Se cocina el maíz en el agua por 1½ hora, hasta que esté blando. Se deja reposar, se sirve con un poco de leche a gusto y la panela raspada. Claro: es el caldo de esta cocción que se sirve con panela partida.'),
(130, 'Agua', '2 litros', 59, 17, 'Mazamorra', 'Se cocina el maíz en el agua por 1½ hora, hasta que esté blando. Se deja reposar, se sirve con un poco de leche a gusto y la panela raspada. Claro: es el caldo de esta cocción que se sirve con panela partida.'),
(134, 'Panela raspada', 'Al gusto', 59, 62, 'Mazamorra', 'Se cocina el maíz en el agua por 1½ hora, hasta que esté blando. Se deja reposar, se sirve con un poco de leche a gusto y la panela raspada. Claro: es el caldo de esta cocción que se sirve con panela partida.'),
(135, 'Leche', 'Al gusto', 59, 10, 'Mazamorra', 'Se cocina el maíz en el agua por 1½ hora, hasta que esté blando. Se deja reposar, se sirve con un poco de leche a gusto y la panela raspada. Claro: es el caldo de esta cocción que se sirve con panela partida.'),
(136, 'Leche', '2 litros ', 60, 10, 'Natilla', 'Se pone a hervir 1½ litro de leche con la panela, y se le saca la cachaza o espuma que se vaya formando. Se añade la mantequilla, la canela y la fécula de maíz (que se ha disuelto previamente en medio litro de leche). Se va revolviendo lentamente y se cocina a fuego lento durante 10 minutos o hasta que dé su punto (este se reconoce cuando después de poner un poco en un plato, y ya frío, puede despegarse fácilmente). En este momento se le añade el coco, se revuelve, se vierte en moldes y se cubre con el almíbar. Al servir la porción individual, se le espolvorea un poco de canela en polvo.'),
(137, 'Fécula de maíz', '2 tazas', 60, 106, 'Natilla', 'Se pone a hervir 1½ litro de leche con la panela, y se le saca la cachaza o espuma que se vaya formando. Se añade la mantequilla, la canela y la fécula de maíz (que se ha disuelto previamente en medio litro de leche). Se va revolviendo lentamente y se cocina a fuego lento durante 10 minutos o hasta que dé su punto (este se reconoce cuando después de poner un poco en un plato, y ya frío, puede despegarse fácilmente). En este momento se le añade el coco, se revuelve, se vierte en moldes y se cubre con el almíbar. Al servir la porción individual, se le espolvorea un poco de canela en polvo.');
INSERT INTO `productrecipes` (`ID`, `Nombre`, `Cantidad`, `Receta_ID`, `Product_ID`, `Nombre_receta`, `Preparación`) VALUES
(138, 'Panela raspada', '500 gr', 60, 62, 'Natilla', 'Se pone a hervir 1½ litro de leche con la panela, y se le saca la cachaza o espuma que se vaya formando. Se añade la mantequilla, la canela y la fécula de maíz (que se ha disuelto previamente en medio litro de leche). Se va revolviendo lentamente y se cocina a fuego lento durante 10 minutos o hasta que dé su punto (este se reconoce cuando después de poner un poco en un plato, y ya frío, puede despegarse fácilmente). En este momento se le añade el coco, se revuelve, se vierte en moldes y se cubre con el almíbar. Al servir la porción individual, se le espolvorea un poco de canela en polvo.'),
(139, 'Astilla de canela', '4', 60, 108, 'Natilla', 'Se pone a hervir 1½ litro de leche con la panela, y se le saca la cachaza o espuma que se vaya formando. Se añade la mantequilla, la canela y la fécula de maíz (que se ha disuelto previamente en medio litro de leche). Se va revolviendo lentamente y se cocina a fuego lento durante 10 minutos o hasta que dé su punto (este se reconoce cuando después de poner un poco en un plato, y ya frío, puede despegarse fácilmente). En este momento se le añade el coco, se revuelve, se vierte en moldes y se cubre con el almíbar. Al servir la porción individual, se le espolvorea un poco de canela en polvo.'),
(140, 'Mantequilla', '2 cucharadas', 60, 36, 'Natilla', 'Se pone a hervir 1½ litro de leche con la panela, y se le saca la cachaza o espuma que se vaya formando. Se añade la mantequilla, la canela y la fécula de maíz (que se ha disuelto previamente en medio litro de leche). Se va revolviendo lentamente y se cocina a fuego lento durante 10 minutos o hasta que dé su punto (este se reconoce cuando después de poner un poco en un plato, y ya frío, puede despegarse fácilmente). En este momento se le añade el coco, se revuelve, se vierte en moldes y se cubre con el almíbar. Al servir la porción individual, se le espolvorea un poco de canela en polvo.'),
(141, 'Coco', '1', 60, 64, 'Natilla', 'Se pone a hervir 1½ litro de leche con la panela, y se le saca la cachaza o espuma que se vaya formando. Se añade la mantequilla, la canela y la fécula de maíz (que se ha disuelto previamente en medio litro de leche). Se va revolviendo lentamente y se cocina a fuego lento durante 10 minutos o hasta que dé su punto (este se reconoce cuando después de poner un poco en un plato, y ya frío, puede despegarse fácilmente). En este momento se le añade el coco, se revuelve, se vierte en moldes y se cubre con el almíbar. Al servir la porción individual, se le espolvorea un poco de canela en polvo.'),
(142, 'Canela', '1 cucharada', 60, 13, 'Natilla', 'Se pone a hervir 1½ litro de leche con la panela, y se le saca la cachaza o espuma que se vaya formando. Se añade la mantequilla, la canela y la fécula de maíz (que se ha disuelto previamente en medio litro de leche). Se va revolviendo lentamente y se cocina a fuego lento durante 10 minutos o hasta que dé su punto (este se reconoce cuando después de poner un poco en un plato, y ya frío, puede despegarse fácilmente). En este momento se le añade el coco, se revuelve, se vierte en moldes y se cubre con el almíbar. Al servir la porción individual, se le espolvorea un poco de canela en polvo.'),
(143, 'Almíbar de azúcar', '1 taza', 60, 83, 'Natilla', 'Se pone a hervir 1½ litro de leche con la panela, y se le saca la cachaza o espuma que se vaya formando. Se añade la mantequilla, la canela y la fécula de maíz (que se ha disuelto previamente en medio litro de leche). Se va revolviendo lentamente y se cocina a fuego lento durante 10 minutos o hasta que dé su punto (este se reconoce cuando después de poner un poco en un plato, y ya frío, puede despegarse fácilmente). En este momento se le añade el coco, se revuelve, se vierte en moldes y se cubre con el almíbar. Al servir la porción individual, se le espolvorea un poco de canela en polvo.'),
(145, 'Maíz trillado', '500 gr', 62, 2, 'Atol', 'Se cocina el maíz hasta que esté blando (por 1 hora), se deja enfriar, se agrega panela raspada y la leche, se revuelve y se sirve frío o caliente.'),
(146, 'Panela raspada', '½', 62, 62, 'Atol', 'Se cocina el maíz hasta que esté blando (por 1 hora), se deja enfriar, se agrega panela raspada y la leche, se revuelve y se sirve frío o caliente.'),
(147, 'Leche', '4 tazas', 62, 10, 'Atol', 'Se cocina el maíz hasta que esté blando (por 1 hora), se deja enfriar, se agrega panela raspada y la leche, se revuelve y se sirve frío o caliente.'),
(148, 'Copoazú', 'Al gusto', 63, 109, 'Crema de copoazú', 'Se extrae la pulpa del copoazú, y se le sacan las semillas. La pulpa se mezcla con crema de leche, leche condensada y azúcar a gusto. Se bate o se licua y se sirve con hielo picado.'),
(149, 'Jugo de caña de azúcar', 'Al gusto', 66, 110, 'Guarapo', 'Se cocina y se deja consumir el jugo de caña de azúcar hasta formar un melado. Se pone maíz trillado en agua que lo cubra por un día, se saca, se escurre y se muele. Se mezcla la masa y el melado con agua fresca y se deja fermentar por 3 días, más o menos, a gusto. (El grado de fermentación también varía según el grado de borrachera que se quiera obtener).'),
(150, 'Maíz', 'Al gusto', 66, 2, 'Guarapo', 'Se cocina y se deja consumir el jugo de caña de azúcar hasta formar un melado. Se pone maíz trillado en agua que lo cubra por un día, se saca, se escurre y se muele. Se mezcla la masa y el melado con agua fresca y se deja fermentar por 3 días, más o menos, a gusto. (El grado de fermentación también varía según el grado de borrachera que se quiera obtener).'),
(151, 'Agua', '14 tazas', 68, 17, 'Hervido (Sancocho)', 'Se cocina la gallina con la cebolla y los aliños por 45 minutos, hasta que se empiece a ablandar. Se le agregan los plátanos y se dejan hervir otros 20 minutos. Luego se añaden la ahuyama y la yuca, se cocinan por 15 minutos, se agrega el cilantro, se baja a fuego lento, tapado, y se conserva por 10 minutos. Se sirve con ají y arroz blanco seco.'),
(152, 'Gallina despresada', '1', 68, 114, 'Hervido (Sancocho)', 'Se cocina la gallina con la cebolla y los aliños por 45 minutos, hasta que se empiece a ablandar. Se le agregan los plátanos y se dejan hervir otros 20 minutos. Luego se añaden la ahuyama y la yuca, se cocinan por 15 minutos, se agrega el cilantro, se baja a fuego lento, tapado, y se conserva por 10 minutos. Se sirve con ají y arroz blanco seco.'),
(153, 'Plátanos topochos', '4', 68, 111, 'Hervido (Sancocho)', 'Se cocina la gallina con la cebolla y los aliños por 45 minutos, hasta que se empiece a ablandar. Se le agregan los plátanos y se dejan hervir otros 20 minutos. Luego se añaden la ahuyama y la yuca, se cocinan por 15 minutos, se agrega el cilantro, se baja a fuego lento, tapado, y se conserva por 10 minutos. Se sirve con ají y arroz blanco seco.'),
(154, 'Yuca', '500 gr', 68, 41, 'Hervido (Sancocho)', 'Se cocina la gallina con la cebolla y los aliños por 45 minutos, hasta que se empiece a ablandar. Se le agregan los plátanos y se dejan hervir otros 20 minutos. Luego se añaden la ahuyama y la yuca, se cocinan por 15 minutos, se agrega el cilantro, se baja a fuego lento, tapado, y se conserva por 10 minutos. Se sirve con ají y arroz blanco seco.'),
(155, 'Ahuyama', '500 gr', 68, 112, 'Hervido (Sancocho)', 'Se cocina la gallina con la cebolla y los aliños por 45 minutos, hasta que se empiece a ablandar. Se le agregan los plátanos y se dejan hervir otros 20 minutos. Luego se añaden la ahuyama y la yuca, se cocinan por 15 minutos, se agrega el cilantro, se baja a fuego lento, tapado, y se conserva por 10 minutos. Se sirve con ají y arroz blanco seco.'),
(156, 'Tallos de cebolla larga', '3', 68, 23, 'Hervido (Sancocho)', 'Se cocina la gallina con la cebolla y los aliños por 45 minutos, hasta que se empiece a ablandar. Se le agregan los plátanos y se dejan hervir otros 20 minutos. Luego se añaden la ahuyama y la yuca, se cocinan por 15 minutos, se agrega el cilantro, se baja a fuego lento, tapado, y se conserva por 10 minutos. Se sirve con ají y arroz blanco seco.'),
(157, 'Hojas de cilantro cimarrón', '4', 68, 113, 'Hervido (Sancocho)', 'Se cocina la gallina con la cebolla y los aliños por 45 minutos, hasta que se empiece a ablandar. Se le agregan los plátanos y se dejan hervir otros 20 minutos. Luego se añaden la ahuyama y la yuca, se cocinan por 15 minutos, se agrega el cilantro, se baja a fuego lento, tapado, y se conserva por 10 minutos. Se sirve con ají y arroz blanco seco.'),
(158, 'Sal', 'Al gusto', 68, 6, 'Hervido (Sancocho)', 'Se cocina la gallina con la cebolla y los aliños por 45 minutos, hasta que se empiece a ablandar. Se le agregan los plátanos y se dejan hervir otros 20 minutos. Luego se añaden la ahuyama y la yuca, se cocinan por 15 minutos, se agrega el cilantro, se baja a fuego lento, tapado, y se conserva por 10 minutos. Se sirve con ají y arroz blanco seco.'),
(159, 'Comino', 'Al gusto', 68, 54, 'Hervido (Sancocho)', 'Se cocina la gallina con la cebolla y los aliños por 45 minutos, hasta que se empiece a ablandar. Se le agregan los plátanos y se dejan hervir otros 20 minutos. Luego se añaden la ahuyama y la yuca, se cocinan por 15 minutos, se agrega el cilantro, se baja a fuego lento, tapado, y se conserva por 10 minutos. Se sirve con ají y arroz blanco seco.'),
(160, 'Pimienta', 'Al gusto', 68, 29, 'Hervido (Sancocho)', 'Se cocina la gallina con la cebolla y los aliños por 45 minutos, hasta que se empiece a ablandar. Se le agregan los plátanos y se dejan hervir otros 20 minutos. Luego se añaden la ahuyama y la yuca, se cocinan por 15 minutos, se agrega el cilantro, se baja a fuego lento, tapado, y se conserva por 10 minutos. Se sirve con ají y arroz blanco seco.'),
(161, 'Chontaduro', 'Al gusto', 70, 115, 'Aceite de chontaduro', 'Se parten los chontaduros y se ponen a cocinar en agua por 2 horas, y se dejan enfriar un poco. El aceite flota en el agua y se va sacando con una pluma grande, que se escurre en un recipiente aparte. Este aceite es muy apreciado por el indígena para sus frituras.'),
(162, 'Carne de res', '3 libras', 74, 39, 'Carne asada - Tungos', 'Se corta la carne en porciones delgadas. Se les pone un poco de sal y se asan a la parrilla. Se sirven sobre hojas de plátano y se acompañan.'),
(163, 'Sal', 'Al gusto', 74, 6, 'Carne asada - Tungos', 'Se corta la carne en porciones delgadas. Se les pone un poco de sal y se asan a la parrilla. Se sirven sobre hojas de plátano y se acompañan.'),
(164, 'Panela raspada', '250 gr', 77, 62, 'Dulce de marañón', 'Se les quitan las pepas a los marañones, y las pulpas se puyan con un tenedor. Se exprimen y se cocinan en agua, luego se sacan y se ponen a calar en una miel de panela clara. Se les puede poner un poco de vino y de canela en polvo. Se deja cocinar hasta que cale el almíbar. Las frutas deben quedar arrugadas como pasas.'),
(165, 'Agua', '1 litro', 77, 17, 'Dulce de marañón', 'Se les quitan las pepas a los marañones, y las pulpas se puyan con un tenedor. Se exprimen y se cocinan en agua, luego se sacan y se ponen a calar en una miel de panela clara. Se les puede poner un poco de vino y de canela en polvo. Se deja cocinar hasta que cale el almíbar. Las frutas deben quedar arrugadas como pasas.'),
(166, 'Marañones', '500 gr', 77, 117, 'Dulce de marañón', 'Se les quitan las pepas a los marañones, y las pulpas se puyan con un tenedor. Se exprimen y se cocinan en agua, luego se sacan y se ponen a calar en una miel de panela clara. Se les puede poner un poco de vino y de canela en polvo. Se deja cocinar hasta que cale el almíbar. Las frutas deben quedar arrugadas como pasas.'),
(167, 'Pomarrosas', '16', 78, 118, 'Dulce de pomarrosa', 'Se parten las pomarrosas en cascos y se botan las pepas. Se ponen a calar en un almíbar liviano hecho con azúcar y agua, hasta que esté a su gusto.'),
(168, 'Azúcar', '250 gr', 78, 3, 'Dulce de pomarrosa', 'Se parten las pomarrosas en cascos y se botan las pepas. Se ponen a calar en un almíbar liviano hecho con azúcar y agua, hasta que esté a su gusto.'),
(169, 'Agua', '¾ litro', 78, 17, 'Dulce de pomarrosa', 'Se parten las pomarrosas en cascos y se botan las pepas. Se ponen a calar en un almíbar liviano hecho con azúcar y agua, hasta que esté a su gusto.'),
(170, 'Jugo de maracuya/piña', '½ litro', 82, 121, 'Hervidos', 'Se pone el jugo de maracuyá o de piña al fuego, y cuando hierva se le agrega el aguardiente y se deja hervir por 3 minutos más. Se sirve caliente en tacitas.'),
(171, 'Aguardiente', '750 ml', 82, 122, 'Hervidos', 'Se pone el jugo de maracuyá o de piña al fuego, y cuando hierva se le agrega el aguardiente y se deja hervir por 3 minutos más. Se sirve caliente en tacitas.'),
(173, 'Chontaduro', '500 gr', 83, 115, 'Jugo de chontaduro', 'Se parten los chontaduros y se botan las pepas. Se licuan o se baten con el agua y el azúcar. Se sirve frío. (Opcional: se puede batir utilizando mitad leche y mitad agua).'),
(174, 'Agua', '2 litros', 83, 17, 'Jugo de chontaduro', 'Se parten los chontaduros y se botan las pepas. Se licuan o se baten con el agua y el azúcar. Se sirve frío. (Opcional: se puede batir utilizando mitad leche y mitad agua).'),
(175, 'Azúcar', '250 gr', 83, 3, 'Jugo de chontaduro', 'Se parten los chontaduros y se botan las pepas. Se licuan o se baten con el agua y el azúcar. Se sirve frío. (Opcional: se puede batir utilizando mitad leche y mitad agua).'),
(176, 'Leche', 'Al gusto', 85, 10, 'Kumis', 'Se pone la leche a cuajar en una olla de barro curada, tapada con un lienzo, durante 2 o 3 días. Se revuelve y se pone el azúcar (o el melado). Se sirve frío, o, más comúnmente, a la temperatura ambiente. La olla no se lava, y se deja un poco de kumis que sirva como bacilo cuajador en una próxima preparación.'),
(177, 'Azúcar', 'Al gusto', 85, 3, 'Kumis', 'Se pone la leche a cuajar en una olla de barro curada, tapada con un lienzo, durante 2 o 3 días. Se revuelve y se pone el azúcar (o el melado). Se sirve frío, o, más comúnmente, a la temperatura ambiente. La olla no se lava, y se deja un poco de kumis que sirva como bacilo cuajador en una próxima preparación.'),
(178, 'Agua', '10 tazas', 86, 17, 'Caldo de carne batido', 'Se pone la carne con 4 tazas de agua y se bate con un molinillo (o se licua) hasta que quede casi disuelta. Se pone a fuego medio, batiendo el caldo constantemente hasta que hierva, unos 20 minutos. Se le agrega el resto del agua, el perejil, la cebolla, sal y pimienta, y se deja hervir de nuevo. Luego se retira del fuego, se deja reposar y se sirve.'),
(179, 'Carne de res', '500 gr', 86, 39, 'Caldo de carne batido', 'Se pone la carne con 4 tazas de agua y se bate con un molinillo (o se licua) hasta que quede casi disuelta. Se pone a fuego medio, batiendo el caldo constantemente hasta que hierva, unos 20 minutos. Se le agrega el resto del agua, el perejil, la cebolla, sal y pimienta, y se deja hervir de nuevo. Luego se retira del fuego, se deja reposar y se sirve.'),
(180, 'Perejil', '3 cucharadas de perejil', 86, 174, 'Caldo de carne batido', 'Se pone la carne con 4 tazas de agua y se bate con un molinillo (o se licua) hasta que quede casi disuelta. Se pone a fuego medio, batiendo el caldo constantemente hasta que hierva, unos 20 minutos. Se le agrega el resto del agua, el perejil, la cebolla, sal y pimienta, y se deja hervir de nuevo. Luego se retira del fuego, se deja reposar y se sirve.'),
(181, 'Tallos de cebolla larga', '2 ', 86, 23, 'Caldo de carne batido', 'Se pone la carne con 4 tazas de agua y se bate con un molinillo (o se licua) hasta que quede casi disuelta. Se pone a fuego medio, batiendo el caldo constantemente hasta que hierva, unos 20 minutos. Se le agrega el resto del agua, el perejil, la cebolla, sal y pimienta, y se deja hervir de nuevo. Luego se retira del fuego, se deja reposar y se sirve.'),
(182, 'Sal', 'Al gusto', 86, 6, 'Caldo de carne batido', 'Se pone la carne con 4 tazas de agua y se bate con un molinillo (o se licua) hasta que quede casi disuelta. Se pone a fuego medio, batiendo el caldo constantemente hasta que hierva, unos 20 minutos. Se le agrega el resto del agua, el perejil, la cebolla, sal y pimienta, y se deja hervir de nuevo. Luego se retira del fuego, se deja reposar y se sirve.'),
(183, 'Pimienta', 'Al gusto', 86, 29, 'Caldo de carne batido', 'Se pone la carne con 4 tazas de agua y se bate con un molinillo (o se licua) hasta que quede casi disuelta. Se pone a fuego medio, batiendo el caldo constantemente hasta que hierva, unos 20 minutos. Se le agrega el resto del agua, el perejil, la cebolla, sal y pimienta, y se deja hervir de nuevo. Luego se retira del fuego, se deja reposar y se sirve.'),
(184, 'Pulpa de chontaduro', '1 kg', 91, 126, 'Torta de chontaduro', 'Se echan todos los ingredientes en un recipiente, excepto la leche, que se añade al final, y se mezclan con la mano, se amasa bien y se pone en un molde enmantequillado al horno precalentado a 300°, por 20 minutos o más, hasta que pase la prueba del cuchillo.'),
(185, 'Leche', '1¼ taza ', 91, 10, 'Torta de chontaduro', 'Se echan todos los ingredientes en un recipiente, excepto la leche, que se añade al final, y se mezclan con la mano, se amasa bien y se pone en un molde enmantequillado al horno precalentado a 300°, por 20 minutos o más, hasta que pase la prueba del cuchillo.'),
(186, 'Huevo batido', '2', 91, 19, 'Torta de chontaduro', 'Se echan todos los ingredientes en un recipiente, excepto la leche, que se añade al final, y se mezclan con la mano, se amasa bien y se pone en un molde enmantequillado al horno precalentado a 300°, por 20 minutos o más, hasta que pase la prueba del cuchillo.'),
(187, 'Harina de trigo', '½ taza', 91, 98, 'Torta de chontaduro', 'Se echan todos los ingredientes en un recipiente, excepto la leche, que se añade al final, y se mezclan con la mano, se amasa bien y se pone en un molde enmantequillado al horno precalentado a 300°, por 20 minutos o más, hasta que pase la prueba del cuchillo.'),
(188, 'Esencia de vainilla', '½ cucharada', 91, 15, 'Torta de chontaduro', 'Se echan todos los ingredientes en un recipiente, excepto la leche, que se añade al final, y se mezclan con la mano, se amasa bien y se pone en un molde enmantequillado al horno precalentado a 300°, por 20 minutos o más, hasta que pase la prueba del cuchillo.'),
(189, 'Copa de vino rojo seco', '½', 91, 127, 'Torta de chontaduro', 'Se echan todos los ingredientes en un recipiente, excepto la leche, que se añade al final, y se mezclan con la mano, se amasa bien y se pone en un molde enmantequillado al horno precalentado a 300°, por 20 minutos o más, hasta que pase la prueba del cuchillo.'),
(190, 'Polvo de hornear', '½ cucharadita', 91, 105, 'Torta de chontaduro', 'Se echan todos los ingredientes en un recipiente, excepto la leche, que se añade al final, y se mezclan con la mano, se amasa bien y se pone en un molde enmantequillado al horno precalentado a 300°, por 20 minutos o más, hasta que pase la prueba del cuchillo.'),
(191, 'Mantequilla', '2 cucharadas', 91, 36, 'Torta de chontaduro', 'Se echan todos los ingredientes en un recipiente, excepto la leche, que se añade al final, y se mezclan con la mano, se amasa bien y se pone en un molde enmantequillado al horno precalentado a 300°, por 20 minutos o más, hasta que pase la prueba del cuchillo.'),
(192, 'Azúcar', '2 cucharadas', 91, 3, 'Torta de chontaduro', 'Se echan todos los ingredientes en un recipiente, excepto la leche, que se añade al final, y se mezclan con la mano, se amasa bien y se pone en un molde enmantequillado al horno precalentado a 300°, por 20 minutos o más, hasta que pase la prueba del cuchillo.'),
(193, 'Hígado', '3 libras', 93, 131, 'Hígado', 'Se corta el hígado muy delgado, quitándole los pellejos y venas. Se pica en trozos, y se pone a marinar durante 20 minutos en una mezcla de vinagre, pimienta y cominos. Se calienta bien el aceite y se saltea el hígado hasta que se medio fríe por ambos lados. Se agregan la cebolla y los pimentones y se sigue salteando por 5 minutos más. Se revuelve procurando dejar el hígado por encima para que reciba menos calor. Se sala, se tapa por dos minutos y se sirve con arroz blanco. No se debe dejar freír mucho para que no se endurezca, pero, si eso se quiere, basta con dejarlo tapado al final de la cocción por unos minutos más.'),
(194, 'Cebolla cabezona', '250 gr', 93, 33, 'Hígado', 'Se corta el hígado muy delgado, quitándole los pellejos y venas. Se pica en trozos, y se pone a marinar durante 20 minutos en una mezcla de vinagre, pimienta y cominos. Se calienta bien el aceite y se saltea el hígado hasta que se medio fríe por ambos lados. Se agregan la cebolla y los pimentones y se sigue salteando por 5 minutos más. Se revuelve procurando dejar el hígado por encima para que reciba menos calor. Se sala, se tapa por dos minutos y se sirve con arroz blanco. No se debe dejar freír mucho para que no se endurezca, pero, si eso se quiere, basta con dejarlo tapado al final de la cocción por unos minutos más.'),
(195, 'Pimentón verde', '1', 93, 132, 'Hígado', 'Se corta el hígado muy delgado, quitándole los pellejos y venas. Se pica en trozos, y se pone a marinar durante 20 minutos en una mezcla de vinagre, pimienta y cominos. Se calienta bien el aceite y se saltea el hígado hasta que se medio fríe por ambos lados. Se agregan la cebolla y los pimentones y se sigue salteando por 5 minutos más. Se revuelve procurando dejar el hígado por encima para que reciba menos calor. Se sala, se tapa por dos minutos y se sirve con arroz blanco. No se debe dejar freír mucho para que no se endurezca, pero, si eso se quiere, basta con dejarlo tapado al final de la cocción por unos minutos más.'),
(196, 'Pimentón rojo', '1', 93, 133, 'Hígado', 'Se corta el hígado muy delgado, quitándole los pellejos y venas. Se pica en trozos, y se pone a marinar durante 20 minutos en una mezcla de vinagre, pimienta y cominos. Se calienta bien el aceite y se saltea el hígado hasta que se medio fríe por ambos lados. Se agregan la cebolla y los pimentones y se sigue salteando por 5 minutos más. Se revuelve procurando dejar el hígado por encima para que reciba menos calor. Se sala, se tapa por dos minutos y se sirve con arroz blanco. No se debe dejar freír mucho para que no se endurezca, pero, si eso se quiere, basta con dejarlo tapado al final de la cocción por unos minutos más.'),
(197, 'Vinagre', '2 cucharadas', 93, 69, 'Hígado', 'Se corta el hígado muy delgado, quitándole los pellejos y venas. Se pica en trozos, y se pone a marinar durante 20 minutos en una mezcla de vinagre, pimienta y cominos. Se calienta bien el aceite y se saltea el hígado hasta que se medio fríe por ambos lados. Se agregan la cebolla y los pimentones y se sigue salteando por 5 minutos más. Se revuelve procurando dejar el hígado por encima para que reciba menos calor. Se sala, se tapa por dos minutos y se sirve con arroz blanco. No se debe dejar freír mucho para que no se endurezca, pero, si eso se quiere, basta con dejarlo tapado al final de la cocción por unos minutos más.'),
(198, 'Sal', 'Al gusto', 93, 6, 'Hígado', 'Se corta el hígado muy delgado, quitándole los pellejos y venas. Se pica en trozos, y se pone a marinar durante 20 minutos en una mezcla de vinagre, pimienta y cominos. Se calienta bien el aceite y se saltea el hígado hasta que se medio fríe por ambos lados. Se agregan la cebolla y los pimentones y se sigue salteando por 5 minutos más. Se revuelve procurando dejar el hígado por encima para que reciba menos calor. Se sala, se tapa por dos minutos y se sirve con arroz blanco. No se debe dejar freír mucho para que no se endurezca, pero, si eso se quiere, basta con dejarlo tapado al final de la cocción por unos minutos más.'),
(199, 'Comino', 'Al gusto', 93, 54, 'Hígado', 'Se corta el hígado muy delgado, quitándole los pellejos y venas. Se pica en trozos, y se pone a marinar durante 20 minutos en una mezcla de vinagre, pimienta y cominos. Se calienta bien el aceite y se saltea el hígado hasta que se medio fríe por ambos lados. Se agregan la cebolla y los pimentones y se sigue salteando por 5 minutos más. Se revuelve procurando dejar el hígado por encima para que reciba menos calor. Se sala, se tapa por dos minutos y se sirve con arroz blanco. No se debe dejar freír mucho para que no se endurezca, pero, si eso se quiere, basta con dejarlo tapado al final de la cocción por unos minutos más.'),
(200, 'Pimienta', 'Al gusto', 93, 29, 'Hígado', 'Se corta el hígado muy delgado, quitándole los pellejos y venas. Se pica en trozos, y se pone a marinar durante 20 minutos en una mezcla de vinagre, pimienta y cominos. Se calienta bien el aceite y se saltea el hígado hasta que se medio fríe por ambos lados. Se agregan la cebolla y los pimentones y se sigue salteando por 5 minutos más. Se revuelve procurando dejar el hígado por encima para que reciba menos calor. Se sala, se tapa por dos minutos y se sirve con arroz blanco. No se debe dejar freír mucho para que no se endurezca, pero, si eso se quiere, basta con dejarlo tapado al final de la cocción por unos minutos más.'),
(201, 'Arroz', '½ taza', 94, 124, 'Arroz de leche', 'Se mezclan una botella (750 ml) de leche y otra de agua y se llevan al fuego. Se les agrega el arroz y se deja cocinar a fuego medio hasta que reviente. Se le añade la otra botella y media de leche, el azúcar, la canela y las pasas, se baja a fuego lento, se revuelve constantemente hasta lograr el espeso deseado. Se agrega la pizca de sal y se revuelve. Se sirve caliente o frío.'),
(202, 'Leche', '1¾ litro', 94, 10, 'Arroz de leche', 'Se mezclan una botella (750 ml) de leche y otra de agua y se llevan al fuego. Se les agrega el arroz y se deja cocinar a fuego medio hasta que reviente. Se le añade la otra botella y media de leche, el azúcar, la canela y las pasas, se baja a fuego lento, se revuelve constantemente hasta lograr el espeso deseado. Se agrega la pizca de sal y se revuelve. Se sirve caliente o frío.'),
(205, 'Agua', '750 ml', 94, 124, 'Arroz de leche', 'Se mezclan una botella (750 ml) de leche y otra de agua y se llevan al fuego. Se les agrega el arroz y se deja cocinar a fuego medio hasta que reviente. Se le añade la otra botella y media de leche, el azúcar, la canela y las pasas, se baja a fuego lento, se revuelve constantemente hasta lograr el espeso deseado. Se agrega la pizca de sal y se revuelve. Se sirve caliente o frío.'),
(206, 'Astilla de canela', '2', 94, 108, 'Arroz de leche', 'Se mezclan una botella (750 ml) de leche y otra de agua y se llevan al fuego. Se les agrega el arroz y se deja cocinar a fuego medio hasta que reviente. Se le añade la otra botella y media de leche, el azúcar, la canela y las pasas, se baja a fuego lento, se revuelve constantemente hasta lograr el espeso deseado. Se agrega la pizca de sal y se revuelve. Se sirve caliente o frío.'),
(207, 'Azúcar', '250 gr', 94, 3, 'Arroz de leche', 'Se mezclan una botella (750 ml) de leche y otra de agua y se llevan al fuego. Se les agrega el arroz y se deja cocinar a fuego medio hasta que reviente. Se le añade la otra botella y media de leche, el azúcar, la canela y las pasas, se baja a fuego lento, se revuelve constantemente hasta lograr el espeso deseado. Se agrega la pizca de sal y se revuelve. Se sirve caliente o frío.'),
(208, 'Uvas pasas', '½ taza', 94, 134, 'Arroz de leche', 'Se mezclan una botella (750 ml) de leche y otra de agua y se llevan al fuego. Se les agrega el arroz y se deja cocinar a fuego medio hasta que reviente. Se le añade la otra botella y media de leche, el azúcar, la canela y las pasas, se baja a fuego lento, se revuelve constantemente hasta lograr el espeso deseado. Se agrega la pizca de sal y se revuelve. Se sirve caliente o frío.'),
(209, 'Sal', '1 pizca', 94, 6, 'Arroz de leche', 'Se mezclan una botella (750 ml) de leche y otra de agua y se llevan al fuego. Se les agrega el arroz y se deja cocinar a fuego medio hasta que reviente. Se le añade la otra botella y media de leche, el azúcar, la canela y las pasas, se baja a fuego lento, se revuelve constantemente hasta lograr el espeso deseado. Se agrega la pizca de sal y se revuelve. Se sirve caliente o frío.'),
(210, 'Corozo', '100', 99, 143, 'Chicha de corozo', 'Se quiebran los corozos y se rebanan las pepas, y se ponen a cocinar en un litro de agua hasta que se ablanden (durante 1 hora aproximadamente). Se muelen o se licuan. Aparte se ponen 3 panelas en 5 litros de agua y se cocinan hasta que se disuelvan, se revuelve el agua-panela con los corozos licuados y su jugo. Se pasa por un colador y se ponen en un ure con 2 panelas enteras a fermentar por 3 días (si se desea se le puede agregar 1 panela diaria) se conoce el punto adecuado de fermentación cuando la chicha parece hervir o formar ojos.'),
(211, 'Agua', '5 litros', 99, 17, 'Chicha de corozo', 'Se quiebran los corozos y se rebanan las pepas, y se ponen a cocinar en un litro de agua hasta que se ablanden (durante 1 hora aproximadamente). Se muelen o se licuan. Aparte se ponen 3 panelas en 5 litros de agua y se cocinan hasta que se disuelvan, se revuelve el agua-panela con los corozos licuados y su jugo. Se pasa por un colador y se ponen en un ure con 2 panelas enteras a fermentar por 3 días (si se desea se le puede agregar 1 panela diaria) se conoce el punto adecuado de fermentación cuando la chicha parece hervir o formar ojos.'),
(212, 'Panela', '5', 99, 62, 'Chicha de corozo', 'Se quiebran los corozos y se rebanan las pepas, y se ponen a cocinar en un litro de agua hasta que se ablanden (durante 1 hora aproximadamente). Se muelen o se licuan. Aparte se ponen 3 panelas en 5 litros de agua y se cocinan hasta que se disuelvan, se revuelve el agua-panela con los corozos licuados y su jugo. Se pasa por un colador y se ponen en un ure con 2 panelas enteras a fermentar por 3 días (si se desea se le puede agregar 1 panela diaria) se conoce el punto adecuado de fermentación cuando la chicha parece hervir o formar ojos.'),
(213, 'Ciruela corota', '25', 100, 144, 'Fresco de ciruela cocota', 'Se baten con molinillo las ciruelas cocotas con un poco de agua, y se van sacando las pepas a medida que van quedando sin cáscara ni jugo. Una vez obtenida una colada, se pasa por un cernidor y se licua con los dos litros de agua, el azúcar y el hielo picado. También se puede licuar con leche y un poco de canela en polvo.'),
(214, 'Agua', '2 litros', 100, 17, 'Fresco de ciruela cocota', 'Se baten con molinillo las ciruelas cocotas con un poco de agua, y se van sacando las pepas a medida que van quedando sin cáscara ni jugo. Una vez obtenida una colada, se pasa por un cernidor y se licua con los dos litros de agua, el azúcar y el hielo picado. También se puede licuar con leche y un poco de canela en polvo.'),
(215, 'Azúcar', '500 gr', 100, 3, 'Fresco de ciruela cocota', 'Se baten con molinillo las ciruelas cocotas con un poco de agua, y se van sacando las pepas a medida que van quedando sin cáscara ni jugo. Una vez obtenida una colada, se pasa por un cernidor y se licua con los dos litros de agua, el azúcar y el hielo picado. También se puede licuar con leche y un poco de canela en polvo.'),
(216, 'Maíz', '500 gr', 103, 2, 'Arepa ocañera', 'Se lava bien el maíz y se pone a cocinar, que no quede demasiado blando (40 minutos aproximadamente). Se muele y se amasa bien con un poco de agua, debe quedar una masa muy suave. Se forman las arepas. Se pone al fuego un tiesto de barro. Una vez caliente se engrasa un poco, se ponen las arepas y se dejan asar por 10 segundos, se voltean y se dejan dorar. Se sacan y se ponen en una parrilla (o popularmente en la tapa de una caja de galletas) a asar por la otra cara. Esta se infla y se deja tostar un poco. Son las preferidas del ocañero, que las come con mantequilla y no deja de ponderarlas cuando tiene ocasión.'),
(217, 'Maíz pelado', '1 kg', 104, 2, 'Arepa santandereana', 'Se muele finamente el maíz, a máquina, con los chicharrones y la yuca. Luego, en una artesa, se pone la masa y se le agrega poco a poco aguasal tibia, hasta obtener, amasando, una pasta suave y manejable. (El éxito de la arepa está en la paciencia para sobarla, operación que se hace por espacio de ½ hora seguida.) Se forman bolas medianas, de acuerdo con el tamaño que se quiera, y se disponen sobre un lienzo o un pedazo de plástico. Se hacen las arepas adelgazándolas con las puntas de los dedos hasta quedar con ½ dedo de espesor; si se desean más delgadas, se estiran más. Se ponen en un tiesto, engrasado y precalentado, a fuego lento para que no se arrebaten y para que se doren por ambos lados. Esta masa se utiliza también para las chorotas o para las sopladas, unas arepitas pequeñas, delgadas, que se ponen a freír en aceite muy caliente para que se inflen.'),
(218, 'Chicharrones de cerdo o res', '1 taza', 104, 151, 'Arepa santandereana', 'Se muele finamente el maíz, a máquina, con los chicharrones y la yuca. Luego, en una artesa, se pone la masa y se le agrega poco a poco aguasal tibia, hasta obtener, amasando, una pasta suave y manejable. (El éxito de la arepa está en la paciencia para sobarla, operación que se hace por espacio de ½ hora seguida.) Se forman bolas medianas, de acuerdo con el tamaño que se quiera, y se disponen sobre un lienzo o un pedazo de plástico. Se hacen las arepas adelgazándolas con las puntas de los dedos hasta quedar con ½ dedo de espesor; si se desean más delgadas, se estiran más. Se ponen en un tiesto, engrasado y precalentado, a fuego lento para que no se arrebaten y para que se doren por ambos lados. Esta masa se utiliza también para las chorotas o para las sopladas, unas arepitas pequeñas, delgadas, que se ponen a freír en aceite muy caliente para que se inflen.'),
(219, 'Tajada de yuca', '1', 104, 152, 'Arepa santandereana', 'Se muele finamente el maíz, a máquina, con los chicharrones y la yuca. Luego, en una artesa, se pone la masa y se le agrega poco a poco aguasal tibia, hasta obtener, amasando, una pasta suave y manejable. (El éxito de la arepa está en la paciencia para sobarla, operación que se hace por espacio de ½ hora seguida.) Se forman bolas medianas, de acuerdo con el tamaño que se quiera, y se disponen sobre un lienzo o un pedazo de plástico. Se hacen las arepas adelgazándolas con las puntas de los dedos hasta quedar con ½ dedo de espesor; si se desean más delgadas, se estiran más. Se ponen en un tiesto, engrasado y precalentado, a fuego lento para que no se arrebaten y para que se doren por ambos lados. Esta masa se utiliza también para las chorotas o para las sopladas, unas arepitas pequeñas, delgadas, que se ponen a freír en aceite muy caliente para que se inflen.'),
(220, 'Aceite', '1 cucharada', 104, 74, 'Arepa santandereana', 'Se muele finamente el maíz, a máquina, con los chicharrones y la yuca. Luego, en una artesa, se pone la masa y se le agrega poco a poco aguasal tibia, hasta obtener, amasando, una pasta suave y manejable. (El éxito de la arepa está en la paciencia para sobarla, operación que se hace por espacio de ½ hora seguida.) Se forman bolas medianas, de acuerdo con el tamaño que se quiera, y se disponen sobre un lienzo o un pedazo de plástico. Se hacen las arepas adelgazándolas con las puntas de los dedos hasta quedar con ½ dedo de espesor; si se desean más delgadas, se estiran más. Se ponen en un tiesto, engrasado y precalentado, a fuego lento para que no se arrebaten y para que se doren por ambos lados. Esta masa se utiliza también para las chorotas o para las sopladas, unas arepitas pequeñas, delgadas, que se ponen a freír en aceite muy caliente para que se inflen.'),
(221, 'Guayaba madura', '500 gr', 107, 153, 'Bocadillo veleño', 'Se cocinan las guayabas por 15 minutos en el agua, se licuan, se pasan por un colador, y se les agrega el jugo de naranja. Se pone a fuego lento con el azúcar, rebullendo constantemente, hasta que deje los lados de la vasija y se recoja en el centro. Se pone en una vasija rectangular y, cuando esté frío, se parte en panelitas.'),
(222, 'Azúcar', '500 gr', 107, 3, 'Bocadillo veleño', 'Se cocinan las guayabas por 15 minutos en el agua, se licuan, se pasan por un colador, y se les agrega el jugo de naranja. Se pone a fuego lento con el azúcar, rebullendo constantemente, hasta que deje los lados de la vasija y se recoja en el centro. Se pone en una vasija rectangular y, cuando esté frío, se parte en panelitas.'),
(223, 'Jugo de naranja', '1 taza', 107, 154, 'Bocadillo veleño', 'Se cocinan las guayabas por 15 minutos en el agua, se licuan, se pasan por un colador, y se les agrega el jugo de naranja. Se pone a fuego lento con el azúcar, rebullendo constantemente, hasta que deje los lados de la vasija y se recoja en el centro. Se pone en una vasija rectangular y, cuando esté frío, se parte en panelitas.'),
(224, 'Agua', '2 tazas', 107, 17, 'Bocadillo veleño', 'Se cocinan las guayabas por 15 minutos en el agua, se licuan, se pasan por un colador, y se les agrega el jugo de naranja. Se pone a fuego lento con el azúcar, rebullendo constantemente, hasta que deje los lados de la vasija y se recoja en el centro. Se pone en una vasija rectangular y, cuando esté frío, se parte en panelitas.'),
(225, 'Agua', '1 litro', 109, 17, 'Guarapo costeño (agua de panela)', 'Se revuelve la panela en el agua hasta que quede disuelta y se le agrega el jugo de limón.'),
(226, 'Panela', '1', 109, 62, 'Guarapo costeño (agua de panela)', 'Se revuelve la panela en el agua hasta que quede disuelta y se le agrega el jugo de limón.'),
(227, 'Limón', '5', 109, 70, 'Guarapo costeño (agua de panela)', 'Se revuelve la panela en el agua hasta que quede disuelta y se le agrega el jugo de limón.'),
(228, 'Mango', '8', 110, 81, 'Jugo de mango', 'Se pelan los mangos, se les corta la pulpa y se licuan con un poco de agua. Se cuelan y se les incorpora más agua y el azúcar. Se sirve con hielo picado o muy bien refrigerado.'),
(229, 'Agua', '2 litros', 110, 17, 'Jugo de mango', 'Se pelan los mangos, se les corta la pulpa y se licuan con un poco de agua. Se cuelan y se les incorpora más agua y el azúcar. Se sirve con hielo picado o muy bien refrigerado.'),
(230, 'Azúcar', 'Al gusto', 110, 3, 'Jugo de mango', 'Se pelan los mangos, se les corta la pulpa y se licuan con un poco de agua. Se cuelan y se les incorpora más agua y el azúcar. Se sirve con hielo picado o muy bien refrigerado.'),
(231, 'Maíz de cabecita', '500 gr', 111, 2, 'Peto sinceano', 'Se pone a cocinar la leche y cuando esté caliente se le agrega la masa. Se deja cocinar a fuego lento por 30 minutos, revolviendo suavemente. Se le agrega el azúcar y la canela. Una vez diluido el azúcar, se sirve frío o, más frecuentemente, caliente. Es tan popular el peto entre los sucreños que hay numerosos vendedores ambulantes que lo ofrecen por las calles. Lo transportan en ollas con una hornilla de carbón adherida a la base, y lo venden a los transeúntes servido en vasitos.'),
(232, 'Leche', '2 litros', 111, 10, 'Peto sinceano', 'Se pone a cocinar la leche y cuando esté caliente se le agrega la masa. Se deja cocinar a fuego lento por 30 minutos, revolviendo suavemente. Se le agrega el azúcar y la canela. Una vez diluido el azúcar, se sirve frío o, más frecuentemente, caliente. Es tan popular el peto entre los sucreños que hay numerosos vendedores ambulantes que lo ofrecen por las calles. Lo transportan en ollas con una hornilla de carbón adherida a la base, y lo venden a los transeúntes servido en vasitos.'),
(233, 'Azúcar', '500 gr', 111, 3, 'Peto sinceano', 'Se pone a cocinar la leche y cuando esté caliente se le agrega la masa. Se deja cocinar a fuego lento por 30 minutos, revolviendo suavemente. Se le agrega el azúcar y la canela. Una vez diluido el azúcar, se sirve frío o, más frecuentemente, caliente. Es tan popular el peto entre los sucreños que hay numerosos vendedores ambulantes que lo ofrecen por las calles. Lo transportan en ollas con una hornilla de carbón adherida a la base, y lo venden a los transeúntes servido en vasitos.'),
(234, 'Canela', 'Al gusto', 111, 13, 'Peto sinceano', 'Se pone a cocinar la leche y cuando esté caliente se le agrega la masa. Se deja cocinar a fuego lento por 30 minutos, revolviendo suavemente. Se le agrega el azúcar y la canela. Una vez diluido el azúcar, se sirve frío o, más frecuentemente, caliente. Es tan popular el peto entre los sucreños que hay numerosos vendedores ambulantes que lo ofrecen por las calles. Lo transportan en ollas con una hornilla de carbón adherida a la base, y lo venden a los transeúntes servido en vasitos.'),
(235, 'Arroz', '2 tazas', 115, 124, 'Arroz con coco', 'Se pone el arroz a cocinar en la leche de coco con azúcar y sal, a fuego medio hasta que se empiece a secar, entonces se tapa y se deja a fuego muy lento para que acabe de secarse. Se usa para acompañar muchísimos platos.'),
(236, 'Leche de coco', '3 ½ ', 115, 9, 'Arroz con coco', 'Se pone el arroz a cocinar en la leche de coco con azúcar y sal, a fuego medio hasta que se empiece a secar, entonces se tapa y se deja a fuego muy lento para que acabe de secarse. Se usa para acompañar muchísimos platos.'),
(237, 'Azúcar', '1 cucharada', 115, 3, 'Arroz con coco', 'Se pone el arroz a cocinar en la leche de coco con azúcar y sal, a fuego medio hasta que se empiece a secar, entonces se tapa y se deja a fuego muy lento para que acabe de secarse. Se usa para acompañar muchísimos platos.'),
(238, 'Yuca', '1¼ kg', 116, 41, 'Bollo de yuca', 'La yuca se pela y se cocina unos 20 minutos (que no quede muy blanda). Luego se muele con sal y se amasa, se envuelve en hojas de maíz, para formar los bollos, que se amarran y se ponen a cocinar en agua por ½ hora. Puede hacerse un bollo grande o varios más pequeños.'),
(239, 'Sal', 'Al gusto', 116, 6, 'Bollo de yuca', 'La yuca se pela y se cocina unos 20 minutos (que no quede muy blanda). Luego se muele con sal y se amasa, se envuelve en hojas de maíz, para formar los bollos, que se amarran y se ponen a cocinar en agua por ½ hora. Puede hacerse un bollo grande o varios más pequeños.'),
(240, 'Hojas de maíz', 'Varía', 116, 167, 'Bollo de yuca', 'La yuca se pela y se cocina unos 20 minutos (que no quede muy blanda). Luego se muele con sal y se amasa, se envuelve en hojas de maíz, para formar los bollos, que se amarran y se ponen a cocinar en agua por ½ hora. Puede hacerse un bollo grande o varios más pequeños.'),
(241, 'Cabuya', '1', 116, 168, 'Bollo de yuca', 'La yuca se pela y se cocina unos 20 minutos (que no quede muy blanda). Luego se muele con sal y se amasa, se envuelve en hojas de maíz, para formar los bollos, que se amarran y se ponen a cocinar en agua por ½ hora. Puede hacerse un bollo grande o varios más pequeños.'),
(242, 'Carne de pulpa molida', '500 gr', 118, 48, 'Butifarra', 'Se rellena la tripa con la carne de res, adobada en bastante pimienta y sal, mezclada con el tocino y bien amasada. Se hacen las bolitas, dividiendo la tripa al anudar con una cuerda. Se escaldan en agua hirviendo por 15 minutos y se dejan secar al sol por 3 horas. Luego se cuelgan a resecar al humo de leña por 4 horas.'),
(243, 'Tocino', '500 gr', 118, 103, 'Butifarra', 'Se rellena la tripa con la carne de res, adobada en bastante pimienta y sal, mezclada con el tocino y bien amasada. Se hacen las bolitas, dividiendo la tripa al anudar con una cuerda. Se escaldan en agua hirviendo por 15 minutos y se dejan secar al sol por 3 horas. Luego se cuelgan a resecar al humo de leña por 4 horas.'),
(244, 'Tripa delgada de cerdo', '1', 118, 170, 'Butifarra', 'Se rellena la tripa con la carne de res, adobada en bastante pimienta y sal, mezclada con el tocino y bien amasada. Se hacen las bolitas, dividiendo la tripa al anudar con una cuerda. Se escaldan en agua hirviendo por 15 minutos y se dejan secar al sol por 3 horas. Luego se cuelgan a resecar al humo de leña por 4 horas.'),
(245, 'Sal', 'Al gusto', 118, 6, 'Butifarra', 'Se rellena la tripa con la carne de res, adobada en bastante pimienta y sal, mezclada con el tocino y bien amasada. Se hacen las bolitas, dividiendo la tripa al anudar con una cuerda. Se escaldan en agua hirviendo por 15 minutos y se dejan secar al sol por 3 horas. Luego se cuelgan a resecar al humo de leña por 4 horas.'),
(248, 'Mojarras', '16', 121, 175, 'Mojarras fritas', 'Una vez limpias las mojarras, se rajan y se ponen a freír en aceite bien caliente hasta dorarlas por ambos lados, se salan, se perfuman con jugo de limón y se sirven. Se acompañan con yuca sudada y patacones.'),
(249, 'Aceite', 'Lo necesario', 121, 74, 'Mojarras fritas', 'Una vez limpias las mojarras, se rajan y se ponen a freír en aceite bien caliente hasta dorarlas por ambos lados, se salan, se perfuman con jugo de limón y se sirven. Se acompañan con yuca sudada y patacones.'),
(250, 'Limón', 'Al gusto', 121, 70, 'Mojarras fritas', 'Una vez limpias las mojarras, se rajan y se ponen a freír en aceite bien caliente hasta dorarlas por ambos lados, se salan, se perfuman con jugo de limón y se sirven. Se acompañan con yuca sudada y patacones.'),
(251, 'Sal', 'Al gusto', 121, 6, 'Mojarras fritas', 'Una vez limpias las mojarras, se rajan y se ponen a freír en aceite bien caliente hasta dorarlas por ambos lados, se salan, se perfuman con jugo de limón y se sirven. Se acompañan con yuca sudada y patacones.'),
(252, 'Leche', '750 ml', 124, 10, 'Candil', 'Se pone la leche a cocinar a fuego medio; cuando esté caliente se le agrega el azúcar (o panela) y se bate, adicionándole los huevos uno a uno, sin dejar de batir con el molinillo. Cuando quede cremosa, se sirve. Es muy popular tomarlo por placer o como medicina para curar resfríos.'),
(253, 'Huevo', '3', 124, 19, 'Candil', 'Se pone la leche a cocinar a fuego medio; cuando esté caliente se le agrega el azúcar (o panela) y se bate, adicionándole los huevos uno a uno, sin dejar de batir con el molinillo. Cuando quede cremosa, se sirve. Es muy popular tomarlo por placer o como medicina para curar resfríos.'),
(254, 'Azúcar/panela', 'Al gusto', 124, 3, 'Candil', 'Se pone la leche a cocinar a fuego medio; cuando esté caliente se le agrega el azúcar (o panela) y se bate, adicionándole los huevos uno a uno, sin dejar de batir con el molinillo. Cuando quede cremosa, se sirve. Es muy popular tomarlo por placer o como medicina para curar resfríos.'),
(255, 'Canela', 'Al gusto', 124, 13, 'Candil', 'Se pone la leche a cocinar a fuego medio; cuando esté caliente se le agrega el azúcar (o panela) y se bate, adicionándole los huevos uno a uno, sin dejar de batir con el molinillo. Cuando quede cremosa, se sirve. Es muy popular tomarlo por placer o como medicina para curar resfríos.'),
(256, 'Plátano maduro', '3', 127, 139, 'Enmochilados', 'Se cortan los plátanos en tajadas al sesgo y se fríen en el aceite hasta dorar. Se sacan y se hacen emparedados con dos tajadas de plátano y una de queso en la mitad. Se rebozan en la mezcla de los huevos, harina y sal y se ponen a freír hasta que estén dorados.'),
(257, 'Huevo batido', '4', 127, 19, 'Enmochilados', 'Se cortan los plátanos en tajadas al sesgo y se fríen en el aceite hasta dorar. Se sacan y se hacen emparedados con dos tajadas de plátano y una de queso en la mitad. Se rebozan en la mezcla de los huevos, harina y sal y se ponen a freír hasta que estén dorados.'),
(258, 'Harina de trigo', '2 cucharadas', 127, 98, 'Enmochilados', 'Se cortan los plátanos en tajadas al sesgo y se fríen en el aceite hasta dorar. Se sacan y se hacen emparedados con dos tajadas de plátano y una de queso en la mitad. Se rebozan en la mezcla de los huevos, harina y sal y se ponen a freír hasta que estén dorados.'),
(259, 'Queso', '250 gr', 127, 46, 'Enmochilados', 'Se cortan los plátanos en tajadas al sesgo y se fríen en el aceite hasta dorar. Se sacan y se hacen emparedados con dos tajadas de plátano y una de queso en la mitad. Se rebozan en la mezcla de los huevos, harina y sal y se ponen a freír hasta que estén dorados.'),
(260, 'Sal', 'Al gusto', 127, 6, 'Enmochilados', 'Se cortan los plátanos en tajadas al sesgo y se fríen en el aceite hasta dorar. Se sacan y se hacen emparedados con dos tajadas de plátano y una de queso en la mitad. Se rebozan en la mezcla de los huevos, harina y sal y se ponen a freír hasta que estén dorados.'),
(261, 'Limón verde', '10', 131, 70, 'Nochebuena', 'Se ponen los limones a desangrar en agua fresca, dentro de una paila de cobre, durante 2 días; el agua se les cambia cada tanto. Luego se sacan, se cortan en dos, se les extrae la pulpa, y se ponen a cocinar en la misma paila por 30 minutos. La papaya verde se pela, se corta en tajadas y se pasa por agua hirviendo para deslecharla, y luego se corta en tajadas delgadas. Las brevas se pasan por agua hirviendo, y se tajan en cruz por la parte gruesa, sin separarlas. Se prepara en la paila de cobre un melado con el agua y la panela. Se agregan todas las frutas y se dejan calar por 20 minutos, revolviendo con cuchara de palo. A las almojábanas se les abre un hueco en la mitad, y se rellena con pedazos de queso. Se ponen las almojábanas encima del melado por 5 minutos (que se derrita el queso o se sirve el queso aparte).'),
(262, 'Papaya verde', '1', 131, 78, 'Nochebuena', 'Se ponen los limones a desangrar en agua fresca, dentro de una paila de cobre, durante 2 días; el agua se les cambia cada tanto. Luego se sacan, se cortan en dos, se les extrae la pulpa, y se ponen a cocinar en la misma paila por 30 minutos. La papaya verde se pela, se corta en tajadas y se pasa por agua hirviendo para deslecharla, y luego se corta en tajadas delgadas. Las brevas se pasan por agua hirviendo, y se tajan en cruz por la parte gruesa, sin separarlas. Se prepara en la paila de cobre un melado con el agua y la panela. Se agregan todas las frutas y se dejan calar por 20 minutos, revolviendo con cuchara de palo. A las almojábanas se les abre un hueco en la mitad, y se rellena con pedazos de queso. Se ponen las almojábanas encima del melado por 5 minutos (que se derrita el queso o se sirve el queso aparte).');
INSERT INTO `productrecipes` (`ID`, `Nombre`, `Cantidad`, `Receta_ID`, `Product_ID`, `Nombre_receta`, `Preparación`) VALUES
(263, 'Higuillo', '10', 131, 187, 'Nochebuena', 'Se ponen los limones a desangrar en agua fresca, dentro de una paila de cobre, durante 2 días; el agua se les cambia cada tanto. Luego se sacan, se cortan en dos, se les extrae la pulpa, y se ponen a cocinar en la misma paila por 30 minutos. La papaya verde se pela, se corta en tajadas y se pasa por agua hirviendo para deslecharla, y luego se corta en tajadas delgadas. Las brevas se pasan por agua hirviendo, y se tajan en cruz por la parte gruesa, sin separarlas. Se prepara en la paila de cobre un melado con el agua y la panela. Se agregan todas las frutas y se dejan calar por 20 minutos, revolviendo con cuchara de palo. A las almojábanas se les abre un hueco en la mitad, y se rellena con pedazos de queso. Se ponen las almojábanas encima del melado por 5 minutos (que se derrita el queso o se sirve el queso aparte).'),
(264, 'Brevas', '10', 131, 135, 'Nochebuena', 'Se ponen los limones a desangrar en agua fresca, dentro de una paila de cobre, durante 2 días; el agua se les cambia cada tanto. Luego se sacan, se cortan en dos, se les extrae la pulpa, y se ponen a cocinar en la misma paila por 30 minutos. La papaya verde se pela, se corta en tajadas y se pasa por agua hirviendo para deslecharla, y luego se corta en tajadas delgadas. Las brevas se pasan por agua hirviendo, y se tajan en cruz por la parte gruesa, sin separarlas. Se prepara en la paila de cobre un melado con el agua y la panela. Se agregan todas las frutas y se dejan calar por 20 minutos, revolviendo con cuchara de palo. A las almojábanas se les abre un hueco en la mitad, y se rellena con pedazos de queso. Se ponen las almojábanas encima del melado por 5 minutos (que se derrita el queso o se sirve el queso aparte).'),
(265, 'Panela', '3', 131, 62, 'Nochebuena', 'Se ponen los limones a desangrar en agua fresca, dentro de una paila de cobre, durante 2 días; el agua se les cambia cada tanto. Luego se sacan, se cortan en dos, se les extrae la pulpa, y se ponen a cocinar en la misma paila por 30 minutos. La papaya verde se pela, se corta en tajadas y se pasa por agua hirviendo para deslecharla, y luego se corta en tajadas delgadas. Las brevas se pasan por agua hirviendo, y se tajan en cruz por la parte gruesa, sin separarlas. Se prepara en la paila de cobre un melado con el agua y la panela. Se agregan todas las frutas y se dejan calar por 20 minutos, revolviendo con cuchara de palo. A las almojábanas se les abre un hueco en la mitad, y se rellena con pedazos de queso. Se ponen las almojábanas encima del melado por 5 minutos (que se derrita el queso o se sirve el queso aparte).'),
(266, 'Almojábanas ', '10', 131, 188, 'Nochebuena', 'Se ponen los limones a desangrar en agua fresca, dentro de una paila de cobre, durante 2 días; el agua se les cambia cada tanto. Luego se sacan, se cortan en dos, se les extrae la pulpa, y se ponen a cocinar en la misma paila por 30 minutos. La papaya verde se pela, se corta en tajadas y se pasa por agua hirviendo para deslecharla, y luego se corta en tajadas delgadas. Las brevas se pasan por agua hirviendo, y se tajan en cruz por la parte gruesa, sin separarlas. Se prepara en la paila de cobre un melado con el agua y la panela. Se agregan todas las frutas y se dejan calar por 20 minutos, revolviendo con cuchara de palo. A las almojábanas se les abre un hueco en la mitad, y se rellena con pedazos de queso. Se ponen las almojábanas encima del melado por 5 minutos (que se derrita el queso o se sirve el queso aparte).'),
(267, 'Queso', '250 gr', 131, 46, 'Nochebuena', 'Se ponen los limones a desangrar en agua fresca, dentro de una paila de cobre, durante 2 días; el agua se les cambia cada tanto. Luego se sacan, se cortan en dos, se les extrae la pulpa, y se ponen a cocinar en la misma paila por 30 minutos. La papaya verde se pela, se corta en tajadas y se pasa por agua hirviendo para deslecharla, y luego se corta en tajadas delgadas. Las brevas se pasan por agua hirviendo, y se tajan en cruz por la parte gruesa, sin separarlas. Se prepara en la paila de cobre un melado con el agua y la panela. Se agregan todas las frutas y se dejan calar por 20 minutos, revolviendo con cuchara de palo. A las almojábanas se les abre un hueco en la mitad, y se rellena con pedazos de queso. Se ponen las almojábanas encima del melado por 5 minutos (que se derrita el queso o se sirve el queso aparte).'),
(268, 'Leche', '2 litros', 131, 10, 'Nochebuena', 'Se ponen los limones a desangrar en agua fresca, dentro de una paila de cobre, durante 2 días; el agua se les cambia cada tanto. Luego se sacan, se cortan en dos, se les extrae la pulpa, y se ponen a cocinar en la misma paila por 30 minutos. La papaya verde se pela, se corta en tajadas y se pasa por agua hirviendo para deslecharla, y luego se corta en tajadas delgadas. Las brevas se pasan por agua hirviendo, y se tajan en cruz por la parte gruesa, sin separarlas. Se prepara en la paila de cobre un melado con el agua y la panela. Se agregan todas las frutas y se dejan calar por 20 minutos, revolviendo con cuchara de palo. A las almojábanas se les abre un hueco en la mitad, y se rellena con pedazos de queso. Se ponen las almojábanas encima del melado por 5 minutos (que se derrita el queso o se sirve el queso aparte).'),
(269, 'Tomate de árbol ', '12', 131, 191, 'Nochebuena', 'Se ponen los limones a desangrar en agua fresca, dentro de una paila de cobre, durante 2 días; el agua se les cambia cada tanto. Luego se sacan, se cortan en dos, se les extrae la pulpa, y se ponen a cocinar en la misma paila por 30 minutos. La papaya verde se pela, se corta en tajadas y se pasa por agua hirviendo para deslecharla, y luego se corta en tajadas delgadas. Las brevas se pasan por agua hirviendo, y se tajan en cruz por la parte gruesa, sin separarlas. Se prepara en la paila de cobre un melado con el agua y la panela. Se agregan todas las frutas y se dejan calar por 20 minutos, revolviendo con cuchara de palo. A las almojábanas se les abre un hueco en la mitad, y se rellena con pedazos de queso. Se ponen las almojábanas encima del melado por 5 minutos (que se derrita el queso o se sirve el queso aparte).'),
(270, 'Agua', '3 tazas', 131, 17, 'Nochebuena', 'Se ponen los limones a desangrar en agua fresca, dentro de una paila de cobre, durante 2 días; el agua se les cambia cada tanto. Luego se sacan, se cortan en dos, se les extrae la pulpa, y se ponen a cocinar en la misma paila por 30 minutos. La papaya verde se pela, se corta en tajadas y se pasa por agua hirviendo para deslecharla, y luego se corta en tajadas delgadas. Las brevas se pasan por agua hirviendo, y se tajan en cruz por la parte gruesa, sin separarlas. Se prepara en la paila de cobre un melado con el agua y la panela. Se agregan todas las frutas y se dejan calar por 20 minutos, revolviendo con cuchara de palo. A las almojábanas se les abre un hueco en la mitad, y se rellena con pedazos de queso. Se ponen las almojábanas encima del melado por 5 minutos (que se derrita el queso o se sirve el queso aparte).'),
(271, 'Azúcar', '1½ taza', 131, 3, 'Nochebuena', 'Se ponen los limones a desangrar en agua fresca, dentro de una paila de cobre, durante 2 días; el agua se les cambia cada tanto. Luego se sacan, se cortan en dos, se les extrae la pulpa, y se ponen a cocinar en la misma paila por 30 minutos. La papaya verde se pela, se corta en tajadas y se pasa por agua hirviendo para deslecharla, y luego se corta en tajadas delgadas. Las brevas se pasan por agua hirviendo, y se tajan en cruz por la parte gruesa, sin separarlas. Se prepara en la paila de cobre un melado con el agua y la panela. Se agregan todas las frutas y se dejan calar por 20 minutos, revolviendo con cuchara de palo. A las almojábanas se les abre un hueco en la mitad, y se rellena con pedazos de queso. Se ponen las almojábanas encima del melado por 5 minutos (que se derrita el queso o se sirve el queso aparte).'),
(272, 'Agua', '8 tazas', 135, 17, 'Changua', 'Se ponen a hervir la leche y el agua, se le agregan la cebolla picada, el cilantro y la sal. Se deja hervir 10 minutos y se sirve. (Opcional: se le pone a cada porción al servir un huevo crudo, cuidando de no reventar la yema, o se bate aparte el huevo y se incorpora al caldo poco a poco, revolviendo. También se puede agregar pan en trocitos).'),
(273, 'Leche', '3 tazas', 135, 10, 'Changua', 'Se ponen a hervir la leche y el agua, se le agregan la cebolla picada, el cilantro y la sal. Se deja hervir 10 minutos y se sirve. (Opcional: se le pone a cada porción al servir un huevo crudo, cuidando de no reventar la yema, o se bate aparte el huevo y se incorpora al caldo poco a poco, revolviendo. También se puede agregar pan en trocitos).'),
(274, 'Tallos de cebolla', '6', 135, 23, 'Changua', 'Se ponen a hervir la leche y el agua, se le agregan la cebolla picada, el cilantro y la sal. Se deja hervir 10 minutos y se sirve. (Opcional: se le pone a cada porción al servir un huevo crudo, cuidando de no reventar la yema, o se bate aparte el huevo y se incorpora al caldo poco a poco, revolviendo. También se puede agregar pan en trocitos).'),
(275, 'Cilantro', '3 cucharadas', 135, 73, 'Changua', 'Se ponen a hervir la leche y el agua, se le agregan la cebolla picada, el cilantro y la sal. Se deja hervir 10 minutos y se sirve. (Opcional: se le pone a cada porción al servir un huevo crudo, cuidando de no reventar la yema, o se bate aparte el huevo y se incorpora al caldo poco a poco, revolviendo. También se puede agregar pan en trocitos).'),
(276, 'Sal', 'Al gusto', 135, 6, 'Changua', 'Se ponen a hervir la leche y el agua, se le agregan la cebolla picada, el cilantro y la sal. Se deja hervir 10 minutos y se sirve. (Opcional: se le pone a cada porción al servir un huevo crudo, cuidando de no reventar la yema, o se bate aparte el huevo y se incorpora al caldo poco a poco, revolviendo. También se puede agregar pan en trocitos).'),
(277, 'Huevo batido', '12', 138, 19, 'Huevos pericos con mazorca', 'Se calientan el aceite y la mantequilla. En esta mezcla se sofríen los tomates, las cebollas y las mazorcas, revolviendo para que no se peguen. Se baten los huevos, se les agrega sal y pimienta, y se vierte sobre el sofrito. Se revuelve y se deja cuajar a gusto.'),
(278, 'Mazorca', '4', 138, 148, 'Huevos pericos con mazorca', 'Se calientan el aceite y la mantequilla. En esta mezcla se sofríen los tomates, las cebollas y las mazorcas, revolviendo para que no se peguen. Se baten los huevos, se les agrega sal y pimienta, y se vierte sobre el sofrito. Se revuelve y se deja cuajar a gusto.'),
(279, 'Tomate maduro', '2', 138, 34, 'Huevos pericos con mazorca', 'Se calientan el aceite y la mantequilla. En esta mezcla se sofríen los tomates, las cebollas y las mazorcas, revolviendo para que no se peguen. Se baten los huevos, se les agrega sal y pimienta, y se vierte sobre el sofrito. Se revuelve y se deja cuajar a gusto.'),
(280, 'Cebolla junca', '2', 138, 196, 'Huevos pericos con mazorca', 'Se calientan el aceite y la mantequilla. En esta mezcla se sofríen los tomates, las cebollas y las mazorcas, revolviendo para que no se peguen. Se baten los huevos, se les agrega sal y pimienta, y se vierte sobre el sofrito. Se revuelve y se deja cuajar a gusto.'),
(281, 'Aceite', '2 cucharadas', 138, 74, 'Huevos pericos con mazorca', 'Se calientan el aceite y la mantequilla. En esta mezcla se sofríen los tomates, las cebollas y las mazorcas, revolviendo para que no se peguen. Se baten los huevos, se les agrega sal y pimienta, y se vierte sobre el sofrito. Se revuelve y se deja cuajar a gusto.'),
(282, 'Mantequilla', '1 cucharada', 138, 36, 'Huevos pericos con mazorca', 'Se calientan el aceite y la mantequilla. En esta mezcla se sofríen los tomates, las cebollas y las mazorcas, revolviendo para que no se peguen. Se baten los huevos, se les agrega sal y pimienta, y se vierte sobre el sofrito. Se revuelve y se deja cuajar a gusto.'),
(283, 'Sal', 'Al gusto', 138, 6, 'Huevos pericos con mazorca', 'Se calientan el aceite y la mantequilla. En esta mezcla se sofríen los tomates, las cebollas y las mazorcas, revolviendo para que no se peguen. Se baten los huevos, se les agrega sal y pimienta, y se vierte sobre el sofrito. Se revuelve y se deja cuajar a gusto.'),
(284, 'Pimienta', 'Al gusto', 138, 29, 'Huevos pericos con mazorca', 'Se calientan el aceite y la mantequilla. En esta mezcla se sofríen los tomates, las cebollas y las mazorcas, revolviendo para que no se peguen. Se baten los huevos, se les agrega sal y pimienta, y se vierte sobre el sofrito. Se revuelve y se deja cuajar a gusto.'),
(285, 'Lomo de ternera', '2 kg', 142, 201, 'Ternera asada', 'Se abre el lomo dejándolo lo más delgado posible, se frota con sal, pimienta y la cebolla, se riega con la cerveza y se deja reposar por 1 hora. Se pone a asar a la brasa sobre una parrilla, a fuego lento, hasta que esté a su gusto. Se sirve con papas saladas.'),
(286, 'Tallos de cebolla larga', '2', 142, 23, 'Ternera asada', 'Se abre el lomo dejándolo lo más delgado posible, se frota con sal, pimienta y la cebolla, se riega con la cerveza y se deja reposar por 1 hora. Se pone a asar a la brasa sobre una parrilla, a fuego lento, hasta que esté a su gusto. Se sirve con papas saladas.'),
(287, 'Sal', 'Al gusto', 142, 6, 'Ternera asada', 'Se abre el lomo dejándolo lo más delgado posible, se frota con sal, pimienta y la cebolla, se riega con la cerveza y se deja reposar por 1 hora. Se pone a asar a la brasa sobre una parrilla, a fuego lento, hasta que esté a su gusto. Se sirve con papas saladas.'),
(288, 'Pimienta', 'Al gusto', 142, 29, 'Ternera asada', 'Se abre el lomo dejándolo lo más delgado posible, se frota con sal, pimienta y la cebolla, se riega con la cerveza y se deja reposar por 1 hora. Se pone a asar a la brasa sobre una parrilla, a fuego lento, hasta que esté a su gusto. Se sirve con papas saladas.'),
(289, 'Cerveza', '750 ml', 142, 182, 'Ternera asada', 'Se abre el lomo dejándolo lo más delgado posible, se frota con sal, pimienta y la cebolla, se riega con la cerveza y se deja reposar por 1 hora. Se pone a asar a la brasa sobre una parrilla, a fuego lento, hasta que esté a su gusto. Se sirve con papas saladas.'),
(290, 'Agua', '7 tazas', 143, 17, 'Brevas en almibar', 'Se les hace un corte a las brevas por la parte gruesa, se cocinan en 4 tazas de agua, en olla a presión por 10 minutos (de pito) y se destapan. Se agregan el azúcar y 3 tazas más de agua y se dejan calar por 3 horas a fuego lento. Se les ponen unas gotas de limón y se sirven en dulceras una vez frías.'),
(293, 'Brevas', '1 kg', 143, 135, 'Brevas en almibar', 'Se les hace un corte a las brevas por la parte gruesa, se cocinan en 4 tazas de agua, en olla a presión por 10 minutos (de pito) y se destapan. Se agregan el azúcar y 3 tazas más de agua y se dejan calar por 3 horas a fuego lento. Se les ponen unas gotas de limón y se sirven en dulceras una vez frías.'),
(294, 'Azúcar', '3 libras', 143, 3, 'Brevas en almibar', 'Se les hace un corte a las brevas por la parte gruesa, se cocinan en 4 tazas de agua, en olla a presión por 10 minutos (de pito) y se destapan. Se agregan el azúcar y 3 tazas más de agua y se dejan calar por 3 horas a fuego lento. Se les ponen unas gotas de limón y se sirven en dulceras una vez frías.'),
(295, 'Jugo de limón', 'Al gusto', 143, 172, 'Brevas en almibar', 'Se les hace un corte a las brevas por la parte gruesa, se cocinan en 4 tazas de agua, en olla a presión por 10 minutos (de pito) y se destapan. Se agregan el azúcar y 3 tazas más de agua y se dejan calar por 3 horas a fuego lento. Se les ponen unas gotas de limón y se sirven en dulceras una vez frías.'),
(296, 'Feijoas peladas', '32', 145, 202, 'Dulce de feijoas', 'Se pone a hervir el agua con las feijoas y 4 cucharadas de azúcar a fuego lento. Se va agregando más azúcar a medida que se vaya conservando hasta que cale a gusto.'),
(297, 'Agua', '1 litro', 145, 17, 'Dulce de feijoas', 'Se pone a hervir el agua con las feijoas y 4 cucharadas de azúcar a fuego lento. Se va agregando más azúcar a medida que se vaya conservando hasta que cale a gusto.'),
(298, 'Azúcar', '375 gr', 145, 3, 'Dulce de feijoas', 'Se pone a hervir el agua con las feijoas y 4 cucharadas de azúcar a fuego lento. Se va agregando más azúcar a medida que se vaya conservando hasta que cale a gusto.'),
(299, 'Leche', '3 litros', 147, 10, 'Postre de natas', 'Se pone a cocinar la leche, y se deja reposar tras cada hervida; se retiran las natas y se guardan. Se repite la operación hasta que no salgan más natas. Se prepara un almíbar con el azúcar y una taza del suero que queda de la leche. Se añaden las dos yemas, y se revuelven hasta que queden bien incorporadas; se le ponen las natas encima y se deja cocinar a fuego lento por unos minutos (sin revolver). No se debe tocar hasta que se enfríe. Se sirve en dulcera. Si resulta muy espeso puede agregarse más leche. También pueden adicionarse unas pasas en el momento de mezclar el almíbar y las natas.'),
(300, 'Azúcar', '500 gr', 147, 3, 'Postre de natas', 'Se pone a cocinar la leche, y se deja reposar tras cada hervida; se retiran las natas y se guardan. Se repite la operación hasta que no salgan más natas. Se prepara un almíbar con el azúcar y una taza del suero que queda de la leche. Se añaden las dos yemas, y se revuelven hasta que queden bien incorporadas; se le ponen las natas encima y se deja cocinar a fuego lento por unos minutos (sin revolver). No se debe tocar hasta que se enfríe. Se sirve en dulcera. Si resulta muy espeso puede agregarse más leche. También pueden adicionarse unas pasas en el momento de mezclar el almíbar y las natas.'),
(301, 'Huevo', '2 yemas', 147, 19, 'Postre de natas', 'Se pone a cocinar la leche, y se deja reposar tras cada hervida; se retiran las natas y se guardan. Se repite la operación hasta que no salgan más natas. Se prepara un almíbar con el azúcar y una taza del suero que queda de la leche. Se añaden las dos yemas, y se revuelven hasta que queden bien incorporadas; se le ponen las natas encima y se deja cocinar a fuego lento por unos minutos (sin revolver). No se debe tocar hasta que se enfríe. Se sirve en dulcera. Si resulta muy espeso puede agregarse más leche. También pueden adicionarse unas pasas en el momento de mezclar el almíbar y las natas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recipes`
--

CREATE TABLE `recipes` (
  `ID` int(11) NOT NULL,
  `Nombre_receta` varchar(115) COLLATE utf8_bin NOT NULL,
  `Receta` text COLLATE utf8_bin NOT NULL,
  `Categoría_ID` int(11) NOT NULL,
  `Region_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `recipes`
--

INSERT INTO `recipes` (`ID`, `Nombre_receta`, `Receta`, `Categoría_ID`, `Region_ID`) VALUES
(1, 'Colada de Piña', 'Se cocina el maíz en el agua (1 hora), se saca, se muele y se cuela con el agua (tuga) hasta que quede bien diluido. Se pone a cocinar hasta que empiece a cuajar (15 minutos), se le agregan los aliños de chocolate (se revuelven constantemente), luego el azúcar y por último la piña rallada y su jugo. Se revuelve con una cuchara de palo hasta que cuaje (10 minutos), se le agrega la pizquita de sal y la nuez moscada. Se baja el fuego y se deja reposar. Se sirve tibia o fría\r\n', 1, 2),
(2, 'Chocolate con leche de coco', 'Se pone a cocinar a fuego lento la leche de coco con las pastillas de chocolate, batiendo fuertemente con un molinillo. Cuando estén disueltas se les agrega la leche de vaca y el azúcar. Se bate bien hasta que espese a gusto. Se sirve caliente.\r\n', 1, 2),
(3, 'Fresco de aguacate', 'Se abre el aguacate y se extrae la pulpa con una cuchara. Se bate o licua con la leche y el azúcar. Se sirve frío.\r\n', 1, 2),
(4, 'Jugo de guineo', 'Se pone la leche a hervir con la canela, y apenas dé el primer hervor se baja y se deja enfriar. Se le añaden los guineos, se baten bien con molinillo (o se licuan) con el azúcar, la esencia de vainilla y la nuez moscada. Se le agrega hielo y se sirve\r\n', 1, 2),
(5, 'Sorbete de borojó', 'Se corta la fruta en dos, con una cuchara se le extrae la pulpa, que se pone en un\r\npoco de agua, y se bate con molinillo hasta disolverla (o se licua). Se disuelve la leche en polvo en agua, y se incorpora la vainilla, la nuez moscada, los huevos y el azúcar. Se bate (o se licua) y se agrega la fruta. Se puede incorporar hielo picado y servirse frío.\r\n', 1, 2),
(6, 'Caldo de dentón salpreso', 'Los dentones se lavan muy bien y se ponen en agua hirviendo por 10 minutos para\r\ndesalarlos. Se bota el agua y el pescado se deja aparte. En las 10 tazas de agua se\r\nponen los plátanos a cocinar por 25 minutos a fuego alto. Aparte, se sofríen en la manteca (o en el aceite) las cebollas, el tomate, la bija, y se agregan al caldo con los pescados, la pimienta y el comino. Se tapa y se deja conservar por 20 minutos a fuego lento. Se le añade el cilantro, se prueba de sal y se sirve.\r\n', 2, 2),
(7, 'Caldo de gasapo', 'Se pone a hervir el agua, se le agregan los gasapos, se dejan cocinar por 5 minutos, se sacan y se pelan. En el caldo se ponen a cocinar los plátanos y las papas por 30 minutos a fuego alto. Se le agrega el refrito, sal y pimienta. Se revuelve, se baja a fuego lento. Se le incorpora la leche de coco y los gasapos pelados, se tapa y se deja conservar por 10 minutos. Se sirve con arroz.\r\n', 2, 2),
(8, 'Caldo de guacuco', 'Luego se le va añadiendo la leche caliente y el caldo mientras se sigue rebullendo\r\nhasta que quede una crema suave (unos 15 minutos). No se debe dejar hervir en ningún momento. Se le incorpora la crema de leche, se revuelve y se sirve en cazuelas o platos soperos con la cebolla larga (o la cebolleta), rociada por encima.\r\n', 2, 2),
(10, 'Crema de huevos de pescado (Tumbacatre)', 'Se lavan y se secan los huevos, se pican y se ponen con el sofrito, sal y pimienta en\r\nla mantequilla a fuego moderado por 10 minutos. Aparte, se pone la leche a hervir\r\na fuego medio, se le agrega el plátano raspado y se deja cocinar por 15 minutos, se baja a fuego muy lento y se incorporan los huevos y la leche de coco; se revuelve, se tapa y se deja conservar por 10 minutos. Se espolvorea con la cebolleta y el raspado de picha y se sirve.\r\n', 2, 2),
(20, 'Panochas', 'Se muele el maíz en grueso, se lava muy bien restregándolo en el agua para sacarle la caspa. Una vez limpio se muele otra vez en fino. Esta masa se mezcla con la miel y las especias, se amasa muy bien, se toman porciones y se hacen galletas, que se colocan sobre una lata engrasada y se llevan al horno precalentado a 350° por 12 minutos aproximadamente.\r\n', 3, 2),
(22, 'Gato encerrado', 'Se ponen los plátanos a asar al horno hasta que estén dorados, se sacan y se cortan a lo largo hasta el corazón, que se le extrae rellenando su espacio con el bocadillo y el queso. Se regresan al horno por 10 minutos y se sirven. (Opcional: se les puede rociar un poco de mantequilla y de sal).\r\n', 3, 2),
(23, 'Enyucado', 'Se pone la yuca rallada en una batea, se le agrega el coco rallado (se mezcla bien), luego los aliños de chocolate, el melado, el queso y la sal. Se amasa todo bien y se vierte en un molde previamente engrasado. Se lleva al horno precalentado a 350ºC por 20 minutos, hasta que pase la prueba del cuchillo.\r\n', 3, 2),
(29, 'Pescado encurtido', 'Se pasa el pescado por agua hirviendo por 1 minuto, se saca y se escurre. Se mezclan\r\nel resto de los ingredientes y se pone el pescado a marinar por mínimo 6 horas.\r\n(Opcionalmente se puede revolver con vegetales cocidos, como zanahoria y apio).\r\nSe sirve sobre una cama de lechuga y con tajaditas de limón.\r\n', 4, 2),
(30, 'Pastel de pescado', 'En un molde engrasado se pone una capa de papas, una de filetes de pescado, otra\r\nde papas y una última de filetes. Cada capa se va bañando con huevos batidos, leche, refrito y sal. Se cubre el molde con una última capa de miga de pan y se lleva al horno precalentado a 300°, por 30 minutos.\r\n', 4, 2),
(33, 'Cabellito de papaya biche', 'Se corta la piel de la papaya y se deja deslechar por un día. Se pela, se corta la pulpa en trozos y luego en palitos (lo más delgados posibles). Se ponen a calar en agua de azúcar, hasta que estén a punto.\r\n', 5, 2),
(34, 'Cocadas', 'Se ponen el afrecho del coco y el agua de los dos cocos, media libra (250 gr) de\r\nazúcar y los clavos, a cocinar. Cuando empiece a espesarse el almíbar, se le agrega el resto del azúcar y el jugo del limón, se revuelve con la cagüinga (cuchara de palo) hasta que se endurezca. Se sacan pequeñas porciones con una cuchara, se ponen sobre una fuente húmeda y se dejan enfriar.\r\n', 5, 2),
(37, 'La Macana', 'Se ponen todos los ingredientes juntos a cocinar en un recipiente a fuego lento,\r\nrevolviendo constantemente hasta lograr una colada espesa. Se sirve caliente.\r\n', 1, 3),
(38, 'Macedonia de frutas', 'Se mezclan todas las frutas con el jugo de naranja, el vino y el almíbar (en ese orden). Se revuelve bien, se agrega hielo picado y se sirve. (Se le puede añadir cualquier otra fruta que se desee).\r\n\r\n', 1, 3),
(47, 'Empanaditas de maduro', 'Se muelen los plátanos y se amasan bien con un poco de sal. Se toman porciones y\r\nse pampean formando arepitas. Se les pone en la mitad un poco de queso bañado\r\ncon miel de abeja y se cierran formando empanaditas. Estas se rebozan en el batido\r\nde huevos y harina y se fríen inmediatamente en aceite caliente, hasta que doren.\r\n', 3, 3),
(50, 'Torrijas', 'Se remojan las rodajas en la leche y en el agua de azahares, se dejan escurrir. Se rebozan los huevos, se espolvorean con el azúcar y el rallado de limón, e inmediatamente se fríen en una mezcla de aceite y mantequilla calientes, hasta dorar. Se espolvorean nuevamente con azúcar y canela (o anís) y se sirven. Son muy apreciadas para el desayuno.\r\n', 3, 3),
(52, 'Arroz con chorizo', 'Se fríen los chorizos. En la manteca que soltaron se sofríe la cebolla y un poco el\r\narroz, se agrega el agua, sal y pimienta, se cocina a fuego medio hasta que empiece\r\na secar, se pican los chorizos y se incorporan, se revuelve y se tapa. Se baja a fuego lento y se deja terminar de cocinar y secar completamente y se sirve.\r\n', 4, 3),
(59, 'Mazamorra', 'Se cocina el maíz en el agua por 1½ hora, hasta que esté blando. Se deja reposar,\r\nse sirve con un poco de leche a gusto y la panela raspada. Claro: es el caldo de esta\r\ncocción que se sirve con panela partida.\r\n', 5, 3),
(60, 'Natilla', 'Se pone a hervir 1½ litro de leche con la panela, y se le saca la cachaza o espuma que se vaya formando. Se añade la mantequilla, la canela y la fécula de maíz (que se ha disuelto previamente en medio litro de leche). Se va revolviendo lentamente y se cocina a fuego lento durante 10 minutos o hasta que dé su punto (este se reconoce cuando después de poner un poco en un plato, y ya frío, puede despegarse fácilmente). En este momento se le añade el coco, se revuelve, se vierte en moldes y se cubre con el almíbar. Al servir la porción individual, se le espolvorea un poco de\r\ncanela en polvo.\r\n', 5, 3),
(62, 'Atol', 'Se cocina el maíz hasta que esté blando (por 1 hora), se deja enfriar, se agrega panela raspada y la leche, se revuelve y se sirve frío o caliente.\r\n', 1, 4),
(63, 'Crema de copoazú', 'Se extrae la pulpa del copoazú, y se le sacan las semillas. La pulpa se mezcla con\r\ncrema de leche, leche condensada y azúcar a gusto. Se bate o se licua y se sirve con\r\nhielo picado.\r\n', 1, 4),
(66, 'Guarapo', 'Se cocina y se deja consumir el jugo de caña de azúcar hasta formar un melado. Se\r\npone maíz trillado en agua que lo cubra por un día, se saca, se escurre y se muele. Se mezcla la masa y el melado con agua fresca y se deja fermentar por 3 días, más o menos, a gusto. (El grado de fermentación también varía según el grado de borrachera que se quiera obtener).\r\n', 1, 4),
(68, 'Hervido (Sancocho)', 'Se cocina la gallina con la cebolla y los aliños por 45 minutos, hasta que se empiece a ablandar. Se le agregan los plátanos y se dejan hervir otros 20 minutos. Luego se añaden la ahuyama y la yuca, se cocinan por 15 minutos, se agrega el cilantro, se baja a fuego lento, tapado, y se conserva por 10 minutos. Se sirve con ají y arroz blanco seco.\r\n', 2, 4),
(70, 'Aceite de chontaduro', 'Se parten los chontaduros y se ponen a cocinar en agua por 2 horas, y se dejan enfriar un poco. El aceite flota en el agua y se va sacando con una pluma grande, que se escurre en un recipiente aparte. Este aceite es muy apreciado por el indígena para sus frituras.\r\n', 3, 4),
(74, 'Carne asada - Tungos', 'Se corta la carne en porciones delgadas. Se les pone un poco de sal y se asan a la\r\nparrilla. Se sirven sobre hojas de plátano y se acompañan \r\n', 4, 4),
(77, 'Dulce de marañón', 'Se les quitan las pepas a los marañones, y las pulpas se puyan con un tenedor. Se exprimen y se cocinan en agua, luego se sacan y se ponen a calar en una miel de panela clara. Se les puede poner un poco de vino y de canela en polvo. Se deja cocinar hasta que cale el almíbar. Las frutas deben quedar arrugadas como pasas.\r\n', 5, 4),
(78, 'Dulce de pomarrosa', 'Se parten las pomarrosas en cascos y se botan las pepas. Se ponen a calar en un\r\nalmíbar liviano hecho con azúcar y agua, hasta que esté a su gusto.\r\n', 5, 4),
(82, 'Hervidos', 'Se pone el jugo de maracuyá o de piña al fuego, y cuando hierva se le agrega el aguardiente y se deja hervir por 3 minutos más. Se sirve caliente en tacitas.', 1, 5),
(83, 'Jugo de chontaduro', 'Se parten los chontaduros y se botan las pepas. Se licuan o se baten con\r\nel agua y el azúcar. Se sirve frío. (Opcional: se puede batir utilizando mitad leche y mitad agua).\r\n', 1, 5),
(85, 'Kumis', 'Se pone la leche a cuajar en una olla de barro curada, tapada con un lienzo, durante 2 o 3 días. Se revuelve y se pone el azúcar (o el melado). Se sirve frío, o, más comúnmente, a la temperatura ambiente. La olla no se lava, y se deja un poco de kumis que sirva como bacilo cuajador en una próxima preparación.\r\n', 1, 5),
(86, 'Caldo de carne batido', 'Se pone la carne con 4 tazas de agua y se bate con un molinillo (o se licua) hasta que quede casi disuelta. Se pone a fuego medio, batiendo el caldo constantemente hasta que hierva, unos 20 minutos. Se le agrega el resto del agua, el perejil, la cebolla, sal y pimienta, y se deja hervir de nuevo. Luego se retira del fuego, se deja reposar y se sirve.\r\n', 2, 5),
(91, 'Torta de chontaduro', 'Se echan todos los ingredientes en un recipiente, excepto la leche, que se añade al final, y se mezclan con la mano, se amasa bien y se pone en un molde enmantequillado al horno precalentado a 300°, por 20 minutos o más, hasta que pase la prueba del cuchillo.\r\n', 3, 5),
(93, 'Hígado', 'Se corta el hígado muy delgado, quitándole los pellejos y venas. Se pica en trozos, y se pone a marinar durante 20 minutos en una mezcla de vinagre, pimienta y cominos. Se calienta bien el aceite y se saltea el hígado hasta que se medio fríe por ambos lados. Se agregan la cebolla y los pimentones y se sigue salteando por 5 minutos más. Se revuelve procurando dejar el hígado por encima para que reciba menos calor. Se sala, se tapa por dos minutos y se sirve con arroz blanco. No se debe dejar\r\nfreír mucho para que no se endurezca, pero, si eso se quiere, basta con dejarlo tapado al final de la cocción por unos minutos más.\r\n', 4, 5),
(94, 'Arroz de leche', 'Se mezclan una botella (750 ml) de leche y otra de agua y se llevan al fuego. Se les\r\nagrega el arroz y se deja cocinar a fuego medio hasta que reviente. Se le añade la\r\notra botella y media de leche, el azúcar, la canela y las pasas, se baja a fuego lento, se revuelve constantemente hasta lograr el espeso deseado. Se agrega la pizca de sal y se revuelve. Se sirve caliente o frío.\r\n', 5, 5),
(99, 'Chicha de corozo', 'Se quiebran los corozos y se rebanan las pepas, y se ponen a cocinar en un litro\r\nde agua hasta que se ablanden (durante 1 hora aproximadamente). Se muelen o se\r\nlicuan. Aparte se ponen 3 panelas en 5 litros de agua y se cocinan hasta que se disuelvan, se revuelve el agua-panela con los corozos licuados y su jugo. Se pasa por un colador y se ponen en un ure con 2 panelas enteras a fermentar por 3 días (si se desea se le puede agregar 1 panela diaria) se conoce el punto adecuado de fermentación cuando la chicha parece hervir o formar ojos.\r\n', 1, 6),
(100, 'Fresco de ciruela cocota', 'Se baten con molinillo las ciruelas cocotas con un poco de agua, y se van sacando las pepas a medida que van quedando sin cáscara ni jugo. Una vez obtenida una colada, se pasa por un cernidor y se licua con los dos litros de agua, el azúcar y el hielo picado. También se puede licuar con leche y un poco de canela en polvo.', 1, 6),
(103, 'Arepa ocañera', 'Se lava bien el maíz y se pone a cocinar, que no quede demasiado blando (40 minutos aproximadamente). Se muele y se amasa bien con un poco de agua, debe quedar una masa muy suave. Se forman las arepas. Se pone al fuego un tiesto de barro. Una vez caliente se engrasa un poco, se ponen las arepas y se dejan asar por 10 segundos, se voltean y se dejan dorar. Se sacan y se ponen en una parrilla (o popularmente en la tapa de una caja de galletas) a asar por la otra cara. Esta se infla y se deja tostar\r\nun poco. Son las preferidas del ocañero, que las come con mantequilla y no deja de ponderarlas cuando tiene ocasión.\r\n', 3, 6),
(104, 'Arepa santandereana', 'Se muele finamente el maíz, a máquina, con los chicharrones y la yuca. Luego, en una artesa, se pone la masa y se le agrega poco a poco aguasal tibia, hasta obtener, amasando, una pasta suave y manejable. (El éxito de la arepa está en la paciencia para sobarla, operación que se hace por espacio de ½ hora seguida.) Se forman bolas medianas, de acuerdo con el tamaño que se quiera, y se disponen sobre un lienzo o un pedazo de plástico. Se hacen las arepas adelgazándolas con las puntas de los dedos hasta quedar con ½ dedo de espesor; si se desean más delgadas, se estiran más. Se ponen en un tiesto, engrasado y precalentado, a fuego lento para que no se arrebaten y para que se doren por ambos lados. Esta masa se utiliza también para las chorotas o para las sopladas, unas arepitas pequeñas, delgadas, que se ponen a freír en aceite muy caliente para que se inflen.\r\n', 3, 6),
(107, 'Bocadillo veleño', 'Se cocinan las guayabas por 15 minutos en el agua, se licuan, se pasan por un colador, y se les agrega el jugo de naranja. Se pone a fuego lento con el azúcar, rebullendo constantemente, hasta que deje los lados de la vasija y se recoja en el centro. Se pone en una vasija rectangular y, cuando esté frío, se parte en panelitas.\r\n', 5, 6),
(109, 'Guarapo costeño (agua de panela)', 'Se revuelve la panela en el agua hasta que quede disuelta y se le agrega el jugo de\r\nlimón.\r\n', 1, 7),
(110, 'Jugo de mango', 'Se pelan los mangos, se les corta la pulpa y se licuan con un poco de agua. Se cuelan\r\ny se les incorpora más agua y el azúcar. Se sirve con hielo picado o muy bien refrigerado.', 1, 7),
(111, 'Peto sinceano', 'Se pone a cocinar la leche y cuando esté caliente se le agrega la masa. Se deja cocinar a fuego lento por 30 minutos, revolviendo suavemente. Se le agrega el azúcar y la canela. Una vez diluido el azúcar, se sirve frío o, más frecuentemente, caliente. Es tan\r\npopular el peto entre los sucreños que hay numerosos vendedores ambulantes que\r\nlo ofrecen por las calles. Lo transportan en ollas con una hornilla de carbón adherida a la base, y lo venden a los transeúntes servido en vasitos.\r\n', 1, 7),
(112, 'Mote de queso', 'Se sofríen en el aceite todos los ingredientes del sofrito, revolviendo hasta lograr una salsa. Se pone a cocinar el ñame hasta que quede casi deshecho (45 minutos aproximadamente), se agregan el queso, el sofrito y las hojas de bleo de chupa; se deja a fuego medio por unos 10 minutos. Se agrega el suero y se cocina por 5 minutos más. Se sirve con arroz con coco y un poco de cebolla cabezona picada y sofrita, regada por encima con el jugo de limón incorporado.\r\n', 2, 7),
(115, 'Arroz con coco', 'Se pone el arroz a cocinar en la leche de coco con azúcar y sal, a fuego medio hasta\r\nque se empiece a secar, entonces se tapa y se deja a fuego muy lento para que acabe\r\nde secarse. Se usa para acompañar muchísimos platos.\r\n', 3, 7),
(116, 'Bollo de yuca', 'La yuca se pela y se cocina unos 20 minutos (que no quede muy blanda). Luego se muele con sal y se amasa, se envuelve en hojas de maíz, para formar los bollos, que se amarran y se ponen a cocinar en agua por ½ hora. Puede hacerse un bollo grande o varios más pequeños.\r\n', 3, 7),
(118, 'Butifarra', 'Se rellena la tripa con la carne de res, adobada en bastante pimienta y sal, mezclada con el tocino y bien amasada. Se hacen las bolitas, dividiendo la tripa al anudar con una cuerda. Se escaldan en agua hirviendo por 15 minutos y se dejan secar al sol por 3 horas. Luego se cuelgan a resecar al humo de leña por 4 horas.\r\n', 3, 7),
(119, 'Carimañolas', 'Se amasa bien la yuca con sal a gusto y se toman porciones del tamaño de un huevo,\r\nse presiona con el dedo pulgar en el centro y se pone el relleno de carne, se cierran y se ponen a freír en el aceite muy caliente hasta que se doren (se pueden rellenar también con queso costeño rallado o carne de pescado desmenuzada). A la masa de yuca se le puede agregar un poco de masa de maíz para evitar que al freír queden demasiado embebidas en aceite.\r\n', 3, 7),
(120, 'Bagre frito', 'Se adoban las rodajas con jugo de limón, sal y pimienta. Se dejan reposar 1 hora. Se baten los huevos, la harina y el perejil condimentados con un poco de sal y pimienta. Se rebozan las rodajas en el batido y se fríen en aceite hasta que se doren por ambos lados. Se sirven con papas fritas y arroz y se rocían con jugo de limón a gusto.\r\n\r\n', 4, 7),
(121, 'Mojarras fritas', 'Una vez limpias las mojarras, se rajan y se ponen a freír en aceite bien caliente hasta dorarlas por ambos lados, se salan, se perfuman con jugo de limón y se sirven. Se acompañan con yuca sudada y patacones.\r\n', 4, 7),
(122, 'Enyucado', 'Se pone la yuca rallada en una batea, se le agrega el coco rallado (se mezcla bien), luego los aliños de chocolate, el melado, el queso y la sal. Se amasa todo bien y se vierte en un molde previamente engrasado. Se lleva al horno precalentado a 350°, por 20 minutos, hasta que pase la prueba del cuchillo.\r\n', 4, 7),
(123, 'Boxeador', 'Se baten en la licuadora o con un molinillo todos los ingredientes menos el hielo, se prueba que esté bien de azúcar y se añade el hielo picado. Se sirve frío.\r\n\r\n', 1, 8),
(124, 'Candil', 'Se pone la leche a cocinar a fuego medio; cuando esté caliente se le agrega el azúcar (o panela) y se bate, adicionándole los huevos uno a uno, sin dejar de batir con el molinillo. Cuando quede cremosa, se sirve. Es muy popular tomarlo por placer o\r\ncomo medicina para curar resfríos.\r\n', 1, 8),
(127, 'Enmochilados', 'Se cortan los plátanos en tajadas al sesgo y se fríen en el aceite hasta dorar. Se sacan y se hacen emparedados con dos tajadas de plátano y una de queso en la mitad. Se rebozan en la mezcla de los huevos, harina y sal y se ponen a freír hasta que estén dorados.\r\n', 3, 8),
(131, 'Nochebuena', 'Se ponen los limones a desangrar en agua fresca, dentro de una paila de cobre, durante 2 días; el agua se les cambia cada tanto. Luego se sacan, se cortan en dos, se les extrae la pulpa, y se ponen a cocinar en la misma paila por 30 minutos. La papaya verde se pela, se corta en tajadas y se pasa por agua hirviendo para deslecharla, y\r\nluego se corta en tajadas delgadas. Las brevas se pasan por agua hirviendo, y se tajan en cruz por la parte gruesa, sin separarlas. Se prepara en la paila de cobre un melado con el agua y la panela. Se agregan todas las frutas y se dejan calar por 20 minutos, revolviendo con cuchara de palo. A las almojábanas se les abre un hueco en la mitad,\r\ny se rellena con pedazos de queso. Se ponen las almojábanas encima del melado por 5 minutos (que se derrita el queso o se sirve el queso aparte).\r\n', 5, 8),
(133, 'Sorbete de tomate de árbol', 'Se pelan los tomates y se ponen en agua hirviendo que los cubra, durante 5 minutos, y luego se bota el agua, pero se conserva una taza para licuar las frutas. Una vez licuada se agrega la leche y el azúcar, se bate a velocidad suave con un poco de hielo picado y se sirve.\r\n', 1, 9),
(135, 'Changua', 'Se ponen a hervir la leche y el agua, se le agregan la cebolla picada, el cilantro y la sal. Se deja hervir 10 minutos y se sirve. (Opcional: se le pone a cada porción al servir un\r\nhuevo crudo, cuidando de no reventar la yema, o se bate aparte el huevo y se incorpora al caldo poco a poco, revolviendo. También se puede agregar pan en trocitos). \r\n', 2, 9),
(138, 'Huevos pericos con mazorca', 'Se calientan el aceite y la mantequilla. En esta mezcla se sofríen los tomates, las cebollas y las mazorcas, revolviendo para que no se peguen. Se baten los huevos, se les agrega sal y pimienta, y se vierte sobre el sofrito. Se revuelve y se deja cuajar a gusto.', 3, 9),
(142, 'Ternera asada', 'Se abre el lomo dejándolo lo más delgado posible, se frota con sal, pimienta y la\r\ncebolla, se riega con la cerveza y se deja reposar por 1 hora. Se pone a asar a la brasa sobre una parrilla, a fuego lento, hasta que esté a su gusto. Se sirve con papas saladas.\r\n\r\n', 4, 9),
(143, 'Brevas en almibar', 'Se les hace un corte a las brevas por la parte gruesa, se cocinan en 4 tazas de agua, en olla a presión por 10 minutos (de pito) y se destapan. Se agregan el azúcar y 3 tazas más de agua y se dejan calar por 3 horas a fuego lento. Se les ponen unas gotas de limón y se sirven en dulceras una vez frías.\r\n', 5, 9),
(145, 'Dulce de feijoas', 'Se pone a hervir el agua con las feijoas y 4 cucharadas de azúcar a fuego lento. Se\r\nva agregando más azúcar a medida que se vaya conservando hasta que cale a gusto.\r\n\r\n', 5, 9),
(147, 'Postre de natas', 'Se pone a cocinar la leche, y se deja reposar tras cada hervida; se retiran las natas y se guardan. Se repite la operación hasta que no salgan más natas. Se prepara un almíbar con el azúcar y una taza del suero que queda de la leche. Se añaden las dos yemas, y se revuelven hasta que queden bien incorporadas; se le ponen las natas\r\nencima y se deja cocinar a fuego lento por unos minutos (sin revolver). No se debe tocar hasta que se enfríe. Se sirve en dulcera. Si resulta muy espeso puede agregarse más leche. También pueden adicionarse unas pasas en el momento de mezclar el almíbar y las natas.\r\n', 5, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(115) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`ID`, `Nombre`) VALUES
(2, 'Costa Pacífica '),
(3, 'Antioquia y Viejo Caldas'),
(4, 'Llanos y Amazonia'),
(5, 'Valle, Cauca y Nariño'),
(6, 'Santanderes'),
(7, 'Costa Atlántica '),
(8, 'Tolima y Huila'),
(9, 'Boyacá y Cundinamarca ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorías`
--
ALTER TABLE `categorías`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `productrecipes`
--
ALTER TABLE `productrecipes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Product_fk` (`Product_ID`),
  ADD KEY `Receta_fk` (`Receta_ID`);

--
-- Indices de la tabla `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Region_fk` (`Region_ID`),
  ADD KEY `Categoría_fk` (`Categoría_ID`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorías`
--
ALTER TABLE `categorías`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT de la tabla `productrecipes`
--
ALTER TABLE `productrecipes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT de la tabla `recipes`
--
ALTER TABLE `recipes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productrecipes`
--
ALTER TABLE `productrecipes`
  ADD CONSTRAINT `Product_fk` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`ID`),
  ADD CONSTRAINT `Receta_fk` FOREIGN KEY (`Receta_ID`) REFERENCES `recipes` (`ID`);

--
-- Filtros para la tabla `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `Categoría_fk` FOREIGN KEY (`Categoría_ID`) REFERENCES `categorías` (`ID`),
  ADD CONSTRAINT `Region_fk` FOREIGN KEY (`Region_ID`) REFERENCES `regiones` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
