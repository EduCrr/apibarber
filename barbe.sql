-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Mar-2022 às 14:52
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `barbe`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `barberavailability`
--

CREATE TABLE `barberavailability` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `weekday` int(11) NOT NULL,
  `hours` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barberavailability`
--

INSERT INTO `barberavailability` (`id`, `id_barber`, `weekday`, `hours`) VALUES
(1, 1, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(2, 1, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(3, 1, 2, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(4, 1, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(5, 2, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(6, 2, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(7, 2, 2, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(8, 2, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(9, 3, 0, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(10, 3, 1, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(11, 3, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(12, 3, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(13, 4, 0, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(14, 4, 1, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(15, 4, 2, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(16, 4, 3, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(17, 5, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(18, 5, 1, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(19, 5, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(20, 5, 3, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(21, 6, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(22, 6, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(23, 6, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(24, 6, 3, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(25, 7, 0, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(26, 7, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(27, 7, 2, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(28, 7, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(29, 8, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(30, 8, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(31, 8, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(32, 8, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(33, 9, 0, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(34, 9, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(35, 9, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(36, 9, 3, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(37, 10, 0, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(38, 10, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(39, 10, 2, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(40, 10, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(41, 11, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(42, 11, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(43, 11, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(44, 11, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(45, 12, 0, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(46, 12, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(47, 12, 2, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(48, 12, 3, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(49, 13, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(50, 13, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(51, 13, 2, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(52, 13, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(53, 14, 0, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(54, 14, 1, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(55, 14, 2, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(56, 14, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(57, 15, 0, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(58, 15, 1, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(59, 15, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(60, 15, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `barberphotos`
--

CREATE TABLE `barberphotos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barberphotos`
--

INSERT INTO `barberphotos` (`id`, `id_barber`, `url`) VALUES
(1, 1, '4.png'),
(2, 1, '3.png'),
(3, 1, '4.png'),
(4, 1, '5.png'),
(5, 2, '3.png'),
(6, 2, '5.png'),
(7, 2, '3.png'),
(8, 2, '2.png'),
(9, 3, '2.png'),
(10, 3, '3.png'),
(11, 3, '5.png'),
(12, 3, '2.png'),
(13, 4, '4.png'),
(14, 4, '4.png'),
(15, 4, '1.png'),
(16, 4, '5.png'),
(17, 5, '3.png'),
(18, 5, '5.png'),
(19, 5, '2.png'),
(20, 5, '2.png'),
(21, 6, '3.png'),
(22, 6, '1.png'),
(23, 6, '1.png'),
(24, 6, '5.png'),
(25, 7, '5.png'),
(26, 7, '3.png'),
(27, 7, '3.png'),
(28, 7, '1.png'),
(29, 8, '3.png'),
(30, 8, '3.png'),
(31, 8, '4.png'),
(32, 8, '5.png'),
(33, 9, '5.png'),
(34, 9, '3.png'),
(35, 9, '5.png'),
(36, 9, '5.png'),
(37, 10, '5.png'),
(38, 10, '3.png'),
(39, 10, '5.png'),
(40, 10, '3.png'),
(41, 11, '4.png'),
(42, 11, '2.png'),
(43, 11, '3.png'),
(44, 11, '3.png'),
(45, 12, '4.png'),
(46, 12, '4.png'),
(47, 12, '3.png'),
(48, 12, '5.png'),
(49, 13, '2.png'),
(50, 13, '3.png'),
(51, 13, '2.png'),
(52, 13, '3.png'),
(53, 14, '5.png'),
(54, 14, '5.png'),
(55, 14, '3.png'),
(56, 14, '2.png'),
(57, 15, '3.png'),
(58, 15, '4.png'),
(59, 15, '2.png'),
(60, 15, '3.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `barberreviews`
--

CREATE TABLE `barberreviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `rate` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `barbers`
--

CREATE TABLE `barbers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `stars` double(8,2) NOT NULL DEFAULT 0.00,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barbers`
--

INSERT INTO `barbers` (`id`, `name`, `avatar`, `stars`, `latitude`, `longitude`) VALUES
(1, 'Diogo Santos', '1.png', 3.00, '-23.5430907', '-46.6982759'),
(2, 'Paulo Diogo', '3.png', 4.60, '-23.5330907', '-46.6682759'),
(3, 'Gabriela Diogo', '1.png', 4.70, '-23.5430907', '-46.6682759'),
(4, 'Jeremias Luiz', '3.png', 2.40, '-23.5730907', '-46.6282759'),
(5, 'José Alvaro', '2.png', 4.90, '-23.5330907', '-46.6082759'),
(6, 'Gabriel Santos', '1.png', 3.10, '-23.5330907', '-46.6582759'),
(7, 'Leticia Diogo', '2.png', 3.80, '-23.5530907', '-46.6982759'),
(8, 'Boniek Mimoza', '2.png', 4.30, '-23.5830907', '-46.6382759'),
(9, 'Luiz Santos', '1.png', 3.90, '-23.5030907', '-46.6282759'),
(10, 'José Diogo', '1.png', 4.00, '-23.5530907', '-46.6782759'),
(11, 'Gabriela Sousa', '3.png', 4.10, '-23.5430907', '-46.6682759'),
(12, 'Jeremias Santos', '4.png', 4.40, '-23.5530907', '-46.6882759'),
(13, 'Luiz Limiro', '1.png', 4.00, '-23.5730907', '-46.6382759'),
(14, 'Jeremias Sousa', '4.png', 3.50, '-23.5530907', '-46.6482759'),
(15, 'Pedro Luiz', '2.png', 3.50, '-23.5330907', '-46.6482759');

