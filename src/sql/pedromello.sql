-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Jan-2021 às 20:45
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

--
-- Extraindo dados da tabela `registrorgbd`
--

INSERT INTO `registrorgbd` (`id`, `NRG`, `Via`, `Isençao`, `Result`, `Usuario`, `Posto`, `NomeCompleto`, `NomePai`, `NomeMae`, `DataNasc`, `Cpf`, `Pis`, `Tel`, `Sexo`, `Instruçao`, `Profissao`, `EstadoCivil`, `Certidao`, `Comarca`, `Distrito`, `Livro`, `Folha`, `Termo`, `DataRegistro`, `DataCertidao`, `Altura`, `Cutis`, `CorCabelo`, `TipoCabelo`, `CorOlhos`, `TipoOlhos`, `Barba`, `Bigode`, `Anomalias`, `Numero`, `Endereco`, `Complemento`, `Bairro`, `Cep`, `Estado`, `Cidade`, `Observaçao`) VALUES
('0b954b6d-d278-45fe-b1e9-0c7d806beb7c', '8581255566', '1º VIA', 'isento', '0,00', 'Patrick', 'Centenario', 'Patrick Rocha', 'Andre luis', 'Cristina Cunha Rocha Moreira', '1990-01-05', '85826134585', '1505', '71985429908', 'Masculino', '2º Grau completo', 'Outros', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '151515', '', 'aweawe', '2021-01-12', '2021-01-12', '1.80', 'branco', 'castanhos', '', 'Castanhos', 'Redondos', '', 'Fino', 'nenhuma', '12', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo Branco', '41320615', 'BA', 'Salvador', ''),
('0bf51692-923e-4581-9931-47074528b38c', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('16e559d9-0649-4394-8407-6935cc2bedca', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('1a52764b-b256-45e7-bcba-8bcb6d50a936', '8581255566', '1º VIA', 'isento', '0,00', 'Patrick', 'Centenario', 'Patrick Rocha', 'Andre luis', 'Cristina Cunha Rocha Moreira', '1990-01-05', '85826134585', '1505', '71985429908', 'Feminino', '2º Grau completo', 'Outros', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '151515', '', 'aweawe', '2021-01-12', '2021-01-12', '1.80', 'branco', 'castanhos', '', 'Castanhos', 'Redondos', '', 'Fino', 'nenhuma', '12', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo Branco', '41320615', 'BA', 'Salvador', ''),
('1aa78401-b48a-4444-9d2c-2cd96bf79c2a', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('29e5e55d-006b-4f43-8335-5fccfcf28c3f', '8581255566', '1º VIA', 'isento', '0,00', 'Patrick', 'Centenario', 'Patrick Rocha', 'Andre luis', 'Cristina Cunha Rocha Moreira', '1990-01-05', '85826134585', '1505', '71985429908', 'Masculino', '2º Grau completo', 'Outros', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '151515', '', 'aweawe', '2021-01-12', '2021-01-12', '1.80', 'branco', 'castanhos', '', 'Castanhos', 'Redondos', '', 'Fino', 'nenhuma', '12', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo Branco', '41320615', 'BA', 'Salvador', ''),
('2fe11de2-b923-48c4-bc15-77d17657f610', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('31e68f7f-d577-47fb-a23e-906607daff6d', '8581255566', '1º VIA', 'isento', '0,00', 'Patrick', 'salvador', 'Patrick Rocha Moreira', 'Moreira', 'Patrick Rocha Moreira', '2021-01-06', '85826134585', '25646541', '71985429908', 'Feminino', 'Não Alfabetizado', 'Cozinheiro', 'Solteiro', 'Nasc.', 'Ssa', 'ba', '156165', '', 'kopeajioej', '2020-12-30', '2021-01-01', '1.80', 'pardo', 'preto', '', 'Pretos', 'Grandes', 'Cheia', 'Rapado', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'wewaeaweawe'),
('33e1998d-b0f9-455f-b927-3ca26a9f0b00', '8581255566', '1º VIA', 'isento', '0,00', 'Patrick', 'salvador', 'Patrick Rocha Moreira', 'Moreira', 'Patrick Rocha Moreira', '2021-01-06', '85826134585', '25646541', '71985429908', 'Feminino', 'Não Alfabetizado', 'Cozinheiro', 'Solteiro', 'Nasc.', 'Ssa', 'ba', '156165', '', 'kopeajioej', '2020-12-30', '2021-01-01', '1.80', 'pardo', 'preto', '', 'Pretos', 'Grandes', 'Cheia', 'Rapado', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'wewaeaweawe'),
('3a6fc468-bb4b-4a15-b30c-fbe85697fe16', '8581255566', '1º VIA', 'isento', '0,00', 'Patrick', 'Centenario', 'Patrick Rocha Moreira', 'Andre luis', 'Cristina Cunha Rocha Moreira', '1990-01-05', '85826134585', '1505', '71985429908', 'Masculino', '2º Grau completo', 'Outros', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '151515', '', 'aweawe', '2021-01-12', '2021-01-12', '1.80', 'branco', 'castanhos', '', 'Castanhos', 'Redondos', '', 'Fino', '', '12', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo Branco', '41320615', '0', '0', ''),
('3d173a53-16d5-4740-802a-b8befb340270', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('40c5f40e-b48f-4181-a213-63a2830b1554', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('42d66378-1d8f-42f9-ac68-e7cf98795ddf', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('4c679a34-1422-4008-84f8-c9641a22523f', '8581255566', '1º VIA', 'isento', '0,00', 'Patrick', 'Centenario', 'Patrick Rocha', 'Andre luis', 'Cristina Cunha Rocha Moreira', '1990-01-05', '85826134585', '1505', '71985429908', 'Masculino', '2º Grau completo', 'Outros', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '151515', '', 'aweawe', '2021-01-12', '2021-01-12', '1.80', 'branco', 'castanhos', '', 'Castanhos', 'Redondos', '', 'Fino', 'nenhuma', '12', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo Branco', '41320615', 'BA', 'Salvador', ''),
('50daad68-129f-4d5a-854e-7df4bb728912', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('5ce2beaa-6efd-438a-aead-bc0dc609c00c', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('5fcd4d52-2666-4765-a981-63359e756f90', '8581255566', '1º VIA', 'isento', '0,00', 'Patrick', 'salvador', 'Patrick Rocha Moreira', 'Moreira', 'Patrick Rocha Moreira', '2021-01-06', '85826134585', '25646541', '71985429908', 'Feminino', 'Não Alfabetizado', 'Cozinheiro', 'Solteiro', 'Nasc.', 'Ssa', 'ba', '156165', '', 'kopeajioej', '2020-12-30', '2021-01-01', '1.80', 'pardo', 'preto', '', 'Pretos', 'Grandes', 'Cheia', 'Rapado', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'wewaeaweawe'),
('610fea98-b461-413f-99ee-84ad601c6988', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('671c2661-64b1-4c7b-81d2-6846656d1c65', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('71476ffa-a5d6-4974-a859-9bcd7d90755e', '8581255566', '1º VIA', 'isento', '0,00', 'Patrick', 'salvador', 'Patrick Rocha Moreira', 'Moreira', 'Patrick Rocha Moreira', '2021-01-06', '85826134585', '25646541', '71985429908', 'Feminino', 'Não Alfabetizado', 'Cozinheiro', 'Solteiro', 'Nasc.', 'Ssa', 'ba', '156165', '', 'kopeajioej', '2020-12-30', '2021-01-01', '1.80', 'pardo', 'preto', '', 'Pretos', 'Grandes', 'Cheia', 'Rapado', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'wewaeaweawe'),
('727a8da0-abd1-42d3-8f38-e3019d97c7fb', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('77c1f0e5-9a83-43d4-833f-ca073fe77689', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('9cbc2f66-e272-462f-9804-0842752ee4ce', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('bdc5854f-4a2f-41ef-aaed-1d471a860bef', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('bf0f3e6c-89d0-4a42-82dd-bf4b932cb57f', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('d0141f61-ca43-4ed8-89a0-056254f73e28', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('d283fa04-08a4-45a0-85c4-de60e31771d0', '8581255566', '1º VIA', 'isento', '0,00', 'Patrick', 'salvador', 'Patrick Rocha Moreira', 'Moreira', 'Patrick Rocha Moreira', '2021-01-06', '85826134585', '25646541', '71985429908', 'Feminino', 'Não Alfabetizado', 'Cozinheiro', 'Solteiro', 'Nasc.', 'Ssa', 'ba', '156165', '', 'kopeajioej', '2020-12-30', '2021-01-01', '1.80', 'pardo', 'preto', '', 'Pretos', 'Grandes', 'Cheia', 'Rapado', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'wewaeaweawe'),
('d2dddc6a-fc7f-4673-93b1-cb7c10d3f6d2', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('d8792e7f-788d-4f22-98a6-560168bd8b98', '8581255566', '1º VIA', 'isento', '0,00', 'Patrick', 'Centenario', 'Patrick Rocha', 'Andre luis', 'Cristina Cunha Rocha Moreira', '1990-01-05', '85826134585', '1505', '71985429908', 'Masculino', '2º Grau completo', 'Outros', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '151515', '', 'aweawe', '2021-01-12', '2021-01-12', '1.80', 'branco', 'castanhos', '', 'Castanhos', 'Redondos', '', 'Fino', 'nenhuma', '12', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo Branco', '41320615', 'BA', 'Salvador', ''),
('db1f30de-2e84-494e-8624-b0b59b4ec6be', '8581255566', '1º VIA', 'isento', '0,00', 'Patrick', 'Centenario', 'Patrick Rocha', 'Andre luis', 'Cristina Cunha Rocha Moreira', '1990-01-05', '85826134585', '1505', '71985429908', 'Masculino', '2º Grau completo', 'Outros', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '151515', '', 'aweawe', '2021-01-12', '2021-01-12', '1.80', 'branco', 'castanhos', '', 'Castanhos', 'Redondos', '', 'Fino', 'nenhuma', '12', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo Branco', '41320615', 'BA', 'Salvador', ''),
('f90ba1f6-0934-4bb0-a3ce-a0b57a1bf40e', '8581255566', 'RET. JUDICIAL', 'pago', '37,77', 'Patrick', 'salvador', 'Patrick Rocha', 'Cristina', 'Andre luis', '1091-01-13', '858261', '6454864', '712964864', 'Feminino', '2º Grau completo', 'Advogado', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '15656486486', '', 'Termo teste', '2021-01-28', '2021-01-27', '1.80', 'pardo', 'preto', '', 'Duas Cores', 'Grandes', 'Rala', 'Fino', 'nenhuma', '85', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo', '41320615', 'BA', 'Salvador', 'Teste observação'),
('fa2aef34-ef8b-472b-b75d-320603901201', '8581255566', '1º VIA', 'isento', '0,00', 'Patrick', 'Centenario', 'Patrick Rocha', 'Andre luis', 'Cristina Cunha Rocha Moreira', '1990-01-05', '85826134585', '1505', '71985429908', 'Masculino', '2º Grau completo', 'Outros', 'Solteiro', 'Nasc.', 'Salvador', 'BA', '151515', '', 'aweawe', '2021-01-12', '2021-01-12', '1.80', 'branco', 'castanhos', '', 'Castanhos', 'Redondos', '', 'Fino', 'nenhuma', '12', 'Rua Pasto Samuel Oliveira', 'Casa', 'Castelo Branco', '41320615', 'BA', 'Salvador', '');

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
('2470524d-9f32-4aa2-9010-5325ee9b2ff7', 'Patrick', 'ptk@gmail.com', NULL, '$2a$08$Li/.yGCaho8IecAfxCUhzO7bjG7wmG/QtaEwGSnuB6IrGgbdB1IA.', '1610471749035-Fotografo.jpg');

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
