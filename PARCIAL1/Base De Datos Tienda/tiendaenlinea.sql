-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-03-2025 a las 00:37:27
-- Versión del servidor: 10.1.39-MariaDB
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
-- Base de datos: `tiendaenlinea`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `Id` int(11) NOT NULL,
  `Usuario_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(150) NOT NULL,
  `Descripcion` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direcciones`
--

CREATE TABLE `direcciones` (
  `Id` int(11) NOT NULL,
  `Calle` varchar(100) DEFAULT NULL,
  `Num` int(11) DEFAULT NULL,
  `Colonia` varchar(50) DEFAULT NULL,
  `CP` int(11) DEFAULT NULL,
  `Estado` varchar(100) DEFAULT NULL,
  `Ciudad` varchar(100) DEFAULT NULL,
  `Usuario_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_deseos`
--

CREATE TABLE `lista_deseos` (
  `Id` int(11) NOT NULL,
  `Usuario_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresia_usuario`
--

CREATE TABLE `membresia_usuario` (
  `Id` int(11) NOT NULL,
  `Usuario_Id` int(11) DEFAULT NULL,
  `Membresia_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodos_de_pago`
--

CREATE TABLE `metodos_de_pago` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Tipo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(150) NOT NULL,
  `Descripcion` varchar(150) DEFAULT NULL,
  `Categoria_Id` int(11) DEFAULT NULL,
  `Precio` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Genero` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `Id` int(11) NOT NULL,
  `Carrito_Id` int(11) DEFAULT NULL,
  `MetodoPago_Id` int(11) DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `Estado` tinyint(1) DEFAULT NULL,
  `Direccion_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Usuario_Id` (`Usuario_Id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Usuario_Id` (`Usuario_Id`);

--
-- Indices de la tabla `lista_deseos`
--
ALTER TABLE `lista_deseos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Usuario_Id` (`Usuario_Id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `membresia_usuario`
--
ALTER TABLE `membresia_usuario`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Usuario_Id` (`Usuario_Id`),
  ADD KEY `Membresia_Id` (`Membresia_Id`);

--
-- Indices de la tabla `metodos_de_pago`
--
ALTER TABLE `metodos_de_pago`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Categoria_Id` (`Categoria_Id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Carrito_Id` (`Carrito_Id`),
  ADD KEY `MetodoPago_Id` (`MetodoPago_Id`),
  ADD KEY `Direccion_Id` (`Direccion_Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lista_deseos`
--
ALTER TABLE `lista_deseos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `membresia_usuario`
--
ALTER TABLE `membresia_usuario`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metodos_de_pago`
--
ALTER TABLE `metodos_de_pago`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`Usuario_Id`) REFERENCES `usuarios` (`Id`);

--
-- Filtros para la tabla `direcciones`
--
ALTER TABLE `direcciones`
  ADD CONSTRAINT `direcciones_ibfk_1` FOREIGN KEY (`Usuario_Id`) REFERENCES `usuarios` (`Id`);

--
-- Filtros para la tabla `lista_deseos`
--
ALTER TABLE `lista_deseos`
  ADD CONSTRAINT `lista_deseos_ibfk_1` FOREIGN KEY (`Usuario_Id`) REFERENCES `usuarios` (`Id`);

--
-- Filtros para la tabla `membresia_usuario`
--
ALTER TABLE `membresia_usuario`
  ADD CONSTRAINT `membresia_usuario_ibfk_1` FOREIGN KEY (`Usuario_Id`) REFERENCES `usuarios` (`Id`),
  ADD CONSTRAINT `membresia_usuario_ibfk_2` FOREIGN KEY (`Membresia_Id`) REFERENCES `membresias` (`Id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`Categoria_Id`) REFERENCES `categorias` (`Id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`Carrito_Id`) REFERENCES `carrito` (`Id`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`MetodoPago_Id`) REFERENCES `metodos_de_pago` (`Id`),
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`Direccion_Id`) REFERENCES `direcciones` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
