-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2025 a las 02:01:10
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
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `num_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `num_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Sergio Braulio', 'Martinez Felix', '23325061070438', '2008-08-14', 0, 'sergio.martinez23@gmail.com', '6672075250'),
(2, 'Rubi esmeralda ', 'zepeda garcia', '23325061070476', '2007-09-29', 1, 'rubi.zepeda23@cetis107.edu.mx', '6672075299'),
(3, 'Jonathan Horus', 'Zazueta Hernandez', '23325061070488', '2008-04-09', 0, 'jonathan.zazueta23@cetis107.edu.mx', '6672075698'),
(4, 'Hugo Alejandro', 'Rubio Maldonado', '23325061070777', '2008-08-22', 0, 'Hugo.Rubio23@cetis107.edu.mx', '6672075245'),
(5, 'Frida Sofia', 'Sanchez Valenzuela', '23325061070665', '2008-01-10', 1, 'Frida.Sanchez23@cetis107.edu.mx', '6672075221'),
(6, 'Luis Angel', 'Perez Lozano', '23325061070666', '2008-08-09', 0, 'Luis.Perez23@cetis107.edu.mx', '6672075666'),
(7, 'Santiago', 'Lopez Aispuro', '23325061070477', '2008-04-20', 0, 'Santiago.Lopez23@cetis107.edu.mx', '6672075643'),
(8, 'Victor Manuel', 'Dias Gastelum', '23325061070532', '2008-08-16', 0, 'Victor.Dias23@cetis107.edu.mx', '6672075230'),
(9, 'Uriel', 'Rodriguez Rojo', '23325061070355', '2008-06-14', 0, 'uriel.rodriguez23@cetis107.edu.mx', '6674075665'),
(10, 'Bayron Uriel', 'Estrada Camacho', '23325061070985', '2008-12-09', 0, 'Bayron.Estrada23@cetis107.edu.mx', '6672087269'),
(11, 'Angel Guillermo', 'Wong Valenzuela', '23325061070439', '2008-05-26', 0, 'Angel.Wong23@cetis107.edu.mx', '6672098465'),
(12, 'Paolo Nicholas', 'Valdez Vernall', '23325061070652', '2008-11-18', 0, 'Paolo.Valdez23@cetis107.edu.mx', '6673876523');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
