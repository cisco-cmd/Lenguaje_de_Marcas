-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 28-10-2022 a las 10:15:17
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rentcar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler`
--

DROP TABLE IF EXISTS `alquiler`;
CREATE TABLE IF NOT EXISTS `alquiler` (
  `dni` varchar(9) COLLATE utf8_spanish2_ci NOT NULL,
  `matricula` varchar(7) COLLATE utf8_spanish2_ci NOT NULL,
  `f_alquiler` datetime NOT NULL,
  `f_devolucion` datetime NOT NULL,
  `seguro` enum('S','N') COLLATE utf8_spanish2_ci NOT NULL,
  `kms` int(11) NOT NULL,
  PRIMARY KEY (`dni`,`matricula`,`f_alquiler`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `alquiler`
--

INSERT INTO `alquiler` (`dni`, `matricula`, `f_alquiler`, `f_devolucion`, `seguro`, `kms`) VALUES
('75215927D', '3070KZZ', '2021-10-28 10:53:03', '2021-11-05 16:53:03', 'S', 2400),
('75389629D', '5385JYD', '2021-09-03 08:02:50', '2021-09-30 17:31:22', 'S', 1035),
('47586943C', '5385JYD', '2021-03-03 09:45:47', '2021-05-03 11:20:34', 'N', 286),
('47586943C', '1385HSG', '2021-11-02 09:11:23', '2021-11-05 09:12:43', 'S', 306),
('39596920L', '3869HXT', '2021-02-13 11:48:32', '2021-02-16 18:30:23', 'N', 135),
('39596920L', '3586HJR', '2021-04-01 16:39:05', '2021-04-06 19:24:11', 'S', 841),
('26483963L', '3859JTF', '2021-10-25 09:38:26', '2021-10-29 19:08:51', 'N', 203),
('24963053X', '8348JFT', '2021-11-05 08:45:19', '2021-11-16 19:49:42', 'S', 1384),
('23969340C', '3859JTF', '2021-09-10 08:30:35', '2021-09-11 17:08:53', 'S', 380);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `dni` varchar(9) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `ciudad` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `tfno` varchar(9) COLLATE utf8_spanish2_ci NOT NULL,
  `sexo` enum('M','F') COLLATE utf8_spanish2_ci NOT NULL,
  `f_nac` date NOT NULL,
  `f_carnet` date NOT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`dni`, `nombre`, `direccion`, `ciudad`, `tfno`, `sexo`, `f_nac`, `f_carnet`) VALUES
('73959403F', 'Sofía Lagos Castillo', 'Calle Sorolla, 37 - 4ºD', 'Valladolid', '643850634', 'F', '1994-02-28', '2011-03-03'),
('73596920P', 'Cristobal Santana García', 'Avda. General Espartero, 37 - 7ºB', 'Córdoba', '683956001', 'M', '1986-11-05', '1999-07-15'),
('47586943C', 'Lourdes Valdemoro Soria', 'Calle Luna, 83 - 1ºB', 'Sevilla', '638593405', 'F', '1998-11-28', '2017-11-28'),
('39596920L', 'María del Sol Serrano Alfaro', 'Avda. del Puerto, s/n', 'Almeria', '959019306', 'F', '1977-03-01', '2001-05-30'),
('26839951V', 'Carlos Santiago Comín', 'Paseo de la Estación, 55 - 1ºA', 'Jaén', '953243732', 'M', '2000-03-15', '2018-01-04'),
('26483963L', 'Jesús Juan Jiménez Sastre', 'Calle Santiago, 11', 'Almería', '671738596', 'M', '1989-04-05', '2014-07-25'),
('26465438C', 'María Delgado Martínez', 'Calle Gran Vía, 483 - 11ºC', 'Madrid', '693060113', 'F', '1991-01-13', '2011-12-25'),
('24963053X', 'Alfredo Jazmín Soto', 'Calle Picasso, 9 - 1ºD', 'Úbeda', '953793385', 'M', '1967-03-15', '1984-11-27'),
('24864713A', 'Luis Albaladejo García', 'Calle Mesones, 8 - 3ºB', 'Úbeda', '953751143', 'M', '1957-03-11', '1979-06-22'),
('23969340C', 'Pedro Martínez Sarmiento', 'Avda. Diagonal, 35', 'Barcelona', '683493845', 'M', '1960-05-28', '1981-03-15'),
('75215927D', 'Laura García Díaz', 'Avda. Escaleritas, 85 - 6ºC', 'Baeza', '828693493', 'F', '2000-05-04', '2018-07-11'),
('75389629D', 'Javier Grias Ruíz', 'Avda. del Abad, 58 - 4ºC', 'Ciudad Real', '679040234', 'M', '1974-08-06', '1997-09-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coches`
--

