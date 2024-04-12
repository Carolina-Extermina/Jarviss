-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 19-Nov-2023 às 00:28
-- Versão do servidor: 5.7.12
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema_loja2023`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_compras`
--

CREATE TABLE `tb_compras` (
  `com_codigo` int(11) NOT NULL,
  `tpg_codigo` int(11) NOT NULL,
  `for_codigo` int(11) NOT NULL,
  `nf_codigo` int(11) NOT NULL,
  `com_datacompra` date NOT NULL,
  `com_valortotal` float(18,3) NOT NULL,
  `com_observacoes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_compras`
--

INSERT INTO `tb_compras` (`com_codigo`, `tpg_codigo`, `for_codigo`, `nf_codigo`, `com_datacompra`, `com_valortotal`, `com_observacoes`) VALUES
(1, 1, 1, 2, '2023-05-14', 20.000, 'ok'),
(2, 1, 1, 2, '2023-09-16', 25.000, 'ok'),
(4, 1, 1, 2, '2023-05-12', 10.000, 'ok'),
(5, 3, 2, 3, '2023-10-04', 30.000, 'teste'),
(6, 3, 2, 3, '2023-10-25', 30.000, 'sucesso');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_contapagar`
--

CREATE TABLE `tb_contapagar` (
  `cp_codigo` int(11) NOT NULL,
  `cp_valorconta` float(18,4) NOT NULL,
  `cp_datavencimento` date NOT NULL,
  `cp_datapagamento` date NOT NULL,
  `nf_codigo` int(11) NOT NULL,
  `cp_observacoes` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_contapagar`
--

INSERT INTO `tb_contapagar` (`cp_codigo`, `cp_valorconta`, `cp_datavencimento`, `cp_datapagamento`, `nf_codigo`, `cp_observacoes`) VALUES
(1, 200.0000, '2023-09-30', '2023-10-01', 2, 'OK'),
(2, 2544.0000, '2023-09-16', '2023-10-16', 4, 'Sucesso'),
(3, 25.0000, '2023-11-14', '2023-11-15', 4, 'okok'),
(4, 25.0000, '2023-11-12', '2023-11-15', 4, 'sucesso');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_contareceber`
--

CREATE TABLE `tb_contareceber` (
  `cr_codigo` int(11) NOT NULL,
  `cr_valorconta` float(18,4) NOT NULL,
  `cr_datavencimento` date NOT NULL,
  `cr_datarecebimento` date NOT NULL,
  `nf_codigo` int(11) NOT NULL,
  `cr_observacoes` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_contareceber`
--

INSERT INTO `tb_contareceber` (`cr_codigo`, `cr_valorconta`, `cr_datavencimento`, `cr_datarecebimento`, `nf_codigo`, `cr_observacoes`) VALUES
(1, 12.0000, '2023-09-16', '2023-10-15', 2, 'ok'),
(2, 2546.0000, '2023-09-16', '2023-11-10', 4, 'sucessook'),
(3, 34.0000, '2023-11-14', '2023-11-15', 2, 'ok'),
(4, 34.0000, '2023-11-14', '2023-11-25', 2, 'sucesso');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_fornecedor`
--

CREATE TABLE `tb_fornecedor` (
  `for_codigo` int(11) NOT NULL,
  `for_nome` varchar(80) NOT NULL,
  `for_endereco` varchar(80) NOT NULL,
  `for_numero` varchar(20) NOT NULL,
  `for_bairro` varchar(80) NOT NULL,
  `for_cidade` varchar(80) NOT NULL,
  `for_uf` char(2) NOT NULL,
  `for_cnpjcpf` varchar(14) NOT NULL,
  `for_rgie` varchar(12) NOT NULL,
  `for_telefone` varchar(10) NOT NULL,
  `for_fax` varchar(10) NOT NULL,
  `for_celular` varchar(10) NOT NULL,
  `for_email` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_fornecedor`
--

INSERT INTO `tb_fornecedor` (`for_codigo`, `for_nome`, `for_endereco`, `for_numero`, `for_bairro`, `for_cidade`, `for_uf`, `for_cnpjcpf`, `for_rgie`, `for_telefone`, `for_fax`, `for_celular`, `for_email`) VALUES
(1, 'AMBEV', 'RUA SANTA', '12', 'SOS', 'SP', 'SP', '123123000125', '23156489', '112568563', '', '', 'AMBEV@AMBEV.COM.BR'),
(2, 'COCACOLA', 'RUA LOCAL', '26', 'SOS', 'SP', 'SP', '123123000125', '23156489', '112568563', '', '', 'CONTATO@COCACOLA.COM.BR'),
(3, 'COCA COLA', 'RUA SORRISO', '25', 'JARDIM', 'RIO DE JANEIRO', 'RJ', '123456100014', '121234568', '1125252525', '', '', 'COCACOLA@RJ.COM.BR'),
(4, 'jocelia', 'rua yaya', '206', 'null', 'diadema', 'sp', '1255666', '5598595', '11552556', '555956', '59895', 'jo@jo.com.br'),
(5, 'luciano', 'rua yaya', '206', 'jd canhema', 'diadema', 'sp', '1255666', '5598595', '11552556', '555956', '59895', 'jo@jo.com.br');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_funcionario`
--

CREATE TABLE `tb_funcionario` (
  `fun_codigo` int(11) NOT NULL,
  `fun_nome` varchar(80) NOT NULL,
  `fun_endereco` varchar(80) NOT NULL,
  `fun_numero` varchar(20) NOT NULL,
  `fun_complemento` varchar(50) NOT NULL,
  `fun_bairro` varchar(80) NOT NULL,
  `fun_cidade` varchar(80) NOT NULL,
  `fun_uf` char(2) NOT NULL,
  `fun_cnpjcpf` varchar(14) NOT NULL,
  `fun_rgie` varchar(12) NOT NULL,
  `fun_sexo` char(1) NOT NULL,
  `fun_nascimento` date NOT NULL,
  `fun_telefone` varchar(10) NOT NULL,
  `fun_celular` varchar(10) NOT NULL,
  `fun_email` varchar(80) NOT NULL,
  `fun_salario` float(18,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_funcionario`
--

INSERT INTO `tb_funcionario` (`fun_codigo`, `fun_nome`, `fun_endereco`, `fun_numero`, `fun_complemento`, `fun_bairro`, `fun_cidade`, `fun_uf`, `fun_cnpjcpf`, `fun_rgie`, `fun_sexo`, `fun_nascimento`, `fun_telefone`, `fun_celular`, `fun_email`, `fun_salario`) VALUES
(2, 'JOCELIA fer', 'RUA CASA', '66', 'BL', 'JARDINS', 'kkkk', 'SP', '54545454545', '11545454', 'F', '1991-11-14', '659645464', '65464545', 'JO@GMAIL.COM', 4000.0000),
(3, 'ALAN', 'RUA LOCAL', '98', 'BL', 'DOS CASAS', 'dieadema', 'SP', '123456789', '124567893', 'M', '1988-09-10', '1125253625', '1197845120', 'ALAN@GMAIL.COM', 5000.0000),
(4, 'BRENDA PONZILLAQUA', 'RUA SABORES', '12', '1555555', 'FLORES', 'lo', 'SP', '123122312354', '121231232', 'F', '2010-05-25', '1122222222', '1122222222', 'BRENDA@FATEC.COM.BR', 81000.0000),
(8, 'jo', 'ef', '12', 'fe', '12', 'dp', 'sp', '548955959', '959595', 'f', '2023-11-15', '22255565', '518548', 'uguyua', 256.0000),
(9, 'jo', 'ef', '12', 'fe', '12', 'diadema', 'sp', '548955959', '959595', 'f', '2023-11-15', '22255565', '518548', 'uguyua', 256.0000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_itenscompra`
--

CREATE TABLE `tb_itenscompra` (
  `itc_codigo` int(11) NOT NULL,
  `com_codigo` int(11) NOT NULL,
  `pro_codigo` int(11) NOT NULL,
  `tpp_codigo` int(11) NOT NULL,
  `nf_codigo` int(11) NOT NULL,
  `for_codigo` int(11) NOT NULL,
  `tpg_codigo` int(11) NOT NULL,
  `itc_embalagem` char(2) NOT NULL,
  `itc_qtde` float(15,3) NOT NULL,
  `itc_valorun` float(18,3) NOT NULL,
  `itc_desc` float(18,3) NOT NULL,
  `itc_valortotal` float(18,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_itenscompra`
--

INSERT INTO `tb_itenscompra` (`itc_codigo`, `com_codigo`, `pro_codigo`, `tpp_codigo`, `nf_codigo`, `for_codigo`, `tpg_codigo`, `itc_embalagem`, `itc_qtde`, `itc_valorun`, `itc_desc`, `itc_valortotal`) VALUES
(1, 1, 1, 1, 2, 1, 1, '1', 1.000, 12.000, 1.000, 14.000),
(2, 2, 2, 2, 3, 2, 2, '1', 1.000, 12.000, 1.000, 1000.000),
(3, 2, 2, 2, 2, 2, 2, '54', 45.000, 24.000, 42.000, 65.000),
(5, 2, 2, 2, 3, 4, 2, '1', 1.000, 25.000, 1.000, 1000.000),
(6, 2, 2, 2, 3, 4, 2, '1', 1.000, 25.000, 1.000, 200.000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_itensvenda`
--

CREATE TABLE `tb_itensvenda` (
  `itv_codigo` int(11) NOT NULL,
  `ven_codigo` int(11) NOT NULL,
  `pro_codigo` int(11) NOT NULL,
  `tpp_codigo` int(11) NOT NULL,
  `nf_codigo` int(11) NOT NULL,
  `tpg_codigo` int(11) NOT NULL,
  `fun_codigo` int(11) NOT NULL,
  `itv_embalagem` char(2) NOT NULL,
  `itv_qtde` float(15,3) NOT NULL,
  `itv_valorun` float(18,3) NOT NULL,
  `itv_desc` float(18,3) NOT NULL,
  `itv_valortotal` float(18,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_itensvenda`
--

INSERT INTO `tb_itensvenda` (`itv_codigo`, `ven_codigo`, `pro_codigo`, `tpp_codigo`, `nf_codigo`, `tpg_codigo`, `fun_codigo`, `itv_embalagem`, `itv_qtde`, `itv_valorun`, `itv_desc`, `itv_valortotal`) VALUES
(1, 1, 1, 1, 2, 1, 2, '1', 12.000, 12.000, 1.000, 12.000),
(2, 2, 2, 2, 3, 2, 3, '1', 24.000, 12.000, 1.000, 24.000),
(3, 3, 3, 3, 3, 3, 3, '2', 24.000, 12.000, 2.000, 44.000),
(4, 2, 2, 2, 2, 2, 8, '25', 25.000, 25.000, 25.000, 52.000),
(6, 2, 2, 2, 2, 2, 8, '25', 25.000, 25.000, 25.000, 10000.000),
(7, 2, 2, 2, 2, 2, 8, '25', 25.000, 25.000, 25.000, 582.000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_notafiscal`
--

CREATE TABLE `tb_notafiscal` (
  `nf_codigo` int(11) NOT NULL,
  `nf_valornf` float(18,4) NOT NULL,
  `nf_taxaimpostonf` float(15,2) NOT NULL,
  `nf_valorimposto` float(18,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_notafiscal`
--

INSERT INTO `tb_notafiscal` (`nf_codigo`, `nf_valornf`, `nf_taxaimpostonf`, `nf_valorimposto`) VALUES
(1, 25.0000, 25.00, 45.000),
(2, 2.0000, 20230916.00, 20231016.000),
(3, 40.0000, 20.00, 20.000),
(4, 20.0000, 10.00, 10.000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produtos`
--

CREATE TABLE `tb_produtos` (
  `pro_codigo` int(11) NOT NULL,
  `pro_descricao` varchar(80) NOT NULL,
  `tpp_codigo` int(11) NOT NULL,
  `pro_precocusto` float(18,4) NOT NULL,
  `pro_precovenda` float(18,4) NOT NULL,
  `pro_estoque` float(18,3) NOT NULL,
  `pro_embalagem` char(2) NOT NULL,
  `pro_ipi` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_produtos`
--

INSERT INTO `tb_produtos` (`pro_codigo`, `pro_descricao`, `tpp_codigo`, `pro_precocusto`, `pro_precovenda`, `pro_estoque`, `pro_embalagem`, `pro_ipi`) VALUES
(1, 'BALA', 5, 4.0000, 8.0000, 100.000, '1', 1.00),
(2, 'suco', 2, 13.0000, 13.0000, 2.000, '2', 2.00),
(3, 'VINHO', 3, 13.0000, 13.0000, 2.000, '2', 2.00),
(4, 'BALA', 1, 13.0000, 13.0000, 2.000, '20', 2.00),
(5, 'SORVETE', 2, 25.0000, 25.0000, 1000.000, '20', 5.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_tipopagto`
--

CREATE TABLE `tb_tipopagto` (
  `tpg_codigo` int(11) NOT NULL,
  `tpg_descricao` varchar(80) NOT NULL,
  `tpg_qtde` int(11) NOT NULL,
  `tpg_ativo` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_tipopagto`
--

INSERT INTO `tb_tipopagto` (`tpg_codigo`, `tpg_descricao`, `tpg_qtde`, `tpg_ativo`) VALUES
(1, 'A VISTA', 2, '2'),
(2, 'DINHEIRO2', 2, '1'),
(3, 'PIX', 1, '1'),
(4, 'BALA', 100, '1'),
(5, 'vendas', 200, '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_tipoproduto`
--

CREATE TABLE `tb_tipoproduto` (
  `tpp_codigo` int(11) NOT NULL,
  `tpp_descricao` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_tipoproduto`
--

INSERT INTO `tb_tipoproduto` (`tpp_codigo`, `tpp_descricao`) VALUES
(1, 'AGUA'),
(2, 'SUCO'),
(3, 'VINHO'),
(5, 'REFRIGERANTE'),
(6, ' SORVETE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_vendas`
--

CREATE TABLE `tb_vendas` (
  `ven_codigo` int(11) NOT NULL,
  `fun_codigo` int(11) NOT NULL,
  `tpg_codigo` int(11) NOT NULL,
  `nf_codigo` int(11) NOT NULL,
  `ven_datavenda` date NOT NULL,
  `ven_valortotal` float(18,3) NOT NULL,
  `ven_observacoes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_vendas`
--

INSERT INTO `tb_vendas` (`ven_codigo`, `fun_codigo`, `tpg_codigo`, `nf_codigo`, `ven_datavenda`, `ven_valortotal`, `ven_observacoes`) VALUES
(1, 8, 4, 2, '2023-11-25', 4.000, 'TUDO CERTO'),
(2, 3, 2, 3, '2023-09-02', 20.000, 'OK'),
(3, 4, 3, 4, '2023-08-02', 30.000, 'OK'),
(5, 8, 5, 4, '2023-10-25', 256.000, 'ok'),
(6, 3, 2, 1, '2023-02-25', 256.000, 'ok');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_compras`
--
ALTER TABLE `tb_compras`
  ADD PRIMARY KEY (`com_codigo`),
  ADD KEY `tpg_codigo` (`tpg_codigo`),
  ADD KEY `for_codigo` (`for_codigo`),
  ADD KEY `nf_codigo` (`nf_codigo`);

--
-- Indexes for table `tb_contapagar`
--
ALTER TABLE `tb_contapagar`
  ADD PRIMARY KEY (`cp_codigo`),
  ADD KEY `nf_codigo` (`nf_codigo`);

--
-- Indexes for table `tb_contareceber`
--
ALTER TABLE `tb_contareceber`
  ADD PRIMARY KEY (`cr_codigo`),
  ADD KEY `nf_codigo` (`nf_codigo`);

--
-- Indexes for table `tb_fornecedor`
--
ALTER TABLE `tb_fornecedor`
  ADD PRIMARY KEY (`for_codigo`);

--
-- Indexes for table `tb_funcionario`
--
ALTER TABLE `tb_funcionario`
  ADD PRIMARY KEY (`fun_codigo`);

--
-- Indexes for table `tb_itenscompra`
--
ALTER TABLE `tb_itenscompra`
  ADD PRIMARY KEY (`itc_codigo`),
  ADD KEY `com_codigo` (`com_codigo`),
  ADD KEY `pro_codigo` (`pro_codigo`),
  ADD KEY `tpp_codigo` (`tpp_codigo`),
  ADD KEY `nf_codigo` (`nf_codigo`),
  ADD KEY `for_codigo` (`for_codigo`),
  ADD KEY `tpg_codigo` (`tpg_codigo`);

--
-- Indexes for table `tb_itensvenda`
--
ALTER TABLE `tb_itensvenda`
  ADD PRIMARY KEY (`itv_codigo`),
  ADD KEY `ven_codigo` (`ven_codigo`),
  ADD KEY `pro_codigo` (`pro_codigo`),
  ADD KEY `tpp_codigo` (`tpp_codigo`),
  ADD KEY `nf_codigo` (`nf_codigo`),
  ADD KEY `tpg_codigo` (`tpg_codigo`),
  ADD KEY `fun_codigo` (`fun_codigo`);

--
-- Indexes for table `tb_notafiscal`
--
ALTER TABLE `tb_notafiscal`
  ADD PRIMARY KEY (`nf_codigo`);

--
-- Indexes for table `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD PRIMARY KEY (`pro_codigo`),
  ADD KEY `tpp_codigo` (`tpp_codigo`);

--
-- Indexes for table `tb_tipopagto`
--
ALTER TABLE `tb_tipopagto`
  ADD PRIMARY KEY (`tpg_codigo`);

--
-- Indexes for table `tb_tipoproduto`
--
ALTER TABLE `tb_tipoproduto`
  ADD PRIMARY KEY (`tpp_codigo`);

--
-- Indexes for table `tb_vendas`
--
ALTER TABLE `tb_vendas`
  ADD PRIMARY KEY (`ven_codigo`),
  ADD KEY `fun_codigo` (`fun_codigo`),
  ADD KEY `tpg_codigo` (`tpg_codigo`),
  ADD KEY `nf_codigo` (`nf_codigo`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb_compras`
--
ALTER TABLE `tb_compras`
  ADD CONSTRAINT `tb_compras_ibfk_1` FOREIGN KEY (`tpg_codigo`) REFERENCES `tb_tipopagto` (`tpg_codigo`),
  ADD CONSTRAINT `tb_compras_ibfk_2` FOREIGN KEY (`for_codigo`) REFERENCES `tb_fornecedor` (`for_codigo`),
  ADD CONSTRAINT `tb_compras_ibfk_3` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`);

--
-- Limitadores para a tabela `tb_contapagar`
--
ALTER TABLE `tb_contapagar`
  ADD CONSTRAINT `tb_contapagar_ibfk_1` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`);

--
-- Limitadores para a tabela `tb_contareceber`
--
ALTER TABLE `tb_contareceber`
  ADD CONSTRAINT `tb_contareceber_ibfk_1` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`);

--
-- Limitadores para a tabela `tb_itenscompra`
--
ALTER TABLE `tb_itenscompra`
  ADD CONSTRAINT `tb_itenscompra_ibfk_1` FOREIGN KEY (`com_codigo`) REFERENCES `tb_compras` (`com_codigo`),
  ADD CONSTRAINT `tb_itenscompra_ibfk_2` FOREIGN KEY (`pro_codigo`) REFERENCES `tb_produtos` (`pro_codigo`),
  ADD CONSTRAINT `tb_itenscompra_ibfk_3` FOREIGN KEY (`tpp_codigo`) REFERENCES `tb_tipoproduto` (`tpp_codigo`),
  ADD CONSTRAINT `tb_itenscompra_ibfk_4` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`),
  ADD CONSTRAINT `tb_itenscompra_ibfk_5` FOREIGN KEY (`for_codigo`) REFERENCES `tb_fornecedor` (`for_codigo`),
  ADD CONSTRAINT `tb_itenscompra_ibfk_6` FOREIGN KEY (`tpg_codigo`) REFERENCES `tb_tipopagto` (`tpg_codigo`);

--
-- Limitadores para a tabela `tb_itensvenda`
--
ALTER TABLE `tb_itensvenda`
  ADD CONSTRAINT `tb_itensvenda_ibfk_1` FOREIGN KEY (`ven_codigo`) REFERENCES `tb_vendas` (`ven_codigo`),
  ADD CONSTRAINT `tb_itensvenda_ibfk_2` FOREIGN KEY (`pro_codigo`) REFERENCES `tb_produtos` (`pro_codigo`),
  ADD CONSTRAINT `tb_itensvenda_ibfk_3` FOREIGN KEY (`tpp_codigo`) REFERENCES `tb_tipoproduto` (`tpp_codigo`),
  ADD CONSTRAINT `tb_itensvenda_ibfk_4` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`),
  ADD CONSTRAINT `tb_itensvenda_ibfk_5` FOREIGN KEY (`tpg_codigo`) REFERENCES `tb_tipopagto` (`tpg_codigo`),
  ADD CONSTRAINT `tb_itensvenda_ibfk_6` FOREIGN KEY (`fun_codigo`) REFERENCES `tb_funcionario` (`fun_codigo`);

--
-- Limitadores para a tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD CONSTRAINT `tb_produtos_ibfk_1` FOREIGN KEY (`tpp_codigo`) REFERENCES `tb_tipoproduto` (`tpp_codigo`);

--
-- Limitadores para a tabela `tb_vendas`
--
ALTER TABLE `tb_vendas`
  ADD CONSTRAINT `tb_vendas_ibfk_1` FOREIGN KEY (`fun_codigo`) REFERENCES `tb_funcionario` (`fun_codigo`),
  ADD CONSTRAINT `tb_vendas_ibfk_2` FOREIGN KEY (`tpg_codigo`) REFERENCES `tb_tipopagto` (`tpg_codigo`),
  ADD CONSTRAINT `tb_vendas_ibfk_3` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
