-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-06-2019 a las 14:52:50
-- Versión del servidor: 5.7.17-log
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `repositoriobd`
--
CREATE DATABASE IF NOT EXISTS `repositoriobd` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `repositoriobd`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` int(11) NOT NULL,
  `item` varchar(45) DEFAULT NULL,
  `avance` int(11) DEFAULT NULL,
  `observaciones` text,
  `proyectos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprueba`
--

CREATE TABLE `aprueba` (
  `proyectos_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `doc_aprob` varchar(100) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL COMMENT 'Campo para estado:\n1 - > aprobacion\n2 -> desarpobacion',
  `fecha_aprob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aprueba`
--

INSERT INTO `aprueba` (`proyectos_id`, `usuarios_id`, `doc_aprob`, `estado`, `fecha_aprob`) VALUES
(1, 1, 'aqui va la url ahcer update luego', '1', '2019-06-17'),
(3, 1, 'aqui va la url ahcer update luego', '1', '2019-06-17'),
(4, 1, 'aqui va la url ahcer update luego', '1', '2019-06-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaboradores`
--

CREATE TABLE `colaboradores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `proyectos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `colaboradores`
--

INSERT INTO `colaboradores` (`id`, `nombre`, `proyectos_id`) VALUES
(1, 'Ruben Tacza Valverde', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crea`
--

CREATE TABLE `crea` (
  `usuarios_id` int(11) NOT NULL,
  `proyectos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_pos`
--

CREATE TABLE `estado_pos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL COMMENT 'Estado despues de aprobado el proyecto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado_pos`
--

INSERT INTO `estado_pos` (`id`, `nombre`) VALUES
(1, 'Pendiente'),
(2, 'En ejecución'),
(3, 'Culminado'),
(4, 'Cerrado'),
(5, 'Cancelado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id` int(11) NOT NULL,
  `item` varchar(45) DEFAULT NULL,
  `descripcion` varchar(500) NOT NULL,
  `monto_asignado` decimal(10,2) DEFAULT NULL,
  `monto_ejecutado` decimal(10,2) DEFAULT NULL,
  `diferencia` decimal(10,2) DEFAULT NULL,
  `fecha_creado` date NOT NULL,
  `proyectos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informes`
--

CREATE TABLE `informes` (
  `id` int(11) NOT NULL,
  `proyectos_id` int(11) NOT NULL,
  `pdf` varchar(100) DEFAULT NULL,
  `fecha_inf` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instituciones`
--

CREATE TABLE `instituciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `instituciones`
--

INSERT INTO `instituciones` (`id`, `nombre`) VALUES
(1, 'Universidad Autónoma');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivos_esp`
--

CREATE TABLE `objetivos_esp` (
  `id` int(11) NOT NULL,
  `descripcion` text,
  `avance` int(11) DEFAULT NULL,
  `proyectos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombres`, `apellidos`, `fecha_nac`, `correo`, `telefono`) VALUES
(1, 'david', 'osorio', '1998-12-16', 'david@gmail.com', '95752145');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `proyectos_id` int(11) NOT NULL,
  `nom_producto` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `fecha_public` date DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL COMMENT 'Estados: Enviado, Aceptado, Publicado, Indexado',
  `descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `proyectos_id`, `nom_producto`, `fecha`, `fecha_public`, `estado`, `descripcion`) VALUES
(1, 1, 'oprueba', '2019-06-18', '2019-06-20', 'Enviado', 'naditas'),
(2, 1, 'Mendoza1', '2019-06-10', '2019-06-21', 'Publicado', 'qweqes'),
(5, 1, 'Mendoza', '2019-06-11', '2019-06-19', 'Indexado', 'nada'),
(6, 1, 'Chate', '2019-06-18', '2019-06-21', 'Publicado', 'Probando'),
(7, 1, 'Chate', '2019-06-18', '2019-06-21', 'Publicado', 'Probando'),
(8, 1, 'qew', '2019-05-27', '2019-06-12', 'Aceptado', 'comer'),
(9, 1, 'prueba', '2019-06-10', '2019-06-19', 'Enviado', 'nada'),
(10, 1, 'LuisMendoza', '2019-06-17', '2019-06-20', 'Indexado', 'nada'),
(11, 3, 'ProbandoLuis', '2019-06-17', '2019-06-21', 'Indexado', 'holi'),
(12, 3, 'LM', '2019-06-13', '2019-06-20', 'Enviado', 'Splendidosaxz'),
(13, 3, 'Nada', '2019-06-18', '2019-06-21', 'Aceptado', 'mendez'),
(16, 1, 'Mendez', '2019-06-18', '2019-06-22', 'Publicado', 'cafa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL,
  `id_inst` int(11) NOT NULL,
  `codigo` varchar(45) DEFAULT NULL COMMENT 'Codigo de registro de proyecto generado por el Sistema',
  `fecha_reg` date DEFAULT NULL COMMENT 'Fecha determinada por el Sistema cuando se registra un nuevo proyecto',
  `vigencia` varchar(45) DEFAULT NULL COMMENT 'Año actual',
  `tipo_proy` varchar(100) DEFAULT NULL COMMENT 'Tipo de proyecto: Proyecto Especial, Proyecto de Investigacion, Proyecto en Conjunto, Proyecto de Concurso',
  `tipo_doc` varchar(100) DEFAULT NULL COMMENT 'Tipo de documento: Formulacion de Proyecto, Informe de avance, Informe general',
  `num_reg` varchar(45) DEFAULT NULL,
  `nom_proy` varchar(100) DEFAULT NULL,
  `linea_gen` varchar(100) DEFAULT NULL,
  `linea_esp` varchar(100) DEFAULT NULL,
  `fecha_ini` date DEFAULT NULL COMMENT 'Fecha determinada por el Investigador',
  `fecha_fin` date DEFAULT NULL COMMENT 'Fecha determinada por el Investigador',
  `objetivo_gen` text,
  `estado_pos_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `id_inst`, `codigo`, `fecha_reg`, `vigencia`, `tipo_proy`, `tipo_doc`, `num_reg`, `nom_proy`, `linea_gen`, `linea_esp`, `fecha_ini`, `fecha_fin`, `objetivo_gen`, `estado_pos_id`) VALUES
(1, 1, '1', '2019-06-18', 'qweqe', 'fasada', 'qeqeq', 'ada', 'qweq', 'qweq', 'qeqwe', '2019-06-21', '2019-06-18', 'seq', 1),
(3, 1, '2019-06-17', '2019-06-17', '2019-06-17', '2019-06-17', '2019-06-17', '2019-06-17', '2019-06-17', '2019-06-17', '2019-06-17', '2019-06-17', '2019-06-17', '2019-06-17', 2),
(4, 1, NULL, '2019-06-19', '2020-06-19', 'Investigacion Cientifica', 'Tesis', '200', 'El uso de tics para mejorar el rendimiento academico', 'ing.Sistemas', 'Sistemas de informacion', '2019-06-19', '2019-09-30', 'Todo.', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id` int(11) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id`, `tipo`) VALUES
(1, 'investigador'),
(2, 'director');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `clave` varchar(45) NOT NULL,
  `tipo_usuario_id` int(11) NOT NULL,
  `personas_id` int(11) NOT NULL,
  `estado` varchar(45) DEFAULT 'Inactivo' COMMENT 'estado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `clave`, `tipo_usuario_id`, `personas_id`, `estado`) VALUES
(1, 'dosorioa', '123', 1, 1, 'activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`,`proyectos_id`),
  ADD KEY `fk_Atividades_Proyectos1_idx` (`proyectos_id`);

--
-- Indices de la tabla `aprueba`
--
ALTER TABLE `aprueba`
  ADD PRIMARY KEY (`proyectos_id`,`usuarios_id`),
  ADD KEY `fk_Proyectos_has_Usuarios_Usuarios1_idx` (`usuarios_id`),
  ADD KEY `fk_Proyectos_has_Usuarios_Proyectos1_idx` (`proyectos_id`);

--
-- Indices de la tabla `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD PRIMARY KEY (`id`,`proyectos_id`),
  ADD KEY `fk_Colaboradores_Proyectos1_idx` (`proyectos_id`);

--
-- Indices de la tabla `crea`
--
ALTER TABLE `crea`
  ADD PRIMARY KEY (`usuarios_id`,`proyectos_id`),
  ADD KEY `fk_Usuarios_has_Proyectos_Proyectos2_idx` (`proyectos_id`),
  ADD KEY `fk_Usuarios_has_Proyectos_Usuarios2_idx` (`usuarios_id`);

--
-- Indices de la tabla `estado_pos`
--
ALTER TABLE `estado_pos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id`,`proyectos_id`),
  ADD KEY `fk_Gastos_Proyectos1_idx` (`proyectos_id`);

--
-- Indices de la tabla `informes`
--
ALTER TABLE `informes`
  ADD PRIMARY KEY (`id`,`proyectos_id`),
  ADD KEY `fk_Informes_Proyectos1_idx` (`proyectos_id`);

--
-- Indices de la tabla `instituciones`
--
ALTER TABLE `instituciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `objetivos_esp`
--
ALTER TABLE `objetivos_esp`
  ADD PRIMARY KEY (`id`,`proyectos_id`),
  ADD KEY `fk_Objetivos_esp_Proyectos1_idx` (`proyectos_id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`,`proyectos_id`),
  ADD KEY `fk_Productos_Proyectos1_idx` (`proyectos_id`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Proyectos_Instituciones1_idx` (`id_inst`),
  ADD KEY `fk_Proyectos_Estado_pos1_idx` (`estado_pos_id`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`,`tipo_usuario_id`,`personas_id`),
  ADD KEY `fk_Usuarios_Tipo_Usuario1_idx` (`tipo_usuario_id`),
  ADD KEY `fk_Usuarios_Personas1_idx` (`personas_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `colaboradores`
--
ALTER TABLE `colaboradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `estado_pos`
--
ALTER TABLE `estado_pos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `informes`
--
ALTER TABLE `informes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `instituciones`
--
ALTER TABLE `instituciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `objetivos_esp`
--
ALTER TABLE `objetivos_esp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD CONSTRAINT `fk_Atividades_Proyectos1` FOREIGN KEY (`proyectos_id`) REFERENCES `proyectos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `aprueba`
--
ALTER TABLE `aprueba`
  ADD CONSTRAINT `fk_Proyectos_has_Usuarios_Proyectos1` FOREIGN KEY (`proyectos_id`) REFERENCES `proyectos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Proyectos_has_Usuarios_Usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD CONSTRAINT `fk_Colaboradores_Proyectos1` FOREIGN KEY (`proyectos_id`) REFERENCES `proyectos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `crea`
--
ALTER TABLE `crea`
  ADD CONSTRAINT `fk_Usuarios_has_Proyectos_Proyectos2` FOREIGN KEY (`proyectos_id`) REFERENCES `proyectos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Usuarios_has_Proyectos_Usuarios2` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD CONSTRAINT `fk_Gastos_Proyectos1` FOREIGN KEY (`proyectos_id`) REFERENCES `proyectos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `informes`
--
ALTER TABLE `informes`
  ADD CONSTRAINT `fk_Informes_Proyectos1` FOREIGN KEY (`proyectos_id`) REFERENCES `proyectos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `objetivos_esp`
--
ALTER TABLE `objetivos_esp`
  ADD CONSTRAINT `fk_Objetivos_esp_Proyectos1` FOREIGN KEY (`proyectos_id`) REFERENCES `proyectos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_Productos_Proyectos1` FOREIGN KEY (`proyectos_id`) REFERENCES `proyectos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `fk_Proyectos_Estado_pos1` FOREIGN KEY (`estado_pos_id`) REFERENCES `estado_pos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Proyectos_Instituciones1` FOREIGN KEY (`id_inst`) REFERENCES `instituciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_Usuarios_Personas1` FOREIGN KEY (`personas_id`) REFERENCES `personas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Usuarios_Tipo_Usuario1` FOREIGN KEY (`tipo_usuario_id`) REFERENCES `tipo_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
