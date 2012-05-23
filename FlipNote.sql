-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.17 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2012-05-23 14:37:18
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for flipnote
DROP DATABASE IF EXISTS `flipnote`;
CREATE DATABASE IF NOT EXISTS `flipnote` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `flipnote`;


-- Dumping structure for table flipnote.aluno
DROP TABLE IF EXISTS `aluno`;
CREATE TABLE IF NOT EXISTS `aluno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table flipnote.anotacao
DROP TABLE IF EXISTS `anotacao`;
CREATE TABLE IF NOT EXISTS `anotacao` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `texto` text,
  `notificacao` datetime DEFAULT NULL,
  `aluno` int(10) NOT NULL,
  `grupo` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table flipnote.grupo
DROP TABLE IF EXISTS `grupo`;
CREATE TABLE IF NOT EXISTS `grupo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table flipnote.grupo_aluno
DROP TABLE IF EXISTS `grupo_aluno`;
CREATE TABLE IF NOT EXISTS `grupo_aluno` (
  `aluno` int(10) NOT NULL,
  `grupo` int(10) NOT NULL,
  PRIMARY KEY (`aluno`,`grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table flipnote.materia
DROP TABLE IF EXISTS `materia`;
CREATE TABLE IF NOT EXISTS `materia` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `professor` varchar(100) DEFAULT NULL,
  `aluno` int(10) DEFAULT NULL,
  `grupo` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table flipnote.prova
DROP TABLE IF EXISTS `prova`;
CREATE TABLE IF NOT EXISTS `prova` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `materia` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `descricao` text NOT NULL,
  `notificacao` datetime DEFAULT NULL,
  `nota` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table flipnote.trabalho
DROP TABLE IF EXISTS `trabalho`;
CREATE TABLE IF NOT EXISTS `trabalho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `materia` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `descricao` text NOT NULL,
  `notificacao` datetime DEFAULT NULL,
  `nota` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
