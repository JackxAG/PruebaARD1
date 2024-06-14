-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2024 a las 05:24:51
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `temperatura_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversions`
--

CREATE TABLE `conversions` (
  `id` int(11) NOT NULL,
  `original_temp` float NOT NULL,
  `from_unit` varchar(50) NOT NULL,
  `converted_temp` float NOT NULL,
  `to_unit` varchar(50) NOT NULL,
  `conversion_temp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `conversions`
--

INSERT INTO `conversions` (`id`, `original_temp`, `from_unit`, `converted_temp`, `to_unit`, `conversion_temp`) VALUES
(82, 23567, 'fahrenheit', 13075, 'celsius', '2024-06-14 02:16:26'),
(83, 578, 'kelvin', 304.85, 'celsius', '2024-06-14 02:22:18'),
(84, 245, 'fahrenheit', 118.333, 'celsius', '2024-06-14 02:28:44'),
(85, 12, 'fahrenheit', -11.1111, 'celsius', '2024-06-14 02:29:14'),
(86, 13, 'fahrenheit', -10.5556, 'celsius', '2024-06-14 02:32:59'),
(87, 46, 'fahrenheit', 7.77778, 'celsius', '2024-06-14 02:33:26'),
(88, 46, 'fahrenheit', 7.77778, 'celsius', '2024-06-14 02:33:52'),
(89, 23, 'celsius', 73.4, 'fahrenheit', '2024-06-14 02:36:52'),
(90, 12, 'fahrenheit', -11.1111, 'celsius', '2024-06-14 02:38:55'),
(91, 23, 'fahrenheit', -5, 'celsius', '2024-06-14 02:44:42'),
(92, 34, 'celsius', 93.2, 'fahrenheit', '2024-06-14 02:45:00'),
(93, 345, 'fahrenheit', 173.889, 'celsius', '2024-06-14 02:46:31'),
(94, 23, 'fahrenheit', -5, 'celsius', '2024-06-14 02:48:02'),
(95, 24, 'fahrenheit', -4.44444, 'celsius', '2024-06-14 02:48:44'),
(96, 56, 'fahrenheit', 13.3333, 'celsius', '2024-06-14 02:51:40');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conversions`
--
ALTER TABLE `conversions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conversions`
--
ALTER TABLE `conversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
