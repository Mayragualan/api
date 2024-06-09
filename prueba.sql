-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2024 a las 01:48:23
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_academicos`
--

CREATE TABLE `datos_academicos` (
  `id` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL,
  `carrera` varchar(255) DEFAULT NULL,
  `nivel` varchar(255) DEFAULT NULL,
  `materia` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos_academicos`
--

INSERT INTO `datos_academicos` (`id`, `persona_id`, `carrera`, `nivel`, `materia`) VALUES
(1, 1, 'Ingeniería', 'Universitario', 'Matemáticas'),
(2, 2, 'Arquitectura', 'Técnico', 'Dibujo'),
(3, 3, 'Medicina', 'Doctorado', 'Biología'),
(4, 4, 'Economía', 'Maestría', 'Finanzas'),
(5, 5, 'Informática', 'Universitario', 'Programación'),
(6, 6, 'Derecho', 'Universitario', 'Derecho Internacional'),
(7, 7, 'Psicología', 'Doctorado', 'Psicoanálisis'),
(8, 8, 'Administración de Empresas', 'Maestría', 'Gestión de Recursos Humanos'),
(9, 9, 'Marketing', 'Técnico', 'Publicidad'),
(10, 10, 'Biología', 'Universitario', 'Genética');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_persona`
--

CREATE TABLE `datos_persona` (
  `id` int(11) NOT NULL,
  `cedula` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos_persona`
--

INSERT INTO `datos_persona` (`id`, `cedula`, `nombre`, `apellido`, `edad`, `correo`, `direccion`) VALUES
(1, '123456789', 'Juan', 'Pérez', 30, 'juan@example.com', 'Calle 123'),
(2, '987654321', 'María', 'González', 25, 'maria@example.com', 'Avenida 456'),
(3, '111222333', 'Pedro', 'Sánchez', 35, 'pedro@example.com', 'Carrera 789'),
(4, '222333444', 'Ana', 'López', 28, 'ana@example.com', 'Avenida 789'),
(5, '333444555', 'Carlos', 'Martínez', 40, 'carlos@example.com', 'Calle 456'),
(6, '444555666', 'Laura', 'Rodríguez', 27, 'laura@example.com', 'Carrera 012'),
(7, '555666777', 'David', 'Hernández', 32, 'david@example.com', 'Avenida 345'),
(8, '666777888', 'Sofía', 'Díaz', 29, 'sofia@example.com', 'Calle 678'),
(9, '777888999', 'Elena', 'Ruiz', 38, 'elena@example.com', 'Carrera 901'),
(10, '888999000', 'Manuel', 'Gómez', 33, 'manuel@example.com', 'Avenida 234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos_academicos`
--
ALTER TABLE `datos_academicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_id` (`persona_id`);

--
-- Indices de la tabla `datos_persona`
--
ALTER TABLE `datos_persona`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos_academicos`
--
ALTER TABLE `datos_academicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `datos_persona`
--
ALTER TABLE `datos_persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `datos_academicos`
--
ALTER TABLE `datos_academicos`
  ADD CONSTRAINT `fk_datos_academicos_persona_id` FOREIGN KEY (`persona_id`) REFERENCES `datos_persona` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
