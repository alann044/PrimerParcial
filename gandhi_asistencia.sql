-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 06-09-2025 a las 23:39:13
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
-- Base de datos: `gandhi_asistencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `puesto` varchar(100) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `correo`, `contraseña`, `puesto`, `fecha_registro`) VALUES
(1, 'Alan', 'alan@gmail.com', '$2y$10$7IrQoMnoly6E6TVa3c9wG.zIu0LNTuSH4vk2RM6Qsasl5W0lCrsSm', 'Empleado', '2025-09-05 16:44:43'),
(2, 'Adrian', 'adrian@gmail.com', '$2y$10$yhN/HS8efnOI0zT5wuCrPerJ/2m18b9yTaMSGDnWu1e4BnuDdZJ2u', 'Practicante', '2025-09-06 19:32:20'),
(3, 'Juan', 'juan@gmail.com', '$2y$10$d52oiT/RXYzU6Op3893vre/3ONSTc4R76HxRE68wQBgJUwNAuUht.', 'Supervisor', '2025-09-06 19:33:35'),
(4, 'Ruben', 'ruben@gmail.com', '$2y$10$TAtPsYC1x/SGH6QK0Px3SuuvN4/jjOG.xGzC3yyggZSVeasfY3OZW', 'Gerente', '2025-09-06 19:38:46'),
(5, 'Erick Gutierrez', 'erickgg@gmail.com', '$2y$10$LKg8Ve4r2/.ssuywO/UD4.2Mfs66zr4lk4GI2MR2BxXuuho1Xedvm', 'Gerente', '2025-09-06 20:54:46'),
(7, 'Erick Macias', 'erickmm@gmail.com', '$2y$10$eEHFvX7bxxwLehzCWrvayeB96tHuLaCU7eugEbvKOICScOSthYeLK', 'Gerente', '2025-09-06 20:55:17'),
(8, 'Arturo Esquivel', 'arturoe@hotmail.com', '$2y$10$6FUf5L6/7YBbHlJ27.IHuuG4YH6TvbLwayXUFwx/o0LqpdGERs9Z2', 'Empleado', '2025-09-06 20:56:07'),
(11, 'Miguel Alvarado', 'miguelito@hotmail.com', '$2y$10$uTZxvc7SJ7gg/0uX8qWR0u2YkJzRKnbwOhR67iys0r9slpn6rzuSu', 'Empleado', '2025-09-06 20:56:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitados`
--

CREATE TABLE `invitados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `ocupacion` varchar(150) NOT NULL,
  `evento` varchar(200) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `invitados`
--

INSERT INTO `invitados` (`id`, `nombre`, `correo`, `contraseña`, `ocupacion`, `evento`, `fecha_registro`) VALUES
(1, 'Bruno Díaz', 'brunodiaz@gmail.com', '$2y$10$y0LEOTzvBOuyvf/l6QjzmOi799Q8TGOAWL3eTqwppzb1a58p8d3am', 'Invitado', 'Presentación de libro', '2025-09-06 19:58:03'),
(2, 'Carlos Pallares', 'carlospalla@gmail.com', '$2y$10$4ESOy3rDjnU8AcYGN0XLDew958/jAJK1bNiLPFkxK1BnMjflOqhEK', 'Colaborador', 'Presentación de libro', '2025-09-06 20:48:47'),
(3, 'Cynthia Ramírez', 'cyndyram@gmail.com', '$2y$10$4oCUXtbVl5.rE6igkAgOQuaSnb01/hRcdDv0bMjqx7EGXjHr26uCS', 'Invitado', 'Presentación de libro', '2025-09-06 21:01:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitantes`
--

CREATE TABLE `visitantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `ocupacion` varchar(150) NOT NULL,
  `motivo_visita` varchar(255) NOT NULL,
  `persona_visitar` varchar(150) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `visitantes`
--

INSERT INTO `visitantes` (`id`, `nombre`, `correo`, `contraseña`, `ocupacion`, `motivo_visita`, `persona_visitar`, `fecha_registro`) VALUES
(1, 'Raul Macias', 'raulmacias@gmail.com', '$2y$10$dGivy0SHPpggQVQOfSIYR.xj5NyeVBPbpkZgstnBEXKiLDtgk/idS', 'Editor de Debolsillo', 'Junta de negocios', 'Lic. Javier Gutierrez', '2025-09-06 19:40:44'),
(2, 'Alejandra Barrientos', 'aleba@gmail.com', '$2y$10$4diMvBoIalu3USKQTuCo1u.AgXKFJvFhNXqc8WxYt8tPz9Y0q8Oze', 'Escritor', 'Junta de negocios', 'Lic. Diego Guerra', '2025-09-06 21:01:03'),
(3, 'Teresa Alvarado', 'teresita@gmail.com', '$2y$10$9Ef2PrfR4IhZ.JlBJf2CueIifUfKeEguSDa8M0gt1DZ8Kpf3Xb6za', 'Corrector', 'Correción de A Todo El Amor', 'Lic. Javier Gutierrez', '2025-09-06 21:14:46'),
(4, 'Rosa Navarro', 'rosanav@gmail.com', '$2y$10$8Yxc0l2d/hq.4taDv.ZJkepxwLn08fiMv6EnfZITr2h/YlPHMHnXK', 'Reportero', 'Reportaje sobre Gandhi', 'Lic. Martina Calleros', '2025-09-06 21:17:39');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `invitados`
--
ALTER TABLE `invitados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `invitados`
--
ALTER TABLE `invitados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
