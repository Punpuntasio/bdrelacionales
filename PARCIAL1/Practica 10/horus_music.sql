-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2025 a las 02:05:37
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
-- Base de datos: `horus_music`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`) VALUES
(1, 'Peso pluma\r\n'),
(2, 'Tito doble p'),
(3, 'Hatsune Miku'),
(4, 'Tailor Swift'),
(5, 'Romeo Santos'),
(6, 'Cartel de Santa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistascanciones`
--

CREATE TABLE `artistascanciones` (
  `id` int(11) NOT NULL,
  `artistas_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistascanciones`
--

INSERT INTO `artistascanciones` (`id`, `artistas_id`, `canciones_id`) VALUES
(1, 3, 3),
(2, 1, 4),
(3, 1, 1),
(4, 1, 2),
(5, 5, 6),
(6, 4, 5),
(7, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'La people', 3, '00:03:01', '2022-01-04', 1, 'imgur/sakdkosj.com'),
(2, 'Zapata', 3, '00:03:15', '2022-06-04', 1, 'imgur/sakdkjssj.com'),
(3, 'Doritoti', 6, '00:02:46', '2008-04-19', 1, 'FOTO DE HATSUNE MIKU'),
(4, 'JUEVES', 5, '00:02:59', '2011-04-19', 1, 'LA BANDA'),
(5, 'THE OTHER WOMAN', 6, '00:03:14', '2018-01-04', 1, 'EXCLUSIV'),
(6, 'HILITO', 4, '00:02:45', '2016-01-17', 1, 'ROMEO SANTOS'),
(7, 'gervonta', 3, '00:02:47', '2024-12-20', 1, 'imgur/gervontapesopluma'),
(8, 'Ella Baila Sola', 3, '00:03:13', '2024-12-20', 1, 'imgur/ellabailasola_peso_pluma'),
(9, 'La Bebé', 3, '00:03:05', '2024-12-20', 1, 'imgur/labebe_peso_pluma'),
(10, 'AMG', 3, '00:02:58', '2024-12-20', 1, 'imgur/amg_peso_pluma'),
(11, 'El Belicón', 3, '00:03:20', '2024-12-20', 1, 'imgur/elbelicon_peso_pluma'),
(12, 'Arriba de la Blindada', 3, '00:03:02', '2024-12-20', 1, 'imgur/arribadelablindada_peso_pluma'),
(13, 'Corrido de Juanito', 3, '00:02:55', '2024-12-20', 1, 'imgur/corridodejuanito_peso_pluma'),
(14, 'Fuego', 3, '00:03:10', '2024-12-20', 1, 'imgur/fuego_tito_doblep'),
(15, 'Cienmil', 3, '00:02:58', '2024-12-20', 1, 'imgur/cienmil_tito_doblep'),
(16, 'Bajo El Agua', 3, '00:03:05', '2024-12-20', 1, 'imgur/bajoelagua_tito_doblep'),
(17, 'Chingón', 3, '00:02:50', '2024-12-20', 1, 'imgur/chingon_tito_doblep'),
(18, 'Locura', 3, '00:03:15', '2024-12-20', 1, 'imgur/locura_tito_doblep'),
(19, 'Noche Perfecta', 3, '00:02:45', '2024-12-20', 1, 'imgur/nocheperfecta_tito_doblep'),
(20, 'World is Mine', 4, '00:03:05', '2024-12-20', 1, 'imgur/worldismine_hatsune_miku'),
(21, 'Senbonzakura', 4, '00:02:58', '2024-12-20', 1, 'imgur/senbonzakura_hatsune_miku'),
(22, 'Miku', 4, '00:03:10', '2024-12-20', 1, 'imgur/miku_hatsune_miku'),
(23, 'Tell Your World', 4, '00:03:20', '2024-12-20', 1, 'imgur/tellyourworld_hatsune_miku'),
(24, 'The Disappearance of Hatsune Miku', 4, '00:02:45', '2024-12-20', 1, 'imgur/disappearance_hatsune_miku'),
(25, 'Meltdown', 4, '00:02:50', '2024-12-20', 1, 'imgur/meltdown_hatsune_miku'),
(26, 'Shake It Off', 6, '00:03:39', '2024-12-20', 1, 'imgur/shakeitoff_taylor_swift'),
(27, 'Love Story', 6, '00:03:50', '2024-12-20', 1, 'imgur/lovestory_taylor_swift'),
(28, 'You Belong With Me', 6, '00:03:47', '2024-12-20', 1, 'imgur/youbelongwithme_taylor_swift'),
(29, 'Blank Space', 6, '00:03:50', '2024-12-20', 1, 'imgur/blankspace_taylor_swift'),
(30, 'All Too Well', 6, '00:05:29', '2024-12-20', 1, 'imgur/alltoowell_taylor_swift'),
(31, 'Bad Blood', 6, '00:03:30', '2024-12-20', 1, 'imgur/badblood_taylor_swift'),
(32, 'Propuesta Indecente', 5, '00:03:25', '2024-12-20', 1, 'imgur/propuestaindecente_romeo_santos'),
(33, 'Eres Mía', 5, '00:03:18', '2024-12-20', 1, 'imgur/eresmia_romeo_santos'),
(34, 'Hilito', 5, '00:03:10', '2024-12-20', 1, 'imgur/hilito_romeo_santos'),
(35, 'Te Regalo Amores', 5, '00:03:05', '2024-12-20', 1, 'imgur/teregaloamores_romeo_santos'),
(36, 'Bella y Sensual', 5, '00:03:15', '2024-12-20', 1, 'imgur/bellaysensual_romeo_santos'),
(37, 'Odio', 5, '00:02:58', '2024-12-20', 1, 'imgur/odio_romeo_santos'),
(38, 'Los Mensajes del Memos', 2, '00:03:30', '2024-12-20', 1, 'imgur/losmensajesdelmemos_cartel_de_santa'),
(39, 'La Pelotona', 2, '00:03:45', '2024-12-20', 1, 'imgur/lapelotona_cartel_de_santa'),
(40, 'Gente Loca', 2, '00:03:00', '2024-12-20', 1, 'imgur/genteloca_cartel_de_santa'),
(41, 'El Santo Cachón', 2, '00:03:12', '2024-12-20', 1, 'imgur/elsantocachon_cartel_de_santa'),
(42, 'Quítate de Aquí', 2, '00:02:55', '2024-12-20', 1, 'imgur/quitatedeahi_cartel_de_santa'),
(43, 'Puro Relajo', 2, '00:03:10', '2024-12-20', 1, 'imgur/purorelajo_cartel_de_santa'),
(44, 'World is Mine', 4, '00:03:05', '2024-12-20', 1, 'imgur/worldismine_hatsune_miku'),
(45, 'Senbonzakura', 4, '00:02:58', '2024-12-20', 1, 'imgur/senbonzakura_hatsune_miku'),
(46, 'Miku', 4, '00:03:10', '2024-12-20', 1, 'imgur/miku_hatsune_miku'),
(47, 'Tell Your World', 4, '00:03:20', '2024-12-20', 1, 'imgur/tellyourworld_hatsune_miku'),
(48, 'The Disappearance of Hatsune Miku', 4, '00:02:45', '2024-12-20', 1, 'imgur/disappearance_hatsune_miku'),
(49, 'Meltdown', 4, '00:02:50', '2024-12-20', 1, 'imgur/meltdown_hatsune_miku'),
(50, 'Shake It Off', 6, '00:03:39', '2024-12-20', 1, 'imgur/shakeitoff_taylor_swift'),
(51, 'Love Story', 6, '00:03:50', '2024-12-20', 1, 'imgur/lovestory_taylor_swift'),
(52, 'You Belong With Me', 6, '00:03:47', '2024-12-20', 1, 'imgur/youbelongwithme_taylor_swift'),
(53, 'Blank Space', 6, '00:03:50', '2024-12-20', 1, 'imgur/blankspace_taylor_swift'),
(54, 'All Too Well', 6, '00:05:29', '2024-12-20', 1, 'imgur/alltoowell_taylor_swift'),
(55, 'Bad Blood', 6, '00:03:30', '2024-12-20', 1, 'imgur/badblood_taylor_swift'),
(56, 'Propuesta Indecente', 5, '00:03:25', '2024-12-20', 1, 'imgur/propuestaindecente_romeo_santos'),
(57, 'Eres Mía', 5, '00:03:18', '2024-12-20', 1, 'imgur/eresmia_romeo_santos'),
(58, 'Hilito', 5, '00:03:10', '2024-12-20', 1, 'imgur/hilito_romeo_santos'),
(59, 'Te Regalo Amores', 5, '00:03:05', '2024-12-20', 1, 'imgur/teregaloamores_romeo_santos'),
(60, 'Bella y Sensual', 5, '00:03:15', '2024-12-20', 1, 'imgur/bellaysensual_romeo_santos'),
(61, 'Odio', 5, '00:02:58', '2024-12-20', 1, 'imgur/odio_romeo_santos'),
(62, 'Los Mensajes del Memos', 2, '00:03:30', '2024-12-20', 1, 'imgur/losmensajesdelmemos_cartel_de_santa'),
(63, 'La Pelotona', 2, '00:03:45', '2024-12-20', 1, 'imgur/lapelotona_cartel_de_santa'),
(64, 'Gente Loca', 2, '00:03:00', '2024-12-20', 1, 'imgur/genteloca_cartel_de_santa'),
(65, 'El Santo Cachón', 2, '00:03:12', '2024-12-20', 1, 'imgur/elsantocachon_cartel_de_santa'),
(66, 'Quítate de Aquí', 2, '00:02:55', '2024-12-20', 1, 'imgur/quitatedeahi_cartel_de_santa'),
(67, 'Puro Relajo', 2, '00:03:10', '2024-12-20', 1, 'imgur/purorelajo_cartel_de_santa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuario_id`, `cancion_id`) VALUES
(1, 2, 1),
(2, 1, 2),
(3, 3, 3),
(4, 5, 1),
(5, 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`, `descripcion`) VALUES
(2, 'Rock', 'Musica para apestosos'),
(3, 'Corridos Tumbados', 'Musica para Sabios'),
(4, 'Bachata', 'Musica para bailar en fiestas'),
(5, 'Dolido', 'Para llorar'),
(6, 'Pop', 'Tailor Swift');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `tipo`, `precio`) VALUES
(1, 'PREMIUM', 300),
(2, 'PREMIUM', 300),
(3, 'EXCLUSIVO', 999),
(4, 'CHAD', 2000),
(5, 'SIGMA', 5999),
(6, 'RUBI', 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id`, `nombre`, `usuario_id`, `duracion`, `totalcanciones`, `descripcion`, `publico`) VALUES
(1, 'Se acavoid', 5, '17:23:54', 167, 'Y yo papa, se acavoid.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(99) NOT NULL,
  `correo` varchar(99) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Horus', 'elproXD@gmail.com', 4),
(2, 'Frida Sofia', 'frida1234@gmail.com', 5),
(3, 'Rubi Zepeda', 'RubiZepedita@gmail.com', 6),
(4, 'Wong', 'apestoso12@gmail.com', 1),
(5, 'Sergio', 'unapeersona@gmail.com', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artistas_id` (`artistas_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  ADD CONSTRAINT `artistascanciones_ibfk_1` FOREIGN KEY (`artistas_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistascanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