-- --------------------------------------------------------

--
-- Estrutura da tabela `barberservices`
--

CREATE TABLE `barberservices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barberservices`
--

INSERT INTO `barberservices` (`id`, `id_barber`, `name`, `price`) VALUES
(1, 1, 'Aparação de Pernas', 96.00),
(2, 1, 'Pintura de Unha', 84.34),
(3, 1, 'Corte de Progressiva', 86.47),
(4, 1, 'Progressiva de Limpeza de Pele', 4.47),
(5, 2, 'Pintura de Progressiva', 54.52),
(6, 2, 'Unha de Pernas', 90.26),
(7, 2, 'Limpeza de Pele de Limpeza de Pele', 96.16),
(8, 2, 'Limpeza de Pele de Corte Feminino', 80.85),
(9, 2, 'Corte de Unha', 2.54),
(10, 3, 'Aparação de Unha', 44.10),
(11, 3, 'Progressiva de Cabelo', 98.20),
(12, 3, 'Aparação de Corte Feminino', 60.53),
(13, 4, 'Unha de Pernas', 78.86),
(14, 4, 'Limpeza de Pele de Pernas', 40.13),
(15, 4, 'Corte de Cabelo', 98.10),
(16, 4, 'Progressiva de Pernas', 38.61),
(17, 4, 'Pintura de Progressiva', 98.45),
(18, 4, 'Aparação de Pernas', 43.65),
(19, 5, 'Aparação de Cabelo', 25.78),
(20, 5, 'Progressiva de Unha', 44.51),
(21, 5, 'Corte Feminino de Cabelo', 57.16),
(22, 5, 'Corte de Corte Feminino', 11.92),
(23, 6, 'Corte de Limpeza de Pele', 91.43),
(24, 6, 'Corte Feminino de Unha', 36.32),
(25, 6, 'Corte de Unha', 57.71),
(26, 6, 'Aparação de Unha', 75.87),
(27, 6, 'Corte de Limpeza de Pele', 11.66),
(28, 6, 'Limpeza de Pele de Limpeza de Pele', 16.21),
(29, 7, 'Limpeza de Pele de Limpeza de Pele', 45.57),
(30, 7, 'Corte Feminino de Limpeza de Pele', 48.10),
(31, 7, 'Pintura de Pernas', 61.42),
(32, 8, 'Pintura de Unha', 91.67),
(33, 8, 'Corte de Cabelo', 68.79),
(34, 8, 'Pintura de Pernas', 14.14),
(35, 8, 'Unha de Cabelo', 31.15),
(36, 8, 'Limpeza de Pele de Corte Feminino', 16.84),
(37, 9, 'Corte de Corte Feminino', 36.17),
(38, 9, 'Progressiva de Cabelo', 45.68),
(39, 9, 'Limpeza de Pele de Unha', 11.77),
(40, 9, 'Corte Feminino de Progressiva', 41.79),
(41, 9, 'Corte de Progressiva', 23.20),
(42, 9, 'Corte Feminino de Corte Feminino', 11.18),
(43, 10, 'Pintura de Progressiva', 42.42),
(44, 10, 'Limpeza de Pele de Limpeza de Pele', 53.89),
(45, 10, 'Corte Feminino de Pernas', 23.20),
(46, 10, 'Limpeza de Pele de Unha', 44.77),
(47, 11, 'Corte de Progressiva', 29.85),
(48, 11, 'Unha de Corte Feminino', 89.54),
(49, 11, 'Pintura de Limpeza de Pele', 84.13),
(50, 11, 'Pintura de Progressiva', 22.97),
(51, 11, 'Corte de Corte Feminino', 29.63),
(52, 11, 'Corte de Pernas', 10.37),
(53, 12, 'Corte de Unha', 22.61),
(54, 12, 'Progressiva de Cabelo', 41.89),
(55, 12, 'Corte Feminino de Unha', 56.67),
(56, 12, 'Corte de Limpeza de Pele', 62.57),
(57, 13, 'Aparação de Cabelo', 17.38),
(58, 13, 'Corte Feminino de Cabelo', 50.68),
(59, 13, 'Corte de Limpeza de Pele', 56.17),
(60, 14, 'Pintura de Pernas', 63.20),
(61, 14, 'Aparação de Cabelo', 29.89),
(62, 14, 'Limpeza de Pele de Unha', 37.69),
(63, 14, 'Pintura de Corte Feminino', 7.63),
(64, 15, 'Pintura de Pernas', 74.76),
(65, 15, 'Corte de Pernas', 81.48),
(66, 15, 'Aparação de Cabelo', 80.40);

