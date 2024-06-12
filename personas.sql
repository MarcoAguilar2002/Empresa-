-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-06-2024 a las 08:45:55
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
-- Base de datos: `empresa_lab`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `nPerCodigo` bigint(20) UNSIGNED NOT NULL,
  `cPerApellido` char(50) NOT NULL,
  `cPerNombre` char(50) NOT NULL,
  `cPerDireccion` varchar(100) NOT NULL,
  `dPerFecNac` date NOT NULL,
  `nPerEdad` int(11) NOT NULL,
  `cPerSexo` char(15) DEFAULT 'Masculino',
  `nPerSueldo` decimal(6,2) NOT NULL,
  `cPerRnd` varchar(50) NOT NULL,
  `cPerEstado` char(1) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`nPerCodigo`, `cPerApellido`, `cPerNombre`, `cPerDireccion`, `dPerFecNac`, `nPerEdad`, `cPerSexo`, `nPerSueldo`, `cPerRnd`, `cPerEstado`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Garcia', 'Juan', '123 Calle Falsa', '1985-07-23', 38, 'Masculino', 1500.50, 'random_string_1', 'A', 'random_token_1', '2024-06-12 06:22:51', '2024-06-12 06:22:51'),
(2, 'Lopez', 'Ana', '456 Avenida Siempre Viva', '1990-11-05', 33, 'Femenino', 1750.75, 'random_string_2', 'B', 'random_token_2', '2024-06-12 06:22:51', '2024-06-12 06:22:51'),
(3, 'Martinez', 'Luis', '789 Plaza Mayor', '1988-02-14', 36, 'Masculino', 2000.00, 'random_string_3', 'A', 'random_token_3', '2024-06-12 06:22:51', '2024-06-12 06:22:51'),
(4, 'Perez', 'Maria', '1010 Calle Luna', '1992-03-30', 32, 'Femenino', 1600.40, 'random_string_4', 'C', 'random_token_4', '2024-06-12 06:22:51', '2024-06-12 06:22:51'),
(5, 'Rodriguez', 'Carlos', '2020 Calle Sol', '1980-12-25', 43, 'Masculino', 1850.90, 'random_string_5', 'B', 'random_token_5', '2024-06-12 06:22:51', '2024-06-12 06:22:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`nPerCodigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `nPerCodigo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
