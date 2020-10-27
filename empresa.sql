-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-10-2020 a las 13:25:16
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL COMMENT 'Almacena la descripción del producto',
  `estado` varchar(1) DEFAULT NULL COMMENT 'Define si la categoria esta activa o no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena la información de las categorias de los productos de la empresa';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL COMMENT 'Almacena el nombre de la empresa',
  `quienessomos` varchar(500) DEFAULT NULL COMMENT 'Almacena la información de la empresa',
  `emailcontacto` varchar(50) DEFAULT NULL COMMENT 'Almacena el email al cual se enviaran los contactos',
  `direccion` varchar(200) DEFAULT NULL COMMENT 'Almacena la dirección de',
  `telefonocontacto` varchar(20) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena la información de la empresa.  Incluye todo lo referente a la configuración de la empresa.';

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombre`, `quienessomos`, `emailcontacto`, `direccion`, `telefonocontacto`, `facebook`, `twitter`, `instagram`) VALUES
(1, 'Ufps', 'Una universidad', 'dsdsd@gmail.com', NULL, '55555555', NULL, NULL, NULL),
(2, 'ufps', 'Una universidad', 'djsndas@gmail.com', NULL, '555555555', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL COMMENT 'Registra el nombre de la empresa',
  `descripcion` varchar(500) DEFAULT NULL COMMENT 'Registra información de la descripción de la marca'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena la información de las marcas de los productos';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `referencia` varchar(20) DEFAULT NULL COMMENT 'Referencia de los productos',
  `nombre` varchar(100) DEFAULT NULL COMMENT 'Nombre del producto',
  `descripcioncorta` varchar(250) DEFAULT NULL COMMENT 'Una descripcion corta del producto',
  `detalle` text COMMENT 'Detalle extenso de la información del producto',
  `valor` decimal(10,2) DEFAULT NULL COMMENT 'Precio del producto',
  `palabrasclave` varchar(100) DEFAULT NULL COMMENT 'Palabras claves del producto ',
  `estado` varchar(1) DEFAULT NULL COMMENT 'Estado del producto',
  `categoria_id` int(11) DEFAULT NULL,
  `marca_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena la información del producto';

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `referencia`, `nombre`, `descripcioncorta`, `detalle`, `valor`, `palabrasclave`, `estado`, `categoria_id`, `marca_id`) VALUES
(1, '123456', 'Zapato blanco', 'Botin clasico', 'Con franjas', '200.00', NULL, NULL, NULL, NULL),
(3, '147866', 'Ejemplo', 'Una descrip', 'Detal', '50000.00', NULL, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IXFK_producto_categoria` (`categoria_id`),
  ADD KEY `IXFK_producto_marca` (`marca_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `FK_producto_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`),
  ADD CONSTRAINT `FK_producto_marca` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
