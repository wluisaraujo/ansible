-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dexter500
-- ------------------------------------------------------
-- Server version	5.5.40-0+wheezy1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_razao` varchar(200) DEFAULT NULL,
  `cpf_cnpj` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `cep` varchar(12) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'DHL Logi­stica ltda','09830583205','contato@dhl.com','Rua dos Transportes,','94894859','89899998','Rua dos Transportes, 99','Jardim Caminhão','São Paulo','SP','localhost'),(21,'Zpcom Informatica','13121132123132132','cotato@zpcominformatica.com.br','40437784','962039978','09921040','Rua Canada,148','Centro','Diadema','SP','localhost'),(22,'4linux Free Software Fundation','11111111111111111','contato@4linux.com.br','Rua Vergueiro,3057','962039978','09921040','Rua Vergueiro,3057','Vl. Mariana','São Paulo','SP','localhost');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fale_conosco`
--

DROP TABLE IF EXISTS `fale_conosco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fale_conosco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `assunto` varchar(200) DEFAULT NULL,
  `mensagem` text,
  `email` varchar(200) DEFAULT NULL,
  `ip` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fale_conosco`
--

LOCK TABLES `fale_conosco` WRITE;
/*!40000 ALTER TABLE `fale_conosco` DISABLE KEYS */;
INSERT INTO `fale_conosco` VALUES (73,'Denis Perciliano Ribeiro','Dúvida','Olá gostaria de mais informações sobre os produtos da empresa.','dpr001@gmail.com','lo'),(74,'Michelle Santos Leal','Informações','Olá gostaria de mais informações sobre o serviço de encomenda expressa.','mick.leal@gmail.com','lo'),(75,'nkhkjh','kjhkjhk','','hkjhk',NULL),(76,'Denis Perciliano Ribeiro','teste','sdfsdfsd','dpr001@gmail.com',NULL);
/*!40000 ALTER TABLE `fale_conosco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionalidades`
--

DROP TABLE IF EXISTS `funcionalidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionalidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `url_icone` varchar(200) DEFAULT NULL,
  `ip` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionalidades`
--

LOCK TABLES `funcionalidades` WRITE;
/*!40000 ALTER TABLE `funcionalidades` DISABLE KEYS */;
INSERT INTO `funcionalidades` VALUES (1,'COLETA AGENDADA','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, ab odit officiis quam similique illum cum ex quae. Voluptates, magni.','img/icon-calendar.png','lo'),(2,'CLOUD DATABASE','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit, fugit soluta aperiam corporis unde pariatur rerum officiis dignissimos blanditiis omnis.','img/icon-cloud.png','lo'),(3,'SUPORTE FULL TIME','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, a atque porro magnam facilis earum odit nisi dignissimos quas commodi!','img/icon-support.png','lo');
/*!40000 ALTER TABLE `funcionalidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `prf_id` int(11) DEFAULT NULL,
  `ip` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (5,'Admin','admin@dexter.com','e10adc3949ba59abbe56e057f20f883e',1,NULL);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paginas`
--

DROP TABLE IF EXISTS `paginas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paginas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(30) DEFAULT NULL,
  `label` varchar(30) DEFAULT NULL,
  `ip` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paginas`
--

LOCK TABLES `paginas` WRITE;
/*!40000 ALTER TABLE `paginas` DISABLE KEYS */;
INSERT INTO `paginas` VALUES (1,'index.php','Início','lo'),(2,'cadastro.php','Cadastre-se','lo'),(3,'faleconosco.php','Fale Conosco','lo'),(4,'sobre.php','Sobre','lo');
/*!40000 ALTER TABLE `paginas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfis`
--

DROP TABLE IF EXISTS `perfis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `ip` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfis`
--

LOCK TABLES `perfis` WRITE;
/*!40000 ALTER TABLE `perfis` DISABLE KEYS */;
INSERT INTO `perfis` VALUES (1,'administrador','lo'),(2,'motorista','lo');
/*!40000 ALTER TABLE `perfis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicos`
--

DROP TABLE IF EXISTS `servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `url_icone` varchar(200) DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `ip` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicos`
--

LOCK TABLES `servicos` WRITE;
/*!40000 ALTER TABLE `servicos` DISABLE KEYS */;
INSERT INTO `servicos` VALUES (1,'Ecommerce Delivey','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, fuga?','img/service-loja.png',0,'lo'),(2,'Entregas Aéreas','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, fuga?','img/service-aereo.png',0,'lo'),(3,'Entregas de Containers','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, fuga?','img/service-navio.png',0,'lo'),(4,'Transporte Ferroviário','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, fuga?','img/service-trem.png',0,'lo'),(5,'Transporte Fast','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, fuga?','img/service-fast.png',0,'lo'),(6,'Transporte de Malote','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, fuga?','img/service-money.png',0,'lo'),(7,'Coleta Agendada','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, fuga?','img/service-calendar.png',0,'lo'),(8,'Suporte Full Time','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, fuga?','img/service-support.png',0,'lo'),(9,'RÁPIDO E SIMPLES','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae a voluptatibus neque.','img/icon-flash.png',1,'lo'),(10,'PARA SUA LOJA','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad cumque mollitia rerum!','img/icon-shop.png',1,'lo'),(11,'QUALQUER DESTINO','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque omnis provident totam?','img/icon-world.png',1,'lo'),(12,'NA PALMA DA MÃO','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere mollitia esse delectus?','img/icon-mobile.png',1,'lo');
/*!40000 ALTER TABLE `servicos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-07 17:28:42
