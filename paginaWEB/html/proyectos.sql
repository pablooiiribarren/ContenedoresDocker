-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2024 a las 13:15:51
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL COMMENT 'ID único del proyecto',
  `titulo` varchar(255) NOT NULL COMMENT 'Título del proyecto',
  `descripcion` text NOT NULL COMMENT 'Descripción del proyecto',
  `imagen` varchar(255) DEFAULT NULL COMMENT 'URL de la imagen',
  `fecha` date DEFAULT NULL COMMENT 'Fecha de creación',
  `categoria` varchar(100) DEFAULT NULL COMMENT '\r\nCategoría del proyecto',
  `tecnologias` varchar(255) DEFAULT NULL COMMENT 'TEcnologías utilizadas',
  `link` varchar(255) DEFAULT NULL COMMENT 'URL del proyecto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `titulo`, `descripcion`, `imagen`, `fecha`, `categoria`, `tecnologias`, `link`) VALUES
(1, 'Pagina web /parte2', 'prueba', 'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg', '2024-11-10', 'prueba', 'Chat GPT', ''),
(2, 'Pagina web /parte3', 'prueba', 'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg', '2024-11-10', 'prueba', 'Chat GPT', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID único del proyecto', AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