DROP TABLE IF EXISTS `coches`;
CREATE TABLE IF NOT EXISTS `coches` (
  `matricula` varchar(7) COLLATE utf8_spanish2_ci NOT NULL,
  `marca` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `modelo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_color` varchar(2) COLLATE utf8_spanish2_ci NOT NULL,
  `f_matricula` date NOT NULL,
  `cod_vehiculo` int(11) NOT NULL,
  `cod_tipo` varchar(2) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_combustible` varchar(1) COLLATE utf8_spanish2_ci NOT NULL,
  `kms` int(11) NOT NULL,
  `potencia` smallint(6) NOT NULL,
  `consumo` decimal(4,2) NOT NULL,
  `vmax` smallint(6) NOT NULL,
  `preciodia` decimal(5,2) NOT NULL,
  PRIMARY KEY (`matricula`),
  KEY `coches_ibfk_2` (`cod_color`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `coches`
--

INSERT INTO `coches` (`matricula`, `marca`, `modelo`, `cod_color`, `f_matricula`, `cod_vehiculo`, `cod_tipo`, `cod_combustible`, `kms`, `potencia`, `consumo`, `vmax`, `preciodia`) VALUES
('1138FZV', 'Porsche', 'Cayenne S', 'NE', '2007-10-15', 0, '', 'G', 734964, 462, '23.11', 245, '305.00'),
('1234HVD', 'Kia', 'Cee\'d', 'RO', '2017-12-26', 0, '', 'G', 10359, 186, '8.20', 182, '173.64'),
('1385HSG', 'Dacia', 'Duster', 'BL', '2016-11-22', 0, '', 'D', 28358, 75, '9.40', 142, '51.34'),
('2550KLP', 'Nissan', 'Leaf', 'BL', '2018-05-13', 0, '', 'E', 1980, 110, '0.00', 160, '65.00'),
('2550KLT', 'Nissan', 'Qashqai', 'NM', '2018-04-13', 0, '', 'D', 1980, 130, '5.50', 190, '56.00'),
('3070KZZ', 'Mini ', 'Cooper S', 'NM', '2020-12-20', 0, '', 'G', 3500, 180, '7.30', 225, '102.00'),
('3586HJR', 'Toyota', 'Aigo', 'BL', '2016-12-30', 0, '', 'H', 157438, 75, '4.83', 143, '57.46'),
('3661JJR', 'Seat', 'Ibiza', 'NE', '2018-07-27', 0, '', 'G', 11683, 112, '9.23', 172, '126.31'),
('3859JTF', 'Toyota', 'Prius', 'AM', '2018-02-19', 0, '', 'H', 63984, 136, '3.60', 157, '157.31'),
('3869HXT', 'Fiat', '500', 'AZ', '2017-12-20', 0, '', 'G', 63953, 65, '3.20', 136, '48.36'),
('3945JZF', 'Citroën', 'Berlingo', 'BL', '2018-08-31', 0, '', 'E', 38596, 110, '0.00', 110, '215.35'),
('4132GXD', 'Peugeot', 'Partner', 'VE', '2016-06-14', 0, '', 'D', 50683, 105, '5.00', 165, '80.00'),
('5385JYD', 'Mercedes-Benz', 'Clase A', 'RO', '2018-11-23', 0, '', 'D', 0, 214, '11.20', 183, '407.43'),
('6839HGL', 'Wolkswagen', 'Polo', 'BP', '2016-11-17', 0, '', 'D', 2439, 90, '6.40', 173, '91.12'),
('6930JVS', 'Ford', 'Fiesta', 'AZ', '2018-05-09', 0, '', 'D', 25483, 85, '6.78', 158, '78.82'),
('8345JGY', 'Chrysler', '300 Luxury ', 'NE', '2017-09-14', 0, '', 'D', 2034, 218, '11.03', 158, '247.00'),
('8348JFT', 'Mazda', '3', 'VE', '2018-07-12', 0, '', 'G', 4938, 190, '9.40', 207, '277.43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color`
--

DROP TABLE IF EXISTS `color`;
CREATE TABLE IF NOT EXISTS `color` (
  `cod_color` varchar(9) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`cod_color`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `color`
--

INSERT INTO `color` (`cod_color`, `descripcion`) VALUES
('AM', 'Amarillo'),
('AZ', 'Azul'),
('BL', 'Blanco'),
('BP', 'Blanco Efecto Perla'),
('GR', 'Gris'),
('NE', 'Negro'),
('NM', 'Negro Metalizado'),
('RO', 'Rojo'),
('VE', 'Verde');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `combustible`
--

DROP TABLE IF EXISTS `combustible`;
CREATE TABLE IF NOT EXISTS `combustible` (
  `cod_combustible` enum('G','D','E','H','L') COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`cod_combustible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `combustible`
--

INSERT INTO `combustible` (`cod_combustible`, `descripcion`) VALUES
('D', 'Diesel'),
('E', 'Electrico'),
('G', 'Gasolina'),
('H', 'Hibrido'),
('L', 'GLP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

DROP TABLE IF EXISTS `tipo`;
CREATE TABLE IF NOT EXISTS `tipo` (
  `cod_tipo` varchar(2) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`cod_tipo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`cod_tipo`, `descripcion`) VALUES
('DE', 'Deportivo'),
('FU', 'Furgoneta'),
('LI', 'Limusina'),
('SU', 'S.U.V.'),
('TT', 'Todo Terreno'),
('TU', 'Turismo'),
('UT', 'Utilitario');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
