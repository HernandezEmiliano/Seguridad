-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 16-05-2023 a las 05:05:56
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `salosnoc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envio`
--

CREATE TABLE `envio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `cod_postal` int(20) NOT NULL,
  `correo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `envio`
--

INSERT INTO `envio` (`id`, `nombre`, `apellidos`, `ciudad`, `estado`, `telefono`, `direccion`, `cod_postal`, `correo`) VALUES
(7, 'abraham', 'moreno', 'Aguascalientes', 'Aguascalientes', 449222278, 'Av. Tecnologico y Lopez Mateos', 20060, 'abrahamdaft@gmail.com'),
(8, 'Emiliano', 'Rodriguez', 'Aguascalientes', 'Aguascalientes', 2147483647, 'Av. Tecnologico y Lopez Mateos', 20050, 'guez.emilio92@gmail.co'),
(9, 'Emiliano', 'Rodriguez', 'Aguascalientes', 'Aguascalientes', 2147483647, 'Av. Tecnologico y Lopez Mateos', 20050, 'paulodybalaa.2599@gmail.com'),
(10, 'Emiliano', 'Rodriguez', 'Aguascalientes', 'Aguascalientes', 2147483647, 'Av. Tecnologico y Lopez Mateos', 20050, 'jesusandradesustaita@gmail.com'),
(11, 'Emiliano', 'Rodriguez', 'Aguascalientes', 'Aguascalientes', 2147483647, 'Av. Tecnologico y Lopez Mateos', 20050, 'jesusandradesustaita@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `usu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `correo`, `pass`, `usu`) VALUES
(2, 'guez.emilio92@gmail.com', 'Administrador%', 'Admin'),
(7, 'ponce@gmail.com', '1301ale$', 'ponces'),
(8, 'abrahamdaft@gmail.com', '7778', 'abrahams'),
(10, 'alee@gmail.com', 'asdf', 'Ale');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldetalleventa`
--

CREATE TABLE `tbldetalleventa` (
  `ID` int(11) NOT NULL,
  `IDVENTA` int(11) NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `PRECIOUNITARIO` decimal(20,2) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `DESCARGADO` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbldetalleventa`
--

INSERT INTO `tbldetalleventa` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) VALUES
(1, 6, 1, '1000.00', 1, 0),
(2, 6, 5, '599.00', 1, 0),
(3, 7, 1, '1000.00', 1, 0),
(4, 8, 1, '1000.00', 1, 0),
(5, 9, 1, '1000.00', 1, 0),
(6, 10, 1, '1000.00', 1, 0),
(7, 11, 1, '1000.00', 1, 0),
(8, 12, 1, '1000.00', 1, 0),
(9, 12, 3, '5000.00', 1, 0),
(10, 13, 7, '1300.00', 1, 0),
(11, 13, 5, '599.00', 1, 0),
(12, 13, 3, '5000.00', 1, 0),
(13, 13, 1, '1000.00', 1, 0),
(14, 14, 3, '5000.00', 1, 0),
(15, 15, 3, '5000.00', 1, 0),
(16, 16, 3, '5000.00', 1, 0),
(17, 17, 1, '1000.00', 1, 0),
(18, 18, 1, '1000.00', 1, 0),
(19, 18, 3, '5000.00', 1, 0),
(20, 19, 1, '1000.00', 1, 0),
(21, 19, 3, '5000.00', 1, 0),
(22, 20, 1, '1000.00', 1, 0),
(23, 20, 3, '5000.00', 1, 0),
(24, 21, 5, '599.00', 1, 0),
(25, 22, 5, '599.00', 1, 0),
(26, 22, 3, '5000.00', 1, 0),
(27, 23, 7, '1300.00', 1, 0),
(29, 23, 1, '1000.00', 1, 0),
(30, 23, 3, '5000.00', 1, 0),
(31, 23, 5, '599.00', 1, 0),
(32, 23, 9, '899.00', 1, 0),
(34, 24, 1, '1000.00', 1, 0),
(35, 24, 5, '599.00', 1, 0),
(36, 24, 9, '899.00', 1, 0),
(37, 24, 3, '5000.00', 1, 0),
(38, 25, 21, '600.00', 1, 0),
(39, 25, 22, '600.00', 1, 0),
(40, 26, 36, '3999.00', 1, 0),
(41, 26, 11, '1799.00', 1, 0),
(42, 26, 31, '631.00', 1, 0),
(43, 27, 5, '599.00', 1, 0),
(44, 27, 7, '1300.00', 1, 0),
(45, 28, 5, '599.00', 1, 0),
(46, 28, 7, '1300.00', 1, 0),
(47, 28, 3, '5000.00', 1, 0),
(48, 28, 1, '1000.00', 1, 0),
(49, 28, 19, '1532.00', 1, 0),
(50, 28, 11, '1799.00', 1, 0),
(51, 28, 15, '1499.00', 1, 0),
(52, 28, 27, '599.00', 1, 0),
(53, 28, 23, '1070.00', 1, 0),
(54, 28, 13, '1799.00', 1, 0),
(55, 29, 19, '1532.00', 1, 0),
(56, 30, 1, '1000.00', 1, 0),
(57, 31, 3, '5000.00', 1, 0),
(58, 32, 3, '5000.00', 1, 0),
(59, 33, 3, '5000.00', 1, 0),
(60, 34, 3, '5000.00', 1, 0),
(61, 35, 3, '5000.00', 1, 0),
(62, 36, 3, '5000.00', 1, 0),
(63, 37, 3, '5000.00', 1, 0),
(64, 38, 3, '5000.00', 1, 0),
(65, 39, 3, '5000.00', 1, 0),
(66, 40, 3, '5000.00', 1, 0),
(67, 41, 3, '5000.00', 1, 0),
(68, 42, 3, '5000.00', 1, 0),
(69, 43, 3, '5000.00', 1, 0),
(70, 44, 3, '5000.00', 1, 0),
(71, 45, 3, '5000.00', 1, 0),
(72, 46, 3, '5000.00', 1, 0),
(73, 47, 13, '1799.00', 1, 0),
(74, 48, 13, '1799.00', 1, 0),
(75, 49, 13, '1799.00', 1, 0),
(76, 50, 13, '1799.00', 1, 0),
(77, 51, 13, '1799.00', 1, 0),
(78, 52, 13, '1799.00', 1, 0),
(79, 53, 13, '1799.00', 1, 0),
(80, 54, 13, '1799.00', 1, 0),
(81, 55, 13, '1799.00', 1, 0),
(82, 56, 13, '1799.00', 1, 0),
(83, 57, 13, '1799.00', 1, 0),
(84, 58, 13, '1799.00', 1, 0),
(85, 59, 13, '1799.00', 1, 0),
(86, 60, 13, '1799.00', 1, 0),
(87, 61, 13, '1799.00', 1, 0),
(88, 62, 13, '1799.00', 1, 0),
(89, 63, 13, '1799.00', 1, 0),
(90, 64, 13, '1799.00', 1, 0),
(91, 65, 13, '1799.00', 1, 0),
(92, 66, 13, '1799.00', 1, 0),
(93, 67, 13, '1799.00', 1, 0),
(94, 68, 13, '1799.00', 1, 0),
(95, 69, 15, '1499.00', 1, 0),
(96, 69, 13, '1799.00', 1, 0),
(97, 70, 15, '1499.00', 1, 0),
(98, 70, 13, '1799.00', 1, 0),
(99, 71, 15, '1499.00', 1, 0),
(100, 71, 13, '1799.00', 1, 0),
(101, 72, 15, '1499.00', 1, 0),
(102, 72, 13, '1799.00', 1, 0),
(103, 73, 15, '1499.00', 1, 0),
(104, 73, 13, '1799.00', 1, 0),
(105, 74, 15, '1499.00', 1, 0),
(106, 74, 13, '1799.00', 1, 0),
(107, 75, 15, '1499.00', 1, 0),
(108, 75, 13, '1799.00', 1, 0),
(109, 76, 15, '1499.00', 1, 0),
(110, 76, 13, '1799.00', 1, 0),
(111, 76, 11, '1799.00', 1, 0),
(112, 77, 15, '1499.00', 1, 0),
(113, 77, 13, '1799.00', 1, 0),
(114, 77, 11, '1799.00', 1, 0),
(115, 78, 15, '1499.00', 1, 0),
(116, 78, 13, '1799.00', 1, 0),
(117, 78, 11, '1799.00', 1, 0),
(118, 79, 15, '1499.00', 1, 0),
(119, 79, 13, '1799.00', 1, 0),
(120, 79, 11, '1799.00', 1, 0),
(121, 80, 15, '1499.00', 1, 0),
(122, 80, 13, '1799.00', 1, 0),
(123, 80, 11, '1799.00', 1, 0),
(124, 81, 11, '1799.00', 1, 0),
(125, 81, 9, '899.00', 1, 0),
(126, 82, 11, '1799.00', 1, 0),
(127, 82, 9, '899.00', 1, 0),
(128, 83, 11, '1799.00', 1, 0),
(129, 83, 9, '899.00', 1, 0),
(130, 84, 11, '1799.00', 1, 0),
(131, 84, 9, '899.00', 1, 0),
(132, 85, 11, '1799.00', 1, 0),
(133, 85, 9, '899.00', 1, 0),
(134, 86, 11, '1799.00', 1, 0),
(135, 86, 9, '899.00', 1, 0),
(136, 87, 11, '1799.00', 1, 0),
(137, 87, 9, '899.00', 1, 0),
(138, 88, 11, '1799.00', 1, 0),
(139, 88, 9, '899.00', 1, 0),
(140, 89, 11, '1799.00', 1, 0),
(141, 89, 9, '899.00', 1, 0),
(142, 90, 11, '1799.00', 1, 0),
(143, 90, 9, '899.00', 1, 0),
(144, 91, 11, '1799.00', 1, 0),
(145, 91, 9, '899.00', 1, 0),
(146, 92, 11, '1799.00', 1, 0),
(147, 92, 9, '899.00', 1, 0),
(148, 93, 11, '1799.00', 1, 0),
(149, 93, 9, '899.00', 1, 0),
(150, 94, 11, '1799.00', 1, 0),
(151, 94, 9, '899.00', 1, 0),
(152, 95, 11, '1799.00', 1, 0),
(153, 95, 9, '899.00', 1, 0),
(154, 96, 11, '1799.00', 1, 0),
(155, 96, 9, '899.00', 1, 0),
(156, 97, 11, '1799.00', 1, 0),
(157, 97, 9, '899.00', 1, 0),
(158, 97, 18, '1690.00', 1, 0),
(159, 98, 11, '1799.00', 1, 0),
(160, 98, 9, '899.00', 1, 0),
(161, 98, 18, '1690.00', 1, 0),
(162, 99, 11, '1799.00', 1, 0),
(163, 99, 9, '899.00', 1, 0),
(164, 99, 18, '1690.00', 1, 0),
(165, 99, 51, '1700.00', 1, 0),
(166, 99, 49, '800.00', 1, 0),
(167, 100, 19, '1532.00', 1, 0),
(168, 101, 19, '1532.00', 1, 0),
(169, 102, 19, '1532.00', 1, 0),
(170, 103, 19, '1532.00', 1, 0),
(171, 104, 18, '1690.00', 1, 0),
(172, 105, 18, '1690.00', 1, 0),
(173, 106, 18, '1690.00', 1, 0),
(174, 107, 18, '1690.00', 1, 0),
(175, 108, 19, '1532.00', 1, 0),
(176, 109, 19, '1532.00', 1, 0),
(177, 110, 13, '1799.00', 1, 0),
(178, 111, 23, '1070.00', 1, 0),
(179, 112, 21, '600.00', 1, 0),
(180, 113, 31, '631.00', 1, 0),
(181, 114, 31, '631.00', 1, 0),
(182, 115, 31, '631.00', 1, 0),
(183, 116, 39, '6999.00', 1, 0),
(184, 117, 23, '1070.00', 1, 0),
(185, 118, 30, '300.00', 1, 0),
(186, 118, 29, '1029.00', 1, 0),
(187, 119, 30, '300.00', 1, 0),
(188, 119, 29, '1029.00', 1, 0),
(189, 120, 29, '1029.00', 1, 0),
(190, 121, 13, '1799.00', 1, 0),
(191, 122, 13, '1799.00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproductos`
--

CREATE TABLE `tblproductos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(20,2) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblproductos`
--

INSERT INTO `tblproductos` (`ID`, `Nombre`, `Precio`, `Descripcion`, `Imagen`) VALUES
(1, 'Control de PlayStation 5 ', '1000.00', 'Es un control bastante resistente', 'https://images-na.ssl-images-amazon.com/images/I/41ih-c4lfVL._SX600_.jpg'),
(3, 'Consola-Xbox Series s', '5000.00', 'Los juegos creados con el kit de desarrollo de Xbox Series X|S cuentan con tiempos de carga significativamente reducidos y gráficos impresionantes de hasta 120 FPS', 'https://assets.xboxservices.com/assets/0b/28/0b2854b9-a7e7-47dd-b4f8-a371567854b2.png?n=Xbox-Series-S_Buy-Box_0_01_829x799.png'),
(5, 'Control PlayStation 4', '599.00', 'El tacto, la forma, y la sensibilidad de los sticks analógicos del DualShock 4 y botones de disparo se han mejorado para ofrecer a los jugadores un control absoluto de todos los juegos en PlayStation 4', 'https://tec.com.pe/wp-content/uploads/2017/09/dualshock-4-colores-hero.png'),
(7, 'Joy-Con Controller', '1300.00', 'El agarre del controlador para Nintendo Switch amplía las posibilidades en juegos para Nintendo Switch, al permitir más control y una experiencia de juego tradicional con un control remoto estándar', 'https://m.media-amazon.com/images/I/71NV13KNp-L.jpg'),
(9, 'Control Xbox', '899.00', 'Control inalambrico', 'https://assets.xboxservices.com/assets/2c/44/2c447194-4bb5-4f38-8f6c-200b1cb2a557.jpg?n=7311043_Gallery-0_3_1350x759.jpg'),
(11, 'Lunar Shift Special \r\nEdition- Xbox', '1799.00', 'Desata el surrealismo con el Control inalámbrico Xbox: Edición especial Lunar Shift, con cambio de colores, centelleo plateado y oro, y agarres de goma con remolinos en negro y gris. Mantén el objetivo con agarre texturizado en los gatillos, botones superiores y funda trasera.', 'https://assets.xboxservices.com/assets/1b/14/1b147736-b3bb-426e-803f-dd5176ed23fb.jpg?n=999644_Feature-Image-Priority-0_1040x867.jpg'),
(13, 'Especial camuflaje mineral-Xbox', '1799.00', 'Disfruta del Control inalámbrico Xbox: Edición especial camuflaje mineral, con superficies esculpidas y una geometría refinada para una mayor comodidad durante el juego. Mantén el objetivo con un pad direccional híbrido y agarre texturizado en los gatillos, botones y funda trasera. Captura y comparte contenido sin problemas con un botón Compartir dedicado. Empareja rápidamente, juega y cambia entre dispositivos como Xbox Series X|S, PC Windows, Android e iOS', 'https://assets.xboxservices.com/assets/11/f5/11f53b90-883b-4267-a211-5f0beb21caba.jpg?n=Accessories-Hub_Content-Placement-0_238495_788x444.jpg'),
(15, 'Especial Aqua Shift-Xbox', '1499.00', 'Incluye tecnología inalámbrica de Xbox y Bluetooth® para juegos inalámbricos en consolas, PC, celulares y tabletas compatibles.* Conecta cualquier auricular compatible en el conector para auriculares estéreo de 3,5 mm', 'https://compass-ssl.xbox.com/assets/39/34/3934b7f4-c2cf-46b8-92ab-714e6e0d8c99.jpg?n=Accessories-Hub_Content-Placement-0_1029384_788x444.jpg'),
(17, '', '0.00', '', ''),
(18, 'Gris camuflaje-PS5', '1690.00', 'Aporta una estética fresca a tus juegos con el mando inalámbrico DualSense gris camuflaje, con patrones únicos de las icónicas formas de PlayStation.', 'https://gmedia.playstation.com/is/image/SIEPDC/dualsense-gray-camo-screenshot-01-en-13sep22?$1600px--t$'),
(19, 'DualShock 4-PS4', '1532.00', 'Sensor altamente sensible de seis ejes, panel táctil ubicado en la parte superior del control', 'https://gmedia.playstation.com/is/image/SIEPDC/ps4-accessories-ds4-jet-black-screen-01-en-28oct20?$1600px$'),
(21, 'Dualshock 3-PS3', '600.00', 'Siente cada golpe, choque y explosión con respuesta DUALSHOCK vibratoria a mano, juego verdaderamente intuitivo a través de la tecnología SIXAXIS de detección de movimiento', 'https://m.media-amazon.com/images/I/61nyaUEzFlL._SX522_.jpg'),
(22, 'Control-PS2', '555.00', 'Todas las funciones que necesitas para tomar el control total de tu juego de PS2.\r\nTecnología inalámbrica de 2.4 GHz', 'https://i.linio.com/p/62bc9de038bb3dde82449b2f45933c16-product.jpg'),
(23, 'Joy Con- Switch', '1070.00', 'Nuestro controlador inalámbrico es totalmente compatible con Nintendo Switch/Lite/OLED. La señal es estable, sin demora ni deriva, un reemplazo ideal para Switch JoyCon.', 'https://m.media-amazon.com/images/I/61QgWNSXiUL._AC_SX466_.jpg'),
(24, 'Joy Con Standard Edition- Switch', '1600.00', 'Diseño liviano y ergonómico para un juego cómodo; Empuñaduras de goma con doble inyección, accesorio oficial para Nintendo Switch.', 'https://m.media-amazon.com/images/I/51VEimVu9QL._AC_SX522_.jpg'),
(26, 'JoyCon Neon Green-Switch', '1200.00', 'Compatible con todos los sistemas de conmutación. El mejor controlador de interruptor alternativo para juegos de Switch.', 'https://m.media-amazon.com/images/I/41QGDUO-jLL._AC_SX466_.jpg'),
(27, 'Controlador inalámbrico Bluetooth-Switch', '599.00', 'Compatible con todos los sistemas de conmutación. El mejor controlador de interruptor alternativo para juegos de Switch.', 'https://m.media-amazon.com/images/I/61Ij8lJofyL._AC_SX466_.jpg'),
(28, 'God of War Ragnarök-Games', '1529.00', 'Kratos y Atreus se aventuran en cada uno de los nueve reinos en busca de respuestas mientras las fuerzas de Asgard se preparan para la guerra', 'https://m.media-amazon.com/images/I/81fBLI9vSQL._AC_SX466_.jpg'),
(29, 'SpiderMan Miles Morales-Games', '1029.00', 'El ascenso de Miles Morales Miles Morales descubre poderes explosivos que lo diferencian de su mentor, Peter Parker', 'https://m.media-amazon.com/images/I/71vgVwCEMUS._AC_SX385_.jpg'),
(30, 'Battlefield 2042-Games', '300.00', 'Un mundo transformado por el desorden En 2042, varios eventos climáticos extremos y conflictos por recursos cambiaron el equilibrio del poder mundial. Estados Unidos y Rusia están al borde de la guerra', 'https://m.media-amazon.com/images/I/81LXqnPi9aL._AC_SX466_.jpg'),
(31, 'Call of Duty Vanguard-Games', '631.00', ' través de una campaña para un solo jugador profundamente atractiva, un grupo selecto de soldados de diferentes países se levanta para hacer frente a la grave amenaza del mundo', 'https://m.media-amazon.com/images/I/71H2kx9wTqL._AC_SX342_.jpg'),
(32, 'Mario Kart 8 Deluxe-Games', '999.00', 'Los populares circuitos y personajes de la versión de Wii U están de vuelta, junto a los circuitos y personajes descargables, y además se unen a la parrilla personajes nuevos: Inkling chico e Inkling chica, de Splatoon; el Rey Boo; Huesitos y Bowsy', 'https://m.media-amazon.com/images/I/71zMv5+rx5S._AC_SY445_.jpg'),
(33, 'Super Mario 3D World-Games', '1148.00', 'Mario (y sus amigos) podrán utilizar mejoras como la supercampana, la cual te concede habilidades similares a las de un gato, como la habilidad de escalar o de rasguñar', 'https://m.media-amazon.com/images/I/71YY9q62EyS._AC_SY445_.jpg'),
(34, 'Audífonos Gamer-Accesorios', '399.00', 'Conecte y use, no necesita controlador. Admite PlayStation 4, Nueva Xbox One, PC, Nintendo 3DS, Ordenador portátil, PSP, Tableta, iPad, Teléfono Móvil.', 'https://m.media-amazon.com/images/I/61ThgSaAfqL._AC_SY450_.jpg'),
(35, 'Audífonos Gamers G25-Accesorios', '299.00', 'tus audífonos G25 cuentan con dos pares de celdas de sonido intercambiables que te brindarán una experiencia de juego inigualable gracias a que te permiten cambiar la transmisión de sonido, ya sea en juegos de disparos o escuchando música en alta fidelidad', 'https://m.media-amazon.com/images/I/61u2HfR-bpL._AC_SY450_.jpg'),
(36, 'Volante/Pedales de Carreras-Accesorios', '3999.00', ' El volante G29 se ha diseñado para los juegos de carreras más recientes para PlayStation 5, PlayStation 4, PlayStation 3. G29 Driving Force también se puede usar en PC con Logitech Gaming Software', 'https://m.media-amazon.com/images/I/61IYYoZ66VL._AC_SX466_.jpg'),
(37, 'Palanca de Cambios-Accesorios', '739.00', 'Palanca de cambios duradera de acero sólido y funda de cuero cosida a mano y cubierta de perilla y seis velocidades con marcha atrás empujada hacia abajo', 'https://m.media-amazon.com/images/I/51D3-2lQu7L._AC_SX679_.jpg'),
(38, 'PS3-Consola', '4000.00', 'Procesador IBM Cell y un procesador gráfico NVIDIA codesarrollado\r\nPlayStation 3 utiliza el formato de medios de disco Blu-ray\r\nFunción HDMI + Bravia Synch', 'https://t.ctcdn.com.br/bIel4pEkOApNOKDlrtiespt_j3Y=/fit-in/400x400/filters:format(webp):fill(transparent):watermark(wm/prd.png,-32p,center,1,none,15)/i413206.png'),
(39, 'PS4-Consola', '6999.00', 'Una consola más delgada y ligera con aspecto elegante y llena de verdadera PlayStation de cuatro potencias; las imágenes son más realistas, sorprendentemente vívidas y verdaderas a lo que el ojo humano ve en el mundo real', 'https://images.pcel.com/mp/Electronica-Consolas-Sony-3004188-338532-E1hg9825qWlxDwka.jpg'),
(40, 'PS2-Consola', '1150.00', '2 memory card slots\r\nDiseño ultradelgado de 2,8 cm, con la mitad del peso de la PS2 original: tiene aproximadamente el tamaño y el peso de un libro de tapa dura', 'https://s2.abcstatics.com/media/tecnologia/2020/03/04/playstation-2-kWwB--620x349@abc.jpg'),
(41, 'PS5-Consola', '13000.00', 'La PS5 Edición Digital es la versión del PS5 sin unidad lectora de discos\r\nInmersión impresionante: Descubre una experiencia de juego más inmersiva con soporte para retroalimentación háptica, gatillos adaptables y tecnología de audio en 3D.', 'https://cdn.gameplanet.com/wp-content/uploads/2022/09/03153842/ps5_1_1.jpg'),
(42, 'Consola-Xbox 360', '2500.00', 'Disco duro de 250 GB\r\nWi-Fi integrado\r\n1 controlador inalámbrico negro', 'https://http2.mlstatic.com/D_NQ_NP_956412-MLA32731207928_112019-O.jpg'),
(43, 'Consola-Xbox one', '12699.00', 'La consola Xbox Series S, totalmente digital, ofrece juegos de próxima generación a un precio accesible.\r\nJuega miles de títulos de cuatro generaciones de Xbox con compatibilidad con versiones anteriores, incluidos títulos optimizados con el lanzamiento.', 'https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:good/mg/images/categorias/d-videojuegos/f-videojuegos-xbox-one/l-xbox-one-consolas.jpg'),
(44, 'Control-360 Xbox', '450.00', 'Nuestro controlador inalámbrico Xbox 360 es compatible con Xbox 360 y la mayoría de PC con sistema Windows 7/8/10. Pero no es original y no es compatible con Xbox One. Ofrece una experiencia de juego consistente y universal. (Nota: el trabajo en PC requiere un adaptador adicional, pero no está incluido)', 'https://http2.mlstatic.com/D_NQ_NP_992226-MLA32150410862_092019-O.jpg'),
(45, 'Consola-Switch', '7890.00', 'Presentamos Nintendo Switch, el nuevo sistema de videojuego para el hogar de Nintendo; además de proporcionar emociones únicas y multijugador en casa, el sistema Nintendo Switch se puede llevar mientras viaja para que los jugadores puedan disfrutar de una experiencia de consola completa en cualquier momento y en cualquier lugar', 'https://resources.claroshop.com/medios-plazavip/fotos/productos_sears1/original/2977765.jpg'),
(46, 'Consola-Switch lite', '4700.00', 'La consola Nintendo Switch Lite es una consola Nintendo Switch pequeña y ligera a un gran precio.\r\nUna nueva versión de la Consola Nintendo Switch que está optimizada para el juego personal y portátil.', 'https://cdn.gameplanet.com/wp-content/uploads/2022/09/04000648/sl_3_2.jpg'),
(47, 'Guitar Hero-Accesorios', '1540.00', 'Guitarra Gibson inalámbrica Guitar Hero\r\nGuitarra Gibson inalámbrica Xbox 360 Guitar Hero', 'https://http2.mlstatic.com/D_NQ_NP_742139-MLM50266136102_062022-O.jpg'),
(48, 'Grand Theft Auto:San Andreas-Games', '6100.00', 'Conduce a través del entorno de GTA más grande de la historia: el juego tiene tres ciudades que los jugadores pueden explorar, para un área de juego 5 veces más grande que Vice City.\r\nRobar vehículos nuevos, incluidas bicicletas.', 'https://m.media-amazon.com/images/I/61N9DX5CRKL._AC_.jpg'),
(49, 'Midnight Club 3-Games', '800.00', 'Carreras, modifica tu carro a tu personalizacion', 'https://m.media-amazon.com/images/I/81Xr9xzVG+L._AC_SY741_.jpg'),
(50, 'FIFA 19-Games', '1999.00', 'Juega en la cima del fútbol de clubes en una variedad de modos en FIFA 19\r\nDesarrollado por Frostbite, EA Sports FIFA 19 ofrece una experiencia de calibre de campeón dentro y fuera del campo de juego', 'https://m.media-amazon.com/images/I/81urqNqILyL._AC_SY679_.jpg'),
(51, 'Nba 2k21-Games', '1700.00', 'NBA 2K se ha convertido en mucho más que una simulación de baloncesto.\r\nK continúa redefiniendo lo que es posible en los juegos deportivos con NBA 2K20, que presenta los mejores gráficos y jugabilidad de su clase, modos de juego innovadores y un control y personalización sin precedentes del jugador. ', 'https://www.pyrusmarket.com/wp-content/uploads/2021/02/71dMcqvTh8L._SL1500_.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblventas`
--

CREATE TABLE `tblventas` (
  `ID` int(11) NOT NULL,
  `ClaveTransaccion` varchar(250) NOT NULL,
  `PaypalDatos` text NOT NULL,
  `Fecha` datetime NOT NULL,
  `Correo` varchar(5000) NOT NULL,
  `Total` decimal(60,2) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblventas`
--

INSERT INTO `tblventas` (`ID`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `status`) VALUES
(1, '12345678910', '', '2022-11-09 03:24:57', 'hernandez@gmail.com', '700.00', 'pendiente'),
(2, '12345678910', '', '2022-11-09 03:24:57', 'hernandez@gmail.com', '700.00', 'pendiente'),
(3, 'ig8kj69b6t2fmodqc1gh2vk41t', '', '2022-11-08 21:09:52', 'herna@gmail.com', '7899.00', 'pendiente'),
(4, 'ig8kj69b6t2fmodqc1gh2vk41t', '', '2022-11-08 21:15:50', 'alex@gmail.com', '2899.00', 'pendiente'),
(5, 'ig8kj69b6t2fmodqc1gh2vk41t', '', '2022-11-08 21:46:04', 'guez.emilio92@gmail.com', '2899.00', 'pendiente'),
(6, 'ig8kj69b6t2fmodqc1gh2vk41t', '', '2022-11-08 21:49:40', 'guez.emilio92@gmail.com', '1599.00', 'pendiente'),
(7, 'ig8kj69b6t2fmodqc1gh2vk41t', '', '2022-11-09 19:54:14', 'emilio92@gmail.com', '1000.00', 'pendiente'),
(8, 'ig8kj69b6t2fmodqc1gh2vk41t', '', '2022-11-09 19:55:22', 'emilio92@gmail.com', '1000.00', 'pendiente'),
(9, 'ig8kj69b6t2fmodqc1gh2vk41t', '', '2022-11-09 20:06:49', 'emilio92@gmail.com', '1000.00', 'pendiente'),
(10, 'ig8kj69b6t2fmodqc1gh2vk41t', '', '2022-11-09 20:16:32', 'emilio92@gmail.com', '1000.00', 'pendiente'),
(11, 'ig8kj69b6t2fmodqc1gh2vk41t', '', '2022-11-09 20:18:18', 'emilio92@gmail.com', '1000.00', 'pendiente'),
(12, 'ig8kj69b6t2fmodqc1gh2vk41t', '', '2022-11-09 20:18:41', 'guez.emilio92@gmail.com', '6000.00', 'pendiente'),
(13, 'b8d9ag6ie8jp2enc37pp8hm8q2', '', '2022-11-10 19:31:15', 'guez.emilio92@gmail.com', '7899.00', 'pendiente'),
(14, 'pt83n3mcrm4ovpa81h4thcrqda', '', '2022-11-11 14:14:37', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(15, 'pt83n3mcrm4ovpa81h4thcrqda', '', '2022-11-11 14:14:46', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(16, 'pt83n3mcrm4ovpa81h4thcrqda', '', '2022-11-11 14:15:05', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(17, 'pt83n3mcrm4ovpa81h4thcrqda', '', '2022-11-11 14:15:29', 'guez.emilio92@gmail.com', '1000.00', 'pendiente'),
(18, 'pt83n3mcrm4ovpa81h4thcrqda', '', '2022-11-11 14:16:27', 'guez.em@gmail.com', '6000.00', 'pendiente'),
(19, 'pt83n3mcrm4ovpa81h4thcrqda', '', '2022-11-11 14:17:16', 'guez.emilio92@gmail.com', '6000.00', 'pendiente'),
(20, 'pt83n3mcrm4ovpa81h4thcrqda', '', '2022-11-11 14:47:14', 'guez.emilio92@gmail.com', '6000.00', 'pendiente'),
(21, 'pt83n3mcrm4ovpa81h4thcrqda', '', '2022-11-11 18:44:05', 'guez.emilio92@gmail.com', '599.00', 'pendiente'),
(22, 'pt83n3mcrm4ovpa81h4thcrqda', '', '2022-11-11 19:13:36', 'guez.emilio92@gmail.com', '5599.00', 'pendiente'),
(23, 'cc1pbjlpfgvl0df4abs5e0g1o1', '', '2022-11-16 10:57:16', 'guez.emilio92@gmail.com', '9697.00', 'pendiente'),
(24, 'cc1pbjlpfgvl0df4abs5e0g1o1', '', '2022-11-16 11:28:06', 'guez.emilio92@gmail.com', '8397.00', 'pendiente'),
(25, '9r14sdd04bo4po23pto5vbcoqb', '', '2022-12-05 19:56:44', 'guez.emilio92@gmail.com', '1200.00', 'pendiente'),
(26, '9r14sdd04bo4po23pto5vbcoqb', '', '2022-12-05 20:07:00', 'guez.emilio92@gmail.com', '6429.00', 'pendiente'),
(27, 'qb489hdavhvmdr31t3iupialnq', '', '2022-12-07 21:12:56', 'guez.emilio92@gmail.com', '1899.00', 'pendiente'),
(28, 'qb489hdavhvmdr31t3iupialnq', '', '2022-12-08 14:13:35', 'guez.emilio92@gmail.com', '16197.00', 'pendiente'),
(29, 'oojc3bpnmqbp1ekvghsqbj5eh3', '', '2022-12-08 22:13:11', 'guez.emilio92@gmail.com', '1532.00', 'pendiente'),
(30, 'oojc3bpnmqbp1ekvghsqbj5eh3', '', '2022-12-10 10:48:03', 'guez.emilio92@gmail.com', '1000.00', 'pendiente'),
(31, 'mneqfbck3p3tf17pohcbe02lcg', '', '2022-12-10 11:03:31', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(32, 'mneqfbck3p3tf17pohcbe02lcg', '', '2022-12-10 11:03:57', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(33, 'mneqfbck3p3tf17pohcbe02lcg', '', '2022-12-10 11:05:02', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(34, 'mneqfbck3p3tf17pohcbe02lcg', '', '2022-12-10 11:05:29', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(35, 'mneqfbck3p3tf17pohcbe02lcg', '', '2022-12-10 11:05:39', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(36, 'mneqfbck3p3tf17pohcbe02lcg', '', '2022-12-10 11:06:15', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(37, 'mneqfbck3p3tf17pohcbe02lcg', '', '2022-12-10 11:07:19', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(38, 'mneqfbck3p3tf17pohcbe02lcg', '', '2022-12-10 11:08:24', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(39, 'mneqfbck3p3tf17pohcbe02lcg', '', '2022-12-10 11:08:37', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(40, 'mneqfbck3p3tf17pohcbe02lcg', '', '2022-12-10 11:09:50', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(41, 'mneqfbck3p3tf17pohcbe02lcg', '', '2022-12-10 11:14:13', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(42, 'mneqfbck3p3tf17pohcbe02lcg', '', '2022-12-10 11:20:28', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(43, 'mneqfbck3p3tf17pohcbe02lcg', '', '2022-12-10 11:22:19', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(44, 'mneqfbck3p3tf17pohcbe02lcg', '', '2022-12-10 11:22:38', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(45, 'mneqfbck3p3tf17pohcbe02lcg', '', '2022-12-10 11:22:54', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(46, 'mneqfbck3p3tf17pohcbe02lcg', '', '2022-12-10 16:04:54', 'guez.emilio92@gmail.com', '5000.00', 'pendiente'),
(47, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 16:08:03', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(48, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:05:35', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(49, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:06:06', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(50, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:16:33', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(51, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:16:59', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(52, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:17:44', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(53, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:18:25', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(54, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:19:25', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(55, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:20:07', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(56, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:20:31', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(57, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:21:07', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(58, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:21:42', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(59, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:40:55', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(60, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:41:18', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(61, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:46:15', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(62, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:49:34', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(63, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:50:14', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(64, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:51:18', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(65, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:56:31', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(66, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:57:49', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(67, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 18:58:04', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(68, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 19:00:03', 'guez.emilio92@gmail.com', '1799.00', 'pendiente'),
(69, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 19:05:27', 'guez.emilio92@gmail.com', '3298.00', 'pendiente'),
(70, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 19:08:16', 'guez.emilio92@gmail.com', '3298.00', 'pendiente'),
(71, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 19:09:10', 'guez.emilio92@gmail.com', '3298.00', 'pendiente'),
(72, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 19:12:21', 'guez.emilio92@gmail.com', '3298.00', 'pendiente'),
(73, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 19:14:28', 'guez.emilio92@gmail.com', '3298.00', 'pendiente'),
(74, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 19:19:49', 'guez.emilio92@gmail.com', '3298.00', 'pendiente'),
(75, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 19:21:32', '', '3298.00', 'pendiente'),
(76, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 21:52:44', '', '5097.00', 'pendiente'),
(77, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 21:56:48', '', '5097.00', 'pendiente'),
(78, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:02:19', '', '5097.00', 'pendiente'),
(79, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:10:52', '', '5097.00', 'pendiente'),
(80, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:11:07', '', '5097.00', 'pendiente'),
(81, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:18:06', '', '2698.00', 'pendiente'),
(82, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:22:20', '', '2698.00', 'pendiente'),
(83, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:25:02', '', '2698.00', 'pendiente'),
(84, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:26:32', '', '2698.00', 'pendiente'),
(85, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:28:59', '', '2698.00', 'pendiente'),
(86, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:30:00', '', '2698.00', 'pendiente'),
(87, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:30:57', '', '2698.00', 'pendiente'),
(88, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:32:19', '', '2698.00', 'pendiente'),
(89, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:33:18', '', '2698.00', 'pendiente'),
(90, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:34:00', '', '2698.00', 'pendiente'),
(91, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:36:35', '', '2698.00', 'pendiente'),
(92, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:41:27', '', '2698.00', 'pendiente'),
(93, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:41:40', '', '2698.00', 'pendiente'),
(94, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:43:24', '', '2698.00', 'pendiente'),
(95, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:44:40', '', '2698.00', 'pendiente'),
(96, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:45:10', '', '2698.00', 'pendiente'),
(97, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 22:51:05', '', '4388.00', 'pendiente'),
(98, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-10 23:22:46', '', '4388.00', 'pendiente'),
(99, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-11 10:47:45', '', '6888.00', 'pendiente'),
(100, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-11 14:00:18', '', '1532.00', 'pendiente'),
(101, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-11 14:03:20', '', '1532.00', 'pendiente'),
(102, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-11 14:04:49', '', '1532.00', 'pendiente'),
(103, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-11 14:06:26', '', '1532.00', 'pendiente'),
(104, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-11 15:52:43', '', '1690.00', 'pendiente'),
(105, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-11 15:53:50', '', '1690.00', 'pendiente'),
(106, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-11 15:55:10', '', '1690.00', 'pendiente'),
(107, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-11 15:55:47', '', '1690.00', 'pendiente'),
(108, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-12 09:58:30', '', '1532.00', 'pendiente'),
(109, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-12 09:59:57', '', '1532.00', 'pendiente'),
(110, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-12 10:22:10', '', '1799.00', 'pendiente'),
(111, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-12 11:48:50', '', '1070.00', 'pendiente'),
(112, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-12 12:29:39', '', '600.00', 'pendiente'),
(113, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-12 13:10:13', '', '631.00', 'pendiente'),
(114, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-12 13:10:35', '', '631.00', 'pendiente'),
(115, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-12 13:11:45', '', '631.00', 'pendiente'),
(116, '6fncfkndekb3j4u1ukrmut5rc0', '', '2022-12-14 14:07:19', '', '6999.00', 'pendiente'),
(117, 'e544q5g6jvetrhf419enr62i4u', '', '2023-01-31 07:53:25', '', '1070.00', 'pendiente'),
(118, 'e79g3254nrd6oh1ql7lblc4c9c', '', '2023-03-09 08:45:42', '', '1329.00', 'pendiente'),
(119, 'e79g3254nrd6oh1ql7lblc4c9c', '', '2023-03-09 08:52:42', '', '1329.00', 'pendiente'),
(120, 'e79g3254nrd6oh1ql7lblc4c9c', '', '2023-03-09 08:53:31', '', '1029.00', 'pendiente'),
(121, 'u2vfj2rvuih2n39dvanjbt2f62', '', '2023-05-12 08:31:21', '', '1799.00', 'pendiente'),
(122, 'u2vfj2rvuih2n39dvanjbt2f62', '', '2023-05-12 08:32:54', '', '1799.00', 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `contraseña` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `contraseña`) VALUES
(1, 'hernandez25', '2599%');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `envio`
--
ALTER TABLE `envio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDVENTA` (`IDVENTA`),
  ADD KEY `IDPRODUCTO` (`IDPRODUCTO`);

--
-- Indices de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `envio`
--
ALTER TABLE `envio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD CONSTRAINT `tbldetalleventa_ibfk_1` FOREIGN KEY (`IDVENTA`) REFERENCES `tblventas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbldetalleventa_ibfk_2` FOREIGN KEY (`IDPRODUCTO`) REFERENCES `tblproductos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
