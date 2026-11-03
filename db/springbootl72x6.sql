-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootl72x6
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springbootl72x6`
--

/*!40000 DROP DATABASE IF EXISTS `springbootl72x6`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootl72x6` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootl72x6`;

--
-- Table structure for table `bumenxinxi`
--

DROP TABLE IF EXISTS `bumenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bumenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bumen` (`bumen`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='部门信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bumenxinxi`
--

LOCK TABLES `bumenxinxi` WRITE;
/*!40000 ALTER TABLE `bumenxinxi` DISABLE KEYS */;
INSERT INTO `bumenxinxi` VALUES (21,'2022-11-28 08:33:52','部门1'),(22,'2022-11-28 08:33:52','部门2'),(23,'2022-11-28 08:33:52','部门3'),(24,'2022-11-28 08:33:52','部门4'),(25,'2022-11-28 08:33:52','部门5'),(26,'2022-11-28 08:33:52','部门6'),(27,'2022-11-28 08:33:52','部门7'),(28,'2022-11-28 08:33:52','部门8');
/*!40000 ALTER TABLE `bumenxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tongzhigonggao`
--

DROP TABLE IF EXISTS `tongzhigonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tongzhigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='通知公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tongzhigonggao`
--

LOCK TABLES `tongzhigonggao` WRITE;
/*!40000 ALTER TABLE `tongzhigonggao` DISABLE KEYS */;
INSERT INTO `tongzhigonggao` VALUES (31,'2022-11-28 08:33:52','标题1','简介1','2022-11-28 16:33:52','upload/tongzhigonggao_fengmian1.jpg,upload/tongzhigonggao_fengmian2.jpg,upload/tongzhigonggao_fengmian3.jpg','内容1','2022-11-28 16:33:52',1),(32,'2022-11-28 08:33:52','标题2','简介2','2022-11-28 16:33:52','upload/tongzhigonggao_fengmian2.jpg,upload/tongzhigonggao_fengmian3.jpg,upload/tongzhigonggao_fengmian4.jpg','内容2','2022-11-28 16:33:52',2),(33,'2022-11-28 08:33:52','标题3','简介3','2022-11-28 16:33:52','upload/tongzhigonggao_fengmian3.jpg,upload/tongzhigonggao_fengmian4.jpg,upload/tongzhigonggao_fengmian5.jpg','内容3','2022-11-28 16:33:52',3),(34,'2022-11-28 08:33:52','标题4','简介4','2022-11-28 16:33:52','upload/tongzhigonggao_fengmian4.jpg,upload/tongzhigonggao_fengmian5.jpg,upload/tongzhigonggao_fengmian6.jpg','内容4','2022-11-28 16:33:52',4),(35,'2022-11-28 08:33:52','标题5','简介5','2022-11-28 16:33:52','upload/tongzhigonggao_fengmian5.jpg,upload/tongzhigonggao_fengmian6.jpg,upload/tongzhigonggao_fengmian7.jpg','内容5','2022-11-28 16:33:52',5),(36,'2022-11-28 08:33:52','标题6','简介6','2022-11-28 16:33:52','upload/tongzhigonggao_fengmian6.jpg,upload/tongzhigonggao_fengmian7.jpg,upload/tongzhigonggao_fengmian8.jpg','内容6','2022-11-28 16:33:52',6),(37,'2022-11-28 08:33:52','标题7','简介7','2022-11-28 16:33:52','upload/tongzhigonggao_fengmian7.jpg,upload/tongzhigonggao_fengmian8.jpg,upload/tongzhigonggao_fengmian9.jpg','内容7','2022-11-28 16:33:52',7),(38,'2022-11-28 08:33:52','标题8','简介8','2022-11-28 16:33:52','upload/tongzhigonggao_fengmian8.jpg,upload/tongzhigonggao_fengmian9.jpg,upload/tongzhigonggao_fengmian10.jpg','内容8','2022-11-28 16:33:52',8);
/*!40000 ALTER TABLE `tongzhigonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2022-11-28 08:33:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wanchengrenwu`
--

DROP TABLE IF EXISTS `wanchengrenwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wanchengrenwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `renwumingcheng` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `renwuzhuangtai` varchar(200) NOT NULL,
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL,
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='完成任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wanchengrenwu`
--

LOCK TABLES `wanchengrenwu` WRITE;
/*!40000 ALTER TABLE `wanchengrenwu` DISABLE KEYS */;
INSERT INTO `wanchengrenwu` VALUES (81,'2022-11-28 08:33:53','任务名称1','','已完成','2022-11-28 16:33:53','工号1','姓名1','部门1',1,1,'是',''),(82,'2022-11-28 08:33:53','任务名称2','','已完成','2022-11-28 16:33:53','工号2','姓名2','部门2',2,2,'是',''),(83,'2022-11-28 08:33:53','任务名称3','','已完成','2022-11-28 16:33:53','工号3','姓名3','部门3',3,3,'是',''),(84,'2022-11-28 08:33:53','任务名称4','','已完成','2022-11-28 16:33:53','工号4','姓名4','部门4',4,4,'是',''),(85,'2022-11-28 08:33:53','任务名称5','','已完成','2022-11-28 16:33:53','工号5','姓名5','部门5',5,5,'是',''),(86,'2022-11-28 08:33:53','任务名称6','','已完成','2022-11-28 16:33:53','工号6','姓名6','部门6',6,6,'是',''),(87,'2022-11-28 08:33:53','任务名称7','','已完成','2022-11-28 16:33:53','工号7','姓名7','部门7',7,7,'是',''),(88,'2022-11-28 08:33:53','任务名称8','','已完成','2022-11-28 16:33:53','工号8','姓名8','部门8',8,8,'是','');
/*!40000 ALTER TABLE `wanchengrenwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiapairenwu`
--

DROP TABLE IF EXISTS `xiapairenwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiapairenwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `renwumingcheng` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `renwuneirong` longtext COMMENT '任务内容',
  `kaishishijian` datetime DEFAULT NULL COMMENT '开始时间',
  `jiezhishijian` datetime DEFAULT NULL COMMENT '截止时间',
  `xiapaishijian` datetime DEFAULT NULL COMMENT '下派时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='下派任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiapairenwu`
--

LOCK TABLES `xiapairenwu` WRITE;
/*!40000 ALTER TABLE `xiapairenwu` DISABLE KEYS */;
INSERT INTO `xiapairenwu` VALUES (71,'2022-11-28 08:33:53','任务名称1','任务内容1','2022-11-28 16:33:53','2022-11-28 16:33:53','2022-11-28 16:33:53','工号1','姓名1','部门1'),(72,'2022-11-28 08:33:53','任务名称2','任务内容2','2022-11-28 16:33:53','2022-11-28 16:33:53','2022-11-28 16:33:53','工号2','姓名2','部门2'),(73,'2022-11-28 08:33:53','任务名称3','任务内容3','2022-11-28 16:33:53','2022-11-28 16:33:53','2022-11-28 16:33:53','工号3','姓名3','部门3'),(74,'2022-11-28 08:33:53','任务名称4','任务内容4','2022-11-28 16:33:53','2022-11-28 16:33:53','2022-11-28 16:33:53','工号4','姓名4','部门4'),(75,'2022-11-28 08:33:53','任务名称5','任务内容5','2022-11-28 16:33:53','2022-11-28 16:33:53','2022-11-28 16:33:53','工号5','姓名5','部门5'),(76,'2022-11-28 08:33:53','任务名称6','任务内容6','2022-11-28 16:33:53','2022-11-28 16:33:53','2022-11-28 16:33:53','工号6','姓名6','部门6'),(77,'2022-11-28 08:33:53','任务名称7','任务内容7','2022-11-28 16:33:53','2022-11-28 16:33:53','2022-11-28 16:33:53','工号7','姓名7','部门7'),(78,'2022-11-28 08:33:53','任务名称8','任务内容8','2022-11-28 16:33:53','2022-11-28 16:33:53','2022-11-28 16:33:53','工号8','姓名8','部门8');
/*!40000 ALTER TABLE `xiapairenwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `bumen` varchar(200) DEFAULT NULL,
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (11,'2022-11-28 08:33:52','工号1','123456','姓名1','男','年龄1','13823888881','部门1','upload/yuangong_touxiang1.jpg'),(12,'2022-11-28 08:33:52','工号2','123456','姓名2','男','年龄2','13823888882','部门2','upload/yuangong_touxiang2.jpg'),(13,'2022-11-28 08:33:52','工号3','123456','姓名3','男','年龄3','13823888883','部门3','upload/yuangong_touxiang3.jpg'),(14,'2022-11-28 08:33:52','工号4','123456','姓名4','男','年龄4','13823888884','部门4','upload/yuangong_touxiang4.jpg'),(15,'2022-11-28 08:33:52','工号5','123456','姓名5','男','年龄5','13823888885','部门5','upload/yuangong_touxiang5.jpg'),(16,'2022-11-28 08:33:52','工号6','123456','姓名6','男','年龄6','13823888886','部门6','upload/yuangong_touxiang6.jpg'),(17,'2022-11-28 08:33:52','工号7','123456','姓名7','男','年龄7','13823888887','部门7','upload/yuangong_touxiang7.jpg'),(18,'2022-11-28 08:33:52','工号8','123456','姓名8','男','年龄8','13823888888','部门8','upload/yuangong_touxiang8.jpg');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongdaka`
--

DROP TABLE IF EXISTS `yuangongdaka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongdaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL,
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `dakashijian` datetime DEFAULT NULL COMMENT '打卡时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='员工打卡';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongdaka`
--

LOCK TABLES `yuangongdaka` WRITE;
/*!40000 ALTER TABLE `yuangongdaka` DISABLE KEYS */;
INSERT INTO `yuangongdaka` VALUES (41,'2022-11-28 08:33:53','工号1','姓名1','部门1','签到','2022-11-28 16:33:53','备注1','是',''),(42,'2022-11-28 08:33:53','工号2','姓名2','部门2','签到','2022-11-28 16:33:53','备注2','是',''),(43,'2022-11-28 08:33:53','工号3','姓名3','部门3','签到','2022-11-28 16:33:53','备注3','是',''),(44,'2022-11-28 08:33:53','工号4','姓名4','部门4','签到','2022-11-28 16:33:53','备注4','是',''),(45,'2022-11-28 08:33:53','工号5','姓名5','部门5','签到','2022-11-28 16:33:53','备注5','是',''),(46,'2022-11-28 08:33:53','工号6','姓名6','部门6','签到','2022-11-28 16:33:53','备注6','是',''),(47,'2022-11-28 08:33:53','工号7','姓名7','部门7','签到','2022-11-28 16:33:53','备注7','是',''),(48,'2022-11-28 08:33:53','工号8','姓名8','部门8','签到','2022-11-28 16:33:53','备注8','是','');
/*!40000 ALTER TABLE `yuangongdaka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongdangan`
--

DROP TABLE IF EXISTS `yuangongdangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongdangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `hunyin` varchar(200) DEFAULT NULL COMMENT '婚姻',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `ruzhishijian` date DEFAULT NULL COMMENT '入职时间',
  `danganwenjian` varchar(200) DEFAULT NULL COMMENT '档案文件',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='员工档案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongdangan`
--

LOCK TABLES `yuangongdangan` WRITE;
/*!40000 ALTER TABLE `yuangongdangan` DISABLE KEYS */;
INSERT INTO `yuangongdangan` VALUES (61,'2022-11-28 08:33:53','工号1','姓名1','性别1','年龄1','部门1','手机1','已婚','学历1','家庭住址1','2022-11-28','','2022-11-28'),(62,'2022-11-28 08:33:53','工号2','姓名2','性别2','年龄2','部门2','手机2','已婚','学历2','家庭住址2','2022-11-28','','2022-11-28'),(63,'2022-11-28 08:33:53','工号3','姓名3','性别3','年龄3','部门3','手机3','已婚','学历3','家庭住址3','2022-11-28','','2022-11-28'),(64,'2022-11-28 08:33:53','工号4','姓名4','性别4','年龄4','部门4','手机4','已婚','学历4','家庭住址4','2022-11-28','','2022-11-28'),(65,'2022-11-28 08:33:53','工号5','姓名5','性别5','年龄5','部门5','手机5','已婚','学历5','家庭住址5','2022-11-28','','2022-11-28'),(66,'2022-11-28 08:33:53','工号6','姓名6','性别6','年龄6','部门6','手机6','已婚','学历6','家庭住址6','2022-11-28','','2022-11-28'),(67,'2022-11-28 08:33:53','工号7','姓名7','性别7','年龄7','部门7','手机7','已婚','学历7','家庭住址7','2022-11-28','','2022-11-28'),(68,'2022-11-28 08:33:53','工号8','姓名8','性别8','年龄8','部门8','手机8','已婚','学历8','家庭住址8','2022-11-28','','2022-11-28');
/*!40000 ALTER TABLE `yuangongdangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangonggongzi`
--

DROP TABLE IF EXISTS `yuangonggongzi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangonggongzi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL,
  `jibengongzi` float DEFAULT NULL COMMENT '基本工资',
  `jiabangongzi` float DEFAULT NULL COMMENT '加班工资',
  `jixiaojiangjin` float DEFAULT NULL COMMENT '绩效奖金',
  `qitabuzhu` float DEFAULT NULL COMMENT '其他补助',
  `koukuanjine` float DEFAULT NULL COMMENT '扣款金额',
  `koukuanyuanyin` longtext COMMENT '扣款原因',
  `shifagongzi` float DEFAULT NULL COMMENT '实发工资',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='员工工资';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangonggongzi`
--

LOCK TABLES `yuangonggongzi` WRITE;
/*!40000 ALTER TABLE `yuangonggongzi` DISABLE KEYS */;
INSERT INTO `yuangonggongzi` VALUES (101,'2022-11-28 08:33:53','一月','工号1','姓名1','部门1',1,1,1,1,1,'扣款原因1',1,'2022-11-28'),(102,'2022-11-28 08:33:53','一月','工号2','姓名2','部门2',2,2,2,2,2,'扣款原因2',2,'2022-11-28'),(103,'2022-11-28 08:33:53','一月','工号3','姓名3','部门3',3,3,3,3,3,'扣款原因3',3,'2022-11-28'),(104,'2022-11-28 08:33:53','一月','工号4','姓名4','部门4',4,4,4,4,4,'扣款原因4',4,'2022-11-28'),(105,'2022-11-28 08:33:53','一月','工号5','姓名5','部门5',5,5,5,5,5,'扣款原因5',5,'2022-11-28'),(106,'2022-11-28 08:33:53','一月','工号6','姓名6','部门6',6,6,6,6,6,'扣款原因6',6,'2022-11-28'),(107,'2022-11-28 08:33:53','一月','工号7','姓名7','部门7',7,7,7,7,7,'扣款原因7',7,'2022-11-28'),(108,'2022-11-28 08:33:53','一月','工号8','姓名8','部门8',8,8,8,8,8,'扣款原因8',8,'2022-11-28');
/*!40000 ALTER TABLE `yuangonggongzi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongpingjia`
--

DROP TABLE IF EXISTS `yuangongpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pingjiabianhao` varchar(200) DEFAULT NULL COMMENT '评价编号',
  `renwumingcheng` varchar(200) DEFAULT NULL,
  `pingyu` longtext COMMENT '评语',
  `pingjiashijian` datetime DEFAULT NULL COMMENT '评价时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL,
  `bumen` varchar(200) DEFAULT NULL,
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pingjiabianhao` (`pingjiabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='员工评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongpingjia`
--

LOCK TABLES `yuangongpingjia` WRITE;
/*!40000 ALTER TABLE `yuangongpingjia` DISABLE KEYS */;
INSERT INTO `yuangongpingjia` VALUES (91,'2022-11-28 08:33:53','1111111111','任务名称1','评语1','2022-11-28 16:33:53','工号1','姓名1','部门1',1,1),(92,'2022-11-28 08:33:53','2222222222','任务名称2','评语2','2022-11-28 16:33:53','工号2','姓名2','部门2',2,2),(93,'2022-11-28 08:33:53','3333333333','任务名称3','评语3','2022-11-28 16:33:53','工号3','姓名3','部门3',3,3),(94,'2022-11-28 08:33:53','4444444444','任务名称4','评语4','2022-11-28 16:33:53','工号4','姓名4','部门4',4,4),(95,'2022-11-28 08:33:53','5555555555','任务名称5','评语5','2022-11-28 16:33:53','工号5','姓名5','部门5',5,5),(96,'2022-11-28 08:33:53','6666666666','任务名称6','评语6','2022-11-28 16:33:53','工号6','姓名6','部门6',6,6),(97,'2022-11-28 08:33:53','7777777777','任务名称7','评语7','2022-11-28 16:33:53','工号7','姓名7','部门7',7,7),(98,'2022-11-28 08:33:53','8888888888','任务名称8','评语8','2022-11-28 16:33:53','工号8','姓名8','部门8',8,8);
/*!40000 ALTER TABLE `yuangongpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongqingjia`
--

DROP TABLE IF EXISTS `yuangongqingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongqingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `qingjialeixing` varchar(200) DEFAULT NULL COMMENT '请假类型',
  `qingjiashijian` datetime DEFAULT NULL COMMENT '请假时间',
  `qingjiatianshu` int(11) DEFAULT NULL COMMENT '请假天数',
  `qingjiayuanyin` longtext NOT NULL COMMENT '请假原因',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='员工请假';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongqingjia`
--

LOCK TABLES `yuangongqingjia` WRITE;
/*!40000 ALTER TABLE `yuangongqingjia` DISABLE KEYS */;
INSERT INTO `yuangongqingjia` VALUES (51,'2022-11-28 08:33:53','工号1','姓名1','部门1','事假','2022-11-28 16:33:53',1,'请假原因1','是',''),(52,'2022-11-28 08:33:53','工号2','姓名2','部门2','事假','2022-11-28 16:33:53',2,'请假原因2','是',''),(53,'2022-11-28 08:33:53','工号3','姓名3','部门3','事假','2022-11-28 16:33:53',3,'请假原因3','是',''),(54,'2022-11-28 08:33:53','工号4','姓名4','部门4','事假','2022-11-28 16:33:53',4,'请假原因4','是',''),(55,'2022-11-28 08:33:53','工号5','姓名5','部门5','事假','2022-11-28 16:33:53',5,'请假原因5','是',''),(56,'2022-11-28 08:33:53','工号6','姓名6','部门6','事假','2022-11-28 16:33:53',6,'请假原因6','是',''),(57,'2022-11-28 08:33:53','工号7','姓名7','部门7','事假','2022-11-28 16:33:53',7,'请假原因7','是',''),(58,'2022-11-28 08:33:53','工号8','姓名8','部门8','事假','2022-11-28 16:33:53',8,'请假原因8','是','');
/*!40000 ALTER TABLE `yuangongqingjia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-05 14:34:09
