-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Fev-2021 às 23:26
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pedromello`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `csvs`
--

CREATE TABLE `csvs` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(255) NOT NULL,
  `VIA` varchar(255) NOT NULL,
  `RG` int(255) NOT NULL,
  `SEXO` varchar(255) NOT NULL,
  `FICHA` varchar(255) NOT NULL,
  `IDENTIFICADOR` varchar(255) NOT NULL,
  `STATUSCARTEIRA` varchar(255) NOT NULL,
  `COORDENADOR` varchar(255) NOT NULL,
  `CPFCNPJ` varchar(255) NOT NULL,
  `STATUS` varchar(255) NOT NULL,
  `NCONTROLE` int(100) NOT NULL,
  `DTIDENTIFICACAO` date NOT NULL,
  `ROTA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `csvs`
--

INSERT INTO `csvs` (`ID`, `NOME`, `VIA`, `RG`, `SEXO`, `FICHA`, `IDENTIFICADOR`, `STATUSCARTEIRA`, `COORDENADOR`, `CPFCNPJ`, `STATUS`, `NCONTROLE`, `DTIDENTIFICACAO`, `ROTA`) VALUES
(17, 'ABDIAS DE JESUS CARDOSO', '2', 1543695000, 'M', '320200002529P', 'emneto', 'Carteira j? digitalizada', '', '', '', 0, '2021-05-10', ''),
(18, 'ACACIO LE?O DOS SANTOS JUNIOR', 'D', 674168887, 'M', '320200102295Q', 'jrsanto', 'Carteira j? digitalizada', '', '', '', 0, '2021-05-07', ''),
(19, 'ACELINO BISPO DOS SANTOS', 'D', 46346910, 'M', '320200102421H', 'msperei2', 'Carteira j? digitalizada', '', '', '', 0, '0000-00-00', ''),
(20, 'ACSA MELINDA RAMOS MARINHO', '1', 2147483647, 'F', '320200102807P', 'msperei2', 'Carteira j? digitalizada', '', '', '', 0, '0000-00-00', ''),
(21, 'ADAILTON DE JESUS ARAUJO', 'D', 1006190376, 'M', '320200102692R', 'acjunio1', 'Carteira j? digitalizada', '', '', '', 0, '0000-00-00', ''),
(22, 'ADAILTON NASCIMENTO DOS SANTOS', 'D', 1317170490, 'M', '320200028465W', 'pclsanto', 'Carteira j? digitalizada', '', '', '', 0, '0000-00-00', ''),
(23, 'AD?O DIAS DA SILVA', 'D', 565635409, 'M', '320200028915W', 'mafsanto', 'Carteira j? digitalizada', '', '', '', 0, '0000-00-00', ''),
(24, 'AD?O MOREIRA DE SOUZA', '1', 2147483647, 'M', '320200028312N', 'hcsilva', 'Carteira j? digitalizada', '', '', '', 0, '0000-00-00', ''),
(25, 'ADAUTO ANUNCIA??O DOS SANTOS', 'D', 394977718, 'M', '320200002315I', 'emneto', 'Carteira j? digitalizada', '', '', '', 0, '0000-00-00', ''),
(26, 'ADEILDO CONCEI??O', '1', 2147483647, 'M', '320200085136U', 'tsjesus', 'Carteira j? digitalizada', '', '', '', 0, '0000-00-00', ''),
(27, 'ADEILSON CHAVES DA SILVA', 'D', 1536471240, 'M', '320200102858V', 'efsanto3', 'Carteira j? digitalizada', '', '', '', 0, '0000-00-00', ''),
(28, 'ADELITA SOUSA', 'D', 1003357806, 'F', '320200102721K', 'emneto', 'Carteira j? digitalizada', '', '', '', 0, '0000-00-00', ''),
(29, 'ADELITO ANT?NIO SANTOS DE JESUS', 'D', 651530148, 'M', '320200085357Z', 'ACJUNIO1', 'Carteira j? digitalizada', '', '', '', 0, '0000-00-00', ''),
(30, 'ADELMO PINHO DA SILVA', '2', 1326782339, 'M', '320200085303Q', 'TSJESUS', 'Carteira j? digitalizada', '', '', '', 0, '0000-00-00', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `csvs`
--
ALTER TABLE `csvs`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `csvs`
--
ALTER TABLE `csvs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
