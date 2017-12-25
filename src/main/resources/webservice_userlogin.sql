-- MySQL dump 10.13  Distrib 5.5.45, for Win64 (x86)
--
-- Host: localhost    Database: webservice_userlogin
-- ------------------------------------------------------
-- Server version	5.5.45-log

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
-- Table structure for table `t_mall_address`
--

DROP TABLE IF EXISTS `t_mall_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_address` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `yh_dz` varchar(100) DEFAULT NULL COMMENT '用户地址',
  `dzzt` varchar(1) DEFAULT '1' COMMENT '地址状态',
  `yh_id` varchar(100) DEFAULT NULL COMMENT '用户id',
  `shjr` varchar(100) DEFAULT NULL COMMENT '收件人',
  `lxfsh` varchar(100) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_address`
--

LOCK TABLES `t_mall_address` WRITE;
/*!40000 ALTER TABLE `t_mall_address` DISABLE KEYS */;
INSERT INTO `t_mall_address` VALUES (1,'高老庄','1','1','八戒','12312312313'),(2,'流沙河','1','1','沙僧','12312312313'),(3,'东土大唐','1','1','师傅','12312312313'),(4,'sfsff','1','1','sdfsdf',NULL),(5,'花果山','1','6','猴哥','123123123123'),(6,'天竺寺','1','6','莱哥','123123123123');
/*!40000 ALTER TABLE `t_mall_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_user_account`
--

DROP TABLE IF EXISTS `t_mall_user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_user_account` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `yh_mch` varchar(100) DEFAULT NULL COMMENT '用户名称',
  `yh_nch` varchar(100) DEFAULT NULL COMMENT '用户昵称',
  `yh_mm` varchar(100) DEFAULT NULL COMMENT '用户密码',
  `yh_xm` varchar(100) DEFAULT NULL COMMENT '用户姓名',
  `yh_shjh` varchar(100) DEFAULT NULL COMMENT '手机号',
  `yh_yx` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `yh_tx` varchar(100) DEFAULT NULL COMMENT '头像',
  `yh_jb` int(100) DEFAULT NULL COMMENT '用户级别',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_user_account`
--

LOCK TABLES `t_mall_user_account` WRITE;
/*!40000 ALTER TABLE `t_mall_user_account` DISABLE KEYS */;
INSERT INTO `t_mall_user_account` VALUES (1,'lilei','泷泽萝拉','123','测试b2c','123123123123','123@11.com','1',1),(7,'sdfs1','sdfsdf','123','123','123123','1231','123',12223);
/*!40000 ALTER TABLE `t_mall_user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mall_user_info`
--

DROP TABLE IF EXISTS `t_mall_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mall_user_info` (
  `id_card` int(11) NOT NULL COMMENT '身份证编号',
  `yh_id` int(11) DEFAULT NULL COMMENT '用户id',
  `yh_shjh` varchar(100) DEFAULT NULL COMMENT '用户手机号',
  `yh_jg` varchar(100) DEFAULT NULL COMMENT '用户籍贯',
  `yh_zhzh` varchar(100) DEFAULT NULL COMMENT '用户住址',
  `yh_xb` int(11) DEFAULT NULL COMMENT '性别 0女1男',
  `chjshj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id_card`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mall_user_info`
--

LOCK TABLES `t_mall_user_info` WRITE;
/*!40000 ALTER TABLE `t_mall_user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mall_user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-25 23:39:14
