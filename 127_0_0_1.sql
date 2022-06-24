-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Jun-2022 às 22:13
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `napalma`
--
CREATE DATABASE IF NOT EXISTS `napalma` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `napalma`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dados`
--

CREATE TABLE `dados` (
  `id` int(10) NOT NULL,
  `tipo` varchar(25) NOT NULL,
  `data` date NOT NULL,
  `alcance` int(255) NOT NULL,
  `curtidas` int(255) NOT NULL,
  `comentarios` int(255) NOT NULL,
  `seguidores` int(255) NOT NULL,
  `seguindo` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dados`
--

INSERT INTO `dados` (`id`, `tipo`, `data`, `alcance`, `curtidas`, `comentarios`, `seguidores`, `seguindo`) VALUES
(1, 'instagram', '2022-06-23', 200, 172, 83, 255, 10),
(2, 'facebook', '2022-06-23', 177, 177, 112, 200, 44),
(3, 'instagram', '2022-06-24', 220, 199, 85, 255, 255),
(4, 'facebook', '2022-06-24', 220, 225, 235, 245, 255);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(10) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(35) NOT NULL,
  `consultor` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario`, `senha`, `consultor`) VALUES
(1, 'gustavo', 'gustavo123', 0),
(5, 'usuarioteste', '$2y$10$khEbtdFf/jmuMAkA7pB/T.PM7Vig', 0),
(6, 'Borba', '$2y$10$hhLKcrqum0TkAU7Zy6AJlOUOlTbM', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `dados`
--
ALTER TABLE `dados`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `dados`
--
ALTER TABLE `dados`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
