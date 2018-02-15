-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-02-2018 a las 10:19:53
-- Versión del servidor: 10.0.32-MariaDB-1~wheezy
-- Versión de PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Pandora`
--
CREATE DATABASE IF NOT EXISTS `Pandora` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Pandora`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Panes`
--

CREATE TABLE `Panes` (
  `IdPan` int(20) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `Precio` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Panes`
--

INSERT INTO `Panes` (`IdPan`, `Nombre`, `Precio`) VALUES
(1, 'Pan s/sal rustico', '1.15'),
(2, 'Pan rustico 1', '1.15'),
(3, 'Pan rustico 2', '1.90'),
(4, '2 Pan baguete', '1.00'),
(5, '3 Panes s/sal', '1.75'),
(6, 'Pan chapata', '0.70'),
(7, 'Pan chapata 2', '1.95'),
(8, 'Pan tostadas', '1.50'),
(9, 'Pan tostadas 2', '2.00'),
(10, 'Pan omega', '1.20'),
(11, 'Pan de pipas', '2.15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Registrados`
--

CREATE TABLE `Registrados` (
  `IdRegistrados` int(20) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `Apellido` varchar(20) DEFAULT NULL,
  `Poblacion` varchar(20) DEFAULT NULL,
  `CodigoPostal` varchar(10) DEFAULT NULL,
  `Provincia` varchar(20) DEFAULT NULL,
  `Telefono` varchar(9) DEFAULT NULL,
  `CorreoElectronico` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Registrados`
--

INSERT INTO `Registrados` (`IdRegistrados`, `Nombre`, `Apellido`, `Poblacion`, `CodigoPostal`, `Provincia`, `Telefono`, `CorreoElectronico`) VALUES
(0, 'Javier', 'Rodriguez', 'Durango', '48200', 'Bizkaia', '657894144', 'javierrodriguez@gmail.com'),
(1, 'Jorge', 'Angulo', 'Berriz', '48240', 'Bizkaia', '684523138', 'pandora@gmail.com'),
(2, 'Pablo', 'Gutierrez', 'Eibar', '20600', 'Guipuzkoa', '685123485', 'pablogutierrez@hotmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Panes`
--
ALTER TABLE `Panes`
  ADD PRIMARY KEY (`IdPan`);

--
-- Indices de la tabla `Registrados`
--
ALTER TABLE `Registrados`
  ADD PRIMARY KEY (`IdRegistrados`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