-- --------------------------------------------------------

--
-- Estrutura da tabela `barbertestimonials`
--

CREATE TABLE `barbertestimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(8,2) NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barbertestimonials`
--

INSERT INTO `barbertestimonials` (`id`, `id_barber`, `name`, `rate`, `body`) VALUES
(1, 1, 'Diogo', 3.30, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(2, 1, 'Gabriela', 2.10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(3, 1, 'Diogo', 2.10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(4, 2, 'Luiz', 2.30, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(5, 2, 'Pedro', 2.30, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(6, 2, 'Boniek', 4.20, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(7, 3, 'Gabriela', 2.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(8, 3, 'Francisco', 3.50, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(9, 3, 'Luiz', 2.00, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(10, 4, 'José', 2.30, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(11, 4, 'Marcelo', 3.40, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(12, 4, 'Jeremias', 4.60, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(13, 5, 'Dirce', 3.50, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(14, 5, 'Gabriel', 2.80, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(15, 5, 'Gabriela', 2.30, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(16, 6, 'Jeremias', 2.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(17, 6, 'Leticia', 3.40, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(18, 6, 'Diogo', 2.30, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(19, 7, 'Luiz', 2.10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(20, 7, 'Jeremias', 3.20, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(21, 7, 'Marcelo', 4.20, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(22, 8, 'Thais', 3.50, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(23, 8, 'Diogo', 4.00, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(24, 8, 'Thais', 2.20, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(25, 9, 'Thais', 4.00, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(26, 9, 'José', 3.80, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(27, 9, 'Pedro', 3.10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(28, 10, 'Leticia', 3.60, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(29, 10, 'Paulo', 3.80, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(30, 10, 'Luiz', 4.20, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(31, 11, 'Thais', 4.30, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(32, 11, 'Gabriel', 3.20, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(33, 11, 'Amanda', 2.60, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(34, 12, 'José', 2.10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(35, 12, 'Pedro', 4.80, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(36, 12, 'Diogo', 3.50, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(37, 13, 'Leticia', 2.60, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(38, 13, 'Gabriela', 4.00, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(39, 13, 'Thais', 2.80, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(40, 14, 'Thais', 4.30, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(41, 14, 'José', 4.40, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(42, 14, 'Luiz', 2.40, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(43, 15, 'Thais', 2.60, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(44, 15, 'Paulo', 2.00, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),
(45, 15, 'Thais', 3.10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_03_06_194203_create_all_tables', 1),
(3, '2022_03_07_175127_alter_appoitment_table', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `userappointments`
--

CREATE TABLE `userappointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_barber` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  `ap_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `userappointments`
--

INSERT INTO `userappointments` (`id`, `id_user`, `id_barber`, `id_service`, `ap_datetime`) VALUES
(1, 2, 3, 11, '2022-02-08 12:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `userfavorites`
--

CREATE TABLE `userfavorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_barber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `userfavorites`
--

INSERT INTO `userfavorites` (`id`, `id_user`, `id_barber`) VALUES
(2, 2, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `password`) VALUES
(2, 'tess', '0654172e6cb1610d7bb7edbf16fec04d.jpg', 'aa@gmail.com', '$2y$10$MMfhK/baqV3vITglBZ6CpeelMSeMJnD61KJfooTwRXIA./kEgG15O');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `barberavailability`
--
ALTER TABLE `barberavailability`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barberphotos`
--
ALTER TABLE `barberphotos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barberreviews`
--
ALTER TABLE `barberreviews`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barbers`
--
ALTER TABLE `barbers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barberservices`
--
ALTER TABLE `barberservices`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barbertestimonials`
--
ALTER TABLE `barbertestimonials`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `userappointments`
--
ALTER TABLE `userappointments`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `userfavorites`
--
ALTER TABLE `userfavorites`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `barberavailability`
--
ALTER TABLE `barberavailability`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de tabela `barberphotos`
--
ALTER TABLE `barberphotos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de tabela `barberreviews`
--
ALTER TABLE `barberreviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `barbers`
--
ALTER TABLE `barbers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `barberservices`
--
ALTER TABLE `barberservices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de tabela `barbertestimonials`
--
ALTER TABLE `barbertestimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `userappointments`
--
ALTER TABLE `userappointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `userfavorites`
--
ALTER TABLE `userfavorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
