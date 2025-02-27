-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 27, 2025 at 10:37 AM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `afonso40179`
--

-- --------------------------------------------------------

--
-- Table structure for table `Avaliacao`
--

CREATE TABLE `Avaliacao` (
  `ID_Avaliacao` bigint UNSIGNED NOT NULL,
  `ID_Reserva` bigint UNSIGNED NOT NULL,
  `ComentarioAvaliacao` text NOT NULL,
  `Estrelas` int NOT NULL,
  `Data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Avaliacao`
--

INSERT INTO `Avaliacao` (`ID_Avaliacao`, `ID_Reserva`, `ComentarioAvaliacao`, `Estrelas`, `Data`) VALUES
(4, 4, 'Estadia incrível! Comida maravilhosa!', 5, '2025-02-18'),
(5, 5, 'Boa estadia. Otimas massagens!', 3, '2025-02-05'),
(6, 9, 'Pior estadia de sempre. Quarto infestado de ratos!', 1, '2025-01-25'),
(7, 6, 'ESTADIA FANTÁSTICA!!!!', 5, '2025-02-02'),
(8, 11, 'Ótima piscina, e bom ginásio', 4, '2025-01-19'),
(9, 12, 'A estadia não foi má, tirando a parte onde encontrei uma mosca na minha sopa...', 2, '2025-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `Cliente`
--

CREATE TABLE `Cliente` (
  `ID_Cliente` bigint UNSIGNED NOT NULL,
  `NomeCliente` varchar(100) NOT NULL,
  `DataNascCliente` date NOT NULL,
  `EmailCliente` varchar(50) NOT NULL,
  `NumTelefoneCliente` varchar(13) NOT NULL,
  `EnderecoCliente` varchar(80) NOT NULL,
  `FotoCliente` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Cliente`
--

INSERT INTO `Cliente` (`ID_Cliente`, `NomeCliente`, `DataNascCliente`, `EmailCliente`, `NumTelefoneCliente`, `EnderecoCliente`, `FotoCliente`, `Password`) VALUES
(3, 'Afonso Costa', '2002-01-01', 'afonsocosta@gmail.com', '123456789', 'Cacém', 'imagens/users/quarto1.jpg', '8e38b26524e2caaef6612a2b01313ce9'),
(4, 'Paulo Aboim', '1987-04-02', 'pauloaboim@yahoo.com', '969 876 543', 'Belém', 'imagens/users/user1.png', '8e38b26524e2caaef6612a2b01313ce9'),
(5, 'Joana Lopes', '2001-01-18', 'joanalopes@gmail.com', '97', 'Escola', 'imagens/users/user1.png', '8e38b26524e2caaef6612a2b01313ce9'),
(6, 'Diogo Costa', '1974-10-11', 'diogocosta@sapo.pt', '969 876 543', 'Rio de Mouro', 'imagens/users/user1.png', '8e38b26524e2caaef6612a2b01313ce9'),
(7, 'Maria Ferreira', '1981-12-30', 'mariaferreira@gmail.com', '969 876 543', 'Massamá', 'imagens/users/user1.png', '8e38b26524e2caaef6612a2b01313ce9'),
(19, 'Bernardo Bernardete', '1111-11-11', 'bernardo@gmail.com', '999999999', 'Sintra', 'imagens/users/edit.png', '8e38b26524e2caaef6612a2b01313ce9'),
(21, 'Joana Fernanda', '2000-11-11', 'joana@gmail.com', '123456789', 'Tapada das Mercês', 'imagens/users/user1.png', '8e38b26524e2caaef6612a2b01313ce9'),
(22, 'Afonso Miguel', '2006-12-17', 'afonso@gmail.com', '123456789', 'Rio de Mouro', 'imagens/users/dropdown-full.png', 'd41d8cd98f00b204e9800998ecf8427e'),
(23, 'Afonso Costa', '2000-01-02', 'afonso.costa@gmail.com', '961 234 567', 'Sintra', 'imagens/users/user1.png', '8e38b26524e2caaef6612a2b01313ce9');

-- --------------------------------------------------------

--
-- Table structure for table `Fatura`
--

CREATE TABLE `Fatura` (
  `ID_Fatura` bigint UNSIGNED NOT NULL,
  `ID_Cliente` bigint UNSIGNED NOT NULL,
  `DataFatura` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Fatura`
--

INSERT INTO `Fatura` (`ID_Fatura`, `ID_Cliente`, `DataFatura`) VALUES
(5, 5, '2024-10-14'),
(6, 7, '2024-09-13'),
(7, 7, '2024-09-05'),
(8, 5, '2024-08-04'),
(9, 6, '2024-09-30'),
(10, 4, '2024-10-05'),
(11, 4, '2024-10-19'),
(12, 4, '2024-10-02'),
(13, 5, '2024-10-14');

-- --------------------------------------------------------

--
-- Table structure for table `FotoQuarto`
--

CREATE TABLE `FotoQuarto` (
  `ID_FotoQuarto` bigint NOT NULL,
  `NomeFoto` varchar(300) NOT NULL,
  `NumQuarto` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `FotoQuarto`
--

INSERT INTO `FotoQuarto` (`ID_FotoQuarto`, `NomeFoto`, `NumQuarto`) VALUES
(1, 'imagens/quartos/quarto3.jpg', 17),
(2, 'imagens/quartos/quarto2.jpg', 17);

-- --------------------------------------------------------

--
-- Table structure for table `ItemFatura`
--

CREATE TABLE `ItemFatura` (
  `ID_Fatura` bigint UNSIGNED NOT NULL,
  `ID_Reserva` bigint UNSIGNED NOT NULL,
  `ID_ServicoReserva` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ItemFatura`
--

INSERT INTO `ItemFatura` (`ID_Fatura`, `ID_Reserva`, `ID_ServicoReserva`) VALUES
(5, 4, 4),
(6, 8, 7),
(6, 9, 7),
(7, 10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `IVA`
--

CREATE TABLE `IVA` (
  `ID_IVA` bigint UNSIGNED NOT NULL,
  `DesignacaoIVA` varchar(30) NOT NULL,
  `ValorIVA` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `IVA`
--

INSERT INTO `IVA` (`ID_IVA`, `DesignacaoIVA`, `ValorIVA`) VALUES
(1, 'Taxa Reduzida', '10.00'),
(2, 'Taxa Intermédia', '13.00'),
(3, 'Taxa Normal', '23.00');

-- --------------------------------------------------------

--
-- Table structure for table `Quarto`
--

CREATE TABLE `Quarto` (
  `NumQuarto` bigint UNSIGNED NOT NULL,
  `ID_TipoQuarto` bigint UNSIGNED NOT NULL,
  `EstadoQuarto` varchar(20) NOT NULL,
  `FotoQuarto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Quarto`
--

INSERT INTO `Quarto` (`NumQuarto`, `ID_TipoQuarto`, `EstadoQuarto`, `FotoQuarto`) VALUES
(4, 10, 'Ocupado', 'imagens/quartos/individual.jpg'),
(5, 11, 'Livre', 'imagens/quartos/4pessoas.jpg'),
(6, 11, 'Ocupado', 'imagens/quartos/casal.jpg'),
(7, 7, 'Livre', 'imagens/quartos/casal2.jpg'),
(8, 9, 'Ocupado', 'imagens/quartos/vista2.jpg'),
(9, 8, 'Manutenção/Inativo', 'imagens/quartos/quartoIndividual.jfif'),
(10, 13, 'Ocupado', 'imagens/quartos/2pessoas.jpg'),
(11, 8, 'Livre', 'imagens/quartos/suiteLuxo.jpg'),
(12, 13, 'Livre', 'imagens/quartos/suitePresidencial.jpg'),
(14, 11, 'Ocupado', 'imagens/quartos/suiteDeluxe.jpg'),
(15, 9, 'Manutenção/Inativo', 'imagens/quartos/quartoFamiliar.jpg'),
(16, 7, 'Livre', 'imagens/quartos/quartoVista.jpg\r\n'),
(17, 7, 'Manutenção/Inativo', 'imagens/quartos/quarto1.jpg\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `Reserva`
--

CREATE TABLE `Reserva` (
  `ID_Reserva` bigint UNSIGNED NOT NULL,
  `ID_Cliente` bigint UNSIGNED NOT NULL,
  `NumQuarto` bigint UNSIGNED NOT NULL,
  `Data_CheckIn` date NOT NULL,
  `Data_CheckOut` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Reserva`
--

INSERT INTO `Reserva` (`ID_Reserva`, `ID_Cliente`, `NumQuarto`, `Data_CheckIn`, `Data_CheckOut`) VALUES
(4, 5, 9, '2024-10-28', '2024-10-29'),
(5, 4, 11, '2024-09-29', '2024-10-02'),
(6, 7, 10, '2024-10-12', '2024-10-13'),
(8, 3, 8, '2024-10-02', '2024-10-05'),
(9, 6, 5, '2024-07-11', '2024-07-18'),
(10, 6, 17, '2024-10-31', '2024-11-01'),
(11, 5, 17, '2024-10-11', '2024-10-14'),
(12, 7, 17, '2024-09-06', '2024-09-08');

-- --------------------------------------------------------

--
-- Table structure for table `Servico`
--

CREATE TABLE `Servico` (
  `ID_Servico` bigint UNSIGNED NOT NULL,
  `DescricaoServico` text NOT NULL,
  `PrecoPorNoiteServico` float(4,2) NOT NULL,
  `IVA` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Servico`
--

INSERT INTO `Servico` (`ID_Servico`, `DescricaoServico`, `PrecoPorNoiteServico`, `IVA`) VALUES
(7, 'Massagem', 50.00, 3),
(8, 'Spa', 35.00, 2),
(9, 'Treinos privados no ginásio', 40.00, 2),
(10, 'Viagens de Jeep', 25.00, 1),
(11, 'Aluguel de bicicletas', 20.00, 3),
(12, 'Mordomo pessoal', 70.00, 3),
(13, 'Uso do campo de golf', 30.00, 1),
(14, 'Aulas de culinária', 50.00, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ServicoReserva`
--

CREATE TABLE `ServicoReserva` (
  `ID_ServicoReserva` bigint UNSIGNED NOT NULL,
  `ID_Reserva` bigint UNSIGNED NOT NULL,
  `ID_Servico` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ServicoReserva`
--

INSERT INTO `ServicoReserva` (`ID_ServicoReserva`, `ID_Reserva`, `ID_Servico`) VALUES
(3, 6, 9),
(4, 10, 11),
(5, 5, 7),
(7, 12, 13),
(8, 8, 10);

-- --------------------------------------------------------

--
-- Table structure for table `TipoQuarto`
--

CREATE TABLE `TipoQuarto` (
  `ID_TipoQuarto` bigint UNSIGNED NOT NULL,
  `DescricaoTipo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PrecoPorNoiteQuarto` float(6,2) NOT NULL,
  `CapacidadeQuarto` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `TipoQuarto`
--

INSERT INTO `TipoQuarto` (`ID_TipoQuarto`, `DescricaoTipo`, `PrecoPorNoiteQuarto`, `CapacidadeQuarto`) VALUES
(7, 'Suíte para casal com duas casas de banho', 175.00, 2),
(8, 'Quarto individual com vista para o mar e com casa de banho', 70.00, 1),
(9, 'Quarto para família de 4 com vista para a cidade', 240.00, 4),
(10, 'Suíte presidencial para 1 pessoa', 200.00, 1),
(11, 'Quarto com beliche para 2 crianças', 65.00, 2),
(13, 'Quarto para casal sem casa de banho', 75.00, 2);

-- --------------------------------------------------------

--
-- Table structure for table `TipoUtilizador`
--

CREATE TABLE `TipoUtilizador` (
  `ID_TipoUti` bigint UNSIGNED NOT NULL,
  `dsgtputi` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `TipoUtilizador`
--

INSERT INTO `TipoUtilizador` (`ID_TipoUti`, `dsgtputi`) VALUES
(8, 'Admin'),
(9, 'Gestor'),
(10, 'Cliente'),
(11, 'Diretor'),
(12, 'Rececionista'),
(14, 'testee');

-- --------------------------------------------------------

--
-- Table structure for table `Utilizador`
--

CREATE TABLE `Utilizador` (
  `ID_Uti` bigint UNSIGNED NOT NULL,
  `ID_TipoUti` bigint UNSIGNED NOT NULL,
  `NomeUti` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EmailUti` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FotoUti` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Utilizador`
--

INSERT INTO `Utilizador` (`ID_Uti`, `ID_TipoUti`, `NomeUti`, `EmailUti`, `FotoUti`, `Password`) VALUES
(12, 9, 'Antónia Ferreira', 'antoniaferreira@sapo.pt', './imagens/user1.jpg', '2fc4a68635c26db1019047965180ce1b'),
(13, 9, 'Rodrigo Teixeira', 'rodrigoteixeira@gmail.com', './imagens/user1.jpg', '827ccb0eea8a706c4c34a16891f84e7b'),
(15, 10, 'Kevin Silva', 'kevinsilva@gmail.com', './imagens/user1.jpg', '827ccb0eea8a706c4c34a16891f84e7b'),
(16, 10, 'Gonçalo Alves', 'goncaloalves@sapo.pt', './imagens/user1.jpg', '827ccb0eea8a706c4c34a16891f84e7b'),
(17, 10, 'Filipe Nogeira', 'filipenogueira@yahoo.com', './imagens/user1.jpg', '827ccb0eea8a706c4c34a16891f84e7b'),
(18, 12, 'Manuela Josefina', 'manuelajosefina@yahoo.com', './imagens/user1.jpg', '827ccb0eea8a706c4c34a16891f84e7b'),
(19, 8, 'Afonso Costa', 'afonsocosta@gmail.com', './imagens/user1.jpg', '827ccb0eea8a706c4c34a16891f84e7b'),
(20, 8, 'teste', 'teste@gmail.com', './imagens/user1.jpg', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Avaliacao`
--
ALTER TABLE `Avaliacao`
  ADD PRIMARY KEY (`ID_Avaliacao`),
  ADD UNIQUE KEY `ID_Avaliacao` (`ID_Avaliacao`),
  ADD KEY `ID_Reserva` (`ID_Reserva`);

--
-- Indexes for table `Cliente`
--
ALTER TABLE `Cliente`
  ADD PRIMARY KEY (`ID_Cliente`),
  ADD UNIQUE KEY `ID_Utilizador` (`ID_Cliente`);

--
-- Indexes for table `Fatura`
--
ALTER TABLE `Fatura`
  ADD PRIMARY KEY (`ID_Fatura`),
  ADD UNIQUE KEY `ID_Fatura` (`ID_Fatura`),
  ADD KEY `ID_Utilizador` (`ID_Cliente`);

--
-- Indexes for table `FotoQuarto`
--
ALTER TABLE `FotoQuarto`
  ADD PRIMARY KEY (`ID_FotoQuarto`);

--
-- Indexes for table `ItemFatura`
--
ALTER TABLE `ItemFatura`
  ADD PRIMARY KEY (`ID_Fatura`,`ID_Reserva`),
  ADD UNIQUE KEY `ID_Reserva` (`ID_Reserva`),
  ADD KEY `ID_ServicoReserva` (`ID_ServicoReserva`);

--
-- Indexes for table `IVA`
--
ALTER TABLE `IVA`
  ADD UNIQUE KEY `ID_IVA` (`ID_IVA`);

--
-- Indexes for table `Quarto`
--
ALTER TABLE `Quarto`
  ADD PRIMARY KEY (`NumQuarto`),
  ADD UNIQUE KEY `NumQuarto` (`NumQuarto`),
  ADD KEY `ID_TipoQuarto` (`ID_TipoQuarto`);

--
-- Indexes for table `Reserva`
--
ALTER TABLE `Reserva`
  ADD PRIMARY KEY (`ID_Reserva`),
  ADD UNIQUE KEY `ID_Reserva` (`ID_Reserva`),
  ADD KEY `NumQuarto` (`NumQuarto`),
  ADD KEY `ID_Utilizador` (`ID_Cliente`);

--
-- Indexes for table `Servico`
--
ALTER TABLE `Servico`
  ADD PRIMARY KEY (`ID_Servico`),
  ADD UNIQUE KEY `ID_Servico` (`ID_Servico`),
  ADD KEY `IVA` (`IVA`);

--
-- Indexes for table `ServicoReserva`
--
ALTER TABLE `ServicoReserva`
  ADD PRIMARY KEY (`ID_ServicoReserva`),
  ADD UNIQUE KEY `ID_Reserva` (`ID_Reserva`),
  ADD KEY `ID_Servico` (`ID_Servico`);

--
-- Indexes for table `TipoQuarto`
--
ALTER TABLE `TipoQuarto`
  ADD PRIMARY KEY (`ID_TipoQuarto`),
  ADD UNIQUE KEY `ID_TipoQuarto` (`ID_TipoQuarto`);

--
-- Indexes for table `TipoUtilizador`
--
ALTER TABLE `TipoUtilizador`
  ADD PRIMARY KEY (`ID_TipoUti`),
  ADD UNIQUE KEY `ID_TipoUtil` (`ID_TipoUti`);

--
-- Indexes for table `Utilizador`
--
ALTER TABLE `Utilizador`
  ADD PRIMARY KEY (`ID_Uti`),
  ADD UNIQUE KEY `ID_Utilizador` (`ID_Uti`),
  ADD KEY `ID_TipoUtil` (`ID_TipoUti`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Avaliacao`
--
ALTER TABLE `Avaliacao`
  MODIFY `ID_Avaliacao` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Cliente`
--
ALTER TABLE `Cliente`
  MODIFY `ID_Cliente` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `Fatura`
--
ALTER TABLE `Fatura`
  MODIFY `ID_Fatura` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `FotoQuarto`
--
ALTER TABLE `FotoQuarto`
  MODIFY `ID_FotoQuarto` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Quarto`
--
ALTER TABLE `Quarto`
  MODIFY `NumQuarto` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `Reserva`
--
ALTER TABLE `Reserva`
  MODIFY `ID_Reserva` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `Servico`
--
ALTER TABLE `Servico`
  MODIFY `ID_Servico` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `TipoQuarto`
--
ALTER TABLE `TipoQuarto`
  MODIFY `ID_TipoQuarto` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `TipoUtilizador`
--
ALTER TABLE `TipoUtilizador`
  MODIFY `ID_TipoUti` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Utilizador`
--
ALTER TABLE `Utilizador`
  MODIFY `ID_Uti` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Avaliacao`
--
ALTER TABLE `Avaliacao`
  ADD CONSTRAINT `Avaliacao_ibfk_1` FOREIGN KEY (`ID_Reserva`) REFERENCES `Reserva` (`ID_Reserva`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Fatura`
--
ALTER TABLE `Fatura`
  ADD CONSTRAINT `Fatura_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `Cliente` (`ID_Cliente`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `ItemFatura`
--
ALTER TABLE `ItemFatura`
  ADD CONSTRAINT `ItemFatura_ibfk_1` FOREIGN KEY (`ID_Reserva`) REFERENCES `Reserva` (`ID_Reserva`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `ItemFatura_ibfk_2` FOREIGN KEY (`ID_Fatura`) REFERENCES `Fatura` (`ID_Fatura`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `ItemFatura_ibfk_3` FOREIGN KEY (`ID_ServicoReserva`) REFERENCES `ServicoReserva` (`ID_ServicoReserva`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Quarto`
--
ALTER TABLE `Quarto`
  ADD CONSTRAINT `Quarto_ibfk_1` FOREIGN KEY (`ID_TipoQuarto`) REFERENCES `TipoQuarto` (`ID_TipoQuarto`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Reserva`
--
ALTER TABLE `Reserva`
  ADD CONSTRAINT `Reserva_ibfk_1` FOREIGN KEY (`NumQuarto`) REFERENCES `Quarto` (`NumQuarto`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Reserva_ibfk_2` FOREIGN KEY (`ID_Cliente`) REFERENCES `Cliente` (`ID_Cliente`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Servico`
--
ALTER TABLE `Servico`
  ADD CONSTRAINT `Servico_ibfk_1` FOREIGN KEY (`IVA`) REFERENCES `IVA` (`ID_IVA`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ServicoReserva`
--
ALTER TABLE `ServicoReserva`
  ADD CONSTRAINT `ServicoReserva_ibfk_1` FOREIGN KEY (`ID_Servico`) REFERENCES `Servico` (`ID_Servico`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ServicoReserva_ibfk_2` FOREIGN KEY (`ID_Reserva`) REFERENCES `Reserva` (`ID_Reserva`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Utilizador`
--
ALTER TABLE `Utilizador`
  ADD CONSTRAINT `Utilizador_ibfk_1` FOREIGN KEY (`ID_TipoUti`) REFERENCES `TipoUtilizador` (`ID_TipoUti`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
