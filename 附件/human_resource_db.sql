﻿# MySQL-Front 5.1  (Build 4.2)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: human_resource_db
# ------------------------------------------------------
# Server version 5.0.22-community-nt

#
# Source for table emergency_contact_person
#

DROP TABLE IF EXISTS `emergency_contact_person`;
CREATE TABLE `emergency_contact_person` (
  `id` char(36) NOT NULL default '0',
  `name` varchar(20) default '',
  `email` varchar(40) default NULL,
  `mobile_phone` varchar(20) default NULL,
  `fixed_phone` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='紧急联系人表';

#
# Dumping data for table emergency_contact_person
#

LOCK TABLES `emergency_contact_person` WRITE;
/*!40000 ALTER TABLE `emergency_contact_person` DISABLE KEYS */;
INSERT INTO `emergency_contact_person` VALUES ('9d391a17-4b45-43c9-b138-308dbf8fdbee','张宏伟','','','1111111');
INSERT INTO `emergency_contact_person` VALUES ('d47ed4e2-8b9d-4368-8931-ab86f23e46ae','王五','wangwu@gmail.com','13888888888','1234567');
/*!40000 ALTER TABLE `emergency_contact_person` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table human_resource
#

DROP TABLE IF EXISTS `human_resource`;
CREATE TABLE `human_resource` (
  `id` char(18) NOT NULL default '',
  `password` char(32) NOT NULL default '',
  `role` varchar(10) default 'r10',
  `name_ch` varchar(20) default NULL,
  `name_en` varchar(50) default NULL,
  `sex` char(4) default '男',
  `name_pinyin` varchar(50) default NULL,
  `other_name` varchar(50) default NULL,
  `birthday` date default '1990-01-01',
  `category` char(4) default NULL,
  `position` varchar(255) default NULL,
  `company` varchar(255) default NULL,
  `passport` varchar(40) default NULL,
  `email` varchar(40) default NULL,
  `mobile_phone` varchar(20) default NULL,
  `fixed_phone` varchar(20) default NULL,
  `emergency_contact_person` char(36) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人事表';

#
# Dumping data for table human_resource
#

LOCK TABLES `human_resource` WRITE;
/*!40000 ALTER TABLE `human_resource` DISABLE KEYS */;
INSERT INTO `human_resource` VALUES ('140000199503230002','e10adc3949ba59abbe56e057f20f883e','r10','李四','Lee','女','Li Si','四娃','1995-03-23','行政','辅导员/正科级','经济学院','1234567','lisi@sina.com','13666666666','6666666','d47ed4e2-8b9d-4368-8931-ab86f23e46ae');
INSERT INTO `human_resource` VALUES ('140000199508080001','e10adc3949ba59abbe56e057f20f883e','r10','任浩航','','男','Ren Haohang','大潮吊','1995-08-08','学生','本科','软件学院','123456','','15555555555','','9d391a17-4b45-43c9-b138-308dbf8fdbee');
/*!40000 ALTER TABLE `human_resource` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
