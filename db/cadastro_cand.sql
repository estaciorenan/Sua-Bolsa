-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Abr-2020 às 14:13
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro_cand`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `ID` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cpf` varchar(12) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contato` varchar(20) DEFAULT NULL,
  `curso` varchar(50) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `lancamento` timestamp NULL DEFAULT curdate()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`ID`, `nome`, `cpf`, `email`, `contato`, `curso`, `cidade`, `lancamento`) VALUES
(44, 'EstÃ¡cio Renan de Sousa Rodrigues', '04162905312', 'estacioij@gmail.com', '88999827265', 'analise-e-desenvolvimento-de-sistemas', 'caucaia', '2020-03-31 23:48:36'),
(45, 'Creta Lania', '01001001001', 'meuemail@mail.com', '99663322', 'design-de-interiores', 'fortaleza', '2020-04-01 00:12:16'),
(46, 'EstÃ¡cio Renan ', '04162905312', 'estacioij@gmail.com', '88999827265', 'ciencias-economicas', 'caucaia', '2020-04-01 19:46:14'),
(47, 'EstÃ¡cio Renan ', '04162905312', 'meuemail@mail.com', '88999827265', 'comercio-exterior', 'fortaleza', '2020-04-02 23:24:59'),
(48, 'Bruna Costa Silva ', '99966633322', 'meuemail@mail.com', '99663322', 'biblioteconomia-para-licenciados', 'caucaia', '2020-04-05 19:27:28'),
(49, 'EstÃ¡cio Renan de Sousa Rodrigues', '01001001001', 'meuemail@mail.com', '88999827265', 'big-data-e-inteligencia-analitica', 'caucaia', '2020-04-06 06:25:22'),
(50, 'Fabia Melo Tello', '78945612300', 'meuemail@mail.com', '8599966332255', 'biblioteconomia', 'fortaleza', '2020-04-08 04:24:37'),
(51, 'EstÃ¡cio Renan ', '04162905312', 'meuemail@mail.com', '88999827265', 'defesa-medica-hospitalar', 'caucaia', '2020-04-08 04:25:08'),
(52, 'EstÃ¡cio Renan ', '04162905312', 'meuemail@mail.com', '88999827265', 'comunicacao-institucional', 'caucaia', '2020-04-08 04:26:32'),
(53, 'EstÃ¡cio Renan ', '04162905312', 'meuemail@mail.com', '88999827265', 'educacao-fisica-bachar', 'caucaia', '2020-04-08 04:28:26'),
(54, 'EstÃ¡cio Renan ', '04162905312', 'meuemail@mail.com', '88999827265', 'comunicacao-institucional', 'caucaia', '2020-04-08 04:29:51'),
(55, 'EstÃ¡cio Renan ', '04162905312', 'meuemail@mail.com', '88999827265', 'analise-e-desenvolvimento-de-sistemas', 'fortaleza', '2020-04-08 05:30:00'),
(56, 'Creta Lania', '04162905312', 'meuemail@mail.com', '88999827265', 'construcao-de-edificios', 'fortaleza', '2020-04-14 02:17:06');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
