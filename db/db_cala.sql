-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-01-2020 a las 03:43:59
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_cala`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arbol`
--

CREATE TABLE `arbol` (
  `id_arbol` int(11) NOT NULL,
  `id_especie` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `latitud` int(11) NOT NULL,
  `longitud` int(11) NOT NULL,
  `anio_plantado` int(11) NOT NULL,
  `senializado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `arbol`
--

INSERT INTO `arbol` (`id_arbol`, `id_especie`, `descripcion`, `latitud`, `longitud`, `anio_plantado`, `senializado`) VALUES
(4, 2, 'otro arbol', 120, 100, 2400, 1),
(8, 1, 'hola como estas', 1231, 31231, 0, 0),
(9, 1, 'asdfas', 231231, 31231, 0, 1),
(10, 1, 'un ejemplar mio', 1321, 12312, 12312, 1),
(11, 1, 'a ver', 9, 9, 20, 1),
(12, 6, 'asfdasfas', 2312, 1231, 1231231, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especie`
--

CREATE TABLE `especie` (
  `id_especie` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especie`
--

INSERT INTO `especie` (`id_especie`, `nombre`, `descripcion`) VALUES
(1, 'Arce de Montpellier', 'Este arce es un pequeño árbol que alcanza los 10 m y suele tener una copa densa que da mucha sombra. Las hojas son caducas aunque algo coriáceas, simples, opuestas y poseen 3 lóbulos más o menos igual'),
(2, 'Acacia', 'El género Acacia comprende unas 1200 especies de árboles y arbustos, muchos espinosos, aunque los hay inermes. Las hojas son siempre de margen entero y pueden ser caducas, compuestas y pinnadas dos o '),
(6, 'Castaño', 'El castaño es un árbol de crecimiento rápido que puede alcanzar los 30 m de altura, un desarrollo impresionante en grosor y gran longevidad, pues se conocen algunos ejemplares milenarios.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arbol`
--
ALTER TABLE `arbol`
  ADD PRIMARY KEY (`id_arbol`),
  ADD KEY `id_especie` (`id_especie`);

--
-- Indices de la tabla `especie`
--
ALTER TABLE `especie`
  ADD PRIMARY KEY (`id_especie`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `arbol`
--
ALTER TABLE `arbol`
  MODIFY `id_arbol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `especie`
--
ALTER TABLE `especie`
  MODIFY `id_especie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `arbol`
--
ALTER TABLE `arbol`
  ADD CONSTRAINT `arbol_ibfk_1` FOREIGN KEY (`id_especie`) REFERENCES `especie` (`id_especie`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
