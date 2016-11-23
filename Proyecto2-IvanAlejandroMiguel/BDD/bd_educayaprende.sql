-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2016 a las 18:03:58
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_educayaprende`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_incidencia`
--

CREATE TABLE `tbl_incidencia` (
  `id_incidencia` int(3) NOT NULL,
  `tipo_incidencia` varchar(20) NOT NULL,
  `comentario_incidencia` text,
  `id_reserva` int(7) NOT NULL,
  `id_material` int(4) NOT NULL,
  `estado_incidencia` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_incidencia`
--

INSERT INTO `tbl_incidencia` (`id_incidencia`, `tipo_incidencia`, `comentario_incidencia`, `id_reserva`, `id_material`, `estado_incidencia`) VALUES
(1, 'Desperfectos Menores', 'Durante la última clase de física ha habido un pequeño incidente con el proyector y se ha desconfigurado, ahora se visualizan las proyecciones como la intro de star wars', 0, 0, 0),
(2, 'Desperfectos Mayores', 'El carro se ha caido por las escaleras y esta ligeramente doblado, es todavía usable y no parece haber sufrido graves daños', 0, 0, 0),
(3, 'Desperfectos Graves', 'A un alumno se le ha caído el portátil 2 y la pantalla se ha roto ligeramente, pese a que se puede usar aún, se tendrá que cambiar tarde o temprano', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_material`
--

CREATE TABLE `tbl_material` (
  `id_material` int(4) NOT NULL,
  `nombre_material` varchar(20) NOT NULL,
  `tipo_material` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_material`
--

INSERT INTO `tbl_material` (`id_material`, `nombre_material`, `tipo_material`) VALUES
(1, 'Portatil1', 'Portatiles'),
(2, 'Portatil2', 'Portatiles'),
(3, 'Portatil3', 'Portatiles'),
(4, 'Movil1', 'Móviles'),
(5, 'Movil2', 'Móviles'),
(6, 'Aula1', 'Aulas'),
(7, 'Aula2', 'Aulas'),
(8, 'Aula3', 'Aulas'),
(9, 'Aula4', 'Aulas'),
(10, 'Aula5', 'Aulas'),
(11, 'Aula6', 'Aulas'),
(12, 'Aula7', 'Aulas'),
(13, 'Aula8', 'Aulas'),
(14, 'Aula9', 'Aulas'),
(15, 'Proyector', 'Otros'),
(16, 'Carro', 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reserva`
--

CREATE TABLE `tbl_reserva` (
  `id_reserva` int(7) NOT NULL,
  `fecha_reserva` datetime NOT NULL,
  `fechaF_reserva` datetime DEFAULT NULL,
  `estado_reserva` tinyint(1) NOT NULL DEFAULT '0',
  `id_usuario` int(5) NOT NULL,
  `id_material` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_reserva`
--

INSERT INTO `tbl_reserva` (`id_reserva`, `fecha_reserva`, `fechaF_reserva`, `estado_reserva`, `id_usuario`, `id_material`) VALUES
(1, '2016-10-17 13:04:16', '2016-10-17 17:00:32', 1, 1, 2),
(2, '2016-11-03 13:03:54', '2016-11-07 17:06:18', 1, 2, 5),
(3, '2016-10-29 13:01:43', '2016-10-29 16:59:51', 1, 4, 1),
(4, '2016-10-24 13:02:35', '2016-10-24 17:00:07', 1, 5, 3),
(5, '2016-11-02 13:04:16', '2016-11-07 17:06:18', 1, 3, 2),
(6, '2016-10-20 13:07:42', '2016-10-20 17:01:03', 1, 3, 1),
(7, '2016-11-04 13:03:54', '2016-11-07 17:06:18', 1, 2, 5),
(8, '2016-10-25 13:01:57', '2016-10-25 16:57:06', 1, 1, 4),
(9, '2016-10-27 13:06:23', '2016-10-27 17:06:58', 1, 4, 3),
(10, '2016-11-01 13:04:16', '2016-11-07 17:06:18', 1, 5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `id_usuario` int(5) NOT NULL,
  `usuario_usuario` varchar(20) NOT NULL,
  `password_usuario` varchar(20) NOT NULL,
  `nombre_usuario` varchar(15) NOT NULL,
  `apellidos_usuario` varchar(30) NOT NULL,
  `tipo_usuario` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`id_usuario`, `usuario_usuario`, `password_usuario`, `nombre_usuario`, `apellidos_usuario`, `tipo_usuario`) VALUES
(1, 'dmarin', 'dm1234', 'David', 'Marín Salvador', 0),
(2, 'sjimenez', 'sj1234', 'Sergio', 'Jímenez Garcia', 0),
(3, 'aplans', 'ap1234', 'Agnés', 'Plans Berenguer', 0),
(4, 'iromero', 'ir1234', 'Ignasi', 'Romero Sanjuan', 0),
(5, 'rfuste', 'rf1234', 'Roger', 'Fusté Arroyo', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_incidencia`
--
ALTER TABLE `tbl_incidencia`
  ADD PRIMARY KEY (`id_incidencia`);

--
-- Indices de la tabla `tbl_material`
--
ALTER TABLE `tbl_material`
  ADD PRIMARY KEY (`id_material`);

--
-- Indices de la tabla `tbl_reserva`
--
ALTER TABLE `tbl_reserva`
  ADD PRIMARY KEY (`id_reserva`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_incidencia`
--
ALTER TABLE `tbl_incidencia`
  MODIFY `id_incidencia` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tbl_material`
--
ALTER TABLE `tbl_material`
  MODIFY `id_material` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `tbl_reserva`
--
ALTER TABLE `tbl_reserva`
  MODIFY `id_reserva` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `id_usuario` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
