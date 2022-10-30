-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: bnltxzejf6qnxll0xjii-mysql.services.clever-cloud.com:3306
-- Generation Time: Oct 30, 2022 at 06:27 PM
-- Server version: 8.0.15-5
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bnltxzejf6qnxll0xjii`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(50) DEFAULT NULL,
  `departamento` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`, `departamento`) VALUES
(1, 'FALLO ENERGETICO', 'EEM'),
(2, 'FALTA DE AGUA', 'Fontaneria'),
(3, 'PPROBLEMA VIAL', 'PMT');

-- --------------------------------------------------------

--
-- Table structure for table `jerarquia`
--

CREATE TABLE `jerarquia` (
  `id_jerarquia` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jerarquia`
--

INSERT INTO `jerarquia` (`id_jerarquia`, `nombre`) VALUES
(1, 'USUARIO'),
(2, 'ADMINISTRADOR');

-- --------------------------------------------------------

--
-- Table structure for table `quejas`
--

CREATE TABLE `quejas` (
  `id_queja` int(11) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quejas`
--

INSERT INTO `quejas` (`id_queja`, `descripcion`, `imagen`, `estado`, `fecha`, `id_categoria`, `id_usuario`) VALUES
(1, 'Corte de energía en Zona 1', 'URL', 'EN PROCESO', '0000-00-00 00:00:00', 1, 1),
(2, 'Corte de energía en Zona 1', 'URL', 'COMPLETADO', '2022-10-28 07:24:49', 1, 1),
(3, 'Falta de agua en Zona 2', 'URL', 'COMPLETADO', '2022-10-28 08:02:43', 2, 1),
(4, 'Arbol caido en medio de la calle de Zona 3', 'URL', 'CANCELADO', '2022-10-28 08:03:45', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `apellidos` varchar(35) DEFAULT NULL,
  `nombres` varchar(35) DEFAULT NULL,
  `dpi` varchar(15) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `contrasena` varchar(30) DEFAULT NULL,
  `id_jerarquia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `apellidos`, `nombres`, `dpi`, `correo`, `contrasena`, `id_jerarquia`) VALUES
(1, 'Samayoa', 'Diego', '11111234561301', 'test@gmail.com', '123', 1),
(2, 'Ramirez', 'Denilson', '22221234561301', 'testadmin@gmail.com', '321', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `jerarquia`
--
ALTER TABLE `jerarquia`
  ADD PRIMARY KEY (`id_jerarquia`);

--
-- Indexes for table `quejas`
--
ALTER TABLE `quejas`
  ADD PRIMARY KEY (`id_queja`),
  ADD KEY `fk_id_categoria` (`id_categoria`),
  ADD KEY `fk_id_usuario` (`id_usuario`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_id_jerarquia` (`id_jerarquia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jerarquia`
--
ALTER TABLE `jerarquia`
  MODIFY `id_jerarquia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quejas`
--
ALTER TABLE `quejas`
  MODIFY `id_queja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quejas`
--
ALTER TABLE `quejas`
  ADD CONSTRAINT `fk_id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `fk_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_id_jerarquia` FOREIGN KEY (`id_jerarquia`) REFERENCES `jerarquia` (`id_jerarquia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
