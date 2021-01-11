-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Jan-2021 às 19:19
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
-- Estrutura da tabela `cidadão`
--

CREATE TABLE `cidadão` (
  `id` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(100) NOT NULL,
  `documentos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

CREATE TABLE `documentos` (
  `id_documentos` varchar(100) NOT NULL,
  `certidao_nascimento` varchar(255) DEFAULT NULL,
  `nome_social` varchar(255) DEFAULT NULL,
  `relatorio_medico` varchar(255) DEFAULT NULL,
  `tipagem_sanguinea` varchar(255) DEFAULT NULL,
  `cidadao_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `registrorgbd`
--

CREATE TABLE `registrorgbd` (
  `id` varchar(100) NOT NULL,
  `NRG` varchar(100) NOT NULL,
  `Via` varchar(100) NOT NULL,
  `Isençao` varchar(100) NOT NULL,
  `Result` varchar(100) NOT NULL,
  `Usuario` varchar(100) NOT NULL,
  `Posto` varchar(100) NOT NULL,
  `NomeCompleto` varchar(100) NOT NULL,
  `NomePai` varchar(100) NOT NULL,
  `NomeMae` varchar(100) NOT NULL,
  `DataNasc` varchar(100) NOT NULL,
  `Cpf` varchar(100) NOT NULL,
  `Pis` varchar(100) NOT NULL,
  `Tel` varchar(100) NOT NULL,
  `Sexo` varchar(100) NOT NULL,
  `Instruçao` varchar(100) NOT NULL,
  `Profissao` varchar(100) NOT NULL,
  `EstadoCivil` varchar(100) NOT NULL,
  `Certidao` varchar(100) NOT NULL,
  `Comarca` varchar(100) NOT NULL,
  `Distrito` varchar(100) NOT NULL,
  `Livro` varchar(100) NOT NULL,
  `Folha` varchar(100) NOT NULL,
  `Termo` varchar(100) NOT NULL,
  `DataRegistro` varchar(100) NOT NULL,
  `DataCertidao` varchar(100) NOT NULL,
  `Altura` varchar(100) NOT NULL,
  `Cutis` varchar(100) NOT NULL,
  `CorCabelo` varchar(100) NOT NULL,
  `TipoCabelo` varchar(100) NOT NULL,
  `CorOlhos` varchar(100) NOT NULL,
  `TipoOlhos` varchar(100) NOT NULL,
  `Barba` varchar(100) NOT NULL,
  `Bigode` varchar(100) NOT NULL,
  `Anomalias` varchar(255) NOT NULL,
  `Numero` varchar(100) NOT NULL,
  `Endereco` varchar(100) NOT NULL,
  `Complemento` varchar(100) NOT NULL,
  `Bairro` varchar(100) NOT NULL,
  `Cep` varchar(100) NOT NULL,
  `Estado` varchar(100) NOT NULL,
  `Cidade` varchar(100) NOT NULL,
  `Observaçao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` varchar(100) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `posto` varchar(255) DEFAULT NULL,
  `senha` varchar(255) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `posto`, `senha`, `imagem`) VALUES
('8de50693-1058-4dbf-b2f9-4cdb21232a5c', 'Patrick', 'ptk@gmail.com', 'Salvador', '$2a$08$qJqBzJ10ulZd9VYAS/ZVjeft7pBpyJM6JgnubWBLYMmuRzkPOS9su', '1610021546370-pexels-harry-cooke-6194910.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cidadão`
--
ALTER TABLE `cidadão`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentos` (`documentos`);

--
-- Índices para tabela `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id_documentos`),
  ADD KEY `FK_CidadãoDoc` (`cidadao_id`);

--
-- Índices para tabela `registrorgbd`
--
ALTER TABLE `registrorgbd`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `documentos`
--
ALTER TABLE `documentos`
  ADD CONSTRAINT `FK_CidadãoDoc` FOREIGN KEY (`cidadao_id`) REFERENCES `cidadão` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
