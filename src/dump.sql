-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: database-skb    Database: db_skb
-- ------------------------------------------------------
-- Server version	10.2.31-MariaDB-1:10.2.31+maria~bionic

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
-- Table structure for table `b_admin_notify`
--

DROP TABLE IF EXISTS `b_admin_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_admin_notify` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENABLE_CLOSE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `PUBLIC_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NOTIFY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M',
  PRIMARY KEY (`ID`),
  KEY `IX_AD_TAG` (`TAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_admin_notify`
--

LOCK TABLES `b_admin_notify` WRITE;
/*!40000 ALTER TABLE `b_admin_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_admin_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_admin_notify_lang`
--

DROP TABLE IF EXISTS `b_admin_notify_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_admin_notify_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NOTIFY_ID` int(18) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_ADM_NTFY_LANG` (`NOTIFY_ID`,`LID`),
  KEY `IX_ADM_NTFY_LID` (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_admin_notify_lang`
--

LOCK TABLES `b_admin_notify_lang` WRITE;
/*!40000 ALTER TABLE `b_admin_notify_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_admin_notify_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_agent`
--

DROP TABLE IF EXISTS `b_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_agent` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) NOT NULL DEFAULT 100,
  `NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime NOT NULL,
  `DATE_CHECK` datetime DEFAULT NULL,
  `AGENT_INTERVAL` int(18) DEFAULT 86400,
  `IS_PERIOD` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `USER_ID` int(18) DEFAULT NULL,
  `RUNNING` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `ix_act_next_exec` (`ACTIVE`,`NEXT_EXEC`),
  KEY `ix_agent_user_id` (`USER_ID`),
  KEY `ix_agent_name` (`NAME`(100))
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_agent`
--

LOCK TABLES `b_agent` WRITE;
/*!40000 ALTER TABLE `b_agent` DISABLE KEYS */;
INSERT INTO `b_agent` VALUES (1,'main',100,'\\Bitrix\\Main\\Analytics\\CounterDataTable::submitData();','Y','2020-04-13 18:46:33','2020-04-13 18:47:33',NULL,60,'N',NULL,'N'),(2,'main',100,'CCaptchaAgent::DeleteOldCaptcha(3600);','Y','2020-04-13 18:05:29','2020-04-13 19:05:29',NULL,3600,'N',NULL,'N'),(3,'main',100,'CSiteCheckerTest::CommonTest();','Y',NULL,'2020-04-14 03:00:00',NULL,86400,'N',NULL,'N'),(4,'main',100,'CEvent::CleanUpAgent();','Y',NULL,'2020-04-14 03:10:00',NULL,86400,'N',NULL,'N'),(5,'main',100,'CUser::CleanUpHitAuthAgent();','Y',NULL,'2020-04-14 03:15:00',NULL,86400,'N',NULL,'N'),(6,'main',100,'CUndo::CleanUpOld();','Y',NULL,'2020-04-14 03:20:00',NULL,86400,'N',NULL,'N'),(7,'main',100,'CUserCounter::DeleteOld();','Y',NULL,'2020-04-14 03:25:00',NULL,86400,'N',NULL,'N'),(8,'main',100,'\\Bitrix\\Main\\UI\\Viewer\\FilePreviewTable::deleteOldAgent();','Y',NULL,'2020-04-14 03:30:00',NULL,86400,'N',NULL,'N'),(9,'main',100,'CUser::AuthActionsCleanUpAgent();','Y',NULL,'2020-04-14 04:15:00',NULL,86400,'N',NULL,'N'),(10,'main',100,'CUser::CleanUpAgent();','Y',NULL,'2020-04-14 04:20:00',NULL,86400,'N',NULL,'N'),(11,'main',100,'CUser::DeactivateAgent();','Y',NULL,'2020-04-14 04:25:00',NULL,86400,'N',NULL,'N'),(12,'main',100,'CEventLog::CleanUpAgent();','Y',NULL,'2020-04-14 04:30:00',NULL,86400,'N',NULL,'N'),(13,'clouds',100,'CCloudStorage::CleanUp();','Y','2020-04-13 14:56:41','2020-04-14 14:56:41',NULL,86400,'N',NULL,'N'),(14,'landing',100,'Bitrix\\Landing\\Agent::clearRecycle();','Y','2020-04-13 16:56:49','2020-04-13 18:56:49',NULL,7200,'N',NULL,'N'),(15,'landing',100,'Bitrix\\Landing\\Agent::clearFiles(30);','Y','2020-04-13 18:05:29','2020-04-13 19:05:29',NULL,3600,'N',NULL,'N'),(16,'messageservice',100,'\\Bitrix\\MessageService\\Queue::cleanUpAgent();','Y','2020-04-13 14:56:42','2020-04-14 00:00:00',NULL,86400,'Y',NULL,'N'),(17,'rest',100,'Bitrix\\Rest\\Marketplace\\Client::getNumUpdates();','Y','2020-04-13 14:56:42','2020-04-14 14:56:42',NULL,86400,'N',NULL,'N'),(18,'rest',100,'\\Bitrix\\Rest\\EventOfflineTable::cleanProcessAgent();','Y','2020-04-13 14:56:42','2020-04-14 14:56:42',NULL,86400,'N',NULL,'N'),(19,'rest',100,'\\Bitrix\\Rest\\UsageStatTable::cleanUpAgent();','Y','2020-04-13 14:56:42','2020-04-14 14:56:42',NULL,86400,'N',NULL,'N'),(20,'search',10,'CSearchSuggest::CleanUpAgent();','Y','2020-04-13 14:56:43','2020-04-14 14:56:43',NULL,86400,'N',NULL,'N'),(21,'search',10,'CSearchStatistic::CleanUpAgent();','Y','2020-04-13 14:56:43','2020-04-14 14:56:43',NULL,86400,'N',NULL,'N'),(22,'seo',100,'Bitrix\\Seo\\Engine\\YandexDirect::updateAgent();','Y','2020-04-13 18:05:29','2020-04-13 19:05:29',NULL,3600,'N',NULL,'N'),(23,'seo',100,'Bitrix\\Seo\\Adv\\LogTable::clean();','Y','2020-04-13 14:56:43','2020-04-14 14:56:43',NULL,86400,'N',NULL,'N'),(24,'seo',100,'Bitrix\\Seo\\Adv\\Auto::checkQuantityAgent();','Y','2020-04-13 18:05:30','2020-04-13 19:05:30',NULL,3600,'N',NULL,'N');
/*!40000 ALTER TABLE `b_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_app_password`
--

DROP TABLE IF EXISTS `b_app_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_app_password` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DIGEST_PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SYSCOMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_app_password_user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_app_password`
--

LOCK TABLES `b_app_password` WRITE;
/*!40000 ALTER TABLE `b_app_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_app_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_b24connector_buttons`
--

DROP TABLE IF EXISTS `b_b24connector_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_b24connector_buttons` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `ADD_DATE` datetime NOT NULL,
  `ADD_BY` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SCRIPT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_b24connector_buttons`
--

LOCK TABLES `b_b24connector_buttons` WRITE;
/*!40000 ALTER TABLE `b_b24connector_buttons` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_b24connector_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_bitrixcloud_option`
--

DROP TABLE IF EXISTS `b_bitrixcloud_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_bitrixcloud_option` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL,
  `PARAM_KEY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM_VALUE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_bitrixcloud_option_1` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_bitrixcloud_option`
--

LOCK TABLES `b_bitrixcloud_option` WRITE;
/*!40000 ALTER TABLE `b_bitrixcloud_option` DISABLE KEYS */;
INSERT INTO `b_bitrixcloud_option` VALUES (1,'backup_quota',0,'0','0'),(2,'backup_total_size',0,'0','0'),(3,'backup_last_backup_time',0,'0','1586790019'),(4,'monitoring_expire_time',0,'0','1586801321'),(5,'cdn_config_active',0,'0','0'),(6,'cdn_config_expire_time',0,'0','0'),(7,'cdn_config_domain',0,'0','skbbank.ru'),(8,'cdn_config_site',0,'admin','admin'),(9,'cdn_config_https',0,'0','false'),(10,'cdn_config_optimize',0,'0','false'),(11,'cdn_config_content_rewrite',0,'0','false'),(12,'cdn_config_kernel_rewrite',0,'0','true'),(13,'cdn_config_quota',0,'expires','0'),(14,'cdn_config_quota',1,'allow','0'),(15,'cdn_config_quota',2,'traffic','0');
/*!40000 ALTER TABLE `b_bitrixcloud_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_cache_tag`
--

DROP TABLE IF EXISTS `b_cache_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_cache_tag` (
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SALT` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RELATIVE_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_b_cache_tag_0` (`SITE_ID`,`CACHE_SALT`,`RELATIVE_PATH`(50)),
  KEY `ix_b_cache_tag_1` (`TAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_cache_tag`
--

LOCK TABLES `b_cache_tag` WRITE;
/*!40000 ALTER TABLE `b_cache_tag` DISABLE KEYS */;
INSERT INTO `b_cache_tag` VALUES (NULL,NULL,'0:1586801725','**'),('s1','/e25','/s1/bitrix/news.list/e25','iblock_id_1'),('s1','/888','/s1/bitrix/catalog.section.list/888','iblock_id_3'),('s1','/888','/s1/bitrix/catalog.top','iblock_id_3'),('s1','/888','/s1/bitrix/catalog.section','iblock_id_3');
/*!40000 ALTER TABLE `b_cache_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_captcha`
--

DROP TABLE IF EXISTS `b_captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_captcha` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  UNIQUE KEY `UX_B_CAPTCHA` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_captcha`
--

LOCK TABLES `b_captcha` WRITE;
/*!40000 ALTER TABLE `b_captcha` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_checklist`
--

DROP TABLE IF EXISTS `b_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_checklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_CREATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TESTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMPANY_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `SUCCESS` int(11) DEFAULT NULL,
  `FAILED` int(11) DEFAULT NULL,
  `PENDING` int(11) DEFAULT NULL,
  `SKIP` int(11) DEFAULT NULL,
  `STATE` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `REPORT_COMMENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `REPORT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SENDED_TO_BITRIX` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_checklist`
--

LOCK TABLES `b_checklist` WRITE;
/*!40000 ALTER TABLE `b_checklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_copy_queue`
--

DROP TABLE IF EXISTS `b_clouds_copy_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_copy_queue` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `OP` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `SOURCE_BUCKET_ID` int(11) NOT NULL,
  `SOURCE_FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `TARGET_BUCKET_ID` int(11) NOT NULL,
  `TARGET_FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` int(11) NOT NULL DEFAULT -1,
  `FILE_POS` int(11) NOT NULL DEFAULT 0,
  `FAIL_COUNTER` int(11) NOT NULL DEFAULT 0,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ERROR_MESSAGE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_copy_queue`
--

LOCK TABLES `b_clouds_copy_queue` WRITE;
/*!40000 ALTER TABLE `b_clouds_copy_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_copy_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_delete_queue`
--

DROP TABLE IF EXISTS `b_clouds_delete_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_delete_queue` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `BUCKET_ID` int(11) NOT NULL,
  `FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_clouds_delete_queue_1` (`BUCKET_ID`,`FILE_PATH`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_delete_queue`
--

LOCK TABLES `b_clouds_delete_queue` WRITE;
/*!40000 ALTER TABLE `b_clouds_delete_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_delete_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_bucket`
--

DROP TABLE IF EXISTS `b_clouds_file_bucket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_bucket` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(11) DEFAULT 500,
  `READ_ONLY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `SERVICE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOCATION` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_COUNT` int(11) DEFAULT 0,
  `FILE_SIZE` double DEFAULT 0,
  `LAST_FILE_ID` int(11) DEFAULT NULL,
  `PREFIX` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_RULES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `FAILOVER_ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `FAILOVER_BUCKET_ID` int(11) DEFAULT NULL,
  `FAILOVER_COPY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `FAILOVER_DELETE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `FAILOVER_DELETE_DELAY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_bucket`
--

LOCK TABLES `b_clouds_file_bucket` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_bucket` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_bucket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_resize`
--

DROP TABLE IF EXISTS `b_clouds_file_resize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_resize` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ERROR_CODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `FILE_ID` int(11) DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `FROM_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_file_resize_ts` (`TIMESTAMP_X`),
  KEY `ix_b_file_resize_path` (`TO_PATH`(100)),
  KEY `ix_b_file_resize_file` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_resize`
--

LOCK TABLES `b_clouds_file_resize` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_resize` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_resize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_save`
--

DROP TABLE IF EXISTS `b_clouds_file_save`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_save` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `BUCKET_ID` int(11) NOT NULL,
  `SUBDIR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_EXTERNAL_ID` (`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_save`
--

LOCK TABLES `b_clouds_file_save` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_save` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_upload`
--

DROP TABLE IF EXISTS `b_clouds_file_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_upload` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `TMP_FILE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET_ID` int(11) NOT NULL,
  `PART_SIZE` int(11) NOT NULL,
  `PART_NO` int(11) NOT NULL,
  `PART_FAIL_COUNTER` int(11) NOT NULL,
  `NEXT_STEP` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_upload`
--

LOCK TABLES `b_clouds_file_upload` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_component_params`
--

DROP TABLE IF EXISTS `b_component_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_component_params` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `COMPONENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TEMPLATE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REAL_PATH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SEF_MODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SEF_FOLDER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_CHAR` int(11) NOT NULL,
  `END_CHAR` int(11) NOT NULL,
  `PARAMETERS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_comp_params_name` (`COMPONENT_NAME`),
  KEY `ix_comp_params_path` (`SITE_ID`,`REAL_PATH`),
  KEY `ix_comp_params_sname` (`SITE_ID`,`COMPONENT_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_component_params`
--

LOCK TABLES `b_component_params` WRITE;
/*!40000 ALTER TABLE `b_component_params` DISABLE KEYS */;
INSERT INTO `b_component_params` VALUES (7,'s1','bitrix:catalog.section.list','','/local/templates/skb/components/bitrix/catalog/.default_old1/sections.php','N',NULL,523,1395,'a:12:{s:11:\"IBLOCK_TYPE\";s:27:\"={$arParams[\"IBLOCK_TYPE\"]}\";s:9:\"IBLOCK_ID\";s:25:\"={$arParams[\"IBLOCK_ID\"]}\";s:10:\"CACHE_TYPE\";s:26:\"={$arParams[\"CACHE_TYPE\"]}\";s:10:\"CACHE_TIME\";s:26:\"={$arParams[\"CACHE_TIME\"]}\";s:12:\"CACHE_GROUPS\";s:28:\"={$arParams[\"CACHE_GROUPS\"]}\";s:14:\"COUNT_ELEMENTS\";s:38:\"={$arParams[\"SECTION_COUNT_ELEMENTS\"]}\";s:9:\"TOP_DEPTH\";s:33:\"={$arParams[\"SECTION_TOP_DEPTH\"]}\";s:11:\"SECTION_URL\";s:60:\"={$arResult[\"FOLDER\"].$arResult[\"URL_TEMPLATES\"][\"section\"]}\";s:9:\"VIEW_MODE\";s:34:\"={$arParams[\"SECTIONS_VIEW_MODE\"]}\";s:16:\"SHOW_PARENT_NAME\";s:41:\"={$arParams[\"SECTIONS_SHOW_PARENT_NAME\"]}\";s:17:\"HIDE_SECTION_NAME\";s:95:\"={(isset($arParams[\"SECTIONS_HIDE_SECTION_NAME\"])?$arParams[\"SECTIONS_HIDE_SECTION_NAME\"]:\"N\")}\";s:18:\"ADD_SECTIONS_CHAIN\";s:78:\"={(isset($arParams[\"ADD_SECTIONS_CHAIN\"])?$arParams[\"ADD_SECTIONS_CHAIN\"]:\"\")}\";}'),(8,'s1','bitrix:catalog.compare.list','','/local/templates/skb/components/bitrix/catalog/.default_old1/sections.php','N',NULL,1442,2159,'a:9:{s:11:\"IBLOCK_TYPE\";s:27:\"={$arParams[\"IBLOCK_TYPE\"]}\";s:9:\"IBLOCK_ID\";s:25:\"={$arParams[\"IBLOCK_ID\"]}\";s:4:\"NAME\";s:28:\"={$arParams[\"COMPARE_NAME\"]}\";s:10:\"DETAIL_URL\";s:60:\"={$arResult[\"FOLDER\"].$arResult[\"URL_TEMPLATES\"][\"element\"]}\";s:11:\"COMPARE_URL\";s:60:\"={$arResult[\"FOLDER\"].$arResult[\"URL_TEMPLATES\"][\"compare\"]}\";s:15:\"ACTION_VARIABLE\";s:31:\"={$arParams[\"ACTION_VARIABLE\"]}\";s:19:\"PRODUCT_ID_VARIABLE\";s:35:\"={$arParams[\"PRODUCT_ID_VARIABLE\"]}\";s:14:\"POSITION_FIXED\";s:84:\"={isset($arParams[\"COMPARE_POSITION_FIXED\"])?$arParams[\"COMPARE_POSITION_FIXED\"]:\"\"}\";s:8:\"POSITION\";s:72:\"={isset($arParams[\"COMPARE_POSITION\"])?$arParams[\"COMPARE_POSITION\"]:\"\"}\";}'),(9,'s1','bitrix:catalog.top','','/local/templates/skb/components/bitrix/catalog/.default_old1/sections.php','N',NULL,2575,6403,'a:60:{s:11:\"IBLOCK_TYPE\";s:27:\"={$arParams[\"IBLOCK_TYPE\"]}\";s:9:\"IBLOCK_ID\";s:25:\"={$arParams[\"IBLOCK_ID\"]}\";s:18:\"ELEMENT_SORT_FIELD\";s:38:\"={$arParams[\"TOP_ELEMENT_SORT_FIELD\"]}\";s:18:\"ELEMENT_SORT_ORDER\";s:38:\"={$arParams[\"TOP_ELEMENT_SORT_ORDER\"]}\";s:19:\"ELEMENT_SORT_FIELD2\";s:39:\"={$arParams[\"TOP_ELEMENT_SORT_FIELD2\"]}\";s:19:\"ELEMENT_SORT_ORDER2\";s:39:\"={$arParams[\"TOP_ELEMENT_SORT_ORDER2\"]}\";s:11:\"SECTION_URL\";s:60:\"={$arResult[\"FOLDER\"].$arResult[\"URL_TEMPLATES\"][\"section\"]}\";s:10:\"DETAIL_URL\";s:60:\"={$arResult[\"FOLDER\"].$arResult[\"URL_TEMPLATES\"][\"element\"]}\";s:10:\"BASKET_URL\";s:26:\"={$arParams[\"BASKET_URL\"]}\";s:15:\"ACTION_VARIABLE\";s:31:\"={$arParams[\"ACTION_VARIABLE\"]}\";s:19:\"PRODUCT_ID_VARIABLE\";s:35:\"={$arParams[\"PRODUCT_ID_VARIABLE\"]}\";s:19:\"SECTION_ID_VARIABLE\";s:35:\"={$arParams[\"SECTION_ID_VARIABLE\"]}\";s:25:\"PRODUCT_QUANTITY_VARIABLE\";s:41:\"={$arParams[\"PRODUCT_QUANTITY_VARIABLE\"]}\";s:22:\"PRODUCT_PROPS_VARIABLE\";s:38:\"={$arParams[\"PRODUCT_PROPS_VARIABLE\"]}\";s:15:\"DISPLAY_COMPARE\";s:27:\"={$arParams[\"USE_COMPARE\"]}\";s:13:\"ELEMENT_COUNT\";s:33:\"={$arParams[\"TOP_ELEMENT_COUNT\"]}\";s:18:\"LINE_ELEMENT_COUNT\";s:38:\"={$arParams[\"TOP_LINE_ELEMENT_COUNT\"]}\";s:13:\"PROPERTY_CODE\";s:33:\"={$arParams[\"TOP_PROPERTY_CODE\"]}\";s:10:\"PRICE_CODE\";s:26:\"={$arParams[\"PRICE_CODE\"]}\";s:15:\"USE_PRICE_COUNT\";s:31:\"={$arParams[\"USE_PRICE_COUNT\"]}\";s:16:\"SHOW_PRICE_COUNT\";s:32:\"={$arParams[\"SHOW_PRICE_COUNT\"]}\";s:17:\"PRICE_VAT_INCLUDE\";s:33:\"={$arParams[\"PRICE_VAT_INCLUDE\"]}\";s:20:\"PRICE_VAT_SHOW_VALUE\";s:36:\"={$arParams[\"PRICE_VAT_SHOW_VALUE\"]}\";s:20:\"USE_PRODUCT_QUANTITY\";s:36:\"={$arParams[\"USE_PRODUCT_QUANTITY\"]}\";s:24:\"ADD_PROPERTIES_TO_BASKET\";s:90:\"={(isset($arParams[\"ADD_PROPERTIES_TO_BASKET\"])?$arParams[\"ADD_PROPERTIES_TO_BASKET\"]:\"\")}\";s:26:\"PARTIAL_PRODUCT_PROPERTIES\";s:94:\"={(isset($arParams[\"PARTIAL_PRODUCT_PROPERTIES\"])?$arParams[\"PARTIAL_PRODUCT_PROPERTIES\"]:\"\")}\";s:18:\"PRODUCT_PROPERTIES\";s:34:\"={$arParams[\"PRODUCT_PROPERTIES\"]}\";s:10:\"CACHE_TYPE\";s:26:\"={$arParams[\"CACHE_TYPE\"]}\";s:10:\"CACHE_TIME\";s:26:\"={$arParams[\"CACHE_TIME\"]}\";s:12:\"CACHE_GROUPS\";s:28:\"={$arParams[\"CACHE_GROUPS\"]}\";s:22:\"OFFERS_CART_PROPERTIES\";s:38:\"={$arParams[\"OFFERS_CART_PROPERTIES\"]}\";s:17:\"OFFERS_FIELD_CODE\";s:37:\"={$arParams[\"TOP_OFFERS_FIELD_CODE\"]}\";s:20:\"OFFERS_PROPERTY_CODE\";s:40:\"={$arParams[\"TOP_OFFERS_PROPERTY_CODE\"]}\";s:17:\"OFFERS_SORT_FIELD\";s:33:\"={$arParams[\"OFFERS_SORT_FIELD\"]}\";s:17:\"OFFERS_SORT_ORDER\";s:33:\"={$arParams[\"OFFERS_SORT_ORDER\"]}\";s:18:\"OFFERS_SORT_FIELD2\";s:34:\"={$arParams[\"OFFERS_SORT_FIELD2\"]}\";s:18:\"OFFERS_SORT_ORDER2\";s:34:\"={$arParams[\"OFFERS_SORT_ORDER2\"]}\";s:12:\"OFFERS_LIMIT\";s:32:\"={$arParams[\"TOP_OFFERS_LIMIT\"]}\";s:16:\"CONVERT_CURRENCY\";s:32:\"={$arParams[\"CONVERT_CURRENCY\"]}\";s:11:\"CURRENCY_ID\";s:27:\"={$arParams[\"CURRENCY_ID\"]}\";s:18:\"HIDE_NOT_AVAILABLE\";s:34:\"={$arParams[\"HIDE_NOT_AVAILABLE\"]}\";s:9:\"VIEW_MODE\";s:68:\"={(isset($arParams[\"TOP_VIEW_MODE\"])?$arParams[\"TOP_VIEW_MODE\"]:\"\")}\";s:12:\"ROTATE_TIMER\";s:74:\"={(isset($arParams[\"TOP_ROTATE_TIMER\"])?$arParams[\"TOP_ROTATE_TIMER\"]:\"\")}\";s:14:\"TEMPLATE_THEME\";s:70:\"={(isset($arParams[\"TEMPLATE_THEME\"])?$arParams[\"TEMPLATE_THEME\"]:\"\")}\";s:10:\"LABEL_PROP\";s:26:\"={$arParams[\"LABEL_PROP\"]}\";s:13:\"ADD_PICT_PROP\";s:29:\"={$arParams[\"ADD_PICT_PROP\"]}\";s:20:\"PRODUCT_DISPLAY_MODE\";s:36:\"={$arParams[\"PRODUCT_DISPLAY_MODE\"]}\";s:19:\"OFFER_ADD_PICT_PROP\";s:35:\"={$arParams[\"OFFER_ADD_PICT_PROP\"]}\";s:16:\"OFFER_TREE_PROPS\";s:32:\"={$arParams[\"OFFER_TREE_PROPS\"]}\";s:20:\"PRODUCT_SUBSCRIPTION\";s:36:\"={$arParams[\"PRODUCT_SUBSCRIPTION\"]}\";s:21:\"SHOW_DISCOUNT_PERCENT\";s:37:\"={$arParams[\"SHOW_DISCOUNT_PERCENT\"]}\";s:14:\"SHOW_OLD_PRICE\";s:30:\"={$arParams[\"SHOW_OLD_PRICE\"]}\";s:12:\"MESS_BTN_BUY\";s:28:\"={$arParams[\"MESS_BTN_BUY\"]}\";s:22:\"MESS_BTN_ADD_TO_BASKET\";s:38:\"={$arParams[\"MESS_BTN_ADD_TO_BASKET\"]}\";s:18:\"MESS_BTN_SUBSCRIBE\";s:34:\"={$arParams[\"MESS_BTN_SUBSCRIBE\"]}\";s:15:\"MESS_BTN_DETAIL\";s:31:\"={$arParams[\"MESS_BTN_DETAIL\"]}\";s:18:\"MESS_NOT_AVAILABLE\";s:34:\"={$arParams[\"MESS_NOT_AVAILABLE\"]}\";s:20:\"ADD_TO_BASKET_ACTION\";s:16:\"={$basketAction}\";s:16:\"SHOW_CLOSE_POPUP\";s:86:\"={isset($arParams[\"COMMON_SHOW_CLOSE_POPUP\"])?$arParams[\"COMMON_SHOW_CLOSE_POPUP\"]:\"\"}\";s:12:\"COMPARE_PATH\";s:60:\"={$arResult[\"FOLDER\"].$arResult[\"URL_TEMPLATES\"][\"compare\"]}\";}'),(10,'s1','bitrix:breadcrumb','.default','/local/templates/skb/header.php','N',NULL,4941,5128,'a:4:{s:10:\"START_FROM\";s:1:\"1\";s:4:\"PATH\";s:0:\"\";s:7:\"SITE_ID\";s:2:\"s1\";s:18:\"COMPONENT_TEMPLATE\";s:8:\".default\";}'),(19,'s1','bitrix:catalog','.default_old1','/chastnym-licam/index.php','N',NULL,105,4542,'a:128:{s:15:\"ACTION_VARIABLE\";s:6:\"action\";s:17:\"ADD_ELEMENT_CHAIN\";s:1:\"N\";s:24:\"ADD_PROPERTIES_TO_BASKET\";s:1:\"Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"Y\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"N\";s:10:\"BASKET_URL\";s:20:\"/personal/basket.php\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:15:\"COMPATIBLE_MODE\";s:1:\"Y\";s:27:\"DETAIL_ADD_DETAIL_TO_SLIDER\";s:1:\"N\";s:23:\"DETAIL_BACKGROUND_IMAGE\";s:1:\"-\";s:16:\"DETAIL_BRAND_USE\";s:1:\"N\";s:20:\"DETAIL_BROWSER_TITLE\";s:1:\"-\";s:32:\"DETAIL_CHECK_SECTION_ID_VARIABLE\";s:1:\"N\";s:26:\"DETAIL_DETAIL_PICTURE_MODE\";s:9:\"MAGNIFIER\";s:19:\"DETAIL_DISPLAY_NAME\";s:1:\"Y\";s:32:\"DETAIL_DISPLAY_PREVIEW_TEXT_MODE\";s:1:\"E\";s:23:\"DETAIL_IMAGE_RESOLUTION\";s:5:\"16by9\";s:23:\"DETAIL_META_DESCRIPTION\";s:1:\"-\";s:20:\"DETAIL_META_KEYWORDS\";s:1:\"-\";s:31:\"DETAIL_PRODUCT_INFO_BLOCK_ORDER\";s:9:\"sku,props\";s:30:\"DETAIL_PRODUCT_PAY_BLOCK_ORDER\";s:55:\"rating,price,priceRanges,quantityLimit,quantity,buttons\";s:24:\"DETAIL_SET_CANONICAL_URL\";s:1:\"N\";s:19:\"DETAIL_SHOW_POPULAR\";s:1:\"Y\";s:18:\"DETAIL_SHOW_SLIDER\";s:1:\"N\";s:18:\"DETAIL_SHOW_VIEWED\";s:1:\"Y\";s:27:\"DETAIL_STRICT_SECTION_CHECK\";s:1:\"N\";s:19:\"DETAIL_USE_COMMENTS\";s:1:\"N\";s:22:\"DETAIL_USE_VOTE_RATING\";s:1:\"N\";s:28:\"DISABLE_INIT_JS_IN_COMPONENT\";s:1:\"N\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:18:\"ELEMENT_SORT_FIELD\";s:4:\"sort\";s:19:\"ELEMENT_SORT_FIELD2\";s:2:\"id\";s:18:\"ELEMENT_SORT_ORDER\";s:3:\"asc\";s:19:\"ELEMENT_SORT_ORDER2\";s:4:\"desc\";s:21:\"FILTER_HIDE_ON_MOBILE\";s:1:\"N\";s:16:\"FILTER_VIEW_MODE\";s:8:\"VERTICAL\";s:9:\"IBLOCK_ID\";s:1:\"3\";s:11:\"IBLOCK_TYPE\";s:7:\"catalog\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:14:\"INSTANT_RELOAD\";s:1:\"N\";s:9:\"LAZY_LOAD\";s:1:\"N\";s:18:\"LINE_ELEMENT_COUNT\";s:1:\"3\";s:17:\"LINK_ELEMENTS_URL\";s:39:\"link.php?PARENT_ELEMENT_ID=#ELEMENT_ID#\";s:14:\"LINK_IBLOCK_ID\";s:0:\"\";s:16:\"LINK_IBLOCK_TYPE\";s:0:\"\";s:17:\"LINK_PROPERTY_SID\";s:0:\"\";s:18:\"LIST_BROWSER_TITLE\";s:1:\"-\";s:21:\"LIST_META_DESCRIPTION\";s:1:\"-\";s:18:\"LIST_META_KEYWORDS\";s:1:\"-\";s:14:\"LOAD_ON_SCROLL\";s:1:\"N\";s:11:\"MESSAGE_404\";s:0:\"\";s:22:\"MESS_BTN_ADD_TO_BASKET\";s:17:\"В корзину\";s:12:\"MESS_BTN_BUY\";s:12:\"Купить\";s:16:\"MESS_BTN_COMPARE\";s:18:\"Сравнение\";s:15:\"MESS_BTN_DETAIL\";s:18:\"Подробнее\";s:18:\"MESS_BTN_SUBSCRIBE\";s:22:\"Подписаться\";s:18:\"MESS_NOT_AVAILABLE\";s:24:\"Нет в наличии\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:12:\"Товары\";s:18:\"PAGE_ELEMENT_COUNT\";s:2:\"30\";s:26:\"PARTIAL_PRODUCT_PROPERTIES\";s:1:\"N\";s:10:\"PRICE_CODE\";N;s:17:\"PRICE_VAT_INCLUDE\";s:1:\"Y\";s:20:\"PRICE_VAT_SHOW_VALUE\";s:1:\"N\";s:19:\"PRODUCT_ID_VARIABLE\";s:2:\"id\";s:22:\"PRODUCT_PROPS_VARIABLE\";s:4:\"prop\";s:25:\"PRODUCT_QUANTITY_VARIABLE\";s:8:\"quantity\";s:18:\"SEARCH_CHECK_DATES\";s:1:\"Y\";s:20:\"SEARCH_NO_WORD_LOGIC\";s:1:\"Y\";s:24:\"SEARCH_PAGE_RESULT_COUNT\";s:2:\"50\";s:14:\"SEARCH_RESTART\";s:1:\"N\";s:25:\"SEARCH_USE_LANGUAGE_GUESS\";s:1:\"Y\";s:25:\"SECTIONS_SHOW_PARENT_NAME\";s:1:\"Y\";s:18:\"SECTIONS_VIEW_MODE\";s:4:\"LIST\";s:24:\"SECTION_BACKGROUND_IMAGE\";s:1:\"-\";s:22:\"SECTION_COUNT_ELEMENTS\";s:1:\"Y\";s:19:\"SECTION_ID_VARIABLE\";s:10:\"SECTION_ID\";s:17:\"SECTION_TOP_DEPTH\";s:1:\"2\";s:8:\"SEF_MODE\";s:1:\"N\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:14:\"SET_STATUS_404\";s:1:\"Y\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"Y\";s:16:\"SHOW_DEACTIVATED\";s:1:\"N\";s:16:\"SHOW_PRICE_COUNT\";s:1:\"1\";s:17:\"SHOW_TOP_ELEMENTS\";s:1:\"Y\";s:19:\"SIDEBAR_DETAIL_SHOW\";s:1:\"N\";s:12:\"SIDEBAR_PATH\";s:0:\"\";s:20:\"SIDEBAR_SECTION_SHOW\";s:1:\"Y\";s:14:\"TEMPLATE_THEME\";s:4:\"blue\";s:17:\"TOP_ELEMENT_COUNT\";s:1:\"9\";s:22:\"TOP_ELEMENT_SORT_FIELD\";s:4:\"sort\";s:23:\"TOP_ELEMENT_SORT_FIELD2\";s:2:\"id\";s:22:\"TOP_ELEMENT_SORT_ORDER\";s:3:\"asc\";s:23:\"TOP_ELEMENT_SORT_ORDER2\";s:4:\"desc\";s:22:\"TOP_LINE_ELEMENT_COUNT\";s:1:\"3\";s:13:\"TOP_VIEW_MODE\";s:7:\"SECTION\";s:12:\"USER_CONSENT\";s:1:\"N\";s:15:\"USER_CONSENT_ID\";s:1:\"0\";s:23:\"USER_CONSENT_IS_CHECKED\";s:1:\"Y\";s:22:\"USER_CONSENT_IS_LOADED\";s:1:\"N\";s:11:\"USE_COMPARE\";s:1:\"N\";s:19:\"USE_ELEMENT_COUNTER\";s:1:\"Y\";s:22:\"USE_ENHANCED_ECOMMERCE\";s:1:\"N\";s:10:\"USE_FILTER\";s:1:\"N\";s:24:\"USE_MAIN_ELEMENT_SECTION\";s:1:\"N\";s:15:\"USE_PRICE_COUNT\";s:1:\"N\";s:20:\"USE_PRODUCT_QUANTITY\";s:1:\"N\";s:9:\"USE_STORE\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:13:\".default_old1\";s:13:\"ADD_PICT_PROP\";s:1:\"-\";s:10:\"LABEL_PROP\";s:1:\"-\";s:10:\"SEF_FOLDER\";s:16:\"/chastnym-licam/\";s:8:\"FILE_404\";s:8:\"/404.php\";s:16:\"VARIABLE_ALIASES\";a:2:{s:10:\"ELEMENT_ID\";s:10:\"ELEMENT_ID\";s:10:\"SECTION_ID\";s:10:\"SECTION_ID\";}}');
/*!40000 ALTER TABLE `b_component_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_composite_log`
--

DROP TABLE IF EXISTS `b_composite_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_composite_log` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HOST` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `AJAX` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `USER_ID` int(18) NOT NULL DEFAULT 0,
  `PAGE_ID` int(18) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IX_B_COMPOSITE_LOG_PAGE_ID` (`PAGE_ID`),
  KEY `IX_B_COMPOSITE_LOG_HOST` (`HOST`),
  KEY `IX_B_COMPOSITE_LOG_TYPE` (`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_composite_log`
--

LOCK TABLES `b_composite_log` WRITE;
/*!40000 ALTER TABLE `b_composite_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_composite_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_composite_page`
--

DROP TABLE IF EXISTS `b_composite_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_composite_page` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CACHE_KEY` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `HOST` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `CHANGED` datetime NOT NULL,
  `LAST_VIEWED` datetime NOT NULL,
  `VIEWS` int(18) NOT NULL DEFAULT 0,
  `REWRITES` int(18) NOT NULL DEFAULT 0,
  `SIZE` int(18) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IX_B_COMPOSITE_PAGE_CACHE_KEY` (`CACHE_KEY`(100)),
  KEY `IX_B_COMPOSITE_PAGE_VIEWED` (`LAST_VIEWED`),
  KEY `IX_B_COMPOSITE_PAGE_HOST` (`HOST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_composite_page`
--

LOCK TABLES `b_composite_page` WRITE;
/*!40000 ALTER TABLE `b_composite_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_composite_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_consent_agreement`
--

DROP TABLE IF EXISTS `b_consent_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_consent_agreement` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATA_PROVIDER` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AGREEMENT_TEXT` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `LABEL_TEXT` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_AGREEMENT_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_consent_agreement`
--

LOCK TABLES `b_consent_agreement` WRITE;
/*!40000 ALTER TABLE `b_consent_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_consent_field`
--

DROP TABLE IF EXISTS `b_consent_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_consent_field` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `AGREEMENT_ID` int(18) NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_FIELD_AG_ID` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_consent_field`
--

LOCK TABLES `b_consent_field` WRITE;
/*!40000 ALTER TABLE `b_consent_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_consent_user_consent`
--

DROP TABLE IF EXISTS `b_consent_user_consent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_consent_user_consent` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `AGREEMENT_ID` int(18) NOT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGIN_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGINATOR_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_USER_CONSENT` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_consent_user_consent`
--

LOCK TABLES `b_consent_user_consent` WRITE;
/*!40000 ALTER TABLE `b_consent_user_consent` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_user_consent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_counter_data`
--

DROP TABLE IF EXISTS `b_counter_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_counter_data` (
  `ID` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DATA` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_counter_data`
--

LOCK TABLES `b_counter_data` WRITE;
/*!40000 ALTER TABLE `b_counter_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_counter_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_culture`
--

DROP TABLE IF EXISTS `b_culture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_culture` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(1) DEFAULT 1,
  `CHARSET` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SHORT_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'n/j/Y',
  `MEDIUM_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'M j, Y',
  `LONG_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'F j, Y',
  `FULL_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'l, F j, Y',
  `DAY_MONTH_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'M j',
  `SHORT_TIME_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'g:i a',
  `LONG_TIME_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'g:i:s a',
  `AM_VALUE` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'am',
  `PM_VALUE` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pm',
  `NUMBER_THOUSANDS_SEPARATOR` varchar(10) COLLATE utf8_unicode_ci DEFAULT ',',
  `NUMBER_DECIMAL_SEPARATOR` varchar(10) COLLATE utf8_unicode_ci DEFAULT '.',
  `NUMBER_DECIMALS` tinyint(4) DEFAULT 2,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_culture`
--

LOCK TABLES `b_culture` WRITE;
/*!40000 ALTER TABLE `b_culture` DISABLE KEYS */;
INSERT INTO `b_culture` VALUES (1,'ru','ru','DD.MM.YYYY','DD.MM.YYYY HH:MI:SS','#NAME# #LAST_NAME#',1,'UTF-8','Y','d.m.Y','j M Y','j F Y','l, j F Y','j F','H:i','H:i:s','am','pm',' ',',',2),(2,'en','en','MM/DD/YYYY','MM/DD/YYYY H:MI:SS T','#NAME# #LAST_NAME#',0,'UTF-8','Y','n/j/Y','M j, Y','F j, Y','l, F j, Y','M j','g:i a','g:i:s a','am','pm',',','.',2);
/*!40000 ALTER TABLE `b_culture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event`
--

DROP TABLE IF EXISTS `b_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` int(18) DEFAULT NULL,
  `LID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `C_FIELDS` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DUPLICATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_success` (`SUCCESS_EXEC`),
  KEY `ix_b_event_date_exec` (`DATE_EXEC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event`
--

LOCK TABLES `b_event` WRITE;
/*!40000 ALTER TABLE `b_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_attachment`
--

DROP TABLE IF EXISTS `b_event_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_attachment` (
  `EVENT_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  `IS_FILE_COPIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`EVENT_ID`,`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_attachment`
--

LOCK TABLES `b_event_attachment` WRITE;
/*!40000 ALTER TABLE `b_event_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_log`
--

DROP TABLE IF EXISTS `b_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_log` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `SEVERITY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AUDIT_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `GUEST_ID` int(18) DEFAULT NULL,
  `DESCRIPTION` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_event_log_time` (`TIMESTAMP_X`),
  KEY `ix_b_event_log_audit_type_time` (`AUDIT_TYPE_ID`,`TIMESTAMP_X`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_log`
--

LOCK TABLES `b_event_log` WRITE;
/*!40000 ALTER TABLE `b_event_log` DISABLE KEYS */;
INSERT INTO `b_event_log` VALUES (1,'2020-04-13 17:08:08','UNKNOWN','PAGE_ADD','main','UNKNOWN','192.168.48.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=skb&newFolder=Y&path=%2F&back_url=%2F&siteTemplateId=skb',NULL,1,NULL,'a:1:{s:4:\"path\";s:24:\"chastnym-licam/index.php\";}'),(2,'2020-04-13 17:08:08','UNKNOWN','SECTION_ADD','main','UNKNOWN','192.168.48.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=skb&newFolder=Y&path=%2F&back_url=%2F&siteTemplateId=skb',NULL,1,NULL,'a:1:{s:4:\"path\";s:14:\"chastnym-licam\";}'),(3,'2020-04-13 17:08:08','UNKNOWN','MENU_EDIT','main','UNKNOWN','192.168.48.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=skb&newFolder=Y&path=%2F&back_url=%2F&siteTemplateId=skb',NULL,1,NULL,'a:2:{s:4:\"path\";s:0:\"\";s:9:\"menu_name\";s:40:\"Левое меню (подуровни)\";}'),(4,'2020-04-13 17:08:13','UNKNOWN','PAGE_EDIT','main','UNKNOWN','192.168.48.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:24:\"chastnym-licam/index.php\";}'),(5,'2020-04-13 17:08:49','UNKNOWN','PAGE_EDIT','main','UNKNOWN','192.168.48.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:24:\"chastnym-licam/index.php\";}'),(6,'2020-04-13 17:16:37','UNKNOWN','PAGE_EDIT','main','UNKNOWN','192.168.48.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:24:\"chastnym-licam/index.php\";}'),(7,'2020-04-13 17:21:22','UNKNOWN','PAGE_EDIT','main','UNKNOWN','192.168.48.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36','/bitrix/admin/public_file_edit_src.php?bxsender=core_window_cdialog&lang=ru&site=ru&back_url=%2Fchastnym-licam%2F%3Fbitrix_include_areas%3DY%26clear_cache%3DY&path=%2Flocal%2Ftemplates%2Fskb%2Fcomponents%2Fbitrix%2Fcatalog%2F.default_old1%2Fsections.php','s1',1,NULL,'a:1:{s:4:\"path\";s:72:\"local/templates/skb/components/bitrix/catalog/.default_old1/sections.php\";}');
/*!40000 ALTER TABLE `b_event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_message`
--

DROP TABLE IF EXISTS `b_event_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_message` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EMAIL_FROM` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_FROM#',
  `EMAIL_TO` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_TO#',
  `SUBJECT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE_PHP` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `BODY_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `BCC` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRIORITY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDITIONAL_FIELD` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_event_message_name` (`EVENT_NAME`(50))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_message`
--

LOCK TABLES `b_event_message` WRITE;
/*!40000 ALTER TABLE `b_event_message` DISABLE KEYS */;
INSERT INTO `b_event_message` VALUES (1,'2020-04-13 19:42:15','NEW_USER','s1','Y','#DEFAULT_EMAIL_FROM#','#DEFAULT_EMAIL_FROM#','#SITE_NAME#: Зарегистрировался новый пользователь','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНа сайте #SERVER_NAME# успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: #USER_ID#\n\nИмя: #NAME#\nФамилия: #LAST_NAME#\nE-Mail: #EMAIL#\n\nLogin: #LOGIN#\n\nПисьмо сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНа сайте <?=$arParams[\"SERVER_NAME\"];?> успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\n\nИмя: <?=$arParams[\"NAME\"];?>\n\nФамилия: <?=$arParams[\"LAST_NAME\"];?>\n\nE-Mail: <?=$arParams[\"EMAIL\"];?>\n\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nПисьмо сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(2,'2020-04-13 19:42:15','USER_INFO','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Регистрационная информация','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(3,'2020-04-13 19:42:16','USER_PASS_REQUEST','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Запрос на смену пароля','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(4,'2020-04-13 19:42:16','USER_PASS_CHANGED','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Подтверждение смены пароля','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(5,'2020-04-13 19:42:16','NEW_USER_CONFIRM','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Подтверждение регистрации нового пользователя','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере #SERVER_NAME#.\n\nВаш код для подтверждения регистрации: #CONFIRM_CODE#\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#&confirm_code=#CONFIRM_CODE#\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере <?=$arParams[\"SERVER_NAME\"];?>.\n\nВаш код для подтверждения регистрации: <?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>&confirm_code=<?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>\n\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(6,'2020-04-13 19:42:17','USER_INVITE','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Приглашение на сайт','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\nЗдравствуйте, #NAME# #LAST_NAME#!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: #ID#\nLogin: #LOGIN#\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth.php?change_password=yes&USER_LOGIN=#URL_LOGIN#&USER_CHECKWORD=#CHECKWORD#\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\nЗдравствуйте, <?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"ID\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth.php?change_password=yes&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>\n\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(7,'2020-04-13 19:42:17','FEEDBACK_FORM','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: Сообщение из формы обратной связи','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: #AUTHOR#\nE-mail автора: #AUTHOR_EMAIL#\n\nТекст сообщения:\n#TEXT#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nE-mail автора: <?=$arParams[\"AUTHOR_EMAIL\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"TEXT\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(8,'2020-04-13 19:42:17','MAIN_MAIL_CONFIRM_CODE','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL_TO#','#MESSAGE_SUBJECT#','<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>','<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>','html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mail_join',NULL,NULL),(9,'2020-04-13 19:42:18','EVENT_LOG_NOTIFICATION','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','Оповещение журнала событий: #NAME#','Зафиксированы события в журнале, соответствующие параметрам оповещения:\n\nТип события: #AUDIT_TYPE_ID#\nОбъект: #ITEM_ID#\nПользователь: #USER_ID# \nIP-адрес: #REMOTE_ADDR#\nБраузер: #USER_AGENT#\nСтраница: #REQUEST_URI# \n\nКоличество записей: #EVENT_COUNT# \n\n#ADDITIONAL_TEXT#\n\nПерейти в журнал событий:\nhttp://#SERVER_NAME#/bitrix/admin/event_log.php?set_filter=Y&find_audit_type_id=#AUDIT_TYPE_ID#','Зафиксированы события в журнале, соответствующие параметрам оповещения:\n\nТип события: <?=$arParams[\"AUDIT_TYPE_ID\"];?>\n\nОбъект: <?=$arParams[\"ITEM_ID\"];?>\n\nПользователь: <?=$arParams[\"USER_ID\"];?> \nIP-адрес: <?=$arParams[\"REMOTE_ADDR\"];?>\n\nБраузер: <?=$arParams[\"USER_AGENT\"];?>\n\nСтраница: <?=$arParams[\"REQUEST_URI\"];?> \n\nКоличество записей: <?=$arParams[\"EVENT_COUNT\"];?> \n\n<?=$arParams[\"ADDITIONAL_TEXT\"];?>\n\n\nПерейти в журнал событий:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/bitrix/admin/event_log.php?set_filter=Y&find_audit_type_id=<?=$arParams[\"AUDIT_TYPE_ID\"];?>','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru');
/*!40000 ALTER TABLE `b_event_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_message_attachment`
--

DROP TABLE IF EXISTS `b_event_message_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_message_attachment` (
  `EVENT_MESSAGE_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  PRIMARY KEY (`EVENT_MESSAGE_ID`,`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_message_attachment`
--

LOCK TABLES `b_event_message_attachment` WRITE;
/*!40000 ALTER TABLE `b_event_message_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event_message_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_message_site`
--

DROP TABLE IF EXISTS `b_event_message_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_message_site` (
  `EVENT_MESSAGE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`EVENT_MESSAGE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_message_site`
--

LOCK TABLES `b_event_message_site` WRITE;
/*!40000 ALTER TABLE `b_event_message_site` DISABLE KEYS */;
INSERT INTO `b_event_message_site` VALUES (1,'s1'),(2,'s1'),(3,'s1'),(4,'s1'),(5,'s1'),(6,'s1'),(7,'s1'),(8,'s1'),(9,'s1');
/*!40000 ALTER TABLE `b_event_message_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_type`
--

DROP TABLE IF EXISTS `b_event_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_type` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) NOT NULL DEFAULT 150,
  `EVENT_TYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'email',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_1` (`EVENT_NAME`,`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_type`
--

LOCK TABLES `b_event_type` WRITE;
/*!40000 ALTER TABLE `b_event_type` DISABLE KEYS */;
INSERT INTO `b_event_type` VALUES (1,'ru','NEW_USER','Зарегистрировался новый пользователь','\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n',1,'email'),(2,'ru','USER_INFO','Информация о пользователе','\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n',2,'email'),(3,'ru','NEW_USER_CONFIRM','Подтверждение регистрации нового пользователя','\n\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n#CONFIRM_CODE# - Код подтверждения\n',3,'email'),(4,'ru','USER_PASS_REQUEST','Запрос на смену пароля','\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n',4,'email'),(5,'ru','USER_PASS_CHANGED','Подтверждение смены пароля','\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n',5,'email'),(6,'ru','USER_INVITE','Приглашение на сайт нового пользователя','#ID# - ID пользователя\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#PASSWORD# - пароль пользователя \n#CHECKWORD# - Контрольная строка для смены пароля\n#XML_ID# - ID пользователя для связи с внешними источниками\n',6,'email'),(7,'ru','FEEDBACK_FORM','Отправка сообщения через форму обратной связи','#AUTHOR# - Автор сообщения\n#AUTHOR_EMAIL# - Email автора сообщения\n#TEXT# - Текст сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма',7,'email'),(8,'ru','MAIN_MAIL_CONFIRM_CODE','Подтверждение email-адреса отправителя','\n\n#EMAIL_TO# - Email-адрес для подтверждения\n#MESSAGE_SUBJECT# - Тема сообщения\n#CONFIRM_CODE# - Код подтверждения',8,'email'),(9,'ru','EVENT_LOG_NOTIFICATION','Оповещение журнала событий','#EMAIL# - Email получателя\n#ADDITIONAL_TEXT# - Дополнительный текст действия\n#NAME# - Название оповещения\n#AUDIT_TYPE_ID# - Тип события\n#ITEM_ID# - Объект\n#USER_ID# - Пользователь\n#REMOTE_ADDR# - IP-адрес\n#USER_AGENT# - Браузер\n#REQUEST_URI# - Страница\n#EVENT_COUNT# - Количество записей',9,'email'),(10,'ru','SMS_USER_CONFIRM_NUMBER','Подтверждение номера телефона по СМС','#USER_PHONE# - номер телефона\n#CODE# - код подтверждения\n',100,'sms'),(11,'ru','SMS_USER_RESTORE_PASSWORD','Восстановление пароля через СМС','#USER_PHONE# - номер телефона\n#CODE# - код для восстановления\n',100,'sms'),(12,'ru','SMS_EVENT_LOG_NOTIFICATION','Оповещение журнала событий','#PHONE_NUMBER# - Номер телефона получателя\n#ADDITIONAL_TEXT# - Дополнительный текст действия\n#NAME# - Название оповещения\n#AUDIT_TYPE_ID# - Тип события\n#ITEM_ID# - Объект\n#USER_ID# - Пользователь\n#REMOTE_ADDR# - IP-адрес\n#USER_AGENT# - Браузер\n#REQUEST_URI# - Страница\n#EVENT_COUNT# - Количество записей',100,'sms'),(13,'en','NEW_USER','New user was registered','\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#USER_IP# - User IP\n#USER_HOST# - User Host\n',1,'email'),(14,'en','USER_INFO','Account Information','\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n',2,'email'),(15,'en','NEW_USER_CONFIRM','New user registration confirmation','\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - E-mail\n#NAME# - First name\n#LAST_NAME# - Last name\n#USER_IP# - User IP\n#USER_HOST# - User host\n#CONFIRM_CODE# - Confirmation code\n',3,'email'),(16,'en','USER_PASS_REQUEST','Password Change Request','\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n',4,'email'),(17,'en','USER_PASS_CHANGED','Password Change Confirmation','\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n',5,'email'),(18,'en','USER_INVITE','Invitation of a new site user','#ID# - User ID\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#PASSWORD# - User password \n#CHECKWORD# - Password check string\n#XML_ID# - User ID to link with external data sources\n\n',6,'email'),(19,'en','FEEDBACK_FORM','Sending a message using a feedback form','#AUTHOR# - Message author\n#AUTHOR_EMAIL# - Author\'s e-mail address\n#TEXT# - Message text\n#EMAIL_FROM# - Sender\'s e-mail address\n#EMAIL_TO# - Recipient\'s e-mail address',7,'email'),(20,'en','MAIN_MAIL_CONFIRM_CODE','Confirm sender\'s email address','\n\n#EMAIL_TO# - confirmation email address\n#MESSAGE_SUBJECT# - Message subject\n#CONFIRM_CODE# - Confirmation code',8,'email'),(21,'en','EVENT_LOG_NOTIFICATION','Event log notification','#EMAIL# - Recipient email\n#ADDITIONAL_TEXT# - Action additional text\n#NAME# - Notification name\n#AUDIT_TYPE_ID# - Event type\n#ITEM_ID# - Object\n#USER_ID# - User\n#REMOTE_ADDR# - IP address\n#USER_AGENT# - Browser\n#REQUEST_URI# - Page URL\n#EVENT_COUNT# - Number of events',9,'email'),(22,'en','SMS_USER_CONFIRM_NUMBER','Verify phone number using SMS','#USER_PHONE# - phone number\n#CODE# - confirmation code',100,'sms'),(23,'en','SMS_USER_RESTORE_PASSWORD','Recover password using SMS','#USER_PHONE# - phone number\n#CODE# - recovery confirmation code',100,'sms'),(24,'en','SMS_EVENT_LOG_NOTIFICATION','Event log notification','#PHONE_NUMBER# - Recipient phone number\n#ADDITIONAL_TEXT# - Action additional text\n#NAME# - Notification name\n#AUDIT_TYPE_ID# - Event type\n#ITEM_ID# - Object\n#USER_ID# - User\n#REMOTE_ADDR# - IP address\n#USER_AGENT# - Browser\n#REQUEST_URI# - Page URL\n#EVENT_COUNT# - Number of events',100,'sms');
/*!40000 ALTER TABLE `b_event_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_favorite`
--

DROP TABLE IF EXISTS `b_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_favorite` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `C_SORT` int(18) NOT NULL DEFAULT 100,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `CODE_ID` int(18) DEFAULT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `MENU_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_favorite`
--

LOCK TABLES `b_favorite` WRITE;
/*!40000 ALTER TABLE `b_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file`
--

DROP TABLE IF EXISTS `b_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_file` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HEIGHT` int(18) DEFAULT NULL,
  `WIDTH` int(18) DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'IMAGE',
  `SUBDIR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ORIGINAL_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HANDLER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FILE_EXTERNAL_ID` (`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file`
--

LOCK TABLES `b_file` WRITE;
/*!40000 ALTER TABLE `b_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file_preview`
--

DROP TABLE IF EXISTS `b_file_preview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_file_preview` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FILE_ID` int(18) NOT NULL,
  `PREVIEW_ID` int(18) DEFAULT NULL,
  `PREVIEW_IMAGE_ID` int(18) DEFAULT NULL,
  `CREATED_AT` datetime NOT NULL,
  `TOUCHED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FILE_PL_TOUCH` (`TOUCHED_AT`),
  KEY `IX_B_FILE_PL_FILE` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file_preview`
--

LOCK TABLES `b_file_preview` WRITE;
/*!40000 ALTER TABLE `b_file_preview` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_file_preview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file_search`
--

DROP TABLE IF EXISTS `b_file_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_file_search` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SESS_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `F_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B_DIR` int(11) NOT NULL DEFAULT 0,
  `F_SIZE` int(11) NOT NULL DEFAULT 0,
  `F_TIME` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file_search`
--

LOCK TABLES `b_file_search` WRITE;
/*!40000 ALTER TABLE `b_file_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_file_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_filters`
--

DROP TABLE IF EXISTS `b_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_filters` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) DEFAULT NULL,
  `FILTER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELDS` text COLLATE utf8_unicode_ci NOT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) DEFAULT NULL,
  `SORT_FIELD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_filters`
--

LOCK TABLES `b_filters` WRITE;
/*!40000 ALTER TABLE `b_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_finder_dest`
--

DROP TABLE IF EXISTS `b_finder_dest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_finder_dest` (
  `USER_ID` int(11) NOT NULL,
  `CODE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_USER_ID` int(11) DEFAULT NULL,
  `CODE_TYPE` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTEXT` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_USE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`CODE`,`CONTEXT`),
  KEY `IX_FINDER_DEST` (`CODE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_finder_dest`
--

LOCK TABLES `b_finder_dest` WRITE;
/*!40000 ALTER TABLE `b_finder_dest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_finder_dest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_geoip_handlers`
--

DROP TABLE IF EXISTS `b_geoip_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_geoip_handlers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SORT` int(10) NOT NULL DEFAULT 100,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `CLASS_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_geoip_handlers`
--

LOCK TABLES `b_geoip_handlers` WRITE;
/*!40000 ALTER TABLE `b_geoip_handlers` DISABLE KEYS */;
INSERT INTO `b_geoip_handlers` VALUES (1,100,'N','\\Bitrix\\Main\\Service\\GeoIp\\MaxMind',NULL),(2,110,'Y','\\Bitrix\\Main\\Service\\GeoIp\\SypexGeo',NULL);
/*!40000 ALTER TABLE `b_geoip_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group`
--

DROP TABLE IF EXISTS `b_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `C_SORT` int(18) NOT NULL DEFAULT 100,
  `ANONYMOUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_POLICY` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group`
--

LOCK TABLES `b_group` WRITE;
/*!40000 ALTER TABLE `b_group` DISABLE KEYS */;
INSERT INTO `b_group` VALUES (1,'2020-04-13 14:41:36','Y',1,'N','Y','Администраторы','Полный доступ к управлению сайтом.',NULL,NULL),(2,'2020-04-13 14:41:36','Y',2,'Y','Y','Все пользователи (в том числе неавторизованные)','Все пользователи, включая неавторизованных.',NULL,NULL),(3,'2020-04-13 14:41:37','Y',3,'N','Y','Пользователи, имеющие право голосовать за рейтинг','В эту группу пользователи добавляются автоматически.',NULL,'RATING_VOTE'),(4,'2020-04-13 14:41:37','Y',4,'N','Y','Пользователи имеющие право голосовать за авторитет','В эту группу пользователи добавляются автоматически.',NULL,'RATING_VOTE_AUTHORITY'),(5,'2020-04-13 14:57:38','Y',300,'N','Y','Контент-редакторы',NULL,NULL,'content_editor');
/*!40000 ALTER TABLE `b_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group_collection_task`
--

DROP TABLE IF EXISTS `b_group_collection_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group_collection_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `COLLECTION_ID` int(11) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`,`COLLECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group_collection_task`
--

LOCK TABLES `b_group_collection_task` WRITE;
/*!40000 ALTER TABLE `b_group_collection_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_group_collection_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group_subordinate`
--

DROP TABLE IF EXISTS `b_group_subordinate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group_subordinate` (
  `ID` int(18) NOT NULL,
  `AR_SUBGROUP_ID` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group_subordinate`
--

LOCK TABLES `b_group_subordinate` WRITE;
/*!40000 ALTER TABLE `b_group_subordinate` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_group_subordinate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group_task`
--

DROP TABLE IF EXISTS `b_group_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group_task` (
  `GROUP_ID` int(18) NOT NULL,
  `TASK_ID` int(18) NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group_task`
--

LOCK TABLES `b_group_task` WRITE;
/*!40000 ALTER TABLE `b_group_task` DISABLE KEYS */;
INSERT INTO `b_group_task` VALUES (5,22,''),(5,50,'');
/*!40000 ALTER TABLE `b_group_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hlblock_entity`
--

DROP TABLE IF EXISTS `b_hlblock_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hlblock_entity` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TABLE_NAME` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hlblock_entity`
--

LOCK TABLES `b_hlblock_entity` WRITE;
/*!40000 ALTER TABLE `b_hlblock_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_hlblock_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hlblock_entity_lang`
--

DROP TABLE IF EXISTS `b_hlblock_entity_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hlblock_entity_lang` (
  `ID` int(11) unsigned NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hlblock_entity_lang`
--

LOCK TABLES `b_hlblock_entity_lang` WRITE;
/*!40000 ALTER TABLE `b_hlblock_entity_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_hlblock_entity_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hlblock_entity_rights`
--

DROP TABLE IF EXISTS `b_hlblock_entity_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hlblock_entity_rights` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `HL_ID` int(11) unsigned NOT NULL,
  `TASK_ID` int(11) unsigned NOT NULL,
  `ACCESS_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hlblock_entity_rights`
--

LOCK TABLES `b_hlblock_entity_rights` WRITE;
/*!40000 ALTER TABLE `b_hlblock_entity_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_hlblock_entity_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hot_keys`
--

DROP TABLE IF EXISTS `b_hot_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hot_keys` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `KEYS_STRING` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_b_hot_keys_co_u` (`CODE_ID`,`USER_ID`),
  KEY `ix_hot_keys_user` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hot_keys`
--

LOCK TABLES `b_hot_keys` WRITE;
/*!40000 ALTER TABLE `b_hot_keys` DISABLE KEYS */;
INSERT INTO `b_hot_keys` VALUES (1,'Ctrl+Alt+85',139,0),(2,'Ctrl+Alt+80',17,0),(3,'Ctrl+Alt+70',120,0),(4,'Ctrl+Alt+68',117,0),(5,'Ctrl+Alt+81',3,0),(6,'Ctrl+Alt+75',106,0),(7,'Ctrl+Alt+79',133,0),(8,'Ctrl+Alt+70',121,0),(9,'Ctrl+Alt+69',118,0),(10,'Ctrl+Shift+83',87,0),(11,'Ctrl+Shift+88',88,0),(12,'Ctrl+Shift+76',89,0),(13,'Ctrl+Alt+85',139,1),(14,'Ctrl+Alt+80',17,1),(15,'Ctrl+Alt+70',120,1),(16,'Ctrl+Alt+68',117,1),(17,'Ctrl+Alt+81',3,1),(18,'Ctrl+Alt+75',106,1),(19,'Ctrl+Alt+79',133,1),(20,'Ctrl+Alt+70',121,1),(21,'Ctrl+Alt+69',118,1),(22,'Ctrl+Shift+83',87,1),(23,'Ctrl+Shift+88',88,1),(24,'Ctrl+Shift+76',89,1);
/*!40000 ALTER TABLE `b_hot_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hot_keys_code`
--

DROP TABLE IF EXISTS `b_hot_keys_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hot_keys_code` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CLASS_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITLE_OBJ` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_CUSTOM` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  KEY `ix_hot_keys_code_cn` (`CLASS_NAME`),
  KEY `ix_hot_keys_code_url` (`URL`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hot_keys_code`
--

LOCK TABLES `b_hot_keys_code` WRITE;
/*!40000 ALTER TABLE `b_hot_keys_code` DISABLE KEYS */;
INSERT INTO `b_hot_keys_code` VALUES (3,'CAdminTabControl','NextTab();','HK_DB_CADMINTC','HK_DB_CADMINTC_C','tab-container','',0),(5,'btn_new','var d=BX (\'btn_new\'); if (d) location.href = d.href;','HK_DB_BUT_ADD','HK_DB_BUT_ADD_C','btn_new','',0),(6,'btn_excel','var d=BX(\'btn_excel\'); if (d) location.href = d.href;','HK_DB_BUT_EXL','HK_DB_BUT_EXL_C','btn_excel','',0),(7,'btn_settings','var d=BX(\'btn_settings\'); if (d) location.href = d.href;','HK_DB_BUT_OPT','HK_DB_BUT_OPT_C','btn_settings','',0),(8,'btn_list','var d=BX(\'btn_list\'); if (d) location.href = d.href;','HK_DB_BUT_LST','HK_DB_BUT_LST_C','btn_list','',0),(9,'Edit_Save_Button','var d=BX .findChild(document, {attribute: {\'name\': \'save\'}}, true );  if (d) d.click();','HK_DB_BUT_SAVE','HK_DB_BUT_SAVE_C','Edit_Save_Button','',0),(10,'btn_delete','var d=BX(\'btn_delete\'); if (d) location.href = d.href;','HK_DB_BUT_DEL','HK_DB_BUT_DEL_C','btn_delete','',0),(12,'CAdminFilter','var d=BX .findChild(document, {attribute: {\'name\': \'find\'}}, true ); if (d) d.focus();','HK_DB_FLT_FND','HK_DB_FLT_FND_C','find','',0),(13,'CAdminFilter','var d=BX .findChild(document, {attribute: {\'name\': \'set_filter\'}}, true );  if (d) d.click();','HK_DB_FLT_BUT_F','HK_DB_FLT_BUT_F_C','set_filter','',0),(14,'CAdminFilter','var d=BX .findChild(document, {attribute: {\'name\': \'del_filter\'}}, true );  if (d) d.click();','HK_DB_FLT_BUT_CNL','HK_DB_FLT_BUT_CNL_C','del_filter','',0),(15,'bx-panel-admin-button-help-icon-id','var d=BX(\'bx-panel-admin-button-help-icon-id\'); if (d) location.href = d.href;','HK_DB_BUT_HLP','HK_DB_BUT_HLP_C','bx-panel-admin-button-help-icon-id','',0),(17,'Global','BXHotKeys.ShowSettings();','HK_DB_SHW_L','HK_DB_SHW_L_C','bx-panel-hotkeys','',0),(19,'Edit_Apply_Button','var d=BX .findChild(document, {attribute: {\'name\': \'apply\'}}, true );  if (d) d.click();','HK_DB_BUT_APPL','HK_DB_BUT_APPL_C','Edit_Apply_Button','',0),(20,'Edit_Cancel_Button','var d=BX .findChild(document, {attribute: {\'name\': \'cancel\'}}, true );  if (d) d.click();','HK_DB_BUT_CANCEL','HK_DB_BUT_CANCEL_C','Edit_Cancel_Button','',0),(54,'top_panel_org_fav','','-=AUTONAME=-',NULL,'top_panel_org_fav',NULL,0),(55,'top_panel_module_settings','','-=AUTONAME=-',NULL,'top_panel_module_settings','',0),(56,'top_panel_interface_settings','','-=AUTONAME=-',NULL,'top_panel_interface_settings','',0),(57,'top_panel_help','','-=AUTONAME=-',NULL,'top_panel_help','',0),(58,'top_panel_bizproc_tasks','','-=AUTONAME=-',NULL,'top_panel_bizproc_tasks','',0),(59,'top_panel_add_fav','','-=AUTONAME=-',NULL,'top_panel_add_fav',NULL,0),(60,'top_panel_create_page','','-=AUTONAME=-',NULL,'top_panel_create_page','',0),(62,'top_panel_create_folder','','-=AUTONAME=-',NULL,'top_panel_create_folder','',0),(63,'top_panel_edit_page','','-=AUTONAME=-',NULL,'top_panel_edit_page','',0),(64,'top_panel_page_prop','','-=AUTONAME=-',NULL,'top_panel_page_prop','',0),(65,'top_panel_edit_page_html','','-=AUTONAME=-',NULL,'top_panel_edit_page_html','',0),(67,'top_panel_edit_page_php','','-=AUTONAME=-',NULL,'top_panel_edit_page_php','',0),(68,'top_panel_del_page','','-=AUTONAME=-',NULL,'top_panel_del_page','',0),(69,'top_panel_folder_prop','','-=AUTONAME=-',NULL,'top_panel_folder_prop','',0),(70,'top_panel_access_folder_new','','-=AUTONAME=-',NULL,'top_panel_access_folder_new','',0),(71,'main_top_panel_struct_panel','','-=AUTONAME=-',NULL,'main_top_panel_struct_panel','',0),(72,'top_panel_cache_page','','-=AUTONAME=-',NULL,'top_panel_cache_page','',0),(73,'top_panel_cache_comp','','-=AUTONAME=-',NULL,'top_panel_cache_comp','',0),(74,'top_panel_cache_not','','-=AUTONAME=-',NULL,'top_panel_cache_not','',0),(75,'top_panel_edit_mode','','-=AUTONAME=-',NULL,'top_panel_edit_mode','',0),(76,'top_panel_templ_site_css','','-=AUTONAME=-',NULL,'top_panel_templ_site_css','',0),(77,'top_panel_templ_templ_css','','-=AUTONAME=-',NULL,'top_panel_templ_templ_css','',0),(78,'top_panel_templ_site','','-=AUTONAME=-',NULL,'top_panel_templ_site','',0),(81,'top_panel_debug_time','','-=AUTONAME=-',NULL,'top_panel_debug_time','',0),(82,'top_panel_debug_incl','','-=AUTONAME=-',NULL,'top_panel_debug_incl','',0),(83,'top_panel_debug_sql','','-=AUTONAME=-',NULL,'top_panel_debug_sql',NULL,0),(84,'top_panel_debug_compr','','-=AUTONAME=-',NULL,'top_panel_debug_compr','',0),(85,'MTP_SHORT_URI1','','-=AUTONAME=-',NULL,'MTP_SHORT_URI1','',0),(86,'MTP_SHORT_URI_LIST','','-=AUTONAME=-',NULL,'MTP_SHORT_URI_LIST','',0),(87,'FMST_PANEL_STICKER_ADD','','-=AUTONAME=-',NULL,'FMST_PANEL_STICKER_ADD','',0),(88,'FMST_PANEL_STICKERS_SHOW','','-=AUTONAME=-',NULL,'FMST_PANEL_STICKERS_SHOW','',0),(89,'FMST_PANEL_CUR_STICKER_LIST','','-=AUTONAME=-',NULL,'FMST_PANEL_CUR_STICKER_LIST','',0),(90,'FMST_PANEL_ALL_STICKER_LIST','','-=AUTONAME=-',NULL,'FMST_PANEL_ALL_STICKER_LIST','',0),(91,'top_panel_menu','var d=BX(\"bx-panel-menu\"); if (d) d.click();','-=AUTONAME=-',NULL,'bx-panel-menu','',0),(92,'top_panel_admin','var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;','-=AUTONAME=-',NULL,'bx-panel-admin-tab','',0),(93,'admin_panel_site','var d=BX(\'bx-panel-view-tab\'); if (d) location.href = d.href;','-=AUTONAME=-',NULL,'bx-panel-view-tab','',0),(94,'admin_panel_admin','var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;','-=AUTONAME=-',NULL,'bx-panel-admin-tab','',0),(96,'top_panel_folder_prop_new','','-=AUTONAME=-',NULL,'top_panel_folder_prop_new','',0),(97,'main_top_panel_structure','','-=AUTONAME=-',NULL,'main_top_panel_structure','',0),(98,'top_panel_clear_cache','','-=AUTONAME=-',NULL,'top_panel_clear_cache','',0),(99,'top_panel_templ','','-=AUTONAME=-',NULL,'top_panel_templ','',0),(100,'top_panel_debug','','-=AUTONAME=-',NULL,'top_panel_debug','',0),(101,'MTP_SHORT_URI','','-=AUTONAME=-',NULL,'MTP_SHORT_URI','',0),(102,'FMST_PANEL_STICKERS','','-=AUTONAME=-',NULL,'FMST_PANEL_STICKERS','',0),(103,'top_panel_settings','','-=AUTONAME=-',NULL,'top_panel_settings','',0),(104,'top_panel_fav','','-=AUTONAME=-',NULL,'top_panel_fav','',0),(106,'Global','location.href=\'/bitrix/admin/hot_keys_list.php?lang=ru\';','HK_DB_SHW_HK','','','',0),(107,'top_panel_edit_new','','-=AUTONAME=-',NULL,'top_panel_edit_new','',0),(108,'FLOW_PANEL_CREATE_WITH_WF','','-=AUTONAME=-',NULL,'FLOW_PANEL_CREATE_WITH_WF','',0),(109,'FLOW_PANEL_EDIT_WITH_WF','','-=AUTONAME=-',NULL,'FLOW_PANEL_EDIT_WITH_WF','',0),(110,'FLOW_PANEL_HISTORY','','-=AUTONAME=-',NULL,'FLOW_PANEL_HISTORY','',0),(111,'top_panel_create_new','','-=AUTONAME=-',NULL,'top_panel_create_new','',0),(112,'top_panel_create_folder_new','','-=AUTONAME=-',NULL,'top_panel_create_folder_new','',0),(116,'bx-panel-toggle','','-=AUTONAME=-',NULL,'bx-panel-toggle','',0),(117,'bx-panel-small-toggle','','-=AUTONAME=-',NULL,'bx-panel-small-toggle','',0),(118,'bx-panel-expander','var d=BX(\'bx-panel-expander\'); if (d) BX.fireEvent(d, \'click\');','-=AUTONAME=-',NULL,'bx-panel-expander','',0),(119,'bx-panel-hider','var d=BX(\'bx-panel-hider\'); if (d) d.click();','-=AUTONAME=-',NULL,'bx-panel-hider','',0),(120,'search-textbox-input','var d=BX(\'search-textbox-input\'); if (d) { d.click(); d.focus();}','-=AUTONAME=-','','search','',0),(121,'bx-search-input','var d=BX(\'bx-search-input\'); if (d) { d.click(); d.focus(); }','-=AUTONAME=-','','bx-search-input','',0),(133,'bx-panel-logout','var d=BX(\'bx-panel-logout\'); if (d) location.href = d.href;','-=AUTONAME=-','','bx-panel-logout','',0),(135,'CDialog','var d=BX(\'cancel\'); if (d) d.click();','HK_DB_D_CANCEL','','cancel','',0),(136,'CDialog','var d=BX(\'close\'); if (d) d.click();','HK_DB_D_CLOSE','','close','',0),(137,'CDialog','var d=BX(\'savebtn\'); if (d) d.click();','HK_DB_D_SAVE','','savebtn','',0),(138,'CDialog','var d=BX(\'btn_popup_save\'); if (d) d.click();','HK_DB_D_EDIT_SAVE','','btn_popup_save','',0),(139,'Global','location.href=\'/bitrix/admin/user_admin.php?lang=\'+phpVars.LANGUAGE_ID;','HK_DB_SHW_U','','','',0);
/*!40000 ALTER TABLE `b_hot_keys_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock`
--

DROP TABLE IF EXISTS `b_iblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `API_CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `LIST_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CANONICAL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `RSS_TTL` int(11) NOT NULL DEFAULT 24,
  `RSS_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `RSS_FILE_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RSS_FILE_LIMIT` int(11) DEFAULT NULL,
  `RSS_FILE_DAYS` int(11) DEFAULT NULL,
  `RSS_YANDEX_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_ELEMENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `INDEX_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `WORKFLOW` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `BIZPROC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SECTION_CHOOSER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RIGHTS_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PROPERTY` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_INDEX` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT 1,
  `LAST_CONV_ELEMENT` int(11) NOT NULL DEFAULT 0,
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTIONS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENTS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_iblock_api_code` (`API_CODE`),
  KEY `ix_iblock` (`IBLOCK_TYPE_ID`,`LID`,`ACTIVE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock`
--

LOCK TABLES `b_iblock` WRITE;
/*!40000 ALTER TABLE `b_iblock` DISABLE KEYS */;
INSERT INTO `b_iblock` VALUES (1,'2020-04-13 14:58:55','news','s1','corporate_news_s1',NULL,'[s1] Новости','Y',500,'#SITE_DIR#/news/','#SITE_DIR#/news/#ID#/','#SITE_DIR#/news/list.php?SECTION_ID=#ID#',NULL,NULL,NULL,'text',24,'Y','N',NULL,NULL,'N','corporate_news_s1','509fad2801b92314b0b1385e0fe3c78c','Y','Y','N','N','L',NULL,'S',NULL,NULL,1,0,NULL,NULL,NULL,'Разделы','Раздел','Новости','Новость'),(2,'2020-04-13 15:00:09','vacancies','s1','corp_vacancies_s1',NULL,'Вакансии','Y',500,'#SITE_DIR#/about/vacancies.php','#SITE_DIR#/about/vacancies.php##ID#',NULL,NULL,NULL,NULL,'text',24,'Y','N',NULL,NULL,'N','corp_vacancies_s1','9e0d0423bb264b207350dd6af222c4ef','Y','N','N','N','L',NULL,'S',NULL,NULL,1,0,NULL,NULL,NULL,'Разделы','Раздел','Вакансии','Вакансия'),(3,'2020-04-13 17:44:11','catalog','s1','chastnym-licam','chastnymLicam','Частным лицам','Y',100,'#SITE_DIR#/chastnym-licam/','#SITE_DIR#/chastnym-licam/#SECTION_CODE#/#ELEMENT_CODE#','#SITE_DIR#/chastnym-licam/#SECTION_CODE#/','',NULL,'','text',24,'Y','N',NULL,NULL,'N',NULL,'698a26d0cae139f6b29fb7278f5921ed','Y','Y','N','N','L','','S','N','N',1,0,NULL,'','','Разделы','Раздел','Элементы','Элемент');
/*!40000 ALTER TABLE `b_iblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_cache`
--

DROP TABLE IF EXISTS `b_iblock_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_cache` (
  `CACHE_KEY` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `CACHE` longtext COLLATE utf8_unicode_ci NOT NULL,
  `CACHE_DATE` datetime NOT NULL,
  PRIMARY KEY (`CACHE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_cache`
--

LOCK TABLES `b_iblock_cache` WRITE;
/*!40000 ALTER TABLE `b_iblock_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element`
--

DROP TABLE IF EXISTS `b_iblock_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL DEFAULT 0,
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT 500,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PREVIEW_PICTURE` int(18) DEFAULT NULL,
  `PREVIEW_TEXT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `DETAIL_TEXT` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_STATUS_ID` int(18) DEFAULT 1,
  `WF_PARENT_ELEMENT_ID` int(11) DEFAULT NULL,
  `WF_NEW` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LOCKED_BY` int(18) DEFAULT NULL,
  `WF_DATE_LOCK` datetime DEFAULT NULL,
  `WF_COMMENTS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LAST_HISTORY_ID` int(11) DEFAULT NULL,
  `SHOW_COUNTER` int(18) DEFAULT NULL,
  `SHOW_COUNTER_START` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_element_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  KEY `ix_iblock_element_4` (`IBLOCK_ID`,`XML_ID`,`WF_PARENT_ELEMENT_ID`),
  KEY `ix_iblock_element_3` (`WF_PARENT_ELEMENT_ID`),
  KEY `ix_iblock_element_code` (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element`
--

LOCK TABLES `b_iblock_element` WRITE;
/*!40000 ALTER TABLE `b_iblock_element` DISABLE KEYS */;
INSERT INTO `b_iblock_element` VALUES (1,'2020-04-13 14:58:43',1,'2020-04-13 14:58:41',1,1,NULL,'Y','2010-05-28 00:00:00',NULL,500,'Банк переносит дату вступления в действие тарифов на услуги в иностранной валюте',NULL,'Уважаемые клиенты,<br />\nсообщаем Вам, что Банк переносит дату вступления в действие тарифов на услуги для юридических лиц и индивидуальных предпринимателей в иностранной валюте. В связи с этим до даты введения в действие новой редакции тарифов, услуги юридическим лицам и индивидуальным предпринимателям будут оказываться в рамках действующих тарифов. <br />\nИнформация о дате введения новой редакции тарифов будет сообщена дополнительно.','html',NULL,'Уважаемые клиенты,<br />\nсообщаем Вам, что Банк переносит дату вступления в действие тарифов на услуги для юридических лиц и индивидуальных предпринимателей в иностранной валюте. В связи с этим до даты введения в действие новой редакции тарифов, услуги юридическим лицам и индивидуальным предпринимателям будут оказываться в рамках действующих тарифов. <br />\nИнформация о дате введения новой редакции тарифов будет сообщена дополнительно.','html','БАНК ПЕРЕНОСИТ ДАТУ ВСТУПЛЕНИЯ В ДЕЙСТВИЕ ТАРИФОВ НА УСЛУГИ В ИНОСТРАННОЙ ВАЛЮТЕ\r\nУВАЖАЕМЫЕ КЛИЕНТЫ,\r\nСООБЩАЕМ ВАМ, ЧТО БАНК ПЕРЕНОСИТ ДАТУ ВСТУПЛЕНИЯ \r\nВ ДЕЙСТВИЕ ТАРИФОВ НА УСЛУГИ ДЛЯ ЮРИДИЧЕСКИХ ЛИЦ И ИНДИВИДУАЛЬНЫХ ПРЕДПРИНИМАТЕЛЕЙ В ИНОСТРАННОЙ ВАЛЮТЕ. В СВЯЗИ С ЭТИМ ДО ДАТЫ ВВЕДЕНИЯ В ДЕЙСТВИЕ НОВОЙ РЕДАКЦИИ ТАРИФОВ, УСЛУГИ ЮРИДИЧЕСКИМ ЛИЦАМ И ИНДИВИДУАЛЬНЫМ ПРЕДПРИНИМАТЕЛЯМ БУДУТ ОКАЗЫВАТЬСЯ В РАМКАХ ДЕЙСТВУЮЩИХ ТАРИФОВ. \r\nИНФОРМАЦИЯ О ДАТЕ ВВЕДЕНИЯ НОВОЙ РЕДАКЦИИ \r\nТАРИФОВ БУДЕТ СООБЩЕНА ДОПОЛНИТЕЛЬНО.\r\nУВАЖАЕМЫЕ КЛИЕНТЫ,\r\nСООБЩАЕМ ВАМ, ЧТО БАНК ПЕРЕНОСИТ ДАТУ ВСТУПЛЕНИЯ \r\nВ ДЕЙСТВИЕ ТАРИФОВ НА УСЛУГИ ДЛЯ ЮРИДИЧЕСКИХ ЛИЦ И ИНДИВИДУАЛЬНЫХ ПРЕДПРИНИМАТЕЛЕЙ В ИНОСТРАННОЙ ВАЛЮТЕ. В СВЯЗИ С ЭТИМ ДО ДАТЫ ВВЕДЕНИЯ В ДЕЙСТВИЕ НОВОЙ РЕДАКЦИИ ТАРИФОВ, УСЛУГИ ЮРИДИЧЕСКИМ ЛИЦАМ И ИНДИВИДУАЛЬНЫМ ПРЕДПРИНИМАТЕЛЯМ БУДУТ ОКАЗЫВАТЬСЯ В РАМКАХ ДЕЙСТВУЮЩИХ ТАРИФОВ. \r\nИНФОРМАЦИЯ О ДАТЕ ВВЕДЕНИЯ НОВОЙ РЕДАКЦИИ \r\nТАРИФОВ БУДЕТ СООБЩЕНА ДОПОЛНИТЕЛЬНО.',1,NULL,NULL,NULL,NULL,NULL,'N','1','','','346668823',NULL,NULL,NULL),(2,'2020-04-13 14:58:48',1,'2020-04-13 14:58:44',1,1,NULL,'Y','2010-05-27 00:00:00',NULL,500,'Начать работать с системой «Интернет-Клиент» стало еще проще ',NULL,'Наш Банк предлагает своим клиентам Мастер Установки «Интернет-Клиент», который существенно упростит начало работы с системой. Теперь достаточно скачать и запустить Мастер Установки, и все настройки будут произведены автоматически. Вам больше не нужно тратить время на изучение объемных инструкций, или звонить в службу техподдержки, чтобы начать работать с системой.','html',NULL,'Наш Банк предлагает своим клиентам Мастер Установки «Интернет-Клиент», который существенно упростит начало работы с системой. Теперь достаточно скачать и запустить Мастер Установки, и все настройки будут произведены автоматически. Вам больше не нужно тратить время на изучение объемных инструкций, или звонить в службу техподдержки, чтобы начать работать с системой.','text','НАЧАТЬ РАБОТАТЬ С СИСТЕМОЙ «ИНТЕРНЕТ-КЛИЕНТ» СТАЛО ЕЩЕ ПРОЩЕ \r\nНАШ БАНК ПРЕДЛАГАЕТ СВОИМ КЛИЕНТАМ МАСТЕР \r\nУСТАНОВКИ «ИНТЕРНЕТ-КЛИЕНТ», КОТОРЫЙ СУЩЕСТВЕННО УПРОСТИТ НАЧАЛО РАБОТЫ С СИСТЕМОЙ. ТЕПЕРЬ ДОСТАТОЧНО СКАЧАТЬ И ЗАПУСТИТЬ МАСТЕР УСТАНОВКИ, И ВСЕ НАСТРОЙКИ БУДУТ ПРОИЗВЕДЕНЫ АВТОМАТИЧЕСКИ. ВАМ БОЛЬШЕ НЕ НУЖНО ТРАТИТЬ ВРЕМЯ НА ИЗУЧЕНИЕ ОБЪЕМНЫХ ИНСТРУКЦИЙ, ИЛИ ЗВОНИТЬ В СЛУЖБУ ТЕХПОДДЕРЖКИ, ЧТОБЫ НАЧАТЬ РАБОТАТЬ С СИСТЕМОЙ.\r\nНАШ БАНК ПРЕДЛАГАЕТ СВОИМ КЛИЕНТАМ МАСТЕР УСТАНОВКИ «ИНТЕРНЕТ-КЛИЕНТ», КОТОРЫЙ СУЩЕСТВЕННО УПРОСТИТ НАЧАЛО РАБОТЫ С СИСТЕМОЙ. ТЕПЕРЬ ДОСТАТОЧНО СКАЧАТЬ И ЗАПУСТИТЬ МАСТЕР УСТАНОВКИ, И ВСЕ НАСТРОЙКИ БУДУТ ПРОИЗВЕДЕНЫ АВТОМАТИЧЕСКИ. ВАМ БОЛЬШЕ НЕ НУЖНО ТРАТИТЬ ВРЕМЯ НА ИЗУЧЕНИЕ ОБЪЕМНЫХ ИНСТРУКЦИЙ, ИЛИ ЗВОНИТЬ В СЛУЖБУ ТЕХПОДДЕРЖКИ, ЧТОБЫ НАЧАТЬ РАБОТАТЬ С СИСТЕМОЙ.',1,NULL,NULL,NULL,NULL,NULL,'N','2','','','847552514',NULL,NULL,NULL),(3,'2020-04-13 14:58:54',1,'2020-04-13 14:58:49',1,1,NULL,'Y','2010-05-24 00:00:00',NULL,500,'Реорганизация сети отделений Банка ',NULL,'В ближайшее время будет значительно расширен продуктовый ряд и перечень предоставляемых банковских услуг, которые Банк сможет предлагать во всех своих дополнительных офисах. Теперь наши клиенты смогут получить полный перечень услуг в любом из отделений Банка. <br />\nБыло проведено комплексное всестороннее исследование функционирования региональных офисов на предмет соответствия возросшим требованиям. В результате, принято решение о временном закрытии офисов, не соответствующих высоким стандартам и не приспособленных к требованиям растущего бизнеса. Офисы постепенно будут отремонтированы и переоборудованы, станут современными и удобными. <br />\n<br />\nПриносим свои извинения за временно доставленные неудобства. ','html',NULL,'В ближайшее время будет значительно расширен продуктовый ряд и перечень предоставляемых банковских услуг, которые Банк сможет предлагать во всех своих дополнительных офисах. Теперь наши клиенты смогут получить полный перечень услуг в любом из отделений Банка. <br />\nБыло проведено комплексное всестороннее исследование функционирования региональных офисов на предмет соответствия возросшим требованиям. В результате, принято решение о временном закрытии офисов, не соответствующих высоким стандартам и не приспособленных к требованиям растущего бизнеса. Офисы постепенно будут отремонтированы и переоборудованы, станут современными и удобными. <br />\n<br />\nПриносим свои извинения за временно доставленные неудобства. ','html','РЕОРГАНИЗАЦИЯ СЕТИ ОТДЕЛЕНИЙ БАНКА \r\nВ БЛИЖАЙШЕЕ ВРЕМЯ БУДЕТ ЗНАЧИТЕЛЬНО РАСШИРЕН \r\nПРОДУКТОВЫЙ РЯД И ПЕРЕЧЕНЬ ПРЕДОСТАВЛЯЕМЫХ БАНКОВСКИХ УСЛУГ, КОТОРЫЕ БАНК СМОЖЕТ ПРЕДЛАГАТЬ ВО ВСЕХ СВОИХ ДОПОЛНИТЕЛЬНЫХ ОФИСАХ. ТЕПЕРЬ НАШИ КЛИЕНТЫ СМОГУТ ПОЛУЧИТЬ ПОЛНЫЙ ПЕРЕЧЕНЬ УСЛУГ В ЛЮБОМ ИЗ ОТДЕЛЕНИЙ БАНКА. \r\nБЫЛО ПРОВЕДЕНО КОМПЛЕКСНОЕ ВСЕСТОРОННЕЕ \r\nИССЛЕДОВАНИЕ ФУНКЦИОНИРОВАНИЯ РЕГИОНАЛЬНЫХ ОФИСОВ НА ПРЕДМЕТ СООТВЕТСТВИЯ ВОЗРОСШИМ ТРЕБОВАНИЯМ. В РЕЗУЛЬТАТЕ, ПРИНЯТО РЕШЕНИЕ О ВРЕМЕННОМ ЗАКРЫТИИ ОФИСОВ, НЕ СООТВЕТСТВУЮЩИХ ВЫСОКИМ СТАНДАРТАМ И НЕ ПРИСПОСОБЛЕННЫХ К ТРЕБОВАНИЯМ РАСТУЩЕГО БИЗНЕСА. ОФИСЫ ПОСТЕПЕННО БУДУТ ОТРЕМОНТИРОВАНЫ И ПЕРЕОБОРУДОВАНЫ, СТАНУТ СОВРЕМЕННЫМИ И УДОБНЫМИ. \r\n\r\nПРИНОСИМ СВОИ ИЗВИНЕНИЯ ЗА ВРЕМЕННО ДОСТАВЛЕННЫЕ \r\nНЕУДОБСТВА.\r\nВ БЛИЖАЙШЕЕ ВРЕМЯ БУДЕТ ЗНАЧИТЕЛЬНО РАСШИРЕН \r\nПРОДУКТОВЫЙ РЯД И ПЕРЕЧЕНЬ ПРЕДОСТАВЛЯЕМЫХ БАНКОВСКИХ УСЛУГ, КОТОРЫЕ БАНК СМОЖЕТ ПРЕДЛАГАТЬ ВО ВСЕХ СВОИХ ДОПОЛНИТЕЛЬНЫХ ОФИСАХ. ТЕПЕРЬ НАШИ КЛИЕНТЫ СМОГУТ ПОЛУЧИТЬ ПОЛНЫЙ ПЕРЕЧЕНЬ УСЛУГ В ЛЮБОМ ИЗ ОТДЕЛЕНИЙ БАНКА. \r\nБЫЛО ПРОВЕДЕНО КОМПЛЕКСНОЕ ВСЕСТОРОННЕЕ \r\nИССЛЕДОВАНИЕ ФУНКЦИОНИРОВАНИЯ РЕГИОНАЛЬНЫХ ОФИСОВ НА ПРЕДМЕТ СООТВЕТСТВИЯ ВОЗРОСШИМ ТРЕБОВАНИЯМ. В РЕЗУЛЬТАТЕ, ПРИНЯТО РЕШЕНИЕ О ВРЕМЕННОМ ЗАКРЫТИИ ОФИСОВ, НЕ СООТВЕТСТВУЮЩИХ ВЫСОКИМ СТАНДАРТАМ И НЕ ПРИСПОСОБЛЕННЫХ К ТРЕБОВАНИЯМ РАСТУЩЕГО БИЗНЕСА. ОФИСЫ ПОСТЕПЕННО БУДУТ ОТРЕМОНТИРОВАНЫ И ПЕРЕОБОРУДОВАНЫ, СТАНУТ СОВРЕМЕННЫМИ И УДОБНЫМИ. \r\n\r\nПРИНОСИМ СВОИ ИЗВИНЕНИЯ ЗА ВРЕМЕННО ДОСТАВЛЕННЫЕ \r\nНЕУДОБСТВА.',1,NULL,NULL,NULL,NULL,NULL,'N','3','','','1337055006',NULL,NULL,NULL),(4,'2020-04-13 15:00:01',1,'2020-04-13 14:59:52',1,2,NULL,'Y','2010-05-01 00:00:00',NULL,200,'Главный специалист Отдела анализа кредитных проектов региональной сети',NULL,'','html',NULL,'<b>Требования</b> 						 						 \n<p>Высшее экономическое/финансовое образование, опыт в банках топ-100 не менее 3-х лет в кредитном отделе (анализ заемщиков), желателен опыт работы с кредитными заявками филиалов, знание технологий АФХД предприятий, навыки написания экспертного заключения, знание законодательства (в т.ч. Положение ЦБ № 254-П).</p>\n 						 						<b>Обязанности</b> 						 \n<p>Анализ кредитных проектов филиалов Банка, подготовка предложений по структурированию кредитных проектов, оценка полноты и качества формируемых филиалами заключений, выявление стоп-факторов, доработка заявок филиалов в соответствии со стандартами Банка, подготовка заключения (рекомендаций) на КК по заявкам филиалов в части оценки финансово-экономического состояния заемщика, защита проектов на КК Банка, консультирование и методологическая помощь филиалам Банка в части корпоративного кредитования.</p>\n 						 						<b>Условия</b> 						 \n<p> Место работы: М.Парк Культуры. Графики работы: пятидневная рабочая неделя, с 9:00 до 18:00, пт. до 16:45. Зарплата: 50000 руб. оклад + премии, полный соц. пакет,оформление согласно ТК РФ</p>\n ','html','ГЛАВНЫЙ СПЕЦИАЛИСТ ОТДЕЛА АНАЛИЗА КРЕДИТНЫХ ПРОЕКТОВ РЕГИОНАЛЬНОЙ СЕТИ\r\n\r\nТРЕБОВАНИЯ \r\n\r\nВЫСШЕЕ ЭКОНОМИЧЕСКОЕ/ФИНАНСОВОЕ ОБРАЗОВАНИЕ, \r\nОПЫТ В БАНКАХ ТОП-100 НЕ МЕНЕЕ 3-Х ЛЕТ В КРЕДИТНОМ ОТДЕЛЕ (АНАЛИЗ ЗАЕМЩИКОВ), ЖЕЛАТЕЛЕН ОПЫТ РАБОТЫ С КРЕДИТНЫМИ ЗАЯВКАМИ ФИЛИАЛОВ, ЗНАНИЕ ТЕХНОЛОГИЙ АФХД ПРЕДПРИЯТИЙ, НАВЫКИ НАПИСАНИЯ ЭКСПЕРТНОГО ЗАКЛЮЧЕНИЯ, ЗНАНИЕ ЗАКОНОДАТЕЛЬСТВА (В Т.Ч. ПОЛОЖЕНИЕ ЦБ № 254-П). ОБЯЗАННОСТИ \r\n\r\nАНАЛИЗ КРЕДИТНЫХ ПРОЕКТОВ ФИЛИАЛОВ БАНКА, \r\nПОДГОТОВКА ПРЕДЛОЖЕНИЙ ПО СТРУКТУРИРОВАНИЮ КРЕДИТНЫХ ПРОЕКТОВ, ОЦЕНКА ПОЛНОТЫ И КАЧЕСТВА ФОРМИРУЕМЫХ ФИЛИАЛАМИ ЗАКЛЮЧЕНИЙ, ВЫЯВЛЕНИЕ СТОП-ФАКТОРОВ, ДОРАБОТКА ЗАЯВОК ФИЛИАЛОВ В СООТВЕТСТВИИ СО СТАНДАРТАМИ БАНКА, ПОДГОТОВКА ЗАКЛЮЧЕНИЯ (РЕКОМЕНДАЦИЙ) НА КК ПО ЗАЯВКАМ ФИЛИАЛОВ В ЧАСТИ ОЦЕНКИ ФИНАНСОВО-ЭКОНОМИЧЕСКОГО СОСТОЯНИЯ ЗАЕМЩИКА, ЗАЩИТА ПРОЕКТОВ НА КК БАНКА, КОНСУЛЬТИРОВАНИЕ И МЕТОДОЛОГИЧЕСКАЯ ПОМОЩЬ ФИЛИАЛАМ БАНКА В ЧАСТИ КОРПОРАТИВНОГО КРЕДИТОВАНИЯ. УСЛОВИЯ \r\n\r\nМЕСТО РАБОТЫ: М.ПАРК КУЛЬТУРЫ. ГРАФИКИ РАБОТЫ: \r\nПЯТИДНЕВНАЯ РАБОЧАЯ НЕДЕЛЯ, С 9:00 ДО 18:00, ПТ. ДО 16:45. ЗАРПЛАТА: 50000 РУБ. ОКЛАД + ПРЕМИИ, ПОЛНЫЙ СОЦ. ПАКЕТ,ОФОРМЛЕНИЕ СОГЛАСНО ТК РФ',1,NULL,NULL,NULL,NULL,NULL,'N','2','','','1535716109',NULL,NULL,NULL),(5,'2020-04-13 15:00:06',1,'2020-04-13 15:00:01',1,2,NULL,'Y','2010-05-01 00:00:00',NULL,300,'Специалист по продажам розничных банковских продуктов',NULL,'','html',NULL,'<b>Требования</b> 						 						 \n<p>Высшее экономического образования ‚ опыт работы в сфере продаж банковских продуктов‚ опытный пользователь ПК‚ этика делового общения‚ ответственность‚ инициативность‚ активность.</p>\n 						 						<b>Обязанности</b> 						 \n<p>Продажа розничных банковских продуктов, оформление документов.</p>\n 						 						<b>Условия</b> 						 \n<p>Трудоустройство по ТК РФ‚ полный соц. пакет. График работы: пятидневная рабочая неделя. Зарплата: 20000 руб. оклад + премии</p>\n ','html','СПЕЦИАЛИСТ ПО ПРОДАЖАМ РОЗНИЧНЫХ БАНКОВСКИХ ПРОДУКТОВ\r\n\r\nТРЕБОВАНИЯ \r\n\r\nВЫСШЕЕ ЭКОНОМИЧЕСКОГО ОБРАЗОВАНИЯ ‚ ОПЫТ \r\nРАБОТЫ В СФЕРЕ ПРОДАЖ БАНКОВСКИХ ПРОДУКТОВ‚ ОПЫТНЫЙ ПОЛЬЗОВАТЕЛЬ ПК‚ ЭТИКА ДЕЛОВОГО ОБЩЕНИЯ‚ ОТВЕТСТВЕННОСТЬ‚ ИНИЦИАТИВНОСТЬ‚ АКТИВНОСТЬ. ОБЯЗАННОСТИ \r\n\r\nПРОДАЖА РОЗНИЧНЫХ БАНКОВСКИХ ПРОДУКТОВ, \r\nОФОРМЛЕНИЕ ДОКУМЕНТОВ. УСЛОВИЯ \r\n\r\nТРУДОУСТРОЙСТВО ПО ТК РФ‚ ПОЛНЫЙ СОЦ. ПАКЕТ. \r\nГРАФИК РАБОТЫ: ПЯТИДНЕВНАЯ РАБОЧАЯ НЕДЕЛЯ. ЗАРПЛАТА: 20000 РУБ. ОКЛАД + ПРЕМИИ',1,NULL,NULL,NULL,NULL,NULL,'N','3','','','925032528',NULL,NULL,NULL),(6,'2020-04-13 15:00:08',1,'2020-04-13 15:00:06',1,2,NULL,'Y','2010-05-01 00:00:00',NULL,400,'Специалист Отдела андеррайтинга',NULL,'','html',NULL,'<b>Требования</b> 						 						 \n<p>Высшее профессиональное образование, опыт работы от 2 лет в отделе по работе с физическими и юридическими лицами Банков, связанных с анализом платёжеспособности и кредитоспособности физических и юридических лиц.</p>\n 						 						<b>Обязанности</b> 						 \n<p>Проверка соответствия документов, предоставленных клиентами Банка, анализ информации о риске</p>\n 						 						<b>Условия</b> 						 \n<p>Трудоустройство по ТК РФ‚ полный соц. пакет. График работы: пятидневная рабочая неделя. Зарплата: оклад 25000 руб.</p>\n ','html','СПЕЦИАЛИСТ ОТДЕЛА АНДЕРРАЙТИНГА\r\n\r\nТРЕБОВАНИЯ \r\n\r\nВЫСШЕЕ ПРОФЕССИОНАЛЬНОЕ ОБРАЗОВАНИЕ, ОПЫТ \r\nРАБОТЫ ОТ 2 ЛЕТ В ОТДЕЛЕ ПО РАБОТЕ С ФИЗИЧЕСКИМИ И ЮРИДИЧЕСКИМИ ЛИЦАМИ БАНКОВ, СВЯЗАННЫХ С АНАЛИЗОМ ПЛАТЁЖЕСПОСОБНОСТИ И КРЕДИТОСПОСОБНОСТИ ФИЗИЧЕСКИХ И ЮРИДИЧЕСКИХ ЛИЦ. ОБЯЗАННОСТИ \r\n\r\nПРОВЕРКА СООТВЕТСТВИЯ ДОКУМЕНТОВ, ПРЕДОСТАВЛЕННЫХ \r\nКЛИЕНТАМИ БАНКА, АНАЛИЗ ИНФОРМАЦИИ О РИСКЕ УСЛОВИЯ \r\n\r\nТРУДОУСТРОЙСТВО ПО ТК РФ‚ ПОЛНЫЙ СОЦ. ПАКЕТ. \r\nГРАФИК РАБОТЫ: ПЯТИДНЕВНАЯ РАБОЧАЯ НЕДЕЛЯ. ЗАРПЛАТА: ОКЛАД 25000 РУБ.',1,NULL,NULL,NULL,NULL,NULL,'N','4','','','1177477483',NULL,NULL,NULL),(7,'2020-04-13 17:33:58',1,'2020-04-13 17:33:58',1,3,1,'Y',NULL,NULL,500,'Кредит \"Для своих\"',NULL,'','text',NULL,'','text','КРЕДИТ \"ДЛЯ СВОИХ\"\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','7','kredit-dlya-svoikh','','0',NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_iblock_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_iprop`
--

DROP TABLE IF EXISTS `b_iblock_element_iprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ELEMENT_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_element_iprop_0` (`IPROP_ID`),
  KEY `ix_b_iblock_element_iprop_1` (`IBLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_iprop`
--

LOCK TABLES `b_iblock_element_iprop` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_iprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_lock`
--

DROP TABLE IF EXISTS `b_iblock_element_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_lock` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `DATE_LOCK` datetime DEFAULT NULL,
  `LOCKED_BY` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_lock`
--

LOCK TABLES `b_iblock_element_lock` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_property`
--

DROP TABLE IF EXISTS `b_iblock_element_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_property` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_element_property_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_property_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_prop_enum` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_prop_num` (`VALUE_NUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_property`
--

LOCK TABLES `b_iblock_element_property` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_right`
--

DROP TABLE IF EXISTS `b_iblock_element_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`RIGHT_ID`,`ELEMENT_ID`,`SECTION_ID`),
  KEY `ix_b_iblock_element_right_1` (`ELEMENT_ID`,`IBLOCK_ID`),
  KEY `ix_b_iblock_element_right_2` (`IBLOCK_ID`,`RIGHT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_right`
--

LOCK TABLES `b_iblock_element_right` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_fields`
--

DROP TABLE IF EXISTS `b_iblock_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_fields` (
  `IBLOCK_ID` int(18) NOT NULL,
  `FIELD_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_fields`
--

LOCK TABLES `b_iblock_fields` WRITE;
/*!40000 ALTER TABLE `b_iblock_fields` DISABLE KEYS */;
INSERT INTO `b_iblock_fields` VALUES (1,'ACTIVE','Y','Y'),(1,'ACTIVE_FROM','N','=today'),(1,'ACTIVE_TO','N',''),(1,'CODE','N',''),(1,'DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:0:\"\";s:11:\"COMPRESSION\";s:0:\"\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),(1,'DETAIL_TEXT','N',''),(1,'DETAIL_TEXT_TYPE','Y','text'),(1,'DETAIL_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(1,'IBLOCK_SECTION','N',''),(1,'LOG_ELEMENT_ADD','N',NULL),(1,'LOG_ELEMENT_DELETE','N',NULL),(1,'LOG_ELEMENT_EDIT','N',NULL),(1,'LOG_SECTION_ADD','N',NULL),(1,'LOG_SECTION_DELETE','N',NULL),(1,'LOG_SECTION_EDIT','N',NULL),(1,'NAME','Y',''),(1,'PREVIEW_PICTURE','N','a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:0:\"\";s:11:\"COMPRESSION\";s:0:\"\";s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),(1,'PREVIEW_TEXT','N',''),(1,'PREVIEW_TEXT_TYPE','Y','text'),(1,'PREVIEW_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(1,'SECTION_CODE','N','a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(1,'SECTION_DESCRIPTION','N',NULL),(1,'SECTION_DESCRIPTION_TYPE','Y',NULL),(1,'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE','N','Y'),(1,'SECTION_DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),(1,'SECTION_NAME','Y',NULL),(1,'SECTION_PICTURE','N','a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),(1,'SECTION_XML_ID','N',NULL),(1,'SORT','N','0'),(1,'TAGS','N',''),(1,'XML_ID','Y',''),(1,'XML_IMPORT_START_TIME','N','2020-04-13 19:58:34'),(2,'ACTIVE','Y','Y'),(2,'ACTIVE_FROM','N',''),(2,'ACTIVE_TO','N',''),(2,'CODE','N',''),(2,'DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:0:\"\";s:11:\"COMPRESSION\";s:0:\"\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),(2,'DETAIL_TEXT','N',''),(2,'DETAIL_TEXT_TYPE','Y','text'),(2,'DETAIL_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(2,'IBLOCK_SECTION','N',''),(2,'LOG_ELEMENT_ADD','N',NULL),(2,'LOG_ELEMENT_DELETE','N',NULL),(2,'LOG_ELEMENT_EDIT','N',NULL),(2,'LOG_SECTION_ADD','N',NULL),(2,'LOG_SECTION_DELETE','N',NULL),(2,'LOG_SECTION_EDIT','N',NULL),(2,'NAME','Y',''),(2,'PREVIEW_PICTURE','N','a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:0:\"\";s:11:\"COMPRESSION\";s:0:\"\";s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),(2,'PREVIEW_TEXT','N',''),(2,'PREVIEW_TEXT_TYPE','Y','text'),(2,'PREVIEW_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(2,'SECTION_CODE','N','a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(2,'SECTION_DESCRIPTION','N',NULL),(2,'SECTION_DESCRIPTION_TYPE','Y',NULL),(2,'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE','N','Y'),(2,'SECTION_DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),(2,'SECTION_NAME','Y',NULL),(2,'SECTION_PICTURE','N','a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),(2,'SECTION_XML_ID','N',NULL),(2,'SORT','N','0'),(2,'TAGS','N',''),(2,'XML_ID','Y',''),(2,'XML_IMPORT_START_TIME','N','2020-04-13 19:59:47'),(3,'ACTIVE','Y','Y'),(3,'ACTIVE_FROM','N',''),(3,'ACTIVE_TO','N',''),(3,'CODE','Y','a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:150;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(3,'DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(3,'DETAIL_TEXT','N',''),(3,'DETAIL_TEXT_TYPE','Y','text'),(3,'DETAIL_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(3,'IBLOCK_SECTION','N','a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"Y\";}'),(3,'LOG_ELEMENT_ADD','N',NULL),(3,'LOG_ELEMENT_DELETE','N',NULL),(3,'LOG_ELEMENT_EDIT','N',NULL),(3,'LOG_SECTION_ADD','N',NULL),(3,'LOG_SECTION_DELETE','N',NULL),(3,'LOG_SECTION_EDIT','N',NULL),(3,'NAME','Y',''),(3,'PREVIEW_PICTURE','N','a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(3,'PREVIEW_TEXT','N',''),(3,'PREVIEW_TEXT_TYPE','Y','text'),(3,'PREVIEW_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(3,'SECTION_CODE','Y','a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:150;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(3,'SECTION_DESCRIPTION','N',''),(3,'SECTION_DESCRIPTION_TYPE','Y','text'),(3,'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE','N','Y'),(3,'SECTION_DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(3,'SECTION_NAME','Y',''),(3,'SECTION_PICTURE','N','a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(3,'SECTION_XML_ID','N',''),(3,'SORT','N','0'),(3,'TAGS','N',''),(3,'XML_ID','Y',''),(3,'XML_IMPORT_START_TIME','N',NULL);
/*!40000 ALTER TABLE `b_iblock_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_group`
--

DROP TABLE IF EXISTS `b_iblock_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_group` (
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `PERMISSION` char(1) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `ux_iblock_group_1` (`IBLOCK_ID`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_group`
--

LOCK TABLES `b_iblock_group` WRITE;
/*!40000 ALTER TABLE `b_iblock_group` DISABLE KEYS */;
INSERT INTO `b_iblock_group` VALUES (1,1,'X'),(1,2,'R'),(1,5,'W'),(2,1,'X'),(2,2,'R'),(2,5,'W'),(3,1,'X'),(3,2,'R');
/*!40000 ALTER TABLE `b_iblock_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_iblock_iprop`
--

DROP TABLE IF EXISTS `b_iblock_iblock_iprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_iblock_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_iblock_iprop_0` (`IPROP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_iblock_iprop`
--

LOCK TABLES `b_iblock_iblock_iprop` WRITE;
/*!40000 ALTER TABLE `b_iblock_iblock_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_iblock_iprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_iproperty`
--

DROP TABLE IF EXISTS `b_iblock_iproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_iproperty` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `TEMPLATE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_iblock_iprop_0` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_iproperty`
--

LOCK TABLES `b_iblock_iproperty` WRITE;
/*!40000 ALTER TABLE `b_iblock_iproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_iproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_messages`
--

DROP TABLE IF EXISTS `b_iblock_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_messages` (
  `IBLOCK_ID` int(18) NOT NULL,
  `MESSAGE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_TEXT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_messages`
--

LOCK TABLES `b_iblock_messages` WRITE;
/*!40000 ALTER TABLE `b_iblock_messages` DISABLE KEYS */;
INSERT INTO `b_iblock_messages` VALUES (1,'ELEMENT_ADD','Добавить новость'),(1,'ELEMENT_DELETE','Удалить новость'),(1,'ELEMENT_EDIT','Изменить новость'),(1,'ELEMENT_NAME','Новость'),(1,'ELEMENTS_NAME','Новости'),(1,'SECTION_ADD','Добавить раздел'),(1,'SECTION_DELETE','Удалить раздел'),(1,'SECTION_EDIT','Изменить раздел'),(1,'SECTION_NAME','Раздел'),(1,'SECTIONS_NAME','Разделы'),(2,'ELEMENT_ADD','Добавить вакансию'),(2,'ELEMENT_DELETE','Удалить вакансию'),(2,'ELEMENT_EDIT','Изменить вакансию'),(2,'ELEMENT_NAME','Вакансия'),(2,'ELEMENTS_NAME','Вакансии'),(2,'SECTION_ADD','Добавить раздел'),(2,'SECTION_DELETE','Удалить раздел'),(2,'SECTION_EDIT','Изменить раздел'),(2,'SECTION_NAME','Раздел'),(2,'SECTIONS_NAME','Разделы'),(3,'ELEMENT_ADD','Добавить элемент'),(3,'ELEMENT_DELETE','Удалить элемент'),(3,'ELEMENT_EDIT','Изменить элемент'),(3,'ELEMENT_NAME','Элемент'),(3,'ELEMENTS_NAME','Элементы'),(3,'SECTION_ADD','Добавить раздел'),(3,'SECTION_DELETE','Удалить раздел'),(3,'SECTION_EDIT','Изменить раздел'),(3,'SECTION_NAME','Раздел'),(3,'SECTIONS_NAME','Разделы');
/*!40000 ALTER TABLE `b_iblock_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_offers_tmp`
--

DROP TABLE IF EXISTS `b_iblock_offers_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_offers_tmp` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PRODUCT_IBLOCK_ID` int(11) unsigned NOT NULL,
  `OFFERS_IBLOCK_ID` int(11) unsigned NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_offers_tmp`
--

LOCK TABLES `b_iblock_offers_tmp` WRITE;
/*!40000 ALTER TABLE `b_iblock_offers_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_offers_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_property`
--

DROP TABLE IF EXISTS `b_iblock_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_property` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `IBLOCK_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `ROW_COUNT` int(11) NOT NULL DEFAULT 1,
  `COL_COUNT` int(11) NOT NULL DEFAULT 30,
  `LIST_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'L',
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_TYPE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MULTIPLE_CNT` int(11) DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_IBLOCK_ID` int(18) DEFAULT NULL,
  `WITH_DESCRIPTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FILTRABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT 1,
  `USER_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_property_1` (`IBLOCK_ID`),
  KEY `ix_iblock_property_3` (`LINK_IBLOCK_ID`),
  KEY `ix_iblock_property_2` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_property`
--

LOCK TABLES `b_iblock_property` WRITE;
/*!40000 ALTER TABLE `b_iblock_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_property_enum`
--

DROP TABLE IF EXISTS `b_iblock_property_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_property_enum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROPERTY_ID` int(11) NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `XML_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_iblock_property_enum` (`PROPERTY_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_property_enum`
--

LOCK TABLES `b_iblock_property_enum` WRITE;
/*!40000 ALTER TABLE `b_iblock_property_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_property_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_property_feature`
--

DROP TABLE IF EXISTS `b_iblock_property_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_property_feature` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROPERTY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FEATURE_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `IS_ENABLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_iblock_property_feature` (`PROPERTY_ID`,`MODULE_ID`,`FEATURE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_property_feature`
--

LOCK TABLES `b_iblock_property_feature` WRITE;
/*!40000 ALTER TABLE `b_iblock_property_feature` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_property_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_right`
--

DROP TABLE IF EXISTS `b_iblock_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_right` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `DO_INHERIT` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `OP_SREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `OP_EREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_iblock_right_iblock_id` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`),
  KEY `ix_b_iblock_right_group_code` (`GROUP_CODE`,`IBLOCK_ID`),
  KEY `ix_b_iblock_right_entity` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `ix_b_iblock_right_op_eread` (`ID`,`OP_EREAD`,`GROUP_CODE`),
  KEY `ix_b_iblock_right_op_sread` (`ID`,`OP_SREAD`,`GROUP_CODE`),
  KEY `ix_b_iblock_right_task_id` (`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_right`
--

LOCK TABLES `b_iblock_right` WRITE;
/*!40000 ALTER TABLE `b_iblock_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_rss`
--

DROP TABLE IF EXISTS `b_iblock_rss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_rss` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `NODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NODE_VALUE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_rss`
--

LOCK TABLES `b_iblock_rss` WRITE;
/*!40000 ALTER TABLE `b_iblock_rss` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_rss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section`
--

DROP TABLE IF EXISTS `b_iblock_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `GLOBAL_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `LEFT_MARGIN` int(18) DEFAULT NULL,
  `RIGHT_MARGIN` int(18) DEFAULT NULL,
  `DEPTH_LEVEL` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_section_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  KEY `ix_iblock_section_depth_level` (`IBLOCK_ID`,`DEPTH_LEVEL`),
  KEY `ix_iblock_section_left_margin` (`IBLOCK_ID`,`LEFT_MARGIN`,`RIGHT_MARGIN`),
  KEY `ix_iblock_section_right_margin` (`IBLOCK_ID`,`RIGHT_MARGIN`,`LEFT_MARGIN`),
  KEY `ix_iblock_section_code` (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section`
--

LOCK TABLES `b_iblock_section` WRITE;
/*!40000 ALTER TABLE `b_iblock_section` DISABLE KEYS */;
INSERT INTO `b_iblock_section` VALUES (1,'2020-04-13 17:34:16',1,'2020-04-13 16:56:14',1,3,NULL,'Y','Y',100,'Кредиты',NULL,1,4,1,'','text','КРЕДИТЫ\r\n','kredity',NULL,NULL,NULL,NULL),(2,'2020-04-13 17:25:37',1,'2020-04-13 17:25:37',1,3,NULL,'Y','Y',500,'Вклады',NULL,5,6,1,'','text','ВКЛАДЫ\r\n','vklady',NULL,NULL,NULL,NULL),(3,'2020-04-13 17:33:27',1,'2020-04-13 17:33:27',1,3,1,'Y','Y',500,'Ипотека',NULL,2,3,2,'','text','ИПОТЕКА\r\n','ipoteka',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_iblock_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_element`
--

DROP TABLE IF EXISTS `b_iblock_section_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_element` (
  `IBLOCK_SECTION_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `ADDITIONAL_PROPERTY_ID` int(18) DEFAULT NULL,
  UNIQUE KEY `ux_iblock_section_element` (`IBLOCK_SECTION_ID`,`IBLOCK_ELEMENT_ID`,`ADDITIONAL_PROPERTY_ID`),
  KEY `UX_IBLOCK_SECTION_ELEMENT2` (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_element`
--

LOCK TABLES `b_iblock_section_element` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_element` DISABLE KEYS */;
INSERT INTO `b_iblock_section_element` VALUES (1,7,NULL);
/*!40000 ALTER TABLE `b_iblock_section_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_iprop`
--

DROP TABLE IF EXISTS `b_iblock_section_iprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`SECTION_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_section_iprop_0` (`IPROP_ID`),
  KEY `ix_b_iblock_section_iprop_1` (`IBLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_iprop`
--

LOCK TABLES `b_iblock_section_iprop` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_iprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_property`
--

DROP TABLE IF EXISTS `b_iblock_section_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_property` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `SMART_FILTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_EXPANDED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILTER_HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`SECTION_ID`,`PROPERTY_ID`),
  KEY `ix_b_iblock_section_property_1` (`PROPERTY_ID`),
  KEY `ix_b_iblock_section_property_2` (`SECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_property`
--

LOCK TABLES `b_iblock_section_property` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_right`
--

DROP TABLE IF EXISTS `b_iblock_section_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`RIGHT_ID`,`SECTION_ID`),
  KEY `ix_b_iblock_section_right_1` (`SECTION_ID`,`IBLOCK_ID`),
  KEY `ix_b_iblock_section_right_2` (`IBLOCK_ID`,`RIGHT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_right`
--

LOCK TABLES `b_iblock_section_right` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_sequence`
--

DROP TABLE IF EXISTS `b_iblock_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_sequence` (
  `IBLOCK_ID` int(18) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SEQ_VALUE` int(11) DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_sequence`
--

LOCK TABLES `b_iblock_sequence` WRITE;
/*!40000 ALTER TABLE `b_iblock_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_site`
--

DROP TABLE IF EXISTS `b_iblock_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_site` (
  `IBLOCK_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_site`
--

LOCK TABLES `b_iblock_site` WRITE;
/*!40000 ALTER TABLE `b_iblock_site` DISABLE KEYS */;
INSERT INTO `b_iblock_site` VALUES (1,'s1'),(2,'s1'),(3,'s1');
/*!40000 ALTER TABLE `b_iblock_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_type`
--

DROP TABLE IF EXISTS `b_iblock_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_type` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_RSS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(18) NOT NULL DEFAULT 500,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_type`
--

LOCK TABLES `b_iblock_type` WRITE;
/*!40000 ALTER TABLE `b_iblock_type` DISABLE KEYS */;
INSERT INTO `b_iblock_type` VALUES ('catalog','Y','','','N',500),('news','N',NULL,NULL,'N',50),('rest_entity','Y',NULL,NULL,'N',1000),('vacancies','Y',NULL,NULL,'N',150);
/*!40000 ALTER TABLE `b_iblock_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_type_lang`
--

DROP TABLE IF EXISTS `b_iblock_type_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_type_lang` (
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_type_lang`
--

LOCK TABLES `b_iblock_type_lang` WRITE;
/*!40000 ALTER TABLE `b_iblock_type_lang` DISABLE KEYS */;
INSERT INTO `b_iblock_type_lang` VALUES ('rest_entity','ru','Хранилище данных для приложений Маркетплейс24','Разделы','Элементы'),('news','en','News','','News'),('news','ru','Новости','','Новости'),('vacancies','en','Job','Categories','Vacancies'),('vacancies','ru','Вакансии','Разделы','Вакансии'),('catalog','ru','Каталог','',''),('catalog','en','catalog','','');
/*!40000 ALTER TABLE `b_iblock_type_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing`
--

DROP TABLE IF EXISTS `b_landing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INITIATOR_APP_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RULE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `PUBLIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SYS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `VIEWS` int(18) NOT NULL DEFAULT 0,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TPL_ID` int(18) DEFAULT NULL,
  `TPL_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` int(18) NOT NULL,
  `SITEMAP` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FOLDER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FOLDER_ID` int(18) DEFAULT NULL,
  `SEARCH_CONTENT` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(18) NOT NULL DEFAULT 1,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DATE_PUBLIC` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_LAND_CODE` (`CODE`),
  KEY `IX_B_LAND_ACTIVE` (`ACTIVE`),
  KEY `IX_B_LAND_DELETED` (`DELETED`),
  KEY `IX_B_LAND_SYS` (`SYS`),
  KEY `IX_B_LAND_XML_ID` (`XML_ID`),
  KEY `IX_B_LAND_SITEMAP` (`SITEMAP`),
  KEY `IX_B_LAND_FOLDER` (`FOLDER`),
  KEY `IX_B_LAND_FOLDER_ID` (`FOLDER_ID`),
  FULLTEXT KEY `IX_B_LANDING_SEARCH` (`SEARCH_CONTENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing`
--

LOCK TABLES `b_landing` WRITE;
/*!40000 ALTER TABLE `b_landing` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_binding`
--

DROP TABLE IF EXISTS `b_landing_binding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_binding` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `BINDING_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `BINDING_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_BINDING` (`BINDING_ID`,`BINDING_TYPE`),
  KEY `IX_B_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IX_B_BINDING_TYPE` (`BINDING_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_binding`
--

LOCK TABLES `b_landing_binding` WRITE;
/*!40000 ALTER TABLE `b_landing_binding` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_binding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_block`
--

DROP TABLE IF EXISTS `b_landing_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_block` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int(18) DEFAULT NULL,
  `LID` int(18) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `INITIATOR_APP_CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ANCHOR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) DEFAULT 500,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PUBLIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACCESS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'X',
  `SOURCE_PARAMS` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `SEARCH_CONTENT` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_BLOCK_LID` (`LID`),
  KEY `IX_B_BLOCK_CODE` (`CODE`),
  KEY `IX_B_BLOCK_ACTIVE` (`ACTIVE`),
  KEY `IX_B_BLOCK_PUBLIC` (`PUBLIC`),
  KEY `IX_B_BLOCK_DELETED` (`DELETED`),
  FULLTEXT KEY `IX_B_BLOCK_SEARCH` (`SEARCH_CONTENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_block`
--

LOCK TABLES `b_landing_block` WRITE;
/*!40000 ALTER TABLE `b_landing_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_demo`
--

DROP TABLE IF EXISTS `b_landing_demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_demo` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `APP_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TPL_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `SHOW_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW2X` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW3X` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MANIFEST` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANG` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_DEMO_ACTIVE` (`ACTIVE`),
  KEY `IX_B_DEMO_SHOW_IN_LIST` (`SHOW_IN_LIST`),
  KEY `IX_B_DEMO_XML_ID` (`XML_ID`),
  KEY `IX_B_DEMO_APP_CODE` (`APP_CODE`),
  KEY `IX_B_DEMO_TEMPLATE_ID` (`SITE_TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_demo`
--

LOCK TABLES `b_landing_demo` WRITE;
/*!40000 ALTER TABLE `b_landing_demo` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_domain`
--

DROP TABLE IF EXISTS `b_landing_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_domain` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROTOCOL` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_DOMAIN_ACTIVE` (`ACTIVE`),
  KEY `IX_B_DOMAIN_DOMAIN` (`DOMAIN`),
  KEY `IX_B_DOMAIN_XML_ID` (`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_domain`
--

LOCK TABLES `b_landing_domain` WRITE;
/*!40000 ALTER TABLE `b_landing_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_entity_rights`
--

DROP TABLE IF EXISTS `b_landing_entity_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_entity_rights` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `ACCESS_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ROLE_ID` int(18) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IX_ROLE` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_entity_rights`
--

LOCK TABLES `b_landing_entity_rights` WRITE;
/*!40000 ALTER TABLE `b_landing_entity_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_entity_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_file`
--

DROP TABLE IF EXISTS `b_landing_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_file` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IX_FILE` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_file`
--

LOCK TABLES `b_landing_file` WRITE;
/*!40000 ALTER TABLE `b_landing_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_filter_block`
--

DROP TABLE IF EXISTS `b_landing_filter_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_filter_block` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FILTER_ID` int(18) NOT NULL,
  `BLOCK_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_FILTER_BLOCK` (`FILTER_ID`,`BLOCK_ID`),
  KEY `IX_B_FILTER_ID` (`FILTER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_filter_block`
--

LOCK TABLES `b_landing_filter_block` WRITE;
/*!40000 ALTER TABLE `b_landing_filter_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_filter_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_filter_entity`
--

DROP TABLE IF EXISTS `b_landing_filter_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_filter_entity` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `SOURCE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER_HASH` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_FILTER_HASH` (`FILTER_HASH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_filter_entity`
--

LOCK TABLES `b_landing_filter_entity` WRITE;
/*!40000 ALTER TABLE `b_landing_filter_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_filter_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_hook_data`
--

DROP TABLE IF EXISTS `b_landing_hook_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_hook_data` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `HOOK` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PUBLIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_hook_data`
--

LOCK TABLES `b_landing_hook_data` WRITE;
/*!40000 ALTER TABLE `b_landing_hook_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_hook_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_placement`
--

DROP TABLE IF EXISTS `b_landing_placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_placement` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(18) DEFAULT NULL,
  `PLACEMENT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PLACEMENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_placement`
--

LOCK TABLES `b_landing_placement` WRITE;
/*!40000 ALTER TABLE `b_landing_placement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_placement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_repo`
--

DROP TABLE IF EXISTS `b_landing_repo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_repo` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `APP_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTIONS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MANIFEST` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` text COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_REPO_ACTIVE` (`ACTIVE`),
  KEY `IX_B_REPO_XML_ID` (`XML_ID`),
  KEY `IX_B_REPO_APP_CODE` (`APP_CODE`),
  KEY `IX_B_REPO_TEMPLATE_ID` (`SITE_TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_repo`
--

LOCK TABLES `b_landing_repo` WRITE;
/*!40000 ALTER TABLE `b_landing_repo` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_repo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_role`
--

DROP TABLE IF EXISTS `b_landing_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_role` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS_CODES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDITIONAL_RIGHTS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `IX_B_ROLE_TYPE` (`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_role`
--

LOCK TABLES `b_landing_role` WRITE;
/*!40000 ALTER TABLE `b_landing_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_site`
--

DROP TABLE IF EXISTS `b_landing_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_site` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PAGE',
  `TPL_ID` int(18) DEFAULT NULL,
  `DOMAIN_ID` int(18) NOT NULL,
  `SMN_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANDING_ID_INDEX` int(18) DEFAULT NULL,
  `LANDING_ID_404` int(18) DEFAULT NULL,
  `LANDING_ID_503` int(18) DEFAULT NULL,
  `LANG` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SPECIAL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_SITE_CODE` (`CODE`),
  KEY `IX_B_SITE_ACTIVE` (`ACTIVE`),
  KEY `IX_B_SITE_DELETED` (`DELETED`),
  KEY `IX_B_SITE_XML_ID` (`XML_ID`),
  KEY `IX_B_SITE_SPECIAL` (`SPECIAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_site`
--

LOCK TABLES `b_landing_site` WRITE;
/*!40000 ALTER TABLE `b_landing_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_syspage`
--

DROP TABLE IF EXISTS `b_landing_syspage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_syspage` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `SITE_ID` int(18) NOT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LANDING_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SITE_ID` (`SITE_ID`),
  KEY `IX_LANDING_ID` (`LANDING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_syspage`
--

LOCK TABLES `b_landing_syspage` WRITE;
/*!40000 ALTER TABLE `b_landing_syspage` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_syspage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_template`
--

DROP TABLE IF EXISTS `b_landing_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_template` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(18) DEFAULT 100,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` text COLLATE utf8_unicode_ci NOT NULL,
  `AREA_COUNT` int(2) NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_template`
--

LOCK TABLES `b_landing_template` WRITE;
/*!40000 ALTER TABLE `b_landing_template` DISABLE KEYS */;
INSERT INTO `b_landing_template` VALUES (1,'Y','#EMPTY#',100,'empty','#CONTENT#',0,1,1,'2020-04-13 19:48:07','2020-04-13 19:48:07'),(2,'Y','#SIDEBAR_LEFT#',200,'sidebar_left','<div class=\"landing-layout-flex\">\n								<div class=\"landing-sidebar g-max-width-100x g-overflow-hidden\">#AREA_1#</div>\n								<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n							</div>',1,1,1,'2020-04-13 19:48:07','2020-04-13 19:48:07'),(3,'Y','#SIDEBAR_RIGHT#',300,'sidebar_right','<div class=\"landing-layout-flex sidebar-right\">\n								<div class=\"landing-sidebar g-max-width-100x\">#AREA_1#</div>\n								<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n							</div>',1,1,1,'2020-04-13 19:48:08','2020-04-13 19:48:08'),(4,'Y','#HEADER_FOOTER#',400,'header_footer','<div class=\"landing-header\">#AREA_1#</div> \n								<div class=\"landing-main\">#CONTENT#</div> \n							<div class=\"landing-footer\">#AREA_2#</div>',2,1,1,'2020-04-13 19:48:08','2020-04-13 19:48:08'),(5,'Y','#WITHOUT_LEFT#',500,'without_left','<div class=\"landing-header\">#AREA_1#</div>\n								<div class=\"landing-layout-flex without-left\">\n									<div class=\"landing-sidebar g-max-width-100x\">#AREA_2#</div>\n									<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n								</div>\n							<div class=\"landing-footer\">#AREA_3#</div>',3,1,1,'2020-04-13 19:48:08','2020-04-13 19:48:08'),(6,'Y','#WITHOUT_RIGHT#',600,'without_right','<div class=\"landing-header\">#AREA_1#</div>\n								<div class=\"landing-layout-flex\">\n									<div class=\"landing-sidebar g-max-width-100x\">#AREA_2#</div>\n									<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n								</div>\n							<div class=\"landing-footer\">#AREA_3#</div>',3,1,1,'2020-04-13 19:48:09','2020-04-13 19:48:09');
/*!40000 ALTER TABLE `b_landing_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_template_ref`
--

DROP TABLE IF EXISTS `b_landing_template_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_template_ref` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `AREA` int(2) NOT NULL,
  `LANDING_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `K_LANDING_ID` (`LANDING_ID`),
  KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_template_ref`
--

LOCK TABLES `b_landing_template_ref` WRITE;
/*!40000 ALTER TABLE `b_landing_template_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_template_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_update_block`
--

DROP TABLE IF EXISTS `b_landing_update_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_update_block` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_BLOCK_ID` int(18) DEFAULT 0,
  `PARAMS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_update_block`
--

LOCK TABLES `b_landing_update_block` WRITE;
/*!40000 ALTER TABLE `b_landing_update_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_update_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_urlrewrite`
--

DROP TABLE IF EXISTS `b_landing_urlrewrite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_urlrewrite` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `SITE_ID` int(18) NOT NULL,
  `RULE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LANDING_ID` int(18) NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_SITE_RULE` (`SITE_ID`,`RULE`),
  KEY `IX_LANDING_ID` (`LANDING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_urlrewrite`
--

LOCK TABLES `b_landing_urlrewrite` WRITE;
/*!40000 ALTER TABLE `b_landing_urlrewrite` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_urlrewrite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_view`
--

DROP TABLE IF EXISTS `b_landing_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_view` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `LID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  `VIEWS` int(18) NOT NULL,
  `FIRST_VIEW` datetime NOT NULL,
  `LAST_VIEW` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_VIEW_LIDUID` (`LID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_view`
--

LOCK TABLES `b_landing_view` WRITE;
/*!40000 ALTER TABLE `b_landing_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_lang`
--

DROP TABLE IF EXISTS `b_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_lang` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(18) NOT NULL DEFAULT 100,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DIR` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOC_ROOT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOMAIN_LIMITED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SERVER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_lang`
--

LOCK TABLES `b_lang` WRITE;
/*!40000 ALTER TABLE `b_lang` DISABLE KEYS */;
INSERT INTO `b_lang` VALUES ('s1',1,'Y','Y','Корпоративный сайт (Сайт по умолчанию)','/',NULL,NULL,NULL,NULL,NULL,'ru','','N','','Корпоративный сайт','',1);
/*!40000 ALTER TABLE `b_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_lang_domain`
--

DROP TABLE IF EXISTS `b_lang_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_lang_domain` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`LID`,`DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_lang_domain`
--

LOCK TABLES `b_lang_domain` WRITE;
/*!40000 ALTER TABLE `b_lang_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_lang_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_language`
--

DROP TABLE IF EXISTS `b_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_language` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT 100,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_language`
--

LOCK TABLES `b_language` WRITE;
/*!40000 ALTER TABLE `b_language` DISABLE KEYS */;
INSERT INTO `b_language` VALUES ('en',2,'N','Y','English',NULL,NULL,NULL,NULL,NULL,NULL,2),('ru',1,'Y','Y','Russian',NULL,NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `b_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_log_notification`
--

DROP TABLE IF EXISTS `b_log_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_log_notification` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUDIT_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECK_INTERVAL` int(11) DEFAULT NULL,
  `ALERT_COUNT` int(11) DEFAULT NULL,
  `DATE_CHECKED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_log_notification`
--

LOCK TABLES `b_log_notification` WRITE;
/*!40000 ALTER TABLE `b_log_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_log_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_log_notification_action`
--

DROP TABLE IF EXISTS `b_log_notification_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_log_notification_action` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NOTIFICATION_ID` int(10) unsigned NOT NULL,
  `NOTIFICATION_TYPE` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `RECIPIENT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDITIONAL_TEXT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_log_notification_action_notification_id` (`NOTIFICATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_log_notification_action`
--

LOCK TABLES `b_log_notification_action` WRITE;
/*!40000 ALTER TABLE `b_log_notification_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_log_notification_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_main_mail_blacklist`
--

DROP TABLE IF EXISTS `b_main_mail_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_main_mail_blacklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `CATEGORY_ID` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_B_MAIN_MAIL_BLACKLIST_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_main_mail_blacklist`
--

LOCK TABLES `b_main_mail_blacklist` WRITE;
/*!40000 ALTER TABLE `b_main_mail_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_main_mail_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_main_mail_sender`
--

DROP TABLE IF EXISTS `b_main_mail_sender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_main_mail_sender` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `IS_CONFIRMED` tinyint(4) NOT NULL DEFAULT 0,
  `IS_PUBLIC` tinyint(4) NOT NULL DEFAULT 0,
  `OPTIONS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_MAIN_MAIL_SENDER_USER_ID` (`USER_ID`,`IS_CONFIRMED`,`IS_PUBLIC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_main_mail_sender`
--

LOCK TABLES `b_main_mail_sender` WRITE;
/*!40000 ALTER TABLE `b_main_mail_sender` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_main_mail_sender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_collection`
--

DROP TABLE IF EXISTS `b_medialib_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_collection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DATE_UPDATE` datetime NOT NULL,
  `OWNER_ID` int(11) DEFAULT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEMS_COUNT` int(11) DEFAULT NULL,
  `ML_TYPE` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_collection`
--

LOCK TABLES `b_medialib_collection` WRITE;
/*!40000 ALTER TABLE `b_medialib_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_collection_item`
--

DROP TABLE IF EXISTS `b_medialib_collection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_collection_item` (
  `COLLECTION_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  PRIMARY KEY (`ITEM_ID`,`COLLECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_collection_item`
--

LOCK TABLES `b_medialib_collection_item` WRITE;
/*!40000 ALTER TABLE `b_medialib_collection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_collection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_item`
--

DROP TABLE IF EXISTS `b_medialib_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_item` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_TYPE` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `SOURCE_ID` int(11) NOT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_item`
--

LOCK TABLES `b_medialib_item` WRITE;
/*!40000 ALTER TABLE `b_medialib_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_type`
--

DROP TABLE IF EXISTS `b_medialib_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_type`
--

LOCK TABLES `b_medialib_type` WRITE;
/*!40000 ALTER TABLE `b_medialib_type` DISABLE KEYS */;
INSERT INTO `b_medialib_type` VALUES (1,'image_name','image','jpg,jpeg,gif,png','Y','image_desc'),(2,'video_name','video','flv,mp4,wmv','Y','video_desc'),(3,'sound_name','sound','mp3,wma,aac','Y','sound_desc');
/*!40000 ALTER TABLE `b_medialib_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_messageservice_message`
--

DROP TABLE IF EXISTS `b_messageservice_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_messageservice_message` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `SENDER_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AUTHOR_ID` int(18) NOT NULL DEFAULT 0,
  `MESSAGE_FROM` varchar(260) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE_TO` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_HEADERS` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE_BODY` longtext COLLATE utf8_unicode_ci NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `EXEC_ERROR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS_ID` int(18) NOT NULL DEFAULT 0,
  `EXTERNAL_ID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `B_MESSAGESERVICE_MESSAGE_1` (`DATE_EXEC`),
  KEY `B_MESSAGESERVICE_MESSAGE_2` (`SUCCESS_EXEC`),
  KEY `B_MESSAGESERVICE_MESSAGE_3` (`SENDER_ID`,`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_messageservice_message`
--

LOCK TABLES `b_messageservice_message` WRITE;
/*!40000 ALTER TABLE `b_messageservice_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_messageservice_rest_app`
--

DROP TABLE IF EXISTS `b_messageservice_rest_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_messageservice_rest_app` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `APP_ID` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `HANDLER` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_ADD` datetime DEFAULT NULL,
  `AUTHOR_ID` int(18) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `B_MESSAGESERVICE_REST_APP_1` (`APP_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_messageservice_rest_app`
--

LOCK TABLES `b_messageservice_rest_app` WRITE;
/*!40000 ALTER TABLE `b_messageservice_rest_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_rest_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_messageservice_rest_app_lang`
--

DROP TABLE IF EXISTS `b_messageservice_rest_app_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_messageservice_rest_app_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(18) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_messageservice_rest_app_lang`
--

LOCK TABLES `b_messageservice_rest_app_lang` WRITE;
/*!40000 ALTER TABLE `b_messageservice_rest_app_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_rest_app_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_module`
--

DROP TABLE IF EXISTS `b_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_module` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_ACTIVE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_module`
--

LOCK TABLES `b_module` WRITE;
/*!40000 ALTER TABLE `b_module` DISABLE KEYS */;
INSERT INTO `b_module` VALUES ('b24connector','2020-04-13 14:44:15'),('bitrix.sitecorporate','2020-04-13 14:44:21'),('bitrixcloud','2020-04-13 14:44:26'),('clouds','2020-04-13 14:44:37'),('compression','2020-04-13 14:44:42'),('fileman','2020-04-13 14:44:54'),('highloadblock','2020-04-13 14:45:28'),('iblock','2020-04-13 14:46:12'),('landing','2020-04-13 14:47:45'),('main','2020-04-13 14:41:46'),('messageservice','2020-04-13 14:50:34'),('perfmon','2020-04-13 14:50:59'),('rest','2020-04-13 14:51:19'),('search','2020-04-13 14:51:48'),('seo','2020-04-13 14:52:24'),('socialservices','2020-04-13 14:52:44'),('translate','2020-04-13 14:53:04'),('ui','2020-04-13 14:53:08');
/*!40000 ALTER TABLE `b_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_module_group`
--

DROP TABLE IF EXISTS `b_module_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_module_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `G_ACCESS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_GROUP_MODULE` (`MODULE_ID`,`GROUP_ID`,`SITE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_module_group`
--

LOCK TABLES `b_module_group` WRITE;
/*!40000 ALTER TABLE `b_module_group` DISABLE KEYS */;
INSERT INTO `b_module_group` VALUES (1,'main',5,'Q',NULL),(2,'fileman',5,'F',NULL);
/*!40000 ALTER TABLE `b_module_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_module_to_module`
--

DROP TABLE IF EXISTS `b_module_to_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_module_to_module` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `SORT` int(18) NOT NULL DEFAULT 100,
  `FROM_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TO_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TO_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_CLASS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD_ARG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(18) DEFAULT NULL,
  `UNIQUE_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_module_to_module_unique_id` (`UNIQUE_ID`),
  KEY `ix_module_to_module` (`FROM_MODULE_ID`(20),`MESSAGE_ID`(20),`TO_MODULE_ID`(20),`TO_CLASS`(20),`TO_METHOD`(20))
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_module_to_module`
--

LOCK TABLES `b_module_to_module` WRITE;
/*!40000 ALTER TABLE `b_module_to_module` DISABLE KEYS */;
INSERT INTO `b_module_to_module` VALUES (1,'2020-04-13 14:41:46',100,'iblock','OnIBlockPropertyBuildList','main','/modules/main/tools/prop_userid.php','CIBlockPropertyUserID','GetUserTypeDescription','',1,'2b30c309bf87645959b9bfbed51b49c6'),(2,'2020-04-13 14:41:47',100,'main','OnUserDelete','main','/modules/main/classes/mysql/favorites.php','CFavorites','OnUserDelete','',1,'f437e170e4daf957766b0b0579f08fb4'),(3,'2020-04-13 14:41:47',100,'main','OnLanguageDelete','main','/modules/main/classes/mysql/favorites.php','CFavorites','OnLanguageDelete','',1,'9211999c5cfc3a4d374e4f957d5079f6'),(4,'2020-04-13 14:41:47',100,'main','OnUserDelete','main','','CUserOptions','OnUserDelete','',1,'9ef4e969f975b6425c7113444d210a90'),(5,'2020-04-13 14:41:48',100,'main','OnChangeFile','main','','CMain','OnChangeFileComponent','',1,'332179402f77c4d41c6c2e524acde4d0'),(6,'2020-04-13 14:41:48',100,'main','OnUserTypeRightsCheck','main','','CUser','UserTypeRightsCheck','',1,'e1aae03ea8eb08e7bbb6d8d42cbc2ebe'),(7,'2020-04-13 14:41:48',100,'main','OnUserLogin','main','','UpdateTools','CheckUpdates','',1,'a2986b9f6e9a99c0351c2ba858dafc85'),(8,'2020-04-13 14:41:48',100,'main','OnModuleUpdate','main','','UpdateTools','SetUpdateResult','',1,'f9b70c6a75b6341063b23bde5d32e582'),(9,'2020-04-13 14:41:48',100,'main','OnUpdateCheck','main','','UpdateTools','SetUpdateError','',1,'a0aecef95a192ec3dd134f71f0f4f175'),(10,'2020-04-13 14:41:48',100,'main','OnPanelCreate','main','','CUndo','CheckNotifyMessage','',1,'6476f96ffba6ab2b4a7dbe644f42edf6'),(11,'2020-04-13 14:41:49',100,'main','OnAfterAddRating','main','','CRatingsComponentsMain','OnAfterAddRating','',1,'6122bee2ad083f8f72e35655cee48859'),(12,'2020-04-13 14:41:49',100,'main','OnAfterUpdateRating','main','','CRatingsComponentsMain','OnAfterUpdateRating','',1,'f8f806e33dc35737bdbe6b9bc42626a4'),(13,'2020-04-13 14:41:49',100,'main','OnSetRatingsConfigs','main','','CRatingsComponentsMain','OnSetRatingConfigs','',1,'9244ca7fd6964757ca191c9407cb1218'),(14,'2020-04-13 14:41:49',100,'main','OnGetRatingsConfigs','main','','CRatingsComponentsMain','OnGetRatingConfigs','',1,'d8ae8e1f8889b1fbb6af276fb14c8411'),(15,'2020-04-13 14:41:49',100,'main','OnGetRatingsObjects','main','','CRatingsComponentsMain','OnGetRatingObject','',1,'129315715250c195ee115002b445a156'),(16,'2020-04-13 14:41:49',100,'main','OnGetRatingContentOwner','main','','CRatingsComponentsMain','OnGetRatingContentOwner','',1,'bf1f5deaa1532fe9a28acd6d19d23a80'),(17,'2020-04-13 14:41:50',100,'main','OnAfterAddRatingRule','main','','CRatingRulesMain','OnAfterAddRatingRule','',1,'298e763431f7f7d6c3af9798663f410d'),(18,'2020-04-13 14:41:50',100,'main','OnAfterUpdateRatingRule','main','','CRatingRulesMain','OnAfterUpdateRatingRule','',1,'4ecdc4a15e24c49f0fa8f44064bf1511'),(19,'2020-04-13 14:41:50',100,'main','OnGetRatingRuleObjects','main','','CRatingRulesMain','OnGetRatingRuleObjects','',1,'6ac10928b76183004ba0e88ace0a1b5b'),(20,'2020-04-13 14:41:50',100,'main','OnGetRatingRuleConfigs','main','','CRatingRulesMain','OnGetRatingRuleConfigs','',1,'06769c4f6bbba4fad79c1619a874ee97'),(21,'2020-04-13 14:41:50',100,'main','OnAfterUserAdd','main','','CRatings','OnAfterUserRegister','',1,'ecb9ae0476db69da6c95b06bcb3aebbb'),(22,'2020-04-13 14:41:50',100,'main','OnUserDelete','main','','CRatings','OnUserDelete','',1,'9fe6984fd29b7ab9508ac02c23690094'),(23,'2020-04-13 14:41:50',100,'main','OnUserDelete','main','','CAccess','OnUserDelete','',1,'71909f221d70fa277429e80412f97f41'),(24,'2020-04-13 14:41:50',100,'main','OnAfterGroupAdd','main','','CGroupAuthProvider','OnAfterGroupAdd','',1,'02f2fe70b9068a6b307192321fe74430'),(25,'2020-04-13 14:41:50',100,'main','OnBeforeGroupUpdate','main','','CGroupAuthProvider','OnBeforeGroupUpdate','',1,'ef0f2e4d0ae7bbf59d0798e8078143f9'),(26,'2020-04-13 14:41:51',100,'main','OnBeforeGroupDelete','main','','CGroupAuthProvider','OnBeforeGroupDelete','',1,'d3ec9527c0e77709402a05ae4249afca'),(27,'2020-04-13 14:41:51',100,'main','OnAfterSetUserGroup','main','','CGroupAuthProvider','OnAfterSetUserGroup','',1,'0de6c5b48e9382f6e857d79f76d95f25'),(28,'2020-04-13 14:41:51',100,'main','OnUserLogin','main','','CGroupAuthProvider','OnUserLogin','',1,'954e2c4ca8624f90f1aee6f40183d5fc'),(29,'2020-04-13 14:41:51',100,'main','OnEventLogGetAuditTypes','main','','CEventMain','GetAuditTypes','',1,'ac0b8b7a5e703131a3bd41b4399bc032'),(30,'2020-04-13 14:41:51',100,'main','OnEventLogGetAuditHandlers','main','','CEventMain','MakeMainObject','',1,'1ddb38ccf35a8a9da5d3b2bc80591ad6'),(31,'2020-04-13 14:41:51',100,'perfmon','OnGetTableSchema','main','','CTableSchema','OnGetTableSchema','',1,'c1f65f88d449e8b8a3b7af9d54ef3f50'),(32,'2020-04-13 14:41:51',100,'sender','OnConnectorList','main','','\\Bitrix\\Main\\SenderEventHandler','onConnectorListUser','',1,'8af99568465a1ccdb6a84e868cf5aad8'),(33,'2020-04-13 14:41:51',110,'main','OnUserTypeBuildList','main','','CUserTypeString','GetUserTypeDescription','',1,'09f8200652932044934bd3c522e920c5'),(34,'2020-04-13 14:41:51',120,'main','OnUserTypeBuildList','main','','CUserTypeInteger','GetUserTypeDescription','',1,'71ef247b3eb3b07e4bd6940791b89497'),(35,'2020-04-13 14:41:51',130,'main','OnUserTypeBuildList','main','','CUserTypeDouble','GetUserTypeDescription','',1,'4fe2008255fe567423cc0c2f080ca741'),(36,'2020-04-13 14:41:52',140,'main','OnUserTypeBuildList','main','','CUserTypeDateTime','GetUserTypeDescription','',1,'686c0679e60bee52dbcc27f5502277b6'),(37,'2020-04-13 14:41:52',145,'main','OnUserTypeBuildList','main','','CUserTypeDate','GetUserTypeDescription','',1,'7e19b5fc5fc48b1cd317a6ac44d84236'),(38,'2020-04-13 14:41:52',150,'main','OnUserTypeBuildList','main','','CUserTypeBoolean','GetUserTypeDescription','',1,'4d5e1dd2369089f2db9480549241205f'),(39,'2020-04-13 14:41:52',155,'main','OnUserTypeBuildList','main','','CUserTypeUrl','GetUserTypeDescription','',1,'79fcd650625b296abf13216cd5af2428'),(40,'2020-04-13 14:41:52',160,'main','OnUserTypeBuildList','main','','CUserTypeFile','GetUserTypeDescription','',1,'67b9a4fbc45240a7887b73e3a246eba0'),(41,'2020-04-13 14:41:52',170,'main','OnUserTypeBuildList','main','','CUserTypeEnum','GetUserTypeDescription','',1,'fbebdb289fe38c1fbfeda4d3d8ee43ef'),(42,'2020-04-13 14:41:52',180,'main','OnUserTypeBuildList','main','','CUserTypeIBlockSection','GetUserTypeDescription','',1,'2065f8305645790970bac0b99f127f47'),(43,'2020-04-13 14:41:52',190,'main','OnUserTypeBuildList','main','','CUserTypeIBlockElement','GetUserTypeDescription','',1,'65bda5818e3545f1683a3ff5271cc891'),(44,'2020-04-13 14:41:52',200,'main','OnUserTypeBuildList','main','','CUserTypeStringFormatted','GetUserTypeDescription','',1,'47e3cf1c280e01dbaed43f9989a6747b'),(45,'2020-04-13 14:41:53',210,'main','OnUserTypeBuildList','main','','\\Bitrix\\Main\\UrlPreview\\UrlPreviewUserType','getUserTypeDescription','',1,'719d15ee5f60f6348d2bd6a8911aeed1'),(46,'2020-04-13 14:41:53',100,'main','OnBeforeEndBufferContent','main','','\\Bitrix\\Main\\Analytics\\Counter','onBeforeEndBufferContent','',1,'ff5eb984fe6ce3e8d769bf3ba646b902'),(47,'2020-04-13 14:41:53',100,'main','OnBeforeRestartBuffer','main','','\\Bitrix\\Main\\Analytics\\Counter','onBeforeRestartBuffer','',1,'0782f5a6df6dd52d834caea88c3ba3a7'),(48,'2020-04-13 14:41:53',100,'main','OnFileDelete','main','','\\Bitrix\\Main\\UI\\Viewer\\FilePreviewTable','onFileDelete','',1,'54c80cd94412db221338aeb59902f059'),(49,'2020-04-13 14:41:53',100,'disk','onAfterAjaxActionCreateFolderWithSharing','main','','\\Bitrix\\Main\\FinderDestTable','onAfterDiskAjaxAction','',1,'bfd508b9d33aff2527add538ca8ce0da'),(50,'2020-04-13 14:41:53',100,'disk','onAfterAjaxActionAppendSharing','main','','\\Bitrix\\Main\\FinderDestTable','onAfterDiskAjaxAction','',1,'a98030c3e6d284d10916eadb1153cb68'),(51,'2020-04-13 14:41:53',100,'disk','onAfterAjaxActionChangeSharingAndRights','main','','\\Bitrix\\Main\\FinderDestTable','onAfterDiskAjaxAction','',1,'6787372096415bcfe93bd50d8b24f608'),(52,'2020-04-13 14:41:53',100,'socialnetwork','OnSocNetLogDelete','main','','CUserCounter','OnSocNetLogDelete','',1,'33e603755a0bc07abd51a1f8ed52966e'),(53,'2020-04-13 14:41:53',100,'socialnetwork','OnSocNetLogCommentDelete','main','','CUserCounter','OnSocNetLogCommentDelete','',1,'51ee2214895be904a880046f43e84138'),(54,'2020-04-13 14:41:53',100,'main','OnAdminInformerInsertItems','main','','CMpNotifications','OnAdminInformerInsertItemsHandlerMP','',1,'c89c0e94ac1110c334a24c70e1773daa'),(55,'2020-04-13 14:41:53',100,'rest','OnRestServiceBuildDescription','main','','\\Bitrix\\Main\\Rest\\Handlers','onRestServiceBuildDescription','',1,'c0b0c358a21b648d4f9c5d29d17a5ab2'),(56,'2020-04-13 14:41:57',100,'sale','OnSaleBasketItemSaved','main','','\\Bitrix\\Main\\Analytics\\Catalog','catchCatalogBasket','',2,'fa4fc3924ff2585e92f8bdabaf287864'),(57,'2020-04-13 14:41:57',100,'sale','OnSaleOrderSaved','main','','\\Bitrix\\Main\\Analytics\\Catalog','catchCatalogOrder','',2,'6b358bb17b30da91b105fb1451ed9aaa'),(58,'2020-04-13 14:41:57',100,'sale','OnSaleOrderPaid','main','','\\Bitrix\\Main\\Analytics\\Catalog','catchCatalogOrderPayment','',2,'8f5ca6e1c5136cb4bbf30474f0ff4183'),(59,'2020-04-13 14:41:57',1000,'sale','onBuildDiscountConditionInterfaceControls','main','','\\Bitrix\\Main\\Discount\\UserConditionControl','onBuildDiscountConditionInterfaceControls','',1,'9f0d91c081704e52b52f540b3acaf52e'),(60,'2020-04-13 14:41:57',100,'main','OnBeforePhpMail','main','','\\Bitrix\\Main\\Mail\\Sender','applyCustomSmtp','',2,'10fbf5b8dec05a02d8d7010e594f16ec'),(61,'2020-04-13 14:41:58',100,'main','OnBuildFilterFactoryMethods','main','','\\Bitrix\\Main\\Filter\\FactoryMain','onBuildFilterFactoryMethods','',2,'19f10c2686a955bd8b8116ea1f1ad829'),(62,'2020-04-13 14:41:58',100,'main','OnBeforeUserTypeAdd','main','','\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper','OnBeforeUserTypeAdd','',1,'e204684efc0764af9431ca94b950619a'),(63,'2020-04-13 14:41:58',100,'main','OnAfterUserTypeAdd','main','','\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper','onAfterUserTypeAdd','',1,'50932fb244caf7af686fac906caf3e73'),(64,'2020-04-13 14:41:58',100,'main','OnBeforeUserTypeDelete','main','','\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper','OnBeforeUserTypeDelete','',1,'d22a86deba0ff4bd031d022e331033b4'),(65,'2020-04-13 14:41:58',100,'main','onGetUserFieldValues','main','','\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper','onGetUserFieldValues','',2,'7f9a5e25d638a6bff29f0bf4666da1a9'),(66,'2020-04-13 14:41:58',100,'main','onUpdateUserFieldValues','main','','\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper','onUpdateUserFieldValues','',2,'d78761f994d74258421d271810f03ebf'),(67,'2020-04-13 14:41:58',100,'main','onDeleteUserFieldValues','main','','\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper','onDeleteUserFieldValues','',2,'074b2e25238a00ffc809ad12b609db2c'),(68,'2020-04-13 14:44:15',100,'main','OnBuildGlobalMenu','b24connector','','\\Bitrix\\B24Connector\\Helper','onBuildGlobalMenu','',1,'9c4452a442bacc2d4d70635962485be1'),(69,'2020-04-13 14:44:15',100,'main','OnBeforeProlog','b24connector','','\\Bitrix\\B24Connector\\Helper','onBeforeProlog','',1,'641053ff6ee8ff57518d7c30724530e5'),(70,'2020-04-13 14:44:22',100,'main','OnBeforeProlog','bitrix.sitecorporate','','CSiteCorporate','ShowPanel','',1,'bc7c322534797a9ed3493c40e1b8fdac'),(71,'2020-04-13 14:44:26',100,'main','OnAdminInformerInsertItems','bitrixcloud','','CBitrixCloudBackup','OnAdminInformerInsertItems','',1,'5499039afdd0fdb38d4b245c8b886dcb'),(72,'2020-04-13 14:44:27',100,'mobileapp','OnBeforeAdminMobileMenuBuild','bitrixcloud','','CBitrixCloudMobile','OnBeforeAdminMobileMenuBuild','',1,'5828a8cdb2cc45e2724ef1c76139df88'),(73,'2020-04-13 14:44:38',100,'main','OnEventLogGetAuditTypes','clouds','','CCloudStorage','GetAuditTypes','',1,'da69722ba95497cf263381b46e24df40'),(74,'2020-04-13 14:44:38',90,'main','OnBeforeProlog','clouds','','CCloudStorage','OnBeforeProlog','',1,'f8c39ff182ad873715f10a7091f928a4'),(75,'2020-04-13 14:44:38',100,'main','OnAdminListDisplay','clouds','','CCloudStorage','OnAdminListDisplay','',1,'8ddf4f578e7229a63cba4d2124c7643c'),(76,'2020-04-13 14:44:38',100,'main','OnBuildGlobalMenu','clouds','','CCloudStorage','OnBuildGlobalMenu','',1,'d6d308843a6521ad50bfa230a2fcef8f'),(77,'2020-04-13 14:44:38',100,'main','OnFileSave','clouds','','CCloudStorage','OnFileSave','',1,'1e4f94a842d6166359ed1789a6f21245'),(78,'2020-04-13 14:44:38',100,'main','OnAfterFileSave','clouds','','CCloudStorage','OnAfterFileSave','',1,'c36bae07a3080f9b5bc5d422ec96933f'),(79,'2020-04-13 14:44:39',100,'main','OnGetFileSRC','clouds','','CCloudStorage','OnGetFileSRC','',1,'7ec03b3b7ad3f2f54c1e438a1172e5a8'),(80,'2020-04-13 14:44:39',100,'main','OnFileCopy','clouds','','CCloudStorage','OnFileCopy','',1,'6880b56c76f7d3c5d09f887fca6341ca'),(81,'2020-04-13 14:44:39',100,'main','OnFileDelete','clouds','','CCloudStorage','OnFileDelete','',1,'fefe695dc9f0e579e949c2dfcbe90d9d'),(82,'2020-04-13 14:44:39',100,'main','OnMakeFileArray','clouds','','CCloudStorage','OnMakeFileArray','',1,'713ea8a7a25764b1af60f7a1ec3032d5'),(83,'2020-04-13 14:44:39',100,'main','OnBeforeResizeImage','clouds','','CCloudStorage','OnBeforeResizeImage','',1,'705cd310c52f9c7e8e0c8a0578a22667'),(84,'2020-04-13 14:44:39',100,'main','OnAfterResizeImage','clouds','','CCloudStorage','OnAfterResizeImage','',1,'a403ad2328227153475df0c478a465cc'),(85,'2020-04-13 14:44:40',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_AmazonS3','GetObjectInstance','',1,'a4eb7ed1f50b5931474c565f448a4069'),(86,'2020-04-13 14:44:40',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_GoogleStorage','GetObjectInstance','',1,'1e559e2225608e8d40eeede5b7526f2a'),(87,'2020-04-13 14:44:40',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_OpenStackStorage','GetObjectInstance','',1,'5ad09feff5dab28ab571ad034ccdf2ea'),(88,'2020-04-13 14:44:40',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_RackSpaceCloudFiles','GetObjectInstance','',1,'cc976773610cf809bb56871ac7dd9f01'),(89,'2020-04-13 14:44:40',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_ClodoRU','GetObjectInstance','',1,'faadad31436e94c420ed787e4424714b'),(90,'2020-04-13 14:44:40',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_Selectel','GetObjectInstance','',1,'5e63a8eebed42bd099b4a9ef62e8d52b'),(91,'2020-04-13 14:44:41',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_HotBox','GetObjectInstance','',1,'1913169adcd6d6f3b7fb5f3b70ba1fd8'),(92,'2020-04-13 14:44:41',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_Yandex','GetObjectInstance','',1,'12bd1d4f0d145d5b1681955612fe61c8'),(93,'2020-04-13 14:44:41',100,'perfmon','OnGetTableSchema','clouds','','clouds','OnGetTableSchema','',1,'d31a1f80f07441976eb1711db4902a71'),(94,'2020-04-13 14:44:42',1,'main','OnPageStart','compression','','CCompress','OnPageStart','',1,'b5b3b05c97cb867ae7494ab99fa9a119'),(95,'2020-04-13 14:44:43',10000,'main','OnAfterEpilog','compression','','CCompress','OnAfterEpilog','',1,'397a459912acd1c78fc9129065807860'),(96,'2020-04-13 14:44:54',100,'main','OnGroupDelete','fileman','','CFileman','OnGroupDelete','',1,'d10f791d422ba0e7551ab267db50404c'),(97,'2020-04-13 14:44:54',100,'main','OnPanelCreate','fileman','','CFileman','OnPanelCreate','',1,'b00a6174fb1763684c299ccf5e054c65'),(98,'2020-04-13 14:44:54',100,'main','OnModuleUpdate','fileman','','CFileman','OnModuleUpdate','',1,'58ae853e2b7c230b5cdb51129efd8a05'),(99,'2020-04-13 14:44:54',100,'main','OnModuleInstalled','fileman','','CFileman','ClearComponentsListCache','',1,'7bdbd354eab11f376fa257a998587277'),(100,'2020-04-13 14:44:55',100,'iblock','OnIBlockPropertyBuildList','fileman','','CIBlockPropertyMapGoogle','GetUserTypeDescription','',1,'d9d06fd05f80b33379359ebd8e36e655'),(101,'2020-04-13 14:44:55',100,'iblock','OnIBlockPropertyBuildList','fileman','','CIBlockPropertyMapYandex','GetUserTypeDescription','',1,'20ca1d02998884b5abec68b32fdb561d'),(102,'2020-04-13 14:44:55',100,'iblock','OnIBlockPropertyBuildList','fileman','','CIBlockPropertyVideo','GetUserTypeDescription','',1,'991c32062e05844708a5cf7aba37bf9a'),(103,'2020-04-13 14:44:55',100,'main','OnUserTypeBuildList','fileman','','CUserTypeVideo','GetUserTypeDescription','',1,'41bc5efb49ebf8d165acd4e4d556f60c'),(104,'2020-04-13 14:44:55',100,'main','OnEventLogGetAuditTypes','fileman','','CEventFileman','GetAuditTypes','',1,'e0a610651ffec1fbddb2f261223fb2e9'),(105,'2020-04-13 14:44:55',100,'main','OnEventLogGetAuditHandlers','fileman','','CEventFileman','MakeFilemanObject','',1,'fbfef1ef99530f6eae191da293f9566c'),(106,'2020-04-13 14:44:55',154,'main','OnUserTypeBuildList','fileman','','\\Bitrix\\Fileman\\UserField\\Address','getUserTypeDescription','',1,'f0583a376e38d3d2675513b1a367ed3c'),(107,'2020-04-13 14:45:28',100,'main','OnBeforeUserTypeAdd','highloadblock','','\\Bitrix\\Highloadblock\\HighloadBlockTable','OnBeforeUserTypeAdd','',1,'f9dcff287cf7753e5c56974d37975507'),(108,'2020-04-13 14:45:28',100,'main','OnAfterUserTypeAdd','highloadblock','','\\Bitrix\\Highloadblock\\HighloadBlockTable','onAfterUserTypeAdd','',1,'d1fa2865e72eca144b964b6fb1eefc15'),(109,'2020-04-13 14:45:28',100,'main','OnBeforeUserTypeDelete','highloadblock','','\\Bitrix\\Highloadblock\\HighloadBlockTable','OnBeforeUserTypeDelete','',1,'1bf13707e1a45b8320c2ecd35534cbb4'),(110,'2020-04-13 14:45:28',100,'main','OnUserTypeBuildList','highloadblock','','CUserTypeHlblock','GetUserTypeDescription','',1,'2ac4a2154f4fd85d67b50f412ed5ed48'),(111,'2020-04-13 14:45:28',100,'iblock','OnIBlockPropertyBuildList','highloadblock','','CIBlockPropertyDirectory','GetUserTypeDescription','',1,'a6f7df502db8a04590e43188d7cbfc99'),(112,'2020-04-13 14:46:12',100,'main','OnGroupDelete','iblock','','CIBlock','OnGroupDelete','',1,'f2320df213f38adf32364d3169d5b197'),(113,'2020-04-13 14:46:12',100,'main','OnBeforeLangDelete','iblock','','CIBlock','OnBeforeLangDelete','',1,'46aef774958db327c1170a12d3a70ee5'),(114,'2020-04-13 14:46:13',100,'main','OnLangDelete','iblock','','CIBlock','OnLangDelete','',1,'861f6ee2ca56bf63c3af07db0553606b'),(115,'2020-04-13 14:46:13',100,'main','OnUserTypeRightsCheck','iblock','','CIBlockSection','UserTypeRightsCheck','',1,'2a6d446893d46f04f2c151f458d2908c'),(116,'2020-04-13 14:46:13',100,'search','OnReindex','iblock','','CIBlock','OnSearchReindex','',1,'c6c8111f129e0eb19e558106e354e6f6'),(117,'2020-04-13 14:46:13',100,'search','OnSearchGetURL','iblock','','CIBlock','OnSearchGetURL','',1,'0ae9fc756bfb1273309240cd8f535672'),(118,'2020-04-13 14:46:13',100,'main','OnEventLogGetAuditTypes','iblock','','CIBlock','GetAuditTypes','',1,'182d19c163e3a5a965bca170c3fb0e83'),(119,'2020-04-13 14:46:13',100,'main','OnEventLogGetAuditHandlers','iblock','','CEventIBlock','MakeIBlockObject','',1,'f7a182e8d9b204970d111e4703b9f523'),(120,'2020-04-13 14:46:13',200,'main','OnGetRatingContentOwner','iblock','','CRatingsComponentsIBlock','OnGetRatingContentOwner','',1,'6da245944e376d586a3fa2aaee02c70b'),(121,'2020-04-13 14:46:13',100,'main','OnTaskOperationsChanged','iblock','','CIBlockRightsStorage','OnTaskOperationsChanged','',1,'01b3f9984fa07b1dfb4bc35d107d5672'),(122,'2020-04-13 14:46:13',100,'main','OnGroupDelete','iblock','','CIBlockRightsStorage','OnGroupDelete','',1,'2dbbccdee3f2e7bd86446bec02be1d54'),(123,'2020-04-13 14:46:14',100,'main','OnUserDelete','iblock','','CIBlockRightsStorage','OnUserDelete','',1,'78f090ee29030c54788098b0782d28f9'),(124,'2020-04-13 14:46:14',100,'perfmon','OnGetTableSchema','iblock','','iblock','OnGetTableSchema','',1,'4b71a345c136beed338aa7137943d80b'),(125,'2020-04-13 14:46:14',100,'sender','OnConnectorList','iblock','','\\Bitrix\\Iblock\\SenderEventHandler','onConnectorListIblock','',1,'3de75587a47352dd3cb6d10866f69385'),(126,'2020-04-13 14:46:14',10,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyDate','GetUserTypeDescription','',1,'fa608e2c397b6793c54ad296619a22e2'),(127,'2020-04-13 14:46:14',20,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyDateTime','GetUserTypeDescription','',1,'78554c9e3c38ac383d51f0ee4d013120'),(128,'2020-04-13 14:46:14',30,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyXmlID','GetUserTypeDescription','',1,'952fe5f2ea67493fb9f9b924ce1b992b'),(129,'2020-04-13 14:46:14',40,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyFileMan','GetUserTypeDescription','',1,'fd688441d5e8203751fb47374931e011'),(130,'2020-04-13 14:46:14',50,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyHTML','GetUserTypeDescription','',1,'27645f81ce5d6d9f19a47cc171860beb'),(131,'2020-04-13 14:46:14',60,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyElementList','GetUserTypeDescription','',1,'c53e9314ae43c30267b32310a02d7df4'),(132,'2020-04-13 14:46:14',70,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertySequence','GetUserTypeDescription','',1,'3ff9528d1264fc77697248957aafdab5'),(133,'2020-04-13 14:46:14',80,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyElementAutoComplete','GetUserTypeDescription','',1,'0d233a1e7a0d6a52a52e13df88291024'),(134,'2020-04-13 14:46:14',90,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertySKU','GetUserTypeDescription','',1,'8678bc826ced4f66640fba3775b18516'),(135,'2020-04-13 14:46:14',100,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertySectionAutoComplete','GetUserTypeDescription','',1,'26ff6f651cb94a1fe4ce9827566f0730'),(136,'2020-04-13 14:46:15',100,'main','onVirtualClassBuildList','iblock','','Bitrix\\Iblock\\IblockTable','compileAllEntities','',2,'8a4e85071d25e6ba7f9ed315874c411b'),(137,'2020-04-13 14:48:01',100,'rest','OnRestServiceBuildDescription','landing','','\\Bitrix\\Landing\\Publicaction','restBase','',2,'9af99ddecf2dd8c3c5b14721f23e8fef'),(138,'2020-04-13 14:48:01',100,'rest','onBeforeApplicationUninstall','landing','','\\Bitrix\\Landing\\Publicaction','beforeRestApplicationDelete','',2,'ef1f080a088ad54298a4ba9bf2896313'),(139,'2020-04-13 14:48:01',100,'rest','OnRestAppDelete','landing','','\\Bitrix\\Landing\\Publicaction','restApplicationDelete','',2,'031cfc016e3be91368376a391c351dea'),(140,'2020-04-13 14:48:01',100,'main','OnBeforeSiteDelete','landing','','\\Bitrix\\Landing\\Site','onBeforeMainSiteDelete','',2,'5faa9b5de931dbb101e2e0aef6fc594b'),(141,'2020-04-13 14:48:01',100,'main','OnSiteDelete','landing','','\\Bitrix\\Landing\\Site','onMainSiteDelete','',2,'af029bceca7ea9cc809515e95bd3a710'),(142,'2020-04-13 14:48:01',100,'bitrix24','OnDomainChange','landing','','\\Bitrix\\Landing\\Update\\Block\\NodeAttributes','updateFormDomain','',2,'a5f1ac2c31163115813298acc7bbffcf'),(143,'2020-04-13 14:48:02',100,'socialservices','\\Bitrix\\Socialservices\\ApTable::OnAfterAdd','landing','','\\Bitrix\\Landing\\Update\\Block\\NodeAttributes','updateFormDomainByConnector','',2,'0152997776462d358b5364b794cd205e'),(144,'2020-04-13 14:48:02',100,'landing','OnBuildSourceList','landing','','\\Bitrix\\Landing\\Connector\\Landing','onSourceBuildHandler','',2,'fc391addc82a816df68510b0ae3363a5'),(145,'2020-04-13 14:48:02',100,'mobile','onMobileMenuStructureBuilt','landing','','\\Bitrix\\Landing\\Connector\\Mobile','onMobileMenuStructureBuilt','',2,'01fd8a44b83b5f7fcd2f36a626657ad0'),(146,'2020-04-13 14:48:02',100,'intranet','onBuildBindingMenu','landing','','\\Bitrix\\Landing\\Connector\\Intranet','onBuildBindingMenu','',2,'d5464da9aea2308d3d5f13c2387c4c40'),(147,'2020-04-13 14:48:02',100,'socialnetwork','onFillSocNetFeaturesList','landing','','\\Bitrix\\Landing\\Connector\\SocialNetwork','onFillSocNetFeaturesList','',2,'9825d91c89b53b69655aa98ea4f3a6cf'),(148,'2020-04-13 14:48:03',100,'socialnetwork','onFillSocNetMenu','landing','','\\Bitrix\\Landing\\Connector\\SocialNetwork','onFillSocNetMenu','',2,'14ecfb8fb4fc20f22ddb5ac64783461d'),(149,'2020-04-13 14:48:03',100,'socialnetwork','onSocNetGroupDelete','landing','','\\Bitrix\\Landing\\Connector\\SocialNetwork','onSocNetGroupDelete','',2,'78202f1461a8822a105a19f45502c327'),(150,'2020-04-13 14:50:34',100,'main','OnAfterEpilog','messageservice','','\\Bitrix\\MessageService\\Queue','run','',1,'6bcb21b0ccc5ac89d9531ddf8b94683c'),(151,'2020-04-13 14:50:34',100,'rest','OnRestServiceBuildDescription','messageservice','','\\Bitrix\\MessageService\\RestService','onRestServiceBuildDescription','',1,'7524628243223e572590eea87cc03f73'),(152,'2020-04-13 14:50:34',100,'rest','OnRestAppDelete','messageservice','','\\Bitrix\\MessageService\\RestService','onRestAppDelete','',1,'5febc41cd526ecba95dbb4843dd9c134'),(153,'2020-04-13 14:50:35',100,'rest','OnRestAppUpdate','messageservice','','\\Bitrix\\MessageService\\RestService','onRestAppUpdate','',1,'7e77b4d550c200a4ec06872af7857ee6'),(154,'2020-04-13 14:50:59',100,'perfmon','OnGetTableSchema','perfmon','','perfmon','OnGetTableSchema','',1,'3a4da255b44f05899b64e66a40c12662'),(155,'2020-04-13 14:51:19',49,'main','OnBeforeProlog','rest','','CRestEventHandlers','OnBeforeProlog','',2,'395c9c42c3cc9392de1e5887617afe6d'),(156,'2020-04-13 14:51:19',100,'rest','OnRestServiceBuildDescription','rest','','CBitrixRestEntity','OnRestServiceBuildDescription','',2,'f63068b1eb62c36219518206e1e2827c'),(157,'2020-04-13 14:51:20',100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\User','onRestServiceBuildDescription','',2,'c9a03e9019564649e55f5409b661e050'),(158,'2020-04-13 14:51:20',100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\Placement','onRestServiceBuildDescription','',2,'9751a266c2b6f6be5c34b1541bf7c194'),(159,'2020-04-13 14:51:20',100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\Event','onRestServiceBuildDescription','',2,'842ad63f19aff6d810059c7e56739aae'),(160,'2020-04-13 14:51:20',100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\UserFieldType','onRestServiceBuildDescription','',2,'4caf68a5256aabe4abef37f24562e59b'),(161,'2020-04-13 14:51:20',100,'rest','onFindMethodDescription','rest','','\\Bitrix\\Rest\\Engine\\RestManager','onFindMethodDescription','',2,'4d0614f880674af333326dd5ba9b2828'),(162,'2020-04-13 14:51:20',100,'main','OnApplicationsBuildList','main','modules/rest/lib/apauth/application.php','\\Bitrix\\Rest\\APAuth\\Application','onApplicationsBuildList','',2,'9c39129872987f8dcc8baacc0c446ed7'),(163,'2020-04-13 14:51:20',100,'im','OnAfterConfirmNotify','rest','','\\Bitrix\\Rest\\NotifyIm','receive','',2,'2ac9c19fe69d4e106deaa6f4a7a4371b'),(164,'2020-04-13 14:51:20',100,'rest','\\Bitrix\\Rest\\APAuth\\Password::OnDelete','rest','','\\Bitrix\\Rest\\APAuth\\PermissionTable','onPasswordDelete','',2,'f04447ca635f045ec1a64e593964fc90'),(165,'2020-04-13 14:51:20',100,'perfmon','OnGetTableSchema','rest','','rest','OnGetTableSchema','',2,'47a76003c8f9f2d8c820f446e084ff39'),(166,'2020-04-13 14:51:21',100,'rest','OnRestApplicationConfigurationImport','rest','','\\Bitrix\\Rest\\Configuration\\AppConfiguration','onEventImportController','',2,'3fc1dd7e523b33f9d76c19e54d45c2fb'),(167,'2020-04-13 14:51:21',100,'rest','OnRestApplicationConfigurationExport','rest','','\\Bitrix\\Rest\\Configuration\\AppConfiguration','onEventExportController','',2,'b90a349060c693506b740c4d36f75f5f'),(168,'2020-04-13 14:51:21',100,'rest','OnRestApplicationConfigurationClear','rest','','\\Bitrix\\Rest\\Configuration\\AppConfiguration','onEventClearController','',2,'75dccda637a740c033b2d014a84a8009'),(169,'2020-04-13 14:51:21',100,'rest','OnRestApplicationConfigurationEntity','rest','','\\Bitrix\\Rest\\Configuration\\AppConfiguration','getEntityList','',2,'8d83d219eaf2f415d55fb67e221b7c3d'),(170,'2020-04-13 14:51:21',100,'rest','OnRestApplicationConfigurationGetManifest','rest','','\\Bitrix\\Rest\\Configuration\\AppConfiguration','getManifestList','',2,'6ba35b1f4b01d1e358e1b3a79ac437d6'),(171,'2020-04-13 14:51:21',100,'rest','onRestCheckAuth','rest','','\\Bitrix\\Rest\\OAuth\\Auth','onRestCheckAuth','',2,'70e923729089b8cba69bb3b4311da11e'),(172,'2020-04-13 14:51:21',100,'rest','onRestCheckAuth','rest','','\\Bitrix\\Rest\\APAuth\\Auth','onRestCheckAuth','',2,'3550e6c95772564101770e0c9cb54470'),(173,'2020-04-13 14:51:21',100,'rest','onRestCheckAuth','rest','','\\Bitrix\\Rest\\SessionAuth\\Auth','onRestCheckAuth','',2,'8e33ae5a47b59d21df7d26f916d19e38'),(174,'2020-04-13 14:51:49',100,'main','OnChangePermissions','search','','CSearch','OnChangeFilePermissions','',1,'1c37aedc2ec89f94624291d097fe7adf'),(175,'2020-04-13 14:51:49',100,'main','OnChangeFile','search','','CSearch','OnChangeFile','',1,'d51170fc3433fde7eab8edc1c2b933a0'),(176,'2020-04-13 14:51:49',100,'main','OnGroupDelete','search','','CSearch','OnGroupDelete','',1,'05382d7448b1ba259b89bf9e87e4eb44'),(177,'2020-04-13 14:51:49',100,'main','OnLangDelete','search','','CSearch','OnLangDelete','',1,'15ebda82514af5a966b3466cd26992a4'),(178,'2020-04-13 14:51:50',100,'main','OnAfterUserUpdate','search','','CSearchUser','OnAfterUserUpdate','',1,'9e0cea5039973193afc706ec8978d674'),(179,'2020-04-13 14:51:50',100,'main','OnUserDelete','search','','CSearchUser','DeleteByUserID','',1,'524a910f381ba144bf50caa152222ed6'),(180,'2020-04-13 14:51:50',100,'cluster','OnGetTableList','search','','search','OnGetTableList','',1,'a40ffd36df151e2c0294b5639e81d665'),(181,'2020-04-13 14:51:50',100,'perfmon','OnGetTableSchema','search','','search','OnGetTableSchema','',1,'9c8df2577e0cb80c68afa2030e193efb'),(182,'2020-04-13 14:51:51',90,'main','OnEpilog','search','','CSearchStatistic','OnEpilog','',1,'6b3591ad78ac2a3ce6ad411f0aff47fe'),(183,'2020-04-13 14:52:26',100,'main','OnPanelCreate','seo','','CSeoEventHandlers','SeoOnPanelCreate','',2,'79688b0b4a106b805d09e63ffe88f580'),(184,'2020-04-13 14:52:26',100,'fileman','OnIncludeHTMLEditorScript','seo','','CSeoEventHandlers','OnIncludeHTMLEditorScript','',2,'7995eac5813e40f6b3e82b146631397e'),(185,'2020-04-13 14:52:26',100,'fileman','OnBeforeHTMLEditorScriptRuns','seo','','CSeoEventHandlers','OnBeforeHTMLEditorScriptRuns','',2,'313b34609f1fa34d34cde1c2103c09ff'),(186,'2020-04-13 14:52:26',100,'iblock','OnAfterIBlockSectionAdd','seo','','\\Bitrix\\Seo\\SitemapIblock','addSection','',2,'c61de21b0b0873525fa5c39427324664'),(187,'2020-04-13 14:52:26',100,'iblock','OnAfterIBlockElementAdd','seo','','\\Bitrix\\Seo\\SitemapIblock','addElement','',2,'1b167ab85d6d744bba456e559546f13e'),(188,'2020-04-13 14:52:27',100,'iblock','OnBeforeIBlockSectionDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeDeleteSection','',2,'148ce014df9dd9f99f17ebfc5d766e8a'),(189,'2020-04-13 14:52:27',100,'iblock','OnBeforeIBlockElementDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeDeleteElement','',2,'4b1e9896d9f0aa37a7039a321f25f9a5'),(190,'2020-04-13 14:52:27',100,'iblock','OnAfterIBlockSectionDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','deleteSection','',2,'b699c1c0d6665f9cffe7ff76ab108a24'),(191,'2020-04-13 14:52:27',100,'iblock','OnAfterIBlockElementDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','deleteElement','',2,'ff3a36654015c53890f4cf2204b030c4'),(192,'2020-04-13 14:52:27',100,'iblock','OnBeforeIBlockSectionUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeUpdateSection','',2,'aa5f8c360ed88eb5e2884c57b6f1f2f3'),(193,'2020-04-13 14:52:27',100,'iblock','OnBeforeIBlockElementUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeUpdateElement','',2,'a1022e0619263c0e91139fb3f9837085'),(194,'2020-04-13 14:52:28',100,'iblock','OnAfterIBlockSectionUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','updateSection','',2,'27930cffcd40b84666d0a22e1a953c41'),(195,'2020-04-13 14:52:28',100,'iblock','OnAfterIBlockElementUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','updateElement','',2,'f0151e07363564774d45acba4100aebe'),(196,'2020-04-13 14:52:28',100,'forum','onAfterTopicAdd','seo','','\\Bitrix\\Seo\\SitemapForum','addTopic','',2,'d4d54756116942c9ee0bda9b31e9d0e7'),(197,'2020-04-13 14:52:28',100,'forum','onAfterTopicUpdate','seo','','\\Bitrix\\Seo\\SitemapForum','updateTopic','',2,'3e0a8569016a4c941f3eb4aa9fca6e8b'),(198,'2020-04-13 14:52:28',100,'forum','onAfterTopicDelete','seo','','\\Bitrix\\Seo\\SitemapForum','deleteTopic','',2,'7f4379c818231561b41589d3de41e36b'),(199,'2020-04-13 14:52:29',100,'main','OnAdminIBlockElementEdit','seo','','\\Bitrix\\Seo\\AdvTabEngine','eventHandler','',2,'c894d167ef03c35375b8eb8f2551a798'),(200,'2020-04-13 14:52:29',100,'main','OnBeforeProlog','seo','','\\Bitrix\\Seo\\AdvSession','checkSession','',2,'5fdf8dd9fd70719e442efcb589175bf0'),(201,'2020-04-13 14:52:29',100,'sale','OnOrderSave','seo','','\\Bitrix\\Seo\\AdvSession','onOrderSave','',2,'07d4ab0b1aa0aa130a0cbc06403f6eae'),(202,'2020-04-13 14:52:29',100,'sale','OnBasketOrder','seo','','\\Bitrix\\Seo\\AdvSession','onBasketOrder','',2,'cf6298b090e92e955b32c358c1d14b25'),(203,'2020-04-13 14:52:29',100,'sale','onSalePayOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSalePayOrder','',2,'745afed820778e33d5cd3e91cbd622f1'),(204,'2020-04-13 14:52:29',100,'sale','onSaleDeductOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSaleDeductOrder','',2,'12861bd5c6c27ffa2abe5cac90ea58d8'),(205,'2020-04-13 14:52:29',100,'sale','onSaleDeliveryOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSaleDeliveryOrder','',2,'ead8fb64fece572d1fabd3d6fd27af27'),(206,'2020-04-13 14:52:30',100,'sale','onSaleStatusOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSaleStatusOrder','',2,'b7b9ac4bbf458d433e1cf3835ff4cb6c'),(207,'2020-04-13 14:52:30',100,'conversion','OnSetDayContextAttributes','seo','','\\Bitrix\\Seo\\ConversionHandler','onSetDayContextAttributes','',2,'c19eb7659342fabc34b953f69e8b9eee'),(208,'2020-04-13 14:52:30',100,'conversion','OnGetAttributeTypes','seo','','\\Bitrix\\Seo\\ConversionHandler','onGetAttributeTypes','',2,'379294eefad289e474bf0c5ce2a281d8'),(209,'2020-04-13 14:52:30',100,'catalog','OnProductUpdate','seo','','\\Bitrix\\Seo\\Adv\\Auto','checkQuantity','',2,'0f4deda4d57adb4389d85a19e5bbcf2b'),(210,'2020-04-13 14:52:30',100,'catalog','OnProductSetAvailableUpdate','seo','','\\Bitrix\\Seo\\Adv\\Auto','checkQuantity','',2,'3d040ae51f0f6a4b2a08be0e6e1494d4'),(211,'2020-04-13 14:52:44',100,'main','OnUserDelete','socialservices','','CSocServAuthDB','OnUserDelete','',1,'1f5b8fc024dfdf83952d6c723466cdf5'),(212,'2020-04-13 14:52:45',100,'timeman','OnAfterTMReportDailyAdd','socialservices','','CSocServAuthDB','OnAfterTMReportDailyAdd','',1,'a16159f6a90f1b67cb9ec15b0c1bab3a'),(213,'2020-04-13 14:52:45',100,'timeman','OnAfterTMDayStart','socialservices','','CSocServAuthDB','OnAfterTMDayStart','',1,'9567feb38890d6581a3204dc5e65e8b6'),(214,'2020-04-13 14:52:45',100,'timeman','OnTimeManShow','socialservices','','CSocServEventHandlers','OnTimeManShow','',1,'b728f3cea11d374f7638c29f84e8e15e'),(215,'2020-04-13 14:52:45',100,'main','OnFindExternalUser','socialservices','','CSocServAuthDB','OnFindExternalUser','',1,'1ab251d15efc87c5b5cfe6396f5dec1b'),(216,'2020-04-13 14:52:45',100,'perfmon','OnGetTableSchema','socialservices','','socialservices','OnGetTableSchema','',1,'56107bf1a0dcee0db660c0ec27c31c6c'),(217,'2020-04-13 14:52:46',100,'socialservices','OnFindSocialservicesUser','socialservices','','CSocServAuthManager','checkOldUser','',1,'c3d7460e4ef694f5bc53b6a6ad902407'),(218,'2020-04-13 14:52:46',100,'socialservices','OnFindSocialservicesUser','socialservices','','CSocServAuthManager','checkAbandonedUser','',1,'331f99f0b265544c33777c299eab16f6'),(219,'2020-04-13 14:53:04',100,'main','OnPanelCreate','translate','','\\Bitrix\\Translate\\Ui\\Panel','onPanelCreate','',1,'88ecb95eac2e28b80f234bfc8c1cd597'),(220,'2020-04-13 14:53:04',100,'perfmon','OnGetTableSchema','translate','','translate','onGetTableSchema','',1,'00347f45b2f48480b1a521c32036beb5'),(221,'2020-04-13 14:56:05',100,'main','OnBeforeProlog','main','/modules/main/install/wizard_sol/panel_button.php','CWizardSolPanel','ShowPanel','',1,'bbd7b8c1e518a0b3eae815eb91a95c11');
/*!40000 ALTER TABLE `b_module_to_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_numerator`
--

DROP TABLE IF EXISTS `b_numerator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_numerator` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_numerator`
--

LOCK TABLES `b_numerator` WRITE;
/*!40000 ALTER TABLE `b_numerator` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_numerator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_numerator_sequence`
--

DROP TABLE IF EXISTS `b_numerator_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_numerator_sequence` (
  `NUMERATOR_ID` int(11) NOT NULL DEFAULT 0,
  `KEY` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `TEXT_KEY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NEXT_NUMBER` int(11) DEFAULT NULL,
  `LAST_INVOCATION_TIME` int(11) DEFAULT NULL,
  PRIMARY KEY (`NUMERATOR_ID`,`KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_numerator_sequence`
--

LOCK TABLES `b_numerator_sequence` WRITE;
/*!40000 ALTER TABLE `b_numerator_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_numerator_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_operation`
--

DROP TABLE IF EXISTS `b_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_operation` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_operation`
--

LOCK TABLES `b_operation` WRITE;
/*!40000 ALTER TABLE `b_operation` DISABLE KEYS */;
INSERT INTO `b_operation` VALUES (1,'edit_php','main',NULL,'module'),(2,'view_own_profile','main',NULL,'module'),(3,'edit_own_profile','main',NULL,'module'),(4,'view_all_users','main',NULL,'module'),(5,'view_groups','main',NULL,'module'),(6,'view_tasks','main',NULL,'module'),(7,'view_other_settings','main',NULL,'module'),(8,'view_subordinate_users','main',NULL,'module'),(9,'edit_subordinate_users','main',NULL,'module'),(10,'edit_all_users','main',NULL,'module'),(11,'edit_groups','main',NULL,'module'),(12,'edit_tasks','main',NULL,'module'),(13,'edit_other_settings','main',NULL,'module'),(14,'cache_control','main',NULL,'module'),(15,'lpa_template_edit','main',NULL,'module'),(16,'view_event_log','main',NULL,'module'),(17,'edit_ratings','main',NULL,'module'),(18,'manage_short_uri','main',NULL,'module'),(19,'fm_view_permission','main',NULL,'file'),(20,'fm_view_file','main',NULL,'file'),(21,'fm_view_listing','main',NULL,'file'),(22,'fm_edit_existent_folder','main',NULL,'file'),(23,'fm_create_new_file','main',NULL,'file'),(24,'fm_edit_existent_file','main',NULL,'file'),(25,'fm_create_new_folder','main',NULL,'file'),(26,'fm_delete_file','main',NULL,'file'),(27,'fm_delete_folder','main',NULL,'file'),(28,'fm_edit_in_workflow','main',NULL,'file'),(29,'fm_rename_file','main',NULL,'file'),(30,'fm_rename_folder','main',NULL,'file'),(31,'fm_upload_file','main',NULL,'file'),(32,'fm_add_to_menu','main',NULL,'file'),(33,'fm_download_file','main',NULL,'file'),(34,'fm_lpa','main',NULL,'file'),(35,'fm_edit_permission','main',NULL,'file'),(36,'bitrixcloud_monitoring','bitrixcloud',NULL,'module'),(37,'bitrixcloud_backup','bitrixcloud',NULL,'module'),(38,'bitrixcloud_cdn','bitrixcloud',NULL,'module'),(39,'clouds_browse','clouds',NULL,'module'),(40,'clouds_upload','clouds',NULL,'module'),(41,'clouds_config','clouds',NULL,'module'),(42,'fileman_view_all_settings','fileman','','module'),(43,'fileman_edit_menu_types','fileman','','module'),(44,'fileman_add_element_to_menu','fileman','','module'),(45,'fileman_edit_menu_elements','fileman','','module'),(46,'fileman_edit_existent_files','fileman','','module'),(47,'fileman_edit_existent_folders','fileman','','module'),(48,'fileman_admin_files','fileman','','module'),(49,'fileman_admin_folders','fileman','','module'),(50,'fileman_view_permissions','fileman','','module'),(51,'fileman_edit_all_settings','fileman','','module'),(52,'fileman_upload_files','fileman','','module'),(53,'fileman_view_file_structure','fileman','','module'),(54,'fileman_install_control','fileman','','module'),(55,'medialib_view_collection','fileman','','medialib'),(56,'medialib_new_collection','fileman','','medialib'),(57,'medialib_edit_collection','fileman','','medialib'),(58,'medialib_del_collection','fileman','','medialib'),(59,'medialib_access','fileman','','medialib'),(60,'medialib_new_item','fileman','','medialib'),(61,'medialib_edit_item','fileman','','medialib'),(62,'medialib_del_item','fileman','','medialib'),(63,'sticker_view','fileman','','stickers'),(64,'sticker_edit','fileman','','stickers'),(65,'sticker_new','fileman','','stickers'),(66,'sticker_del','fileman','','stickers'),(67,'hl_element_read','highloadblock',NULL,'module'),(68,'hl_element_write','highloadblock',NULL,'module'),(69,'hl_element_delete','highloadblock',NULL,'module'),(70,'section_read','iblock',NULL,'iblock'),(71,'element_read','iblock',NULL,'iblock'),(72,'section_element_bind','iblock',NULL,'iblock'),(73,'iblock_admin_display','iblock',NULL,'iblock'),(74,'element_edit','iblock',NULL,'iblock'),(75,'element_edit_price','iblock',NULL,'iblock'),(76,'element_delete','iblock',NULL,'iblock'),(77,'element_bizproc_start','iblock',NULL,'iblock'),(78,'section_edit','iblock',NULL,'iblock'),(79,'section_delete','iblock',NULL,'iblock'),(80,'section_section_bind','iblock',NULL,'iblock'),(81,'element_edit_any_wf_status','iblock',NULL,'iblock'),(82,'iblock_edit','iblock',NULL,'iblock'),(83,'iblock_delete','iblock',NULL,'iblock'),(84,'iblock_rights_edit','iblock',NULL,'iblock'),(85,'iblock_export','iblock',NULL,'iblock'),(86,'section_rights_edit','iblock',NULL,'iblock'),(87,'element_rights_edit','iblock',NULL,'iblock'),(88,'landing_read','landing',NULL,'module'),(89,'landing_edit','landing',NULL,'module'),(90,'landing_sett','landing',NULL,'module'),(91,'landing_public','landing',NULL,'module'),(92,'landing_delete','landing',NULL,'module'),(93,'seo_settings','seo','','module'),(94,'seo_tools','seo','','module');
/*!40000 ALTER TABLE `b_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_option`
--

DROP TABLE IF EXISTS `b_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_option` (
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MODULE_ID`,`NAME`),
  KEY `ix_option_name` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_option`
--

LOCK TABLES `b_option` WRITE;
/*!40000 ALTER TABLE `b_option` DISABLE KEYS */;
INSERT INTO `b_option` VALUES ('fileman','different_set','Y',NULL,NULL),('fileman','stickers_use_hotkeys','N',NULL,NULL),('fileman','use_editor_3','Y',NULL,NULL),('iblock','use_htmledit','Y',NULL,NULL),('landing','disabled_namespaces','bitrix',NULL,NULL),('landing','pub_path_s1','/lp/',NULL,NULL),('main','~crypto_b_socialservices_user','a:2:{s:7:\"OATOKEN\";b:1;s:13:\"REFRESH_TOKEN\";b:1;}',NULL,NULL),('main','~crypto_b_user_phone_auth','a:1:{s:10:\"OTP_SECRET\";b:1;}',NULL,NULL),('main','~ft_b_landing','a:1:{s:14:\"SEARCH_CONTENT\";b:1;}',NULL,NULL),('main','~ft_b_landing_block','a:1:{s:14:\"SEARCH_CONTENT\";b:1;}',NULL,NULL),('main','~ft_b_user_index','a:3:{s:19:\"SEARCH_USER_CONTENT\";b:1;s:25:\"SEARCH_DEPARTMENT_CONTENT\";b:1;s:20:\"SEARCH_ADMIN_CONTENT\";b:1;}',NULL,NULL),('main','~ft_b_user_index_selector','a:1:{s:23:\"SEARCH_SELECTOR_CONTENT\";b:1;}',NULL,NULL),('main','~new_license11_sign','Y',NULL,NULL),('main','admin_lid','ru',NULL,NULL),('main','admin_passwordh','FVkQfWYUBgUtCUVcBxcECgsTAQ==',NULL,NULL),('main','distributive6','Y',NULL,NULL),('main','email_from','merinovroman@gmail.com',NULL,NULL),('main','GROUP_DEFAULT_TASK','1',NULL,NULL),('main','optimize_css_files','Y',NULL,NULL),('main','optimize_js_files','Y',NULL,NULL),('main','PARAM_MAX_SITES','2',NULL,NULL),('main','PARAM_MAX_USERS','0',NULL,NULL),('main','rating_assign_authority_group','4',NULL,NULL),('main','rating_assign_authority_group_add','2',NULL,NULL),('main','rating_assign_authority_group_delete','2',NULL,NULL),('main','rating_assign_rating_group','3',NULL,NULL),('main','rating_assign_rating_group_add','1',NULL,NULL),('main','rating_assign_rating_group_delete','1',NULL,NULL),('main','rating_assign_type','auto',NULL,NULL),('main','rating_authority_rating','2',NULL,NULL),('main','rating_authority_weight_formula','Y',NULL,NULL),('main','rating_community_authority','30',NULL,NULL),('main','rating_community_last_visit','90',NULL,NULL),('main','rating_community_size','1',NULL,NULL),('main','rating_count_vote','10',NULL,NULL),('main','rating_normalization','10',NULL,NULL),('main','rating_normalization_type','auto',NULL,NULL),('main','rating_self_vote','Y',NULL,NULL),('main','rating_start_authority','3',NULL,NULL),('main','rating_text_like_d','Это нравится',NULL,NULL),('main','rating_text_like_n','Не нравится',NULL,NULL),('main','rating_text_like_y','Нравится',NULL,NULL),('main','rating_vote_show','Y',NULL,NULL),('main','rating_vote_template','like',NULL,NULL),('main','rating_vote_type','like',NULL,NULL),('main','rating_vote_weight','10',NULL,NULL),('main','server_uniq_id','ae13ebef59d59d8b936dc986c06ceb9a',NULL,NULL),('main','signer_default_key','15fb03f18c4a588bc50c11d05019c08508aa1b70262e1694a298b385ae29b3cf2c05ca500e45740060b61cc96230d83977fa044cefe0d2edd22eb651a9002b43',NULL,NULL),('main','site_checker_success','N',NULL,NULL),('main','update_site','www.bitrixsoft.com',NULL,NULL),('main','update_site_ns','Y',NULL,NULL),('main','vendor','1c_bitrix',NULL,NULL),('main','wizard_firstcorp_services_s1','Y',NULL,NULL),('messageservice','clean_up_period','14',NULL,NULL),('rest','entity_iblock_type','rest_entity',NULL,NULL),('rest','server_path','/rest',NULL,NULL),('search','dbnode_id','N',NULL,NULL),('search','dbnode_status','ok',NULL,NULL),('search','suggest_save_days','250',NULL,NULL),('search','use_social_rating','Y',NULL,NULL),('search','use_tf_cache','Y',NULL,NULL),('search','use_word_distance','Y',NULL,NULL),('search','version','v2.0',NULL,NULL),('socialnetwork','allow_tooltip','N',NULL,NULL),('socialservices','allow_encrypted_tokens','1',NULL,NULL),('socialservices','auth_services','a:12:{s:9:\"VKontakte\";s:1:\"N\";s:8:\"MyMailRu\";s:1:\"N\";s:7:\"Twitter\";s:1:\"N\";s:8:\"Facebook\";s:1:\"N\";s:11:\"Livejournal\";s:1:\"Y\";s:12:\"YandexOpenID\";s:1:\"Y\";s:7:\"Rambler\";s:1:\"Y\";s:12:\"MailRuOpenID\";s:1:\"Y\";s:12:\"Liveinternet\";s:1:\"Y\";s:7:\"Blogger\";s:1:\"Y\";s:6:\"OpenID\";s:1:\"Y\";s:6:\"LiveID\";s:1:\"N\";}',NULL,NULL);
/*!40000 ALTER TABLE `b_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_option_site`
--

DROP TABLE IF EXISTS `b_option_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_option_site` (
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MODULE_ID`,`NAME`,`SITE_ID`),
  KEY `ix_option_site_module_site` (`MODULE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_option_site`
--

LOCK TABLES `b_option_site` WRITE;
/*!40000 ALTER TABLE `b_option_site` DISABLE KEYS */;
INSERT INTO `b_option_site` VALUES ('fileman','menutypes','s1','a:4:{s:4:\\\"left\\\";s:40:\\\"Левое меню (подуровни)\\\";s:3:\\\"top\\\";s:23:\\\"Верхнее меню\\\";s:6:\\\"bottom\\\";s:21:\\\"Нижнее меню\\\";s:9:\\\"leftfirst\\\";s:49:\\\"Левое меню (первый уровень)\\\";}'),('fileman','num_menu_param','s1','2'),('fileman','propstypes','s1','a:4:{s:11:\"description\";s:33:\"Описание страницы\";s:8:\"keywords\";s:27:\"Ключевые слова\";s:5:\"title\";s:44:\"Заголовок окна браузера\";s:14:\"keywords_inner\";s:35:\"Продвигаемые слова\";}'),('main','wizard_corp_services_theme_id','s1','green'),('main','wizard_site_logo','s1','0'),('main','wizard_solution','s1','corp_services'),('main','wizard_template_id','s1','corp_services');
/*!40000 ALTER TABLE `b_option_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_cache`
--

DROP TABLE IF EXISTS `b_perf_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_cache` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_SIZE` float DEFAULT NULL,
  `OP_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `BASE_DIR` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `INIT_DIR` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_PATH` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_CACHE_0` (`HIT_ID`,`NN`),
  KEY `IX_B_PERF_CACHE_1` (`COMPONENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_cache`
--

LOCK TABLES `b_perf_cache` WRITE;
/*!40000 ALTER TABLE `b_perf_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_cluster`
--

DROP TABLE IF EXISTS `b_perf_cluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_cluster` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `THREADS` int(11) DEFAULT NULL,
  `HITS` int(11) DEFAULT NULL,
  `ERRORS` int(11) DEFAULT NULL,
  `PAGES_PER_SECOND` float DEFAULT NULL,
  `PAGE_EXEC_TIME` float DEFAULT NULL,
  `PAGE_RESP_TIME` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_cluster`
--

LOCK TABLES `b_perf_cluster` WRITE;
/*!40000 ALTER TABLE `b_perf_cluster` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_cluster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_component`
--

DROP TABLE IF EXISTS `b_perf_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_component` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `COMPONENT_TIME` float DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_COMPONENT_0` (`HIT_ID`,`NN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_component`
--

LOCK TABLES `b_perf_component` WRITE;
/*!40000 ALTER TABLE `b_perf_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_error`
--

DROP TABLE IF EXISTS `b_perf_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_error` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `ERRNO` int(18) DEFAULT NULL,
  `ERRSTR` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERRFILE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERRLINE` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_ERROR_0` (`HIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_error`
--

LOCK TABLES `b_perf_error` WRITE;
/*!40000 ALTER TABLE `b_perf_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_history`
--

DROP TABLE IF EXISTS `b_perf_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_history` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `TOTAL_MARK` float DEFAULT NULL,
  `ACCELERATOR_ENABLED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_history`
--

LOCK TABLES `b_perf_history` WRITE;
/*!40000 ALTER TABLE `b_perf_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_hit`
--

DROP TABLE IF EXISTS `b_perf_hit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_hit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_HIT` datetime DEFAULT NULL,
  `IS_ADMIN` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_PORT` int(11) DEFAULT NULL,
  `SCRIPT_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `INCLUDED_FILES` int(11) DEFAULT NULL,
  `MEMORY_PEAK_USAGE` int(11) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENTS` int(11) DEFAULT NULL,
  `COMPONENTS_TIME` float DEFAULT NULL,
  `SQL_LOG` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_TIME` float DEFAULT NULL,
  `PROLOG_TIME` float DEFAULT NULL,
  `PROLOG_BEFORE_TIME` float DEFAULT NULL,
  `AGENTS_TIME` float DEFAULT NULL,
  `PROLOG_AFTER_TIME` float DEFAULT NULL,
  `WORK_AREA_TIME` float DEFAULT NULL,
  `EPILOG_TIME` float DEFAULT NULL,
  `EPILOG_BEFORE_TIME` float DEFAULT NULL,
  `EVENTS_TIME` float DEFAULT NULL,
  `EPILOG_AFTER_TIME` float DEFAULT NULL,
  `MENU_RECALC` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_HIT_0` (`DATE_HIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_hit`
--

LOCK TABLES `b_perf_hit` WRITE;
/*!40000 ALTER TABLE `b_perf_hit` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_hit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_ban`
--

DROP TABLE IF EXISTS `b_perf_index_ban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_ban` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BAN_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_ban`
--

LOCK TABLES `b_perf_index_ban` WRITE;
/*!40000 ALTER TABLE `b_perf_index_ban` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_ban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_complete`
--

DROP TABLE IF EXISTS `b_perf_index_complete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_complete` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BANNED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_index_complete_0` (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_complete`
--

LOCK TABLES `b_perf_index_complete` WRITE;
/*!40000 ALTER TABLE `b_perf_index_complete` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_complete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_suggest`
--

DROP TABLE IF EXISTS `b_perf_index_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_suggest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SQL_MD5` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_COUNT` int(11) DEFAULT NULL,
  `SQL_TIME` float DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ALIAS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_TEXT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_EXPLAIN` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_index_suggest_0` (`SQL_MD5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_suggest`
--

LOCK TABLES `b_perf_index_suggest` WRITE;
/*!40000 ALTER TABLE `b_perf_index_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_suggest_sql`
--

DROP TABLE IF EXISTS `b_perf_index_suggest_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_suggest_sql` (
  `SUGGEST_ID` int(11) NOT NULL,
  `SQL_ID` int(11) NOT NULL,
  PRIMARY KEY (`SUGGEST_ID`,`SQL_ID`),
  KEY `ix_b_perf_index_suggest_sql_0` (`SQL_ID`,`SUGGEST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_suggest_sql`
--

LOCK TABLES `b_perf_index_suggest_sql` WRITE;
/*!40000 ALTER TABLE `b_perf_index_suggest_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_suggest_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_sql`
--

DROP TABLE IF EXISTS `b_perf_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_sql` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `QUERY_TIME` float DEFAULT NULL,
  `NODE_ID` int(18) DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_TEXT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_SQL_0` (`HIT_ID`,`NN`),
  KEY `IX_B_PERF_SQL_1` (`COMPONENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_sql`
--

LOCK TABLES `b_perf_sql` WRITE;
/*!40000 ALTER TABLE `b_perf_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_sql_backtrace`
--

DROP TABLE IF EXISTS `b_perf_sql_backtrace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_sql_backtrace` (
  `SQL_ID` int(18) NOT NULL,
  `NN` int(18) NOT NULL,
  `FILE_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINE_NO` int(18) DEFAULT NULL,
  `CLASS_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FUNCTION_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SQL_ID`,`NN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_sql_backtrace`
--

LOCK TABLES `b_perf_sql_backtrace` WRITE;
/*!40000 ALTER TABLE `b_perf_sql_backtrace` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_sql_backtrace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_tab_column_stat`
--

DROP TABLE IF EXISTS `b_perf_tab_column_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_tab_column_stat` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  `COLUMN_ROWS` float DEFAULT NULL,
  `VALUE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_tab_column_stat` (`TABLE_NAME`,`COLUMN_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_tab_column_stat`
--

LOCK TABLES `b_perf_tab_column_stat` WRITE;
/*!40000 ALTER TABLE `b_perf_tab_column_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_tab_column_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_tab_stat`
--

DROP TABLE IF EXISTS `b_perf_tab_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_tab_stat` (
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TABLE_SIZE` float DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  PRIMARY KEY (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_tab_stat`
--

LOCK TABLES `b_perf_tab_stat` WRITE;
/*!40000 ALTER TABLE `b_perf_tab_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_tab_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_test`
--

DROP TABLE IF EXISTS `b_perf_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_test` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `REFERENCE_ID` int(18) DEFAULT NULL,
  `NAME` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_TEST_0` (`REFERENCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_test`
--

LOCK TABLES `b_perf_test` WRITE;
/*!40000 ALTER TABLE `b_perf_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating`
--

DROP TABLE IF EXISTS `b_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CALCULATION_METHOD` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SUM',
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `POSITION` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTHORITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `CALCULATED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONFIGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating`
--

LOCK TABLES `b_rating` WRITE;
/*!40000 ALTER TABLE `b_rating` DISABLE KEYS */;
INSERT INTO `b_rating` VALUES (1,'N','Рейтинг','USER','SUM','2020-04-13 14:41:37',NULL,NULL,'Y','N','N','a:3:{s:4:\"MAIN\";a:2:{s:4:\"VOTE\";a:1:{s:4:\"USER\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";a:2:{s:4:\"VOTE\";a:2:{s:5:\"TOPIC\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:16:\"TODAY_TOPIC_COEF\";s:3:\"0.4\";s:15:\"WEEK_TOPIC_COEF\";s:3:\"0.2\";s:16:\"MONTH_TOPIC_COEF\";s:3:\"0.1\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.2\";s:14:\"WEEK_POST_COEF\";s:3:\"0.1\";s:15:\"MONTH_POST_COEF\";s:4:\"0.05\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}}}s:4:\"BLOG\";a:2:{s:4:\"VOTE\";a:2:{s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}s:7:\"COMMENT\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}}}}'),(2,'N','Авторитет','USER','SUM','2020-04-13 14:41:37',NULL,NULL,'Y','Y','N','a:3:{s:4:\"MAIN\";a:2:{s:4:\"VOTE\";a:1:{s:4:\"USER\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:1:\"0\";}}s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";a:2:{s:4:\"VOTE\";a:2:{s:5:\"TOPIC\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}s:4:\"POST\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:8:{s:16:\"TODAY_TOPIC_COEF\";s:2:\"20\";s:15:\"WEEK_TOPIC_COEF\";s:2:\"10\";s:16:\"MONTH_TOPIC_COEF\";s:1:\"5\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}}}s:4:\"BLOG\";a:2:{s:4:\"VOTE\";a:2:{s:4:\"POST\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}s:7:\"COMMENT\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:8:{s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}}}}');
/*!40000 ALTER TABLE `b_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_component`
--

DROP TABLE IF EXISTS `b_rating_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_component` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CALC_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXCEPTION_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `NEXT_CALCULATION` datetime DEFAULT NULL,
  `REFRESH_INTERVAL` int(11) NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_ID_1` (`RATING_ID`,`ACTIVE`,`NEXT_CALCULATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_component`
--

LOCK TABLES `b_rating_component` WRITE;
/*!40000 ALTER TABLE `b_rating_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_component_results`
--

DROP TABLE IF EXISTS `b_rating_component_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_component_results` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY_TYPE_ID` (`ENTITY_TYPE_ID`),
  KEY `IX_COMPLEX_NAME` (`COMPLEX_NAME`),
  KEY `IX_RATING_ID_2` (`RATING_ID`,`COMPLEX_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_component_results`
--

LOCK TABLES `b_rating_component_results` WRITE;
/*!40000 ALTER TABLE `b_rating_component_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_component_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_prepare`
--

DROP TABLE IF EXISTS `b_rating_prepare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_prepare` (
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_prepare`
--

LOCK TABLES `b_rating_prepare` WRITE;
/*!40000 ALTER TABLE `b_rating_prepare` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_prepare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_results`
--

DROP TABLE IF EXISTS `b_rating_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_results` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  `PREVIOUS_VALUE` decimal(18,4) DEFAULT NULL,
  `CURRENT_POSITION` int(11) DEFAULT 0,
  `PREVIOUS_POSITION` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_3` (`RATING_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`),
  KEY `IX_RATING_4` (`RATING_ID`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_results`
--

LOCK TABLES `b_rating_results` WRITE;
/*!40000 ALTER TABLE `b_rating_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_rule`
--

DROP TABLE IF EXISTS `b_rating_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_rule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NAME` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_MODULE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONDITION_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_CONFIG` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION_CONFIG` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_APPLIED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_rule`
--

LOCK TABLES `b_rating_rule` WRITE;
/*!40000 ALTER TABLE `b_rating_rule` DISABLE KEYS */;
INSERT INTO `b_rating_rule` VALUES (1,'N','Добавление в группу пользователей, имеющих право голосовать за рейтинг','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:1;}}','ADD_TO_GROUP','a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}','N','CRatingRulesMain','addToGroup','N','CRatingRulesMain ','addToGroup','2020-04-13 14:41:38','2020-04-13 14:41:38',NULL),(2,'N','Удаление из группы пользователей, не имеющих права голосовать за рейтинг','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:1;}}','REMOVE_FROM_GROUP','a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}','N','CRatingRulesMain','removeFromGroup','N','CRatingRulesMain ','removeFromGroup','2020-04-13 14:41:39','2020-04-13 14:41:39',NULL),(3,'N','Добавление в группу пользователей, имеющих право голосовать за авторитет','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:2;}}','ADD_TO_GROUP','a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}','N','CRatingRulesMain','addToGroup','N','CRatingRulesMain ','addToGroup','2020-04-13 14:41:40','2020-04-13 14:41:40',NULL),(4,'N','Удаление из группы пользователей, не имеющих права голосовать за авторитет','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:2;}}','REMOVE_FROM_GROUP','a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}','N','CRatingRulesMain','removeFromGroup','N','CRatingRulesMain ','removeFromGroup','2020-04-13 14:41:40','2020-04-13 14:41:40',NULL),(5,'Y','Автоматическое голосование за авторитет пользователя','USER','VOTE',NULL,'CRatingRulesMain','voteCheck','a:1:{s:4:\"VOTE\";a:6:{s:10:\"VOTE_LIMIT\";i:90;s:11:\"VOTE_RESULT\";i:10;s:16:\"VOTE_FORUM_TOPIC\";d:0.5;s:15:\"VOTE_FORUM_POST\";d:0.1;s:14:\"VOTE_BLOG_POST\";d:0.5;s:17:\"VOTE_BLOG_COMMENT\";d:0.1;}}','empty','a:0:{}','N','empty','empty','N','empty ','empty','2020-04-13 14:41:41','2020-04-13 14:41:41',NULL);
/*!40000 ALTER TABLE `b_rating_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_rule_vetting`
--

DROP TABLE IF EXISTS `b_rating_rule_vetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_rule_vetting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RULE_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `RULE_ID` (`RULE_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_rule_vetting`
--

LOCK TABLES `b_rating_rule_vetting` WRITE;
/*!40000 ALTER TABLE `b_rating_rule_vetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_rule_vetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_user`
--

DROP TABLE IF EXISTS `b_rating_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `BONUS` decimal(18,4) DEFAULT 0.0000,
  `VOTE_WEIGHT` decimal(18,4) DEFAULT 0.0000,
  `VOTE_COUNT` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `RATING_ID` (`RATING_ID`,`ENTITY_ID`),
  KEY `IX_B_RAT_USER_2` (`ENTITY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_user`
--

LOCK TABLES `b_rating_user` WRITE;
/*!40000 ALTER TABLE `b_rating_user` DISABLE KEYS */;
INSERT INTO `b_rating_user` VALUES (1,2,1,3.0000,30.0000,13);
/*!40000 ALTER TABLE `b_rating_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_vote`
--

DROP TABLE IF EXISTS `b_rating_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_vote` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `VALUE` decimal(18,4) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_IP` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `REACTION` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RAT_VOTE_ID` (`RATING_VOTING_ID`,`USER_ID`),
  KEY `IX_RAT_VOTE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`USER_ID`),
  KEY `IX_RAT_VOTE_ID_3` (`OWNER_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_4` (`USER_ID`),
  KEY `IX_RAT_VOTE_ID_5` (`CREATED`,`VALUE`),
  KEY `IX_RAT_VOTE_ID_6` (`ACTIVE`),
  KEY `IX_RAT_VOTE_ID_7` (`RATING_VOTING_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_8` (`ENTITY_TYPE_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_9` (`CREATED`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_vote`
--

LOCK TABLES `b_rating_vote` WRITE;
/*!40000 ALTER TABLE `b_rating_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_vote_group`
--

DROP TABLE IF EXISTS `b_rating_vote_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_vote_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_ID` int(11) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `RATING_ID` (`GROUP_ID`,`TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_vote_group`
--

LOCK TABLES `b_rating_vote_group` WRITE;
/*!40000 ALTER TABLE `b_rating_vote_group` DISABLE KEYS */;
INSERT INTO `b_rating_vote_group` VALUES (5,1,'A'),(1,1,'R'),(3,1,'R'),(2,3,'R'),(4,3,'R'),(6,4,'A');
/*!40000 ALTER TABLE `b_rating_vote_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_voting`
--

DROP TABLE IF EXISTS `b_rating_voting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_voting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY_TYPE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`ACTIVE`),
  KEY `IX_ENTITY_TYPE_ID_4` (`TOTAL_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_voting`
--

LOCK TABLES `b_rating_voting` WRITE;
/*!40000 ALTER TABLE `b_rating_voting` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_voting_prepare`
--

DROP TABLE IF EXISTS `b_rating_voting_prepare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_voting_prepare` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_VOTING_ID` (`RATING_VOTING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_voting_prepare`
--

LOCK TABLES `b_rating_voting_prepare` WRITE;
/*!40000 ALTER TABLE `b_rating_voting_prepare` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting_prepare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_voting_reaction`
--

DROP TABLE IF EXISTS `b_rating_voting_reaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_voting_reaction` (
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `REACTION` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TOTAL_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ENTITY_TYPE_ID`,`ENTITY_ID`,`REACTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_voting_reaction`
--

LOCK TABLES `b_rating_voting_reaction` WRITE;
/*!40000 ALTER TABLE `b_rating_voting_reaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting_reaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_weight`
--

DROP TABLE IF EXISTS `b_rating_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_weight` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_FROM` decimal(18,4) NOT NULL,
  `RATING_TO` decimal(18,4) NOT NULL,
  `WEIGHT` decimal(18,4) DEFAULT 0.0000,
  `COUNT` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_weight`
--

LOCK TABLES `b_rating_weight` WRITE;
/*!40000 ALTER TABLE `b_rating_weight` DISABLE KEYS */;
INSERT INTO `b_rating_weight` VALUES (1,-1000000.0000,1000000.0000,1.0000,10);
/*!40000 ALTER TABLE `b_rating_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_ap`
--

DROP TABLE IF EXISTS `b_rest_ap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_ap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_rest_ap` (`USER_ID`,`PASSWORD`,`ACTIVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_ap`
--

LOCK TABLES `b_rest_ap` WRITE;
/*!40000 ALTER TABLE `b_rest_ap` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_ap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_ap_permission`
--

DROP TABLE IF EXISTS `b_rest_ap_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_ap_permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PASSWORD_ID` int(11) NOT NULL,
  `PERM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_ap_perm1` (`PASSWORD_ID`,`PERM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_ap_permission`
--

LOCK TABLES `b_rest_ap_permission` WRITE;
/*!40000 ALTER TABLE `b_rest_ap_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_ap_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_app`
--

DROP TABLE IF EXISTS `b_rest_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_app` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLIENT_ID` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `INSTALLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `URL` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `URL_DEMO` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_INSTALL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` varchar(4) COLLATE utf8_unicode_ci DEFAULT '1',
  `SCOPE` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'F',
  `DATE_FINISH` date DEFAULT NULL,
  `IS_TRIALED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `SHARED_KEY` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_NAME` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT '',
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `MOBILE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `USER_INSTALL` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_app1` (`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_app`
--

LOCK TABLES `b_rest_app` WRITE;
/*!40000 ALTER TABLE `b_rest_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_app_lang`
--

DROP TABLE IF EXISTS `b_rest_app_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_app_lang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MENU_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_app_lang1` (`APP_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_app_lang`
--

LOCK TABLES `b_rest_app_lang` WRITE;
/*!40000 ALTER TABLE `b_rest_app_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_app_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_app_log`
--

DROP TABLE IF EXISTS `b_rest_app_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_app_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp(),
  `APP_ID` int(11) NOT NULL,
  `ACTION_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_ADMIN` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_b_rest_app_log1` (`APP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_app_log`
--

LOCK TABLES `b_rest_app_log` WRITE;
/*!40000 ALTER TABLE `b_rest_app_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_app_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_event`
--

DROP TABLE IF EXISTS `b_rest_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_event` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(11) DEFAULT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) DEFAULT 0,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `CONNECTOR_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_event_app_event` (`APP_ID`,`EVENT_NAME`(50),`EVENT_HANDLER`(180),`USER_ID`,`CONNECTOR_ID`(70)),
  KEY `ix_b_rest_event_event_name` (`EVENT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_event`
--

LOCK TABLES `b_rest_event` WRITE;
/*!40000 ALTER TABLE `b_rest_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_event_offline`
--

DROP TABLE IF EXISTS `b_rest_event_offline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_event_offline` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT current_timestamp(),
  `MESSAGE_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_DATA` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `EVENT_ADDITIONAL` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROCESS_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `CONNECTOR_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `ERROR` int(3) DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_event_offline1` (`MESSAGE_ID`(50),`APP_ID`,`CONNECTOR_ID`(100),`PROCESS_ID`(50)),
  KEY `ix_b_rest_event_offline2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_event_offline`
--

LOCK TABLES `b_rest_event_offline` WRITE;
/*!40000 ALTER TABLE `b_rest_event_offline` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_event_offline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_log`
--

DROP TABLE IF EXISTS `b_rest_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp(),
  `CLIENT_ID` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD_ID` int(11) DEFAULT NULL,
  `SCOPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_AUTH` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_DATA` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPONSE_STATUS` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPONSE_DATA` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_log`
--

LOCK TABLES `b_rest_log` WRITE;
/*!40000 ALTER TABLE `b_rest_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_placement`
--

DROP TABLE IF EXISTS `b_rest_placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_placement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(11) DEFAULT NULL,
  `PLACEMENT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PLACEMENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `GROUP_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `ADDITIONAL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_placement1` (`APP_ID`,`PLACEMENT`(100),`PLACEMENT_HANDLER`(200)),
  KEY `ix_b_rest_placement3` (`PLACEMENT`(100),`ADDITIONAL`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_placement`
--

LOCK TABLES `b_rest_placement` WRITE;
/*!40000 ALTER TABLE `b_rest_placement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_placement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_stat`
--

DROP TABLE IF EXISTS `b_rest_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_stat` (
  `STAT_DATE` date NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `METHOD_ID` int(11) NOT NULL,
  `HOUR_0` int(11) NOT NULL DEFAULT 0,
  `HOUR_1` int(11) NOT NULL DEFAULT 0,
  `HOUR_2` int(11) NOT NULL DEFAULT 0,
  `HOUR_3` int(11) NOT NULL DEFAULT 0,
  `HOUR_4` int(11) NOT NULL DEFAULT 0,
  `HOUR_5` int(11) NOT NULL DEFAULT 0,
  `HOUR_6` int(11) NOT NULL DEFAULT 0,
  `HOUR_7` int(11) NOT NULL DEFAULT 0,
  `HOUR_8` int(11) NOT NULL DEFAULT 0,
  `HOUR_9` int(11) NOT NULL DEFAULT 0,
  `HOUR_10` int(11) NOT NULL DEFAULT 0,
  `HOUR_11` int(11) NOT NULL DEFAULT 0,
  `HOUR_12` int(11) NOT NULL DEFAULT 0,
  `HOUR_13` int(11) NOT NULL DEFAULT 0,
  `HOUR_14` int(11) NOT NULL DEFAULT 0,
  `HOUR_15` int(11) NOT NULL DEFAULT 0,
  `HOUR_16` int(11) NOT NULL DEFAULT 0,
  `HOUR_17` int(11) NOT NULL DEFAULT 0,
  `HOUR_18` int(11) NOT NULL DEFAULT 0,
  `HOUR_19` int(11) NOT NULL DEFAULT 0,
  `HOUR_20` int(11) NOT NULL DEFAULT 0,
  `HOUR_21` int(11) NOT NULL DEFAULT 0,
  `HOUR_22` int(11) NOT NULL DEFAULT 0,
  `HOUR_23` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`APP_ID`,`STAT_DATE`,`METHOD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_stat`
--

LOCK TABLES `b_rest_stat` WRITE;
/*!40000 ALTER TABLE `b_rest_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_stat_app`
--

DROP TABLE IF EXISTS `b_rest_stat_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_stat_app` (
  `APP_ID` int(11) NOT NULL,
  `APP_CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`APP_ID`),
  KEY `ix_b_rest_stat_app_code` (`APP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_stat_app`
--

LOCK TABLES `b_rest_stat_app` WRITE;
/*!40000 ALTER TABLE `b_rest_stat_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_stat_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_stat_method`
--

DROP TABLE IF EXISTS `b_rest_stat_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_stat_method` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `METHOD_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT 'M',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_stat_method` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_stat_method`
--

LOCK TABLES `b_rest_stat_method` WRITE;
/*!40000 ALTER TABLE `b_rest_stat_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_stat_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_usage_entity`
--

DROP TABLE IF EXISTS `b_rest_usage_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_usage_entity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ENTITY_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUB_ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUB_ENTITY_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_b_rest_usage_entity` (`ENTITY_TYPE`,`ENTITY_ID`,`SUB_ENTITY_TYPE`,`SUB_ENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_usage_entity`
--

LOCK TABLES `b_rest_usage_entity` WRITE;
/*!40000 ALTER TABLE `b_rest_usage_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_usage_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_usage_stat`
--

DROP TABLE IF EXISTS `b_rest_usage_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_usage_stat` (
  `STAT_DATE` date NOT NULL,
  `ENTITY_ID` int(11) NOT NULL DEFAULT 0,
  `IS_SENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `HOUR_0` int(11) NOT NULL DEFAULT 0,
  `HOUR_1` int(11) NOT NULL DEFAULT 0,
  `HOUR_2` int(11) NOT NULL DEFAULT 0,
  `HOUR_3` int(11) NOT NULL DEFAULT 0,
  `HOUR_4` int(11) NOT NULL DEFAULT 0,
  `HOUR_5` int(11) NOT NULL DEFAULT 0,
  `HOUR_6` int(11) NOT NULL DEFAULT 0,
  `HOUR_7` int(11) NOT NULL DEFAULT 0,
  `HOUR_8` int(11) NOT NULL DEFAULT 0,
  `HOUR_9` int(11) NOT NULL DEFAULT 0,
  `HOUR_10` int(11) NOT NULL DEFAULT 0,
  `HOUR_11` int(11) NOT NULL DEFAULT 0,
  `HOUR_12` int(11) NOT NULL DEFAULT 0,
  `HOUR_13` int(11) NOT NULL DEFAULT 0,
  `HOUR_14` int(11) NOT NULL DEFAULT 0,
  `HOUR_15` int(11) NOT NULL DEFAULT 0,
  `HOUR_16` int(11) NOT NULL DEFAULT 0,
  `HOUR_17` int(11) NOT NULL DEFAULT 0,
  `HOUR_18` int(11) NOT NULL DEFAULT 0,
  `HOUR_19` int(11) NOT NULL DEFAULT 0,
  `HOUR_20` int(11) NOT NULL DEFAULT 0,
  `HOUR_21` int(11) NOT NULL DEFAULT 0,
  `HOUR_22` int(11) NOT NULL DEFAULT 0,
  `HOUR_23` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`STAT_DATE`,`ENTITY_ID`),
  KEY `ix_b_rest_usage` (`ENTITY_ID`,`STAT_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_usage_stat`
--

LOCK TABLES `b_rest_usage_stat` WRITE;
/*!40000 ALTER TABLE `b_rest_usage_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_usage_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content`
--

DROP TABLE IF EXISTS `b_search_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_CHANGE` datetime NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CUSTOM_RANK` int(11) NOT NULL DEFAULT 0,
  `USER_ID` int(11) DEFAULT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENTITY_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITLE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `BODY` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPD` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_FROM` datetime DEFAULT NULL,
  `DATE_TO` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_B_SEARCH_CONTENT` (`MODULE_ID`,`ITEM_ID`),
  KEY `IX_B_SEARCH_CONTENT_1` (`MODULE_ID`,`PARAM1`(50),`PARAM2`(50)),
  KEY `IX_B_SEARCH_CONTENT_2` (`ENTITY_ID`(50),`ENTITY_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content`
--

LOCK TABLES `b_search_content` WRITE;
/*!40000 ALTER TABLE `b_search_content` DISABLE KEYS */;
INSERT INTO `b_search_content` VALUES (1,'2020-04-13 19:57:21','main','s1|/_index.php',0,NULL,NULL,NULL,'/_index.php','Новости банка','','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(2,'2020-04-13 19:57:21','main','s1|/about/history.php',0,NULL,NULL,NULL,'/about/history.php','История компании','ЗАО «Банк» основан 18 января 1993 года.\rДо 1996 года Банк развивался как небольшой коммерческий банк.\r1996 год. Открывается первый дополнительный офис по работе с населением. Банк приступает к активному развитию филиальной сети. \r1997 год. Банк начинает выпуск и обслуживание пластиковых карт, использование которых позволяет вынести финансовый сервис за пределы привычных операционных залов банка и филиалов на места фактического востребования услуг.\rЯнварь 1998 года. Банк получает лицензию профессионального участника рынка ценных бумаг. По результатам анализа бухгалтерской и финансовой отчётности Банк относится по критериям ЦБ РФ к первой категории – финансово стабильные банки.\r1999 год. Банк, успешно преодолев кризис, продолжает активное развитие филиальной сети. В этом же году Банк приступает к реализации программы ипотечного кредитования муниципальных служащих.\r2004год. Банк приступает к выпуску карт платёжной системы Visa International. В течение 2004 года банк представил клиентам ряд высокотехнологичных продуктов. В области кредитования физических лиц – систему Интернет-кредитования на приобретение автомобилей, обучение в вузе, отдых и туризм. \r2006 год. Десять лет с начала работы Банка в области предоставления финансовых услуг населению. За это время в банке взяли кредит более 50 000 человек, более 200 000 человек доверили свои деньги, сделав вклады, более 50 000 человек стали держателями пластиковых карт Банка.\r2007 год. Банк получает Главную Всероссийскую Премию «Российский Национальный Олимп» в числе лучших предприятий малого и среднего бизнеса России.\r2008 год. По результатам Международного конкурса \"Золотая медаль \"Европейское качество\", проведенного Международной академией Качества и Маркетинга\" и Ассоциацией качественной продукции Банк становится Лауреатом международной награды \"Золотая Медаль \"Европейское качество\".\r2009 год. Переход на новую автоматизированную банковскую систему iBank System Российской компании «МКТ».\r2010 год. По данным финансовой отчётности на 1 января 2010 года Банк завершает 2009 год с положительными результатами. Размер прибыли за 2009 год составляет 95 149 тыс. рублей. Положительную динамику роста показывают почти все финансовые показатели.Уставный капитал банка увеличивается на 20 % и на данный момент составляет 415 240 тысяч рублей.Размер собственного капитала банка составляет 1 535 522 тысячи рублей, что на 31 % больше чем в прошлом году. \rЧасть дохода за 2009 год Банк направляет на формирование резерва на возможные потери по ссудам, ссудной и приравненной к ней задолженности. Объём такого резерва по состоянию на 1 февраля 2010 года составляет порядка 650 млн. рублей.\rСвое дальнейшее развитие Банк связывает с повышением качества и наращиванием объемов услуг, собственного капитала, внедрением новейших технологий, совершенствованием форм обслуживания клиентов и развитием новых перспективных направлений в работе.','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(3,'2020-04-13 19:57:21','main','s1|/about/index.php',0,NULL,NULL,NULL,'/about/index.php','Информация о компании','&laquo;Банк&raquo;\r&mdash; один из крупнейших участников российского рынка банковских услуг. Банк работает в России с 1997 года и на сегодняшний день осуществляет все основные виды банковских операций, представленных на рынке финансовых услуг. Сеть банка формируют 490 филиалов и дополнительных офисов в 70 регионах страны. Мы предлагаем клиентам основные банковские продукты, принятые в международной финансовой практике.\nЗАО &laquo;Банк&raquo; занимает 7-е место по размеру активов по результатам 2009 года. Банк находится на 5-м месте в России по объему частных депозитов и на 4-м месте по объему кредитов для частных лиц по результатам 2009 года. 									\r&laquo;Банк&raquo;\rявляется универсальным банком и оказывает полный спектр услуг, включая обслуживание частных и корпоративных клиентов, инвестиционный банковский бизнес, торговое финансирование и управление активами.\rВ числе предоставляемых услуг: 									\nвыпуск банковских карт;\rипотечное и потребительское кредитование;\rавтокредитование;\rуслуги дистанционного управления счетами;\rкредитные карты с льготным периодом;\rсрочные вклады, аренда сейфовых ячеек;\rденежные переводы.\rЧасть услуг доступна нашим клиентам в круглосуточном режиме, для чего используются современные телекоммуникационные технологии.\r&laquo;Банк&raquo;\rявляется одним из самых надежных банков нашей страны. Основными ценностями, которыми мы руководствуемся в своей деятельности являются \rсправедливость\r,\rпрозрачность\r, \rуважение\r, \rсотрудничество\r,\rсвобода\rи\rдоверие\r. Одной из главных задач \r&laquo;Банк&raquo;\rвидит поддержание и совершенствование развитой финансовой системы России.\rВ качестве одного из приоритетных направлений культурно-просветительской деятельности \r&laquo;Банк&raquo;\rосуществляет поддержку национального. При нашем содействии Россию посетили многие всемирно известные зарубежные музыканты, в регионах России ежегодно проходят театральные фестивали, концерты и многочисленные выставки.','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(4,'2020-04-13 19:57:21','main','s1|/about/management/index.php',0,NULL,NULL,NULL,'/about/management/index.php','Руководство','Коллегиальный исполнительный орган правления Банка\rДолжность\rОбразование\rПлешков Юрий Григорьевич \rНачальник экономического управления \rВ 1996 году окончил Иркутскую государственную экономическую академию по специальности &laquo;Финансы и кредит&raquo; \rСмирнов Вячеслав Евгеньевич \rЗаместитель Председателя Правления \rВ 1991 году окончил Университет Дружбы народов (Москва). В 2000 году получил степень MBA в бизнес-школе INSEAD. \rКорнева Ирина Станиславовна \rЗаместитель Председателя Правления \rВ 1997 году окончила Московскую государственную юридическую академию по специальности «Банковское дело» \rИгнатьев Вадим Михайлович \rПервый заместитель Председателя Правления \rВ 1988 году окончил Иркутскую государственную экономическую академию по специальности «Экономика и управление производством» \rВолошин Станислав Семенович \rПредседатель Правления \rВ 1986 году окончил Свердловский юридический институт по специальности «Правоведение» и Московский индустриальный институт по специальности «Экономика и управление на предприятии» \rСписок членов Совета директоров банка\rДолжность\rОбразование\rМихайлова Татьяна Васильевна \rДиректор по финансам \rВ 1996 году окончила Российскую экономическую академию им. Г.В. Плеханова по специальности «банковское дело». \rЛях Евгений Викторович \rДиректор по обеспечению банковской деятельности \rВ 1993 году окончил Российскую экономическую академию им. Плеханова, по специальности МВА «стратегический менеджмент». \rКондрусев Роман Александрович \rДиректор казначейства \rВ 1993 году окончил Кемеровский государственный университет по специальности «Правоведение» \rХрамов Анатолий Фёдорович \rДиректор по работе с персоналом \rВ 1996 году окончил Государственный университет управления по специализации «Управление персоналом». В 2002 прошел программу повышения квалификации «Современные технологии управления человеческими ресурсами» \rЖуравлева Ольга Николаевна \rГлавный бухгалтер \rВ 1985 году окончила Санкт-петербургский институт народного хозяйства по специальности «Бухгалтерский учет» \rКалинин Андрей Геннадьевич \rДиректор департамента корпоративного бизнеса \rВ 1998 году закончил Московский государственный институт международных отношений, в 2002 &ndash; Школу Менеджмента Университета Антверпена (UAMS) по специальности MBA.','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(5,'2020-04-13 19:57:21','main','s1|/about/mission.php',0,NULL,NULL,NULL,'/about/mission.php','Миссия','Миссия Банка - предоставлять каждому клиенту максимально возможный набор банковских услуг высокого качества и надежности,следуя\rмировым стандартам и принципам корпоративной этики. Наш Банк - это современный высокотехнологичный банк,сочетающий\rв себе новейшие технологии оказания услуг и лучшие традиции банковского сообщества и российского предпринимательства.\rИндивидуальный подход\rНаша цель — предоставление каждому клиенту полного комплекса современных банковских продуктов и услуг с использованием последних достижений и инноваций в сфере финансовых технологий. Индивидуальный подход к ситуации и проблематике каждого клиента и философия партнерства - основы взаимодействия с нашими клиентами.\rУниверсальность\rБанк обеспечивает своим клиентам — частным лицам, крупнейшим отраслевым компаниям, предприятиям среднего и малого бизнеса, государственным структурам — широкий спектр услуг. Чтобы максимально полно обеспечить потребности клиентов, мы активно развиваем филиальную сеть в России и за ее пределами. Это позволяет нашим клиентам всегда и везде получать современные банковские услуги на уровне мировых стандартов.\rБанк — надежный партнер при реализации крупных социально-экономических проектов России и является одним из лидеров на рынке инвестиционного обеспечения региональных программ.\rПартнерство и помощь в развитии бизнеса\rВ своей деятельности мы опираемся на высочайшие стандарты предоставления финансовых услуг и тщательный анализ рынка.\rПредлагая адресные решения и соблюдая конфиденциальность взаимоотношений с партнерами, Банк проявляет гибкий подход к запросам клиентов, как розничных, так и корпоративных. Внедряя передовые технологии и инновационные решения, Банк гарантирует клиентам высокое качество обслуживания и стабильный доход.\rМы честны и открыты по отношению ко всем нашим партнерам и стремимся быть примером надежности и эффективности для всех, кто с нами сотрудничает.\rСоциальная ответственность\rБанк ориентирован на поддержку социально-экономического развития клиентов. Мы вносим вклад в повышение благосостояния общества, предоставляя нашим клиентам первоклассные экономические возможности, а также реализуя экологические программы, образовательные и культурные проекты. Банк оказывает благотворительную помощь социально незащищенным слоям общества, учреждениям медицины, образования и культуры, спортивным и религиозным организациям в регионах России. \rНаш Банк — это банк, работающий на благо общества, cтраны и каждого ее жителя.','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(6,'2020-04-13 19:57:21','main','s1|/about/vacancies.php',0,NULL,NULL,NULL,'/about/vacancies.php','Вакансии','','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(7,'2020-04-13 19:57:21','main','s1|/auth.php',0,NULL,NULL,NULL,'/auth.php','Авторизация','Вы зарегистрированы и успешно авторизовались.\rИспользуйте административную панель в верхней части экрана для быстрого доступа к функциям управления структурой и информационным наполнением сайта. Набор кнопок верхней панели отличается для различных разделов сайта. Так отдельные наборы действий предусмотрены для управления статическим содержимым страниц, динамическими публикациями (новостями, каталогом, фотогалереей) и т.п.\rВернуться на главную страницу','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(8,'2020-04-13 19:57:21','main','s1|/contacts/feedback.php',0,NULL,NULL,NULL,'/contacts/feedback.php','Задать вопрос','','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(9,'2020-04-13 19:57:21','main','s1|/contacts/index.php',0,NULL,NULL,NULL,'/contacts/index.php','Контактная информация','Обратитесь к нашим специалистам и получите профессиональную консультацию по услугам нашего банка.\rВы можете обратиться к нам по телефону, по электронной почте или договориться о встрече в нашем офисе. Будем рады помочь вам и ответить на все ваши вопросы. \rТелефоны\rТелефон/факс: \n(495) 212-85-06\rТелефоны: \n(495) 212-85-07\r(495) 212-85-08\rНаш офис в Москве','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(10,'2020-04-13 19:57:21','main','s1|/contacts/requisites.php',0,NULL,NULL,NULL,'/contacts/requisites.php','Наши реквизиты','Наименование Банка\rЗакрытое акционерное общество \"Название банка\"\rСокращенное название\rЗАО \"Название банка\"\rПолное наименование на английском языке\r\"The Name of Bank\"\rОсновной государственный регистрационный номер\r152073950937987\rTelex\r911156 IRS RU\rS.W.I.F.T.\rIISARUMM\rSPRINT\rRU.BANK/BITEX\rЮридический адрес: \r175089, Россия, г. Москва, ул. Большая Дмитровка, д. 15, стр. 1\rКор/счет: \r30102810000000000569\rИНН:\r7860249880\rБИК:\r044591488\rОКПО:\r11806935\rОКОНХ:\r98122\rКПП:\r775021017\rПрочая информация\rБанковский идентификационный код: 0575249000\rПочтовый адрес: 115035, Россия, г. Москва, ул. Балчуг, д. 2\rТелефон: (495) 960-10-12\rФакс: (495) 240-38-12\rE-mail: \rRusBk@mail.rusbank.ru','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(11,'2020-04-13 19:57:21','main','s1|/news/index.php',0,NULL,NULL,NULL,'/news/index.php','Новости компании','','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(12,'2020-04-13 19:57:21','main','s1|/search/index.php',0,NULL,NULL,NULL,'/search/index.php','Поиск','','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(13,'2020-04-13 19:57:21','main','s1|/search/map.php',0,NULL,NULL,NULL,'/search/map.php','Карта сайта','','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(14,'2020-04-13 19:57:21','main','s1|/services/corp/ibank.php',0,NULL,NULL,NULL,'/services/corp/ibank.php','Интернет-банкинг','\"Интернет-Банк\" — это полнофункциональная, удобная и безопасная система дистанционного банковского обслуживания, с ее помощью вы можете в полном объеме управлять банковскими счетами в режиме реального времени. Понятный для клиента интерфейс позволяет не тратить время на обучение работе с Системой. Система снабжена внутренними подсказками.\r\"Интернет-Банк\" позволяет:\rчерез сайт Банка в Интернете получить доступ к Вашим банковским счетам практически с любого компьютера в любой точке земного шара, где есть доступ в Интернет \rвводить, редактировать и печатать платежные документы \rподписывать каждый платежный документ персонифицированной электронной-цифровой подписью \rнаправлять документы в Банк на исполнение \r«визировать» направляемые в Банк платежные документы уполномоченным лицом \rполучать выписки со всеми приложениями по счетам за определенный период времени \rосуществлять покупку/продажу иностранной валюты, конвертацию валют в режиме on-line по текущему рыночному курсу \rрезервировать на счете временно свободные денежные средства и получать дополнительный доход в виде начисленных процентов \rотслеживать текущее состояние счетов\rполучать актуальную информацию о платежах контрагентов из других банков, которые зачисляются на счет Клиента в момент поступления в Банк \rнаправлять в Банк бухгалтерскую отчетность в электронном виде \rконтролировать состояние ссудных счетов, погашение и уплату процентов \rПодключение к Системе, в том числе генерация ключей для формирования электронно-цифровой подписи, бесплатно. Абонентская плата за обслуживание не взимается.\rТехнические требования\rДля полноценной работы с Системой необходим компьютер с ОС Windows ,не ниже Windows 2000; Программа просмотра Интернет-страниц Internet Explorer версии не ниже 6.0; Приложение Java Runtime Environment (JRE) Version 1.5.0','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(15,'2020-04-13 19:57:21','main','s1|/services/corp/incass.php',0,NULL,NULL,NULL,'/services/corp/incass.php','Инкассация','Инкассация\r– доставка ценностей и денежных средств.\rБанк предлагает воспользоваться услугами службы инкассации. Служба инкассации Банка обеспечит:\rинкассацию наличных денежных средств, доставку их на специально оборудованном транспорте в Банк, по согласованному с Клиентом, графику работы;\rсопровождение ценностей и денежных средств Клиента по маршруту, указанному Клиентом; \rдоставку наличных денежных средств Клиенту; \rдоставку Клиенту разменной монеты.\rУслуги предоставляются как собственной службой инкассации, так и через другие специализированные организации.\rНеобходимая документация:\rДоговор на сбор (инкассацию) денежной выручки и доставку разменной монеты;\rЗаявка на инкассацию;\rПредварительная заявка на оказание услуг по доставке денежной наличности;\rДоговор на оказание услуг по доставке наличных денежных средств.\rОбъем инкассируемых денежных средств\rТарифы по ставке процента от объема инкассации\rТарифы от количества выездов\rТарифы с фиксированной стоимостью\rдо 0,5 млн. руб.\r0,45%\rот 120 руб/заезд\rНе менее 2500 руб. в месяц\rот 0,5 до 1,0 млн. руб.\r0,4 - 0,35%\rот 140 руб/заезд\rНе менее 3500 руб. в месяц\rот 1,0 до 1,5 млн. руб.\r0,35 -0,3%\rот 160 руб/заезд\rНе менее 4500 руб. в месяц\rот 1,5 до 2,0 млн. руб.\r0,3 -0,25%\rот 180 руб/заезд\rНе менее 5000 руб. в месяц\rот 2,0 млн до 3,0 млн. руб.\r0,25 - 0,2 %\rот 200 руб/заезд\rНе менее 6000 руб. в месяц\rот 4,0 млн. до 6 млн. руб.\r0,2 -0,15%\rот 220 руб/заезд\rНе менее 7000 руб. в месяц\rот 6,0 млн. до 10 млн. руб.\r0,15 -0,1 %\rот 240 руб/заезд\rНе менее 8000 руб. в месяц\rсвыше 10 млн. руб.\r0,1 - 0,05%\rот 260 руб/заезд\rНе менее 9000 руб. в месяц\rДругие условия\rИнкассация 5-10 торговых точек клиента\rплюс 5 % от тарифной ставки за каждую последующую точку\rИнкассация свыше 10 торговых точек клиента\rплюс 10 % от тарифной ставки за каждую последующую точку\rВремя инкассации устанавливает клиент\rплюс 10 % от тарифной ставки\rНочная инкассация (с 22:00)\rплюс 20% от тарифной ставки\rУтренняя инкассация для зачисления в 1ой половине дня\rбесплатно\rЕсли сдают на одном объекте несколько юридических лиц\rбесплатно\rДоставка разменной монеты\r0,4 % от суммы доставки\rРасходный материал\rбесплатно\rХранение денежных средств в ночное время, праздничные и выходные\rбесплатно\rЗагрузка банкоматов, подкрепление дополнительных офисов\rот 350 руб/час\rДоставка денежных средств из банка Клиенту\r0,5 % от суммы, либо по соглашению сторон','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(16,'2020-04-13 19:57:21','main','s1|/services/corp/index.php',0,NULL,NULL,NULL,'/services/corp/index.php','Корпоративным клиентам','Банк является одним из лидеров банковского рынка по обслуживанию корпоративных клиентов. \rКомплексное банковское обслуживание на основе максимального использования конкурентных преимуществ и возможностей Банка позволяет создать устойчивую \rфинансовую платформу для развития бизнеса предприятий и холдингов различных отраслей экономики. Уже более 15 лет Банк работает для своих клиентов, \rявляясь образцом надежности и высокого профессионализма.\rНаш Банк предлагает корпоративным клиентам следующие виды услуг:\rРасчетно-кассовое обслуживание\rИнкассация\rИнтернет-банкинг','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(17,'2020-04-13 19:57:21','main','s1|/services/corp/rko.php',0,NULL,NULL,NULL,'/services/corp/rko.php','Расчетно-кассовое обслуживание','Во всех странах мира самой распространенной функцией банков являются расчеты. Большинство оказываемых банком услуг связаны с быстрым и качественным проведением расчетных операций. Каждый клиент, независимо от вида осуществляемых в Банке операций, пользуется переводом средств.\rКорпоративным клиентам Банк оказывает следующие услуги:\rоткрытие и ведение счетов юридических лиц - резидентов и нерезидентов Российской Федерации — в валюте РФ и иностранной валюте; \rвсе виды расчетов в рублях и иностранной валюте; \rкассовое обслуживание в рублях и иностранной валюте; \rускоренные платежи по России по системе межрегиональных электронных платежей; \rплатежи в любую страну мира в кратчайшие сроки \rпроведение конверсионных операций по счетам Клиентов \rинкассация и доставка наличных денег и ценностей \rраспоряжение счетом посредством системы «Интернет-Банк» \rОперационный день в Банке установлен: ежедневно с 09.00 до 16.00, в пятницу и предпраздничные дни с 09.00 до 15.00.\rКассовое обслуживание осуществляется на договорной основе, плата взимается по факту совершения каждой операции в соответствии с утвержденными Банком Тарифами за услуги корпоративным клиентам.','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(18,'2020-04-13 19:57:21','main','s1|/services/financialorg/depservices.php',0,NULL,NULL,NULL,'/services/financialorg/depservices.php','Депозитарные услуги','Депозитарий Банка имеет корреспондентские отношения со всеми крупными расчетными и уполномоченными депозитариями. Разветвленная сеть корреспондентских счетов позволяет клиентам депозитария осуществлять операции практически с любыми инструментами фондового рынка.\rУслуги депозитария Банка:\rоткрытие и ведение счетов депо клиентов;\rхранение и учет всех видов ценных бумаг, включая акции, облигации, паи, векселя, международных финансовых инструментов (еврооблигации, АДР, ГДР);\rконсультирование и проведение комплексных структурированных операций с ценными бумагами;\rперерегистрация прав собственности на ценные бумаги, в том числе при выполнении определенного условия;\rоформление и учет залоговых операций с ценными бумагами депонентов;\rпредоставление информации об эмитенте;\rпомощь депонентам в реализации прав, закрепленных за ними как за владельцами ценных бумаг;\rконсультационная поддержка при проведении операций по счетам депо;\rвыполнение функций платежного агента:\rхранение ценных бумаг на основании договоров ответственного хранения;\rпроведение экспертизы ценных бумаг;\rдругие услуги.\rСпособы обмена документов с Депозитарием:\rв бумажном виде с оригинальными подписями и печатями;\rпо факсу (поручения на зачисление ценных бумаг и предоставление выписок) с последующим предоставлением оригинала;\rпо системам S.W.I.F.T. и TELEX.\rТарифы на депозитарное обслуживание\rНаименование услуги\rТариф\rОткрытие счета депо для физических лиц (резидентов и нерезидентов)\n150 руб.\nОткрытие счета депо для юридических лиц – резидентов\n400 руб.\nОткрытие счета депо для юридических лиц – нерезидентов\n1600 руб.\nЗакрытие счета депо\nНе взимается\nВнесение изменения в Анкету Депонента\nНе взимается\nАбонентская плата в месяц за ведение счета депо для юридических лиц - резидентов,\nпри наличии остатка на счете депо\n500 руб.\nАбонентская плата в месяц за ведение счета депо для юридических лиц - нерезидентов,\nпри наличии остатка на счете депо\n2 500 руб.\nАбонентская плата в месяц за ведение счета депо для Депонентов, находящихся на брокерском\nобслуживании, при наличии движения по счету депо\n150 руб.\nФормирование отчета о совершенных по счету депо операциях за период после проведения\nоперации\nНе взимается\nФормирование отчета о совершенных по счету депо операциях за период, выписки о состоянии\nсчета (раздела счета) депо по информационному запросу Депонента\n150 руб.\nЗачисление (списание) бездокументарных ценных бумаг, за одно поручение\n300 руб.\nЗачисление (списание) документарных ценных бумаг, за одну ценную бумагу\n580 руб.\nПеревод (внутри Депозитария) бездокументарных и документарных ценных бумаг, за одно\nпоручение (взимается с Депонента - Инициатора операции)\n300 руб.\nИзменение мест хранения бездокументарных ценных бумаг (за одно поручение) и документарных\nценных бумаг (за одну ценную бумагу)\n580 руб.\nБлокировка (разблокировка), регистрация залога (возврата залога) бездокументарных\nценных бумаг\n870 руб.\nБлокировка (разблокировка), регистрация заклада (возврата заклада) документарных\nценных бумаг\n870 руб.\n*При взимании тарифов дополнительно взимается налог на добавленную стоимость по ставке 18%.\rПлата за иные услуги, не оговоренные в данных Тарифах Депозитария, за исключением услуг, оказываемых при проведении операций Депонента другими депозитариями и Реестродержателями, не взимается.','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(19,'2020-04-13 19:57:21','main','s1|/services/financialorg/docoper.php',0,NULL,NULL,NULL,'/services/financialorg/docoper.php','Документарные операции','Наш Банк предлагает широкий спектр банковских услуг по проведению документарных расчетов в области международных торгово-экономических отношений ,в том числе по нестандартным и сложно структурированным схемам.\rБезусловным преимуществом работы с нашим Банком является возможность проводить операции в предельно сжатые сроки по конкурентоспособным тарифам, а также их обширная география: страны СНГ и Балтии, ближнего и дальнего зарубежья.\rСпектр услуг по банковским гарантиям: \rвыдача любых видов гарантий под контргарантии банков-корреспондентов в счет установленных на них документарных лимитов: 									 \nгарантии надлежащего исполнения контрактов;\rгарантии платежа (т.е. выполнения платежных обязательств по контрактам);\rгарантии возврата авансового платежа;\rгарантии в пользу таможенных органов;\rгарантии в пользу налоговых органов;\rтендерные гарантии (т.е. гарантии участия в торгах/конкурсах);\rгарантии возврата кредита;\rгарантии оплаты акций;\rгарантии, предоставляемые в качестве встречного обеспечения судебных исков;\rавизование гарантий иностранных и российских банков-корреспондентов в пользу отечественных и зарубежных бенефициаров;\rпредъявление требования платежа по поручению бенефициаров в счет банковских гарантий;\rзаверка подлинности подписей на гарантиях иностранных и российских банков по просьбе бенефициара;\rв случае необходимости иные виды операций, включая предварительную проработку условий гарантийной сделки.\rПредоставляемые услуги по документарным (в том числе резервным) аккредитивам:\rавизование аккредитивов иностранных и российских банков-корреспондентов в пользу отечественных и зарубежных бенефициаров;\rподтверждение аккредитивов банков-корреспондентов под предоставленное денежное покрытие или в счет документарных лимитов, установленных на банк-эмитент;\rподтверждение экспортных аккредитивов Котнрагента;\rисполнение аккредитивов;\rвыполнение функции рамбурсирующего банка на основании предоставленных полномочий по аккредитивам иностранных и российских банков-корреспондентов (при наличии у банка-эмитента корреспондентского счета ЛОРО в Газпромбанке);\rвыдача безотзывных рамбурсных обязательств по аккредитивам, открытым банками-корреспондентами, в счет документарных лимитов, установленных на банк-эмитент (при наличии у банка-эмитента корреспондентского счета ЛОРО в Газпромбанке);\rоформление трансферации и переуступки выручки по аккредитивам;\rоткрытие аккредитивов/предоставление платежных гарантий в рамках операций торгового финансирования;\rиные виды операций, включая предварительную проработку схемы расчетов и условий аккредитивной сделки.','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(20,'2020-04-13 19:57:21','main','s1|/services/financialorg/index.php',0,NULL,NULL,NULL,'/services/financialorg/index.php','Финансовым организациям','Активное сотрудничество на финансовых рынках представляет собой одну из наиболее важных сторон бизнеса и является перспективным направлением деятельности нашего Банка. Политика банка направлена на расширение сотрудничества, увеличение объемов взаимных кредитных линий. Солидная деловая репутация Банка на рынке межбанковских операций способствует налаживанию стабильных и взаимовыгодных партнерских отношений с самыми крупными и надежными банками страны.\rОсобое внимание Банк уделяет развитию взаимоотношений с международными финансовыми институтами. Финансирование долгосрочных и среднесрочных проектов клиентов за счет привлечения средств на международных рынках капитала - одно из приоритетных направлений деятельности Банка. Наш Банк имеет развитую сеть корреспондентских счетов, что позволяет быстро и качественно осуществлять расчеты в различных валютах. Поручения клиентов могут быть исполнены Банком в сжатые сроки.\rВ целях минимизации рисков при поведении операций на финансовых рынках наш Банк максимально требовательно подходит к выбору своих банков-контрагентов. \rВ данном направлении Банк предлагает финансовым организациям следующие услуги:\rУслуги на межбанковском рынке\rДепозитарные услуги\rДокументарные операции','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(21,'2020-04-13 19:57:21','main','s1|/services/financialorg/mbank.php',0,NULL,NULL,NULL,'/services/financialorg/mbank.php','Услуги на межбанковском рынке','Межбанковское кредитование\rВид услуги\nОписание\nКредитование под валютный депозит\nКредиты выдаются в рублях на срок от 1 дня до 1 месяца с возможностью дальнейшей\nпролонгации. Тарифные ставки зависят от конкретных условий сделки.\nКредитование под залог ОВГВЗ\nКредиты выдаются в рублях и валюте на срок до 1 месяца с возможной пролонгацией.\nСтавка дисконта составляет 25—30%.\nКредитование под залог государственных ценных бумаг\nВ залог принимаются облигации федерального займа (ОФЗ) любого выпуска. Ставка дисконта:\nОФЗ с датой погашения до 91 дня — 5%;\rОФЗ с датой погашения до 365 дней — 8%;\rОФЗ с датой погашения свыше 365 дней — 13%.\rКредиты выдаются на срок до2 недель.\nКредитование под залог векселей\nДля консультаций по этому виду кредитования обратитесь в Управление вексельного\nобращения и работы с долговыми обязательствами по телефону (495) 978-78-78.\nКонверсионные операции\rНа внутреннем денежном рынке Банк осуществляет:\rБрокерское обслуживание банков по их участию в торгах ЕТС на ММВБ. Ставки комиссионного вознаграждения варьируются в зависимости от объема операций (в пределах 0,147—0,18%).\rКонверсионные операции. Банк предлагает банкам-контрагентам работу на валютном рынке по покупке и продаже иностранной валюты за российские рубли по текущим рыночным ценам. При отсутствии открытых линий при продаже иностранной валюты банк-контрагент производит предоплату по заключенной сделке, возможна работа под кредитовое авизо.\rБанкнотные операции\rпокупка и продажа наличной валюты за безналичную валюту;\rпродажа новых банкнот в упаковке американского банка-эмитента;\rпокупка и продажа банкнот, бывших в употреблении.\rУровень комиссионных зависит от объемов и конкретных условий сделки.\rДокументарные операции\rМеждународные расчеты:\nАккредитив\r- это условное денежное обязательство, принимаемое банком (банком-эмитентом) по поручению плательщика, произвести платежи в пользу получателя средств по предъявлении последним документов, соответствующих условиям аккредитива, или предоставить полномочия другому банку (исполняющему банку) произвести такие платежи.\rИнкассо\r- это расчетная операция, посредством которой банк на основании расчетных документов по поручению клиента получает причитающиеся клиенту денежные средства от плательщика за поступившие в адрес плательщика товары или оказанные ему услуги, после чего эти средства зачисляются на счет клиента в банке.\rОперации с векселями банка\rВексели нашего банка являются простыми векселями.\rПростой вексель — документ установленной законом формы, дающий его держателю (векселедержателю) безусловное право требовать с лица, указанного в данном документе (плательщика), уплаты оговоренной суммы по наступлению некоторого срока. Обязательство по простому векселю возникает с момента его составления и передачи первому векселедержателю.\rПеречень проводимых банком операций с собственными векселями:\nвыпуск векселей;\rпогашение векселей;\rдосрочный учет векселей;\rответственное хранение векселей;\rкредитование под залог векселей;\rвыдача кредитов на приобретение векселей;\rновация и размен векселей;\rпроверка подлинности векселей.','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(22,'2020-04-13 19:57:21','main','s1|/services/fiz/cards.php',0,NULL,NULL,NULL,'/services/fiz/cards.php','Банковские карты','Кредитные Карты\rСрок действия Карты\r3 года\rКомиссия за ежегодное осуществление расчетов по операциям с Основной Картой.\r600 руб. / 25 долл. США / 25 евро\rЛьготный период оплаты\rдо 50 календарных дней\rЕжемесячный минимальный платеж \r(в процентах от суммы задолженности по Овердрафтам):\r10% \rДополнительные проценты/штрафы/комиссии/ на сумму неразрешенного Овердрафта\rне взимается (отменена с 1 марта) \rКомиссия за учет Отчетной суммы задолженности, непогашенной на последний календарный день Льготного периода оплаты.\rдля 1-6-го месяцев\rдля 6-го и последующих месяцев\r12% / 15% \r21% / 24% \rв пунктах выдачи наличных или банкоматах \"Банка\" \rв банкоматах банков-партнеров \"Объединенной расчетной системы (ОРС)\" \rв пунктах выдачи наличных или банкоматах иного банка \r0%\r0,5%\r2,5%\rМинимальная сумма комиссии по операциям получения наличных денежных средств в пунктах выдачи наличных или банкоматах иного банка. \r150 рублей\rКомиссия за осуществление конвертации по трансграничным операциям (совершенным за пределами территории РФ). \r0,75% \rРасчетные карты Банка\rВалюта Картсчета\rроссийские рубли / доллары США / евро\rСрок действия карты\r3 года\rКомиссия за осуществление расчетов в течение одного года по операциям с Основной Картой при ее первичном выпуске.\rВзимается перед началом каждого года расчетов по действующей Карте из средств на Картсчете.\r500 рублей/20 долл. США/20 евро\rКомиссия за операцию получения наличных денежных средств:\rдо 300 000 рублей (включительно)\rв пунктах выдачи наличных или банкоматах «Банка»\rв банкоматах банков-партнеров\rв пунктах выдачи наличных или банкоматах иного банка\r0%\r0,5%\r1,5% мин. 90 руб.\rот 300 001 до 10 000 000 рублей (включительно)\r2,5% \rот 10 000 001 рубля и выше\r5%\rМинимальная сумма комиссии по операциям получения наличных денежных средств в пунктах выдачи наличных или банкоматах иного банка. \r90 рублей\rКомиссия за перечисление и конверсию денежных средств в Интернет-банке. \r0%\rКомиссия за остановку операций по Картсчету, совершаемых с использованием Карты, при ее утрате. \r600 рублей/25 долл. США/25 евро\rКомиссия за осуществление конверсии по трансграничным операциям (совершенным за пределами территории РФ).\r0,75%\rВыдача Карточки доступа.\rБесплатно\rКомиссия за оплату услуг в Интернет - банке и в банкоматах Банка. \rБесплатно\rКомиссия за учет перерасхода средств (в процентах годовых от суммы перерасхода). \r36%\rКомиссия за отправку SMS сообщений о суммах проведенных по Карте операций и доступном балансе в течение ее срока действия.\rБесплатно','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(23,'2020-04-13 19:57:21','main','s1|/services/fiz/credit.php',0,NULL,NULL,NULL,'/services/fiz/credit.php','Потребительский кредит','Не важно, для чего вам нужны деньги — мы доверяем вам и не тратим время на лишние процедуры.\rТарифы кредитования физических лиц\rВ рублях\rСумма кредита: от 150 000 до 1 500 000 рублей\rСрок кредита: от 6 до 36 месяцев\r% ставка: от 18 до 21,5% годовых\rЕдиновременная комиссия за выдачу кредита: 2% от суммы кредита\rВ долларах США\rСумма кредита: от 5 000 до 50 000 долларов США\rСрок кредита: от 6 до 24 месяцев\r% ставка: от 14,5 до 16,5% годовых\rЕдиновременная комиссия за выдачу кредита: 2% от суммы кредита\rУсловия кредитного договора и применяемый тарифный план и/или тарифы определяются в индивидуальном порядке, в том числе в зависимости от подтвержденного дохода клиента. Изложенная информация не является публичной офертой и не влечет возникновения у ЗАО «Банк Интеза» обязанности предоставить кредит, как на указанных, так и на любых иных условиях.\rМинимальные требования к заемщику\rВы гражданин России.\rВам сейчас больше 23 лет и вам будет меньше 60 (для мужчин) или меньше 55 (для женщин) на момент погашения (то есть полной оплаты) кредита.\rУ вас есть официальное место работы, и вы работаете на нем по найму не менее шести месяцев и прошли испытательный срок.\rВаш общий трудовой стаж составляет не менее двух лет\rВы можете подтвердить свой доход официально при помощи стандартной формы 2НДФЛ или справкой по форме банка.\rВы обратились в отделение банка в том же городе, в котором вы работаете.\rС вами можно связаться по городскому телефону по месту работы.\rТелефон горячей линии: \r8 800 2002 808\r( Звонок по России бесплатный)','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(24,'2020-04-13 19:57:21','main','s1|/services/fiz/index.php',0,NULL,NULL,NULL,'/services/fiz/index.php','Частным лицам','Наш Банк предоставляет физическим лицам большое число различных возможностей, связанных с сохранением средств и совершением различных сделок. В частности, банк предлагает своим клиентам широкую линейку разнообразных вкладов, способных удовлетворить как долгосрочные, так и краткосрочные интересы, касающиеся размещения свободных средств по выгодным ставкам. В своей работе Банк активно применяет инновационные технологии динамично развивающейся банковской сферы.\rБанк предлагает своим клиентам качественный универсальный сервис по следующим направлениям:\rБанковские карты\rПотребительский кредит','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(25,'2020-04-13 19:57:21','main','s1|/services/index.php',0,NULL,NULL,NULL,'/services/index.php','Услуги','Наш Банк предоставляет физическим лицам большое число различных возможностей, связанных с сохранением средств и совершением различных сделок. В частности, банк предлагает своим клиентам широкую линейку разнообразных вкладов, способных удовлетворить как долгосрочные, так и краткосрочные интересы, касающиеся размещения свободных средств по выгодным ставкам. В своей работе Банк активно применяет инновационные технологии динамично развивающейся банковской сферы.\rБанк предлагает своим клиентам качественный универсальный сервис по следующим направлениям:\rБанковские карты\rПотребительский кредит\rМалому и среднему бизнесу\rРабота с предприятиями малого и среднего бизнеса - одно из стратегически важных направлений деятельности Банка. Наш Банк представляет современные программы обслуживания малого и среднего бизнеса, обеспечивает оптимальные и взаимовыгодные варианты сотрудничества, в основе которых лежит профессионализм сотрудников и высокое качество банковских услуг. Услуги нашего Банка отличаются оперативностью и надежностью, так как ориентированы на деловых людей - на тех, кто ценит свое время и деньги.\rБанк предлагает следующие виды услуг для предприятий малого и среднего бизнеса:\rКредитование\rЛизинг\rДепозиты\rПластиковые карты\rКорпоративным клиентам\rБанк является одним из лидеров банковского рынка по обслуживанию корпоративных клиентов. \rКомплексное банковское обслуживание на основе максимального использования конкурентных преимуществ и возможностей Банка позволяет создать устойчивую \rфинансовую платформу для развития бизнеса предприятий и холдингов различных отраслей экономики. Уже более 15 лет Банк работает для своих клиентов, \rявляясь образцом надежности и высокого профессионализма.\rНаш Банк предлагает корпоративным клиентам следующие виды услуг:\rРасчетно-кассовое обслуживание\rИнкассация\rИнтернет-банкинг\rФинансовым организациям\rАктивное сотрудничество на финансовых рынках представляет собой одну из наиболее важных сторон бизнеса и является перспективным направлением деятельности нашего Банка. Политика банка направлена на расширение сотрудничества, увеличение объемов взаимных кредитных линий. Солидная деловая репутация Банка на рынке межбанковских операций способствует налаживанию стабильных и взаимовыгодных партнерских отношений с самыми крупными и надежными банками страны.\rОсобое внимание Банк уделяет развитию взаимоотношений с международными финансовыми институтами. Финансирование долгосрочных и среднесрочных проектов клиентов за счет привлечения средств на международных рынках капитала - одно из приоритетных направлений деятельности Банка. Наш Банк имеет развитую сеть корреспондентских счетов, что позволяет быстро и качественно осуществлять расчеты в различных валютах. Поручения клиентов могут быть исполнены Банком в сжатые сроки.\rВ целях минимизации рисков при поведении операций на финансовых рынках наш Банк максимально требовательно подходит к выбору своих банков-контрагентов. \rВ данном направлении Банк предлагает финансовым организациям следующие услуги:\rУслуги на межбанковском рынке\rДепозитарные услуги\rДокументарные операции','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(26,'2020-04-13 19:57:21','main','s1|/services/smallbusiness/cards.php',0,NULL,NULL,NULL,'/services/smallbusiness/cards.php','Пластиковые карты','Наш Банк проводит операции с пластиковыми картами с 1997 г. Сегодня мы предлагаем пластиковые карты основных международных платёжных систем – Visa и MasterCard; от самых демократичных Еlеctron до элитных Gold и Platinum. В рамках персонального обслуживания В рамках персонального банковского обслуживания Банк дополнительно предлагает эксклюзивные карты Visa Infinite с бриллиантами и платиновым орнаментом.\rЗаказать международную пластиковую карту можно в любом отделении нашего Банка. Ваша карта будет готова уже через 3-5 дней. Наш Банк один из немногих в России, кто выдает карту сроком на два года, как и крупнейшие зарубежные банки.Каждый Пакет услуг Банка включает одну основную и до трех дополнительных пластиковых карт для вас и для членов вашей семьи (включая детей старше 14 лет). Вы сами устанавливаете ограничения: кто и сколько может потратить по карте.\rТеряя пластиковую карту, вы не теряете деньги. Потому что карты нашего Банка надежно защищены от незаконного использования. Просто соблюдайте правила безопасности при обращении со своей картой, а в случае ее пропажи или хищения без промедления обратитесь в Банк.\rПреимущества пластиковых карт Банка\rполучение наличных без комиссии в широкой сети банкоматов;\rсведения об остатке и совершённых операциях по карте приходят по SMS;\rсистема интернет-банкинга позволяет владельцу карты контролировать расходы и управлять средствами на карточных счетах.\rвсем владельцам карт Банка доступны cкидки и бонусные программы.\rВиды пластиковых карт\rДебетовые карты:\rудобство безналичной оплаты товаров и услуг\rбезопасное хранение собственных средств\rначисление процентов на остаток по карте\rконтроль над расходами и управление своими деньгами\rКредитные карты:\rкредитование без процентов до 55 дней\rпользоваться кредитом можно многократно, не обращаясь в Банк\rбезналичная оплата товаров и услуг без комиссий в любой точке мира\rпровоз денег через границу без таможенного оформления\rне нужно покупать валюту для выезда в другие страны\rвсе полезные функции дебетовых карт','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(27,'2020-04-13 19:57:21','main','s1|/services/smallbusiness/credit.php',0,NULL,NULL,NULL,'/services/smallbusiness/credit.php','Кредитование','Кредитование малого и среднего бизнеса является одним из стратегических направлений Банка.\rДанное направление включает в себя:\nкредитование юридических лиц\rкредитование индивидуальных предпринимателей\rВ зависимости от пожеланий клиента кредиты для бизнеса предоставляются в разных валютах: в рублях РФ, долларах США и евро. \nПреимущества получения кредита в нашем Банке:\rСрок рассмотрения кредитной заявки от 2-х рабочих дней; \rОтсутствие ежемесячной платы за ведение ссудного счета;\rОтсутствие требований по предоставлению бизнес-плана;\rПринимается к рассмотрению управленческая отчетность;\rВ качестве залога рассматриваются товары в обороте, автотранспорт, оборудование, недвижимость и другое ликвидное имущество; \rГибкие условия погашения кредита. \rДля получения кредита:\rПозвоните нам по телефону +7 (495) 757-57-57, обратитесь в ближайшее к Вам отделение Банка или заполните on-line заявку. \rНаши специалисты помогут Вам выбрать удобные условия кредитования и ответят на интересующие Вас вопросы.\rПодготовьте необходимые для рассмотрения кредитной заявки документы и договоритесь о встрече с кредитным экспертом Банка.\rПокажите кредитному эксперту Ваше предприятие и имущество, предлагаемое в залог.\rПолучите кредит на развитие Вашего бизнеса! \nПрограммы кредитования малого и среднего бизнеса:\rПрограмма\nСумма кредита\nПроцентная ставка\nСрок кредита\n«Овердрафт»\rот 300 000\nдо 5 000 000 рублей\nот 18% годовых\nдо 12 месяцев\n«Миникредит»\rот 150 000\nдо 1 000 000 рублей\nот 24% годовых\nдо 36 месяцев\n«Развитие»\nот 1 000 000\nдо 15 000 000 рублей\nот 17% годовых\nдо 36 месяцев\n«Инвест»\nот 1 000 000\nдо 30 000 000 рублей\nот 15% годовых\nдо 72 месяцев','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(28,'2020-04-13 19:57:22','main','s1|/services/smallbusiness/deposits.php',0,NULL,NULL,NULL,'/services/smallbusiness/deposits.php','Депозиты','Наш Банк предлагает вам эффективно разместить свободные деньги на банковском депозите и получить дополнительную прибыль.\rДепозитные продукты\r \rДосрочное расторжение\rПополнение\rЧастичное изъятие\rВыплата процентов\rДепозит с выплатой процентов в конце срока\rНе предусмотрено.\rНе предусмотрено.\rНе предусмотрено.\rВ конце срока.\rДепозит с выплатой процентов ежемесячно\rНе предусмотрено.\rНе предусмотрено.\rНе предусмотрено.\rЕжемесячно.\rДепозит с возможностью пополнения\rНе предусмотрено.\rПрекращается за 2 месяца до окончания срока действия депозита. \rНе предусмотрено \rВ конце срока. \rДепозит с возможностью пополнения и изъятия\rНе предусмотрено.\rПрекращается за 2 месяца до окончания срока действия депозита.\rНе более 40% от первоначальной суммы вклада за весь срок депозита \rВ конце срока. \rДепозит с возможностью досрочного расторжения \rВозможно при размещении на 12 месяцев, но не ранее чем через 6 месяцев.\rНе предусмотрено.\rНе предусмотрено. \rВ конце срока.','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(29,'2020-04-13 19:57:22','main','s1|/services/smallbusiness/index.php',0,NULL,NULL,NULL,'/services/smallbusiness/index.php','Малому и среднему бизнесу','Работа с предприятиями малого и среднего бизнеса - одно из стратегически важных направлений деятельности Банка. Наш Банк представляет современные программы обслуживания малого и среднего бизнеса, обеспечивает оптимальные и взаимовыгодные варианты сотрудничества, в основе которых лежит профессионализм сотрудников и высокое качество банковских услуг. Услуги нашего Банка отличаются оперативностью и надежностью, так как ориентированы на деловых людей - на тех, кто ценит свое время и деньги.\rБанк предлагает следующие виды услуг для предприятий малого и среднего бизнеса:\rКредитование\rЛизинг\rДепозиты\rПластиковые карты','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(30,'2020-04-13 19:57:22','main','s1|/services/smallbusiness/leazing.php',0,NULL,NULL,NULL,'/services/smallbusiness/leazing.php','Лизинг','Наш Банк оказывает весь спектр услуг по финансовой аренде (лизингу) отечественного и импортного оборудования, транспорта и недвижимости.\rЛизинг оборудования и транспорта\rОсновные условия:\rСрок финансирования:\nоборудование и транспорт - до 5 лет\rж/д подвижной состав - до 10 лет\rВалюта финансирования: рубли, доллары США, евро\rМинимальная сумма финансирования: от 4,5 млн.руб.\rАванс: от 0%\rУдорожание: от 9%\rСрок принятия решения: от 14 дней\rФинансирование импортных поставок\rМы предоставляем предприятиям доступ к льготному финансированию импортных поставок оборудования и транспорта с использованием механизма лизинга при участии экспортных кредитных агентств.\rОсновные условия:\rСрок финансирования: до 7 лет\rВалюта финансирования: рубли, доллары США, евро\rМинимальная сумма финансирования: от 15 млн.руб. \rАванс: от 15% (без учета таможенных пошлин) \rУдорожание: от 5%\rСрок принятия решения: от 14 дней\rЛизинг коммерческой недвижимости\rПозволяет предприятиям приобрести объекты коммерческой недвижимости без единовременного отвлечения значительных средств.\rВ качестве предмета лизинга могут выступать:\rофисные здания;\rторговые, складские и производственные помещения;\rдругие объекты коммерческой недвижимости.\rОсновные условия:\rСрок финансирования: от 5 лет\rВалюта финансирования: рубли, доллары США, евро\rМинимальная сумма финансирования: от 50 млн.руб.* \rАванс: от 0%\rУдорожание: от 7%\rСрок принятия решения: от 14 дней\r* Размер суммы финансирования зависит от региона, в котором находится объект недвижимости.\rОсновным требованием, предъявляемым нашим Банком для рассмотрения заявки на лизинг коммерческой недвижимости, является наличие полного комплекта правоустанавливающих документов на недвижимость и наличие отчета независимого оценщика.','','','','c8a570e0c016e9d730083dea0134b5ad',NULL,NULL),(31,'2010-05-28 00:00:00','iblock','1',0,NULL,NULL,NULL,'=ID=1&EXTERNAL_ID=1&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=news&IBLOCK_ID=1&IBLOCK_CODE=corporate_news&IBLOCK_EXTERNAL_ID=corporate_news&CODE=','Банк переносит дату вступления в действие тарифов на услуги в иностранной валюте','Уважаемые клиенты,\rсообщаем Вам, что Банк переносит дату вступления в действие тарифов на услуги для юридических лиц и индивидуальных предпринимателей в иностранной валюте. В связи с этим до даты введения в действие новой редакции тарифов, услуги юридическим лицам и индивидуальным предпринимателям будут оказываться в рамках действующих тарифов. \rИнформация о дате введения новой редакции тарифов будет сообщена дополнительно.\r\nУважаемые клиенты,\rсообщаем Вам, что Банк переносит дату вступления в действие тарифов на услуги для юридических лиц и индивидуальных предпринимателей в иностранной валюте. В связи с этим до даты введения в действие новой редакции тарифов, услуги юридическим лицам и индивидуальным предпринимателям будут оказываться в рамках действующих тарифов. \rИнформация о дате введения новой редакции тарифов будет сообщена дополнительно.','','news','1',NULL,'2010-05-28 00:00:00',NULL),(32,'2010-05-27 00:00:00','iblock','2',0,NULL,NULL,NULL,'=ID=2&EXTERNAL_ID=2&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=news&IBLOCK_ID=1&IBLOCK_CODE=corporate_news&IBLOCK_EXTERNAL_ID=corporate_news&CODE=','Начать работать с системой «Интернет-Клиент» стало еще проще','Наш Банк предлагает своим клиентам Мастер Установки «Интернет-Клиент», который существенно упростит начало работы с системой. Теперь достаточно скачать и запустить Мастер Установки, и все настройки будут произведены автоматически. Вам больше не нужно тратить время на изучение объемных инструкций, или звонить в службу техподдержки, чтобы начать работать с системой.\r\nНаш Банк предлагает своим клиентам Мастер Установки «Интернет-Клиент», который существенно упростит начало работы с системой. Теперь достаточно скачать и запустить Мастер Установки, и все настройки будут произведены автоматически. Вам больше не нужно тратить время на изучение объемных инструкций, или звонить в службу техподдержки, чтобы начать работать с системой.','','news','1',NULL,'2010-05-27 00:00:00',NULL),(33,'2010-05-24 00:00:00','iblock','3',0,NULL,NULL,NULL,'=ID=3&EXTERNAL_ID=3&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=news&IBLOCK_ID=1&IBLOCK_CODE=corporate_news&IBLOCK_EXTERNAL_ID=corporate_news&CODE=','Реорганизация сети отделений Банка','В ближайшее время будет значительно расширен продуктовый ряд и перечень предоставляемых банковских услуг, которые Банк сможет предлагать во всех своих дополнительных офисах. Теперь наши клиенты смогут получить полный перечень услуг в любом из отделений Банка. \rБыло проведено комплексное всестороннее исследование функционирования региональных офисов на предмет соответствия возросшим требованиям. В результате, принято решение о временном закрытии офисов, не соответствующих высоким стандартам и не приспособленных к требованиям растущего бизнеса. Офисы постепенно будут отремонтированы и переоборудованы, станут современными и удобными. \rПриносим свои извинения за временно доставленные неудобства. \r\nВ ближайшее время будет значительно расширен продуктовый ряд и перечень предоставляемых банковских услуг, которые Банк сможет предлагать во всех своих дополнительных офисах. Теперь наши клиенты смогут получить полный перечень услуг в любом из отделений Банка. \rБыло проведено комплексное всестороннее исследование функционирования региональных офисов на предмет соответствия возросшим требованиям. В результате, принято решение о временном закрытии офисов, не соответствующих высоким стандартам и не приспособленных к требованиям растущего бизнеса. Офисы постепенно будут отремонтированы и переоборудованы, станут современными и удобными. \rПриносим свои извинения за временно доставленные неудобства.','','news','1',NULL,'2010-05-24 00:00:00',NULL),(34,'2010-05-01 00:00:00','iblock','4',0,NULL,NULL,NULL,'=ID=4&EXTERNAL_ID=2&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=vacancies&IBLOCK_ID=2&IBLOCK_CODE=corp_vacancies&IBLOCK_EXTERNAL_ID=corp_vacancies&CODE=','Главный специалист Отдела анализа кредитных проектов региональной сети','Требования\rВысшее экономическое/финансовое образование, опыт в банках топ-100 не менее 3-х лет в кредитном отделе (анализ заемщиков), желателен опыт работы с кредитными заявками филиалов, знание технологий АФХД предприятий, навыки написания экспертного заключения, знание законодательства (в т.ч. Положение ЦБ № 254-П).\rОбязанности\rАнализ кредитных проектов филиалов Банка, подготовка предложений по структурированию кредитных проектов, оценка полноты и качества формируемых филиалами заключений, выявление стоп-факторов, доработка заявок филиалов в соответствии со стандартами Банка, подготовка заключения (рекомендаций) на КК по заявкам филиалов в части оценки финансово-экономического состояния заемщика, защита проектов на КК Банка, консультирование и методологическая помощь филиалам Банка в части корпоративного кредитования.\rУсловия\rМесто работы: М.Парк Культуры. Графики работы: пятидневная рабочая неделя, с 9:00 до 18:00, пт. до 16:45. Зарплата: 50000 руб. оклад + премии, полный соц. пакет,оформление согласно ТК РФ','','vacancies','2',NULL,'2010-05-01 00:00:00',NULL),(35,'2010-05-01 00:00:00','iblock','5',0,NULL,NULL,NULL,'=ID=5&EXTERNAL_ID=3&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=vacancies&IBLOCK_ID=2&IBLOCK_CODE=corp_vacancies&IBLOCK_EXTERNAL_ID=corp_vacancies&CODE=','Специалист по продажам розничных банковских продуктов','Требования\rВысшее экономического образования ‚ опыт работы в сфере продаж банковских продуктов‚ опытный пользователь ПК‚ этика делового общения‚ ответственность‚ инициативность‚ активность.\rОбязанности\rПродажа розничных банковских продуктов, оформление документов.\rУсловия\rТрудоустройство по ТК РФ‚ полный соц. пакет. График работы: пятидневная рабочая неделя. Зарплата: 20000 руб. оклад + премии','','vacancies','2',NULL,'2010-05-01 00:00:00',NULL),(36,'2010-05-01 00:00:00','iblock','6',0,NULL,NULL,NULL,'=ID=6&EXTERNAL_ID=4&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=vacancies&IBLOCK_ID=2&IBLOCK_CODE=corp_vacancies&IBLOCK_EXTERNAL_ID=corp_vacancies&CODE=','Специалист Отдела андеррайтинга','Требования\rВысшее профессиональное образование, опыт работы от 2 лет в отделе по работе с физическими и юридическими лицами Банков, связанных с анализом платёжеспособности и кредитоспособности физических и юридических лиц.\rОбязанности\rПроверка соответствия документов, предоставленных клиентами Банка, анализ информации о риске\rУсловия\rТрудоустройство по ТК РФ‚ полный соц. пакет. График работы: пятидневная рабочая неделя. Зарплата: оклад 25000 руб.','','vacancies','2',NULL,'2010-05-01 00:00:00',NULL),(37,'2020-04-13 17:34:16','iblock','S1',0,NULL,NULL,NULL,'=ID=1&EXTERNAL_ID=&IBLOCK_TYPE_ID=catalog&IBLOCK_ID=3&IBLOCK_CODE=chastnym-licam&IBLOCK_EXTERNAL_ID=&CODE=kredity','Кредиты','',NULL,'catalog','3',NULL,NULL,NULL),(38,'2020-04-13 23:15:47','main','s1|/chastnym-licam/index.php',0,NULL,NULL,NULL,'/chastnym-licam/index.php','Частным лицам','','','','',NULL,NULL,NULL),(39,'2020-04-13 17:25:37','iblock','S2',0,NULL,NULL,NULL,'=ID=2&EXTERNAL_ID=&IBLOCK_TYPE_ID=catalog&IBLOCK_ID=3&IBLOCK_CODE=chastnym-licam&IBLOCK_EXTERNAL_ID=&CODE=vklady','Вклады','',NULL,'catalog','3',NULL,NULL,NULL),(40,'2020-04-13 17:33:27','iblock','S3',0,NULL,NULL,NULL,'=ID=3&EXTERNAL_ID=&IBLOCK_TYPE_ID=catalog&IBLOCK_ID=3&IBLOCK_CODE=chastnym-licam&IBLOCK_EXTERNAL_ID=&CODE=ipoteka','Ипотека','',NULL,'catalog','3',NULL,NULL,NULL),(41,'2020-04-13 17:33:58','iblock','7',0,NULL,NULL,NULL,'=ID=7&EXTERNAL_ID=7&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=catalog&IBLOCK_ID=3&IBLOCK_CODE=chastnym-licam&IBLOCK_EXTERNAL_ID=&CODE=kredit-dlya-svoikh','Кредит \"Для своих\"','','','catalog','3',NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_search_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_freq`
--

DROP TABLE IF EXISTS `b_search_content_freq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_freq` (
  `STEM` int(11) NOT NULL DEFAULT 0,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FREQ` float DEFAULT NULL,
  `TF` float DEFAULT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_FREQ` (`STEM`,`LANGUAGE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_freq`
--

LOCK TABLES `b_search_content_freq` WRITE;
/*!40000 ALTER TABLE `b_search_content_freq` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_freq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_param`
--

DROP TABLE IF EXISTS `b_search_content_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_param` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `PARAM_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM_VALUE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  KEY `IX_B_SEARCH_CONTENT_PARAM` (`SEARCH_CONTENT_ID`,`PARAM_NAME`),
  KEY `IX_B_SEARCH_CONTENT_PARAM_1` (`PARAM_NAME`,`PARAM_VALUE`(50),`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_param`
--

LOCK TABLES `b_search_content_param` WRITE;
/*!40000 ALTER TABLE `b_search_content_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_right`
--

DROP TABLE IF EXISTS `b_search_content_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_right` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_RIGHT` (`SEARCH_CONTENT_ID`,`GROUP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_right`
--

LOCK TABLES `b_search_content_right` WRITE;
/*!40000 ALTER TABLE `b_search_content_right` DISABLE KEYS */;
INSERT INTO `b_search_content_right` VALUES (1,'G2'),(2,'G2'),(3,'G2'),(4,'G2'),(5,'G2'),(6,'G2'),(7,'G2'),(8,'G2'),(9,'G2'),(10,'G2'),(11,'G2'),(12,'G2'),(13,'G2'),(14,'G2'),(15,'G2'),(16,'G2'),(17,'G2'),(18,'G2'),(19,'G2'),(20,'G2'),(21,'G2'),(22,'G2'),(23,'G2'),(24,'G2'),(25,'G2'),(26,'G2'),(27,'G2'),(28,'G2'),(29,'G2'),(30,'G2'),(31,'G2'),(32,'G2'),(33,'G2'),(34,'G2'),(35,'G2'),(36,'G2'),(37,'G2'),(38,'G2'),(39,'G2'),(40,'G2'),(41,'G2');
/*!40000 ALTER TABLE `b_search_content_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_site`
--

DROP TABLE IF EXISTS `b_search_content_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_site` (
  `SEARCH_CONTENT_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_site`
--

LOCK TABLES `b_search_content_site` WRITE;
/*!40000 ALTER TABLE `b_search_content_site` DISABLE KEYS */;
INSERT INTO `b_search_content_site` VALUES (1,'s1',''),(2,'s1',''),(3,'s1',''),(4,'s1',''),(5,'s1',''),(6,'s1',''),(7,'s1',''),(8,'s1',''),(9,'s1',''),(10,'s1',''),(11,'s1',''),(12,'s1',''),(13,'s1',''),(14,'s1',''),(15,'s1',''),(16,'s1',''),(17,'s1',''),(18,'s1',''),(19,'s1',''),(20,'s1',''),(21,'s1',''),(22,'s1',''),(23,'s1',''),(24,'s1',''),(25,'s1',''),(26,'s1',''),(27,'s1',''),(28,'s1',''),(29,'s1',''),(30,'s1',''),(31,'s1',''),(32,'s1',''),(33,'s1',''),(34,'s1',''),(35,'s1',''),(36,'s1',''),(37,'s1',''),(38,'s1',''),(39,'s1',''),(40,'s1',''),(41,'s1','');
/*!40000 ALTER TABLE `b_search_content_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_stem`
--

DROP TABLE IF EXISTS `b_search_content_stem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_stem` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `STEM` int(11) NOT NULL,
  `TF` float NOT NULL,
  `PS` float NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_STEM` (`STEM`,`LANGUAGE_ID`,`TF`,`PS`,`SEARCH_CONTENT_ID`),
  KEY `IND_B_SEARCH_CONTENT_STEM` (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_stem`
--

LOCK TABLES `b_search_content_stem` WRITE;
/*!40000 ALTER TABLE `b_search_content_stem` DISABLE KEYS */;
INSERT INTO `b_search_content_stem` VALUES (7,'ru',1,0.1832,61),(1,'ru',1,0.2314,1),(11,'ru',1,0.2314,1),(28,'ru',2,0.1508,3),(18,'ru',2,0.1852,23),(9,'ru',2,0.1892,14),(4,'ru',2,0.2012,68),(30,'ru',2,0.212,132),(1,'ru',2,0.2314,2),(32,'ru',2,0.2522,41.5),(23,'ru',2,0.2696,218.333),(15,'ru',2,0.2871,156.25),(31,'ru',2,0.2944,36.3333),(27,'ru',2,0.3093,89.75),(10,'ru',2,0.3173,9),(19,'ru',2,0.3182,133.8),(36,'ru',2,0.3492,29.3333),(33,'ru',2,0.3605,71.6),(34,'ru',2,0.3636,81.8),(29,'ru',2,0.3828,47),(16,'ru',2,0.3856,39.5),(24,'ru',2,0.3931,40.25),(14,'ru',2,0.3967,136.571),(22,'ru',2,0.4071,249.778),(17,'ru',2,0.4246,65.1429),(21,'ru',2,0.4449,319.75),(5,'ru',2,0.4504,201.454),(26,'ru',2,0.4577,153),(3,'ru',2,0.4837,136),(20,'ru',2,0.4874,92.7),(25,'ru',2,0.5413,233.546),(2,'ru',2,0.5463,224.783),(2,'ru',3,0.1192,1),(5,'ru',4,0.1256,116),(3,'ru',4,0.1307,3),(2,'ru',4,0.1889,191.5),(11,'ru',4,0.2314,2),(2,'ru',5,0.1192,5),(18,'ru',6,0.1168,520),(2,'ru',6,0.1192,6),(21,'ru',6,0.1202,209),(27,'ru',6,0.1332,221),(23,'ru',6,0.1348,50),(34,'ru',6,0.1407,153),(2,'ru',7,0.2383,169),(2,'ru',8,0.1192,8),(4,'ru',8,0.2012,197.5),(26,'ru',9,0.1277,111),(3,'ru',9,0.2614,77.3333),(22,'ru',9,0.2846,152.75),(4,'ru',9,0.4698,140),(2,'ru',9,0.515,268.263),(2,'ru',10,0.1889,22.5),(4,'ru',10,0.2539,128.667),(2,'ru',11,0.1192,19),(25,'ru',11,0.1197,63),(5,'ru',11,0.1256,140),(24,'ru',11,0.1693,64),(2,'ru',12,0.1192,21),(2,'ru',13,0.1192,22),(30,'ru',13,0.3106,195.75),(2,'ru',14,0.1192,36),(21,'ru',15,0.1202,463),(4,'ru',15,0.127,82),(2,'ru',15,0.1889,85.5),(18,'ru',16,0.1168,512),(2,'ru',16,0.1192,38),(22,'ru',16,0.1226,60),(15,'ru',16,0.1236,537),(3,'ru',16,0.1307,51),(14,'ru',16,0.1322,147),(28,'ru',16,0.1508,15),(26,'ru',16,0.2023,93),(33,'ru',16,0.2211,82),(31,'ru',16,0.2333,115),(2,'ru',17,0.1192,39),(15,'ru',17,0.196,538),(3,'ru',17,0.2072,52),(9,'ru',17,0.2999,52),(33,'ru',17,0.5161,120.667),(19,'ru',18,0.1231,35),(15,'ru',18,0.1236,45),(4,'ru',18,0.127,226),(29,'ru',18,0.1649,5),(24,'ru',18,0.1693,57),(25,'ru',18,0.1896,72.5),(14,'ru',18,0.2096,133.5),(23,'ru',18,0.2137,246),(2,'ru',18,0.2383,287),(21,'ru',18,0.2405,215),(32,'ru',18,0.2522,52.5),(35,'ru',18,0.2729,37.5),(34,'ru',18,0.2814,101.333),(36,'ru',18,0.3492,31),(2,'ru',19,0.1889,150),(2,'ru',20,0.2383,136.667),(5,'ru',21,0.1256,139),(20,'ru',21,0.1409,3),(24,'ru',21,0.1693,59),(35,'ru',21,0.1722,26),(2,'ru',21,0.1889,104),(25,'ru',21,0.1896,162.5),(3,'ru',22,0.1307,249),(16,'ru',22,0.166,37),(5,'ru',22,0.1991,254.5),(27,'ru',22,0.2111,215.5),(20,'ru',22,0.2233,95),(25,'ru',22,0.2393,312.667),(2,'ru',22,0.2767,330),(5,'ru',23,0.1256,141),(2,'ru',23,0.1889,106),(18,'ru',24,0.1168,21),(25,'ru',24,0.1197,380),(5,'ru',24,0.1256,142),(26,'ru',24,0.1277,231),(3,'ru',24,0.1307,45),(33,'ru',24,0.1395,2),(34,'ru',24,0.1407,8),(20,'ru',24,0.1409,116),(2,'ru',24,0.1889,107),(2,'ru',25,0.1192,61),(4,'ru',25,0.127,68),(26,'ru',25,0.1277,11),(3,'ru',25,0.1307,23),(2,'ru',26,0.1192,69),(22,'ru',27,0.1226,206),(3,'ru',27,0.1307,157),(2,'ru',27,0.1889,131),(21,'ru',27,0.1906,285.5),(21,'ru',28,0.1202,180),(5,'ru',28,0.1256,262),(3,'ru',28,0.1307,135),(29,'ru',28,0.1649,30),(18,'ru',28,0.1852,278),(2,'ru',28,0.1889,317),(26,'ru',28,0.2023,49.5),(14,'ru',28,0.2096,112),(25,'ru',28,0.2778,193.5),(17,'ru',28,0.283,87.3333),(16,'ru',28,0.3321,37),(25,'ru',29,0.1197,182),(29,'ru',29,0.1649,98),(2,'ru',29,0.1889,181),(26,'ru',29,0.4047,112.875),(29,'ru',30,0.1649,99),(24,'ru',30,0.1693,83),(25,'ru',30,0.1896,132.5),(3,'ru',30,0.2072,164.5),(13,'ru',30,0.2314,1),(2,'ru',30,0.2383,185.667),(22,'ru',30,0.424,162.4),(26,'ru',30,0.5693,175.809),(2,'ru',31,0.1192,75),(25,'ru',31,0.1197,208),(22,'ru',31,0.1226,356),(5,'ru',31,0.1256,71),(26,'ru',31,0.1277,189),(30,'ru',31,0.1338,99),(16,'ru',31,0.166,25),(2,'ru',32,0.1192,76),(25,'ru',32,0.1197,127),(21,'ru',32,0.1202,364),(3,'ru',32,0.1307,221),(14,'ru',32,0.1322,166),(30,'ru',32,0.1338,248),(23,'ru',32,0.1348,268),(29,'ru',32,0.1649,43),(33,'ru',32,0.2211,75),(32,'ru',32,0.2522,48.5),(18,'ru',33,0.1168,24),(2,'ru',33,0.1192,77),(5,'ru',33,0.1256,155),(26,'ru',33,0.1277,246),(30,'ru',33,0.1338,161),(20,'ru',33,0.1409,120),(16,'ru',33,0.166,31),(25,'ru',33,0.1896,299),(14,'ru',33,0.2096,48),(2,'ru',34,0.1192,78),(18,'ru',35,0.1168,62),(30,'ru',35,0.1338,9),(34,'ru',35,0.1407,12),(16,'ru',35,0.166,34),(5,'ru',35,0.1991,146),(3,'ru',35,0.2614,119.667),(2,'ru',35,0.3345,239),(25,'ru',35,0.3359,326),(20,'ru',35,0.3642,83.8),(2,'ru',36,0.1192,80),(25,'ru',36,0.1197,77),(24,'ru',36,0.1693,78),(2,'ru',37,0.1192,82),(21,'ru',37,0.1202,205),(5,'ru',37,0.1256,148),(22,'ru',37,0.1942,276),(2,'ru',38,0.1192,83),(2,'ru',39,0.1192,84),(17,'ru',39,0.1415,126),(2,'ru',40,0.1192,85),(2,'ru',41,0.1889,85),(2,'ru',42,0.1192,88),(3,'ru',42,0.1307,49),(34,'ru',42,0.3266,72.75),(2,'ru',43,0.1192,88),(3,'ru',43,0.1307,49),(34,'ru',43,0.3949,81.6667),(2,'ru',44,0.1192,88),(3,'ru',44,0.1307,49),(34,'ru',44,0.3266,72.75),(18,'ru',45,0.1168,454),(2,'ru',45,0.1192,90),(34,'ru',45,0.1407,129),(23,'ru',45,0.2137,245),(3,'ru',45,0.2614,96.6667),(2,'ru',46,0.1192,91),(2,'ru',47,0.1192,92),(22,'ru',48,0.1226,409),(30,'ru',48,0.1338,7),(16,'ru',48,0.166,77),(9,'ru',48,0.1892,12),(2,'ru',48,0.2383,301),(21,'ru',48,0.2405,132.667),(19,'ru',48,0.2462,95.6667),(26,'ru',48,0.2553,244.667),(20,'ru',48,0.2818,182.333),(17,'ru',48,0.283,90.6667),(15,'ru',48,0.2871,76.5),(33,'ru',48,0.3238,85),(18,'ru',48,0.328,244.333),(29,'ru',48,0.3297,65.3333),(5,'ru',48,0.3527,104.667),(3,'ru',48,0.3669,115.333),(25,'ru',48,0.3793,256),(31,'ru',48,0.3805,62.2),(2,'ru',49,0.1192,100),(4,'ru',49,0.127,281),(21,'ru',50,0.1202,373),(5,'ru',50,0.1256,161),(2,'ru',50,0.1889,206.5),(14,'ru',50,0.2645,138.667),(2,'ru',51,0.1192,109),(2,'ru',52,0.1192,110),(36,'ru',52,0.1746,6),(9,'ru',52,0.1892,9),(2,'ru',53,0.1192,111),(3,'ru',53,0.2072,8),(18,'ru',54,0.1168,34),(2,'ru',54,0.1192,112),(16,'ru',54,0.166,9),(5,'ru',54,0.1991,204),(3,'ru',54,0.2072,23.5),(21,'ru',54,0.2405,136),(25,'ru',54,0.3359,334.5),(20,'ru',54,0.3642,99),(2,'ru',55,0.1192,113),(25,'ru',55,0.1197,158),(29,'ru',55,0.1649,74),(21,'ru',55,0.1906,162.5),(18,'ru',55,0.4872,287.647),(2,'ru',56,0.1192,114),(21,'ru',56,0.1202,85),(18,'ru',56,0.4872,288.647),(3,'ru',57,0.2072,102),(33,'ru',57,0.2211,126),(2,'ru',57,0.2383,288.333),(2,'ru',58,0.1192,122),(5,'ru',58,0.1256,218),(36,'ru',58,0.2767,35),(34,'ru',58,0.2814,31.6667),(2,'ru',59,0.1192,123),(4,'ru',59,0.127,271),(14,'ru',59,0.1322,179),(22,'ru',60,0.1226,77),(14,'ru',60,0.1322,180),(27,'ru',60,0.1332,83),(2,'ru',60,0.1889,262),(2,'ru',61,0.1192,128),(2,'ru',62,0.1192,130),(2,'ru',63,0.1192,131),(34,'ru',63,0.1407,58),(2,'ru',64,0.1192,132),(27,'ru',64,0.1332,43),(34,'ru',64,0.1407,190),(17,'ru',64,0.1415,72),(35,'ru',64,0.1722,48),(36,'ru',64,0.1746,53),(22,'ru',64,0.1942,278),(2,'ru',65,0.1192,135),(2,'ru',66,0.1192,137),(25,'ru',66,0.1197,318),(5,'ru',66,0.1256,264),(20,'ru',66,0.1409,54),(2,'ru',67,0.1192,144),(2,'ru',68,0.1192,152),(7,'ru',68,0.1832,5),(2,'ru',69,0.1192,153),(2,'ru',70,0.1889,153),(2,'ru',71,0.1192,154),(2,'ru',72,0.1192,155),(18,'ru',73,0.1168,105),(2,'ru',73,0.1192,172),(5,'ru',73,0.1256,178),(2,'ru',74,0.1192,173),(25,'ru',74,0.1197,113),(4,'ru',74,0.127,248),(26,'ru',74,0.1277,270),(14,'ru',74,0.1322,237),(29,'ru',74,0.1649,29),(5,'ru',74,0.1991,261.5),(27,'ru',74,0.2111,201),(2,'ru',75,0.1192,174),(3,'ru',75,0.1307,160),(25,'ru',76,0.1197,179),(26,'ru',76,0.1277,306),(3,'ru',76,0.1307,163),(23,'ru',76,0.1348,26),(34,'ru',76,0.1407,122),(29,'ru',76,0.1649,95),(2,'ru',76,0.1889,197.5),(21,'ru',76,0.3607,131.857),(27,'ru',76,0.3739,65.1667),(2,'ru',77,0.1192,176),(2,'ru',78,0.1192,177),(2,'ru',79,0.1192,183),(18,'ru',80,0.1168,125),(2,'ru',80,0.1192,194),(26,'ru',80,0.1277,25),(19,'ru',80,0.1951,206.5),(14,'ru',80,0.2645,97.6667),(18,'ru',81,0.1168,174),(2,'ru',81,0.1192,195),(22,'ru',81,0.1226,117),(26,'ru',81,0.1277,244),(3,'ru',81,0.1307,251),(17,'ru',81,0.2243,110),(14,'ru',81,0.3418,104.6),(32,'ru',81,0.4113,61.6),(2,'ru',82,0.1192,196),(26,'ru',82,0.2023,42.5),(2,'ru',83,0.1192,197),(2,'ru',84,0.1192,204),(22,'ru',84,0.1942,325.5),(2,'ru',85,0.1192,205),(2,'ru',86,0.1192,208),(27,'ru',87,0.1332,33),(23,'ru',87,0.1348,123),(36,'ru',87,0.1746,43),(14,'ru',87,0.2096,102),(33,'ru',87,0.2211,91),(31,'ru',87,0.2333,50),(18,'ru',87,0.2337,40.3333),(2,'ru',87,0.2383,445),(21,'ru',87,0.2405,381.333),(32,'ru',87,0.2522,44.5),(24,'ru',87,0.2683,52.5),(3,'ru',87,0.3035,133),(20,'ru',87,0.3271,113),(17,'ru',87,0.3658,102.2),(15,'ru',87,0.4108,246.111),(25,'ru',87,0.4428,243.917),(16,'ru',87,0.4662,36.3333),(5,'ru',87,0.4908,177.071),(2,'ru',88,0.1192,210),(33,'ru',88,0.2211,69),(2,'ru',89,0.1192,211),(5,'ru',89,0.1256,34),(2,'ru',90,0.1192,212),(5,'ru',90,0.1256,67),(33,'ru',90,0.2211,68),(35,'ru',90,0.3444,19.6667),(3,'ru',91,0.1307,67),(28,'ru',91,0.1508,23),(2,'ru',91,0.1889,212),(5,'ru',91,0.1991,67),(35,'ru',91,0.4834,19.6667),(19,'ru',92,0.1231,15),(2,'ru',92,0.1889,236),(18,'ru',93,0.1168,223),(2,'ru',93,0.1192,221),(25,'ru',93,0.1197,5),(23,'ru',93,0.1348,27),(24,'ru',93,0.1693,6),(36,'ru',93,0.2767,23.5),(2,'ru',94,0.1192,222),(25,'ru',94,0.1197,6),(21,'ru',94,0.1202,434),(15,'ru',94,0.1236,511),(5,'ru',94,0.1256,113),(3,'ru',94,0.1307,115),(14,'ru',94,0.1322,112),(27,'ru',94,0.1332,25),(23,'ru',94,0.1348,28),(17,'ru',94,0.1415,63),(38,'ru',94,0.2314,2),(24,'ru',94,0.2683,4.5),(36,'ru',94,0.2767,26.5),(18,'ru',94,0.302,262.8),(31,'ru',94,0.3417,78),(26,'ru',95,0.1277,26),(2,'ru',95,0.1889,300),(2,'ru',96,0.1192,224),(2,'ru',97,0.1192,226),(21,'ru',97,0.1202,494),(2,'ru',98,0.1192,227),(2,'ru',99,0.1192,228),(14,'ru',99,0.1322,41),(2,'ru',100,0.1192,230),(2,'ru',101,0.1192,231),(2,'ru',102,0.1192,233),(2,'ru',103,0.1192,239),(2,'ru',104,0.1192,246),(2,'ru',105,0.1192,247),(25,'ru',105,0.1197,236),(26,'ru',105,0.1277,146),(34,'ru',105,0.1407,21),(16,'ru',105,0.166,53),(36,'ru',105,0.1746,12),(23,'ru',105,0.2137,206),(30,'ru',105,0.3106,101.75),(2,'ru',106,0.1192,249),(32,'ru',106,0.4113,58.6),(2,'ru',107,0.1192,254),(27,'ru',107,0.1332,77),(36,'ru',107,0.1746,42),(5,'ru',107,0.1991,136.5),(18,'ru',107,0.2337,145.333),(19,'ru',107,0.2462,265),(2,'ru',108,0.1192,265),(25,'ru',108,0.1197,160),(14,'ru',108,0.1322,39),(23,'ru',108,0.1348,16),(29,'ru',108,0.1649,76),(15,'ru',108,0.196,502.5),(33,'ru',108,0.2211,64),(32,'ru',108,0.2522,83.5),(2,'ru',109,0.1192,268),(2,'ru',110,0.1192,269),(25,'ru',110,0.1197,84),(21,'ru',110,0.1202,492),(4,'ru',110,0.127,27),(3,'ru',110,0.1307,112),(27,'ru',110,0.1332,188),(24,'ru',110,0.1693,85),(23,'ru',110,0.2137,73.5),(41,'ru',110,0.2314,1),(25,'ru',111,0.1197,234),(28,'ru',111,0.1508,162),(16,'ru',111,0.166,51),(2,'ru',111,0.2383,275.667),(22,'ru',112,0.1226,46),(30,'ru',112,0.1338,216),(23,'ru',112,0.1348,73),(2,'ru',112,0.1889,277.5),(2,'ru',113,0.2383,277.667),(22,'ru',113,0.2846,286.25),(23,'ru',113,0.313,54.75),(27,'ru',113,0.5204,241.357),(2,'ru',114,0.2383,278.667),(2,'ru',115,0.1192,275),(15,'ru',115,0.1236,313),(2,'ru',116,0.1192,278),(3,'ru',116,0.1307,234),(2,'ru',117,0.1192,280),(25,'ru',117,0.1197,162),(23,'ru',117,0.1348,9),(28,'ru',117,0.1508,9),(29,'ru',117,0.1649,78),(26,'ru',117,0.2023,238.5),(2,'ru',118,0.1192,281),(2,'ru',119,0.1192,282),(5,'ru',119,0.1256,315),(3,'ru',119,0.1307,175),(28,'ru',119,0.1508,167),(25,'ru',119,0.1896,33),(39,'ru',119,0.2314,1),(24,'ru',119,0.2683,34),(2,'ru',120,0.1192,287),(32,'ru',120,0.1591,6),(2,'ru',121,0.1192,288),(21,'ru',121,0.1202,428),(2,'ru',122,0.1192,297),(2,'ru',123,0.1192,306),(4,'ru',123,0.127,259),(3,'ru',123,0.1307,242),(34,'ru',123,0.1407,1),(7,'ru',123,0.1832,79),(2,'ru',124,0.1192,307),(2,'ru',125,0.1192,308),(34,'ru',125,0.1407,178),(35,'ru',125,0.1722,81),(21,'ru',126,0.1202,236),(22,'ru',126,0.1226,180),(5,'ru',126,0.1256,49),(3,'ru',126,0.1307,9),(17,'ru',126,0.1415,68),(2,'ru',126,0.1889,344.5),(4,'ru',126,0.2012,164.5),(19,'ru',126,0.2858,207.5),(2,'ru',127,0.1192,310),(3,'ru',127,0.1307,269),(2,'ru',128,0.1192,311),(18,'ru',129,0.1168,84),(2,'ru',129,0.1192,313),(25,'ru',129,0.1197,8),(3,'ru',129,0.1307,154),(14,'ru',129,0.1322,197),(23,'ru',129,0.1348,117),(24,'ru',129,0.1693,9),(19,'ru',129,0.1951,117.5),(2,'ru',130,0.1192,314),(5,'ru',130,0.1256,44),(2,'ru',131,0.1192,315),(5,'ru',131,0.1256,117),(4,'ru',131,0.127,125),(27,'ru',131,0.1332,176),(34,'ru',131,0.1407,37),(16,'ru',131,0.166,39),(30,'ru',131,0.212,125),(25,'ru',131,0.2393,162.333),(29,'ru',131,0.2613,48.5),(2,'ru',132,0.1192,316),(5,'ru',132,0.1256,120),(27,'ru',132,0.2111,101.5),(25,'ru',132,0.2778,116.75),(29,'ru',132,0.3828,32.75),(2,'ru',133,0.1192,318),(5,'ru',133,0.1256,118),(27,'ru',133,0.2111,103.5),(25,'ru',133,0.2778,118.75),(29,'ru',133,0.3828,34.75),(2,'ru',134,0.1192,319),(4,'ru',134,0.127,279),(3,'ru',134,0.1307,142),(20,'ru',134,0.1409,15),(16,'ru',134,0.166,38),(5,'ru',134,0.1991,162.5),(33,'ru',134,0.2211,143),(27,'ru',134,0.3093,109.25),(25,'ru',134,0.3359,163.167),(29,'ru',134,0.3828,35.75),(2,'ru',135,0.1192,320),(26,'ru',135,0.1277,104),(17,'ru',135,0.1415,94),(23,'ru',135,0.2137,233),(5,'ru',135,0.2513,228.333),(10,'ru',135,0.2514,102),(3,'ru',135,0.3379,187.8),(2,'ru',136,0.1192,326),(18,'ru',137,0.1168,61),(21,'ru',137,0.1202,316),(19,'ru',137,0.1231,16),(4,'ru',137,0.127,287),(3,'ru',137,0.1307,70),(25,'ru',137,0.1896,351.5),(26,'ru',137,0.2023,47.5),(20,'ru',137,0.2233,87.5),(2,'ru',137,0.2383,343.667),(2,'ru',138,0.1192,336),(19,'ru',138,0.1231,142),(2,'ru',139,0.1889,346.5),(2,'ru',140,0.1889,347.5),(2,'ru',141,0.1889,348.5),(25,'ru',142,0.1197,133),(19,'ru',142,0.1231,152),(3,'ru',142,0.1307,259),(27,'ru',142,0.1332,85),(30,'ru',142,0.1338,178),(34,'ru',142,0.1407,80),(29,'ru',142,0.1649,49),(5,'ru',142,0.1991,137.5),(2,'ru',142,0.2767,398.25),(2,'ru',143,0.1192,341),(22,'ru',143,0.1226,448),(19,'ru',143,0.1231,11),(17,'ru',143,0.2243,67.5),(18,'ru',143,0.302,245.8),(2,'ru',144,0.1192,343),(4,'ru',144,0.3282,104.4),(2,'ru',145,0.1192,346),(2,'ru',146,0.1192,348),(2,'ru',147,0.1192,349),(20,'ru',147,0.1409,123),(17,'ru',147,0.1415,26),(24,'ru',147,0.1693,76),(25,'ru',147,0.1896,231),(2,'ru',148,0.1192,350),(2,'ru',149,0.1192,352),(2,'ru',150,0.1192,353),(2,'ru',151,0.1192,355),(3,'ru',152,0.2072,103),(2,'ru',152,0.2767,421.25),(2,'ru',153,0.1192,372),(21,'ru',154,0.1202,282),(5,'ru',154,0.1256,39),(2,'ru',154,0.2383,499.333),(31,'ru',154,0.3417,98),(2,'ru',155,0.1192,375),(2,'ru',156,0.1192,376),(22,'ru',156,0.1226,1),(26,'ru',156,0.1277,51),(28,'ru',156,0.1508,11),(10,'ru',156,0.1586,121),(29,'ru',156,0.1649,50),(33,'ru',156,0.2211,73),(19,'ru',156,0.2462,85.3333),(4,'ru',156,0.2539,141.333),(16,'ru',156,0.2632,14),(14,'ru',156,0.2645,33.6667),(24,'ru',156,0.2683,73.5),(5,'ru',156,0.2917,71.5),(25,'ru',156,0.3093,134.6),(3,'ru',156,0.3379,81.8),(35,'ru',156,0.3444,18.6667),(2,'ru',157,0.1192,378),(2,'ru',158,0.1192,379),(2,'ru',159,0.1192,382),(2,'ru',160,0.2383,438.667),(18,'ru',161,0.1168,533),(25,'ru',161,0.1197,437),(21,'ru',161,0.1202,437),(27,'ru',161,0.1332,18),(20,'ru',161,0.1409,173),(2,'ru',161,0.1889,426.5),(2,'ru',162,0.1192,405),(2,'ru',163,0.1889,422.5),(3,'ru',164,0.1307,84),(30,'ru',164,0.1338,241),(2,'ru',164,0.1889,442.5),(2,'ru',165,0.1192,417),(21,'ru',166,0.1202,72),(23,'ru',166,0.1348,232),(2,'ru',166,0.2767,470.25),(2,'ru',167,0.1192,422),(2,'ru',168,0.1192,423),(2,'ru',169,0.1192,424),(23,'ru',170,0.2137,35),(17,'ru',170,0.2243,83.5),(21,'ru',170,0.2405,102.667),(30,'ru',170,0.2675,126),(2,'ru',170,0.2767,477),(27,'ru',170,0.3443,202.2),(22,'ru',170,0.3885,265),(2,'ru',171,0.1192,437),(2,'ru',172,0.1192,438),(2,'ru',173,0.1192,439),(2,'ru',174,0.1192,440),(9,'ru',174,0.1892,29),(2,'ru',175,0.1192,443),(2,'ru',176,0.1192,449),(25,'ru',177,0.1197,363),(20,'ru',177,0.1409,99),(2,'ru',177,0.2383,492.333),(2,'ru',178,0.1192,452),(2,'ru',179,0.1192,454),(15,'ru',179,0.1236,491),(22,'ru',179,0.1942,236),(2,'ru',180,0.1192,458),(21,'ru',180,0.1202,458),(14,'ru',180,0.1322,172),(23,'ru',180,0.1348,190),(2,'ru',181,0.1192,460),(2,'ru',182,0.1192,461),(15,'ru',182,0.1236,397),(2,'ru',183,0.1889,469.5),(18,'ru',184,0.1168,78),(21,'ru',184,0.1202,475),(15,'ru',184,0.1236,73),(26,'ru',184,0.1277,289),(2,'ru',184,0.1889,512.5),(2,'ru',185,0.1192,475),(2,'ru',186,0.1192,476),(2,'ru',187,0.1192,481),(2,'ru',188,0.1192,482),(25,'ru',188,0.1197,7),(23,'ru',188,0.1348,174),(10,'ru',188,0.1586,90),(24,'ru',188,0.1693,8),(32,'ru',188,0.2522,79.5),(2,'ru',189,0.1192,485),(23,'ru',189,0.1348,220),(2,'ru',190,0.1192,492),(3,'ru',190,0.1307,186),(7,'ru',190,0.1832,17),(34,'ru',190,0.223,111.5),(2,'ru',191,0.1192,493),(5,'ru',191,0.1256,265),(14,'ru',191,0.1322,148),(23,'ru',191,0.2137,181.5),(2,'ru',192,0.1192,498),(14,'ru',192,0.2645,127),(2,'ru',193,0.1192,500),(14,'ru',193,0.1322,201),(18,'ru',193,0.1852,362.5),(2,'ru',194,0.1889,510.5),(2,'ru',195,0.1192,503),(19,'ru',195,0.1231,40),(16,'ru',195,0.166,29),(24,'ru',195,0.1693,11),(25,'ru',195,0.1896,111),(5,'ru',195,0.1991,167),(21,'ru',195,0.2405,117),(28,'ru',195,0.3502,151),(2,'ru',196,0.1192,504),(2,'ru',197,0.1192,506),(2,'ru',198,0.1192,507),(14,'ru',198,0.1322,186),(27,'ru',198,0.1332,72),(2,'ru',199,0.1192,509),(2,'ru',200,0.1192,512),(22,'ru',200,0.1942,67.5),(25,'ru',201,0.1197,299),(21,'ru',201,0.1202,304),(15,'ru',201,0.1236,125),(20,'ru',201,0.1409,35),(2,'ru',201,0.1889,535.5),(3,'ru',201,0.2072,107),(18,'ru',202,0.1168,382),(2,'ru',202,0.1192,522),(34,'ru',202,0.1407,106),(14,'ru',202,0.2096,170),(2,'ru',203,0.1192,525),(2,'ru',204,0.1192,529),(23,'ru',204,0.1348,114),(2,'ru',205,0.1192,530),(2,'ru',206,0.1192,531),(30,'ru',206,0.2675,135.333),(15,'ru',206,0.4433,293.182),(2,'ru',207,0.1192,544),(21,'ru',207,0.1202,28),(19,'ru',207,0.1231,61),(2,'ru',208,0.1192,547),(2,'ru',209,0.1192,549),(5,'ru',209,0.1256,317),(4,'ru',209,0.127,249),(2,'ru',210,0.1192,552),(2,'ru',211,0.1192,553),(25,'ru',211,0.1197,299),(21,'ru',211,0.1202,304),(20,'ru',211,0.1409,35),(2,'ru',212,0.1192,553),(25,'ru',212,0.1197,299),(15,'ru',212,0.1236,134),(14,'ru',212,0.1322,19),(20,'ru',212,0.1409,35),(21,'ru',212,0.1906,253),(2,'ru',213,0.1192,557),(2,'ru',214,0.1192,559),(25,'ru',214,0.1197,61),(4,'ru',214,0.127,252),(3,'ru',214,0.1307,199),(34,'ru',214,0.1407,35),(24,'ru',214,0.1693,62),(5,'ru',214,0.2513,124),(2,'ru',215,0.1192,560),(3,'ru',215,0.1307,248),(2,'ru',216,0.1192,561),(21,'ru',216,0.1202,425),(23,'ru',216,0.2137,248.5),(18,'ru',217,0.1168,48),(2,'ru',217,0.1192,563),(3,'ru',217,0.1307,139),(17,'ru',217,0.1415,113),(20,'ru',217,0.2233,113),(5,'ru',217,0.2513,228),(16,'ru',217,0.2632,35.5),(25,'ru',217,0.2778,297.75),(2,'ru',218,0.1192,567),(25,'ru',218,0.1197,282),(20,'ru',218,0.1409,18),(2,'ru',219,0.1192,568),(3,'ru',219,0.1307,263),(29,'ru',219,0.1649,17),(24,'ru',219,0.1693,81),(27,'ru',219,0.2111,15),(20,'ru',219,0.2818,99),(25,'ru',219,0.3093,254),(18,'ru',220,0.1168,99),(3,'ru',220,0.1307,1),(14,'ru',220,0.1322,159),(23,'ru',220,0.1348,130),(10,'ru',220,0.1586,120),(36,'ru',220,0.1746,46),(9,'ru',220,0.1892,2),(31,'ru',220,0.2333,106),(26,'ru',221,0.1277,100),(3,'ru',221,0.1307,5),(18,'ru',222,0.1168,10),(25,'ru',222,0.1197,325),(26,'ru',222,0.1277,114),(3,'ru',222,0.1307,7),(20,'ru',222,0.1409,61),(5,'ru',222,0.1991,146.5),(3,'ru',223,0.1307,8),(25,'ru',224,0.1197,238),(5,'ru',224,0.1256,369),(3,'ru',224,0.1307,19),(16,'ru',224,0.166,55),(23,'ru',224,0.2137,240),(32,'ru',224,0.3182,64.3333),(3,'ru',225,0.1307,27),(22,'ru',226,0.1226,84),(3,'ru',226,0.1307,28),(17,'ru',226,0.1415,127),(18,'ru',227,0.1168,27),(25,'ru',227,0.1197,388),(21,'ru',227,0.1202,178),(14,'ru',227,0.1322,124),(20,'ru',227,0.1409,124),(3,'ru',227,0.2072,148),(17,'ru',227,0.2243,108),(10,'ru',228,0.1586,24),(22,'ru',228,0.1942,109.5),(26,'ru',228,0.2023,75.5),(3,'ru',228,0.2614,105),(30,'ru',228,0.3106,149),(26,'ru',229,0.1277,276),(29,'ru',229,0.1649,87),(16,'ru',229,0.166,76),(25,'ru',229,0.1896,215),(21,'ru',229,0.1906,78.5),(3,'ru',229,0.2072,138.5),(14,'ru',229,0.2096,166.5),(17,'ru',229,0.2243,58),(18,'ru',229,0.2337,86.3333),(19,'ru',229,0.2858,165),(3,'ru',230,0.1307,34),(26,'ru',230,0.2023,122),(25,'ru',230,0.2393,395),(20,'ru',230,0.2818,131),(19,'ru',230,0.3182,173.4),(17,'ru',230,0.3286,92),(21,'ru',230,0.3811,302.25),(18,'ru',230,0.3881,267.222),(22,'ru',230,0.4071,250.667),(3,'ru',231,0.1307,35),(3,'ru',232,0.1307,47),(3,'ru',233,0.1307,48),(15,'ru',234,0.1236,538),(3,'ru',234,0.1307,52),(33,'ru',234,0.3238,123),(3,'ru',235,0.1307,54),(5,'ru',236,0.1256,358),(30,'ru',236,0.1338,246),(3,'ru',236,0.2072,170.5),(25,'ru',237,0.1197,329),(19,'ru',237,0.1231,55),(26,'ru',237,0.1277,346),(20,'ru',237,0.1409,65),(3,'ru',237,0.2072,134.5),(17,'ru',237,0.2243,54),(21,'ru',238,0.1202,223),(19,'ru',238,0.1231,5),(15,'ru',238,0.1236,14),(3,'ru',238,0.1307,63),(27,'ru',238,0.1332,179),(20,'ru',238,0.1409,176),(28,'ru',238,0.1508,4),(29,'ru',238,0.1649,85),(16,'ru',238,0.166,72),(26,'ru',238,0.2023,37.5),(33,'ru',238,0.2211,78),(32,'ru',238,0.2522,42.5),(24,'ru',238,0.2683,50.5),(25,'ru',238,0.3093,192.6),(3,'ru',239,0.1307,68),(33,'ru',239,0.2211,127),(30,'ru',239,0.2675,155.667),(3,'ru',240,0.1307,72),(3,'ru',241,0.1307,80),(3,'ru',242,0.1307,81),(3,'ru',243,0.1307,85),(3,'ru',244,0.2072,116),(3,'ru',245,0.1307,85),(3,'ru',246,0.1307,96),(30,'ru',246,0.1338,249),(3,'ru',247,0.1307,98),(5,'ru',248,0.1256,112),(24,'ru',248,0.1693,1),(38,'ru',248,0.2314,1),(3,'ru',248,0.2614,118),(3,'ru',249,0.1307,105),(25,'ru',250,0.1197,181),(3,'ru',250,0.1307,105),(29,'ru',250,0.1649,97),(28,'ru',250,0.3502,111.25),(21,'ru',251,0.1202,13),(3,'ru',251,0.1307,105),(28,'ru',251,0.4235,87.1667),(3,'ru',252,0.1307,108),(3,'ru',253,0.1307,112),(21,'ru',253,0.1906,378),(19,'ru',254,0.1231,145),(26,'ru',254,0.1277,313),(3,'ru',254,0.1307,112),(37,'ru',254,0.2314,1),(21,'ru',254,0.2792,172),(27,'ru',254,0.3739,119.167),(23,'ru',254,0.4478,81.5556),(21,'ru',255,0.1202,412),(19,'ru',255,0.1231,39),(5,'ru',255,0.1256,184),(27,'ru',255,0.1332,7),(30,'ru',255,0.1338,269),(23,'ru',255,0.1348,132),(20,'ru',255,0.1409,17),(17,'ru',255,0.1415,11),(16,'ru',255,0.166,4),(25,'ru',255,0.1896,234),(3,'ru',255,0.2614,186.333),(25,'ru',256,0.1197,76),(5,'ru',256,0.1256,107),(3,'ru',256,0.1307,127),(24,'ru',256,0.1693,77),(18,'ru',257,0.1168,539),(5,'ru',257,0.1256,341),(3,'ru',257,0.1307,130),(30,'ru',257,0.1338,4),(17,'ru',257,0.2243,37),(31,'ru',257,0.2333,96),(3,'ru',258,0.1307,131),(14,'ru',258,0.1322,18),(30,'ru',258,0.1338,271),(23,'ru',258,0.1348,194),(34,'ru',258,0.1407,179),(10,'ru',258,0.1586,15),(35,'ru',258,0.1722,49),(36,'ru',258,0.1746,54),(5,'ru',258,0.1991,98.5),(33,'ru',258,0.2211,94),(5,'ru',259,0.1256,125),(3,'ru',259,0.1307,132),(30,'ru',259,0.1338,6),(19,'ru',259,0.1951,37.5),(18,'ru',260,0.1168,56),(26,'ru',260,0.1277,142),(3,'ru',260,0.1307,134),(19,'ru',260,0.1951,257),(4,'ru',261,0.127,278),(3,'ru',261,0.1307,138),(34,'ru',261,0.1407,121),(5,'ru',261,0.1991,133.5),(17,'ru',261,0.2243,123.5),(25,'ru',261,0.2393,211.667),(16,'ru',261,0.3321,28.6667),(5,'ru',262,0.1256,190),(3,'ru',262,0.1307,140),(19,'ru',263,0.1231,312),(3,'ru',263,0.1307,143),(30,'ru',263,0.1338,185),(15,'ru',263,0.196,456.5),(25,'ru',264,0.1197,350),(19,'ru',264,0.1231,313),(3,'ru',264,0.1307,144),(20,'ru',264,0.1409,86),(30,'ru',264,0.495,128.083),(21,'ru',265,0.1202,154),(26,'ru',265,0.1277,301),(3,'ru',265,0.2072,156.5),(7,'ru',265,0.2903,39.5),(4,'ru',265,0.3564,160.167),(25,'ru',266,0.1197,4),(15,'ru',266,0.1236,71),(5,'ru',266,0.1256,5),(3,'ru',266,0.1307,155),(27,'ru',266,0.1332,37),(30,'ru',266,0.1338,87),(24,'ru',266,0.1693,5),(19,'ru',266,0.1951,179),(33,'ru',266,0.2211,72),(25,'ru',267,0.1197,83),(3,'ru',267,0.1307,162),(23,'ru',267,0.1348,1),(24,'ru',267,0.1693,84),(3,'ru',268,0.1307,164),(3,'ru',269,0.1307,166),(14,'ru',269,0.1322,9),(21,'ru',270,0.1202,396),(26,'ru',270,0.1277,256),(3,'ru',270,0.1307,168),(27,'ru',270,0.1332,73),(10,'ru',270,0.1586,107),(25,'ru',270,0.2393,373.667),(20,'ru',270,0.2818,109.667),(17,'ru',270,0.3286,89),(19,'ru',270,0.3456,223.167),(14,'ru',270,0.4393,134.111),(18,'ru',270,0.505,242.632),(25,'ru',271,0.1197,301),(22,'ru',271,0.1226,3),(26,'ru',271,0.1277,304),(3,'ru',271,0.1307,169),(30,'ru',271,0.1338,105),(23,'ru',271,0.1348,102),(20,'ru',271,0.1409,37),(27,'ru',271,0.3093,138.5),(34,'ru',271,0.3636,40.2),(3,'ru',272,0.1307,172),(30,'ru',272,0.1338,91),(22,'ru',272,0.1942,63.5),(3,'ru',273,0.1307,173),(14,'ru',273,0.1322,122),(18,'ru',273,0.1852,371.5),(22,'ru',273,0.1942,64.5),(3,'ru',274,0.1307,174),(3,'ru',275,0.1307,176),(30,'ru',275,0.1338,10),(3,'ru',276,0.1307,177),(3,'ru',277,0.1307,178),(19,'ru',278,0.1231,234),(3,'ru',278,0.1307,179),(14,'ru',278,0.1322,143),(21,'ru',278,0.2405,291),(22,'ru',278,0.2846,260),(15,'ru',278,0.4278,165.9),(18,'ru',279,0.1168,429),(3,'ru',279,0.1307,180),(17,'ru',279,0.1415,45),(22,'ru',280,0.1226,453),(26,'ru',280,0.1277,266),(3,'ru',280,0.1307,188),(21,'ru',281,0.1202,410),(28,'ru',281,0.1508,2),(10,'ru',281,0.1586,1),(16,'ru',281,0.166,70),(24,'ru',281,0.1693,3),(19,'ru',281,0.1951,20),(27,'ru',281,0.2111,95),(30,'ru',281,0.212,131),(33,'ru',281,0.2211,90),(32,'ru',281,0.2522,40.5),(29,'ru',281,0.2613,41.5),(3,'ru',281,0.2614,225.667),(20,'ru',281,0.2818,97),(26,'ru',281,0.2964,90.5),(25,'ru',281,0.359,227),(5,'ru',281,0.3769,186.857),(9,'ru',281,0.4393,30),(3,'ru',282,0.1307,192),(3,'ru',283,0.1307,193),(14,'ru',283,0.2096,78),(3,'ru',284,0.1307,196),(7,'ru',284,0.1832,12),(25,'ru',285,0.1197,112),(4,'ru',285,0.127,251),(3,'ru',285,0.1307,197),(29,'ru',285,0.1649,28),(33,'ru',285,0.2211,156),(5,'ru',285,0.2513,86.6667),(3,'ru',286,0.1307,198),(22,'ru',287,0.1226,196),(15,'ru',287,0.1236,507),(5,'ru',287,0.1256,185),(26,'ru',287,0.1277,127),(27,'ru',287,0.1332,8),(29,'ru',287,0.1649,13),(16,'ru',287,0.166,5),(20,'ru',287,0.2233,55.5),(3,'ru',287,0.2614,235.667),(25,'ru',287,0.2778,231),(18,'ru',287,0.302,437.6),(26,'ru',288,0.1277,185),(3,'ru',288,0.1307,210),(20,'ru',288,0.1409,63),(29,'ru',288,0.1649,63),(16,'ru',288,0.166,61),(25,'ru',288,0.2393,239.333),(5,'ru',288,0.2513,158.667),(21,'ru',289,0.1202,181),(19,'ru',289,0.1231,187),(3,'ru',289,0.1307,211),(14,'ru',289,0.1322,165),(17,'ru',289,0.1415,10),(36,'ru',289,0.1746,22),(3,'ru',290,0.1307,220),(17,'ru',290,0.1415,120),(15,'ru',290,0.196,25.5),(3,'ru',291,0.1307,223),(5,'ru',292,0.1256,207),(4,'ru',292,0.127,181),(29,'ru',292,0.1649,18),(3,'ru',292,0.2072,245.5),(20,'ru',292,0.2233,62.5),(25,'ru',292,0.2393,251.667),(3,'ru',293,0.1307,228),(3,'ru',294,0.1307,229),(3,'ru',295,0.1307,230),(3,'ru',296,0.1307,231),(29,'ru',296,0.1649,40),(20,'ru',296,0.2233,18.5),(25,'ru',296,0.2393,229.667),(3,'ru',297,0.1307,232),(3,'ru',298,0.1307,243),(3,'ru',299,0.1307,246),(25,'ru',300,0.1197,367),(3,'ru',300,0.1307,262),(20,'ru',300,0.1409,103),(3,'ru',301,0.1307,264),(18,'ru',302,0.1168,116),(5,'ru',302,0.1256,304),(3,'ru',302,0.1307,268),(3,'ru',303,0.1307,277),(3,'ru',304,0.1307,279),(3,'ru',305,0.1307,280),(3,'ru',306,0.1307,281),(3,'ru',307,0.1307,282),(26,'ru',308,0.1277,115),(3,'ru',308,0.1307,283),(19,'ru',308,0.1951,197),(3,'ru',309,0.1307,284),(22,'ru',310,0.1226,12),(3,'ru',310,0.1307,288),(3,'ru',311,0.1307,289),(3,'ru',312,0.1307,290),(3,'ru',313,0.1307,291),(3,'ru',314,0.1307,292),(3,'ru',315,0.1307,294),(3,'ru',316,0.1307,295),(4,'ru',317,0.127,1),(4,'ru',318,0.127,2),(4,'ru',319,0.127,3),(4,'ru',320,0.127,4),(19,'ru',320,0.1951,120.5),(4,'ru',321,0.3282,58.6),(4,'ru',322,0.2012,69),(5,'ru',323,0.1256,350),(34,'ru',323,0.1407,13),(35,'ru',323,0.1722,10),(36,'ru',323,0.1746,7),(4,'ru',323,0.2012,70),(4,'ru',324,0.127,9),(4,'ru',325,0.2012,9),(4,'ru',326,0.127,10),(4,'ru',327,0.127,11),(4,'ru',328,0.127,12),(5,'ru',329,0.1256,324),(34,'ru',329,0.1407,11),(35,'ru',329,0.1722,9),(4,'ru',329,0.3282,91.4),(4,'ru',330,0.4392,135.9),(4,'ru',331,0.2012,54.5),(21,'ru',332,0.1202,83),(5,'ru',332,0.1256,122),(10,'ru',332,0.1586,25),(4,'ru',332,0.3564,152.833),(15,'ru',333,0.1236,35),(4,'ru',333,0.4392,157.7),(25,'ru',334,0.1896,353),(4,'ru',334,0.2012,81.5),(20,'ru',334,0.2233,89),(4,'ru',335,0.127,28),(4,'ru',336,0.2012,28),(4,'ru',337,0.127,29),(4,'ru',338,0.127,30),(4,'ru',339,0.2539,59.3333),(4,'ru',340,0.2948,71),(4,'ru',341,0.127,35),(4,'ru',342,0.2948,195.5),(4,'ru',343,0.127,39),(4,'ru',344,0.127,40),(4,'ru',345,0.2012,40),(4,'ru',346,0.127,41),(9,'ru',346,0.1892,70),(10,'ru',346,0.2514,109),(4,'ru',347,0.127,48),(14,'ru',347,0.1322,236),(4,'ru',348,0.127,50),(14,'ru',348,0.1322,66),(27,'ru',348,0.1332,187),(28,'ru',348,0.1508,14),(9,'ru',348,0.1892,8),(33,'ru',348,0.2211,93),(4,'ru',349,0.127,51),(4,'ru',350,0.2012,175),(4,'ru',351,0.127,54),(4,'ru',352,0.127,55),(4,'ru',353,0.127,61),(4,'ru',354,0.127,61),(4,'ru',355,0.127,62),(4,'ru',356,0.127,63),(4,'ru',357,0.2539,157),(15,'ru',358,0.1236,510),(27,'ru',358,0.1332,24),(17,'ru',358,0.1415,62),(10,'ru',358,0.1586,73),(4,'ru',358,0.2012,91.5),(18,'ru',358,0.2713,271.5),(36,'ru',358,0.2767,25.5),(31,'ru',358,0.3417,77),(4,'ru',359,0.2012,123),(4,'ru',360,0.127,79),(4,'ru',361,0.127,79),(4,'ru',362,0.127,79),(4,'ru',363,0.127,80),(4,'ru',364,0.127,81),(4,'ru',365,0.127,87),(25,'ru',366,0.1197,227),(16,'ru',366,0.166,44),(4,'ru',366,0.2012,108.5),(4,'ru',367,0.127,99),(4,'ru',368,0.127,100),(4,'ru',369,0.127,101),(4,'ru',370,0.127,102),(4,'ru',371,0.127,106),(4,'ru',372,0.127,109),(25,'ru',373,0.1197,344),(20,'ru',373,0.1409,80),(4,'ru',373,0.2948,195.25),(4,'ru',374,0.2012,167),(4,'ru',375,0.127,117),(4,'ru',376,0.127,126),(4,'ru',377,0.127,127),(26,'ru',377,0.1277,139),(4,'ru',378,0.2012,127),(26,'ru',378,0.2023,139),(4,'ru',379,0.127,128),(4,'ru',380,0.127,129),(4,'ru',381,0.3809,182.857),(4,'ru',382,0.127,133),(4,'ru',383,0.127,133),(4,'ru',384,0.127,134),(4,'ru',385,0.127,135),(4,'ru',386,0.2012,179.5),(4,'ru',387,0.2012,179.5),(4,'ru',388,0.127,174),(4,'ru',389,0.127,175),(4,'ru',390,0.127,176),(19,'ru',391,0.1231,154),(5,'ru',391,0.1256,191),(4,'ru',391,0.127,179),(4,'ru',392,0.127,198),(25,'ru',393,0.1197,99),(4,'ru',393,0.127,199),(27,'ru',393,0.1332,10),(29,'ru',393,0.1649,15),(4,'ru',394,0.2012,246),(4,'ru',395,0.127,206),(4,'ru',396,0.2012,206),(4,'ru',397,0.127,207),(4,'ru',398,0.127,208),(4,'ru',399,0.127,210),(4,'ru',400,0.127,215),(4,'ru',401,0.127,221),(4,'ru',402,0.2012,221),(4,'ru',403,0.127,222),(4,'ru',404,0.127,223),(4,'ru',405,0.2012,233.5),(4,'ru',406,0.127,237),(23,'ru',407,0.1348,296),(4,'ru',407,0.2012,268),(4,'ru',408,0.127,247),(4,'ru',409,0.127,250),(4,'ru',410,0.127,254),(4,'ru',411,0.127,255),(4,'ru',412,0.127,256),(4,'ru',413,0.127,256),(4,'ru',414,0.127,257),(4,'ru',415,0.127,258),(4,'ru',416,0.127,260),(4,'ru',417,0.127,262),(4,'ru',418,0.127,265),(4,'ru',419,0.127,267),(4,'ru',420,0.127,268),(21,'ru',421,0.1202,482),(4,'ru',421,0.127,272),(30,'ru',421,0.1338,146),(18,'ru',421,0.1852,71),(22,'ru',421,0.1942,251),(4,'ru',422,0.127,273),(4,'ru',423,0.127,274),(4,'ru',424,0.127,275),(4,'ru',425,0.127,277),(4,'ru',426,0.127,283),(18,'ru',427,0.1168,7),(25,'ru',427,0.1197,322),(19,'ru',427,0.1231,18),(5,'ru',427,0.1256,276),(4,'ru',427,0.127,288),(20,'ru',427,0.1409,58),(4,'ru',428,0.127,291),(4,'ru',429,0.127,294),(4,'ru',430,0.127,295),(5,'ru',431,0.1991,1.5),(22,'ru',432,0.1226,215),(26,'ru',432,0.1277,122),(14,'ru',432,0.1322,93),(15,'ru',432,0.196,465.5),(17,'ru',432,0.2243,110),(5,'ru',432,0.2917,133.25),(20,'ru',433,0.1409,160),(16,'ru',433,0.166,24),(25,'ru',433,0.1896,315.5),(5,'ru',433,0.1991,70.5),(5,'ru',434,0.1256,10),(7,'ru',434,0.2903,43),(29,'ru',435,0.1649,48),(16,'ru',435,0.166,63),(25,'ru',435,0.1896,189),(5,'ru',435,0.1991,136.5),(33,'ru',435,0.2211,135),(5,'ru',436,0.1256,17),(5,'ru',437,0.1991,92.5),(5,'ru',438,0.1256,18),(26,'ru',438,0.1277,330),(17,'ru',438,0.2243,55),(34,'ru',439,0.1407,92),(33,'ru',439,0.2211,136),(5,'ru',439,0.2917,141.75),(5,'ru',440,0.1256,21),(5,'ru',441,0.1256,23),(35,'ru',441,0.1722,21),(5,'ru',442,0.1256,36),(5,'ru',443,0.1256,41),(15,'ru',443,0.196,109),(5,'ru',444,0.1256,45),(5,'ru',445,0.1256,47),(5,'ru',446,0.1256,50),(27,'ru',447,0.1332,27),(23,'ru',447,0.1348,113),(5,'ru',447,0.1991,70.5),(31,'ru',447,0.3417,80),(25,'ru',448,0.1197,426),(20,'ru',448,0.1409,162),(5,'ru',448,0.2513,126.667),(25,'ru',449,0.1197,413),(5,'ru',449,0.1256,59),(20,'ru',449,0.1409,149),(5,'ru',450,0.1256,64),(21,'ru',451,0.1202,338),(22,'ru',451,0.1226,82),(5,'ru',451,0.1256,72),(5,'ru',452,0.1256,73),(5,'ru',453,0.1256,75),(25,'ru',454,0.1197,65),(5,'ru',454,0.1256,77),(24,'ru',454,0.1693,66),(35,'ru',454,0.1722,14),(5,'ru',455,0.1256,88),(5,'ru',456,0.1256,90),(5,'ru',457,0.1256,94),(5,'ru',458,0.1991,147),(5,'ru',459,0.1256,97),(17,'ru',459,0.1415,179),(29,'ru',459,0.1649,42),(16,'ru',459,0.166,23),(25,'ru',459,0.1896,166),(5,'ru',460,0.1256,98),(25,'ru',461,0.1197,119),(5,'ru',461,0.1256,109),(29,'ru',461,0.1649,35),(5,'ru',462,0.1256,115),(25,'ru',463,0.1197,226),(5,'ru',463,0.1256,115),(16,'ru',463,0.166,43),(5,'ru',464,0.1256,123),(7,'ru',464,0.1832,25),(25,'ru',465,0.1197,30),(19,'ru',465,0.1231,6),(5,'ru',465,0.1256,124),(26,'ru',465,0.1277,230),(24,'ru',465,0.1693,31),(15,'ru',466,0.1236,27),(5,'ru',466,0.1256,135),(5,'ru',467,0.1256,136),(5,'ru',468,0.1256,158),(5,'ru',469,0.1256,160),(5,'ru',470,0.1256,166),(5,'ru',471,0.1256,168),(5,'ru',472,0.2513,229.667),(5,'ru',473,0.1991,242.5),(25,'ru',474,0.1197,354),(5,'ru',474,0.1256,181),(20,'ru',474,0.1409,90),(34,'ru',474,0.3266,64.75),(25,'ru',475,0.1896,354),(20,'ru',475,0.2233,90),(5,'ru',475,0.2513,232),(34,'ru',475,0.4459,64.75),(25,'ru',476,0.1197,190),(5,'ru',476,0.1256,187),(16,'ru',476,0.166,7),(25,'ru',477,0.1896,190),(5,'ru',477,0.1991,187),(16,'ru',477,0.2632,7),(5,'ru',478,0.1256,192),(34,'ru',478,0.1407,7),(33,'ru',478,0.2211,113),(18,'ru',479,0.1168,102),(14,'ru',479,0.1322,14),(23,'ru',479,0.1348,244),(34,'ru',479,0.1407,116),(5,'ru',479,0.1991,272),(5,'ru',480,0.1256,209),(5,'ru',481,0.1256,211),(5,'ru',482,0.1256,217),(5,'ru',483,0.1256,225),(5,'ru',484,0.1256,226),(5,'ru',485,0.1991,241.5),(33,'ru',485,0.2211,128),(30,'ru',485,0.2675,156.667),(5,'ru',486,0.1256,229),(5,'ru',487,0.1256,230),(25,'ru',488,0.1197,340),(5,'ru',488,0.1256,231),(20,'ru',488,0.1409,76),(5,'ru',489,0.1256,235),(5,'ru',490,0.1256,236),(27,'ru',490,0.1332,98),(18,'ru',491,0.1168,389),(5,'ru',491,0.1256,239),(5,'ru',492,0.1256,242),(35,'ru',492,0.2729,19),(5,'ru',493,0.1256,251),(5,'ru',494,0.1256,252),(25,'ru',495,0.1197,60),(5,'ru',495,0.1256,255),(24,'ru',495,0.1693,61),(5,'ru',496,0.1256,258),(5,'ru',497,0.1256,272),(21,'ru',498,0.1202,249),(5,'ru',498,0.1256,274),(17,'ru',498,0.1415,58),(19,'ru',498,0.1951,291.5),(18,'ru',498,0.2713,186.5),(5,'ru',499,0.1256,277),(18,'ru',500,0.1168,9),(5,'ru',500,0.1256,278),(26,'ru',500,0.1277,262),(14,'ru',500,0.1322,116),(5,'ru',501,0.1256,282),(5,'ru',502,0.1256,284),(5,'ru',503,0.1256,287),(28,'ru',503,0.1508,6),(18,'ru',504,0.1168,52),(5,'ru',504,0.1256,289),(17,'ru',504,0.1415,4),(33,'ru',504,0.2211,80),(5,'ru',505,0.1256,292),(27,'ru',505,0.1332,111),(9,'ru',505,0.1892,24),(5,'ru',506,0.1256,293),(5,'ru',507,0.1991,321.5),(18,'ru',508,0.1168,133),(21,'ru',508,0.1202,484),(5,'ru',508,0.1256,300),(35,'ru',508,0.1722,24),(25,'ru',509,0.1197,150),(5,'ru',509,0.1256,302),(29,'ru',509,0.1649,66),(5,'ru',510,0.1256,314),(5,'ru',511,0.1256,318),(10,'ru',512,0.1586,7),(5,'ru',512,0.2513,346),(5,'ru',513,0.1256,320),(5,'ru',514,0.1256,323),(19,'ru',515,0.1231,51),(5,'ru',515,0.1256,327),(5,'ru',516,0.1256,328),(5,'ru',517,0.1256,329),(5,'ru',518,0.1256,331),(5,'ru',519,0.1256,333),(5,'ru',520,0.1256,342),(5,'ru',521,0.1256,345),(5,'ru',522,0.1256,346),(5,'ru',523,0.1256,348),(5,'ru',524,0.1256,349),(5,'ru',525,0.1256,352),(34,'ru',525,0.1407,138),(5,'ru',526,0.1256,353),(5,'ru',527,0.1256,355),(15,'ru',528,0.1236,81),(5,'ru',528,0.1256,356),(25,'ru',528,0.1896,354),(20,'ru',528,0.2233,90),(5,'ru',529,0.1256,371),(5,'ru',530,0.1256,373),(5,'ru',531,0.1256,377),(6,'ru',532,0.2314,1),(7,'ru',533,0.1832,1),(7,'ru',534,0.1832,3),(7,'ru',535,0.1832,6),(7,'ru',536,0.1832,13),(7,'ru',537,0.2903,26),(7,'ru',538,0.2903,26.5),(7,'ru',539,0.1832,18),(25,'ru',540,0.1197,385),(20,'ru',540,0.1409,121),(17,'ru',540,0.1415,24),(7,'ru',540,0.1832,20),(22,'ru',541,0.1226,399),(30,'ru',541,0.1338,89),(7,'ru',541,0.1832,21),(14,'ru',541,0.2096,75),(18,'ru',542,0.1168,124),(19,'ru',542,0.1231,251),(26,'ru',542,0.1277,349),(17,'ru',542,0.1415,9),(7,'ru',542,0.1832,23),(18,'ru',543,0.1168,388),(7,'ru',543,0.1832,27),(7,'ru',544,0.1832,28),(14,'ru',545,0.1322,62),(13,'ru',545,0.2314,2),(7,'ru',545,0.2903,36),(7,'ru',546,0.1832,36),(25,'ru',547,0.1197,144),(29,'ru',547,0.1649,60),(7,'ru',547,0.1832,39),(20,'ru',548,0.1409,127),(16,'ru',548,0.166,42),(7,'ru',548,0.1832,41),(24,'ru',548,0.2683,14),(25,'ru',548,0.2778,160.5),(7,'ru',549,0.1832,42),(18,'ru',550,0.1168,384),(7,'ru',550,0.2903,42),(7,'ru',551,0.1832,50),(7,'ru',552,0.1832,52),(28,'ru',552,0.2391,135.5),(22,'ru',552,0.2846,217.5),(31,'ru',552,0.4415,70.2857),(7,'ru',553,0.1832,53),(28,'ru',553,0.5408,105.727),(7,'ru',554,0.1832,56),(7,'ru',555,0.1832,57),(7,'ru',556,0.2903,69),(7,'ru',557,0.1832,59),(7,'ru',558,0.1832,60),(7,'ru',559,0.1832,62),(7,'ru',560,0.1832,63),(7,'ru',561,0.1832,77),(8,'ru',562,0.2314,1),(27,'ru',563,0.1332,146),(9,'ru',563,0.1892,51),(8,'ru',563,0.2314,2),(9,'ru',564,0.1892,1),(21,'ru',565,0.1202,152),(26,'ru',565,0.1277,213),(27,'ru',565,0.1332,117),(23,'ru',565,0.1348,259),(9,'ru',565,0.2999,12.5),(27,'ru',566,0.1332,134),(34,'ru',566,0.1407,2),(35,'ru',566,0.1722,1),(36,'ru',566,0.1746,1),(9,'ru',566,0.1892,6),(21,'ru',567,0.1202,147),(9,'ru',567,0.1892,10),(26,'ru',568,0.1277,159),(14,'ru',568,0.1322,16),(23,'ru',568,0.1348,238),(9,'ru',568,0.1892,21),(21,'ru',569,0.1202,163),(27,'ru',569,0.1332,113),(10,'ru',569,0.1586,150),(23,'ru',569,0.2137,286.5),(9,'ru',569,0.4393,50.75),(14,'ru',570,0.1322,182),(17,'ru',570,0.1415,98),(9,'ru',570,0.1892,28),(27,'ru',571,0.1332,160),(23,'ru',571,0.1348,103),(18,'ru',571,0.1852,132),(9,'ru',571,0.1892,31),(15,'ru',571,0.196,100),(27,'ru',572,0.1332,162),(9,'ru',572,0.1892,33),(9,'ru',573,0.1892,42),(9,'ru',574,0.1892,43),(9,'ru',575,0.1892,44),(27,'ru',576,0.1332,142),(9,'ru',576,0.1892,47),(18,'ru',577,0.1168,160),(10,'ru',577,0.1586,153),(9,'ru',577,0.1892,59),(21,'ru',578,0.1202,164),(27,'ru',578,0.1332,115),(10,'ru',578,0.2514,152.5),(9,'ru',578,0.3784,62.6667),(9,'ru',579,0.1892,61),(9,'ru',580,0.1892,64),(9,'ru',581,0.1892,66),(10,'ru',582,0.1586,2),(18,'ru',583,0.1168,216),(10,'ru',583,0.2514,9.5),(18,'ru',584,0.1168,263),(10,'ru',584,0.1586,5),(33,'ru',584,0.2211,131),(10,'ru',585,0.1586,6),(10,'ru',586,0.3173,10.6667),(10,'ru',587,0.1586,10),(10,'ru',588,0.1586,18),(10,'ru',589,0.1586,19),(10,'ru',590,0.1586,20),(10,'ru',591,0.1586,21),(10,'ru',592,0.1586,22),(10,'ru',593,0.2514,47),(10,'ru',594,0.1586,26),(10,'ru',595,0.1586,27),(10,'ru',596,0.1586,28),(18,'ru',597,0.1168,206),(10,'ru',597,0.1586,29),(10,'ru',598,0.1586,30),(10,'ru',599,0.1586,31),(10,'ru',600,0.1586,63),(10,'ru',601,0.1586,64),(10,'ru',602,0.1586,72),(21,'ru',603,0.1202,383),(10,'ru',603,0.2514,100),(10,'ru',604,0.1586,75),(10,'ru',605,0.2514,110),(10,'ru',606,0.1586,91),(25,'ru',607,0.1197,235),(22,'ru',607,0.1226,102),(17,'ru',607,0.1415,162),(10,'ru',607,0.1586,98),(16,'ru',607,0.166,52),(15,'ru',607,0.196,373),(27,'ru',607,0.2111,257.5),(30,'ru',607,0.212,136.5),(10,'ru',608,0.1586,99),(10,'ru',609,0.1586,106),(10,'ru',610,0.1586,108),(18,'ru',611,0.1168,528),(23,'ru',611,0.1348,153),(10,'ru',611,0.1586,109),(19,'ru',611,0.1951,254),(22,'ru',611,0.2846,216.5),(10,'ru',612,0.1586,110),(10,'ru',613,0.1586,111),(10,'ru',614,0.1586,112),(10,'ru',615,0.1586,113),(10,'ru',616,0.1586,114),(10,'ru',617,0.1586,115),(10,'ru',618,0.1586,116),(10,'ru',619,0.1586,117),(10,'ru',620,0.1586,118),(10,'ru',621,0.1586,119),(10,'ru',622,0.1586,122),(10,'ru',623,0.1586,123),(10,'ru',624,0.1586,124),(10,'ru',625,0.1586,125),(10,'ru',626,0.1586,127),(10,'ru',627,0.1586,142),(10,'ru',628,0.1586,152),(10,'ru',629,0.1586,155),(10,'ru',630,0.1586,156),(10,'ru',631,0.1586,157),(10,'ru',632,0.1586,158),(10,'ru',633,0.1586,164),(12,'ru',634,0.2314,1),(25,'ru',635,0.1197,264),(26,'ru',635,0.1277,245),(14,'ru',635,0.1322,1),(16,'ru',635,0.166,81),(22,'ru',636,0.1226,341),(17,'ru',636,0.1415,125),(14,'ru',636,0.2096,30.5),(14,'ru',637,0.1322,4),(14,'ru',638,0.1322,5),(27,'ru',638,0.1332,138),(33,'ru',638,0.2211,158),(14,'ru',639,0.1322,7),(26,'ru',639,0.2023,242.5),(26,'ru',640,0.1277,252),(14,'ru',640,0.1322,20),(14,'ru',641,0.1322,25),(14,'ru',642,0.2645,96.6667),(33,'ru',642,0.3238,149),(14,'ru',643,0.1322,32),(14,'ru',644,0.1322,35),(14,'ru',645,0.1322,38),(23,'ru',645,0.1348,15),(32,'ru',645,0.2522,82.5),(14,'ru',646,0.1322,51),(21,'ru',647,0.1202,174),(14,'ru',647,0.1322,52),(14,'ru',648,0.1322,53),(15,'ru',649,0.1236,78),(14,'ru',649,0.1322,61),(28,'ru',649,0.1508,195),(26,'ru',649,0.2023,211.5),(22,'ru',650,0.1226,411),(14,'ru',650,0.2096,75),(18,'ru',651,0.1168,29),(14,'ru',651,0.1322,72),(18,'ru',652,0.1168,31),(21,'ru',652,0.1202,93),(19,'ru',652,0.1231,74),(23,'ru',652,0.1348,152),(17,'ru',652,0.1415,102),(26,'ru',652,0.2023,202),(14,'ru',652,0.2096,75.5),(33,'ru',652,0.2211,98),(14,'ru',653,0.2096,152),(26,'ru',654,0.1277,329),(14,'ru',654,0.1322,78),(15,'ru',654,0.196,467.5),(14,'ru',655,0.1322,79),(14,'ru',656,0.1322,80),(14,'ru',657,0.1322,86),(14,'ru',658,0.1322,87),(14,'ru',659,0.1322,89),(27,'ru',660,0.1332,158),(18,'ru',660,0.1852,148),(30,'ru',660,0.212,274),(35,'ru',660,0.2729,38),(36,'ru',660,0.2767,41),(14,'ru',660,0.307,99),(21,'ru',660,0.3375,379.333),(14,'ru',661,0.1322,92),(14,'ru',662,0.1322,96),(14,'ru',663,0.1322,97),(18,'ru',664,0.1168,156),(19,'ru',664,0.1231,181),(14,'ru',664,0.2096,150.5),(14,'ru',665,0.1322,104),(19,'ru',665,0.1951,168.5),(14,'ru',666,0.1322,105),(18,'ru',667,0.1168,13),(14,'ru',667,0.1322,111),(18,'ru',668,0.1168,380),(14,'ru',668,0.1322,114),(18,'ru',669,0.1168,8),(26,'ru',669,0.1277,201),(14,'ru',669,0.1322,115),(34,'ru',669,0.1407,91),(14,'ru',670,0.2096,184.5),(18,'ru',671,0.1168,87),(14,'ru',671,0.1322,121),(14,'ru',672,0.1322,125),(21,'ru',672,0.2405,263.667),(14,'ru',673,0.1322,126),(21,'ru',673,0.3108,266),(35,'ru',673,0.3444,17),(14,'ru',674,0.1322,127),(21,'ru',674,0.1906,243),(17,'ru',674,0.283,81.6667),(19,'ru',674,0.2858,205.5),(31,'ru',674,0.2944,50.3333),(25,'ru',675,0.1197,392),(22,'ru',675,0.1226,178),(26,'ru',675,0.1277,341),(27,'ru',675,0.1332,40),(20,'ru',675,0.1409,128),(14,'ru',675,0.2096,129),(30,'ru',675,0.2675,124),(31,'ru',675,0.2944,51.3333),(21,'ru',675,0.3108,220.2),(17,'ru',675,0.3286,79.75),(22,'ru',676,0.1226,159),(14,'ru',676,0.1322,129),(14,'ru',677,0.1322,133),(27,'ru',677,0.1332,126),(21,'ru',678,0.1202,239),(14,'ru',678,0.2096,144.5),(21,'ru',679,0.1202,240),(14,'ru',679,0.1322,136),(14,'ru',680,0.1322,137),(14,'ru',681,0.1322,138),(25,'ru',682,0.1197,44),(14,'ru',682,0.1322,142),(28,'ru',682,0.1508,8),(24,'ru',682,0.1693,45),(14,'ru',683,0.1322,144),(30,'ru',683,0.1338,171),(20,'ru',683,0.1409,95),(17,'ru',683,0.1415,46),(26,'ru',683,0.2023,271.5),(25,'ru',683,0.2393,139.333),(21,'ru',683,0.2405,368.333),(24,'ru',683,0.2683,30.5),(22,'ru',683,0.344,282.333),(15,'ru',683,0.392,183.125),(26,'ru',684,0.1277,291),(14,'ru',684,0.1322,151),(26,'ru',685,0.2023,300),(14,'ru',685,0.2096,171.5),(28,'ru',685,0.3017,44.6667),(15,'ru',686,0.1236,132),(22,'ru',686,0.2451,181.333),(26,'ru',686,0.2964,300),(14,'ru',686,0.307,171.5),(28,'ru',686,0.4235,44.6667),(14,'ru',687,0.1322,153),(25,'ru',688,0.1197,382),(20,'ru',688,0.1409,118),(17,'ru',688,0.1415,61),(18,'ru',688,0.1852,34.5),(14,'ru',688,0.2096,171.5),(14,'ru',689,0.1322,158),(22,'ru',690,0.1226,51),(14,'ru',690,0.1322,161),(21,'ru',690,0.1906,341.5),(19,'ru',690,0.2462,125.333),(17,'ru',690,0.283,97),(14,'ru',691,0.1322,162),(14,'ru',692,0.2096,162),(21,'ru',693,0.1202,346),(26,'ru',693,0.1277,345),(14,'ru',693,0.1322,164),(27,'ru',693,0.1332,95),(30,'ru',693,0.1338,190),(18,'ru',693,0.1852,341.5),(15,'ru',693,0.196,262),(21,'ru',694,0.1202,394),(14,'ru',694,0.1322,167),(14,'ru',695,0.1322,173),(26,'ru',696,0.1277,249),(14,'ru',696,0.1322,184),(14,'ru',697,0.1322,188),(27,'ru',697,0.1332,100),(23,'ru',697,0.1348,191),(21,'ru',697,0.2792,204.5),(21,'ru',698,0.1202,440),(14,'ru',698,0.1322,190),(14,'ru',699,0.1322,192),(18,'ru',700,0.1168,83),(14,'ru',700,0.1322,196),(19,'ru',700,0.1951,116.5),(23,'ru',700,0.2137,190),(14,'ru',701,0.1322,198),(14,'ru',702,0.1322,199),(14,'ru',703,0.1322,202),(14,'ru',704,0.1322,204),(23,'ru',704,0.1348,301),(22,'ru',704,0.2451,431),(15,'ru',704,0.2871,517.75),(14,'ru',705,0.1322,210),(18,'ru',705,0.2337,301.333),(14,'ru',706,0.1322,211),(27,'ru',706,0.1332,69),(17,'ru',706,0.1415,180),(18,'ru',706,0.2713,358.25),(14,'ru',707,0.1322,215),(17,'ru',707,0.1415,181),(22,'ru',707,0.1942,140.5),(18,'ru',707,0.328,402),(14,'ru',708,0.1322,221),(19,'ru',709,0.1231,170),(14,'ru',709,0.1322,222),(27,'ru',709,0.1332,75),(30,'ru',709,0.1338,258),(23,'ru',709,0.1348,161),(34,'ru',709,0.1407,9),(35,'ru',709,0.1722,7),(36,'ru',709,0.1746,4),(33,'ru',709,0.3238,130),(14,'ru',710,0.1322,224),(14,'ru',711,0.1322,228),(14,'ru',712,0.1322,231),(14,'ru',713,0.2096,233.5),(14,'ru',714,0.2096,239),(14,'ru',715,0.1322,238),(14,'ru',716,0.1322,239),(14,'ru',717,0.1322,240),(14,'ru',718,0.1322,241),(14,'ru',719,0.1322,242),(14,'ru',720,0.1322,253),(14,'ru',721,0.1322,254),(14,'ru',722,0.1322,255),(14,'ru',723,0.1322,256),(14,'ru',724,0.1322,257),(25,'ru',725,0.1197,263),(17,'ru',725,0.1415,114),(16,'ru',725,0.166,80),(15,'ru',725,0.4831,203.143),(17,'ru',726,0.1415,116),(15,'ru',726,0.4278,204.8),(15,'ru',727,0.1236,15),(15,'ru',728,0.2473,38.3333),(32,'ru',728,0.2522,91.5),(21,'ru',729,0.1202,276),(26,'ru',729,0.1277,226),(17,'ru',729,0.1415,117),(15,'ru',729,0.2871,78.25),(22,'ru',729,0.4071,213.111),(15,'ru',730,0.1236,36),(15,'ru',731,0.1236,37),(30,'ru',731,0.3106,43.5),(15,'ru',732,0.1236,41),(15,'ru',733,0.1236,44),(34,'ru',733,0.1407,144),(35,'ru',733,0.1722,62),(36,'ru',733,0.1746,67),(15,'ru',734,0.1236,46),(15,'ru',735,0.1236,53),(21,'ru',736,0.1202,435),(15,'ru',736,0.1236,54),(23,'ru',736,0.1348,148),(15,'ru',737,0.2473,224.667),(15,'ru',738,0.2473,225.667),(15,'ru',739,0.1236,80),(19,'ru',740,0.1231,193),(15,'ru',740,0.1236,87),(27,'ru',740,0.1332,153),(15,'ru',741,0.1236,88),(15,'ru',742,0.1236,91),(19,'ru',743,0.1231,301),(15,'ru',743,0.1236,94),(30,'ru',744,0.1338,264),(15,'ru',744,0.196,101),(34,'ru',744,0.223,66),(27,'ru',744,0.2664,115.333),(15,'ru',745,0.1236,102),(19,'ru',745,0.1951,258),(15,'ru',746,0.1236,126),(19,'ru',747,0.1231,49),(17,'ru',747,0.1415,192),(23,'ru',747,0.2137,67.5),(15,'ru',747,0.2473,135),(18,'ru',747,0.302,397.2),(31,'ru',747,0.6252,80.7778),(18,'ru',748,0.1168,519),(25,'ru',748,0.1197,48),(27,'ru',748,0.1332,208),(24,'ru',748,0.1693,49),(23,'ru',748,0.2137,66),(21,'ru',748,0.2792,100.25),(15,'ru',748,0.3196,407.2),(15,'ru',749,0.1236,138),(15,'ru',750,0.1236,139),(26,'ru',751,0.1277,343),(15,'ru',751,0.196,139),(15,'ru',752,0.1236,142),(18,'ru',753,0.1168,517),(15,'ru',753,0.1236,143),(34,'ru',754,0.1407,171),(35,'ru',754,0.1722,74),(36,'ru',754,0.1746,80),(22,'ru',754,0.1942,155),(30,'ru',754,0.2675,141.333),(18,'ru',754,0.4449,371.154),(15,'ru',754,0.5812,304.6),(15,'ru',755,0.1236,160),(34,'ru',755,0.1407,163),(15,'ru',756,0.1236,162),(15,'ru',757,0.392,298.125),(15,'ru',758,0.1236,167),(21,'ru',759,0.1906,43),(18,'ru',759,0.2337,304.333),(22,'ru',759,0.2846,97.5),(23,'ru',759,0.3785,116),(15,'ru',759,0.392,309.125),(27,'ru',759,0.4222,248.25),(28,'ru',759,0.4235,172.833),(15,'ru',760,0.196,215.5),(15,'ru',761,0.1236,200),(15,'ru',762,0.1236,205),(15,'ru',763,0.2871,312.75),(15,'ru',764,0.1236,237),(15,'ru',765,0.1236,242),(21,'ru',766,0.1202,73),(15,'ru',766,0.196,290),(22,'ru',766,0.2846,204),(15,'ru',767,0.1236,274),(15,'ru',768,0.1236,279),(15,'ru',769,0.1236,318),(15,'ru',770,0.1236,355),(15,'ru',771,0.1236,360),(30,'ru',772,0.1338,45),(22,'ru',772,0.2451,218.333),(15,'ru',772,0.3196,440.6),(15,'ru',773,0.1236,402),(21,'ru',774,0.1202,122),(15,'ru',774,0.196,436.5),(15,'ru',775,0.1236,429),(15,'ru',776,0.1236,431),(15,'ru',777,0.1236,436),(18,'ru',778,0.1168,88),(15,'ru',778,0.1236,446),(34,'ru',778,0.1407,128),(35,'ru',778,0.1722,44),(36,'ru',778,0.1746,49),(19,'ru',778,0.1951,261.5),(27,'ru',778,0.2111,119),(23,'ru',778,0.2137,127.5),(21,'ru',778,0.2405,229.333),(30,'ru',778,0.2675,114),(15,'ru',779,0.1236,448),(15,'ru',780,0.196,457.5),(15,'ru',781,0.2871,472.25),(21,'ru',782,0.1202,35),(23,'ru',782,0.1348,106),(15,'ru',782,0.2871,475.25),(18,'ru',783,0.1168,170),(22,'ru',783,0.1226,99),(15,'ru',783,0.196,466.5),(15,'ru',784,0.1236,478),(26,'ru',784,0.1277,154),(15,'ru',785,0.196,506.5),(15,'ru',786,0.1236,488),(15,'ru',787,0.1236,489),(34,'ru',787,0.223,152.5),(17,'ru',787,0.3286,153.5),(15,'ru',788,0.1236,495),(15,'ru',789,0.1236,498),(18,'ru',789,0.2337,324.667),(15,'ru',790,0.1236,500),(15,'ru',791,0.1236,501),(15,'ru',792,0.1236,502),(21,'ru',792,0.1906,65),(15,'ru',793,0.1236,505),(15,'ru',794,0.1236,508),(30,'ru',794,0.2675,201.667),(15,'ru',795,0.1236,509),(21,'ru',796,0.1202,442),(27,'ru',796,0.1332,205),(28,'ru',796,0.1508,166),(15,'ru',796,0.196,535.5),(30,'ru',796,0.3106,158.75),(23,'ru',796,0.313,64.75),(22,'ru',796,0.3677,217.286),(15,'ru',797,0.1236,521),(15,'ru',798,0.1236,522),(21,'ru',799,0.1202,485),(15,'ru',799,0.1236,524),(26,'ru',799,0.1277,288),(18,'ru',799,0.2713,191.25),(15,'ru',800,0.1236,530),(15,'ru',801,0.1236,532),(15,'ru',802,0.1236,534),(15,'ru',803,0.1236,535),(26,'ru',803,0.1277,232),(15,'ru',804,0.196,535),(26,'ru',804,0.2023,232),(22,'ru',804,0.4071,224.667),(15,'ru',805,0.1236,536),(15,'ru',806,0.1236,540),(15,'ru',807,0.1236,542),(15,'ru',808,0.1236,555),(25,'ru',809,0.1197,278),(15,'ru',809,0.1236,556),(20,'ru',809,0.1409,14),(18,'ru',810,0.1168,70),(25,'ru',810,0.1197,202),(16,'ru',810,0.166,19),(33,'ru',810,0.2211,109),(17,'ru',811,0.1415,179),(29,'ru',811,0.1649,42),(16,'ru',811,0.166,23),(25,'ru',811,0.1896,166),(25,'ru',812,0.1197,209),(16,'ru',812,0.166,26),(25,'ru',813,0.1197,210),(19,'ru',813,0.1231,34),(26,'ru',813,0.1277,221),(27,'ru',813,0.1332,53),(16,'ru',813,0.166,27),(25,'ru',814,0.1197,215),(16,'ru',814,0.166,32),(25,'ru',815,0.1197,216),(16,'ru',815,0.166,33),(25,'ru',816,0.1197,218),(16,'ru',816,0.166,35),(25,'ru',817,0.1197,224),(16,'ru',817,0.166,41),(25,'ru',818,0.1896,224),(16,'ru',818,0.2632,41),(25,'ru',819,0.1197,242),(16,'ru',819,0.166,59),(25,'ru',820,0.1197,243),(16,'ru',820,0.166,60),(29,'ru',821,0.1649,45),(16,'ru',821,0.166,64),(25,'ru',821,0.1896,188),(20,'ru',822,0.1409,179),(17,'ru',822,0.1415,56),(29,'ru',822,0.1649,86),(16,'ru',822,0.166,75),(24,'ru',822,0.1693,80),(25,'ru',822,0.2778,237.5),(25,'ru',823,0.1197,261),(17,'ru',823,0.1415,1),(16,'ru',823,0.166,78),(17,'ru',824,0.1415,8),(25,'ru',825,0.1197,389),(21,'ru',825,0.1202,317),(20,'ru',825,0.1409,125),(17,'ru',825,0.283,56),(19,'ru',825,0.2858,167),(22,'ru',825,0.344,141.333),(17,'ru',826,0.1415,18),(25,'ru',827,0.1197,11),(23,'ru',827,0.1348,279),(17,'ru',827,0.1415,22),(24,'ru',827,0.1693,12),(36,'ru',827,0.1746,23),(18,'ru',828,0.1168,11),(17,'ru',828,0.1415,28),(21,'ru',828,0.1906,364.5),(22,'ru',828,0.1942,145.5),(30,'ru',829,0.1338,280),(17,'ru',829,0.1415,37),(21,'ru',830,0.1202,333),(17,'ru',830,0.1415,44),(19,'ru',830,0.2858,156.25),(27,'ru',831,0.1332,71),(17,'ru',831,0.1415,60),(18,'ru',831,0.2713,241),(17,'ru',832,0.1415,65),(18,'ru',832,0.2337,251),(17,'ru',833,0.2243,65),(18,'ru',833,0.328,251),(17,'ru',834,0.1415,67),(18,'ru',834,0.2337,265),(17,'ru',835,0.2243,67),(18,'ru',835,0.328,265),(17,'ru',836,0.1415,69),(17,'ru',837,0.1415,78),(19,'ru',837,0.1951,167),(22,'ru',837,0.2451,141.333),(17,'ru',838,0.2243,129),(17,'ru',839,0.1415,91),(17,'ru',840,0.1415,97),(17,'ru',841,0.1415,106),(25,'ru',842,0.1197,406),(19,'ru',842,0.1231,46),(26,'ru',842,0.1277,108),(20,'ru',842,0.1409,142),(17,'ru',842,0.1415,107),(27,'ru',842,0.2111,134),(22,'ru',842,0.2451,216),(23,'ru',842,0.2696,113.333),(21,'ru',842,0.2792,164.25),(30,'ru',842,0.3755,134.833),(28,'ru',842,0.4782,132.25),(17,'ru',843,0.1415,109),(21,'ru',843,0.1906,193),(26,'ru',844,0.1277,332),(17,'ru',844,0.1415,118),(17,'ru',845,0.1415,121),(21,'ru',846,0.1202,363),(17,'ru',846,0.1415,123),(17,'ru',847,0.1415,130),(17,'ru',848,0.1415,131),(17,'ru',849,0.2243,143.5),(23,'ru',850,0.1348,89),(34,'ru',850,0.1407,162),(17,'ru',850,0.1415,141),(17,'ru',851,0.1415,149),(17,'ru',852,0.1415,151),(17,'ru',853,0.1415,152),(17,'ru',854,0.1415,178),(17,'ru',855,0.1415,183),(25,'ru',856,0.1197,16),(26,'ru',856,0.1277,237),(17,'ru',856,0.1415,184),(24,'ru',856,0.1693,17),(18,'ru',856,0.1852,365.5),(22,'ru',856,0.1942,274),(21,'ru',857,0.1202,340),(34,'ru',857,0.1407,90),(17,'ru',857,0.1415,188),(36,'ru',857,0.1746,40),(33,'ru',857,0.3238,125.5),(17,'ru',858,0.1415,190),(25,'ru',859,0.1197,449),(20,'ru',859,0.1409,185),(18,'ru',859,0.1852,107.5),(18,'ru',860,0.3704,218.125),(18,'ru',861,0.1168,5),(25,'ru',861,0.1197,378),(20,'ru',861,0.1409,114),(25,'ru',862,0.1197,381),(20,'ru',862,0.1409,117),(18,'ru',862,0.1852,14),(19,'ru',862,0.1951,280),(18,'ru',863,0.1168,20),(18,'ru',864,0.2337,52.6667),(18,'ru',865,0.1168,33),(18,'ru',866,0.4674,276.667),(18,'ru',867,0.1168,53),(19,'ru',867,0.1231,75),(18,'ru',868,0.1168,57),(19,'ru',868,0.1231,148),(18,'ru',869,0.1168,58),(21,'ru',869,0.1202,89),(18,'ru',870,0.1168,59),(18,'ru',871,0.1168,60),(21,'ru',871,0.4809,442.667),(18,'ru',872,0.1168,63),(18,'ru',873,0.1168,64),(18,'ru',874,0.1168,65),(18,'ru',875,0.1168,66),(18,'ru',876,0.1168,67),(34,'ru',876,0.1407,113),(18,'ru',877,0.1168,71),(19,'ru',877,0.1231,26),(18,'ru',878,0.1168,76),(21,'ru',879,0.1202,431),(26,'ru',879,0.1277,197),(18,'ru',879,0.1852,91.5),(18,'ru',880,0.1852,104.5),(19,'ru',880,0.1951,177.5),(18,'ru',881,0.1168,89),(19,'ru',881,0.1231,297),(26,'ru',881,0.1277,337),(34,'ru',881,0.1407,187),(35,'ru',881,0.1722,37),(18,'ru',882,0.1168,92),(18,'ru',883,0.1852,217),(18,'ru',884,0.3881,290.889),(18,'ru',885,0.1168,101),(18,'ru',886,0.1168,107),(18,'ru',887,0.1168,109),(18,'ru',888,0.1168,112),(26,'ru',888,0.2023,255),(18,'ru',889,0.1168,115),(18,'ru',890,0.1168,126),(18,'ru',891,0.1168,131),(21,'ru',891,0.1202,367),(19,'ru',891,0.1231,255),(18,'ru',892,0.1168,132),(18,'ru',893,0.1168,136),(18,'ru',894,0.1168,146),(18,'ru',895,0.1168,147),(18,'ru',896,0.1168,148),(30,'ru',896,0.1338,274),(35,'ru',896,0.1722,38),(36,'ru',896,0.1746,41),(21,'ru',896,0.1906,354),(18,'ru',897,0.1168,152),(18,'ru',898,0.1168,155),(18,'ru',899,0.1168,158),(25,'ru',900,0.1197,398),(19,'ru',900,0.1231,173),(20,'ru',900,0.1409,134),(21,'ru',900,0.1906,349.5),(18,'ru',900,0.2713,366.5),(18,'ru',901,0.1168,168),(18,'ru',902,0.1168,172),(22,'ru',903,0.1226,154),(27,'ru',903,0.1332,228),(23,'ru',903,0.1348,34),(18,'ru',903,0.2337,322.333),(18,'ru',904,0.1168,242),(18,'ru',905,0.1168,256),(18,'ru',906,0.1168,268),(18,'ru',907,0.1852,361),(18,'ru',908,0.1168,271),(19,'ru',909,0.1951,277),(30,'ru',909,0.212,274),(18,'ru',909,0.2337,315.667),(26,'ru',910,0.1277,235),(18,'ru',910,0.1852,303),(22,'ru',911,0.1226,230),(23,'ru',911,0.1348,38),(18,'ru',911,0.1852,307.5),(18,'ru',912,0.1168,338),(18,'ru',913,0.1168,340),(21,'ru',913,0.1202,179),(18,'ru',914,0.1168,344),(30,'ru',915,0.1338,279),(18,'ru',915,0.1852,363.5),(18,'ru',916,0.1168,365),(21,'ru',916,0.1202,390),(18,'ru',917,0.1852,406.5),(18,'ru',918,0.2713,442.75),(27,'ru',919,0.1332,213),(18,'ru',919,0.1852,426),(22,'ru',919,0.1942,270.5),(25,'ru',920,0.1197,451),(21,'ru',920,0.1202,314),(20,'ru',920,0.1409,187),(18,'ru',920,0.2713,452.75),(19,'ru',920,0.3456,138.5),(18,'ru',921,0.1852,446),(18,'ru',922,0.1168,430),(18,'ru',923,0.1168,444),(18,'ru',924,0.1852,485),(18,'ru',925,0.1852,486),(18,'ru',926,0.1852,487),(18,'ru',927,0.1852,481),(27,'ru',927,0.2111,133.5),(21,'ru',927,0.3108,170.2),(18,'ru',928,0.1852,489),(19,'ru',928,0.1951,127.5),(18,'ru',929,0.1852,494),(18,'ru',930,0.1852,497),(18,'ru',931,0.1168,510),(18,'ru',932,0.1168,511),(31,'ru',932,0.4889,80.7778),(18,'ru',933,0.1168,514),(18,'ru',934,0.1168,516),(18,'ru',935,0.1168,531),(21,'ru',935,0.1202,441),(18,'ru',936,0.1168,537),(18,'ru',937,0.1168,547),(19,'ru',938,0.1231,17),(19,'ru',939,0.1231,23),(19,'ru',940,0.1231,25),(19,'ru',941,0.1951,173.5),(21,'ru',942,0.1202,430),(19,'ru',942,0.1231,33),(19,'ru',943,0.1231,41),(26,'ru',943,0.1277,5),(19,'ru',944,0.1231,44),(25,'ru',945,0.1197,405),(19,'ru',945,0.1231,45),(20,'ru',945,0.1409,141),(19,'ru',946,0.1231,48),(19,'ru',947,0.1231,53),(19,'ru',948,0.1231,54),(19,'ru',949,0.1231,56),(19,'ru',950,0.1231,58),(19,'ru',951,0.1231,59),(19,'ru',952,0.1231,62),(19,'ru',953,0.5031,137.312),(21,'ru',954,0.1202,491),(19,'ru',954,0.1951,173),(23,'ru',954,0.2137,76.5),(22,'ru',954,0.3677,230),(19,'ru',955,0.1231,78),(19,'ru',956,0.3182,191.4),(19,'ru',957,0.4258,191.4),(21,'ru',958,0.1202,423),(19,'ru',958,0.2462,202.667),(19,'ru',959,0.1231,84),(19,'ru',960,0.2462,203.333),(19,'ru',961,0.2462,203.333),(19,'ru',962,0.2462,203.333),(19,'ru',963,0.1231,88),(19,'ru',964,0.1231,90),(19,'ru',965,0.2462,96.3333),(19,'ru',966,0.1951,191.5),(21,'ru',966,0.2405,312),(19,'ru',967,0.1231,112),(19,'ru',968,0.1231,117),(26,'ru',968,0.1277,336),(30,'ru',968,0.1338,147),(19,'ru',969,0.1951,120.5),(19,'ru',970,0.1951,120.5),(19,'ru',971,0.1231,122),(19,'ru',972,0.1231,124),(21,'ru',973,0.1202,184),(19,'ru',973,0.1231,139),(30,'ru',973,0.1338,103),(21,'ru',974,0.1202,186),(19,'ru',974,0.1231,141),(19,'ru',975,0.1231,147),(23,'ru',975,0.1348,195),(26,'ru',975,0.2023,302),(22,'ru',975,0.2451,179.667),(19,'ru',976,0.1231,153),(19,'ru',977,0.1231,155),(19,'ru',978,0.1231,156),(19,'ru',979,0.1951,156),(19,'ru',980,0.1951,187),(30,'ru',981,0.1338,12),(19,'ru',981,0.1951,195),(19,'ru',982,0.2462,190),(19,'ru',983,0.3693,190),(21,'ru',984,0.1202,337),(19,'ru',984,0.1231,169),(19,'ru',985,0.1231,179),(21,'ru',986,0.1202,501),(19,'ru',986,0.1231,180),(19,'ru',987,0.1231,189),(19,'ru',988,0.1231,192),(26,'ru',988,0.1277,206),(19,'ru',989,0.1951,259),(19,'ru',990,0.1231,201),(19,'ru',991,0.1951,263.5),(21,'ru',991,0.2405,203),(19,'ru',992,0.1231,215),(21,'ru',993,0.1202,342),(19,'ru',993,0.4089,256),(19,'ru',994,0.3182,249.6),(21,'ru',995,0.1202,318),(19,'ru',995,0.3182,249.6),(23,'ru',996,0.1348,121),(19,'ru',996,0.1951,236.5),(19,'ru',997,0.1231,235),(19,'ru',998,0.1951,265),(19,'ru',999,0.1231,245),(30,'ru',999,0.1338,104),(19,'ru',1000,0.1231,247),(19,'ru',1001,0.1231,252),(21,'ru',1002,0.1202,345),(19,'ru',1002,0.1231,257),(21,'ru',1003,0.1202,287),(19,'ru',1003,0.1951,279),(19,'ru',1004,0.1951,282),(19,'ru',1005,0.1951,284),(19,'ru',1006,0.1231,274),(19,'ru',1007,0.1231,275),(19,'ru',1008,0.1231,280),(19,'ru',1009,0.1231,298),(19,'ru',1010,0.1231,300),(19,'ru',1011,0.1231,310),(26,'ru',1011,0.2023,47),(31,'ru',1011,0.2333,98),(19,'ru',1012,0.1231,324),(20,'ru',1013,0.1409,8),(29,'ru',1013,0.1649,27),(25,'ru',1013,0.1896,191.5),(25,'ru',1014,0.1197,273),(20,'ru',1014,0.1409,9),(25,'ru',1015,0.1197,276),(20,'ru',1015,0.1409,12),(23,'ru',1016,0.1348,4),(20,'ru',1016,0.1409,13),(29,'ru',1016,0.1649,16),(25,'ru',1016,0.1896,188.5),(25,'ru',1017,0.1197,292),(20,'ru',1017,0.1409,28),(25,'ru',1018,0.1197,294),(20,'ru',1018,0.1409,30),(25,'ru',1019,0.1197,296),(20,'ru',1019,0.1409,32),(25,'ru',1020,0.1197,298),(20,'ru',1020,0.1409,34),(25,'ru',1021,0.1197,300),(20,'ru',1021,0.1409,36),(25,'ru',1022,0.1197,302),(21,'ru',1022,0.1202,250),(23,'ru',1022,0.1348,293),(20,'ru',1022,0.1409,38),(25,'ru',1023,0.1197,308),(20,'ru',1023,0.1409,44),(20,'ru',1024,0.1409,45),(29,'ru',1024,0.1649,68),(35,'ru',1024,0.1722,22),(25,'ru',1024,0.1896,230.5),(25,'ru',1025,0.1197,310),(20,'ru',1025,0.1409,46),(25,'ru',1026,0.1896,380.5),(21,'ru',1026,0.1906,4),(20,'ru',1026,0.2233,116.5),(25,'ru',1027,0.1197,316),(20,'ru',1027,0.1409,52),(25,'ru',1028,0.1197,317),(20,'ru',1028,0.1409,53),(20,'ru',1029,0.1409,56),(29,'ru',1029,0.1649,38),(25,'ru',1029,0.1896,221),(25,'ru',1030,0.1197,321),(20,'ru',1030,0.1409,57),(25,'ru',1031,0.1197,335),(20,'ru',1031,0.1409,71),(25,'ru',1032,0.1197,336),(20,'ru',1032,0.1409,72),(25,'ru',1033,0.1197,338),(20,'ru',1033,0.1409,74),(20,'ru',1034,0.1409,87),(24,'ru',1034,0.1693,38),(25,'ru',1034,0.1896,194),(25,'ru',1035,0.1197,353),(20,'ru',1035,0.1409,89),(25,'ru',1036,0.1197,358),(20,'ru',1036,0.1409,94),(25,'ru',1037,0.1197,400),(30,'ru',1037,0.1338,181),(20,'ru',1037,0.1409,136),(25,'ru',1038,0.1197,402),(20,'ru',1038,0.1409,138),(25,'ru',1039,0.1197,414),(20,'ru',1039,0.1409,150),(25,'ru',1040,0.1197,415),(20,'ru',1040,0.1409,151),(36,'ru',1041,0.1746,48),(25,'ru',1041,0.1896,415),(20,'ru',1041,0.2233,151),(25,'ru',1042,0.1197,417),(20,'ru',1042,0.1409,153),(25,'ru',1043,0.1197,425),(20,'ru',1043,0.1409,161),(25,'ru',1044,0.1197,428),(20,'ru',1044,0.1409,164),(25,'ru',1045,0.1197,430),(20,'ru',1045,0.1409,166),(25,'ru',1046,0.1896,430),(20,'ru',1046,0.2233,166),(21,'ru',1047,0.1202,9),(21,'ru',1048,0.1906,119.5),(26,'ru',1049,0.1277,106),(21,'ru',1049,0.2405,66.3333),(21,'ru',1050,0.1906,46.5),(30,'ru',1051,0.1338,244),(21,'ru',1051,0.1906,169.5),(21,'ru',1052,0.1906,172.5),(21,'ru',1053,0.1202,50),(21,'ru',1054,0.1906,86),(21,'ru',1055,0.1202,74),(27,'ru',1055,0.1332,263),(27,'ru',1056,0.1332,79),(21,'ru',1056,0.1906,206),(21,'ru',1057,0.1202,90),(21,'ru',1058,0.1202,91),(21,'ru',1059,0.2792,105.5),(21,'ru',1060,0.2405,112),(31,'ru',1060,0.4415,70.7143),(21,'ru',1061,0.1202,107),(21,'ru',1062,0.1906,119),(22,'ru',1063,0.1226,48),(27,'ru',1063,0.1332,66),(21,'ru',1063,0.1906,120),(26,'ru',1063,0.2023,201.5),(30,'ru',1063,0.2675,159.667),(21,'ru',1064,0.1202,125),(21,'ru',1065,0.1202,135),(21,'ru',1066,0.1202,136),(34,'ru',1066,0.1407,148),(35,'ru',1066,0.1722,66),(36,'ru',1066,0.1746,71),(21,'ru',1067,0.1202,155),(21,'ru',1068,0.1202,156),(26,'ru',1068,0.1277,200),(21,'ru',1069,0.1202,160),(21,'ru',1070,0.1202,165),(21,'ru',1071,0.1202,187),(21,'ru',1072,0.1202,189),(21,'ru',1073,0.1906,248.5),(21,'ru',1074,0.1202,197),(21,'ru',1075,0.1202,198),(21,'ru',1076,0.1202,200),(27,'ru',1076,0.1332,30),(23,'ru',1076,0.1348,119),(21,'ru',1077,0.1202,207),(21,'ru',1078,0.1202,224),(21,'ru',1079,0.1202,248),(27,'ru',1079,0.2111,70.5),(21,'ru',1080,0.1202,255),(21,'ru',1081,0.1202,256),(21,'ru',1082,0.1202,257),(21,'ru',1083,0.1202,259),(34,'ru',1083,0.2814,73),(21,'ru',1084,0.1202,265),(21,'ru',1085,0.1202,271),(21,'ru',1086,0.1202,279),(26,'ru',1086,0.2023,301),(21,'ru',1087,0.1906,287),(21,'ru',1088,0.1202,285),(21,'ru',1089,0.1202,286),(21,'ru',1090,0.1202,292),(21,'ru',1091,0.1202,294),(21,'ru',1092,0.1202,300),(21,'ru',1093,0.1202,321),(21,'ru',1094,0.1202,326),(21,'ru',1095,0.2792,382.75),(21,'ru',1096,0.1906,340),(21,'ru',1097,0.1202,334),(21,'ru',1098,0.1202,344),(23,'ru',1098,0.1348,144),(21,'ru',1099,0.1202,348),(21,'ru',1100,0.1202,358),(21,'ru',1101,0.1202,374),(21,'ru',1102,0.1202,381),(21,'ru',1103,0.1202,385),(27,'ru',1103,0.1332,88),(26,'ru',1103,0.2964,303),(21,'ru',1104,0.1202,387),(21,'ru',1105,0.1202,388),(26,'ru',1106,0.1277,195),(21,'ru',1106,0.2405,429),(21,'ru',1107,0.1202,424),(21,'ru',1108,0.1202,426),(21,'ru',1109,0.1906,446.5),(21,'ru',1110,0.1202,432),(21,'ru',1111,0.1202,444),(21,'ru',1112,0.1202,445),(21,'ru',1113,0.1202,456),(21,'ru',1114,0.1202,460),(21,'ru',1115,0.1202,462),(21,'ru',1116,0.1202,470),(33,'ru',1116,0.3238,83),(21,'ru',1117,0.1202,471),(21,'ru',1118,0.1202,481),(28,'ru',1118,0.2391,103.5),(21,'ru',1119,0.1202,496),(21,'ru',1120,0.1202,498),(21,'ru',1121,0.1202,500),(36,'ru',1121,0.1746,39),(26,'ru',1122,0.2023,277),(23,'ru',1122,0.2137,74.5),(22,'ru',1122,0.4788,250.714),(22,'ru',1123,0.2846,185.75),(22,'ru',1124,0.1942,195.5),(22,'ru',1125,0.2451,211.667),(27,'ru',1126,0.1332,45),(23,'ru',1126,0.2137,71),(30,'ru',1126,0.2675,128),(22,'ru',1126,0.2846,209),(27,'ru',1127,0.1332,47),(30,'ru',1127,0.2675,129),(22,'ru',1127,0.2846,210.75),(22,'ru',1128,0.1942,65),(22,'ru',1129,0.1226,49),(27,'ru',1129,0.1332,68),(28,'ru',1129,0.2391,82),(23,'ru',1130,0.1348,160),(22,'ru',1130,0.2451,163.667),(30,'ru',1130,0.2675,130),(27,'ru',1131,0.1332,211),(22,'ru',1131,0.1942,62.5),(22,'ru',1132,0.1226,62),(22,'ru',1133,0.1226,66),(22,'ru',1134,0.1226,70),(22,'ru',1135,0.1226,73),(22,'ru',1136,0.1226,80),(22,'ru',1137,0.1226,94),(22,'ru',1138,0.1942,97.5),(28,'ru',1138,0.2391,193.5),(23,'ru',1138,0.2696,116),(27,'ru',1138,0.3093,248.25),(22,'ru',1139,0.1226,97),(22,'ru',1140,0.1226,101),(27,'ru',1140,0.1332,224),(28,'ru',1140,0.1508,189),(22,'ru',1141,0.1226,103),(23,'ru',1141,0.1348,52),(22,'ru',1142,0.1226,104),(27,'ru',1142,0.1332,236),(23,'ru',1142,0.1348,82),(22,'ru',1143,0.344,201.167),(22,'ru',1144,0.1942,188.5),(22,'ru',1145,0.2846,188.5),(22,'ru',1146,0.1226,115),(22,'ru',1147,0.1226,118),(26,'ru',1148,0.1277,225),(27,'ru',1148,0.2111,81),(22,'ru',1148,0.2451,232),(22,'ru',1149,0.1942,272),(22,'ru',1150,0.1942,277),(22,'ru',1151,0.1942,285),(22,'ru',1152,0.2451,252),(22,'ru',1153,0.1226,182),(27,'ru',1153,0.1332,44),(30,'ru',1153,0.2675,127),(23,'ru',1153,0.2696,71.6667),(22,'ru',1154,0.1226,205),(22,'ru',1155,0.1226,213),(22,'ru',1156,0.1226,214),(22,'ru',1157,0.1942,275.5),(22,'ru',1158,0.1226,277),(22,'ru',1159,0.1942,307),(22,'ru',1160,0.1942,298),(22,'ru',1161,0.1226,307),(22,'ru',1162,0.1226,335),(22,'ru',1163,0.1942,359),(22,'ru',1164,0.1226,350),(22,'ru',1165,0.1226,354),(22,'ru',1166,0.1226,360),(22,'ru',1167,0.1226,398),(22,'ru',1168,0.1942,430.5),(22,'ru',1169,0.1226,431),(23,'ru',1169,0.2137,72.5),(27,'ru',1169,0.3093,245.25),(22,'ru',1170,0.1226,440),(23,'ru',1170,0.1348,46),(27,'ru',1170,0.2111,247),(22,'ru',1171,0.1226,443),(22,'ru',1172,0.1226,444),(26,'ru',1172,0.1277,243),(22,'ru',1173,0.1226,445),(22,'ru',1174,0.1226,454),(26,'ru',1175,0.1277,339),(23,'ru',1175,0.1348,8),(32,'ru',1175,0.2522,81.5),(23,'ru',1176,0.1348,11),(23,'ru',1177,0.1348,18),(23,'ru',1178,0.1348,19),(30,'ru',1179,0.1338,168),(23,'ru',1179,0.2137,73.5),(23,'ru',1180,0.1348,75),(26,'ru',1181,0.1277,145),(23,'ru',1181,0.1348,86),(30,'ru',1181,0.2675,158.667),(25,'ru',1182,0.1197,59),(23,'ru',1182,0.1348,105),(24,'ru',1182,0.1693,60),(23,'ru',1183,0.1348,107),(23,'ru',1184,0.1348,111),(23,'ru',1185,0.1348,129),(23,'ru',1186,0.1348,133),(23,'ru',1187,0.1348,134),(23,'ru',1188,0.1348,137),(23,'ru',1189,0.1348,138),(23,'ru',1190,0.1348,142),(23,'ru',1191,0.1348,143),(34,'ru',1191,0.1407,65),(35,'ru',1191,0.1722,32),(36,'ru',1191,0.1746,38),(23,'ru',1192,0.1348,163),(34,'ru',1192,0.2814,53),(23,'ru',1193,0.1348,165),(23,'ru',1194,0.1348,173),(23,'ru',1195,0.1348,175),(26,'ru',1196,0.1277,87),(23,'ru',1196,0.1348,179),(33,'ru',1196,0.2211,65),(31,'ru',1196,0.2333,113),(23,'ru',1197,0.2137,182.5),(23,'ru',1198,0.1348,181),(23,'ru',1199,0.1348,183),(26,'ru',1200,0.1277,310),(23,'ru',1200,0.1348,186),(23,'ru',1201,0.1348,188),(26,'ru',1202,0.1277,136),(27,'ru',1202,0.1332,145),(23,'ru',1202,0.1348,203),(23,'ru',1203,0.2137,223.5),(23,'ru',1204,0.1348,212),(23,'ru',1205,0.1348,214),(23,'ru',1206,0.1348,217),(23,'ru',1207,0.1348,221),(23,'ru',1208,0.1348,229),(23,'ru',1209,0.1348,230),(23,'ru',1210,0.1348,231),(23,'ru',1211,0.1348,235),(23,'ru',1212,0.1348,239),(23,'ru',1213,0.1348,245),(23,'ru',1214,0.1348,247),(23,'ru',1215,0.1348,249),(26,'ru',1216,0.1277,77),(27,'ru',1216,0.1332,122),(23,'ru',1216,0.1348,261),(33,'ru',1216,0.2789,67.6667),(23,'ru',1217,0.1348,266),(23,'ru',1218,0.1348,278),(26,'ru',1218,0.2023,194),(23,'ru',1219,0.1348,281),(23,'ru',1220,0.1348,292),(23,'ru',1221,0.1348,295),(23,'ru',1222,0.1348,297),(23,'ru',1223,0.1348,298),(25,'ru',1224,0.1197,13),(24,'ru',1224,0.1693,14),(25,'ru',1225,0.1197,18),(24,'ru',1225,0.1693,19),(25,'ru',1226,0.1197,25),(24,'ru',1226,0.1693,26),(25,'ru',1227,0.1197,31),(24,'ru',1227,0.1693,32),(25,'ru',1228,0.1197,32),(24,'ru',1228,0.1693,33),(25,'ru',1229,0.1197,33),(24,'ru',1229,0.1693,34),(25,'ru',1230,0.1197,34),(24,'ru',1230,0.1693,35),(25,'ru',1231,0.1197,35),(24,'ru',1231,0.1693,36),(25,'ru',1232,0.1197,40),(24,'ru',1232,0.1693,41),(25,'ru',1233,0.1197,41),(27,'ru',1233,0.1332,144),(24,'ru',1233,0.1693,42),(25,'ru',1234,0.1197,42),(24,'ru',1234,0.1693,43),(25,'ru',1235,0.1197,43),(28,'ru',1235,0.1508,187),(24,'ru',1235,0.1693,44),(25,'ru',1236,0.1197,47),(24,'ru',1236,0.1693,48),(25,'ru',1237,0.1197,62),(24,'ru',1237,0.1693,63),(25,'ru',1238,0.1197,120),(29,'ru',1238,0.1649,36),(25,'ru',1239,0.1197,123),(29,'ru',1239,0.1649,39),(25,'ru',1240,0.1197,128),(29,'ru',1240,0.1649,44),(25,'ru',1241,0.1197,130),(29,'ru',1241,0.1649,46),(25,'ru',1242,0.1896,130),(29,'ru',1242,0.2613,46),(25,'ru',1243,0.1197,145),(29,'ru',1243,0.1649,61),(25,'ru',1244,0.1197,153),(29,'ru',1244,0.1649,69),(25,'ru',1245,0.1197,156),(29,'ru',1245,0.1649,72),(25,'ru',1246,0.1197,180),(29,'ru',1246,0.1649,96),(30,'ru',1246,0.4013,105.857),(26,'ru',1247,0.1277,18),(26,'ru',1248,0.1277,29),(26,'ru',1249,0.1277,32),(26,'ru',1250,0.1277,33),(26,'ru',1251,0.1277,35),(26,'ru',1252,0.1277,36),(26,'ru',1253,0.1277,38),(26,'ru',1254,0.2023,48),(26,'ru',1255,0.1277,56),(26,'ru',1256,0.1277,59),(26,'ru',1257,0.1277,61),(26,'ru',1258,0.1277,63),(26,'ru',1259,0.1277,63),(26,'ru',1260,0.1277,64),(26,'ru',1261,0.1277,70),(26,'ru',1262,0.1277,88),(26,'ru',1263,0.1277,88),(26,'ru',1264,0.1277,91),(26,'ru',1265,0.1277,102),(26,'ru',1266,0.1277,110),(26,'ru',1267,0.1277,123),(34,'ru',1267,0.1407,186),(35,'ru',1267,0.1722,56),(36,'ru',1267,0.1746,61),(26,'ru',1268,0.1277,126),(27,'ru',1268,0.1332,20),(26,'ru',1269,0.1277,131),(26,'ru',1270,0.1277,141),(26,'ru',1271,0.1277,143),(26,'ru',1272,0.1277,144),(26,'ru',1273,0.1277,155),(26,'ru',1274,0.1277,158),(26,'ru',1275,0.1277,160),(26,'ru',1276,0.1277,168),(26,'ru',1277,0.1277,173),(26,'ru',1278,0.1277,180),(26,'ru',1279,0.1277,186),(26,'ru',1280,0.1277,188),(26,'ru',1281,0.1277,196),(26,'ru',1282,0.1277,208),(26,'ru',1283,0.1277,210),(26,'ru',1284,0.1277,212),(26,'ru',1285,0.1277,233),(26,'ru',1286,0.1277,241),(26,'ru',1287,0.2023,274.5),(26,'ru',1288,0.1277,255),(26,'ru',1289,0.1277,267),(26,'ru',1290,0.1277,269),(26,'ru',1291,0.2023,314.5),(26,'ru',1292,0.1277,281),(26,'ru',1293,0.2023,303),(26,'ru',1294,0.1277,294),(26,'ru',1295,0.1277,297),(26,'ru',1296,0.1277,312),(26,'ru',1297,0.1277,315),(26,'ru',1298,0.1277,317),(26,'ru',1299,0.1277,331),(26,'ru',1300,0.1277,334),(26,'ru',1301,0.1277,340),(26,'ru',1302,0.1277,348),(27,'ru',1303,0.1332,28),(31,'ru',1303,0.3417,81),(27,'ru',1304,0.1332,32),(27,'ru',1305,0.1332,39),(30,'ru',1306,0.1338,263),(27,'ru',1306,0.2664,98.6667),(27,'ru',1307,0.1332,64),(27,'ru',1308,0.1332,65),(34,'ru',1308,0.1407,147),(35,'ru',1308,0.1722,65),(36,'ru',1308,0.1746,70),(27,'ru',1309,0.1332,78),(27,'ru',1310,0.1332,82),(27,'ru',1311,0.1332,87),(27,'ru',1312,0.1332,90),(27,'ru',1313,0.1332,91),(27,'ru',1314,0.1332,92),(30,'ru',1314,0.3106,41.75),(27,'ru',1315,0.1332,93),(30,'ru',1315,0.4013,190.286),(27,'ru',1316,0.1332,96),(27,'ru',1317,0.2111,137.5),(27,'ru',1318,0.1332,110),(27,'ru',1319,0.1332,116),(27,'ru',1320,0.1332,119),(33,'ru',1320,0.2211,63),(27,'ru',1321,0.1332,125),(27,'ru',1322,0.1332,135),(27,'ru',1323,0.1332,137),(27,'ru',1324,0.1332,152),(27,'ru',1325,0.2111,169.5),(27,'ru',1326,0.1332,172),(27,'ru',1327,0.1332,207),(27,'ru',1328,0.1332,226),(27,'ru',1329,0.1332,252),(27,'ru',1330,0.1332,257),(27,'ru',1331,0.1332,271),(28,'ru',1332,0.1508,7),(28,'ru',1333,0.1508,16),(28,'ru',1334,0.1508,22),(28,'ru',1335,0.2391,104.5),(28,'ru',1336,0.3017,88.3333),(28,'ru',1337,0.1508,27),(28,'ru',1338,0.2391,83.5),(28,'ru',1339,0.3017,43.6667),(28,'ru',1340,0.3899,122.8),(28,'ru',1341,0.2391,128.5),(28,'ru',1342,0.2391,133.5),(28,'ru',1343,0.1508,163),(28,'ru',1344,0.1508,165),(30,'ru',1345,0.1338,5),(28,'ru',1345,0.1508,169),(28,'ru',1346,0.1508,193),(30,'ru',1347,0.2675,63.6667),(30,'ru',1348,0.1338,41),(30,'ru',1349,0.1338,42),(30,'ru',1350,0.2675,147.333),(30,'ru',1351,0.2675,151.667),(30,'ru',1352,0.212,89.5),(30,'ru',1353,0.1338,100),(30,'ru',1354,0.1338,106),(30,'ru',1355,0.1338,148),(30,'ru',1356,0.1338,163),(30,'ru',1357,0.1338,169),(30,'ru',1358,0.1338,170),(33,'ru',1358,0.2211,66),(30,'ru',1359,0.1338,179),(33,'ru',1359,0.2211,116),(30,'ru',1360,0.1338,182),(30,'ru',1361,0.1338,183),(30,'ru',1362,0.1338,184),(30,'ru',1363,0.1338,186),(30,'ru',1364,0.1338,188),(30,'ru',1365,0.1338,189),(30,'ru',1366,0.1338,259),(30,'ru',1367,0.1338,272),(30,'ru',1368,0.1338,273),(30,'ru',1369,0.1338,281),(31,'ru',1370,0.2944,37.3333),(31,'ru',1371,0.2944,39.3333),(31,'ru',1372,0.2333,49),(31,'ru',1373,0.2333,51),(31,'ru',1374,0.2333,78),(31,'ru',1375,0.3417,96),(31,'ru',1376,0.3417,99),(33,'ru',1377,0.2211,151),(31,'ru',1377,0.2333,95),(32,'ru',1377,0.2522,70.5),(31,'ru',1378,0.2333,114),(32,'ru',1379,0.3182,33.3333),(32,'ru',1380,0.1591,8),(32,'ru',1381,0.3694,55.5),(32,'ru',1382,0.3694,56.5),(32,'ru',1383,0.2522,49.5),(32,'ru',1384,0.2522,50.5),(33,'ru',1385,0.2211,89),(32,'ru',1385,0.2522,60.5),(32,'ru',1386,0.2522,61.5),(32,'ru',1387,0.2522,62.5),(32,'ru',1388,0.2522,64.5),(32,'ru',1389,0.2522,69.5),(32,'ru',1390,0.2522,71.5),(32,'ru',1391,0.2522,72.5),(32,'ru',1392,0.2522,85.5),(32,'ru',1393,0.2522,86.5),(32,'ru',1394,0.2522,87.5),(32,'ru',1395,0.2522,89.5),(32,'ru',1396,0.2522,92.5),(33,'ru',1397,0.1395,1),(33,'ru',1398,0.2211,67),(33,'ru',1399,0.2211,77),(33,'ru',1400,0.2211,92),(33,'ru',1401,0.2211,108),(33,'ru',1402,0.2211,110),(33,'ru',1403,0.2211,111),(33,'ru',1404,0.2211,112),(33,'ru',1405,0.2211,118),(33,'ru',1406,0.2211,139),(33,'ru',1407,0.2211,142),(33,'ru',1408,0.2211,150),(33,'ru',1409,0.2211,152),(33,'ru',1410,0.2211,154),(33,'ru',1411,0.2211,155),(33,'ru',1412,0.2211,164),(33,'ru',1413,0.2211,166),(33,'ru',1414,0.2211,169),(33,'ru',1415,0.2211,170),(34,'ru',1416,0.223,13.5),(36,'ru',1416,0.2767,8),(34,'ru',1417,0.1407,10),(35,'ru',1417,0.1722,8),(36,'ru',1417,0.1746,5),(35,'ru',1418,0.1722,11),(36,'ru',1418,0.1746,8),(34,'ru',1418,0.223,21),(34,'ru',1419,0.1407,17),(34,'ru',1420,0.1407,20),(34,'ru',1421,0.1407,26),(34,'ru',1422,0.1407,27),(34,'ru',1423,0.223,38),(34,'ru',1424,0.1407,36),(34,'ru',1425,0.1407,38),(34,'ru',1426,0.1407,39),(34,'ru',1427,0.1407,40),(34,'ru',1428,0.1407,43),(34,'ru',1429,0.1407,57),(34,'ru',1430,0.1407,59),(34,'ru',1431,0.223,82.5),(34,'ru',1432,0.1407,72),(34,'ru',1433,0.1407,74),(34,'ru',1434,0.223,90.5),(34,'ru',1435,0.1407,78),(34,'ru',1436,0.1407,81),(34,'ru',1437,0.1407,84),(34,'ru',1438,0.1407,85),(34,'ru',1439,0.223,85),(34,'ru',1440,0.1407,86),(34,'ru',1441,0.1407,87),(34,'ru',1442,0.1407,96),(34,'ru',1443,0.223,104.5),(34,'ru',1444,0.1407,105),(34,'ru',1445,0.1407,108),(34,'ru',1446,0.1407,115),(34,'ru',1447,0.1407,137),(34,'ru',1448,0.1407,146),(35,'ru',1448,0.1722,64),(36,'ru',1448,0.1746,69),(34,'ru',1449,0.1407,155),(34,'ru',1450,0.1407,169),(35,'ru',1450,0.1722,72),(36,'ru',1450,0.1746,77),(34,'ru',1451,0.1407,170),(34,'ru',1452,0.1407,177),(35,'ru',1452,0.1722,80),(36,'ru',1452,0.1746,78),(34,'ru',1453,0.1407,180),(35,'ru',1453,0.1722,50),(36,'ru',1453,0.1746,55),(34,'ru',1454,0.1407,188),(34,'ru',1455,0.1407,189),(35,'ru',1455,0.1722,47),(36,'ru',1455,0.1746,52),(35,'ru',1456,0.1722,18),(35,'ru',1457,0.1722,19),(35,'ru',1458,0.1722,20),(35,'ru',1459,0.1722,23),(35,'ru',1460,0.1722,25),(35,'ru',1461,0.1722,45),(36,'ru',1461,0.1746,50),(35,'ru',1462,0.1722,73),(36,'ru',1463,0.1746,3),(36,'ru',1464,0.1746,26),(36,'ru',1465,0.1746,28),(36,'ru',1466,0.1746,79),(40,'ru',1469,0.2314,1);
/*!40000 ALTER TABLE `b_search_content_stem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_text`
--

DROP TABLE IF EXISTS `b_search_content_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_text` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SEARCH_CONTENT_MD5` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `SEARCHABLE_CONTENT` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_text`
--

LOCK TABLES `b_search_content_text` WRITE;
/*!40000 ALTER TABLE `b_search_content_text` DISABLE KEYS */;
INSERT INTO `b_search_content_text` VALUES (1,'f38b1d21b4e881774aab9ca0e121ef4d','НОВОСТИ БАНКА\r\n\r\n'),(2,'adb27eea179be3c992aeb74e1acb2c41','ИСТОРИЯ КОМПАНИИ\r\nЗАО «БАНК» ОСНОВАН 18 ЯНВАРЯ 1993 ГОДА.\rДО 1996 ГОДА БАНК РАЗВИВАЛСЯ КАК НЕБОЛЬШОЙ КОММЕРЧЕСКИЙ БАНК.\r1996 ГОД. ОТКРЫВАЕТСЯ ПЕРВЫЙ ДОПОЛНИТЕЛЬНЫЙ ОФИС ПО РАБОТЕ С НАСЕЛЕНИЕМ. БАНК ПРИСТУПАЕТ К АКТИВНОМУ РАЗВИТИЮ ФИЛИАЛЬНОЙ СЕТИ. \r1997 ГОД. БАНК НАЧИНАЕТ ВЫПУСК И ОБСЛУЖИВАНИЕ ПЛАСТИКОВЫХ КАРТ, ИСПОЛЬЗОВАНИЕ КОТОРЫХ ПОЗВОЛЯЕТ ВЫНЕСТИ ФИНАНСОВЫЙ СЕРВИС ЗА ПРЕДЕЛЫ ПРИВЫЧНЫХ ОПЕРАЦИОННЫХ ЗАЛОВ БАНКА И ФИЛИАЛОВ НА МЕСТА ФАКТИЧЕСКОГО ВОСТРЕБОВАНИЯ УСЛУГ.\rЯНВАРЬ 1998 ГОДА. БАНК ПОЛУЧАЕТ ЛИЦЕНЗИЮ ПРОФЕССИОНАЛЬНОГО УЧАСТНИКА РЫНКА ЦЕННЫХ БУМАГ. ПО РЕЗУЛЬТАТАМ АНАЛИЗА БУХГАЛТЕРСКОЙ И ФИНАНСОВОЙ ОТЧЁТНОСТИ БАНК ОТНОСИТСЯ ПО КРИТЕРИЯМ ЦБ РФ К ПЕРВОЙ КАТЕГОРИИ – ФИНАНСОВО СТАБИЛЬНЫЕ БАНКИ.\r1999 ГОД. БАНК, УСПЕШНО ПРЕОДОЛЕВ КРИЗИС, ПРОДОЛЖАЕТ АКТИВНОЕ РАЗВИТИЕ ФИЛИАЛЬНОЙ СЕТИ. В ЭТОМ ЖЕ ГОДУ БАНК ПРИСТУПАЕТ К РЕАЛИЗАЦИИ ПРОГРАММЫ ИПОТЕЧНОГО КРЕДИТОВАНИЯ МУНИЦИПАЛЬНЫХ СЛУЖАЩИХ.\r2004ГОД. БАНК ПРИСТУПАЕТ К ВЫПУСКУ КАРТ ПЛАТЁЖНОЙ СИСТЕМЫ VISA INTERNATIONAL. В ТЕЧЕНИЕ 2004 ГОДА БАНК ПРЕДСТАВИЛ КЛИЕНТАМ РЯД ВЫСОКОТЕХНОЛОГИЧНЫХ ПРОДУКТОВ. В ОБЛАСТИ КРЕДИТОВАНИЯ ФИЗИЧЕСКИХ ЛИЦ – СИСТЕМУ ИНТЕРНЕТ-КРЕДИТОВАНИЯ НА ПРИОБРЕТЕНИЕ АВТОМОБИЛЕЙ, ОБУЧЕНИЕ В ВУЗЕ, ОТДЫХ И ТУРИЗМ. \r2006 ГОД. ДЕСЯТЬ ЛЕТ С НАЧАЛА РАБОТЫ БАНКА В ОБЛАСТИ ПРЕДОСТАВЛЕНИЯ ФИНАНСОВЫХ УСЛУГ НАСЕЛЕНИЮ. ЗА ЭТО ВРЕМЯ В БАНКЕ ВЗЯЛИ КРЕДИТ БОЛЕЕ 50 000 ЧЕЛОВЕК, БОЛЕЕ 200 000 ЧЕЛОВЕК ДОВЕРИЛИ СВОИ ДЕНЬГИ, СДЕЛАВ ВКЛАДЫ, БОЛЕЕ 50 000 ЧЕЛОВЕК СТАЛИ ДЕРЖАТЕЛЯМИ ПЛАСТИКОВЫХ КАРТ БАНКА.\r2007 ГОД. БАНК ПОЛУЧАЕТ ГЛАВНУЮ ВСЕРОССИЙСКУЮ ПРЕМИЮ «РОССИЙСКИЙ НАЦИОНАЛЬНЫЙ ОЛИМП» В ЧИСЛЕ ЛУЧШИХ ПРЕДПРИЯТИЙ МАЛОГО И СРЕДНЕГО БИЗНЕСА РОССИИ.\r2008 ГОД. ПО РЕЗУЛЬТАТАМ МЕЖДУНАРОДНОГО КОНКУРСА \"ЗОЛОТАЯ МЕДАЛЬ \"ЕВРОПЕЙСКОЕ КАЧЕСТВО\", ПРОВЕДЕННОГО МЕЖДУНАРОДНОЙ АКАДЕМИЕЙ КАЧЕСТВА И МАРКЕТИНГА\" И АССОЦИАЦИЕЙ КАЧЕСТВЕННОЙ ПРОДУКЦИИ БАНК СТАНОВИТСЯ ЛАУРЕАТОМ МЕЖДУНАРОДНОЙ НАГРАДЫ \"ЗОЛОТАЯ МЕДАЛЬ \"ЕВРОПЕЙСКОЕ КАЧЕСТВО\".\r2009 ГОД. ПЕРЕХОД НА НОВУЮ АВТОМАТИЗИРОВАННУЮ БАНКОВСКУЮ СИСТЕМУ IBANK SYSTEM РОССИЙСКОЙ КОМПАНИИ «МКТ».\r2010 ГОД. ПО ДАННЫМ ФИНАНСОВОЙ ОТЧЁТНОСТИ НА 1 ЯНВАРЯ 2010 ГОДА БАНК ЗАВЕРШАЕТ 2009 ГОД С ПОЛОЖИТЕЛЬНЫМИ РЕЗУЛЬТАТАМИ. РАЗМЕР ПРИБЫЛИ ЗА 2009 ГОД СОСТАВЛЯЕТ 95 149 ТЫС. РУБЛЕЙ. ПОЛОЖИТЕЛЬНУЮ ДИНАМИКУ РОСТА ПОКАЗЫВАЮТ ПОЧТИ ВСЕ ФИНАНСОВЫЕ ПОКАЗАТЕЛИ.УСТАВНЫЙ КАПИТАЛ БАНКА УВЕЛИЧИВАЕТСЯ НА 20 % И НА ДАННЫЙ МОМЕНТ СОСТАВЛЯЕТ 415 240 ТЫСЯЧ РУБЛЕЙ.РАЗМЕР СОБСТВЕННОГО КАПИТАЛА БАНКА СОСТАВЛЯЕТ 1 535 522 ТЫСЯЧИ РУБЛЕЙ, ЧТО НА 31 % БОЛЬШЕ ЧЕМ В ПРОШЛОМ ГОДУ. \rЧАСТЬ ДОХОДА ЗА 2009 ГОД БАНК НАПРАВЛЯЕТ НА ФОРМИРОВАНИЕ РЕЗЕРВА НА ВОЗМОЖНЫЕ ПОТЕРИ ПО ССУДАМ, ССУДНОЙ И ПРИРАВНЕННОЙ К НЕЙ ЗАДОЛЖЕННОСТИ. ОБЪЁМ ТАКОГО РЕЗЕРВА ПО СОСТОЯНИЮ НА 1 ФЕВРАЛЯ 2010 ГОДА СОСТАВЛЯЕТ ПОРЯДКА 650 МЛН. РУБЛЕЙ.\rСВОЕ ДАЛЬНЕЙШЕЕ РАЗВИТИЕ БАНК СВЯЗЫВАЕТ С ПОВЫШЕНИЕМ КАЧЕСТВА И НАРАЩИВАНИЕМ ОБЪЕМОВ УСЛУГ, СОБСТВЕННОГО КАПИТАЛА, ВНЕДРЕНИЕМ НОВЕЙШИХ ТЕХНОЛОГИЙ, СОВЕРШЕНСТВОВАНИЕМ ФОРМ ОБСЛУЖИВАНИЯ КЛИЕНТОВ И РАЗВИТИЕМ НОВЫХ ПЕРСПЕКТИВНЫХ НАПРАВЛЕНИЙ В РАБОТЕ.\r\n'),(3,'faaa1838323144017f3af9a3b40d7ced','ИНФОРМАЦИЯ О КОМПАНИИ\r\nБАНК\r ОДИН ИЗ КРУПНЕЙШИХ УЧАСТНИКОВ РОССИЙСКОГО РЫНКА БАНКОВСКИХ УСЛУГ. БАНК РАБОТАЕТ В РОССИИ С 1997 ГОДА И НА СЕГОДНЯШНИЙ ДЕНЬ ОСУЩЕСТВЛЯЕТ ВСЕ ОСНОВНЫЕ ВИДЫ БАНКОВСКИХ ОПЕРАЦИЙ, ПРЕДСТАВЛЕННЫХ НА РЫНКЕ ФИНАНСОВЫХ УСЛУГ. СЕТЬ БАНКА ФОРМИРУЮТ 490 ФИЛИАЛОВ И ДОПОЛНИТЕЛЬНЫХ ОФИСОВ В 70 РЕГИОНАХ СТРАНЫ. МЫ ПРЕДЛАГАЕМ КЛИЕНТАМ ОСНОВНЫЕ БАНКОВСКИЕ ПРОДУКТЫ, ПРИНЯТЫЕ В МЕЖДУНАРОДНОЙ ФИНАНСОВОЙ ПРАКТИКЕ.\nЗАО БАНК ЗАНИМАЕТ 7-Е МЕСТО ПО РАЗМЕРУ АКТИВОВ ПО РЕЗУЛЬТАТАМ 2009 ГОДА. БАНК НАХОДИТСЯ НА 5-М МЕСТЕ В РОССИИ ПО ОБЪЕМУ ЧАСТНЫХ ДЕПОЗИТОВ И НА 4-М МЕСТЕ ПО ОБЪЕМУ КРЕДИТОВ ДЛЯ ЧАСТНЫХ ЛИЦ ПО РЕЗУЛЬТАТАМ 2009 ГОДА. 									\rБАНК\rЯВЛЯЕТСЯ УНИВЕРСАЛЬНЫМ БАНКОМ И ОКАЗЫВАЕТ ПОЛНЫЙ СПЕКТР УСЛУГ, ВКЛЮЧАЯ ОБСЛУЖИВАНИЕ ЧАСТНЫХ И КОРПОРАТИВНЫХ КЛИЕНТОВ, ИНВЕСТИЦИОННЫЙ БАНКОВСКИЙ БИЗНЕС, ТОРГОВОЕ ФИНАНСИРОВАНИЕ И УПРАВЛЕНИЕ АКТИВАМИ.\rВ ЧИСЛЕ ПРЕДОСТАВЛЯЕМЫХ УСЛУГ: 									\nВЫПУСК БАНКОВСКИХ КАРТ;\rИПОТЕЧНОЕ И ПОТРЕБИТЕЛЬСКОЕ КРЕДИТОВАНИЕ;\rАВТОКРЕДИТОВАНИЕ;\rУСЛУГИ ДИСТАНЦИОННОГО УПРАВЛЕНИЯ СЧЕТАМИ;\rКРЕДИТНЫЕ КАРТЫ С ЛЬГОТНЫМ ПЕРИОДОМ;\rСРОЧНЫЕ ВКЛАДЫ, АРЕНДА СЕЙФОВЫХ ЯЧЕЕК;\rДЕНЕЖНЫЕ ПЕРЕВОДЫ.\rЧАСТЬ УСЛУГ ДОСТУПНА НАШИМ КЛИЕНТАМ В КРУГЛОСУТОЧНОМ РЕЖИМЕ, ДЛЯ ЧЕГО ИСПОЛЬЗУЮТСЯ СОВРЕМЕННЫЕ ТЕЛЕКОММУНИКАЦИОННЫЕ ТЕХНОЛОГИИ.\rБАНК\rЯВЛЯЕТСЯ ОДНИМ ИЗ САМЫХ НАДЕЖНЫХ БАНКОВ НАШЕЙ СТРАНЫ. ОСНОВНЫМИ ЦЕННОСТЯМИ, КОТОРЫМИ МЫ РУКОВОДСТВУЕМСЯ В СВОЕЙ ДЕЯТЕЛЬНОСТИ ЯВЛЯЮТСЯ \rСПРАВЕДЛИВОСТЬ\r,\rПРОЗРАЧНОСТЬ\r, \rУВАЖЕНИЕ\r, \rСОТРУДНИЧЕСТВО\r,\rСВОБОДА\rИ\rДОВЕРИЕ\r. ОДНОЙ ИЗ ГЛАВНЫХ ЗАДАЧ \rБАНК\rВИДИТ ПОДДЕРЖАНИЕ И СОВЕРШЕНСТВОВАНИЕ РАЗВИТОЙ ФИНАНСОВОЙ СИСТЕМЫ РОССИИ.\rВ КАЧЕСТВЕ ОДНОГО ИЗ ПРИОРИТЕТНЫХ НАПРАВЛЕНИЙ КУЛЬТУРНО-ПРОСВЕТИТЕЛЬСКОЙ ДЕЯТЕЛЬНОСТИ \rБАНК\rОСУЩЕСТВЛЯЕТ ПОДДЕРЖКУ НАЦИОНАЛЬНОГО. ПРИ НАШЕМ СОДЕЙСТВИИ РОССИЮ ПОСЕТИЛИ МНОГИЕ ВСЕМИРНО ИЗВЕСТНЫЕ ЗАРУБЕЖНЫЕ МУЗЫКАНТЫ, В РЕГИОНАХ РОССИИ ЕЖЕГОДНО ПРОХОДЯТ ТЕАТРАЛЬНЫЕ ФЕСТИВАЛИ, КОНЦЕРТЫ И МНОГОЧИСЛЕННЫЕ ВЫСТАВКИ.\r\n'),(4,'04af3cb7a7124d187c790f71d33d78bb','РУКОВОДСТВО\r\nКОЛЛЕГИАЛЬНЫЙ ИСПОЛНИТЕЛЬНЫЙ ОРГАН ПРАВЛЕНИЯ БАНКА\rДОЛЖНОСТЬ\rОБРАЗОВАНИЕ\rПЛЕШКОВ ЮРИЙ ГРИГОРЬЕВИЧ \rНАЧАЛЬНИК ЭКОНОМИЧЕСКОГО УПРАВЛЕНИЯ \rВ 1996 ГОДУ ОКОНЧИЛ ИРКУТСКУЮ ГОСУДАРСТВЕННУЮ ЭКОНОМИЧЕСКУЮ АКАДЕМИЮ ПО СПЕЦИАЛЬНОСТИ ФИНАНСЫ И КРЕДИТ \rСМИРНОВ ВЯЧЕСЛАВ ЕВГЕНЬЕВИЧ \rЗАМЕСТИТЕЛЬ ПРЕДСЕДАТЕЛЯ ПРАВЛЕНИЯ \rВ 1991 ГОДУ ОКОНЧИЛ УНИВЕРСИТЕТ ДРУЖБЫ НАРОДОВ (МОСКВА). В 2000 ГОДУ ПОЛУЧИЛ СТЕПЕНЬ MBA В БИЗНЕС-ШКОЛЕ INSEAD. \rКОРНЕВА ИРИНА СТАНИСЛАВОВНА \rЗАМЕСТИТЕЛЬ ПРЕДСЕДАТЕЛЯ ПРАВЛЕНИЯ \rВ 1997 ГОДУ ОКОНЧИЛА МОСКОВСКУЮ ГОСУДАРСТВЕННУЮ ЮРИДИЧЕСКУЮ АКАДЕМИЮ ПО СПЕЦИАЛЬНОСТИ «БАНКОВСКОЕ ДЕЛО» \rИГНАТЬЕВ ВАДИМ МИХАЙЛОВИЧ \rПЕРВЫЙ ЗАМЕСТИТЕЛЬ ПРЕДСЕДАТЕЛЯ ПРАВЛЕНИЯ \rВ 1988 ГОДУ ОКОНЧИЛ ИРКУТСКУЮ ГОСУДАРСТВЕННУЮ ЭКОНОМИЧЕСКУЮ АКАДЕМИЮ ПО СПЕЦИАЛЬНОСТИ «ЭКОНОМИКА И УПРАВЛЕНИЕ ПРОИЗВОДСТВОМ» \rВОЛОШИН СТАНИСЛАВ СЕМЕНОВИЧ \rПРЕДСЕДАТЕЛЬ ПРАВЛЕНИЯ \rВ 1986 ГОДУ ОКОНЧИЛ СВЕРДЛОВСКИЙ ЮРИДИЧЕСКИЙ ИНСТИТУТ ПО СПЕЦИАЛЬНОСТИ «ПРАВОВЕДЕНИЕ» И МОСКОВСКИЙ ИНДУСТРИАЛЬНЫЙ ИНСТИТУТ ПО СПЕЦИАЛЬНОСТИ «ЭКОНОМИКА И УПРАВЛЕНИЕ НА ПРЕДПРИЯТИИ» \rСПИСОК ЧЛЕНОВ СОВЕТА ДИРЕКТОРОВ БАНКА\rДОЛЖНОСТЬ\rОБРАЗОВАНИЕ\rМИХАЙЛОВА ТАТЬЯНА ВАСИЛЬЕВНА \rДИРЕКТОР ПО ФИНАНСАМ \rВ 1996 ГОДУ ОКОНЧИЛА РОССИЙСКУЮ ЭКОНОМИЧЕСКУЮ АКАДЕМИЮ ИМ. Г.В. ПЛЕХАНОВА ПО СПЕЦИАЛЬНОСТИ «БАНКОВСКОЕ ДЕЛО». \rЛЯХ ЕВГЕНИЙ ВИКТОРОВИЧ \rДИРЕКТОР ПО ОБЕСПЕЧЕНИЮ БАНКОВСКОЙ ДЕЯТЕЛЬНОСТИ \rВ 1993 ГОДУ ОКОНЧИЛ РОССИЙСКУЮ ЭКОНОМИЧЕСКУЮ АКАДЕМИЮ ИМ. ПЛЕХАНОВА, ПО СПЕЦИАЛЬНОСТИ МВА «СТРАТЕГИЧЕСКИЙ МЕНЕДЖМЕНТ». \rКОНДРУСЕВ РОМАН АЛЕКСАНДРОВИЧ \rДИРЕКТОР КАЗНАЧЕЙСТВА \rВ 1993 ГОДУ ОКОНЧИЛ КЕМЕРОВСКИЙ ГОСУДАРСТВЕННЫЙ УНИВЕРСИТЕТ ПО СПЕЦИАЛЬНОСТИ «ПРАВОВЕДЕНИЕ» \rХРАМОВ АНАТОЛИЙ ФЁДОРОВИЧ \rДИРЕКТОР ПО РАБОТЕ С ПЕРСОНАЛОМ \rВ 1996 ГОДУ ОКОНЧИЛ ГОСУДАРСТВЕННЫЙ УНИВЕРСИТЕТ УПРАВЛЕНИЯ ПО СПЕЦИАЛИЗАЦИИ «УПРАВЛЕНИЕ ПЕРСОНАЛОМ». В 2002 ПРОШЕЛ ПРОГРАММУ ПОВЫШЕНИЯ КВАЛИФИКАЦИИ «СОВРЕМЕННЫЕ ТЕХНОЛОГИИ УПРАВЛЕНИЯ ЧЕЛОВЕЧЕСКИМИ РЕСУРСАМИ» \rЖУРАВЛЕВА ОЛЬГА НИКОЛАЕВНА \rГЛАВНЫЙ БУХГАЛТЕР \rВ 1985 ГОДУ ОКОНЧИЛА САНКТ-ПЕТЕРБУРГСКИЙ ИНСТИТУТ НАРОДНОГО ХОЗЯЙСТВА ПО СПЕЦИАЛЬНОСТИ «БУХГАЛТЕРСКИЙ УЧЕТ» \rКАЛИНИН АНДРЕЙ ГЕННАДЬЕВИЧ \rДИРЕКТОР ДЕПАРТАМЕНТА КОРПОРАТИВНОГО БИЗНЕСА \rВ 1998 ГОДУ ЗАКОНЧИЛ МОСКОВСКИЙ ГОСУДАРСТВЕННЫЙ ИНСТИТУТ МЕЖДУНАРОДНЫХ ОТНОШЕНИЙ, В 2002  ШКОЛУ МЕНЕДЖМЕНТА УНИВЕРСИТЕТА АНТВЕРПЕНА (UAMS) ПО СПЕЦИАЛЬНОСТИ MBA.\r\n'),(5,'17c27477cd3b1c927b1f739b9300ef80','МИССИЯ\r\nМИССИЯ БАНКА - ПРЕДОСТАВЛЯТЬ КАЖДОМУ КЛИЕНТУ МАКСИМАЛЬНО ВОЗМОЖНЫЙ НАБОР БАНКОВСКИХ УСЛУГ ВЫСОКОГО КАЧЕСТВА И НАДЕЖНОСТИ,СЛЕДУЯ\rМИРОВЫМ СТАНДАРТАМ И ПРИНЦИПАМ КОРПОРАТИВНОЙ ЭТИКИ. НАШ БАНК - ЭТО СОВРЕМЕННЫЙ ВЫСОКОТЕХНОЛОГИЧНЫЙ БАНК,СОЧЕТАЮЩИЙ\rВ СЕБЕ НОВЕЙШИЕ ТЕХНОЛОГИИ ОКАЗАНИЯ УСЛУГ И ЛУЧШИЕ ТРАДИЦИИ БАНКОВСКОГО СООБЩЕСТВА И РОССИЙСКОГО ПРЕДПРИНИМАТЕЛЬСТВА.\rИНДИВИДУАЛЬНЫЙ ПОДХОД\rНАША ЦЕЛЬ — ПРЕДОСТАВЛЕНИЕ КАЖДОМУ КЛИЕНТУ ПОЛНОГО КОМПЛЕКСА СОВРЕМЕННЫХ БАНКОВСКИХ ПРОДУКТОВ И УСЛУГ С ИСПОЛЬЗОВАНИЕМ ПОСЛЕДНИХ ДОСТИЖЕНИЙ И ИННОВАЦИЙ В СФЕРЕ ФИНАНСОВЫХ ТЕХНОЛОГИЙ. ИНДИВИДУАЛЬНЫЙ ПОДХОД К СИТУАЦИИ И ПРОБЛЕМАТИКЕ КАЖДОГО КЛИЕНТА И ФИЛОСОФИЯ ПАРТНЕРСТВА - ОСНОВЫ ВЗАИМОДЕЙСТВИЯ С НАШИМИ КЛИЕНТАМИ.\rУНИВЕРСАЛЬНОСТЬ\rБАНК ОБЕСПЕЧИВАЕТ СВОИМ КЛИЕНТАМ — ЧАСТНЫМ ЛИЦАМ, КРУПНЕЙШИМ ОТРАСЛЕВЫМ КОМПАНИЯМ, ПРЕДПРИЯТИЯМ СРЕДНЕГО И МАЛОГО БИЗНЕСА, ГОСУДАРСТВЕННЫМ СТРУКТУРАМ — ШИРОКИЙ СПЕКТР УСЛУГ. ЧТОБЫ МАКСИМАЛЬНО ПОЛНО ОБЕСПЕЧИТЬ ПОТРЕБНОСТИ КЛИЕНТОВ, МЫ АКТИВНО РАЗВИВАЕМ ФИЛИАЛЬНУЮ СЕТЬ В РОССИИ И ЗА ЕЕ ПРЕДЕЛАМИ. ЭТО ПОЗВОЛЯЕТ НАШИМ КЛИЕНТАМ ВСЕГДА И ВЕЗДЕ ПОЛУЧАТЬ СОВРЕМЕННЫЕ БАНКОВСКИЕ УСЛУГИ НА УРОВНЕ МИРОВЫХ СТАНДАРТОВ.\rБАНК — НАДЕЖНЫЙ ПАРТНЕР ПРИ РЕАЛИЗАЦИИ КРУПНЫХ СОЦИАЛЬНО-ЭКОНОМИЧЕСКИХ ПРОЕКТОВ РОССИИ И ЯВЛЯЕТСЯ ОДНИМ ИЗ ЛИДЕРОВ НА РЫНКЕ ИНВЕСТИЦИОННОГО ОБЕСПЕЧЕНИЯ РЕГИОНАЛЬНЫХ ПРОГРАММ.\rПАРТНЕРСТВО И ПОМОЩЬ В РАЗВИТИИ БИЗНЕСА\rВ СВОЕЙ ДЕЯТЕЛЬНОСТИ МЫ ОПИРАЕМСЯ НА ВЫСОЧАЙШИЕ СТАНДАРТЫ ПРЕДОСТАВЛЕНИЯ ФИНАНСОВЫХ УСЛУГ И ТЩАТЕЛЬНЫЙ АНАЛИЗ РЫНКА.\rПРЕДЛАГАЯ АДРЕСНЫЕ РЕШЕНИЯ И СОБЛЮДАЯ КОНФИДЕНЦИАЛЬНОСТЬ ВЗАИМООТНОШЕНИЙ С ПАРТНЕРАМИ, БАНК ПРОЯВЛЯЕТ ГИБКИЙ ПОДХОД К ЗАПРОСАМ КЛИЕНТОВ, КАК РОЗНИЧНЫХ, ТАК И КОРПОРАТИВНЫХ. ВНЕДРЯЯ ПЕРЕДОВЫЕ ТЕХНОЛОГИИ И ИННОВАЦИОННЫЕ РЕШЕНИЯ, БАНК ГАРАНТИРУЕТ КЛИЕНТАМ ВЫСОКОЕ КАЧЕСТВО ОБСЛУЖИВАНИЯ И СТАБИЛЬНЫЙ ДОХОД.\rМЫ ЧЕСТНЫ И ОТКРЫТЫ ПО ОТНОШЕНИЮ КО ВСЕМ НАШИМ ПАРТНЕРАМ И СТРЕМИМСЯ БЫТЬ ПРИМЕРОМ НАДЕЖНОСТИ И ЭФФЕКТИВНОСТИ ДЛЯ ВСЕХ, КТО С НАМИ СОТРУДНИЧАЕТ.\rСОЦИАЛЬНАЯ ОТВЕТСТВЕННОСТЬ\rБАНК ОРИЕНТИРОВАН НА ПОДДЕРЖКУ СОЦИАЛЬНО-ЭКОНОМИЧЕСКОГО РАЗВИТИЯ КЛИЕНТОВ. МЫ ВНОСИМ ВКЛАД В ПОВЫШЕНИЕ БЛАГОСОСТОЯНИЯ ОБЩЕСТВА, ПРЕДОСТАВЛЯЯ НАШИМ КЛИЕНТАМ ПЕРВОКЛАССНЫЕ ЭКОНОМИЧЕСКИЕ ВОЗМОЖНОСТИ, А ТАКЖЕ РЕАЛИЗУЯ ЭКОЛОГИЧЕСКИЕ ПРОГРАММЫ, ОБРАЗОВАТЕЛЬНЫЕ И КУЛЬТУРНЫЕ ПРОЕКТЫ. БАНК ОКАЗЫВАЕТ БЛАГОТВОРИТЕЛЬНУЮ ПОМОЩЬ СОЦИАЛЬНО НЕЗАЩИЩЕННЫМ СЛОЯМ ОБЩЕСТВА, УЧРЕЖДЕНИЯМ МЕДИЦИНЫ, ОБРАЗОВАНИЯ И КУЛЬТУРЫ, СПОРТИВНЫМ И РЕЛИГИОЗНЫМ ОРГАНИЗАЦИЯМ В РЕГИОНАХ РОССИИ. \rНАШ БАНК — ЭТО БАНК, РАБОТАЮЩИЙ НА БЛАГО ОБЩЕСТВА, CТРАНЫ И КАЖДОГО ЕЕ ЖИТЕЛЯ.\r\n'),(6,'d6ae18283686e0f65091531174c8b418','ВАКАНСИИ\r\n\r\n'),(7,'06cecc23c5cc18e8d1e0166639dc5c25','АВТОРИЗАЦИЯ\r\nВЫ ЗАРЕГИСТРИРОВАНЫ И УСПЕШНО АВТОРИЗОВАЛИСЬ.\rИСПОЛЬЗУЙТЕ АДМИНИСТРАТИВНУЮ ПАНЕЛЬ В ВЕРХНЕЙ ЧАСТИ ЭКРАНА ДЛЯ БЫСТРОГО ДОСТУПА К ФУНКЦИЯМ УПРАВЛЕНИЯ СТРУКТУРОЙ И ИНФОРМАЦИОННЫМ НАПОЛНЕНИЕМ САЙТА. НАБОР КНОПОК ВЕРХНЕЙ ПАНЕЛИ ОТЛИЧАЕТСЯ ДЛЯ РАЗЛИЧНЫХ РАЗДЕЛОВ САЙТА. ТАК ОТДЕЛЬНЫЕ НАБОРЫ ДЕЙСТВИЙ ПРЕДУСМОТРЕНЫ ДЛЯ УПРАВЛЕНИЯ СТАТИЧЕСКИМ СОДЕРЖИМЫМ СТРАНИЦ, ДИНАМИЧЕСКИМИ ПУБЛИКАЦИЯМИ (НОВОСТЯМИ, КАТАЛОГОМ, ФОТОГАЛЕРЕЕЙ) И Т.П.\rВЕРНУТЬСЯ НА ГЛАВНУЮ СТРАНИЦУ\r\n'),(8,'ea6b7e8f2315bef45aff06046bff51b8','ЗАДАТЬ ВОПРОС\r\n\r\n'),(9,'7535a1f25a1d9dccc214848d4086e066','КОНТАКТНАЯ ИНФОРМАЦИЯ\r\nОБРАТИТЕСЬ К НАШИМ СПЕЦИАЛИСТАМ И ПОЛУЧИТЕ ПРОФЕССИОНАЛЬНУЮ КОНСУЛЬТАЦИЮ ПО УСЛУГАМ НАШЕГО БАНКА.\rВЫ МОЖЕТЕ ОБРАТИТЬСЯ К НАМ ПО ТЕЛЕФОНУ, ПО ЭЛЕКТРОННОЙ ПОЧТЕ ИЛИ ДОГОВОРИТЬСЯ О ВСТРЕЧЕ В НАШЕМ ОФИСЕ. БУДЕМ РАДЫ ПОМОЧЬ ВАМ И ОТВЕТИТЬ НА ВСЕ ВАШИ ВОПРОСЫ. \rТЕЛЕФОНЫ\rТЕЛЕФОН/ФАКС: \n(495) 212-85-06\rТЕЛЕФОНЫ: \n(495) 212-85-07\r(495) 212-85-08\rНАШ ОФИС В МОСКВЕ\r\n'),(10,'5cb3783e398e7c6ed1983ad2cd1d6419','НАШИ РЕКВИЗИТЫ\r\nНАИМЕНОВАНИЕ БАНКА\rЗАКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО \"НАЗВАНИЕ БАНКА\"\rСОКРАЩЕННОЕ НАЗВАНИЕ\rЗАО \"НАЗВАНИЕ БАНКА\"\rПОЛНОЕ НАИМЕНОВАНИЕ НА АНГЛИЙСКОМ ЯЗЫКЕ\r\"THE NAME OF BANK\"\rОСНОВНОЙ ГОСУДАРСТВЕННЫЙ РЕГИСТРАЦИОННЫЙ НОМЕР\r152073950937987\rTELEX\r911156 IRS RU\rS.W.I.F.T.\rIISARUMM\rSPRINT\rRU.BANK/BITEX\rЮРИДИЧЕСКИЙ АДРЕС: \r175089, РОССИЯ, Г. МОСКВА, УЛ. БОЛЬШАЯ ДМИТРОВКА, Д. 15, СТР. 1\rКОР/СЧЕТ: \r30102810000000000569\rИНН:\r7860249880\rБИК:\r044591488\rОКПО:\r11806935\rОКОНХ:\r98122\rКПП:\r775021017\rПРОЧАЯ ИНФОРМАЦИЯ\rБАНКОВСКИЙ ИДЕНТИФИКАЦИОННЫЙ КОД: 0575249000\rПОЧТОВЫЙ АДРЕС: 115035, РОССИЯ, Г. МОСКВА, УЛ. БАЛЧУГ, Д. 2\rТЕЛЕФОН: (495) 960-10-12\rФАКС: (495) 240-38-12\rE-MAIL: \rRUSBK@MAIL.RUSBANK.RU\r\n'),(11,'21114cbd09d60ca232b3e53d004564dc','НОВОСТИ КОМПАНИИ\r\n\r\n'),(12,'f58e028735b5d07233c4a161c9231405','ПОИСК\r\n\r\n'),(13,'be3fe2336ca014ea48484837a6379cf7','КАРТА САЙТА\r\n\r\n'),(14,'ddea3137a2dc2052dfdc6ef265d0e1de','ИНТЕРНЕТ-БАНКИНГ\r\n\"ИНТЕРНЕТ-БАНК\" — ЭТО ПОЛНОФУНКЦИОНАЛЬНАЯ, УДОБНАЯ И БЕЗОПАСНАЯ СИСТЕМА ДИСТАНЦИОННОГО БАНКОВСКОГО ОБСЛУЖИВАНИЯ, С ЕЕ ПОМОЩЬЮ ВЫ МОЖЕТЕ В ПОЛНОМ ОБЪЕМЕ УПРАВЛЯТЬ БАНКОВСКИМИ СЧЕТАМИ В РЕЖИМЕ РЕАЛЬНОГО ВРЕМЕНИ. ПОНЯТНЫЙ ДЛЯ КЛИЕНТА ИНТЕРФЕЙС ПОЗВОЛЯЕТ НЕ ТРАТИТЬ ВРЕМЯ НА ОБУЧЕНИЕ РАБОТЕ С СИСТЕМОЙ. СИСТЕМА СНАБЖЕНА ВНУТРЕННИМИ ПОДСКАЗКАМИ.\r\"ИНТЕРНЕТ-БАНК\" ПОЗВОЛЯЕТ:\rЧЕРЕЗ САЙТ БАНКА В ИНТЕРНЕТЕ ПОЛУЧИТЬ ДОСТУП К ВАШИМ БАНКОВСКИМ СЧЕТАМ ПРАКТИЧЕСКИ С ЛЮБОГО КОМПЬЮТЕРА В ЛЮБОЙ ТОЧКЕ ЗЕМНОГО ШАРА, ГДЕ ЕСТЬ ДОСТУП В ИНТЕРНЕТ \rВВОДИТЬ, РЕДАКТИРОВАТЬ И ПЕЧАТАТЬ ПЛАТЕЖНЫЕ ДОКУМЕНТЫ \rПОДПИСЫВАТЬ КАЖДЫЙ ПЛАТЕЖНЫЙ ДОКУМЕНТ ПЕРСОНИФИЦИРОВАННОЙ ЭЛЕКТРОННОЙ-ЦИФРОВОЙ ПОДПИСЬЮ \rНАПРАВЛЯТЬ ДОКУМЕНТЫ В БАНК НА ИСПОЛНЕНИЕ \r«ВИЗИРОВАТЬ» НАПРАВЛЯЕМЫЕ В БАНК ПЛАТЕЖНЫЕ ДОКУМЕНТЫ УПОЛНОМОЧЕННЫМ ЛИЦОМ \rПОЛУЧАТЬ ВЫПИСКИ СО ВСЕМИ ПРИЛОЖЕНИЯМИ ПО СЧЕТАМ ЗА ОПРЕДЕЛЕННЫЙ ПЕРИОД ВРЕМЕНИ \rОСУЩЕСТВЛЯТЬ ПОКУПКУ/ПРОДАЖУ ИНОСТРАННОЙ ВАЛЮТЫ, КОНВЕРТАЦИЮ ВАЛЮТ В РЕЖИМЕ ON-LINE ПО ТЕКУЩЕМУ РЫНОЧНОМУ КУРСУ \rРЕЗЕРВИРОВАТЬ НА СЧЕТЕ ВРЕМЕННО СВОБОДНЫЕ ДЕНЕЖНЫЕ СРЕДСТВА И ПОЛУЧАТЬ ДОПОЛНИТЕЛЬНЫЙ ДОХОД В ВИДЕ НАЧИСЛЕННЫХ ПРОЦЕНТОВ \rОТСЛЕЖИВАТЬ ТЕКУЩЕЕ СОСТОЯНИЕ СЧЕТОВ\rПОЛУЧАТЬ АКТУАЛЬНУЮ ИНФОРМАЦИЮ О ПЛАТЕЖАХ КОНТРАГЕНТОВ ИЗ ДРУГИХ БАНКОВ, КОТОРЫЕ ЗАЧИСЛЯЮТСЯ НА СЧЕТ КЛИЕНТА В МОМЕНТ ПОСТУПЛЕНИЯ В БАНК \rНАПРАВЛЯТЬ В БАНК БУХГАЛТЕРСКУЮ ОТЧЕТНОСТЬ В ЭЛЕКТРОННОМ ВИДЕ \rКОНТРОЛИРОВАТЬ СОСТОЯНИЕ ССУДНЫХ СЧЕТОВ, ПОГАШЕНИЕ И УПЛАТУ ПРОЦЕНТОВ \rПОДКЛЮЧЕНИЕ К СИСТЕМЕ, В ТОМ ЧИСЛЕ ГЕНЕРАЦИЯ КЛЮЧЕЙ ДЛЯ ФОРМИРОВАНИЯ ЭЛЕКТРОННО-ЦИФРОВОЙ ПОДПИСИ, БЕСПЛАТНО. АБОНЕНТСКАЯ ПЛАТА ЗА ОБСЛУЖИВАНИЕ НЕ ВЗИМАЕТСЯ.\rТЕХНИЧЕСКИЕ ТРЕБОВАНИЯ\rДЛЯ ПОЛНОЦЕННОЙ РАБОТЫ С СИСТЕМОЙ НЕОБХОДИМ КОМПЬЮТЕР С ОС WINDOWS ,НЕ НИЖЕ WINDOWS 2000; ПРОГРАММА ПРОСМОТРА ИНТЕРНЕТ-СТРАНИЦ INTERNET EXPLORER ВЕРСИИ НЕ НИЖЕ 6.0; ПРИЛОЖЕНИЕ JAVA RUNTIME ENVIRONMENT (JRE) VERSION 1.5.0\r\n'),(15,'54c7cb63bd2ee9f4878bc248cccbab6b','ИНКАССАЦИЯ\r\nИНКАССАЦИЯ\r– ДОСТАВКА ЦЕННОСТЕЙ И ДЕНЕЖНЫХ СРЕДСТВ.\rБАНК ПРЕДЛАГАЕТ ВОСПОЛЬЗОВАТЬСЯ УСЛУГАМИ СЛУЖБЫ ИНКАССАЦИИ. СЛУЖБА ИНКАССАЦИИ БАНКА ОБЕСПЕЧИТ:\rИНКАССАЦИЮ НАЛИЧНЫХ ДЕНЕЖНЫХ СРЕДСТВ, ДОСТАВКУ ИХ НА СПЕЦИАЛЬНО ОБОРУДОВАННОМ ТРАНСПОРТЕ В БАНК, ПО СОГЛАСОВАННОМУ С КЛИЕНТОМ, ГРАФИКУ РАБОТЫ;\rСОПРОВОЖДЕНИЕ ЦЕННОСТЕЙ И ДЕНЕЖНЫХ СРЕДСТВ КЛИЕНТА ПО МАРШРУТУ, УКАЗАННОМУ КЛИЕНТОМ; \rДОСТАВКУ НАЛИЧНЫХ ДЕНЕЖНЫХ СРЕДСТВ КЛИЕНТУ; \rДОСТАВКУ КЛИЕНТУ РАЗМЕННОЙ МОНЕТЫ.\rУСЛУГИ ПРЕДОСТАВЛЯЮТСЯ КАК СОБСТВЕННОЙ СЛУЖБОЙ ИНКАССАЦИИ, ТАК И ЧЕРЕЗ ДРУГИЕ СПЕЦИАЛИЗИРОВАННЫЕ ОРГАНИЗАЦИИ.\rНЕОБХОДИМАЯ ДОКУМЕНТАЦИЯ:\rДОГОВОР НА СБОР (ИНКАССАЦИЮ) ДЕНЕЖНОЙ ВЫРУЧКИ И ДОСТАВКУ РАЗМЕННОЙ МОНЕТЫ;\rЗАЯВКА НА ИНКАССАЦИЮ;\rПРЕДВАРИТЕЛЬНАЯ ЗАЯВКА НА ОКАЗАНИЕ УСЛУГ ПО ДОСТАВКЕ ДЕНЕЖНОЙ НАЛИЧНОСТИ;\rДОГОВОР НА ОКАЗАНИЕ УСЛУГ ПО ДОСТАВКЕ НАЛИЧНЫХ ДЕНЕЖНЫХ СРЕДСТВ.\rОБЪЕМ ИНКАССИРУЕМЫХ ДЕНЕЖНЫХ СРЕДСТВ\rТАРИФЫ ПО СТАВКЕ ПРОЦЕНТА ОТ ОБЪЕМА ИНКАССАЦИИ\rТАРИФЫ ОТ КОЛИЧЕСТВА ВЫЕЗДОВ\rТАРИФЫ С ФИКСИРОВАННОЙ СТОИМОСТЬЮ\rДО 0,5 МЛН. РУБ.\r0,45%\rОТ 120 РУБ/ЗАЕЗД\rНЕ МЕНЕЕ 2500 РУБ. В МЕСЯЦ\rОТ 0,5 ДО 1,0 МЛН. РУБ.\r0,4 - 0,35%\rОТ 140 РУБ/ЗАЕЗД\rНЕ МЕНЕЕ 3500 РУБ. В МЕСЯЦ\rОТ 1,0 ДО 1,5 МЛН. РУБ.\r0,35 -0,3%\rОТ 160 РУБ/ЗАЕЗД\rНЕ МЕНЕЕ 4500 РУБ. В МЕСЯЦ\rОТ 1,5 ДО 2,0 МЛН. РУБ.\r0,3 -0,25%\rОТ 180 РУБ/ЗАЕЗД\rНЕ МЕНЕЕ 5000 РУБ. В МЕСЯЦ\rОТ 2,0 МЛН ДО 3,0 МЛН. РУБ.\r0,25 - 0,2 %\rОТ 200 РУБ/ЗАЕЗД\rНЕ МЕНЕЕ 6000 РУБ. В МЕСЯЦ\rОТ 4,0 МЛН. ДО 6 МЛН. РУБ.\r0,2 -0,15%\rОТ 220 РУБ/ЗАЕЗД\rНЕ МЕНЕЕ 7000 РУБ. В МЕСЯЦ\rОТ 6,0 МЛН. ДО 10 МЛН. РУБ.\r0,15 -0,1 %\rОТ 240 РУБ/ЗАЕЗД\rНЕ МЕНЕЕ 8000 РУБ. В МЕСЯЦ\rСВЫШЕ 10 МЛН. РУБ.\r0,1 - 0,05%\rОТ 260 РУБ/ЗАЕЗД\rНЕ МЕНЕЕ 9000 РУБ. В МЕСЯЦ\rДРУГИЕ УСЛОВИЯ\rИНКАССАЦИЯ 5-10 ТОРГОВЫХ ТОЧЕК КЛИЕНТА\rПЛЮС 5 % ОТ ТАРИФНОЙ СТАВКИ ЗА КАЖДУЮ ПОСЛЕДУЮЩУЮ ТОЧКУ\rИНКАССАЦИЯ СВЫШЕ 10 ТОРГОВЫХ ТОЧЕК КЛИЕНТА\rПЛЮС 10 % ОТ ТАРИФНОЙ СТАВКИ ЗА КАЖДУЮ ПОСЛЕДУЮЩУЮ ТОЧКУ\rВРЕМЯ ИНКАССАЦИИ УСТАНАВЛИВАЕТ КЛИЕНТ\rПЛЮС 10 % ОТ ТАРИФНОЙ СТАВКИ\rНОЧНАЯ ИНКАССАЦИЯ (С 22:00)\rПЛЮС 20% ОТ ТАРИФНОЙ СТАВКИ\rУТРЕННЯЯ ИНКАССАЦИЯ ДЛЯ ЗАЧИСЛЕНИЯ В 1ОЙ ПОЛОВИНЕ ДНЯ\rБЕСПЛАТНО\rЕСЛИ СДАЮТ НА ОДНОМ ОБЪЕКТЕ НЕСКОЛЬКО ЮРИДИЧЕСКИХ ЛИЦ\rБЕСПЛАТНО\rДОСТАВКА РАЗМЕННОЙ МОНЕТЫ\r0,4 % ОТ СУММЫ ДОСТАВКИ\rРАСХОДНЫЙ МАТЕРИАЛ\rБЕСПЛАТНО\rХРАНЕНИЕ ДЕНЕЖНЫХ СРЕДСТВ В НОЧНОЕ ВРЕМЯ, ПРАЗДНИЧНЫЕ И ВЫХОДНЫЕ\rБЕСПЛАТНО\rЗАГРУЗКА БАНКОМАТОВ, ПОДКРЕПЛЕНИЕ ДОПОЛНИТЕЛЬНЫХ ОФИСОВ\rОТ 350 РУБ/ЧАС\rДОСТАВКА ДЕНЕЖНЫХ СРЕДСТВ ИЗ БАНКА КЛИЕНТУ\r0,5 % ОТ СУММЫ, ЛИБО ПО СОГЛАШЕНИЮ СТОРОН\r\n'),(16,'cbfa46d27f8efb5a7a8153fe51f3bf3b','КОРПОРАТИВНЫМ КЛИЕНТАМ\r\nБАНК ЯВЛЯЕТСЯ ОДНИМ ИЗ ЛИДЕРОВ БАНКОВСКОГО РЫНКА ПО ОБСЛУЖИВАНИЮ КОРПОРАТИВНЫХ КЛИЕНТОВ. \rКОМПЛЕКСНОЕ БАНКОВСКОЕ ОБСЛУЖИВАНИЕ НА ОСНОВЕ МАКСИМАЛЬНОГО ИСПОЛЬЗОВАНИЯ КОНКУРЕНТНЫХ ПРЕИМУЩЕСТВ И ВОЗМОЖНОСТЕЙ БАНКА ПОЗВОЛЯЕТ СОЗДАТЬ УСТОЙЧИВУЮ \rФИНАНСОВУЮ ПЛАТФОРМУ ДЛЯ РАЗВИТИЯ БИЗНЕСА ПРЕДПРИЯТИЙ И ХОЛДИНГОВ РАЗЛИЧНЫХ ОТРАСЛЕЙ ЭКОНОМИКИ. УЖЕ БОЛЕЕ 15 ЛЕТ БАНК РАБОТАЕТ ДЛЯ СВОИХ КЛИЕНТОВ, \rЯВЛЯЯСЬ ОБРАЗЦОМ НАДЕЖНОСТИ И ВЫСОКОГО ПРОФЕССИОНАЛИЗМА.\rНАШ БАНК ПРЕДЛАГАЕТ КОРПОРАТИВНЫМ КЛИЕНТАМ СЛЕДУЮЩИЕ ВИДЫ УСЛУГ:\rРАСЧЕТНО-КАССОВОЕ ОБСЛУЖИВАНИЕ\rИНКАССАЦИЯ\rИНТЕРНЕТ-БАНКИНГ\r\n'),(17,'0081c8541e53a7f35c06cc7a74ff5a29','РАСЧЕТНО-КАССОВОЕ ОБСЛУЖИВАНИЕ\r\nВО ВСЕХ СТРАНАХ МИРА САМОЙ РАСПРОСТРАНЕННОЙ ФУНКЦИЕЙ БАНКОВ ЯВЛЯЮТСЯ РАСЧЕТЫ. БОЛЬШИНСТВО ОКАЗЫВАЕМЫХ БАНКОМ УСЛУГ СВЯЗАНЫ С БЫСТРЫМ И КАЧЕСТВЕННЫМ ПРОВЕДЕНИЕМ РАСЧЕТНЫХ ОПЕРАЦИЙ. КАЖДЫЙ КЛИЕНТ, НЕЗАВИСИМО ОТ ВИДА ОСУЩЕСТВЛЯЕМЫХ В БАНКЕ ОПЕРАЦИЙ, ПОЛЬЗУЕТСЯ ПЕРЕВОДОМ СРЕДСТВ.\rКОРПОРАТИВНЫМ КЛИЕНТАМ БАНК ОКАЗЫВАЕТ СЛЕДУЮЩИЕ УСЛУГИ:\rОТКРЫТИЕ И ВЕДЕНИЕ СЧЕТОВ ЮРИДИЧЕСКИХ ЛИЦ - РЕЗИДЕНТОВ И НЕРЕЗИДЕНТОВ РОССИЙСКОЙ ФЕДЕРАЦИИ — В ВАЛЮТЕ РФ И ИНОСТРАННОЙ ВАЛЮТЕ; \rВСЕ ВИДЫ РАСЧЕТОВ В РУБЛЯХ И ИНОСТРАННОЙ ВАЛЮТЕ; \rКАССОВОЕ ОБСЛУЖИВАНИЕ В РУБЛЯХ И ИНОСТРАННОЙ ВАЛЮТЕ; \rУСКОРЕННЫЕ ПЛАТЕЖИ ПО РОССИИ ПО СИСТЕМЕ МЕЖРЕГИОНАЛЬНЫХ ЭЛЕКТРОННЫХ ПЛАТЕЖЕЙ; \rПЛАТЕЖИ В ЛЮБУЮ СТРАНУ МИРА В КРАТЧАЙШИЕ СРОКИ \rПРОВЕДЕНИЕ КОНВЕРСИОННЫХ ОПЕРАЦИЙ ПО СЧЕТАМ КЛИЕНТОВ \rИНКАССАЦИЯ И ДОСТАВКА НАЛИЧНЫХ ДЕНЕГ И ЦЕННОСТЕЙ \rРАСПОРЯЖЕНИЕ СЧЕТОМ ПОСРЕДСТВОМ СИСТЕМЫ «ИНТЕРНЕТ-БАНК» \rОПЕРАЦИОННЫЙ ДЕНЬ В БАНКЕ УСТАНОВЛЕН: ЕЖЕДНЕВНО С 09.00 ДО 16.00, В ПЯТНИЦУ И ПРЕДПРАЗДНИЧНЫЕ ДНИ С 09.00 ДО 15.00.\rКАССОВОЕ ОБСЛУЖИВАНИЕ ОСУЩЕСТВЛЯЕТСЯ НА ДОГОВОРНОЙ ОСНОВЕ, ПЛАТА ВЗИМАЕТСЯ ПО ФАКТУ СОВЕРШЕНИЯ КАЖДОЙ ОПЕРАЦИИ В СООТВЕТСТВИИ С УТВЕРЖДЕННЫМИ БАНКОМ ТАРИФАМИ ЗА УСЛУГИ КОРПОРАТИВНЫМ КЛИЕНТАМ.\r\n'),(18,'c53e6ba1e8943d2df7ff449091252209','ДЕПОЗИТАРНЫЕ УСЛУГИ\r\nДЕПОЗИТАРИЙ БАНКА ИМЕЕТ КОРРЕСПОНДЕНТСКИЕ ОТНОШЕНИЯ СО ВСЕМИ КРУПНЫМИ РАСЧЕТНЫМИ И УПОЛНОМОЧЕННЫМИ ДЕПОЗИТАРИЯМИ. РАЗВЕТВЛЕННАЯ СЕТЬ КОРРЕСПОНДЕНТСКИХ СЧЕТОВ ПОЗВОЛЯЕТ КЛИЕНТАМ ДЕПОЗИТАРИЯ ОСУЩЕСТВЛЯТЬ ОПЕРАЦИИ ПРАКТИЧЕСКИ С ЛЮБЫМИ ИНСТРУМЕНТАМИ ФОНДОВОГО РЫНКА.\rУСЛУГИ ДЕПОЗИТАРИЯ БАНКА:\rОТКРЫТИЕ И ВЕДЕНИЕ СЧЕТОВ ДЕПО КЛИЕНТОВ;\rХРАНЕНИЕ И УЧЕТ ВСЕХ ВИДОВ ЦЕННЫХ БУМАГ, ВКЛЮЧАЯ АКЦИИ, ОБЛИГАЦИИ, ПАИ, ВЕКСЕЛЯ, МЕЖДУНАРОДНЫХ ФИНАНСОВЫХ ИНСТРУМЕНТОВ (ЕВРООБЛИГАЦИИ, АДР, ГДР);\rКОНСУЛЬТИРОВАНИЕ И ПРОВЕДЕНИЕ КОМПЛЕКСНЫХ СТРУКТУРИРОВАННЫХ ОПЕРАЦИЙ С ЦЕННЫМИ БУМАГАМИ;\rПЕРЕРЕГИСТРАЦИЯ ПРАВ СОБСТВЕННОСТИ НА ЦЕННЫЕ БУМАГИ, В ТОМ ЧИСЛЕ ПРИ ВЫПОЛНЕНИИ ОПРЕДЕЛЕННОГО УСЛОВИЯ;\rОФОРМЛЕНИЕ И УЧЕТ ЗАЛОГОВЫХ ОПЕРАЦИЙ С ЦЕННЫМИ БУМАГАМИ ДЕПОНЕНТОВ;\rПРЕДОСТАВЛЕНИЕ ИНФОРМАЦИИ ОБ ЭМИТЕНТЕ;\rПОМОЩЬ ДЕПОНЕНТАМ В РЕАЛИЗАЦИИ ПРАВ, ЗАКРЕПЛЕННЫХ ЗА НИМИ КАК ЗА ВЛАДЕЛЬЦАМИ ЦЕННЫХ БУМАГ;\rКОНСУЛЬТАЦИОННАЯ ПОДДЕРЖКА ПРИ ПРОВЕДЕНИИ ОПЕРАЦИЙ ПО СЧЕТАМ ДЕПО;\rВЫПОЛНЕНИЕ ФУНКЦИЙ ПЛАТЕЖНОГО АГЕНТА:\rХРАНЕНИЕ ЦЕННЫХ БУМАГ НА ОСНОВАНИИ ДОГОВОРОВ ОТВЕТСТВЕННОГО ХРАНЕНИЯ;\rПРОВЕДЕНИЕ ЭКСПЕРТИЗЫ ЦЕННЫХ БУМАГ;\rДРУГИЕ УСЛУГИ.\rСПОСОБЫ ОБМЕНА ДОКУМЕНТОВ С ДЕПОЗИТАРИЕМ:\rВ БУМАЖНОМ ВИДЕ С ОРИГИНАЛЬНЫМИ ПОДПИСЯМИ И ПЕЧАТЯМИ;\rПО ФАКСУ (ПОРУЧЕНИЯ НА ЗАЧИСЛЕНИЕ ЦЕННЫХ БУМАГ И ПРЕДОСТАВЛЕНИЕ ВЫПИСОК) С ПОСЛЕДУЮЩИМ ПРЕДОСТАВЛЕНИЕМ ОРИГИНАЛА;\rПО СИСТЕМАМ S.W.I.F.T. И TELEX.\rТАРИФЫ НА ДЕПОЗИТАРНОЕ ОБСЛУЖИВАНИЕ\rНАИМЕНОВАНИЕ УСЛУГИ\rТАРИФ\rОТКРЫТИЕ СЧЕТА ДЕПО ДЛЯ ФИЗИЧЕСКИХ ЛИЦ (РЕЗИДЕНТОВ И НЕРЕЗИДЕНТОВ)\n150 РУБ.\nОТКРЫТИЕ СЧЕТА ДЕПО ДЛЯ ЮРИДИЧЕСКИХ ЛИЦ – РЕЗИДЕНТОВ\n400 РУБ.\nОТКРЫТИЕ СЧЕТА ДЕПО ДЛЯ ЮРИДИЧЕСКИХ ЛИЦ – НЕРЕЗИДЕНТОВ\n1600 РУБ.\nЗАКРЫТИЕ СЧЕТА ДЕПО\nНЕ ВЗИМАЕТСЯ\nВНЕСЕНИЕ ИЗМЕНЕНИЯ В АНКЕТУ ДЕПОНЕНТА\nНЕ ВЗИМАЕТСЯ\nАБОНЕНТСКАЯ ПЛАТА В МЕСЯЦ ЗА ВЕДЕНИЕ СЧЕТА ДЕПО ДЛЯ ЮРИДИЧЕСКИХ ЛИЦ - РЕЗИДЕНТОВ,\nПРИ НАЛИЧИИ ОСТАТКА НА СЧЕТЕ ДЕПО\n500 РУБ.\nАБОНЕНТСКАЯ ПЛАТА В МЕСЯЦ ЗА ВЕДЕНИЕ СЧЕТА ДЕПО ДЛЯ ЮРИДИЧЕСКИХ ЛИЦ - НЕРЕЗИДЕНТОВ,\nПРИ НАЛИЧИИ ОСТАТКА НА СЧЕТЕ ДЕПО\n2 500 РУБ.\nАБОНЕНТСКАЯ ПЛАТА В МЕСЯЦ ЗА ВЕДЕНИЕ СЧЕТА ДЕПО ДЛЯ ДЕПОНЕНТОВ, НАХОДЯЩИХСЯ НА БРОКЕРСКОМ\nОБСЛУЖИВАНИИ, ПРИ НАЛИЧИИ ДВИЖЕНИЯ ПО СЧЕТУ ДЕПО\n150 РУБ.\nФОРМИРОВАНИЕ ОТЧЕТА О СОВЕРШЕННЫХ ПО СЧЕТУ ДЕПО ОПЕРАЦИЯХ ЗА ПЕРИОД ПОСЛЕ ПРОВЕДЕНИЯ\nОПЕРАЦИИ\nНЕ ВЗИМАЕТСЯ\nФОРМИРОВАНИЕ ОТЧЕТА О СОВЕРШЕННЫХ ПО СЧЕТУ ДЕПО ОПЕРАЦИЯХ ЗА ПЕРИОД, ВЫПИСКИ О СОСТОЯНИИ\nСЧЕТА (РАЗДЕЛА СЧЕТА) ДЕПО ПО ИНФОРМАЦИОННОМУ ЗАПРОСУ ДЕПОНЕНТА\n150 РУБ.\nЗАЧИСЛЕНИЕ (СПИСАНИЕ) БЕЗДОКУМЕНТАРНЫХ ЦЕННЫХ БУМАГ, ЗА ОДНО ПОРУЧЕНИЕ\n300 РУБ.\nЗАЧИСЛЕНИЕ (СПИСАНИЕ) ДОКУМЕНТАРНЫХ ЦЕННЫХ БУМАГ, ЗА ОДНУ ЦЕННУЮ БУМАГУ\n580 РУБ.\nПЕРЕВОД (ВНУТРИ ДЕПОЗИТАРИЯ) БЕЗДОКУМЕНТАРНЫХ И ДОКУМЕНТАРНЫХ ЦЕННЫХ БУМАГ, ЗА ОДНО\nПОРУЧЕНИЕ (ВЗИМАЕТСЯ С ДЕПОНЕНТА - ИНИЦИАТОРА ОПЕРАЦИИ)\n300 РУБ.\nИЗМЕНЕНИЕ МЕСТ ХРАНЕНИЯ БЕЗДОКУМЕНТАРНЫХ ЦЕННЫХ БУМАГ (ЗА ОДНО ПОРУЧЕНИЕ) И ДОКУМЕНТАРНЫХ\nЦЕННЫХ БУМАГ (ЗА ОДНУ ЦЕННУЮ БУМАГУ)\n580 РУБ.\nБЛОКИРОВКА (РАЗБЛОКИРОВКА), РЕГИСТРАЦИЯ ЗАЛОГА (ВОЗВРАТА ЗАЛОГА) БЕЗДОКУМЕНТАРНЫХ\nЦЕННЫХ БУМАГ\n870 РУБ.\nБЛОКИРОВКА (РАЗБЛОКИРОВКА), РЕГИСТРАЦИЯ ЗАКЛАДА (ВОЗВРАТА ЗАКЛАДА) ДОКУМЕНТАРНЫХ\nЦЕННЫХ БУМАГ\n870 РУБ.\n*ПРИ ВЗИМАНИИ ТАРИФОВ ДОПОЛНИТЕЛЬНО ВЗИМАЕТСЯ НАЛОГ НА ДОБАВЛЕННУЮ СТОИМОСТЬ ПО СТАВКЕ 18%.\rПЛАТА ЗА ИНЫЕ УСЛУГИ, НЕ ОГОВОРЕННЫЕ В ДАННЫХ ТАРИФАХ ДЕПОЗИТАРИЯ, ЗА ИСКЛЮЧЕНИЕМ УСЛУГ, ОКАЗЫВАЕМЫХ ПРИ ПРОВЕДЕНИИ ОПЕРАЦИЙ ДЕПОНЕНТА ДРУГИМИ ДЕПОЗИТАРИЯМИ И РЕЕСТРОДЕРЖАТЕЛЯМИ, НЕ ВЗИМАЕТСЯ.\r\n'),(19,'65624a89c9bf009bafe9104c4ca2c703','ДОКУМЕНТАРНЫЕ ОПЕРАЦИИ\r\nНАШ БАНК ПРЕДЛАГАЕТ ШИРОКИЙ СПЕКТР БАНКОВСКИХ УСЛУГ ПО ПРОВЕДЕНИЮ ДОКУМЕНТАРНЫХ РАСЧЕТОВ В ОБЛАСТИ МЕЖДУНАРОДНЫХ ТОРГОВО-ЭКОНОМИЧЕСКИХ ОТНОШЕНИЙ ,В ТОМ ЧИСЛЕ ПО НЕСТАНДАРТНЫМ И СЛОЖНО СТРУКТУРИРОВАННЫМ СХЕМАМ.\rБЕЗУСЛОВНЫМ ПРЕИМУЩЕСТВОМ РАБОТЫ С НАШИМ БАНКОМ ЯВЛЯЕТСЯ ВОЗМОЖНОСТЬ ПРОВОДИТЬ ОПЕРАЦИИ В ПРЕДЕЛЬНО СЖАТЫЕ СРОКИ ПО КОНКУРЕНТОСПОСОБНЫМ ТАРИФАМ, А ТАКЖЕ ИХ ОБШИРНАЯ ГЕОГРАФИЯ: СТРАНЫ СНГ И БАЛТИИ, БЛИЖНЕГО И ДАЛЬНЕГО ЗАРУБЕЖЬЯ.\rСПЕКТР УСЛУГ ПО БАНКОВСКИМ ГАРАНТИЯМ: \rВЫДАЧА ЛЮБЫХ ВИДОВ ГАРАНТИЙ ПОД КОНТРГАРАНТИИ БАНКОВ-КОРРЕСПОНДЕНТОВ В СЧЕТ УСТАНОВЛЕННЫХ НА НИХ ДОКУМЕНТАРНЫХ ЛИМИТОВ: 									 \nГАРАНТИИ НАДЛЕЖАЩЕГО ИСПОЛНЕНИЯ КОНТРАКТОВ;\rГАРАНТИИ ПЛАТЕЖА (Т.Е. ВЫПОЛНЕНИЯ ПЛАТЕЖНЫХ ОБЯЗАТЕЛЬСТВ ПО КОНТРАКТАМ);\rГАРАНТИИ ВОЗВРАТА АВАНСОВОГО ПЛАТЕЖА;\rГАРАНТИИ В ПОЛЬЗУ ТАМОЖЕННЫХ ОРГАНОВ;\rГАРАНТИИ В ПОЛЬЗУ НАЛОГОВЫХ ОРГАНОВ;\rТЕНДЕРНЫЕ ГАРАНТИИ (Т.Е. ГАРАНТИИ УЧАСТИЯ В ТОРГАХ/КОНКУРСАХ);\rГАРАНТИИ ВОЗВРАТА КРЕДИТА;\rГАРАНТИИ ОПЛАТЫ АКЦИЙ;\rГАРАНТИИ, ПРЕДОСТАВЛЯЕМЫЕ В КАЧЕСТВЕ ВСТРЕЧНОГО ОБЕСПЕЧЕНИЯ СУДЕБНЫХ ИСКОВ;\rАВИЗОВАНИЕ ГАРАНТИЙ ИНОСТРАННЫХ И РОССИЙСКИХ БАНКОВ-КОРРЕСПОНДЕНТОВ В ПОЛЬЗУ ОТЕЧЕСТВЕННЫХ И ЗАРУБЕЖНЫХ БЕНЕФИЦИАРОВ;\rПРЕДЪЯВЛЕНИЕ ТРЕБОВАНИЯ ПЛАТЕЖА ПО ПОРУЧЕНИЮ БЕНЕФИЦИАРОВ В СЧЕТ БАНКОВСКИХ ГАРАНТИЙ;\rЗАВЕРКА ПОДЛИННОСТИ ПОДПИСЕЙ НА ГАРАНТИЯХ ИНОСТРАННЫХ И РОССИЙСКИХ БАНКОВ ПО ПРОСЬБЕ БЕНЕФИЦИАРА;\rВ СЛУЧАЕ НЕОБХОДИМОСТИ ИНЫЕ ВИДЫ ОПЕРАЦИЙ, ВКЛЮЧАЯ ПРЕДВАРИТЕЛЬНУЮ ПРОРАБОТКУ УСЛОВИЙ ГАРАНТИЙНОЙ СДЕЛКИ.\rПРЕДОСТАВЛЯЕМЫЕ УСЛУГИ ПО ДОКУМЕНТАРНЫМ (В ТОМ ЧИСЛЕ РЕЗЕРВНЫМ) АККРЕДИТИВАМ:\rАВИЗОВАНИЕ АККРЕДИТИВОВ ИНОСТРАННЫХ И РОССИЙСКИХ БАНКОВ-КОРРЕСПОНДЕНТОВ В ПОЛЬЗУ ОТЕЧЕСТВЕННЫХ И ЗАРУБЕЖНЫХ БЕНЕФИЦИАРОВ;\rПОДТВЕРЖДЕНИЕ АККРЕДИТИВОВ БАНКОВ-КОРРЕСПОНДЕНТОВ ПОД ПРЕДОСТАВЛЕННОЕ ДЕНЕЖНОЕ ПОКРЫТИЕ ИЛИ В СЧЕТ ДОКУМЕНТАРНЫХ ЛИМИТОВ, УСТАНОВЛЕННЫХ НА БАНК-ЭМИТЕНТ;\rПОДТВЕРЖДЕНИЕ ЭКСПОРТНЫХ АККРЕДИТИВОВ КОТНРАГЕНТА;\rИСПОЛНЕНИЕ АККРЕДИТИВОВ;\rВЫПОЛНЕНИЕ ФУНКЦИИ РАМБУРСИРУЮЩЕГО БАНКА НА ОСНОВАНИИ ПРЕДОСТАВЛЕННЫХ ПОЛНОМОЧИЙ ПО АККРЕДИТИВАМ ИНОСТРАННЫХ И РОССИЙСКИХ БАНКОВ-КОРРЕСПОНДЕНТОВ (ПРИ НАЛИЧИИ У БАНКА-ЭМИТЕНТА КОРРЕСПОНДЕНТСКОГО СЧЕТА ЛОРО В ГАЗПРОМБАНКЕ);\rВЫДАЧА БЕЗОТЗЫВНЫХ РАМБУРСНЫХ ОБЯЗАТЕЛЬСТВ ПО АККРЕДИТИВАМ, ОТКРЫТЫМ БАНКАМИ-КОРРЕСПОНДЕНТАМИ, В СЧЕТ ДОКУМЕНТАРНЫХ ЛИМИТОВ, УСТАНОВЛЕННЫХ НА БАНК-ЭМИТЕНТ (ПРИ НАЛИЧИИ У БАНКА-ЭМИТЕНТА КОРРЕСПОНДЕНТСКОГО СЧЕТА ЛОРО В ГАЗПРОМБАНКЕ);\rОФОРМЛЕНИЕ ТРАНСФЕРАЦИИ И ПЕРЕУСТУПКИ ВЫРУЧКИ ПО АККРЕДИТИВАМ;\rОТКРЫТИЕ АККРЕДИТИВОВ/ПРЕДОСТАВЛЕНИЕ ПЛАТЕЖНЫХ ГАРАНТИЙ В РАМКАХ ОПЕРАЦИЙ ТОРГОВОГО ФИНАНСИРОВАНИЯ;\rИНЫЕ ВИДЫ ОПЕРАЦИЙ, ВКЛЮЧАЯ ПРЕДВАРИТЕЛЬНУЮ ПРОРАБОТКУ СХЕМЫ РАСЧЕТОВ И УСЛОВИЙ АККРЕДИТИВНОЙ СДЕЛКИ.\r\n'),(20,'c24ffbaa8b72cfcb3d011c1f2708c749','ФИНАНСОВЫМ ОРГАНИЗАЦИЯМ\r\nАКТИВНОЕ СОТРУДНИЧЕСТВО НА ФИНАНСОВЫХ РЫНКАХ ПРЕДСТАВЛЯЕТ СОБОЙ ОДНУ ИЗ НАИБОЛЕЕ ВАЖНЫХ СТОРОН БИЗНЕСА И ЯВЛЯЕТСЯ ПЕРСПЕКТИВНЫМ НАПРАВЛЕНИЕМ ДЕЯТЕЛЬНОСТИ НАШЕГО БАНКА. ПОЛИТИКА БАНКА НАПРАВЛЕНА НА РАСШИРЕНИЕ СОТРУДНИЧЕСТВА, УВЕЛИЧЕНИЕ ОБЪЕМОВ ВЗАИМНЫХ КРЕДИТНЫХ ЛИНИЙ. СОЛИДНАЯ ДЕЛОВАЯ РЕПУТАЦИЯ БАНКА НА РЫНКЕ МЕЖБАНКОВСКИХ ОПЕРАЦИЙ СПОСОБСТВУЕТ НАЛАЖИВАНИЮ СТАБИЛЬНЫХ И ВЗАИМОВЫГОДНЫХ ПАРТНЕРСКИХ ОТНОШЕНИЙ С САМЫМИ КРУПНЫМИ И НАДЕЖНЫМИ БАНКАМИ СТРАНЫ.\rОСОБОЕ ВНИМАНИЕ БАНК УДЕЛЯЕТ РАЗВИТИЮ ВЗАИМООТНОШЕНИЙ С МЕЖДУНАРОДНЫМИ ФИНАНСОВЫМИ ИНСТИТУТАМИ. ФИНАНСИРОВАНИЕ ДОЛГОСРОЧНЫХ И СРЕДНЕСРОЧНЫХ ПРОЕКТОВ КЛИЕНТОВ ЗА СЧЕТ ПРИВЛЕЧЕНИЯ СРЕДСТВ НА МЕЖДУНАРОДНЫХ РЫНКАХ КАПИТАЛА - ОДНО ИЗ ПРИОРИТЕТНЫХ НАПРАВЛЕНИЙ ДЕЯТЕЛЬНОСТИ БАНКА. НАШ БАНК ИМЕЕТ РАЗВИТУЮ СЕТЬ КОРРЕСПОНДЕНТСКИХ СЧЕТОВ, ЧТО ПОЗВОЛЯЕТ БЫСТРО И КАЧЕСТВЕННО ОСУЩЕСТВЛЯТЬ РАСЧЕТЫ В РАЗЛИЧНЫХ ВАЛЮТАХ. ПОРУЧЕНИЯ КЛИЕНТОВ МОГУТ БЫТЬ ИСПОЛНЕНЫ БАНКОМ В СЖАТЫЕ СРОКИ.\rВ ЦЕЛЯХ МИНИМИЗАЦИИ РИСКОВ ПРИ ПОВЕДЕНИИ ОПЕРАЦИЙ НА ФИНАНСОВЫХ РЫНКАХ НАШ БАНК МАКСИМАЛЬНО ТРЕБОВАТЕЛЬНО ПОДХОДИТ К ВЫБОРУ СВОИХ БАНКОВ-КОНТРАГЕНТОВ. \rВ ДАННОМ НАПРАВЛЕНИИ БАНК ПРЕДЛАГАЕТ ФИНАНСОВЫМ ОРГАНИЗАЦИЯМ СЛЕДУЮЩИЕ УСЛУГИ:\rУСЛУГИ НА МЕЖБАНКОВСКОМ РЫНКЕ\rДЕПОЗИТАРНЫЕ УСЛУГИ\rДОКУМЕНТАРНЫЕ ОПЕРАЦИИ\r\n'),(21,'53412cd449563f783dca67a6dbdc6d62','УСЛУГИ НА МЕЖБАНКОВСКОМ РЫНКЕ\r\nМЕЖБАНКОВСКОЕ КРЕДИТОВАНИЕ\rВИД УСЛУГИ\nОПИСАНИЕ\nКРЕДИТОВАНИЕ ПОД ВАЛЮТНЫЙ ДЕПОЗИТ\nКРЕДИТЫ ВЫДАЮТСЯ В РУБЛЯХ НА СРОК ОТ 1 ДНЯ ДО 1 МЕСЯЦА С ВОЗМОЖНОСТЬЮ ДАЛЬНЕЙШЕЙ\nПРОЛОНГАЦИИ. ТАРИФНЫЕ СТАВКИ ЗАВИСЯТ ОТ КОНКРЕТНЫХ УСЛОВИЙ СДЕЛКИ.\nКРЕДИТОВАНИЕ ПОД ЗАЛОГ ОВГВЗ\nКРЕДИТЫ ВЫДАЮТСЯ В РУБЛЯХ И ВАЛЮТЕ НА СРОК ДО 1 МЕСЯЦА С ВОЗМОЖНОЙ ПРОЛОНГАЦИЕЙ.\nСТАВКА ДИСКОНТА СОСТАВЛЯЕТ 25—30%.\nКРЕДИТОВАНИЕ ПОД ЗАЛОГ ГОСУДАРСТВЕННЫХ ЦЕННЫХ БУМАГ\nВ ЗАЛОГ ПРИНИМАЮТСЯ ОБЛИГАЦИИ ФЕДЕРАЛЬНОГО ЗАЙМА (ОФЗ) ЛЮБОГО ВЫПУСКА. СТАВКА ДИСКОНТА:\nОФЗ С ДАТОЙ ПОГАШЕНИЯ ДО 91 ДНЯ — 5%;\rОФЗ С ДАТОЙ ПОГАШЕНИЯ ДО 365 ДНЕЙ — 8%;\rОФЗ С ДАТОЙ ПОГАШЕНИЯ СВЫШЕ 365 ДНЕЙ — 13%.\rКРЕДИТЫ ВЫДАЮТСЯ НА СРОК ДО2 НЕДЕЛЬ.\nКРЕДИТОВАНИЕ ПОД ЗАЛОГ ВЕКСЕЛЕЙ\nДЛЯ КОНСУЛЬТАЦИЙ ПО ЭТОМУ ВИДУ КРЕДИТОВАНИЯ ОБРАТИТЕСЬ В УПРАВЛЕНИЕ ВЕКСЕЛЬНОГО\nОБРАЩЕНИЯ И РАБОТЫ С ДОЛГОВЫМИ ОБЯЗАТЕЛЬСТВАМИ ПО ТЕЛЕФОНУ (495) 978-78-78.\nКОНВЕРСИОННЫЕ ОПЕРАЦИИ\rНА ВНУТРЕННЕМ ДЕНЕЖНОМ РЫНКЕ БАНК ОСУЩЕСТВЛЯЕТ:\rБРОКЕРСКОЕ ОБСЛУЖИВАНИЕ БАНКОВ ПО ИХ УЧАСТИЮ В ТОРГАХ ЕТС НА ММВБ. СТАВКИ КОМИССИОННОГО ВОЗНАГРАЖДЕНИЯ ВАРЬИРУЮТСЯ В ЗАВИСИМОСТИ ОТ ОБЪЕМА ОПЕРАЦИЙ (В ПРЕДЕЛАХ 0,147—0,18%).\rКОНВЕРСИОННЫЕ ОПЕРАЦИИ. БАНК ПРЕДЛАГАЕТ БАНКАМ-КОНТРАГЕНТАМ РАБОТУ НА ВАЛЮТНОМ РЫНКЕ ПО ПОКУПКЕ И ПРОДАЖЕ ИНОСТРАННОЙ ВАЛЮТЫ ЗА РОССИЙСКИЕ РУБЛИ ПО ТЕКУЩИМ РЫНОЧНЫМ ЦЕНАМ. ПРИ ОТСУТСТВИИ ОТКРЫТЫХ ЛИНИЙ ПРИ ПРОДАЖЕ ИНОСТРАННОЙ ВАЛЮТЫ БАНК-КОНТРАГЕНТ ПРОИЗВОДИТ ПРЕДОПЛАТУ ПО ЗАКЛЮЧЕННОЙ СДЕЛКЕ, ВОЗМОЖНА РАБОТА ПОД КРЕДИТОВОЕ АВИЗО.\rБАНКНОТНЫЕ ОПЕРАЦИИ\rПОКУПКА И ПРОДАЖА НАЛИЧНОЙ ВАЛЮТЫ ЗА БЕЗНАЛИЧНУЮ ВАЛЮТУ;\rПРОДАЖА НОВЫХ БАНКНОТ В УПАКОВКЕ АМЕРИКАНСКОГО БАНКА-ЭМИТЕНТА;\rПОКУПКА И ПРОДАЖА БАНКНОТ, БЫВШИХ В УПОТРЕБЛЕНИИ.\rУРОВЕНЬ КОМИССИОННЫХ ЗАВИСИТ ОТ ОБЪЕМОВ И КОНКРЕТНЫХ УСЛОВИЙ СДЕЛКИ.\rДОКУМЕНТАРНЫЕ ОПЕРАЦИИ\rМЕЖДУНАРОДНЫЕ РАСЧЕТЫ:\nАККРЕДИТИВ\r- ЭТО УСЛОВНОЕ ДЕНЕЖНОЕ ОБЯЗАТЕЛЬСТВО, ПРИНИМАЕМОЕ БАНКОМ (БАНКОМ-ЭМИТЕНТОМ) ПО ПОРУЧЕНИЮ ПЛАТЕЛЬЩИКА, ПРОИЗВЕСТИ ПЛАТЕЖИ В ПОЛЬЗУ ПОЛУЧАТЕЛЯ СРЕДСТВ ПО ПРЕДЪЯВЛЕНИИ ПОСЛЕДНИМ ДОКУМЕНТОВ, СООТВЕТСТВУЮЩИХ УСЛОВИЯМ АККРЕДИТИВА, ИЛИ ПРЕДОСТАВИТЬ ПОЛНОМОЧИЯ ДРУГОМУ БАНКУ (ИСПОЛНЯЮЩЕМУ БАНКУ) ПРОИЗВЕСТИ ТАКИЕ ПЛАТЕЖИ.\rИНКАССО\r- ЭТО РАСЧЕТНАЯ ОПЕРАЦИЯ, ПОСРЕДСТВОМ КОТОРОЙ БАНК НА ОСНОВАНИИ РАСЧЕТНЫХ ДОКУМЕНТОВ ПО ПОРУЧЕНИЮ КЛИЕНТА ПОЛУЧАЕТ ПРИЧИТАЮЩИЕСЯ КЛИЕНТУ ДЕНЕЖНЫЕ СРЕДСТВА ОТ ПЛАТЕЛЬЩИКА ЗА ПОСТУПИВШИЕ В АДРЕС ПЛАТЕЛЬЩИКА ТОВАРЫ ИЛИ ОКАЗАННЫЕ ЕМУ УСЛУГИ, ПОСЛЕ ЧЕГО ЭТИ СРЕДСТВА ЗАЧИСЛЯЮТСЯ НА СЧЕТ КЛИЕНТА В БАНКЕ.\rОПЕРАЦИИ С ВЕКСЕЛЯМИ БАНКА\rВЕКСЕЛИ НАШЕГО БАНКА ЯВЛЯЮТСЯ ПРОСТЫМИ ВЕКСЕЛЯМИ.\rПРОСТОЙ ВЕКСЕЛЬ — ДОКУМЕНТ УСТАНОВЛЕННОЙ ЗАКОНОМ ФОРМЫ, ДАЮЩИЙ ЕГО ДЕРЖАТЕЛЮ (ВЕКСЕЛЕДЕРЖАТЕЛЮ) БЕЗУСЛОВНОЕ ПРАВО ТРЕБОВАТЬ С ЛИЦА, УКАЗАННОГО В ДАННОМ ДОКУМЕНТЕ (ПЛАТЕЛЬЩИКА), УПЛАТЫ ОГОВОРЕННОЙ СУММЫ ПО НАСТУПЛЕНИЮ НЕКОТОРОГО СРОКА. ОБЯЗАТЕЛЬСТВО ПО ПРОСТОМУ ВЕКСЕЛЮ ВОЗНИКАЕТ С МОМЕНТА ЕГО СОСТАВЛЕНИЯ И ПЕРЕДАЧИ ПЕРВОМУ ВЕКСЕЛЕДЕРЖАТЕЛЮ.\rПЕРЕЧЕНЬ ПРОВОДИМЫХ БАНКОМ ОПЕРАЦИЙ С СОБСТВЕННЫМИ ВЕКСЕЛЯМИ:\nВЫПУСК ВЕКСЕЛЕЙ;\rПОГАШЕНИЕ ВЕКСЕЛЕЙ;\rДОСРОЧНЫЙ УЧЕТ ВЕКСЕЛЕЙ;\rОТВЕТСТВЕННОЕ ХРАНЕНИЕ ВЕКСЕЛЕЙ;\rКРЕДИТОВАНИЕ ПОД ЗАЛОГ ВЕКСЕЛЕЙ;\rВЫДАЧА КРЕДИТОВ НА ПРИОБРЕТЕНИЕ ВЕКСЕЛЕЙ;\rНОВАЦИЯ И РАЗМЕН ВЕКСЕЛЕЙ;\rПРОВЕРКА ПОДЛИННОСТИ ВЕКСЕЛЕЙ.\r\n'),(22,'89a00e9561c33cb54aca96d9d99c715e','БАНКОВСКИЕ КАРТЫ\r\nКРЕДИТНЫЕ КАРТЫ\rСРОК ДЕЙСТВИЯ КАРТЫ\r3 ГОДА\rКОМИССИЯ ЗА ЕЖЕГОДНОЕ ОСУЩЕСТВЛЕНИЕ РАСЧЕТОВ ПО ОПЕРАЦИЯМ С ОСНОВНОЙ КАРТОЙ.\r600 РУБ. / 25 ДОЛЛ. США / 25 ЕВРО\rЛЬГОТНЫЙ ПЕРИОД ОПЛАТЫ\rДО 50 КАЛЕНДАРНЫХ ДНЕЙ\rЕЖЕМЕСЯЧНЫЙ МИНИМАЛЬНЫЙ ПЛАТЕЖ \r(В ПРОЦЕНТАХ ОТ СУММЫ ЗАДОЛЖЕННОСТИ ПО ОВЕРДРАФТАМ):\r10% \rДОПОЛНИТЕЛЬНЫЕ ПРОЦЕНТЫ/ШТРАФЫ/КОМИССИИ/ НА СУММУ НЕРАЗРЕШЕННОГО ОВЕРДРАФТА\rНЕ ВЗИМАЕТСЯ (ОТМЕНЕНА С 1 МАРТА) \rКОМИССИЯ ЗА УЧЕТ ОТЧЕТНОЙ СУММЫ ЗАДОЛЖЕННОСТИ, НЕПОГАШЕННОЙ НА ПОСЛЕДНИЙ КАЛЕНДАРНЫЙ ДЕНЬ ЛЬГОТНОГО ПЕРИОДА ОПЛАТЫ.\rДЛЯ 1-6-ГО МЕСЯЦЕВ\rДЛЯ 6-ГО И ПОСЛЕДУЮЩИХ МЕСЯЦЕВ\r12% / 15% \r21% / 24% \rВ ПУНКТАХ ВЫДАЧИ НАЛИЧНЫХ ИЛИ БАНКОМАТАХ \"БАНКА\" \rВ БАНКОМАТАХ БАНКОВ-ПАРТНЕРОВ \"ОБЪЕДИНЕННОЙ РАСЧЕТНОЙ СИСТЕМЫ (ОРС)\" \rВ ПУНКТАХ ВЫДАЧИ НАЛИЧНЫХ ИЛИ БАНКОМАТАХ ИНОГО БАНКА \r0%\r0,5%\r2,5%\rМИНИМАЛЬНАЯ СУММА КОМИССИИ ПО ОПЕРАЦИЯМ ПОЛУЧЕНИЯ НАЛИЧНЫХ ДЕНЕЖНЫХ СРЕДСТВ В ПУНКТАХ ВЫДАЧИ НАЛИЧНЫХ ИЛИ БАНКОМАТАХ ИНОГО БАНКА. \r150 РУБЛЕЙ\rКОМИССИЯ ЗА ОСУЩЕСТВЛЕНИЕ КОНВЕРТАЦИИ ПО ТРАНСГРАНИЧНЫМ ОПЕРАЦИЯМ (СОВЕРШЕННЫМ ЗА ПРЕДЕЛАМИ ТЕРРИТОРИИ РФ). \r0,75% \rРАСЧЕТНЫЕ КАРТЫ БАНКА\rВАЛЮТА КАРТСЧЕТА\rРОССИЙСКИЕ РУБЛИ / ДОЛЛАРЫ США / ЕВРО\rСРОК ДЕЙСТВИЯ КАРТЫ\r3 ГОДА\rКОМИССИЯ ЗА ОСУЩЕСТВЛЕНИЕ РАСЧЕТОВ В ТЕЧЕНИЕ ОДНОГО ГОДА ПО ОПЕРАЦИЯМ С ОСНОВНОЙ КАРТОЙ ПРИ ЕЕ ПЕРВИЧНОМ ВЫПУСКЕ.\rВЗИМАЕТСЯ ПЕРЕД НАЧАЛОМ КАЖДОГО ГОДА РАСЧЕТОВ ПО ДЕЙСТВУЮЩЕЙ КАРТЕ ИЗ СРЕДСТВ НА КАРТСЧЕТЕ.\r500 РУБЛЕЙ/20 ДОЛЛ. США/20 ЕВРО\rКОМИССИЯ ЗА ОПЕРАЦИЮ ПОЛУЧЕНИЯ НАЛИЧНЫХ ДЕНЕЖНЫХ СРЕДСТВ:\rДО 300 000 РУБЛЕЙ (ВКЛЮЧИТЕЛЬНО)\rВ ПУНКТАХ ВЫДАЧИ НАЛИЧНЫХ ИЛИ БАНКОМАТАХ «БАНКА»\rВ БАНКОМАТАХ БАНКОВ-ПАРТНЕРОВ\rВ ПУНКТАХ ВЫДАЧИ НАЛИЧНЫХ ИЛИ БАНКОМАТАХ ИНОГО БАНКА\r0%\r0,5%\r1,5% МИН. 90 РУБ.\rОТ 300 001 ДО 10 000 000 РУБЛЕЙ (ВКЛЮЧИТЕЛЬНО)\r2,5% \rОТ 10 000 001 РУБЛЯ И ВЫШЕ\r5%\rМИНИМАЛЬНАЯ СУММА КОМИССИИ ПО ОПЕРАЦИЯМ ПОЛУЧЕНИЯ НАЛИЧНЫХ ДЕНЕЖНЫХ СРЕДСТВ В ПУНКТАХ ВЫДАЧИ НАЛИЧНЫХ ИЛИ БАНКОМАТАХ ИНОГО БАНКА. \r90 РУБЛЕЙ\rКОМИССИЯ ЗА ПЕРЕЧИСЛЕНИЕ И КОНВЕРСИЮ ДЕНЕЖНЫХ СРЕДСТВ В ИНТЕРНЕТ-БАНКЕ. \r0%\rКОМИССИЯ ЗА ОСТАНОВКУ ОПЕРАЦИЙ ПО КАРТСЧЕТУ, СОВЕРШАЕМЫХ С ИСПОЛЬЗОВАНИЕМ КАРТЫ, ПРИ ЕЕ УТРАТЕ. \r600 РУБЛЕЙ/25 ДОЛЛ. США/25 ЕВРО\rКОМИССИЯ ЗА ОСУЩЕСТВЛЕНИЕ КОНВЕРСИИ ПО ТРАНСГРАНИЧНЫМ ОПЕРАЦИЯМ (СОВЕРШЕННЫМ ЗА ПРЕДЕЛАМИ ТЕРРИТОРИИ РФ).\r0,75%\rВЫДАЧА КАРТОЧКИ ДОСТУПА.\rБЕСПЛАТНО\rКОМИССИЯ ЗА ОПЛАТУ УСЛУГ В ИНТЕРНЕТ - БАНКЕ И В БАНКОМАТАХ БАНКА. \rБЕСПЛАТНО\rКОМИССИЯ ЗА УЧЕТ ПЕРЕРАСХОДА СРЕДСТВ (В ПРОЦЕНТАХ ГОДОВЫХ ОТ СУММЫ ПЕРЕРАСХОДА). \r36%\rКОМИССИЯ ЗА ОТПРАВКУ SMS СООБЩЕНИЙ О СУММАХ ПРОВЕДЕННЫХ ПО КАРТЕ ОПЕРАЦИЙ И ДОСТУПНОМ БАЛАНСЕ В ТЕЧЕНИЕ ЕЕ СРОКА ДЕЙСТВИЯ.\rБЕСПЛАТНО\r\n'),(23,'97cc4b8d5eae6669c6e5920eca22f9cd','ПОТРЕБИТЕЛЬСКИЙ КРЕДИТ\r\nНЕ ВАЖНО, ДЛЯ ЧЕГО ВАМ НУЖНЫ ДЕНЬГИ — МЫ ДОВЕРЯЕМ ВАМ И НЕ ТРАТИМ ВРЕМЯ НА ЛИШНИЕ ПРОЦЕДУРЫ.\rТАРИФЫ КРЕДИТОВАНИЯ ФИЗИЧЕСКИХ ЛИЦ\rВ РУБЛЯХ\rСУММА КРЕДИТА: ОТ 150 000 ДО 1 500 000 РУБЛЕЙ\rСРОК КРЕДИТА: ОТ 6 ДО 36 МЕСЯЦЕВ\r% СТАВКА: ОТ 18 ДО 21,5% ГОДОВЫХ\rЕДИНОВРЕМЕННАЯ КОМИССИЯ ЗА ВЫДАЧУ КРЕДИТА: 2% ОТ СУММЫ КРЕДИТА\rВ ДОЛЛАРАХ США\rСУММА КРЕДИТА: ОТ 5 000 ДО 50 000 ДОЛЛАРОВ США\rСРОК КРЕДИТА: ОТ 6 ДО 24 МЕСЯЦЕВ\r% СТАВКА: ОТ 14,5 ДО 16,5% ГОДОВЫХ\rЕДИНОВРЕМЕННАЯ КОМИССИЯ ЗА ВЫДАЧУ КРЕДИТА: 2% ОТ СУММЫ КРЕДИТА\rУСЛОВИЯ КРЕДИТНОГО ДОГОВОРА И ПРИМЕНЯЕМЫЙ ТАРИФНЫЙ ПЛАН И/ИЛИ ТАРИФЫ ОПРЕДЕЛЯЮТСЯ В ИНДИВИДУАЛЬНОМ ПОРЯДКЕ, В ТОМ ЧИСЛЕ В ЗАВИСИМОСТИ ОТ ПОДТВЕРЖДЕННОГО ДОХОДА КЛИЕНТА. ИЗЛОЖЕННАЯ ИНФОРМАЦИЯ НЕ ЯВЛЯЕТСЯ ПУБЛИЧНОЙ ОФЕРТОЙ И НЕ ВЛЕЧЕТ ВОЗНИКНОВЕНИЯ У ЗАО «БАНК ИНТЕЗА» ОБЯЗАННОСТИ ПРЕДОСТАВИТЬ КРЕДИТ, КАК НА УКАЗАННЫХ, ТАК И НА ЛЮБЫХ ИНЫХ УСЛОВИЯХ.\rМИНИМАЛЬНЫЕ ТРЕБОВАНИЯ К ЗАЕМЩИКУ\rВЫ ГРАЖДАНИН РОССИИ.\rВАМ СЕЙЧАС БОЛЬШЕ 23 ЛЕТ И ВАМ БУДЕТ МЕНЬШЕ 60 (ДЛЯ МУЖЧИН) ИЛИ МЕНЬШЕ 55 (ДЛЯ ЖЕНЩИН) НА МОМЕНТ ПОГАШЕНИЯ (ТО ЕСТЬ ПОЛНОЙ ОПЛАТЫ) КРЕДИТА.\rУ ВАС ЕСТЬ ОФИЦИАЛЬНОЕ МЕСТО РАБОТЫ, И ВЫ РАБОТАЕТЕ НА НЕМ ПО НАЙМУ НЕ МЕНЕЕ ШЕСТИ МЕСЯЦЕВ И ПРОШЛИ ИСПЫТАТЕЛЬНЫЙ СРОК.\rВАШ ОБЩИЙ ТРУДОВОЙ СТАЖ СОСТАВЛЯЕТ НЕ МЕНЕЕ ДВУХ ЛЕТ\rВЫ МОЖЕТЕ ПОДТВЕРДИТЬ СВОЙ ДОХОД ОФИЦИАЛЬНО ПРИ ПОМОЩИ СТАНДАРТНОЙ ФОРМЫ 2НДФЛ ИЛИ СПРАВКОЙ ПО ФОРМЕ БАНКА.\rВЫ ОБРАТИЛИСЬ В ОТДЕЛЕНИЕ БАНКА В ТОМ ЖЕ ГОРОДЕ, В КОТОРОМ ВЫ РАБОТАЕТЕ.\rС ВАМИ МОЖНО СВЯЗАТЬСЯ ПО ГОРОДСКОМУ ТЕЛЕФОНУ ПО МЕСТУ РАБОТЫ.\rТЕЛЕФОН ГОРЯЧЕЙ ЛИНИИ: \r8 800 2002 808\r( ЗВОНОК ПО РОССИИ БЕСПЛАТНЫЙ)\r\n'),(24,'1560168bdcc5a4573c23c7cacbbf48d8','ЧАСТНЫМ ЛИЦАМ\r\nНАШ БАНК ПРЕДОСТАВЛЯЕТ ФИЗИЧЕСКИМ ЛИЦАМ БОЛЬШОЕ ЧИСЛО РАЗЛИЧНЫХ ВОЗМОЖНОСТЕЙ, СВЯЗАННЫХ С СОХРАНЕНИЕМ СРЕДСТВ И СОВЕРШЕНИЕМ РАЗЛИЧНЫХ СДЕЛОК. В ЧАСТНОСТИ, БАНК ПРЕДЛАГАЕТ СВОИМ КЛИЕНТАМ ШИРОКУЮ ЛИНЕЙКУ РАЗНООБРАЗНЫХ ВКЛАДОВ, СПОСОБНЫХ УДОВЛЕТВОРИТЬ КАК ДОЛГОСРОЧНЫЕ, ТАК И КРАТКОСРОЧНЫЕ ИНТЕРЕСЫ, КАСАЮЩИЕСЯ РАЗМЕЩЕНИЯ СВОБОДНЫХ СРЕДСТВ ПО ВЫГОДНЫМ СТАВКАМ. В СВОЕЙ РАБОТЕ БАНК АКТИВНО ПРИМЕНЯЕТ ИННОВАЦИОННЫЕ ТЕХНОЛОГИИ ДИНАМИЧНО РАЗВИВАЮЩЕЙСЯ БАНКОВСКОЙ СФЕРЫ.\rБАНК ПРЕДЛАГАЕТ СВОИМ КЛИЕНТАМ КАЧЕСТВЕННЫЙ УНИВЕРСАЛЬНЫЙ СЕРВИС ПО СЛЕДУЮЩИМ НАПРАВЛЕНИЯМ:\rБАНКОВСКИЕ КАРТЫ\rПОТРЕБИТЕЛЬСКИЙ КРЕДИТ\r\n'),(25,'5294819207cd629318e1de373aa1e6f3','УСЛУГИ\r\nНАШ БАНК ПРЕДОСТАВЛЯЕТ ФИЗИЧЕСКИМ ЛИЦАМ БОЛЬШОЕ ЧИСЛО РАЗЛИЧНЫХ ВОЗМОЖНОСТЕЙ, СВЯЗАННЫХ С СОХРАНЕНИЕМ СРЕДСТВ И СОВЕРШЕНИЕМ РАЗЛИЧНЫХ СДЕЛОК. В ЧАСТНОСТИ, БАНК ПРЕДЛАГАЕТ СВОИМ КЛИЕНТАМ ШИРОКУЮ ЛИНЕЙКУ РАЗНООБРАЗНЫХ ВКЛАДОВ, СПОСОБНЫХ УДОВЛЕТВОРИТЬ КАК ДОЛГОСРОЧНЫЕ, ТАК И КРАТКОСРОЧНЫЕ ИНТЕРЕСЫ, КАСАЮЩИЕСЯ РАЗМЕЩЕНИЯ СВОБОДНЫХ СРЕДСТВ ПО ВЫГОДНЫМ СТАВКАМ. В СВОЕЙ РАБОТЕ БАНК АКТИВНО ПРИМЕНЯЕТ ИННОВАЦИОННЫЕ ТЕХНОЛОГИИ ДИНАМИЧНО РАЗВИВАЮЩЕЙСЯ БАНКОВСКОЙ СФЕРЫ.\rБАНК ПРЕДЛАГАЕТ СВОИМ КЛИЕНТАМ КАЧЕСТВЕННЫЙ УНИВЕРСАЛЬНЫЙ СЕРВИС ПО СЛЕДУЮЩИМ НАПРАВЛЕНИЯМ:\rБАНКОВСКИЕ КАРТЫ\rПОТРЕБИТЕЛЬСКИЙ КРЕДИТ\rМАЛОМУ И СРЕДНЕМУ БИЗНЕСУ\rРАБОТА С ПРЕДПРИЯТИЯМИ МАЛОГО И СРЕДНЕГО БИЗНЕСА - ОДНО ИЗ СТРАТЕГИЧЕСКИ ВАЖНЫХ НАПРАВЛЕНИЙ ДЕЯТЕЛЬНОСТИ БАНКА. НАШ БАНК ПРЕДСТАВЛЯЕТ СОВРЕМЕННЫЕ ПРОГРАММЫ ОБСЛУЖИВАНИЯ МАЛОГО И СРЕДНЕГО БИЗНЕСА, ОБЕСПЕЧИВАЕТ ОПТИМАЛЬНЫЕ И ВЗАИМОВЫГОДНЫЕ ВАРИАНТЫ СОТРУДНИЧЕСТВА, В ОСНОВЕ КОТОРЫХ ЛЕЖИТ ПРОФЕССИОНАЛИЗМ СОТРУДНИКОВ И ВЫСОКОЕ КАЧЕСТВО БАНКОВСКИХ УСЛУГ. УСЛУГИ НАШЕГО БАНКА ОТЛИЧАЮТСЯ ОПЕРАТИВНОСТЬЮ И НАДЕЖНОСТЬЮ, ТАК КАК ОРИЕНТИРОВАНЫ НА ДЕЛОВЫХ ЛЮДЕЙ - НА ТЕХ, КТО ЦЕНИТ СВОЕ ВРЕМЯ И ДЕНЬГИ.\rБАНК ПРЕДЛАГАЕТ СЛЕДУЮЩИЕ ВИДЫ УСЛУГ ДЛЯ ПРЕДПРИЯТИЙ МАЛОГО И СРЕДНЕГО БИЗНЕСА:\rКРЕДИТОВАНИЕ\rЛИЗИНГ\rДЕПОЗИТЫ\rПЛАСТИКОВЫЕ КАРТЫ\rКОРПОРАТИВНЫМ КЛИЕНТАМ\rБАНК ЯВЛЯЕТСЯ ОДНИМ ИЗ ЛИДЕРОВ БАНКОВСКОГО РЫНКА ПО ОБСЛУЖИВАНИЮ КОРПОРАТИВНЫХ КЛИЕНТОВ. \rКОМПЛЕКСНОЕ БАНКОВСКОЕ ОБСЛУЖИВАНИЕ НА ОСНОВЕ МАКСИМАЛЬНОГО ИСПОЛЬЗОВАНИЯ КОНКУРЕНТНЫХ ПРЕИМУЩЕСТВ И ВОЗМОЖНОСТЕЙ БАНКА ПОЗВОЛЯЕТ СОЗДАТЬ УСТОЙЧИВУЮ \rФИНАНСОВУЮ ПЛАТФОРМУ ДЛЯ РАЗВИТИЯ БИЗНЕСА ПРЕДПРИЯТИЙ И ХОЛДИНГОВ РАЗЛИЧНЫХ ОТРАСЛЕЙ ЭКОНОМИКИ. УЖЕ БОЛЕЕ 15 ЛЕТ БАНК РАБОТАЕТ ДЛЯ СВОИХ КЛИЕНТОВ, \rЯВЛЯЯСЬ ОБРАЗЦОМ НАДЕЖНОСТИ И ВЫСОКОГО ПРОФЕССИОНАЛИЗМА.\rНАШ БАНК ПРЕДЛАГАЕТ КОРПОРАТИВНЫМ КЛИЕНТАМ СЛЕДУЮЩИЕ ВИДЫ УСЛУГ:\rРАСЧЕТНО-КАССОВОЕ ОБСЛУЖИВАНИЕ\rИНКАССАЦИЯ\rИНТЕРНЕТ-БАНКИНГ\rФИНАНСОВЫМ ОРГАНИЗАЦИЯМ\rАКТИВНОЕ СОТРУДНИЧЕСТВО НА ФИНАНСОВЫХ РЫНКАХ ПРЕДСТАВЛЯЕТ СОБОЙ ОДНУ ИЗ НАИБОЛЕЕ ВАЖНЫХ СТОРОН БИЗНЕСА И ЯВЛЯЕТСЯ ПЕРСПЕКТИВНЫМ НАПРАВЛЕНИЕМ ДЕЯТЕЛЬНОСТИ НАШЕГО БАНКА. ПОЛИТИКА БАНКА НАПРАВЛЕНА НА РАСШИРЕНИЕ СОТРУДНИЧЕСТВА, УВЕЛИЧЕНИЕ ОБЪЕМОВ ВЗАИМНЫХ КРЕДИТНЫХ ЛИНИЙ. СОЛИДНАЯ ДЕЛОВАЯ РЕПУТАЦИЯ БАНКА НА РЫНКЕ МЕЖБАНКОВСКИХ ОПЕРАЦИЙ СПОСОБСТВУЕТ НАЛАЖИВАНИЮ СТАБИЛЬНЫХ И ВЗАИМОВЫГОДНЫХ ПАРТНЕРСКИХ ОТНОШЕНИЙ С САМЫМИ КРУПНЫМИ И НАДЕЖНЫМИ БАНКАМИ СТРАНЫ.\rОСОБОЕ ВНИМАНИЕ БАНК УДЕЛЯЕТ РАЗВИТИЮ ВЗАИМООТНОШЕНИЙ С МЕЖДУНАРОДНЫМИ ФИНАНСОВЫМИ ИНСТИТУТАМИ. ФИНАНСИРОВАНИЕ ДОЛГОСРОЧНЫХ И СРЕДНЕСРОЧНЫХ ПРОЕКТОВ КЛИЕНТОВ ЗА СЧЕТ ПРИВЛЕЧЕНИЯ СРЕДСТВ НА МЕЖДУНАРОДНЫХ РЫНКАХ КАПИТАЛА - ОДНО ИЗ ПРИОРИТЕТНЫХ НАПРАВЛЕНИЙ ДЕЯТЕЛЬНОСТИ БАНКА. НАШ БАНК ИМЕЕТ РАЗВИТУЮ СЕТЬ КОРРЕСПОНДЕНТСКИХ СЧЕТОВ, ЧТО ПОЗВОЛЯЕТ БЫСТРО И КАЧЕСТВЕННО ОСУЩЕСТВЛЯТЬ РАСЧЕТЫ В РАЗЛИЧНЫХ ВАЛЮТАХ. ПОРУЧЕНИЯ КЛИЕНТОВ МОГУТ БЫТЬ ИСПОЛНЕНЫ БАНКОМ В СЖАТЫЕ СРОКИ.\rВ ЦЕЛЯХ МИНИМИЗАЦИИ РИСКОВ ПРИ ПОВЕДЕНИИ ОПЕРАЦИЙ НА ФИНАНСОВЫХ РЫНКАХ НАШ БАНК МАКСИМАЛЬНО ТРЕБОВАТЕЛЬНО ПОДХОДИТ К ВЫБОРУ СВОИХ БАНКОВ-КОНТРАГЕНТОВ. \rВ ДАННОМ НАПРАВЛЕНИИ БАНК ПРЕДЛАГАЕТ ФИНАНСОВЫМ ОРГАНИЗАЦИЯМ СЛЕДУЮЩИЕ УСЛУГИ:\rУСЛУГИ НА МЕЖБАНКОВСКОМ РЫНКЕ\rДЕПОЗИТАРНЫЕ УСЛУГИ\rДОКУМЕНТАРНЫЕ ОПЕРАЦИИ\r\n'),(26,'4c6e4f50a46679283be9c0d9734ef751','ПЛАСТИКОВЫЕ КАРТЫ\r\nНАШ БАНК ПРОВОДИТ ОПЕРАЦИИ С ПЛАСТИКОВЫМИ КАРТАМИ С 1997 Г. СЕГОДНЯ МЫ ПРЕДЛАГАЕМ ПЛАСТИКОВЫЕ КАРТЫ ОСНОВНЫХ МЕЖДУНАРОДНЫХ ПЛАТЁЖНЫХ СИСТЕМ – VISA И MASTERCARD; ОТ САМЫХ ДЕМОКРАТИЧНЫХ ЕLЕCTRON ДО ЭЛИТНЫХ GOLD И PLATINUM. В РАМКАХ ПЕРСОНАЛЬНОГО ОБСЛУЖИВАНИЯ В РАМКАХ ПЕРСОНАЛЬНОГО БАНКОВСКОГО ОБСЛУЖИВАНИЯ БАНК ДОПОЛНИТЕЛЬНО ПРЕДЛАГАЕТ ЭКСКЛЮЗИВНЫЕ КАРТЫ VISA INFINITE С БРИЛЛИАНТАМИ И ПЛАТИНОВЫМ ОРНАМЕНТОМ.\rЗАКАЗАТЬ МЕЖДУНАРОДНУЮ ПЛАСТИКОВУЮ КАРТУ МОЖНО В ЛЮБОМ ОТДЕЛЕНИИ НАШЕГО БАНКА. ВАША КАРТА БУДЕТ ГОТОВА УЖЕ ЧЕРЕЗ 3-5 ДНЕЙ. НАШ БАНК ОДИН ИЗ НЕМНОГИХ В РОССИИ, КТО ВЫДАЕТ КАРТУ СРОКОМ НА ДВА ГОДА, КАК И КРУПНЕЙШИЕ ЗАРУБЕЖНЫЕ БАНКИ.КАЖДЫЙ ПАКЕТ УСЛУГ БАНКА ВКЛЮЧАЕТ ОДНУ ОСНОВНУЮ И ДО ТРЕХ ДОПОЛНИТЕЛЬНЫХ ПЛАСТИКОВЫХ КАРТ ДЛЯ ВАС И ДЛЯ ЧЛЕНОВ ВАШЕЙ СЕМЬИ (ВКЛЮЧАЯ ДЕТЕЙ СТАРШЕ 14 ЛЕТ). ВЫ САМИ УСТАНАВЛИВАЕТЕ ОГРАНИЧЕНИЯ: КТО И СКОЛЬКО МОЖЕТ ПОТРАТИТЬ ПО КАРТЕ.\rТЕРЯЯ ПЛАСТИКОВУЮ КАРТУ, ВЫ НЕ ТЕРЯЕТЕ ДЕНЬГИ. ПОТОМУ ЧТО КАРТЫ НАШЕГО БАНКА НАДЕЖНО ЗАЩИЩЕНЫ ОТ НЕЗАКОННОГО ИСПОЛЬЗОВАНИЯ. ПРОСТО СОБЛЮДАЙТЕ ПРАВИЛА БЕЗОПАСНОСТИ ПРИ ОБРАЩЕНИИ СО СВОЕЙ КАРТОЙ, А В СЛУЧАЕ ЕЕ ПРОПАЖИ ИЛИ ХИЩЕНИЯ БЕЗ ПРОМЕДЛЕНИЯ ОБРАТИТЕСЬ В БАНК.\rПРЕИМУЩЕСТВА ПЛАСТИКОВЫХ КАРТ БАНКА\rПОЛУЧЕНИЕ НАЛИЧНЫХ БЕЗ КОМИССИИ В ШИРОКОЙ СЕТИ БАНКОМАТОВ;\rСВЕДЕНИЯ ОБ ОСТАТКЕ И СОВЕРШЁННЫХ ОПЕРАЦИЯХ ПО КАРТЕ ПРИХОДЯТ ПО SMS;\rСИСТЕМА ИНТЕРНЕТ-БАНКИНГА ПОЗВОЛЯЕТ ВЛАДЕЛЬЦУ КАРТЫ КОНТРОЛИРОВАТЬ РАСХОДЫ И УПРАВЛЯТЬ СРЕДСТВАМИ НА КАРТОЧНЫХ СЧЕТАХ.\rВСЕМ ВЛАДЕЛЬЦАМ КАРТ БАНКА ДОСТУПНЫ CКИДКИ И БОНУСНЫЕ ПРОГРАММЫ.\rВИДЫ ПЛАСТИКОВЫХ КАРТ\rДЕБЕТОВЫЕ КАРТЫ:\rУДОБСТВО БЕЗНАЛИЧНОЙ ОПЛАТЫ ТОВАРОВ И УСЛУГ\rБЕЗОПАСНОЕ ХРАНЕНИЕ СОБСТВЕННЫХ СРЕДСТВ\rНАЧИСЛЕНИЕ ПРОЦЕНТОВ НА ОСТАТОК ПО КАРТЕ\rКОНТРОЛЬ НАД РАСХОДАМИ И УПРАВЛЕНИЕ СВОИМИ ДЕНЬГАМИ\rКРЕДИТНЫЕ КАРТЫ:\rКРЕДИТОВАНИЕ БЕЗ ПРОЦЕНТОВ ДО 55 ДНЕЙ\rПОЛЬЗОВАТЬСЯ КРЕДИТОМ МОЖНО МНОГОКРАТНО, НЕ ОБРАЩАЯСЬ В БАНК\rБЕЗНАЛИЧНАЯ ОПЛАТА ТОВАРОВ И УСЛУГ БЕЗ КОМИССИЙ В ЛЮБОЙ ТОЧКЕ МИРА\rПРОВОЗ ДЕНЕГ ЧЕРЕЗ ГРАНИЦУ БЕЗ ТАМОЖЕННОГО ОФОРМЛЕНИЯ\rНЕ НУЖНО ПОКУПАТЬ ВАЛЮТУ ДЛЯ ВЫЕЗДА В ДРУГИЕ СТРАНЫ\rВСЕ ПОЛЕЗНЫЕ ФУНКЦИИ ДЕБЕТОВЫХ КАРТ\r\n'),(27,'344cad3205bd5c2e8cffcf29a17ae499','КРЕДИТОВАНИЕ\r\nКРЕДИТОВАНИЕ МАЛОГО И СРЕДНЕГО БИЗНЕСА ЯВЛЯЕТСЯ ОДНИМ ИЗ СТРАТЕГИЧЕСКИХ НАПРАВЛЕНИЙ БАНКА.\rДАННОЕ НАПРАВЛЕНИЕ ВКЛЮЧАЕТ В СЕБЯ:\nКРЕДИТОВАНИЕ ЮРИДИЧЕСКИХ ЛИЦ\rКРЕДИТОВАНИЕ ИНДИВИДУАЛЬНЫХ ПРЕДПРИНИМАТЕЛЕЙ\rВ ЗАВИСИМОСТИ ОТ ПОЖЕЛАНИЙ КЛИЕНТА КРЕДИТЫ ДЛЯ БИЗНЕСА ПРЕДОСТАВЛЯЮТСЯ В РАЗНЫХ ВАЛЮТАХ: В РУБЛЯХ РФ, ДОЛЛАРАХ США И ЕВРО. \nПРЕИМУЩЕСТВА ПОЛУЧЕНИЯ КРЕДИТА В НАШЕМ БАНКЕ:\rСРОК РАССМОТРЕНИЯ КРЕДИТНОЙ ЗАЯВКИ ОТ 2-Х РАБОЧИХ ДНЕЙ; \rОТСУТСТВИЕ ЕЖЕМЕСЯЧНОЙ ПЛАТЫ ЗА ВЕДЕНИЕ ССУДНОГО СЧЕТА;\rОТСУТСТВИЕ ТРЕБОВАНИЙ ПО ПРЕДОСТАВЛЕНИЮ БИЗНЕС-ПЛАНА;\rПРИНИМАЕТСЯ К РАССМОТРЕНИЮ УПРАВЛЕНЧЕСКАЯ ОТЧЕТНОСТЬ;\rВ КАЧЕСТВЕ ЗАЛОГА РАССМАТРИВАЮТСЯ ТОВАРЫ В ОБОРОТЕ, АВТОТРАНСПОРТ, ОБОРУДОВАНИЕ, НЕДВИЖИМОСТЬ И ДРУГОЕ ЛИКВИДНОЕ ИМУЩЕСТВО; \rГИБКИЕ УСЛОВИЯ ПОГАШЕНИЯ КРЕДИТА. \rДЛЯ ПОЛУЧЕНИЯ КРЕДИТА:\rПОЗВОНИТЕ НАМ ПО ТЕЛЕФОНУ +7 (495) 757-57-57, ОБРАТИТЕСЬ В БЛИЖАЙШЕЕ К ВАМ ОТДЕЛЕНИЕ БАНКА ИЛИ ЗАПОЛНИТЕ ON-LINE ЗАЯВКУ. \rНАШИ СПЕЦИАЛИСТЫ ПОМОГУТ ВАМ ВЫБРАТЬ УДОБНЫЕ УСЛОВИЯ КРЕДИТОВАНИЯ И ОТВЕТЯТ НА ИНТЕРЕСУЮЩИЕ ВАС ВОПРОСЫ.\rПОДГОТОВЬТЕ НЕОБХОДИМЫЕ ДЛЯ РАССМОТРЕНИЯ КРЕДИТНОЙ ЗАЯВКИ ДОКУМЕНТЫ И ДОГОВОРИТЕСЬ О ВСТРЕЧЕ С КРЕДИТНЫМ ЭКСПЕРТОМ БАНКА.\rПОКАЖИТЕ КРЕДИТНОМУ ЭКСПЕРТУ ВАШЕ ПРЕДПРИЯТИЕ И ИМУЩЕСТВО, ПРЕДЛАГАЕМОЕ В ЗАЛОГ.\rПОЛУЧИТЕ КРЕДИТ НА РАЗВИТИЕ ВАШЕГО БИЗНЕСА! \nПРОГРАММЫ КРЕДИТОВАНИЯ МАЛОГО И СРЕДНЕГО БИЗНЕСА:\rПРОГРАММА\nСУММА КРЕДИТА\nПРОЦЕНТНАЯ СТАВКА\nСРОК КРЕДИТА\n«ОВЕРДРАФТ»\rОТ 300 000\nДО 5 000 000 РУБЛЕЙ\nОТ 18% ГОДОВЫХ\nДО 12 МЕСЯЦЕВ\n«МИНИКРЕДИТ»\rОТ 150 000\nДО 1 000 000 РУБЛЕЙ\nОТ 24% ГОДОВЫХ\nДО 36 МЕСЯЦЕВ\n«РАЗВИТИЕ»\nОТ 1 000 000\nДО 15 000 000 РУБЛЕЙ\nОТ 17% ГОДОВЫХ\nДО 36 МЕСЯЦЕВ\n«ИНВЕСТ»\nОТ 1 000 000\nДО 30 000 000 РУБЛЕЙ\nОТ 15% ГОДОВЫХ\nДО 72 МЕСЯЦЕВ\r\n'),(28,'3e30b6e27a290bc4818f2de6a938fdf3','ДЕПОЗИТЫ\r\nНАШ БАНК ПРЕДЛАГАЕТ ВАМ ЭФФЕКТИВНО РАЗМЕСТИТЬ СВОБОДНЫЕ ДЕНЬГИ НА БАНКОВСКОМ ДЕПОЗИТЕ И ПОЛУЧИТЬ ДОПОЛНИТЕЛЬНУЮ ПРИБЫЛЬ.\rДЕПОЗИТНЫЕ ПРОДУКТЫ\r \rДОСРОЧНОЕ РАСТОРЖЕНИЕ\rПОПОЛНЕНИЕ\rЧАСТИЧНОЕ ИЗЪЯТИЕ\rВЫПЛАТА ПРОЦЕНТОВ\rДЕПОЗИТ С ВЫПЛАТОЙ ПРОЦЕНТОВ В КОНЦЕ СРОКА\rНЕ ПРЕДУСМОТРЕНО.\rНЕ ПРЕДУСМОТРЕНО.\rНЕ ПРЕДУСМОТРЕНО.\rВ КОНЦЕ СРОКА.\rДЕПОЗИТ С ВЫПЛАТОЙ ПРОЦЕНТОВ ЕЖЕМЕСЯЧНО\rНЕ ПРЕДУСМОТРЕНО.\rНЕ ПРЕДУСМОТРЕНО.\rНЕ ПРЕДУСМОТРЕНО.\rЕЖЕМЕСЯЧНО.\rДЕПОЗИТ С ВОЗМОЖНОСТЬЮ ПОПОЛНЕНИЯ\rНЕ ПРЕДУСМОТРЕНО.\rПРЕКРАЩАЕТСЯ ЗА 2 МЕСЯЦА ДО ОКОНЧАНИЯ СРОКА ДЕЙСТВИЯ ДЕПОЗИТА. \rНЕ ПРЕДУСМОТРЕНО \rВ КОНЦЕ СРОКА. \rДЕПОЗИТ С ВОЗМОЖНОСТЬЮ ПОПОЛНЕНИЯ И ИЗЪЯТИЯ\rНЕ ПРЕДУСМОТРЕНО.\rПРЕКРАЩАЕТСЯ ЗА 2 МЕСЯЦА ДО ОКОНЧАНИЯ СРОКА ДЕЙСТВИЯ ДЕПОЗИТА.\rНЕ БОЛЕЕ 40% ОТ ПЕРВОНАЧАЛЬНОЙ СУММЫ ВКЛАДА ЗА ВЕСЬ СРОК ДЕПОЗИТА \rВ КОНЦЕ СРОКА. \rДЕПОЗИТ С ВОЗМОЖНОСТЬЮ ДОСРОЧНОГО РАСТОРЖЕНИЯ \rВОЗМОЖНО ПРИ РАЗМЕЩЕНИИ НА 12 МЕСЯЦЕВ, НО НЕ РАНЕЕ ЧЕМ ЧЕРЕЗ 6 МЕСЯЦЕВ.\rНЕ ПРЕДУСМОТРЕНО.\rНЕ ПРЕДУСМОТРЕНО. \rВ КОНЦЕ СРОКА.\r\n'),(29,'dc76e079e3571df6ebba5ee1fd4ce0cd','МАЛОМУ И СРЕДНЕМУ БИЗНЕСУ\r\nРАБОТА С ПРЕДПРИЯТИЯМИ МАЛОГО И СРЕДНЕГО БИЗНЕСА - ОДНО ИЗ СТРАТЕГИЧЕСКИ ВАЖНЫХ НАПРАВЛЕНИЙ ДЕЯТЕЛЬНОСТИ БАНКА. НАШ БАНК ПРЕДСТАВЛЯЕТ СОВРЕМЕННЫЕ ПРОГРАММЫ ОБСЛУЖИВАНИЯ МАЛОГО И СРЕДНЕГО БИЗНЕСА, ОБЕСПЕЧИВАЕТ ОПТИМАЛЬНЫЕ И ВЗАИМОВЫГОДНЫЕ ВАРИАНТЫ СОТРУДНИЧЕСТВА, В ОСНОВЕ КОТОРЫХ ЛЕЖИТ ПРОФЕССИОНАЛИЗМ СОТРУДНИКОВ И ВЫСОКОЕ КАЧЕСТВО БАНКОВСКИХ УСЛУГ. УСЛУГИ НАШЕГО БАНКА ОТЛИЧАЮТСЯ ОПЕРАТИВНОСТЬЮ И НАДЕЖНОСТЬЮ, ТАК КАК ОРИЕНТИРОВАНЫ НА ДЕЛОВЫХ ЛЮДЕЙ - НА ТЕХ, КТО ЦЕНИТ СВОЕ ВРЕМЯ И ДЕНЬГИ.\rБАНК ПРЕДЛАГАЕТ СЛЕДУЮЩИЕ ВИДЫ УСЛУГ ДЛЯ ПРЕДПРИЯТИЙ МАЛОГО И СРЕДНЕГО БИЗНЕСА:\rКРЕДИТОВАНИЕ\rЛИЗИНГ\rДЕПОЗИТЫ\rПЛАСТИКОВЫЕ КАРТЫ\r\n'),(30,'da1f66499efacd659dcf24c5c7f6fcb2','ЛИЗИНГ\r\nНАШ БАНК ОКАЗЫВАЕТ ВЕСЬ СПЕКТР УСЛУГ ПО ФИНАНСОВОЙ АРЕНДЕ (ЛИЗИНГУ) ОТЕЧЕСТВЕННОГО И ИМПОРТНОГО ОБОРУДОВАНИЯ, ТРАНСПОРТА И НЕДВИЖИМОСТИ.\rЛИЗИНГ ОБОРУДОВАНИЯ И ТРАНСПОРТА\rОСНОВНЫЕ УСЛОВИЯ:\rСРОК ФИНАНСИРОВАНИЯ:\nОБОРУДОВАНИЕ И ТРАНСПОРТ - ДО 5 ЛЕТ\rЖ/Д ПОДВИЖНОЙ СОСТАВ - ДО 10 ЛЕТ\rВАЛЮТА ФИНАНСИРОВАНИЯ: РУБЛИ, ДОЛЛАРЫ США, ЕВРО\rМИНИМАЛЬНАЯ СУММА ФИНАНСИРОВАНИЯ: ОТ 4,5 МЛН.РУБ.\rАВАНС: ОТ 0%\rУДОРОЖАНИЕ: ОТ 9%\rСРОК ПРИНЯТИЯ РЕШЕНИЯ: ОТ 14 ДНЕЙ\rФИНАНСИРОВАНИЕ ИМПОРТНЫХ ПОСТАВОК\rМЫ ПРЕДОСТАВЛЯЕМ ПРЕДПРИЯТИЯМ ДОСТУП К ЛЬГОТНОМУ ФИНАНСИРОВАНИЮ ИМПОРТНЫХ ПОСТАВОК ОБОРУДОВАНИЯ И ТРАНСПОРТА С ИСПОЛЬЗОВАНИЕМ МЕХАНИЗМА ЛИЗИНГА ПРИ УЧАСТИИ ЭКСПОРТНЫХ КРЕДИТНЫХ АГЕНТСТВ.\rОСНОВНЫЕ УСЛОВИЯ:\rСРОК ФИНАНСИРОВАНИЯ: ДО 7 ЛЕТ\rВАЛЮТА ФИНАНСИРОВАНИЯ: РУБЛИ, ДОЛЛАРЫ США, ЕВРО\rМИНИМАЛЬНАЯ СУММА ФИНАНСИРОВАНИЯ: ОТ 15 МЛН.РУБ. \rАВАНС: ОТ 15% (БЕЗ УЧЕТА ТАМОЖЕННЫХ ПОШЛИН) \rУДОРОЖАНИЕ: ОТ 5%\rСРОК ПРИНЯТИЯ РЕШЕНИЯ: ОТ 14 ДНЕЙ\rЛИЗИНГ КОММЕРЧЕСКОЙ НЕДВИЖИМОСТИ\rПОЗВОЛЯЕТ ПРЕДПРИЯТИЯМ ПРИОБРЕСТИ ОБЪЕКТЫ КОММЕРЧЕСКОЙ НЕДВИЖИМОСТИ БЕЗ ЕДИНОВРЕМЕННОГО ОТВЛЕЧЕНИЯ ЗНАЧИТЕЛЬНЫХ СРЕДСТВ.\rВ КАЧЕСТВЕ ПРЕДМЕТА ЛИЗИНГА МОГУТ ВЫСТУПАТЬ:\rОФИСНЫЕ ЗДАНИЯ;\rТОРГОВЫЕ, СКЛАДСКИЕ И ПРОИЗВОДСТВЕННЫЕ ПОМЕЩЕНИЯ;\rДРУГИЕ ОБЪЕКТЫ КОММЕРЧЕСКОЙ НЕДВИЖИМОСТИ.\rОСНОВНЫЕ УСЛОВИЯ:\rСРОК ФИНАНСИРОВАНИЯ: ОТ 5 ЛЕТ\rВАЛЮТА ФИНАНСИРОВАНИЯ: РУБЛИ, ДОЛЛАРЫ США, ЕВРО\rМИНИМАЛЬНАЯ СУММА ФИНАНСИРОВАНИЯ: ОТ 50 МЛН.РУБ.* \rАВАНС: ОТ 0%\rУДОРОЖАНИЕ: ОТ 7%\rСРОК ПРИНЯТИЯ РЕШЕНИЯ: ОТ 14 ДНЕЙ\r* РАЗМЕР СУММЫ ФИНАНСИРОВАНИЯ ЗАВИСИТ ОТ РЕГИОНА, В КОТОРОМ НАХОДИТСЯ ОБЪЕКТ НЕДВИЖИМОСТИ.\rОСНОВНЫМ ТРЕБОВАНИЕМ, ПРЕДЪЯВЛЯЕМЫМ НАШИМ БАНКОМ ДЛЯ РАССМОТРЕНИЯ ЗАЯВКИ НА ЛИЗИНГ КОММЕРЧЕСКОЙ НЕДВИЖИМОСТИ, ЯВЛЯЕТСЯ НАЛИЧИЕ ПОЛНОГО КОМПЛЕКТА ПРАВОУСТАНАВЛИВАЮЩИХ ДОКУМЕНТОВ НА НЕДВИЖИМОСТЬ И НАЛИЧИЕ ОТЧЕТА НЕЗАВИСИМОГО ОЦЕНЩИКА.\r\n'),(31,'9dfab91b86ab4a11b04df5f40578198c','БАНК ПЕРЕНОСИТ ДАТУ ВСТУПЛЕНИЯ В ДЕЙСТВИЕ ТАРИФОВ НА УСЛУГИ В ИНОСТРАННОЙ ВАЛЮТЕ\r\nУВАЖАЕМЫЕ КЛИЕНТЫ,\rСООБЩАЕМ ВАМ, ЧТО БАНК ПЕРЕНОСИТ ДАТУ ВСТУПЛЕНИЯ В ДЕЙСТВИЕ ТАРИФОВ НА УСЛУГИ ДЛЯ ЮРИДИЧЕСКИХ ЛИЦ И ИНДИВИДУАЛЬНЫХ ПРЕДПРИНИМАТЕЛЕЙ В ИНОСТРАННОЙ ВАЛЮТЕ. В СВЯЗИ С ЭТИМ ДО ДАТЫ ВВЕДЕНИЯ В ДЕЙСТВИЕ НОВОЙ РЕДАКЦИИ ТАРИФОВ, УСЛУГИ ЮРИДИЧЕСКИМ ЛИЦАМ И ИНДИВИДУАЛЬНЫМ ПРЕДПРИНИМАТЕЛЯМ БУДУТ ОКАЗЫВАТЬСЯ В РАМКАХ ДЕЙСТВУЮЩИХ ТАРИФОВ. \rИНФОРМАЦИЯ О ДАТЕ ВВЕДЕНИЯ НОВОЙ РЕДАКЦИИ ТАРИФОВ БУДЕТ СООБЩЕНА ДОПОЛНИТЕЛЬНО.\r\nУВАЖАЕМЫЕ КЛИЕНТЫ,\rСООБЩАЕМ ВАМ, ЧТО БАНК ПЕРЕНОСИТ ДАТУ ВСТУПЛЕНИЯ В ДЕЙСТВИЕ ТАРИФОВ НА УСЛУГИ ДЛЯ ЮРИДИЧЕСКИХ ЛИЦ И ИНДИВИДУАЛЬНЫХ ПРЕДПРИНИМАТЕЛЕЙ В ИНОСТРАННОЙ ВАЛЮТЕ. В СВЯЗИ С ЭТИМ ДО ДАТЫ ВВЕДЕНИЯ В ДЕЙСТВИЕ НОВОЙ РЕДАКЦИИ ТАРИФОВ, УСЛУГИ ЮРИДИЧЕСКИМ ЛИЦАМ И ИНДИВИДУАЛЬНЫМ ПРЕДПРИНИМАТЕЛЯМ БУДУТ ОКАЗЫВАТЬСЯ В РАМКАХ ДЕЙСТВУЮЩИХ ТАРИФОВ. \rИНФОРМАЦИЯ О ДАТЕ ВВЕДЕНИЯ НОВОЙ РЕДАКЦИИ ТАРИФОВ БУДЕТ СООБЩЕНА ДОПОЛНИТЕЛЬНО.\r\n'),(32,'437ea50fe03f56e33342d948ce95e9f8','НАЧАТЬ РАБОТАТЬ С СИСТЕМОЙ «ИНТЕРНЕТ-КЛИЕНТ» СТАЛО ЕЩЕ ПРОЩЕ\r\nНАШ БАНК ПРЕДЛАГАЕТ СВОИМ КЛИЕНТАМ МАСТЕР УСТАНОВКИ «ИНТЕРНЕТ-КЛИЕНТ», КОТОРЫЙ СУЩЕСТВЕННО УПРОСТИТ НАЧАЛО РАБОТЫ С СИСТЕМОЙ. ТЕПЕРЬ ДОСТАТОЧНО СКАЧАТЬ И ЗАПУСТИТЬ МАСТЕР УСТАНОВКИ, И ВСЕ НАСТРОЙКИ БУДУТ ПРОИЗВЕДЕНЫ АВТОМАТИЧЕСКИ. ВАМ БОЛЬШЕ НЕ НУЖНО ТРАТИТЬ ВРЕМЯ НА ИЗУЧЕНИЕ ОБЪЕМНЫХ ИНСТРУКЦИЙ, ИЛИ ЗВОНИТЬ В СЛУЖБУ ТЕХПОДДЕРЖКИ, ЧТОБЫ НАЧАТЬ РАБОТАТЬ С СИСТЕМОЙ.\r\nНАШ БАНК ПРЕДЛАГАЕТ СВОИМ КЛИЕНТАМ МАСТЕР УСТАНОВКИ «ИНТЕРНЕТ-КЛИЕНТ», КОТОРЫЙ СУЩЕСТВЕННО УПРОСТИТ НАЧАЛО РАБОТЫ С СИСТЕМОЙ. ТЕПЕРЬ ДОСТАТОЧНО СКАЧАТЬ И ЗАПУСТИТЬ МАСТЕР УСТАНОВКИ, И ВСЕ НАСТРОЙКИ БУДУТ ПРОИЗВЕДЕНЫ АВТОМАТИЧЕСКИ. ВАМ БОЛЬШЕ НЕ НУЖНО ТРАТИТЬ ВРЕМЯ НА ИЗУЧЕНИЕ ОБЪЕМНЫХ ИНСТРУКЦИЙ, ИЛИ ЗВОНИТЬ В СЛУЖБУ ТЕХПОДДЕРЖКИ, ЧТОБЫ НАЧАТЬ РАБОТАТЬ С СИСТЕМОЙ.\r\n'),(33,'e9a9009de370e84b759e3b542f854458','РЕОРГАНИЗАЦИЯ СЕТИ ОТДЕЛЕНИЙ БАНКА\r\nВ БЛИЖАЙШЕЕ ВРЕМЯ БУДЕТ ЗНАЧИТЕЛЬНО РАСШИРЕН ПРОДУКТОВЫЙ РЯД И ПЕРЕЧЕНЬ ПРЕДОСТАВЛЯЕМЫХ БАНКОВСКИХ УСЛУГ, КОТОРЫЕ БАНК СМОЖЕТ ПРЕДЛАГАТЬ ВО ВСЕХ СВОИХ ДОПОЛНИТЕЛЬНЫХ ОФИСАХ. ТЕПЕРЬ НАШИ КЛИЕНТЫ СМОГУТ ПОЛУЧИТЬ ПОЛНЫЙ ПЕРЕЧЕНЬ УСЛУГ В ЛЮБОМ ИЗ ОТДЕЛЕНИЙ БАНКА. \rБЫЛО ПРОВЕДЕНО КОМПЛЕКСНОЕ ВСЕСТОРОННЕЕ ИССЛЕДОВАНИЕ ФУНКЦИОНИРОВАНИЯ РЕГИОНАЛЬНЫХ ОФИСОВ НА ПРЕДМЕТ СООТВЕТСТВИЯ ВОЗРОСШИМ ТРЕБОВАНИЯМ. В РЕЗУЛЬТАТЕ, ПРИНЯТО РЕШЕНИЕ О ВРЕМЕННОМ ЗАКРЫТИИ ОФИСОВ, НЕ СООТВЕТСТВУЮЩИХ ВЫСОКИМ СТАНДАРТАМ И НЕ ПРИСПОСОБЛЕННЫХ К ТРЕБОВАНИЯМ РАСТУЩЕГО БИЗНЕСА. ОФИСЫ ПОСТЕПЕННО БУДУТ ОТРЕМОНТИРОВАНЫ И ПЕРЕОБОРУДОВАНЫ, СТАНУТ СОВРЕМЕННЫМИ И УДОБНЫМИ. \rПРИНОСИМ СВОИ ИЗВИНЕНИЯ ЗА ВРЕМЕННО ДОСТАВЛЕННЫЕ НЕУДОБСТВА. \r\nВ БЛИЖАЙШЕЕ ВРЕМЯ БУДЕТ ЗНАЧИТЕЛЬНО РАСШИРЕН ПРОДУКТОВЫЙ РЯД И ПЕРЕЧЕНЬ ПРЕДОСТАВЛЯЕМЫХ БАНКОВСКИХ УСЛУГ, КОТОРЫЕ БАНК СМОЖЕТ ПРЕДЛАГАТЬ ВО ВСЕХ СВОИХ ДОПОЛНИТЕЛЬНЫХ ОФИСАХ. ТЕПЕРЬ НАШИ КЛИЕНТЫ СМОГУТ ПОЛУЧИТЬ ПОЛНЫЙ ПЕРЕЧЕНЬ УСЛУГ В ЛЮБОМ ИЗ ОТДЕЛЕНИЙ БАНКА. \rБЫЛО ПРОВЕДЕНО КОМПЛЕКСНОЕ ВСЕСТОРОННЕЕ ИССЛЕДОВАНИЕ ФУНКЦИОНИРОВАНИЯ РЕГИОНАЛЬНЫХ ОФИСОВ НА ПРЕДМЕТ СООТВЕТСТВИЯ ВОЗРОСШИМ ТРЕБОВАНИЯМ. В РЕЗУЛЬТАТЕ, ПРИНЯТО РЕШЕНИЕ О ВРЕМЕННОМ ЗАКРЫТИИ ОФИСОВ, НЕ СООТВЕТСТВУЮЩИХ ВЫСОКИМ СТАНДАРТАМ И НЕ ПРИСПОСОБЛЕННЫХ К ТРЕБОВАНИЯМ РАСТУЩЕГО БИЗНЕСА. ОФИСЫ ПОСТЕПЕННО БУДУТ ОТРЕМОНТИРОВАНЫ И ПЕРЕОБОРУДОВАНЫ, СТАНУТ СОВРЕМЕННЫМИ И УДОБНЫМИ. \rПРИНОСИМ СВОИ ИЗВИНЕНИЯ ЗА ВРЕМЕННО ДОСТАВЛЕННЫЕ НЕУДОБСТВА.\r\n'),(34,'a0b07dac40b2192e3759747f41ea1edc','ГЛАВНЫЙ СПЕЦИАЛИСТ ОТДЕЛА АНАЛИЗА КРЕДИТНЫХ ПРОЕКТОВ РЕГИОНАЛЬНОЙ СЕТИ\r\nТРЕБОВАНИЯ\rВЫСШЕЕ ЭКОНОМИЧЕСКОЕ/ФИНАНСОВОЕ ОБРАЗОВАНИЕ, ОПЫТ В БАНКАХ ТОП-100 НЕ МЕНЕЕ 3-Х ЛЕТ В КРЕДИТНОМ ОТДЕЛЕ (АНАЛИЗ ЗАЕМЩИКОВ), ЖЕЛАТЕЛЕН ОПЫТ РАБОТЫ С КРЕДИТНЫМИ ЗАЯВКАМИ ФИЛИАЛОВ, ЗНАНИЕ ТЕХНОЛОГИЙ АФХД ПРЕДПРИЯТИЙ, НАВЫКИ НАПИСАНИЯ ЭКСПЕРТНОГО ЗАКЛЮЧЕНИЯ, ЗНАНИЕ ЗАКОНОДАТЕЛЬСТВА (В Т.Ч. ПОЛОЖЕНИЕ ЦБ № 254-П).\rОБЯЗАННОСТИ\rАНАЛИЗ КРЕДИТНЫХ ПРОЕКТОВ ФИЛИАЛОВ БАНКА, ПОДГОТОВКА ПРЕДЛОЖЕНИЙ ПО СТРУКТУРИРОВАНИЮ КРЕДИТНЫХ ПРОЕКТОВ, ОЦЕНКА ПОЛНОТЫ И КАЧЕСТВА ФОРМИРУЕМЫХ ФИЛИАЛАМИ ЗАКЛЮЧЕНИЙ, ВЫЯВЛЕНИЕ СТОП-ФАКТОРОВ, ДОРАБОТКА ЗАЯВОК ФИЛИАЛОВ В СООТВЕТСТВИИ СО СТАНДАРТАМИ БАНКА, ПОДГОТОВКА ЗАКЛЮЧЕНИЯ (РЕКОМЕНДАЦИЙ) НА КК ПО ЗАЯВКАМ ФИЛИАЛОВ В ЧАСТИ ОЦЕНКИ ФИНАНСОВО-ЭКОНОМИЧЕСКОГО СОСТОЯНИЯ ЗАЕМЩИКА, ЗАЩИТА ПРОЕКТОВ НА КК БАНКА, КОНСУЛЬТИРОВАНИЕ И МЕТОДОЛОГИЧЕСКАЯ ПОМОЩЬ ФИЛИАЛАМ БАНКА В ЧАСТИ КОРПОРАТИВНОГО КРЕДИТОВАНИЯ.\rУСЛОВИЯ\rМЕСТО РАБОТЫ: М.ПАРК КУЛЬТУРЫ. ГРАФИКИ РАБОТЫ: ПЯТИДНЕВНАЯ РАБОЧАЯ НЕДЕЛЯ, С 9:00 ДО 18:00, ПТ. ДО 16:45. ЗАРПЛАТА: 50000 РУБ. ОКЛАД + ПРЕМИИ, ПОЛНЫЙ СОЦ. ПАКЕТ,ОФОРМЛЕНИЕ СОГЛАСНО ТК РФ\r\n'),(35,'c2f74d9d9478f621cc944462301f0298','СПЕЦИАЛИСТ ПО ПРОДАЖАМ РОЗНИЧНЫХ БАНКОВСКИХ ПРОДУКТОВ\r\nТРЕБОВАНИЯ\rВЫСШЕЕ ЭКОНОМИЧЕСКОГО ОБРАЗОВАНИЯ ‚ ОПЫТ РАБОТЫ В СФЕРЕ ПРОДАЖ БАНКОВСКИХ ПРОДУКТОВ‚ ОПЫТНЫЙ ПОЛЬЗОВАТЕЛЬ ПК‚ ЭТИКА ДЕЛОВОГО ОБЩЕНИЯ‚ ОТВЕТСТВЕННОСТЬ‚ ИНИЦИАТИВНОСТЬ‚ АКТИВНОСТЬ.\rОБЯЗАННОСТИ\rПРОДАЖА РОЗНИЧНЫХ БАНКОВСКИХ ПРОДУКТОВ, ОФОРМЛЕНИЕ ДОКУМЕНТОВ.\rУСЛОВИЯ\rТРУДОУСТРОЙСТВО ПО ТК РФ‚ ПОЛНЫЙ СОЦ. ПАКЕТ. ГРАФИК РАБОТЫ: ПЯТИДНЕВНАЯ РАБОЧАЯ НЕДЕЛЯ. ЗАРПЛАТА: 20000 РУБ. ОКЛАД + ПРЕМИИ\r\n'),(36,'f80f82e8603db0db02c1d3a241b0db0c','СПЕЦИАЛИСТ ОТДЕЛА АНДЕРРАЙТИНГА\r\nТРЕБОВАНИЯ\rВЫСШЕЕ ПРОФЕССИОНАЛЬНОЕ ОБРАЗОВАНИЕ, ОПЫТ РАБОТЫ ОТ 2 ЛЕТ В ОТДЕЛЕ ПО РАБОТЕ С ФИЗИЧЕСКИМИ И ЮРИДИЧЕСКИМИ ЛИЦАМИ БАНКОВ, СВЯЗАННЫХ С АНАЛИЗОМ ПЛАТЁЖЕСПОСОБНОСТИ И КРЕДИТОСПОСОБНОСТИ ФИЗИЧЕСКИХ И ЮРИДИЧЕСКИХ ЛИЦ.\rОБЯЗАННОСТИ\rПРОВЕРКА СООТВЕТСТВИЯ ДОКУМЕНТОВ, ПРЕДОСТАВЛЕННЫХ КЛИЕНТАМИ БАНКА, АНАЛИЗ ИНФОРМАЦИИ О РИСКЕ\rУСЛОВИЯ\rТРУДОУСТРОЙСТВО ПО ТК РФ‚ ПОЛНЫЙ СОЦ. ПАКЕТ. ГРАФИК РАБОТЫ: ПЯТИДНЕВНАЯ РАБОЧАЯ НЕДЕЛЯ. ЗАРПЛАТА: ОКЛАД 25000 РУБ.\r\n'),(37,'92aa1d481886f6308fac14d83546288e','КРЕДИТЫ\r\n\r\n'),(38,'2807d4fa134cac0683e554bbeb6de14b','ЧАСТНЫМ ЛИЦАМ\r\n\r\n'),(39,'9555ff5827c438e13080ce8d89c6655f','ВКЛАДЫ\r\n\r\n'),(40,'03a7d0f305129863a03ff9ab33970787','ИПОТЕКА\r\n\r\n'),(41,'ead7a3ae944f5161ea066c16925f7581','КРЕДИТ \"ДЛЯ СВОИХ\"\r\n\r\n');
/*!40000 ALTER TABLE `b_search_content_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_title`
--

DROP TABLE IF EXISTS `b_search_content_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_title` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `POS` int(11) NOT NULL,
  `WORD` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_TITLE` (`SITE_ID`,`WORD`,`SEARCH_CONTENT_ID`,`POS`),
  KEY `IND_B_SEARCH_CONTENT_TITLE` (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_title`
--

LOCK TABLES `b_search_content_title` WRITE;
/*!40000 ALTER TABLE `b_search_content_title` DISABLE KEYS */;
INSERT INTO `b_search_content_title` VALUES (7,'s1',0,'АВТОРИЗАЦИЯ'),(34,'s1',26,'АНАЛИЗА'),(36,'s1',18,'АНДЕРРАЙТИНГА'),(31,'s1',0,'БАНК'),(1,'s1',8,'БАНКА'),(33,'s1',29,'БАНКА'),(22,'s1',0,'БАНКОВСКИЕ'),(35,'s1',33,'БАНКОВСКИХ'),(29,'s1',18,'БИЗНЕСУ'),(31,'s1',20,'В'),(6,'s1',0,'ВАКАНСИИ'),(31,'s1',74,'ВАЛЮТЕ'),(39,'s1',0,'ВКЛАДЫ'),(8,'s1',7,'ВОПРОС'),(31,'s1',20,'ВСТУПЛЕНИЯ'),(34,'s1',0,'ГЛАВНЫЙ'),(31,'s1',15,'ДАТУ'),(31,'s1',33,'ДЕЙСТВИЕ'),(18,'s1',0,'ДЕПОЗИТАРНЫЕ'),(28,'s1',0,'ДЕПОЗИТЫ'),(41,'s1',8,'ДЛЯ'),(19,'s1',0,'ДОКУМЕНТАРНЫЕ'),(32,'s1',51,'ЕЩЕ'),(8,'s1',0,'ЗАДАТЬ'),(29,'s1',7,'И'),(15,'s1',0,'ИНКАССАЦИЯ'),(31,'s1',62,'ИНОСТРАННОЙ'),(14,'s1',0,'ИНТЕРНЕТ-БАНКИНГ'),(32,'s1',28,'ИНТЕРНЕТ-КЛИЕНТ'),(3,'s1',0,'ИНФОРМАЦИЯ'),(9,'s1',11,'ИНФОРМАЦИЯ'),(40,'s1',0,'ИПОТЕКА'),(2,'s1',0,'ИСТОРИЯ'),(13,'s1',0,'КАРТА'),(22,'s1',11,'КАРТЫ'),(26,'s1',12,'КАРТЫ'),(16,'s1',14,'КЛИЕНТАМ'),(2,'s1',8,'КОМПАНИИ'),(3,'s1',13,'КОМПАНИИ'),(11,'s1',8,'КОМПАНИИ'),(9,'s1',0,'КОНТАКТНАЯ'),(16,'s1',0,'КОРПОРАТИВНЫМ'),(23,'s1',16,'КРЕДИТ'),(41,'s1',0,'КРЕДИТ'),(34,'s1',34,'КРЕДИТНЫХ'),(27,'s1',0,'КРЕДИТОВАНИЕ'),(37,'s1',0,'КРЕДИТЫ'),(30,'s1',0,'ЛИЗИНГ'),(24,'s1',8,'ЛИЦАМ'),(38,'s1',8,'ЛИЦАМ'),(29,'s1',0,'МАЛОМУ'),(21,'s1',10,'МЕЖБАНКОВСКОМ'),(5,'s1',0,'МИССИЯ'),(21,'s1',7,'НА'),(31,'s1',50,'НА'),(32,'s1',0,'НАЧАТЬ'),(10,'s1',0,'НАШИ'),(1,'s1',0,'НОВОСТИ'),(11,'s1',0,'НОВОСТИ'),(3,'s1',3,'О'),(17,'s1',18,'ОБСЛУЖИВАНИЕ'),(19,'s1',14,'ОПЕРАЦИИ'),(20,'s1',11,'ОРГАНИЗАЦИЯМ'),(34,'s1',19,'ОТДЕЛА'),(36,'s1',11,'ОТДЕЛА'),(33,'s1',19,'ОТДЕЛЕНИЙ'),(31,'s1',5,'ПЕРЕНОСИТ'),(26,'s1',0,'ПЛАСТИКОВЫЕ'),(35,'s1',11,'ПО'),(12,'s1',0,'ПОИСК'),(23,'s1',0,'ПОТРЕБИТЕЛЬСКИЙ'),(35,'s1',14,'ПРОДАЖАМ'),(35,'s1',44,'ПРОДУКТОВ'),(34,'s1',44,'ПРОЕКТОВ'),(32,'s1',55,'ПРОЩЕ'),(32,'s1',7,'РАБОТАТЬ'),(17,'s1',0,'РАСЧЕТНО-КАССОВОЕ'),(34,'s1',53,'РЕГИОНАЛЬНОЙ'),(10,'s1',5,'РЕКВИЗИТЫ'),(33,'s1',0,'РЕОРГАНИЗАЦИЯ'),(35,'s1',23,'РОЗНИЧНЫХ'),(4,'s1',0,'РУКОВОДСТВО'),(21,'s1',24,'РЫНКЕ'),(32,'s1',16,'С'),(13,'s1',6,'САЙТА'),(41,'s1',12,'СВОИХ'),(33,'s1',14,'СЕТИ'),(34,'s1',66,'СЕТИ'),(32,'s1',18,'СИСТЕМОЙ'),(34,'s1',8,'СПЕЦИАЛИСТ'),(35,'s1',0,'СПЕЦИАЛИСТ'),(36,'s1',0,'СПЕЦИАЛИСТ'),(29,'s1',9,'СРЕДНЕМУ'),(32,'s1',45,'СТАЛО'),(31,'s1',42,'ТАРИФОВ'),(18,'s1',13,'УСЛУГИ'),(21,'s1',0,'УСЛУГИ'),(25,'s1',0,'УСЛУГИ'),(31,'s1',53,'УСЛУГИ'),(20,'s1',0,'ФИНАНСОВЫМ'),(24,'s1',0,'ЧАСТНЫМ'),(38,'s1',0,'ЧАСТНЫМ');
/*!40000 ALTER TABLE `b_search_content_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_custom_rank`
--

DROP TABLE IF EXISTS `b_search_custom_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_custom_rank` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RANK` int(11) NOT NULL DEFAULT 0,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_B_SEARCH_CUSTOM_RANK` (`SITE_ID`,`MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_custom_rank`
--

LOCK TABLES `b_search_custom_rank` WRITE;
/*!40000 ALTER TABLE `b_search_custom_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_custom_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_phrase`
--

DROP TABLE IF EXISTS `b_search_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_phrase` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL,
  `PAGES` int(11) NOT NULL,
  `SESSION_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO_404` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_SESS_ID` int(18) DEFAULT NULL,
  `EVENT1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_PK_B_SEARCH_PHRASE_SESS_PH` (`SESSION_ID`,`PHRASE`(50)),
  KEY `IND_PK_B_SEARCH_PHRASE_SESS_TG` (`SESSION_ID`,`TAGS`(50)),
  KEY `IND_PK_B_SEARCH_PHRASE_TIME` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_phrase`
--

LOCK TABLES `b_search_phrase` WRITE;
/*!40000 ALTER TABLE `b_search_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_stem`
--

DROP TABLE IF EXISTS `b_search_stem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_stem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STEM` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_B_SEARCH_STEM` (`STEM`)
) ENGINE=InnoDB AUTO_INCREMENT=1470 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_stem`
--

LOCK TABLES `b_search_stem` WRITE;
/*!40000 ALTER TABLE `b_search_stem` DISABLE KEYS */;
INSERT INTO `b_search_stem` VALUES (763,'-0'),(787,'00'),(113,'000'),(1160,'001'),(614,'044591488'),(775,'05'),(624,'0575249000'),(849,'09'),(1137,'1-6-ГО'),(772,'10'),(626,'115035'),(616,'11806935'),(1140,'12'),(756,'120'),(1064,'13'),(1181,'14'),(761,'140'),(1077,'147'),(168,'149'),(607,'15'),(903,'150'),(596,'152073950937987'),(850,'16'),(764,'160'),(905,'1600'),(1329,'17'),(604,'175089'),(6,'18'),(767,'180'),(417,'1985'),(371,'1986'),(365,'1988'),(341,'1991'),(8,'1993'),(10,'1996'),(25,'1997'),(49,'1998'),(67,'1999'),(790,'1О'),(1307,'2-Х'),(179,'20'),(115,'200'),(347,'2000'),(1462,'20000'),(407,'2002'),(85,'2004'),(79,'2004ГОД'),(103,'2006'),(122,'2007'),(136,'2008'),(152,'2009'),(160,'2010'),(1141,'21'),(579,'212-85-06'),(580,'212-85-07'),(581,'212-85-08'),(786,'22'),(770,'220'),(1195,'23'),(1142,'24'),(182,'240'),(629,'240-38-12'),(766,'25'),(758,'2500'),(1466,'25000'),(1430,'254-П'),(776,'260'),(1214,'2НДФЛ'),(1264,'3-5'),(1420,'3-Х'),(1055,'30'),(919,'300'),(610,'30102810000000000569'),(187,'31'),(760,'35'),(806,'350'),(762,'3500'),(1170,'36'),(1062,'365'),(252,'4-М'),(1343,'40'),(904,'400'),(181,'415'),(755,'45'),(765,'4500'),(233,'490'),(578,'495'),(779,'5-10'),(247,'5-М'),(112,'50'),(911,'500'),(768,'5000'),(1451,'50000'),(186,'522'),(185,'535'),(1200,'55'),(921,'580'),(1139,'6-ГО'),(1198,'60'),(1124,'600'),(769,'6000'),(205,'650'),(242,'7-Е'),(235,'70'),(771,'7000'),(1331,'72'),(1151,'75'),(1319,'757-57-57'),(620,'775021017'),(612,'7860249880'),(1221,'800'),(773,'8000'),(1222,'808'),(929,'870'),(1159,'90'),(777,'9000'),(1061,'91'),(598,'911156'),(167,'95'),(628,'960-10-12'),(1070,'978-78-78'),(618,'98122'),(593,'BANK'),(602,'BITEX'),(1289,'CКИДК'),(530,'CТРАН'),(630,'E-MAIL'),(722,'ENVIRONMENT'),(718,'EXPLORER'),(1252,'GOLD'),(1468,'HERE'),(157,'IBANK'),(600,'IISARUMM'),(1256,'INFINITE'),(352,'INSEAD'),(83,'INTERNATIONAL'),(717,'INTERNET'),(599,'IRS'),(720,'JAVA'),(723,'JRE'),(632,'MAIL'),(1248,'MASTERCARD'),(350,'MBA'),(591,'NAME'),(592,'OF'),(677,'ON-LINE'),(1253,'PLATINUM'),(721,'RUNTIME'),(633,'RUSBANK'),(631,'RUSBK'),(1172,'SMS'),(601,'SPRINT'),(158,'SYSTEM'),(597,'TELEX'),(1467,'TEXT'),(590,'THE'),(430,'UAMS'),(724,'VERSION'),(82,'VISA'),(713,'WINDOWS'),(705,'АБОНЕНТСК'),(1350,'АВАНС'),(967,'АВАНСОВ'),(1084,'АВИЗ'),(980,'АВИЗОВАН'),(268,'АВТОКРЕДИТОВАН'),(155,'АВТОМАТИЗИРОВА'),(1391,'АВТОМАТИЧЕСК'),(98,'АВТОМОБИЛ'),(533,'АВТОРИЗАЦ'),(535,'АВТОРИЗОВА'),(1313,'АВТОТРАНСПОРТ'),(890,'АГЕНТ'),(1354,'АГЕНТСТВ'),(536,'АДМИНИСТРАТИВН'),(874,'АДР'),(603,'АДРЕС'),(484,'АДРЕСН'),(144,'АКАДЕМ'),(995,'АККРЕДИТ'),(993,'АККРЕДИТИВ'),(1012,'АККРЕДИТИВН'),(994,'АККРЕДИТИВОВ'),(245,'АКТ'),(244,'АКТИВ'),(21,'АКТИВН'),(243,'АКТИВОВ'),(689,'АКТУАЛЬН'),(868,'АКЦ'),(585,'АКЦИОНЕРН'),(398,'АЛЕКСАНДРОВИЧ'),(1089,'АМЕРИКАНСК'),(58,'АНАЛИЗ'),(403,'АНАТОЛ'),(588,'АНГЛИЙСК'),(1463,'АНДЕРРАЙТИНГ'),(423,'АНДР'),(908,'АНКЕТ'),(429,'АНТВЕРП'),(275,'АРЕНД'),(146,'АССОЦИАЦ'),(1424,'АФХД'),(1174,'БАЛАНС'),(950,'БАЛТ'),(627,'БАЛЧУГ'),(2,'БАНК'),(1080,'БАНК-КОНТРАГЕНТ'),(998,'БАНК-ЭМИТЕНТ'),(1003,'БАНКА-ЭМИТЕНТ'),(1078,'БАНКАМ-КОНТРАГЕНТ'),(1008,'БАНКАМИ-КОРРЕСПОНДЕНТ'),(1087,'БАНКНОТ'),(1085,'БАНКНОТН'),(289,'БАНКОВ'),(1046,'БАНКОВ-КОНТРАГЕНТ'),(1045,'БАНКОВ-КОНТРАГЕНТОВ'),(957,'БАНКОВ-КОРРЕСПОНДЕНТ'),(956,'БАНКОВ-КОРРЕСПОНДЕНТОВ'),(1145,'БАНКОВ-ПАРТНЕР'),(1144,'БАНКОВ-ПАРТНЕРОВ'),(156,'БАНКОВСК'),(1094,'БАНКОМ-ЭМИТЕНТ'),(804,'БАНКОМАТ'),(803,'БАНКОМАТОВ'),(918,'БЕЗДОКУМЕНТАРН'),(1086,'БЕЗНАЛИЧН'),(639,'БЕЗОПАСН'),(1006,'БЕЗОТЗЫВН'),(942,'БЕЗУСЛОВН'),(983,'БЕНЕФИЦИАР'),(982,'БЕНЕФИЦИАРОВ'),(704,'БЕСПЛАТН'),(134,'БИЗНЕС'),(1309,'БИЗНЕС-ПЛА'),(351,'БИЗНЕС-ШКОЛ'),(613,'БИК'),(529,'БЛАГ'),(511,'БЛАГОСОСТОЯН'),(520,'БЛАГОТВОРИТЕЛЬН'),(1320,'БЛИЖАЙШ'),(951,'БЛИЖН'),(924,'БЛОКИРОВК'),(111,'БОЛ'),(188,'БОЛЬШ'),(826,'БОЛЬШИНСТВ'),(1290,'БОНУСН'),(1257,'БРИЛЛИАНТ'),(913,'БРОКЕРСК'),(573,'БУД'),(1196,'БУДЕТ'),(1377,'БУДУТ'),(56,'БУМАГ'),(897,'БУМАЖН'),(416,'БУХГАЛТЕР'),(59,'БУХГАЛТЕРСК'),(1090,'БЫВШ'),(540,'БЫСТР'),(363,'ВАД'),(1016,'ВАЖН'),(532,'ВАКАНС'),(675,'ВАЛЮТ'),(1048,'ВАЛЮТН'),(1239,'ВАРИАНТ'),(1075,'ВАРЬИР'),(1202,'ВАС'),(385,'ВАСИЛЬЕВН'),(1375,'ВВЕДЕН'),(657,'ВВОД'),(1345,'ВЕ'),(831,'ВЕДЕН'),(469,'ВЕЗД'),(871,'ВЕКСЕЛ'),(1109,'ВЕКСЕЛЕДЕРЖАТЕЛ'),(1067,'ВЕКСЕЛЬН'),(561,'ВЕРНУТ'),(719,'ВЕРС'),(538,'ВЕРХН'),(1021,'ВЗАИМН'),(1029,'ВЗАИМОВЫГОДН'),(460,'ВЗАИМОДЕЙСТВ'),(488,'ВЗАИМООТНОШЕН'),(707,'ВЗИМА'),(931,'ВЗИМАН'),(109,'ВЗЯЛ'),(229,'ВИД'),(867,'ВИДОВ'),(666,'ВИЗИРОВА'),(390,'ВИКТОРОВИЧ'),(119,'ВКЛАД'),(1229,'ВКЛАДОВ'),(260,'ВКЛЮЧ'),(1268,'ВКЛЮЧА'),(1157,'ВКЛЮЧИТЕЛЬН'),(888,'ВЛАДЕЛЬЦ'),(1188,'ВЛЕЧЕТ'),(493,'ВНЕДР'),(213,'ВНЕДРЕН'),(906,'ВНЕСЕН'),(1032,'ВНИМАН'),(510,'ВНОС'),(922,'ВНУТР'),(647,'ВНУТРЕН'),(928,'ВОЗВРАТ'),(195,'ВОЗМОЖН'),(1074,'ВОЗНАГРАЖДЕН'),(1113,'ВОЗНИКА'),(1189,'ВОЗНИКНОВЕН'),(1405,'ВОЗРОСШ'),(368,'ВОЛОШИН'),(563,'ВОПРОС'),(727,'ВОСПОЛЬЗОВА'),(47,'ВОСТРЕБОВАН'),(108,'ВРЕМ'),(642,'ВРЕМЕН'),(468,'ВСЕГД'),(500,'ВСЕМ'),(306,'ВСЕМИРН'),(124,'ВСЕРОССИЙСК'),(1402,'ВСЕСТОРОН'),(504,'ВСЕХ'),(572,'ВСТРЕЧ'),(976,'ВСТРЕЧН'),(1371,'ВСТУПЛЕН'),(100,'ВУЗ'),(1044,'ВЫБОР'),(1323,'ВЫБРА'),(1236,'ВЫГОДН'),(1049,'ВЫДА'),(954,'ВЫДАЧ'),(751,'ВЫЕЗД'),(750,'ВЫЕЗДОВ'),(34,'ВЫНЕСТ'),(668,'ВЫПИСК'),(901,'ВЫПИСОК'),(1339,'ВЫПЛАТ'),(880,'ВЫПОЛНЕН'),(27,'ВЫПУСК'),(743,'ВЫРУЧК'),(435,'ВЫСОК'),(89,'ВЫСОКОТЕХНОЛОГИЧН'),(481,'ВЫСОЧАЙШ'),(316,'ВЫСТАВК'),(1360,'ВЫСТУПА'),(1417,'ВЫСШ'),(801,'ВЫХОДН'),(1161,'ВЫШ'),(1437,'ВЫЯВЛЕН'),(337,'ВЯЧЕСЛА'),(1005,'ГАЗПРОМБАНК'),(953,'ГАРАНТ'),(990,'ГАРАНТИЙН'),(496,'ГАРАНТИР'),(875,'ГДР'),(701,'ГЕНЕРАЦ'),(424,'ГЕННАДЬЕВИЧ'),(948,'ГЕОГРАФ'),(490,'ГИБК'),(123,'ГЛАВН'),(9,'ГОД'),(1169,'ГОДОВ'),(1217,'ГОРОД'),(1219,'ГОРОДСК'),(1220,'ГОРЯЧ'),(332,'ГОСУДАРСТВЕН'),(1263,'ГОТ'),(1262,'ГОТОВ'),(1193,'ГРАЖДАНИН'),(1300,'ГРАНИЦ'),(733,'ГРАФИК'),(327,'ГРИГОРЬЕВИЧ'),(207,'ДАЛЬН'),(161,'ДАН'),(1060,'ДАТ'),(1108,'ДАЮЩ'),(1266,'ДВА'),(914,'ДВИЖЕН'),(1211,'ДВУХ'),(1291,'ДЕБЕТОВ'),(552,'ДЕЙСТВ'),(359,'ДЕЛ'),(1024,'ДЕЛОВ'),(1249,'ДЕМОКРАТИЧН'),(226,'ДЕН'),(844,'ДЕНЕГ'),(278,'ДЕНЕЖН'),(117,'ДЕНЬГ'),(866,'ДЕП'),(425,'ДЕПАРТАМЕНТ'),(251,'ДЕПОЗ'),(250,'ДЕПОЗИТ'),(860,'ДЕПОЗИТАР'),(859,'ДЕПОЗИТАРН'),(1334,'ДЕПОЗИТН'),(249,'ДЕПОЗИТОВ'),(884,'ДЕПОНЕНТ'),(883,'ДЕПОНЕНТОВ'),(121,'ДЕРЖАТЕЛ'),(104,'ДЕСЯ'),(1271,'ДЕТ'),(292,'ДЕЯТЕЛЬН'),(171,'ДИНАМИК'),(557,'ДИНАМИЧЕСК'),(1237,'ДИНАМИЧН'),(381,'ДИРЕКТОР'),(380,'ДИРЕКТОРОВ'),(1054,'ДИСКОНТ'),(269,'ДИСТАНЦИОН'),(606,'ДМИТРОВК'),(1063,'ДНЕ'),(853,'ДНИ'),(792,'ДНЯ'),(1065,'ДО2'),(934,'ДОБАВЛЕН'),(116,'ДОВЕР'),(1176,'ДОВЕРЯ'),(571,'ДОГОВОР'),(854,'ДОГОВОРН'),(892,'ДОГОВОРОВ'),(660,'ДОКУМЕНТ'),(920,'ДОКУМЕНТАРН'),(741,'ДОКУМЕНТАЦ'),(896,'ДОКУМЕНТОВ'),(1069,'ДОЛГОВ'),(1034,'ДОЛГОСРОЧН'),(322,'ДОЛЖНОСТ'),(1125,'ДОЛЛ'),(1153,'ДОЛЛАР'),(1180,'ДОЛЛАРОВ'),(16,'ДОПОЛНИТЕЛЬН'),(1440,'ДОРАБОТК'),(1118,'ДОСРОЧН'),(726,'ДОСТАВК'),(1414,'ДОСТАВЛЕН'),(1386,'ДОСТАТОЧН'),(452,'ДОСТИЖЕН'),(541,'ДОСТУП'),(280,'ДОСТУПН'),(191,'ДОХОД'),(693,'ДРУГ'),(343,'ДРУЖБ'),(1250,'ЕLЕCTRON'),(389,'ЕВГЕН'),(338,'ЕВГЕНЬЕВИЧ'),(1127,'ЕВР'),(873,'ЕВРООБЛИГАЦ'),(141,'ЕВРОПЕЙСК'),(1179,'ЕДИНОВРЕМЕН'),(310,'ЕЖЕГОДН'),(848,'ЕЖЕДНЕВН'),(1129,'ЕЖЕМЕСЯЧН'),(1105,'ЕМ'),(1071,'ЕТС'),(1422,'ЖЕЛАТЕЛ'),(1201,'ЖЕНЩИН'),(531,'ЖИТЕЛ'),(413,'ЖУРАВЛ'),(412,'ЖУРАВЛЕВ'),(985,'ЗАВЕРК'),(162,'ЗАВЕРША'),(1051,'ЗАВИС'),(1076,'ЗАВИСИМ'),(802,'ЗАГРУЗК'),(562,'ЗАДА'),(298,'ЗАДАЧ'),(200,'ЗАДОЛЖЕН'),(757,'ЗАЕЗД'),(1192,'ЗАЕМЩИК'),(1421,'ЗАЕМЩИКОВ'),(1058,'ЗАЙМ'),(1261,'ЗАКАЗА'),(930,'ЗАКЛАД'),(1083,'ЗАКЛЮЧЕН'),(1107,'ЗАКОН'),(1428,'ЗАКОНОДАТЕЛЬСТВ'),(426,'ЗАКОНЧ'),(886,'ЗАКРЕПЛЕН'),(584,'ЗАКРЫТ'),(41,'ЗАЛ'),(40,'ЗАЛОВ'),(927,'ЗАЛОГ'),(882,'ЗАЛОГОВ'),(339,'ЗАМЕСТИТЕЛ'),(241,'ЗАНИМА'),(1321,'ЗАПОЛН'),(491,'ЗАПРОС'),(1388,'ЗАПУСТ'),(534,'ЗАРЕГИСТРИРОВА'),(1450,'ЗАРПЛАТ'),(952,'ЗАРУБЕЖ'),(308,'ЗАРУБЕЖН'),(789,'ЗАЧИСЛЕН'),(694,'ЗАЧИСЛЯ'),(1445,'ЗАЩИТ'),(1279,'ЗАЩИЩ'),(744,'ЗАЯВК'),(1441,'ЗАЯВОК'),(1395,'ЗВОН'),(1223,'ЗВОНОК'),(1362,'ЗДАН'),(655,'ЗЕМН'),(1423,'ЗНАН'),(1358,'ЗНАЧИТЕЛЬН'),(139,'ЗОЛОТ'),(362,'ИГНА'),(361,'ИГНАТ'),(360,'ИГНАТЬЕВ'),(622,'ИДЕНТИФИКАЦИОН'),(307,'ИЗВЕСТН'),(1413,'ИЗВИНЕН'),(1185,'ИЗЛОЖЕН'),(907,'ИЗМЕНЕН'),(1392,'ИЗУЧЕН'),(1338,'ИЗЪЯТ'),(861,'ИМЕЕТ'),(1347,'ИМПОРТН'),(1317,'ИМУЩЕСТВ'),(611,'ИН'),(1330,'ИНВЕСТ'),(262,'ИНВЕСТИЦИОН'),(447,'ИНДИВИДУАЛЬН'),(375,'ИНДУСТРИАЛЬН'),(1460,'ИНИЦИАТИВН'),(923,'ИНИЦИАТОР'),(1100,'ИНКАСС'),(725,'ИНКАССАЦ'),(746,'ИНКАССИРУЕМ'),(453,'ИННОВАЦ'),(495,'ИННОВАЦИОН'),(674,'ИНОСТРА'),(373,'ИНСТИТУТ'),(1394,'ИНСТРУКЦ'),(864,'ИНСТРУМЕНТ'),(872,'ИНСТРУМЕНТОВ'),(1190,'ИНТЕЗ'),(1233,'ИНТЕРЕС'),(650,'ИНТЕРНЕТ'),(636,'ИНТЕРНЕТ-БАНК'),(635,'ИНТЕРНЕТ-БАНКИНГ'),(1379,'ИНТЕРНЕТ-КЛИЕНТ'),(96,'ИНТЕРНЕТ-КРЕДИТОВАН'),(716,'ИНТЕРНЕТ-СТРАНИЦ'),(644,'ИНТЕРФЕЙС'),(220,'ИНФОРМАЦ'),(543,'ИНФОРМАЦИОН'),(1469,'ИПОТЕК'),(75,'ИПОТЕЧН'),(355,'ИРИН'),(331,'ИРКУТСК'),(979,'ИСК'),(936,'ИСКЛЮЧЕН'),(978,'ИСКОВ'),(1038,'ИСПОЛН'),(665,'ИСПОЛНЕН'),(319,'ИСПОЛНИТЕЛЬН'),(1099,'ИСПОЛНЯ'),(284,'ИСПОЛЬЗ'),(31,'ИСПОЛЬЗОВАН'),(1207,'ИСПЫТАТЕЛЬН'),(1403,'ИССЛЕДОВАН'),(3,'ИСТОР'),(432,'КАЖД'),(399,'КАЗНАЧЕЙСТВ'),(1128,'КАЛЕНДАРН'),(422,'КАЛИНИН'),(177,'КАПИТА'),(30,'КАРТ'),(1167,'КАРТОЧК'),(1288,'КАРТОЧН'),(1152,'КАРТСЧЕТ'),(1234,'КАСА'),(838,'КАССОВ'),(559,'КАТАЛОГ'),(65,'КАТЕГОР'),(142,'КАЧЕСТВ'),(147,'КАЧЕСТВЕН'),(409,'КВАЛИФИКАЦ'),(400,'КЕМЕРОВСК'),(1443,'КК'),(87,'КЛИЕНТ'),(217,'КЛИЕНТОВ'),(702,'КЛЮЧ'),(546,'КНОПОК'),(499,'КО'),(623,'КОД'),(749,'КОЛИЧЕСТВ'),(318,'КОЛЛЕГИАЛЬН'),(1122,'КОМИСС'),(1073,'КОМИССИОН'),(13,'КОММЕРЧЕСК'),(4,'КОМПАН'),(450,'КОМПЛЕКС'),(810,'КОМПЛЕКСН'),(1367,'КОМПЛЕКТ'),(653,'КОМПЬЮТЕР'),(1163,'КОНВЕРС'),(843,'КОНВЕРСИОН'),(676,'КОНВЕРТАЦ'),(396,'КОНДРУС'),(395,'КОНДРУСЕВ'),(1052,'КОНКРЕТН'),(812,'КОНКУРЕНТН'),(946,'КОНКУРЕНТОСПОСОБН'),(138,'КОНКУРС'),(567,'КОНСУЛЬТАЦ'),(889,'КОНСУЛЬТАЦИОН'),(876,'КОНСУЛЬТИРОВАН'),(564,'КОНТАКТН'),(692,'КОНТРАГЕНТ'),(691,'КОНТРАГЕНТОВ'),(965,'КОНТРАКТ'),(964,'КОНТРАКТОВ'),(955,'КОНТРГАРАНТ'),(1295,'КОНТРОЛ'),(696,'КОНТРОЛИРОВА'),(487,'КОНФИДЕНЦИАЛЬН'),(1340,'КОНЦ'),(314,'КОНЦЕРТ'),(609,'КОР'),(354,'КОРН'),(353,'КОРНЕВ'),(261,'КОРПОРАТИВН'),(862,'КОРРЕСПОНДЕНТСК'),(1000,'КОТНРАГЕНТ'),(32,'КОТОР'),(619,'КПП'),(1232,'КРАТКОСРОЧН'),(841,'КРАТЧАЙШ'),(110,'КРЕД'),(254,'КРЕДИТ'),(271,'КРЕДИТН'),(253,'КРЕДИТОВ'),(76,'КРЕДИТОВАН'),(1465,'КРЕДИТОСПОСОБН'),(71,'КРИЗИС'),(62,'КРИТЕР'),(282,'КРУГЛОСУТОЧН'),(222,'КРУПН'),(525,'КУЛЬТУР'),(519,'КУЛЬТУРН'),(301,'КУЛЬТУРНО-ПРОСВЕТИТЕЛЬСК'),(680,'КУРС'),(150,'ЛАУРЕАТ'),(1240,'ЛЕЖ'),(105,'ЛЕТ'),(477,'ЛИДЕР'),(476,'ЛИДЕРОВ'),(1246,'ЛИЗИНГ'),(1316,'ЛИКВИДН'),(962,'ЛИМ'),(961,'ЛИМИТ'),(960,'ЛИМИТОВ'),(1022,'ЛИН'),(1227,'ЛИНЕЙК'),(94,'ЛИЦ'),(51,'ЛИЦЕНЗ'),(1177,'ЛИШН'),(1004,'ЛОР'),(130,'ЛУЧШ'),(272,'ЛЬГОТН'),(652,'ЛЮБ'),(1244,'ЛЮД'),(388,'ЛЯХ'),(433,'МАКСИМАЛЬН'),(132,'МАЛ'),(145,'МАРКЕТИНГ'),(1135,'МАРТ'),(735,'МАРШРУТ'),(1381,'МАСТЕР'),(798,'МАТЕРИА'),(392,'МВА'),(140,'МЕДАЛ'),(524,'МЕДИЦИН'),(1026,'МЕЖБАНКОВСК'),(137,'МЕЖДУНАРОДН'),(840,'МЕЖРЕГИОНАЛЬН'),(394,'МЕНЕДЖМЕНТ'),(1197,'МЕНЬШ'),(45,'МЕСТ'),(759,'МЕСЯЦ'),(1138,'МЕСЯЦЕВ'),(1446,'МЕТОДОЛОГИЧЕСК'),(1353,'МЕХАНИЗМ'),(1158,'МИН'),(1328,'МИНИКРЕД'),(1130,'МИНИМАЛЬН'),(1039,'МИНИМИЗАЦ'),(438,'МИР'),(437,'МИРОВ'),(431,'МИСС'),(383,'МИХАЙЛ'),(382,'МИХАЙЛОВ'),(364,'МИХАЙЛОВИЧ'),(159,'МКТ'),(206,'МЛН'),(1072,'ММВБ'),(305,'МНОГ'),(1297,'МНОГОКРАТН'),(315,'МНОГОЧИСЛЕН'),(1037,'МОГУТ'),(568,'МОЖЕТ'),(1218,'МОЖН'),(180,'МОМЕНТ'),(738,'МОНЕТ'),(346,'МОСКВ'),(357,'МОСКОВСК'),(1199,'МУЖЧИН'),(309,'МУЗЫКАНТ'),(77,'МУНИЦИПАЛЬН'),(434,'НАБОР'),(1425,'НАВЫК'),(151,'НАГРАД'),(288,'НАДЕЖН'),(963,'НАДЛЕЖА'),(586,'НАЗВАН'),(1015,'НАИБОЛ'),(583,'НАИМЕНОВАН'),(1205,'НАЙМ'),(1028,'НАЛАЖИВАН'),(909,'НАЛИЧ'),(729,'НАЛИЧН'),(933,'НАЛОГ'),(971,'НАЛОГОВ'),(505,'НАМ'),(1426,'НАПИСАН'),(544,'НАПОЛНЕН'),(1018,'НАПРАВЛ'),(219,'НАПРАВЛЕН'),(192,'НАПРАВЛЯ'),(210,'НАРАЩИВАН'),(345,'НАРОД'),(419,'НАРОДН'),(344,'НАРОДОВ'),(19,'НАСЕЛЕН'),(1389,'НАСТРОЙК'),(1111,'НАСТУПЛЕН'),(246,'НАХОД'),(912,'НАХОДЯ'),(127,'НАЦИОНАЛЬН'),(106,'НАЧА'),(1156,'НАЧАЛ'),(328,'НАЧАЛЬНИК'),(26,'НАЧИНА'),(684,'НАЧИСЛЕН'),(281,'НАШ'),(12,'НЕБОЛЬШ'),(1315,'НЕДВИЖИМ'),(1066,'НЕДЕЛ'),(829,'НЕЗАВИСИМ'),(1280,'НЕЗАКОН'),(521,'НЕЗАЩИЩЕН'),(1112,'НЕКОТОР'),(1204,'НЕМ'),(1265,'НЕМНОГ'),(711,'НЕОБХОД'),(740,'НЕОБХОДИМ'),(1136,'НЕПОГАШЕН'),(1133,'НЕРАЗРЕШЕН'),(835,'НЕРЕЗИДЕНТ'),(834,'НЕРЕЗИДЕНТОВ'),(795,'НЕСКОЛЬК'),(939,'НЕСТАНДАРТН'),(1415,'НЕУДОБСТВ'),(714,'НИЖ'),(415,'НИКОЛАЕВН'),(887,'НИМ'),(959,'НИХ'),(154,'НОВ'),(1119,'НОВАЦ'),(1,'НОВОСТ'),(595,'НОМЕР'),(785,'НОЧН'),(1175,'НУЖН'),(466,'ОБЕСПЕЧ'),(391,'ОБЕСПЕЧЕН'),(461,'ОБЕСПЕЧИВА'),(92,'ОБЛАСТ'),(869,'ОБЛИГАЦ'),(895,'ОБМ'),(1312,'ОБОРОТ'),(730,'ОБОРУДОВА'),(1314,'ОБОРУДОВАН'),(1298,'ОБРА'),(323,'ОБРАЗОВАН'),(518,'ОБРАЗОВАТЕЛЬН'),(820,'ОБРАЗЦ'),(565,'ОБРАТ'),(1068,'ОБРАЩЕН'),(28,'ОБСЛУЖИВАН'),(99,'ОБУЧЕН'),(947,'ОБШИРН'),(1208,'ОБЩ'),(1459,'ОБЩЕН'),(512,'ОБЩЕСТВ'),(201,'ОБЪ'),(1146,'ОБЪЕДИНЕН'),(794,'ОБЪЕКТ'),(212,'ОБЪЕМ'),(1393,'ОБЪЕМН'),(211,'ОБЪЕМОВ'),(1191,'ОБЯЗАН'),(966,'ОБЯЗАТЕЛЬСТВ'),(1053,'ОВГВЗ'),(1131,'ОВЕРДРАФТ'),(935,'ОГОВОРЕН'),(1273,'ОГРАНИЧЕН'),(221,'ОДИН'),(287,'ОДН'),(1104,'ОКАЗА'),(443,'ОКАЗАН'),(257,'ОКАЗЫВА'),(1452,'ОКЛАД'),(617,'ОКОНХ'),(330,'ОКОНЧ'),(1342,'ОКОНЧАН'),(615,'ОКП'),(128,'ОЛИМП'),(414,'ОЛЬГ'),(1418,'ОП'),(1243,'ОПЕРАТИВН'),(230,'ОПЕРАЦ'),(39,'ОПЕРАЦИОН'),(480,'ОПИРА'),(1047,'ОПИСАН'),(975,'ОПЛАТ'),(671,'ОПРЕДЕЛЕН'),(1184,'ОПРЕДЕЛЯ'),(1238,'ОПТИМАЛЬН'),(1456,'ОПЫТН'),(320,'ОРГА'),(970,'ОРГАН'),(528,'ОРГАНИЗАЦ'),(969,'ОРГАНОВ'),(902,'ОРИГИНА'),(898,'ОРИГИНАЛЬН'),(509,'ОРИЕНТИРОВА'),(1260,'ОРНАМЕНТ'),(1147,'ОРС'),(712,'ОС'),(811,'ОСН'),(459,'ОСНОВ'),(5,'ОСНОВА'),(891,'ОСНОВАН'),(228,'ОСНОВН'),(1031,'ОСОБ'),(1164,'ОСТАНОВК'),(910,'ОСТАТК'),(1294,'ОСТАТОК'),(1123,'ОСУЩЕСТВЛЕН'),(227,'ОСУЩЕСТВЛЯ'),(576,'ОТВЕТ'),(508,'ОТВЕТСТВЕН'),(1357,'ОТВЛЕЧЕН'),(101,'ОТД'),(1416,'ОТДЕЛ'),(1216,'ОТДЕЛЕН'),(551,'ОТДЕЛЬН'),(981,'ОТЕЧЕСТВЕН'),(14,'ОТКРЫВА'),(498,'ОТКРЫТ'),(547,'ОТЛИЧА'),(1134,'ОТМЕН'),(61,'ОТНОС'),(427,'ОТНОШЕН'),(1171,'ОТПРАВК'),(463,'ОТРАСЛ'),(462,'ОТРАСЛЕВ'),(1409,'ОТРЕМОНТИРОВА'),(687,'ОТСЛЕЖИВА'),(1079,'ОТСУТСТВ'),(915,'ОТЧЕТ'),(60,'ОТЧЕТН'),(1187,'ОФЕРТ'),(1059,'ОФЗ'),(17,'ОФИС'),(1361,'ОФИСН'),(234,'ОФИСОВ'),(1203,'ОФИЦИАЛЬН'),(881,'ОФОРМЛЕН'),(1434,'ОЦЕНК'),(1369,'ОЦЕНЩИК'),(870,'ПА'),(1267,'ПАКЕТ'),(537,'ПАНЕЛ'),(1447,'ПАРК'),(472,'ПАРТНЕР'),(1030,'ПАРТНЕРСК'),(458,'ПАРТНЕРСТВ'),(15,'ПЕРВ'),(1154,'ПЕРВИЧН'),(514,'ПЕРВОКЛАССН'),(1344,'ПЕРВОНАЧАЛЬН'),(279,'ПЕРЕВОД'),(1155,'ПЕРЕД'),(1115,'ПЕРЕДАЧ'),(494,'ПЕРЕДОВ'),(1370,'ПЕРЕНОС'),(1410,'ПЕРЕОБОРУДОВА'),(1168,'ПЕРЕРАСХОД'),(878,'ПЕРЕРЕГИСТРАЦ'),(1010,'ПЕРЕУСТУПК'),(153,'ПЕРЕХОД'),(1116,'ПЕРЕЧЕН'),(1162,'ПЕРЕЧИСЛЕН'),(273,'ПЕРИОД'),(405,'ПЕРСОНАЛ'),(1254,'ПЕРСОНАЛЬН'),(662,'ПЕРСОНИФИЦИРОВА'),(218,'ПЕРСПЕКТИВН'),(899,'ПЕЧАТ'),(659,'ПЕЧАТА'),(1458,'ПК'),(1183,'ПЛАН'),(29,'ПЛАСТИКОВ'),(706,'ПЛАТ'),(690,'ПЛАТЕЖ'),(1464,'ПЛАТЕЖЕСПОСОБН'),(80,'ПЛАТЕЖН'),(1095,'ПЛАТЕЛЬЩИК'),(1259,'ПЛАТИН'),(1258,'ПЛАТИНОВ'),(816,'ПЛАТФОРМ'),(387,'ПЛЕХАН'),(386,'ПЛЕХАНОВ'),(325,'ПЛЕШК'),(324,'ПЛЕШКОВ'),(781,'ПЛЮС'),(1042,'ПОВЕДЕН'),(209,'ПОВЫШЕН'),(697,'ПОГАШЕН'),(1348,'ПОДВИЖН'),(1431,'ПОДГОТОВК'),(1324,'ПОДГОТОВЬТ'),(299,'ПОДДЕРЖАН'),(302,'ПОДДЕРЖК'),(699,'ПОДКЛЮЧЕН'),(805,'ПОДКРЕПЛЕН'),(986,'ПОДЛИН'),(664,'ПОДПИС'),(661,'ПОДПИСЫВА'),(648,'ПОДСКАЗК'),(1212,'ПОДТВЕРД'),(996,'ПОДТВЕРЖДЕН'),(448,'ПОДХОД'),(1304,'ПОЖЕЛАН'),(33,'ПОЗВОЛЯ'),(1318,'ПОЗВОН'),(634,'ПОИСК'),(1326,'ПОКАЖ'),(175,'ПОКАЗАТЕЛ'),(173,'ПОКАЗЫВА'),(997,'ПОКРЫТ'),(1301,'ПОКУПА'),(672,'ПОКУПК'),(1302,'ПОЛЕЗН'),(1017,'ПОЛИТИК'),(258,'ПОЛН'),(1002,'ПОЛНОМОЧ'),(1435,'ПОЛНОТ'),(637,'ПОЛНОФУНКЦИОНАЛЬН'),(710,'ПОЛНОЦЕН'),(791,'ПОЛОВИН'),(1429,'ПОЛОЖЕН'),(163,'ПОЛОЖИТЕЛЬН'),(348,'ПОЛУЧ'),(50,'ПОЛУЧА'),(1097,'ПОЛУЧАТЕЛ'),(1148,'ПОЛУЧЕН'),(830,'ПОЛЬЗ'),(1296,'ПОЛЬЗОВА'),(1457,'ПОЛЬЗОВАТЕЛ'),(1365,'ПОМЕЩЕН'),(1322,'ПОМОГУТ'),(575,'ПОМОЧ'),(479,'ПОМОЩ'),(643,'ПОНЯТН'),(1336,'ПОПОЛНЕН'),(900,'ПОРУЧЕН'),(204,'ПОРЯДК'),(304,'ПОСЕТ'),(916,'ПОСЛ'),(783,'ПОСЛЕД'),(451,'ПОСЛЕДН'),(846,'ПОСРЕДСТВ'),(1352,'ПОСТАВОК'),(1408,'ПОСТЕПЕН'),(1102,'ПОСТУП'),(695,'ПОСТУПЛЕН'),(1278,'ПОТ'),(196,'ПОТЕР'),(1275,'ПОТРАТ'),(267,'ПОТРЕБИТЕЛЬСК'),(467,'ПОТРЕБН'),(174,'ПОЧТ'),(625,'ПОЧТОВ'),(1355,'ПОШЛИН'),(879,'ПРАВ'),(321,'ПРАВЛЕН'),(374,'ПРАВОВЕДЕН'),(1368,'ПРАВОУСТАНАВЛИВА'),(800,'ПРАЗДНИЧН'),(240,'ПРАКТИК'),(651,'ПРАКТИЧЕСК'),(745,'ПРЕДВАРИТЕЛЬН'),(37,'ПРЕДЕЛ'),(944,'ПРЕДЕЛЬН'),(483,'ПРЕДЛАГ'),(238,'ПРЕДЛАГА'),(1432,'ПРЕДЛОЖЕН'),(1359,'ПРЕДМЕТ'),(1082,'ПРЕДОПЛАТ'),(1098,'ПРЕДОСТАВ'),(513,'ПРЕДОСТАВЛ'),(107,'ПРЕДОСТАВЛЕН'),(266,'ПРЕДОСТАВЛЯ'),(852,'ПРЕДПРАЗДНИЧН'),(1303,'ПРЕДПРИНИМАТЕЛ'),(446,'ПРЕДПРИНИМАТЕЛЬСТВ'),(131,'ПРЕДПРИЯТ'),(340,'ПРЕДСЕДАТЕЛ'),(86,'ПРЕДСТАВ'),(231,'ПРЕДСТАВЛЕН'),(1013,'ПРЕДСТАВЛЯ'),(553,'ПРЕДУСМОТР'),(984,'ПРЕДЪЯВЛЕН'),(1366,'ПРЕДЪЯВЛЯ'),(813,'ПРЕИМУЩЕСТВ'),(1341,'ПРЕКРАЩА'),(125,'ПРЕМ'),(70,'ПРЕОДОЛ'),(69,'ПРЕОДОЛЕВ'),(165,'ПРИБ'),(1333,'ПРИБЫЛ'),(1036,'ПРИВЛЕЧЕН'),(38,'ПРИВЫЧН'),(670,'ПРИЛОЖЕН'),(1182,'ПРИМЕНЯ'),(502,'ПРИМЕР'),(1056,'ПРИНИМА'),(1412,'ПРИНОС'),(440,'ПРИНЦИП'),(239,'ПРИНЯТ'),(1356,'ПРИОБРЕСТ'),(97,'ПРИОБРЕТЕН'),(300,'ПРИОРИТЕТН'),(199,'ПРИРАВНЕН'),(1406,'ПРИСПОСОБЛЕН'),(20,'ПРИСТУПА'),(1286,'ПРИХОД'),(1101,'ПРИЧИТА'),(456,'ПРОБЛЕМАТИК'),(1401,'ПРОВЕД'),(143,'ПРОВЕДЕН'),(1121,'ПРОВЕРК'),(943,'ПРОВОД'),(1117,'ПРОВОДИМ'),(1299,'ПРОВОЗ'),(74,'ПРОГРАММ'),(673,'ПРОДАЖ'),(72,'ПРОДОЛЖА'),(91,'ПРОДУКТ'),(90,'ПРОДУКТОВ'),(148,'ПРОДУКЦ'),(475,'ПРОЕКТ'),(474,'ПРОЕКТОВ'),(294,'ПРОЗРАЧН'),(1390,'ПРОИЗВЕД'),(1096,'ПРОИЗВЕСТ'),(1081,'ПРОИЗВОД'),(367,'ПРОИЗВОДСТВ'),(1364,'ПРОИЗВОДСТВЕН'),(1050,'ПРОЛОНГАЦ'),(1284,'ПРОМЕДЛЕН'),(1282,'ПРОПАЖ'),(989,'ПРОРАБОТК'),(715,'ПРОСМОТР'),(1106,'ПРОСТ'),(987,'ПРОСЬБ'),(821,'ПРОФЕССИОНАЛИЗМ'),(52,'ПРОФЕССИОНАЛЬН'),(311,'ПРОХОД'),(1178,'ПРОЦЕДУР'),(686,'ПРОЦЕНТ'),(1327,'ПРОЦЕНТН'),(685,'ПРОЦЕНТОВ'),(621,'ПРОЧ'),(408,'ПРОШЕЛ'),(189,'ПРОШЛ'),(1380,'ПРОЩ'),(489,'ПРОЯВЛЯ'),(1449,'ПТ'),(558,'ПУБЛИКАЦ'),(1186,'ПУБЛИЧН'),(1143,'ПУНКТ'),(1448,'ПЯТИДНЕВН'),(851,'ПЯТНИЦ'),(18,'РАБОТ'),(224,'РАБОТА'),(1308,'РАБОЧ'),(574,'РАД'),(925,'РАЗБЛОКИРОВК'),(863,'РАЗВЕТВЛЕН'),(11,'РАЗВИВА'),(22,'РАЗВИТ'),(550,'РАЗДЕЛ'),(549,'РАЗДЕЛОВ'),(548,'РАЗЛИЧН'),(1120,'РАЗМ'),(737,'РАЗМЕН'),(164,'РАЗМЕР'),(1332,'РАЗМЕСТ'),(1235,'РАЗМЕЩЕН'),(1305,'РАЗН'),(1228,'РАЗНООБРАЗН'),(1001,'РАМБУРСИР'),(1007,'РАМБУРСН'),(1011,'РАМК'),(1346,'РАН'),(845,'РАСПОРЯЖЕН'),(824,'РАСПРОСТРАНЕН'),(1311,'РАССМАТРИВА'),(1306,'РАССМОТРЕН'),(1335,'РАСТОРЖЕН'),(1407,'РАСТУЩ'),(1287,'РАСХОД'),(797,'РАСХОДН'),(825,'РАСЧЕТ'),(828,'РАСЧЕТН'),(823,'РАСЧЕТНО-КАССОВ'),(837,'РАСЧЕТОВ'),(1398,'РАСШИР'),(1019,'РАСШИРЕН'),(73,'РЕАЛИЗАЦ'),(516,'РЕАЛИЗУ'),(641,'РЕАЛЬН'),(236,'РЕГИОН'),(478,'РЕГИОНАЛЬН'),(926,'РЕГИСТРАЦ'),(594,'РЕГИСТРАЦИОН'),(658,'РЕДАКТИРОВА'),(1376,'РЕДАКЦ'),(937,'РЕЕСТРОДЕРЖАТЕЛ'),(283,'РЕЖИМ'),(194,'РЕЗЕРВ'),(681,'РЕЗЕРВИРОВА'),(992,'РЕЗЕРВН'),(833,'РЕЗИДЕНТ'),(832,'РЕЗИДЕНТОВ'),(57,'РЕЗУЛЬТАТ'),(582,'РЕКВИЗИТ'),(1442,'РЕКОМЕНДАЦ'),(527,'РЕЛИГИОЗН'),(1397,'РЕОРГАНИЗАЦ'),(1025,'РЕПУТАЦ'),(411,'РЕСУРС'),(485,'РЕШЕН'),(1041,'РИСК'),(1040,'РИСКОВ'),(492,'РОЗНИЧН'),(397,'РОМА'),(135,'РОСС'),(126,'РОССИЙСК'),(172,'РОСТ'),(754,'РУБ'),(170,'РУБЛ'),(317,'РУКОВОДСТВ'),(291,'РУКОВОДСТВУ'),(64,'РФ'),(54,'РЫНК'),(679,'РЫНОЧН'),(88,'РЯД'),(545,'САЙТ'),(418,'САНКТ-ПЕТЕРБУРГСК'),(742,'СБОР'),(1285,'СВЕДЕН'),(372,'СВЕРДЛОВСК'),(297,'СВОБОД'),(682,'СВОБОДН'),(774,'СВЫШ'),(1374,'СВЯЗ'),(827,'СВЯЗА'),(208,'СВЯЗЫВА'),(793,'СДАЮТ'),(118,'СДЕЛА'),(991,'СДЕЛК'),(1225,'СДЕЛОК'),(1247,'СЕГОДН'),(225,'СЕГОДНЯШН'),(276,'СЕЙФОВ'),(1194,'СЕЙЧАС'),(1270,'СЕМ'),(370,'СЕМЕНОВИЧ'),(36,'СЕРВИС'),(24,'СЕТ'),(945,'СЖАТ'),(95,'СИСТ'),(81,'СИСТЕМ'),(455,'СИТУАЦ'),(1387,'СКАЧА'),(1363,'СКЛАДСК'),(1274,'СКОЛЬК'),(822,'СЛЕД'),(436,'СЛЕДУ'),(522,'СЛО'),(940,'СЛОЖН'),(78,'СЛУЖА'),(728,'СЛУЖБ'),(988,'СЛУЧА'),(336,'СМИРН'),(335,'СМИРНОВ'),(1400,'СМОГУТ'),(1399,'СМОЖЕТ'),(646,'СНАБЖ'),(949,'СНГ'),(669,'СО'),(1014,'СОБ'),(486,'СОБЛЮД'),(1281,'СОБЛЮДА'),(184,'СОБСТВЕН'),(1165,'СОВЕРША'),(856,'СОВЕРШЕН'),(215,'СОВЕРШЕНСТВОВАН'),(379,'СОВЕТ'),(285,'СОВРЕМЕН'),(1454,'СОГЛАСН'),(732,'СОГЛАСОВА'),(808,'СОГЛАШЕН'),(303,'СОДЕЙСТВ'),(555,'СОДЕРЖИМ'),(814,'СОЗДА'),(587,'СОКРАЩЕН'),(1023,'СОЛИДН'),(1378,'СООБЩ'),(1373,'СООБЩА'),(1173,'СООБЩЕН'),(445,'СООБЩЕСТВ'),(857,'СООТВЕТСТВ'),(734,'СОПРОВОЖДЕН'),(1349,'СОСТА'),(1114,'СОСТАВЛЕН'),(166,'СОСТАВЛЯ'),(202,'СОСТОЯН'),(1242,'СОТРУДНИК'),(1241,'СОТРУДНИКОВ'),(506,'СОТРУДНИЧА'),(296,'СОТРУДНИЧЕСТВ'),(1224,'СОХРАНЕН'),(1453,'СОЦ'),(507,'СОЦИАЛЬН'),(473,'СОЦИАЛЬНО-ЭКОНОМИЧЕСК'),(442,'СОЧЕТА'),(259,'СПЕКТР'),(406,'СПЕЦИАЛИЗАЦ'),(739,'СПЕЦИАЛИЗИРОВА'),(566,'СПЕЦИАЛИСТ'),(333,'СПЕЦИАЛЬН'),(917,'СПИСАН'),(376,'СПИСОК'),(526,'СПОРТИВН'),(894,'СПОСОБ'),(1230,'СПОСОБН'),(1027,'СПОСОБСТВ'),(293,'СПРАВЕДЛИВ'),(1215,'СПРАВК'),(133,'СРЕДН'),(1035,'СРЕДНЕСРОЧН'),(683,'СРЕДСТВ'),(842,'СРОК'),(274,'СРОЧН'),(197,'ССУД'),(198,'ССУДН'),(66,'СТАБИЛЬН'),(748,'СТАВК'),(1210,'СТАЖ'),(120,'СТАЛ'),(439,'СТАНДАРТ'),(1213,'СТАНДАРТН'),(471,'СТАНДАРТОВ'),(369,'СТАНИСЛА'),(356,'СТАНИСЛАВОВН'),(149,'СТАНОВ'),(1411,'СТАНУТ'),(1272,'СТАРШ'),(554,'СТАТИЧЕСК'),(349,'СТЕПЕН'),(753,'СТОИМОСТ'),(1439,'СТОП-ФАКТОР'),(1438,'СТОП-ФАКТОРОВ'),(809,'СТОРОН'),(608,'СТР'),(237,'СТРАН'),(556,'СТРАНИЦ'),(393,'СТРАТЕГИЧЕСК'),(501,'СТРЕМ'),(464,'СТРУКТУР'),(877,'СТРУКТУРИРОВА'),(1433,'СТРУКТУРИРОВАН'),(977,'СУДЕБН'),(796,'СУММ'),(1383,'СУЩЕСТВЕН'),(454,'СФЕР'),(941,'СХЕМ'),(270,'СЧЕТ'),(688,'СЧЕТОВ'),(1126,'США'),(515,'ТАКЖ'),(968,'ТАМОЖЕН'),(747,'ТАРИФ'),(782,'ТАРИФН'),(932,'ТАРИФОВ'),(384,'ТАТЬЯ'),(312,'ТЕАТРАЛЬН'),(678,'ТЕКУЩ'),(286,'ТЕЛЕКОММУНИКАЦИОН'),(569,'ТЕЛЕФОН'),(972,'ТЕНДЕРН'),(1385,'ТЕПЕР'),(1276,'ТЕР'),(1150,'ТЕРРИТОР'),(1277,'ТЕРЯ'),(1245,'ТЕХ'),(708,'ТЕХНИЧЕСК'),(214,'ТЕХНОЛОГ'),(1396,'ТЕХПОДДЕРЖК'),(84,'ТЕЧЕН'),(1455,'ТК'),(1103,'ТОВАР'),(1293,'ТОВАРОВ'),(700,'ТОМ'),(1419,'ТОП-100'),(974,'ТОРГ'),(263,'ТОРГОВ'),(938,'ТОРГОВО-ЭКОНОМИЧЕСК'),(780,'ТОЧЕК'),(654,'ТОЧК'),(444,'ТРАДИЦ'),(1149,'ТРАНСГРАНИЧН'),(731,'ТРАНСПОРТ'),(1009,'ТРАНСФЕРАЦ'),(645,'ТРАТ'),(1110,'ТРЕБОВА'),(709,'ТРЕБОВАН'),(1043,'ТРЕБОВАТЕЛЬН'),(1269,'ТРЕХ'),(1209,'ТРУДОВ'),(1461,'ТРУДОУСТРОЙСТВ'),(102,'ТУРИЗМ'),(482,'ТЩАТЕЛЬН'),(169,'ТЫС'),(183,'ТЫСЯЧ'),(1372,'УВАЖА'),(295,'УВАЖЕН'),(1020,'УВЕЛИЧЕН'),(178,'УВЕЛИЧИВА'),(1033,'УДЕЛЯ'),(638,'УДОБН'),(1292,'УДОБСТВ'),(1231,'УДОВЛЕТВОР'),(1351,'УДОРОЖАН'),(736,'УКАЗА'),(605,'УЛ'),(256,'УНИВЕРСАЛЬН'),(342,'УНИВЕРСИТЕТ'),(1088,'УПАКОВК'),(698,'УПЛАТ'),(667,'УПОЛНОМОЧЕН'),(1091,'УПОТРЕБЛЕН'),(265,'УПРАВЛЕН'),(1310,'УПРАВЛЕНЧЕСК'),(640,'УПРАВЛЯ'),(1384,'УПРОСТ'),(1092,'УРОВЕН'),(470,'УРОВН'),(839,'УСКОРЕН'),(778,'УСЛОВ'),(1093,'УСЛОВН'),(48,'УСЛУГ'),(68,'УСПЕШН'),(176,'УСТАВН'),(784,'УСТАНАВЛИВА'),(1382,'УСТАНОВК'),(847,'УСТАНОВЛ'),(958,'УСТАНОВЛЕН'),(815,'УСТОЙЧИВ'),(858,'УТВЕРЖДЕН'),(1166,'УТРАТ'),(788,'УТРЕН'),(973,'УЧАСТ'),(53,'УЧАСТНИК'),(223,'УЧАСТНИКОВ'),(421,'УЧЕТ'),(523,'УЧРЕЖДЕН'),(577,'ФАКС'),(855,'ФАКТ'),(46,'ФАКТИЧЕСК'),(203,'ФЕВРАЛ'),(1057,'ФЕДЕРАЛЬН'),(836,'ФЕДЕРАЦ'),(404,'ФЕДОРОВИЧ'),(313,'ФЕСТИВА'),(93,'ФИЗИЧЕСК'),(752,'ФИКСИРОВА'),(44,'ФИЛИА'),(43,'ФИЛИАЛ'),(42,'ФИЛИАЛОВ'),(23,'ФИЛИАЛЬН'),(457,'ФИЛОСОФ'),(334,'ФИНАНС'),(264,'ФИНАНСИРОВАН'),(35,'ФИНАНСОВ'),(1444,'ФИНАНСОВО-ЭКОНОМИЧЕСК'),(865,'ФОНДОВ'),(216,'ФОРМ'),(232,'ФОРМИР'),(193,'ФОРМИРОВАН'),(1436,'ФОРМИРУЕМ'),(560,'ФОТОГАЛЕРЕ'),(542,'ФУНКЦ'),(1404,'ФУНКЦИОНИРОВАН'),(1283,'ХИЩЕН'),(420,'ХОЗЯЙСТВ'),(818,'ХОЛДИНГ'),(817,'ХОЛДИНГОВ'),(402,'ХРАМ'),(401,'ХРАМОВ'),(799,'ХРАНЕН'),(63,'ЦБ'),(449,'ЦЕЛ'),(55,'ЦЕН'),(290,'ЦЕННОСТ'),(807,'ЧАС'),(190,'ЧАСТ'),(1337,'ЧАСТИЧН'),(248,'ЧАСТН'),(1226,'ЧАСТНОСТ'),(114,'ЧЕЛОВЕК'),(410,'ЧЕЛОВЕЧЕСК'),(649,'ЧЕРЕЗ'),(497,'ЧЕСТН'),(129,'ЧИСЛ'),(378,'ЧЛЕН'),(377,'ЧЛЕНОВ'),(656,'ШАР'),(1206,'ШЕСТ'),(465,'ШИРОК'),(428,'ШКОЛ'),(1132,'ШТРАФ'),(517,'ЭКОЛОГИЧЕСК'),(366,'ЭКОНОМИК'),(329,'ЭКОНОМИЧЕСК'),(539,'ЭКРА'),(1255,'ЭКСКЛЮЗИВН'),(1325,'ЭКСПЕРТ'),(893,'ЭКСПЕРТИЗ'),(1427,'ЭКСПЕРТН'),(999,'ЭКСПОРТН'),(570,'ЭЛЕКТРОН'),(703,'ЭЛЕКТРОННО-ЦИФРОВ'),(663,'ЭЛЕКТРОННОЙ-ЦИФРОВ'),(1251,'ЭЛИТН'),(885,'ЭМИТЕНТ'),(441,'ЭТИК'),(503,'ЭФФЕКТИВН'),(326,'ЮР'),(358,'ЮРИДИЧЕСК'),(819,'ЯВЛ'),(255,'ЯВЛЯ'),(589,'ЯЗЫК'),(7,'ЯНВАР'),(277,'ЯЧЕЕК');
/*!40000 ALTER TABLE `b_search_stem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_suggest`
--

DROP TABLE IF EXISTS `b_search_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_suggest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER_MD5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `RATE` float NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_B_SEARCH_SUGGEST` (`FILTER_MD5`,`PHRASE`(50),`RATE`),
  KEY `IND_B_SEARCH_SUGGEST_PHRASE` (`PHRASE`(50),`RATE`),
  KEY `IND_B_SEARCH_SUGGEST_TIME` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_suggest`
--

LOCK TABLES `b_search_suggest` WRITE;
/*!40000 ALTER TABLE `b_search_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_tags`
--

DROP TABLE IF EXISTS `b_search_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_tags` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`,`NAME`),
  KEY `IX_B_SEARCH_TAGS_0` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_tags`
--

LOCK TABLES `b_search_tags` WRITE;
/*!40000 ALTER TABLE `b_search_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_user_right`
--

DROP TABLE IF EXISTS `b_search_user_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_user_right` (
  `USER_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_USER_RIGHT` (`USER_ID`,`GROUP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_user_right`
--

LOCK TABLES `b_search_user_right` WRITE;
/*!40000 ALTER TABLE `b_search_user_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_user_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_autolog`
--

DROP TABLE IF EXISTS `b_seo_adv_autolog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_autolog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CAMPAIGN_ID` int(11) NOT NULL,
  `CAMPAIGN_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `BANNER_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CAUSE_CODE` int(11) DEFAULT 0,
  `SUCCESS` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_adv_autolog1` (`ENGINE_ID`),
  KEY `ix_b_seo_adv_autolog2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_autolog`
--

LOCK TABLES `b_seo_adv_autolog` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_autolog` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_autolog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_banner`
--

DROP TABLE IF EXISTS `b_seo_adv_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_banner` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) DEFAULT NULL,
  `AUTO_QUANTITY_OFF` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTO_QUANTITY_ON` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_banner` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_banner1` (`CAMPAIGN_ID`),
  KEY `ix_b_seo_adv_banner2` (`AUTO_QUANTITY_OFF`,`AUTO_QUANTITY_ON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_banner`
--

LOCK TABLES `b_seo_adv_banner` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_campaign`
--

DROP TABLE IF EXISTS `b_seo_adv_campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_campaign` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `SETTINGS` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_campaign` (`ENGINE_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_campaign`
--

LOCK TABLES `b_seo_adv_campaign` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_group`
--

DROP TABLE IF EXISTS `b_seo_adv_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_group` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_group1` (`CAMPAIGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_group`
--

LOCK TABLES `b_seo_adv_group` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_link`
--

DROP TABLE IF EXISTS `b_seo_adv_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_link` (
  `LINK_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_ID` int(18) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  PRIMARY KEY (`LINK_TYPE`,`LINK_ID`,`BANNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_link`
--

LOCK TABLES `b_seo_adv_link` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_log`
--

DROP TABLE IF EXISTS `b_seo_adv_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `REQUEST_URI` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `REQUEST_DATA` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPONSE_TIME` float NOT NULL,
  `RESPONSE_STATUS` int(5) DEFAULT NULL,
  `RESPONSE_DATA` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_adv_log1` (`ENGINE_ID`),
  KEY `ix_b_seo_adv_log2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_log`
--

LOCK TABLES `b_seo_adv_log` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_order`
--

DROP TABLE IF EXISTS `b_seo_adv_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_order` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `SUM` float DEFAULT 0,
  `PROCESSED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_order` (`ENGINE_ID`,`CAMPAIGN_ID`,`BANNER_ID`,`ORDER_ID`),
  KEY `ix_b_seo_adv_order1` (`ORDER_ID`,`PROCESSED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_order`
--

LOCK TABLES `b_seo_adv_order` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_region`
--

DROP TABLE IF EXISTS `b_seo_adv_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_region` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARENT_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_region` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_region1` (`PARENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_region`
--

LOCK TABLES `b_seo_adv_region` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_keywords`
--

DROP TABLE IF EXISTS `b_seo_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_keywords` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_keywords_url` (`URL`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_keywords`
--

LOCK TABLES `b_seo_keywords` WRITE;
/*!40000 ALTER TABLE `b_seo_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_search_engine`
--

DROP TABLE IF EXISTS `b_seo_search_engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_search_engine` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(5) DEFAULT 100,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CLIENT_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REDIRECT_URI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_search_engine_code` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_search_engine`
--

LOCK TABLES `b_seo_search_engine` WRITE;
/*!40000 ALTER TABLE `b_seo_search_engine` DISABLE KEYS */;
INSERT INTO `b_seo_search_engine` VALUES (1,'google','Y',200,'Google','868942902147-qrrd6ce1ajfkpse8ieq4gkpdeanvtnno.apps.googleusercontent.com','EItMlJpZLC2WRPKB6QsA5bV9','urn:ietf:wg:oauth:2.0:oob',NULL),(2,'yandex','Y',300,'Yandex','f848c7bfc1d34a94ba6d05439f81bbd7','da0e73b2d9cc4e809f3170e49cb9df01','https://oauth.yandex.ru/verification_code',NULL),(3,'yandex_direct','Y',400,'Yandex.Direct','','','https://oauth.yandex.ru/verification_code',NULL);
/*!40000 ALTER TABLE `b_seo_search_engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_log`
--

DROP TABLE IF EXISTS `b_seo_service_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_service_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_log`
--

LOCK TABLES `b_seo_service_log` WRITE;
/*!40000 ALTER TABLE `b_seo_service_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_rtg_queue`
--

DROP TABLE IF EXISTS `b_seo_service_rtg_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_service_rtg_queue` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CLIENT_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCOUNT_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUDIENCE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PARENT_ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_TYPE` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_AUTO_REMOVE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SRV_RTG_QUEUE_1` (`ACTION`,`DATE_AUTO_REMOVE`),
  KEY `IX_B_SEO_SRV_RTG_QUEUE_2` (`TYPE`,`ACTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_rtg_queue`
--

LOCK TABLES `b_seo_service_rtg_queue` WRITE;
/*!40000 ALTER TABLE `b_seo_service_rtg_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_rtg_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_subscription`
--

DROP TABLE IF EXISTS `b_seo_service_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_service_subscription` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CALLBACK_SERVER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_AUTH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SERVICE_SUB_1` (`TYPE`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_subscription`
--

LOCK TABLES `b_seo_service_subscription` WRITE;
/*!40000 ALTER TABLE `b_seo_service_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_webhook`
--

DROP TABLE IF EXISTS `b_seo_service_webhook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_service_webhook` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SERVICE_WEBHOOK_1` (`TYPE`,`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_webhook`
--

LOCK TABLES `b_seo_service_webhook` WRITE;
/*!40000 ALTER TABLE `b_seo_service_webhook` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_webhook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap`
--

DROP TABLE IF EXISTS `b_seo_sitemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_RUN` datetime DEFAULT NULL,
  `SETTINGS` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap`
--

LOCK TABLES `b_seo_sitemap` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap_entity`
--

DROP TABLE IF EXISTS `b_seo_sitemap_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap_entity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_sitemap_entity_1` (`ENTITY_TYPE`,`ENTITY_ID`),
  KEY `ix_b_seo_sitemap_entity_2` (`SITEMAP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap_entity`
--

LOCK TABLES `b_seo_sitemap_entity` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap_iblock`
--

DROP TABLE IF EXISTS `b_seo_sitemap_iblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap_iblock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_sitemap_iblock_1` (`IBLOCK_ID`),
  KEY `ix_b_seo_sitemap_iblock_2` (`SITEMAP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap_iblock`
--

LOCK TABLES `b_seo_sitemap_iblock` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap_iblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_iblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap_runtime`
--

DROP TABLE IF EXISTS `b_seo_sitemap_runtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap_runtime` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PID` int(11) NOT NULL,
  `PROCESSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ITEM_PATH` varchar(700) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `ITEM_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `ACTIVE_ELEMENT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_seo_sitemap_runtime1` (`PID`,`PROCESSED`,`ITEM_TYPE`,`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap_runtime`
--

LOCK TABLES `b_seo_sitemap_runtime` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap_runtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_runtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_yandex_direct_stat`
--

DROP TABLE IF EXISTS `b_seo_yandex_direct_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_yandex_direct_stat` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `DATE_DAY` date NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUM` float DEFAULT 0,
  `SUM_SEARCH` float DEFAULT 0,
  `SUM_CONTEXT` float DEFAULT 0,
  `CLICKS` int(7) DEFAULT 0,
  `CLICKS_SEARCH` int(7) DEFAULT 0,
  `CLICKS_CONTEXT` int(7) DEFAULT 0,
  `SHOWS` int(7) DEFAULT 0,
  `SHOWS_SEARCH` int(7) DEFAULT 0,
  `SHOWS_CONTEXT` int(7) DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_seo_yandex_direct_stat` (`BANNER_ID`,`DATE_DAY`),
  KEY `ix_seo_yandex_direct_stat1` (`CAMPAIGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_yandex_direct_stat`
--

LOCK TABLES `b_seo_yandex_direct_stat` WRITE;
/*!40000 ALTER TABLE `b_seo_yandex_direct_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_yandex_direct_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_short_uri`
--

DROP TABLE IF EXISTS `b_short_uri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_short_uri` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `URI_CRC` int(18) NOT NULL,
  `SHORT_URI` varbinary(250) NOT NULL,
  `SHORT_URI_CRC` int(18) NOT NULL,
  `STATUS` int(18) NOT NULL DEFAULT 301,
  `MODIFIED` datetime NOT NULL,
  `LAST_USED` datetime DEFAULT NULL,
  `NUMBER_USED` int(18) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ux_b_short_uri_1` (`SHORT_URI_CRC`),
  KEY `ux_b_short_uri_2` (`URI_CRC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_short_uri`
--

LOCK TABLES `b_short_uri` WRITE;
/*!40000 ALTER TABLE `b_short_uri` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_short_uri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_site_template`
--

DROP TABLE IF EXISTS `b_site_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_site_template` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT 500,
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_site_template_site` (`SITE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_site_template`
--

LOCK TABLES `b_site_template` WRITE;
/*!40000 ALTER TABLE `b_site_template` DISABLE KEYS */;
INSERT INTO `b_site_template` VALUES (2,'s1','',150,'skb');
/*!40000 ALTER TABLE `b_site_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sm_version_history`
--

DROP TABLE IF EXISTS `b_sm_version_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sm_version_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `VERSIONS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sm_version_history`
--

LOCK TABLES `b_sm_version_history` WRITE;
/*!40000 ALTER TABLE `b_sm_version_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sm_version_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_smile`
--

DROP TABLE IF EXISTS `b_smile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_smile` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SET_ID` int(18) NOT NULL DEFAULT 0,
  `SORT` int(10) NOT NULL DEFAULT 150,
  `TYPING` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLICKABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IMAGE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IMAGE_DEFINITION` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SD',
  `IMAGE_WIDTH` int(11) NOT NULL DEFAULT 0,
  `IMAGE_HEIGHT` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_smile`
--

LOCK TABLES `b_smile` WRITE;
/*!40000 ALTER TABLE `b_smile` DISABLE KEYS */;
INSERT INTO `b_smile` VALUES (1,'S',2,100,':) :-)','Y','N','bx_smile_smile.png','UHD',20,20),(2,'S',2,105,';) ;-)','Y','N','bx_smile_wink.png','UHD',20,20),(3,'S',2,110,':D :-D','Y','N','bx_smile_biggrin.png','UHD',20,20),(4,'S',2,115,'8-)','Y','N','bx_smile_cool.png','UHD',20,20),(5,'S',2,120,':facepalm:','Y','N','bx_smile_facepalm.png','UHD',20,20),(6,'S',2,125,':{} :-{}','Y','N','bx_smile_kiss.png','UHD',20,20),(7,'S',2,130,':( :-(','Y','N','bx_smile_sad.png','UHD',20,20),(8,'S',2,135,':| :-|','Y','N','bx_smile_neutral.png','UHD',20,20),(9,'S',2,140,':oops:','Y','N','bx_smile_redface.png','UHD',20,20),(10,'S',2,145,':cry: :~(','Y','N','bx_smile_cry.png','UHD',20,20),(11,'S',2,150,':evil: >:-<','Y','N','bx_smile_evil.png','UHD',20,20),(12,'S',2,155,':o :-o :shock:','Y','N','bx_smile_eek.png','UHD',20,20),(13,'S',2,160,':/ :-/','Y','N','bx_smile_confuse.png','UHD',20,20),(14,'S',2,165,':idea:','Y','N','bx_smile_idea.png','UHD',20,20),(15,'S',2,170,':?:','Y','N','bx_smile_question.png','UHD',20,20),(16,'S',2,175,':!:','Y','N','bx_smile_exclaim.png','UHD',20,20),(17,'S',2,180,':like:','Y','N','bx_smile_like.png','UHD',20,20),(18,'I',2,175,'ICON_NOTE','Y','N','bx_icon_1.gif','SD',15,15),(19,'I',2,180,'ICON_DIRRECTION','Y','N','bx_icon_2.gif','SD',15,15),(20,'I',2,185,'ICON_IDEA','Y','N','bx_icon_3.gif','SD',15,15),(21,'I',2,190,'ICON_ATTANSION','Y','N','bx_icon_4.gif','SD',15,15),(22,'I',2,195,'ICON_QUESTION','Y','N','bx_icon_5.gif','SD',15,15),(23,'I',2,200,'ICON_BAD','Y','N','bx_icon_6.gif','SD',15,15),(24,'I',2,205,'ICON_GOOD','Y','N','bx_icon_7.gif','SD',15,15);
/*!40000 ALTER TABLE `b_smile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_smile_lang`
--

DROP TABLE IF EXISTS `b_smile_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_smile_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_SMILE_SL` (`TYPE`,`SID`,`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_smile_lang`
--

LOCK TABLES `b_smile_lang` WRITE;
/*!40000 ALTER TABLE `b_smile_lang` DISABLE KEYS */;
INSERT INTO `b_smile_lang` VALUES (1,'P',1,'ru','Стандартная галерея'),(2,'P',1,'en','Standard gallery'),(3,'G',2,'ru','Основной набор'),(4,'G',2,'en','Default pack'),(5,'S',1,'ru','С улыбкой'),(6,'S',1,'en','Smile'),(7,'S',2,'ru','Шутливо'),(8,'S',2,'en','Wink'),(9,'S',3,'ru','Широкая улыбка'),(10,'S',3,'en','Big grin'),(11,'S',4,'ru','Здорово'),(12,'S',4,'en','Cool'),(13,'S',5,'ru','Разочарование'),(14,'S',5,'en','Facepalm'),(15,'S',6,'ru','Поцелуй'),(16,'S',6,'en','Kiss'),(17,'S',7,'ru','Печально'),(18,'S',7,'en','Sad'),(19,'S',8,'ru','Скептически'),(20,'S',8,'en','Skeptic'),(21,'S',9,'ru','Смущенный'),(22,'S',9,'en','Embarrassed'),(23,'S',10,'ru','Очень грустно'),(24,'S',10,'en','Crying'),(25,'S',11,'ru','Со злостью'),(26,'S',11,'en','Angry'),(27,'S',12,'ru','Удивленно'),(28,'S',12,'en','Surprised'),(29,'S',13,'ru','Смущенно'),(30,'S',13,'en','Confused'),(31,'S',14,'ru','Идея'),(32,'S',14,'en','Idea'),(33,'S',15,'ru','Вопрос'),(34,'S',15,'en','Question'),(35,'S',16,'ru','Восклицание'),(36,'S',16,'en','Exclamation'),(37,'S',17,'ru','Нравится'),(38,'S',17,'en','Like');
/*!40000 ALTER TABLE `b_smile_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_smile_set`
--

DROP TABLE IF EXISTS `b_smile_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_smile_set` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'G',
  `PARENT_ID` int(18) NOT NULL DEFAULT 0,
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(10) NOT NULL DEFAULT 150,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_smile_set`
--

LOCK TABLES `b_smile_set` WRITE;
/*!40000 ALTER TABLE `b_smile_set` DISABLE KEYS */;
INSERT INTO `b_smile_set` VALUES (1,'P',0,'bitrix',150),(2,'G',1,'bitrix_main',150);
/*!40000 ALTER TABLE `b_smile_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sms_template`
--

DROP TABLE IF EXISTS `b_sms_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sms_template` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SENDER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RECEIVER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_sms_message_name` (`EVENT_NAME`(50))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sms_template`
--

LOCK TABLES `b_sms_template` WRITE;
/*!40000 ALTER TABLE `b_sms_template` DISABLE KEYS */;
INSERT INTO `b_sms_template` VALUES (1,'SMS_USER_CONFIRM_NUMBER','Y','#DEFAULT_SENDER#','#USER_PHONE#','Код подтверждения #CODE#',NULL),(2,'SMS_USER_RESTORE_PASSWORD','Y','#DEFAULT_SENDER#','#USER_PHONE#','Код для восстановления пароля #CODE#',NULL),(3,'SMS_EVENT_LOG_NOTIFICATION','Y','#DEFAULT_SENDER#','#PHONE_NUMBER#','#NAME#: #ADDITIONAL_TEXT# (событий: #EVENT_COUNT#)',NULL);
/*!40000 ALTER TABLE `b_sms_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sms_template_site`
--

DROP TABLE IF EXISTS `b_sms_template_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sms_template_site` (
  `TEMPLATE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`TEMPLATE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sms_template_site`
--

LOCK TABLES `b_sms_template_site` WRITE;
/*!40000 ALTER TABLE `b_sms_template_site` DISABLE KEYS */;
INSERT INTO `b_sms_template_site` VALUES (1,'s1'),(2,'s1'),(3,'s1');
/*!40000 ALTER TABLE `b_sms_template_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_ap`
--

DROP TABLE IF EXISTS `b_socialservices_ap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_ap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT current_timestamp(),
  `USER_ID` int(11) NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENDPOINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `SETTINGS` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_socialservices_ap1` (`USER_ID`,`DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_ap`
--

LOCK TABLES `b_socialservices_ap` WRITE;
/*!40000 ALTER TABLE `b_socialservices_ap` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_ap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_contact`
--

DROP TABLE IF EXISTS `b_socialservices_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_contact` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT current_timestamp(),
  `USER_ID` int(11) NOT NULL,
  `CONTACT_USER_ID` int(11) DEFAULT NULL,
  `CONTACT_XML_ID` int(11) DEFAULT NULL,
  `CONTACT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_PHOTO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `NOTIFY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_contact1` (`USER_ID`),
  KEY `ix_b_socialservices_contact2` (`CONTACT_USER_ID`),
  KEY `ix_b_socialservices_contact3` (`TIMESTAMP_X`),
  KEY `ix_b_socialservices_contact4` (`LAST_AUTHORIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_contact`
--

LOCK TABLES `b_socialservices_contact` WRITE;
/*!40000 ALTER TABLE `b_socialservices_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_contact_connect`
--

DROP TABLE IF EXISTS `b_socialservices_contact_connect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_contact_connect` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT current_timestamp(),
  `CONTACT_ID` int(11) DEFAULT NULL,
  `LINK_ID` int(11) DEFAULT NULL,
  `CONTACT_PROFILE_ID` int(11) NOT NULL,
  `CONTACT_PORTAL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONNECT_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT 'P',
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_contact_connect1` (`CONTACT_ID`),
  KEY `ix_b_socialservices_contact_connect2` (`LINK_ID`),
  KEY `ix_b_socialservices_contact_connect3` (`LAST_AUTHORIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_contact_connect`
--

LOCK TABLES `b_socialservices_contact_connect` WRITE;
/*!40000 ALTER TABLE `b_socialservices_contact_connect` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_contact_connect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_message`
--

DROP TABLE IF EXISTS `b_socialservices_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `PROVIDER` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATE` datetime DEFAULT NULL,
  `SUCCES_SENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_message`
--

LOCK TABLES `b_socialservices_message` WRITE;
/*!40000 ALTER TABLE `b_socialservices_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_user`
--

DROP TABLE IF EXISTS `b_socialservices_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(11) DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CAN_DELETE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PERSONAL_WWW` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERMISSIONS` varchar(555) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OATOKEN` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `OATOKEN_EXPIRES` int(11) DEFAULT NULL,
  `OASECRET` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `REFRESH_TOKEN` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEND_ACTIVITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SITE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INITIALIZED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_SOCIALSERVICES_USER` (`XML_ID`,`EXTERNAL_AUTH_ID`),
  KEY `IX_B_SOCIALSERVICES_US_1` (`USER_ID`),
  KEY `IX_B_SOCIALSERVICES_US_3` (`LOGIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_user`
--

LOCK TABLES `b_socialservices_user` WRITE;
/*!40000 ALTER TABLE `b_socialservices_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_user_link`
--

DROP TABLE IF EXISTS `b_socialservices_user_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_user_link` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `LINK_USER_ID` int(11) DEFAULT NULL,
  `LINK_UID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_PICTURE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_user_link_5` (`SOCSERV_USER_ID`),
  KEY `ix_b_socialservices_user_link_6` (`LINK_USER_ID`,`TIMESTAMP_X`),
  KEY `ix_b_socialservices_user_link_7` (`LINK_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_user_link`
--

LOCK TABLES `b_socialservices_user_link` WRITE;
/*!40000 ALTER TABLE `b_socialservices_user_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_user_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sticker`
--

DROP TABLE IF EXISTS `b_sticker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sticker` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAGE_TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `MODIFIED_BY` int(18) NOT NULL,
  `CREATED_BY` int(18) NOT NULL,
  `PERSONAL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `POS_TOP` int(11) DEFAULT NULL,
  `POS_LEFT` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `COLOR` int(11) DEFAULT NULL,
  `COLLAPSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `COMPLETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CLOSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MARKER_TOP` int(11) DEFAULT NULL,
  `MARKER_LEFT` int(11) DEFAULT NULL,
  `MARKER_WIDTH` int(11) DEFAULT NULL,
  `MARKER_HEIGHT` int(11) DEFAULT NULL,
  `MARKER_ADJUST` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sticker`
--

LOCK TABLES `b_sticker` WRITE;
/*!40000 ALTER TABLE `b_sticker` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sticker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sticker_group_task`
--

DROP TABLE IF EXISTS `b_sticker_group_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sticker_group_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sticker_group_task`
--

LOCK TABLES `b_sticker_group_task` WRITE;
/*!40000 ALTER TABLE `b_sticker_group_task` DISABLE KEYS */;
INSERT INTO `b_sticker_group_task` VALUES (5,29);
/*!40000 ALTER TABLE `b_sticker_group_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_task`
--

DROP TABLE IF EXISTS `b_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_task` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LETTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SYS` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module',
  PRIMARY KEY (`ID`),
  KEY `ix_task` (`MODULE_ID`,`BINDING`,`LETTER`,`SYS`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_task`
--

LOCK TABLES `b_task` WRITE;
/*!40000 ALTER TABLE `b_task` DISABLE KEYS */;
INSERT INTO `b_task` VALUES (1,'main_denied','D','main','Y',NULL,'module'),(2,'main_change_profile','P','main','Y',NULL,'module'),(3,'main_view_all_settings','R','main','Y',NULL,'module'),(4,'main_view_all_settings_change_profile','T','main','Y',NULL,'module'),(5,'main_edit_subordinate_users','V','main','Y',NULL,'module'),(6,'main_full_access','W','main','Y',NULL,'module'),(7,'fm_folder_access_denied','D','main','Y',NULL,'file'),(8,'fm_folder_access_read','R','main','Y',NULL,'file'),(9,'fm_folder_access_write','W','main','Y',NULL,'file'),(10,'fm_folder_access_full','X','main','Y',NULL,'file'),(11,'fm_folder_access_workflow','U','main','Y',NULL,'file'),(12,'bitrixcloud_deny','D','bitrixcloud','Y',NULL,'module'),(13,'bitrixcloud_control','W','bitrixcloud','Y',NULL,'module'),(14,'clouds_denied','D','clouds','Y',NULL,'module'),(15,'clouds_browse','F','clouds','Y',NULL,'module'),(16,'clouds_upload','U','clouds','Y',NULL,'module'),(17,'clouds_full_access','W','clouds','Y',NULL,'module'),(18,'fileman_denied','D','fileman','Y','','module'),(19,'fileman_allowed_folders','F','fileman','Y','','module'),(20,'fileman_full_access','W','fileman','Y','','module'),(21,'medialib_denied','D','fileman','Y','','medialib'),(22,'medialib_view','F','fileman','Y','','medialib'),(23,'medialib_only_new','R','fileman','Y','','medialib'),(24,'medialib_edit_items','V','fileman','Y','','medialib'),(25,'medialib_editor','W','fileman','Y','','medialib'),(26,'medialib_full','X','fileman','Y','','medialib'),(27,'stickers_denied','D','fileman','Y','','stickers'),(28,'stickers_read','R','fileman','Y','','stickers'),(29,'stickers_edit','W','fileman','Y','','stickers'),(30,'hblock_denied','D','highloadblock','Y',NULL,'module'),(31,'hblock_read','R','highloadblock','Y',NULL,'module'),(32,'hblock_write','W','highloadblock','Y',NULL,'module'),(33,'iblock_deny','D','iblock','Y',NULL,'iblock'),(34,'iblock_read','R','iblock','Y',NULL,'iblock'),(35,'iblock_element_add','E','iblock','Y',NULL,'iblock'),(36,'iblock_admin_read','S','iblock','Y',NULL,'iblock'),(37,'iblock_admin_add','T','iblock','Y',NULL,'iblock'),(38,'iblock_limited_edit','U','iblock','Y',NULL,'iblock'),(39,'iblock_full_edit','W','iblock','Y',NULL,'iblock'),(40,'iblock_full','X','iblock','Y',NULL,'iblock'),(41,'landing_right_denied','D','landing','Y',NULL,'module'),(42,'landing_right_read','R','landing','Y',NULL,'module'),(43,'landing_right_edit','U','landing','Y',NULL,'module'),(44,'landing_right_sett','V','landing','Y',NULL,'module'),(45,'landing_right_public','W','landing','Y',NULL,'module'),(46,'landing_right_delete','X','landing','Y',NULL,'module'),(47,'seo_denied','D','seo','Y','','module'),(48,'seo_edit','F','seo','Y','','module'),(49,'seo_full_access','W','seo','Y','','module'),(50,'Контент-редакторы','Q','main','N','Разрешено изменять информацию в своем профайле. Управление кешем','module');
/*!40000 ALTER TABLE `b_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_task_operation`
--

DROP TABLE IF EXISTS `b_task_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_task_operation` (
  `TASK_ID` int(18) NOT NULL,
  `OPERATION_ID` int(18) NOT NULL,
  PRIMARY KEY (`TASK_ID`,`OPERATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_task_operation`
--

LOCK TABLES `b_task_operation` WRITE;
/*!40000 ALTER TABLE `b_task_operation` DISABLE KEYS */;
INSERT INTO `b_task_operation` VALUES (2,2),(2,3),(3,2),(3,4),(3,5),(3,6),(3,7),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(5,2),(5,3),(5,5),(5,6),(5,7),(5,8),(5,9),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,10),(6,11),(6,12),(6,13),(6,14),(6,15),(6,16),(6,17),(6,18),(8,19),(8,20),(8,21),(9,19),(9,20),(9,21),(9,22),(9,23),(9,24),(9,25),(9,26),(9,27),(9,28),(9,29),(9,30),(9,31),(9,32),(9,33),(9,34),(10,19),(10,20),(10,21),(10,22),(10,23),(10,24),(10,25),(10,26),(10,27),(10,28),(10,29),(10,30),(10,31),(10,32),(10,33),(10,34),(10,35),(11,19),(11,20),(11,21),(11,24),(11,28),(13,36),(13,37),(13,38),(15,39),(16,39),(16,40),(17,39),(17,40),(17,41),(19,44),(19,45),(19,46),(19,47),(19,48),(19,49),(19,50),(19,52),(19,53),(20,42),(20,43),(20,44),(20,45),(20,46),(20,47),(20,48),(20,49),(20,50),(20,51),(20,52),(20,53),(20,54),(22,55),(23,55),(23,56),(23,60),(24,55),(24,60),(24,61),(24,62),(25,55),(25,56),(25,57),(25,58),(25,60),(25,61),(25,62),(26,55),(26,56),(26,57),(26,58),(26,59),(26,60),(26,61),(26,62),(28,63),(29,63),(29,64),(29,65),(29,66),(31,67),(32,68),(32,69),(34,70),(34,71),(35,72),(36,70),(36,71),(36,73),(37,70),(37,71),(37,72),(37,73),(38,70),(38,71),(38,72),(38,73),(38,74),(38,75),(38,76),(38,77),(39,70),(39,71),(39,72),(39,73),(39,74),(39,75),(39,76),(39,77),(39,78),(39,79),(39,80),(39,81),(40,70),(40,71),(40,72),(40,73),(40,74),(40,75),(40,76),(40,77),(40,78),(40,79),(40,80),(40,81),(40,82),(40,83),(40,84),(40,85),(40,86),(40,87),(42,88),(43,89),(44,90),(45,91),(46,92),(48,94),(49,93),(49,94),(50,2),(50,3),(50,14);
/*!40000 ALTER TABLE `b_task_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_translate_diff`
--

DROP TABLE IF EXISTS `b_translate_diff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_translate_diff` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FILE_ID` int(18) NOT NULL,
  `PATH_ID` int(18) NOT NULL,
  `LANG_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `AGAINST_LANG_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EXCESS_COUNT` int(18) NOT NULL DEFAULT 0,
  `DEFICIENCY_COUNT` int(18) DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IXU_TRNSL_DIFF` (`FILE_ID`,`LANG_ID`,`AGAINST_LANG_ID`),
  KEY `IX_TRNSL_DIFF_PATH` (`PATH_ID`,`LANG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_translate_diff`
--

LOCK TABLES `b_translate_diff` WRITE;
/*!40000 ALTER TABLE `b_translate_diff` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_translate_diff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_translate_file`
--

DROP TABLE IF EXISTS `b_translate_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_translate_file` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `PATH_ID` int(18) NOT NULL,
  `LANG_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `FULL_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE_COUNT` int(18) NOT NULL DEFAULT 0,
  `INDEXED` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `INDEXED_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_TRNSL_FL_PATH` (`PATH_ID`,`LANG_ID`),
  KEY `IX_TRNSL_FULL_PATH` (`FULL_PATH`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_translate_file`
--

LOCK TABLES `b_translate_file` WRITE;
/*!40000 ALTER TABLE `b_translate_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_translate_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_translate_path`
--

DROP TABLE IF EXISTS `b_translate_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_translate_path` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int(18) NOT NULL DEFAULT 0,
  `DEPTH_LEVEL` int(18) NOT NULL DEFAULT 0,
  `SORT` int(18) NOT NULL DEFAULT 0,
  `PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `IS_LANG` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_DIR` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `OBLIGATORY_LANGS` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEXED` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `INDEXED_TIME` datetime DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ASSIGNMENT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_TRNSL_PTH_NAME` (`PARENT_ID`,`NAME`),
  KEY `IX_TRNSL_PTH_PARENT` (`PARENT_ID`,`IS_DIR`,`IS_LANG`),
  KEY `IX_TRNSL_PTH_PATH` (`PATH`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_translate_path`
--

LOCK TABLES `b_translate_path` WRITE;
/*!40000 ALTER TABLE `b_translate_path` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_translate_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_translate_path_lang`
--

DROP TABLE IF EXISTS `b_translate_path_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_translate_path_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_TRNSL_LNG_PATH` (`PATH`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_translate_path_lang`
--

LOCK TABLES `b_translate_path_lang` WRITE;
/*!40000 ALTER TABLE `b_translate_path_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_translate_path_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_translate_path_tree`
--

DROP TABLE IF EXISTS `b_translate_path_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_translate_path_tree` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int(18) NOT NULL,
  `PATH_ID` int(18) NOT NULL,
  `DEPTH_LEVEL` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_TRNSL_ANCESTOR` (`PARENT_ID`,`DEPTH_LEVEL`,`PATH_ID`),
  UNIQUE KEY `IX_TRNSL_DESCENDANT` (`PATH_ID`,`PARENT_ID`,`DEPTH_LEVEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_translate_path_tree`
--

LOCK TABLES `b_translate_path_tree` WRITE;
/*!40000 ALTER TABLE `b_translate_path_tree` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_translate_path_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_translate_phrase`
--

DROP TABLE IF EXISTS `b_translate_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_translate_phrase` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FILE_ID` int(18) NOT NULL,
  `PATH_ID` int(18) NOT NULL,
  `LANG_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PHRASE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IXU_TRNSL_PHR_PATH_CODE` (`PATH_ID`,`LANG_ID`,`CODE`),
  KEY `IX_TRNSL_PHR_PATH` (`PATH_ID`,`CODE`),
  KEY `IX_TRNSL_FILE` (`FILE_ID`),
  FULLTEXT KEY `IXF_TRNSL_PHR` (`PHRASE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_translate_phrase`
--

LOCK TABLES `b_translate_phrase` WRITE;
/*!40000 ALTER TABLE `b_translate_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_translate_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_undo`
--

DROP TABLE IF EXISTS `b_undo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_undo` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_HANDLER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `TIMESTAMP_X` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_undo`
--

LOCK TABLES `b_undo` WRITE;
/*!40000 ALTER TABLE `b_undo` DISABLE KEYS */;
INSERT INTO `b_undo` VALUES ('102f443dcf956a20c1dfe22a33aba631a','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:42:\"/var/www/data/www/chastnym-licam/index.php\";s:7:\"content\";s:4935:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Частным лицам\");\n?><?$APPLICATION->IncludeComponent(\n	\"bitrix:catalog\", \n	\".default_old1\", \n	array(\n		\"ACTION_VARIABLE\" => \"action\",\n		\"ADD_ELEMENT_CHAIN\" => \"N\",\n		\"ADD_PROPERTIES_TO_BASKET\" => \"Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"N\",\n		\"BASKET_URL\" => \"/personal/basket.php\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"COMPATIBLE_MODE\" => \"Y\",\n		\"DETAIL_ADD_DETAIL_TO_SLIDER\" => \"N\",\n		\"DETAIL_BACKGROUND_IMAGE\" => \"-\",\n		\"DETAIL_BRAND_USE\" => \"N\",\n		\"DETAIL_BROWSER_TITLE\" => \"-\",\n		\"DETAIL_CHECK_SECTION_ID_VARIABLE\" => \"N\",\n		\"DETAIL_DETAIL_PICTURE_MODE\" => \"MAGNIFIER\",\n		\"DETAIL_DISPLAY_NAME\" => \"Y\",\n		\"DETAIL_DISPLAY_PREVIEW_TEXT_MODE\" => \"E\",\n		\"DETAIL_IMAGE_RESOLUTION\" => \"16by9\",\n		\"DETAIL_META_DESCRIPTION\" => \"-\",\n		\"DETAIL_META_KEYWORDS\" => \"-\",\n		\"DETAIL_PRODUCT_INFO_BLOCK_ORDER\" => \"sku,props\",\n		\"DETAIL_PRODUCT_PAY_BLOCK_ORDER\" => \"rating,price,priceRanges,quantityLimit,quantity,buttons\",\n		\"DETAIL_SET_CANONICAL_URL\" => \"N\",\n		\"DETAIL_SHOW_POPULAR\" => \"Y\",\n		\"DETAIL_SHOW_SLIDER\" => \"N\",\n		\"DETAIL_SHOW_VIEWED\" => \"Y\",\n		\"DETAIL_STRICT_SECTION_CHECK\" => \"N\",\n		\"DETAIL_USE_COMMENTS\" => \"N\",\n		\"DETAIL_USE_VOTE_RATING\" => \"N\",\n		\"DISABLE_INIT_JS_IN_COMPONENT\" => \"N\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"ELEMENT_SORT_FIELD\" => \"sort\",\n		\"ELEMENT_SORT_FIELD2\" => \"id\",\n		\"ELEMENT_SORT_ORDER\" => \"asc\",\n		\"ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"FILTER_HIDE_ON_MOBILE\" => \"N\",\n		\"FILTER_VIEW_MODE\" => \"VERTICAL\",\n		\"IBLOCK_ID\" => \"3\",\n		\"IBLOCK_TYPE\" => \"catalog\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"INSTANT_RELOAD\" => \"N\",\n		\"LAZY_LOAD\" => \"N\",\n		\"LINE_ELEMENT_COUNT\" => \"3\",\n		\"LINK_ELEMENTS_URL\" => \"link.php?PARENT_ELEMENT_ID=#ELEMENT_ID#\",\n		\"LINK_IBLOCK_ID\" => \"\",\n		\"LINK_IBLOCK_TYPE\" => \"\",\n		\"LINK_PROPERTY_SID\" => \"\",\n		\"LIST_BROWSER_TITLE\" => \"-\",\n		\"LIST_META_DESCRIPTION\" => \"-\",\n		\"LIST_META_KEYWORDS\" => \"-\",\n		\"LOAD_ON_SCROLL\" => \"N\",\n		\"MESSAGE_404\" => \"\",\n		\"MESS_BTN_ADD_TO_BASKET\" => \"В корзину\",\n		\"MESS_BTN_BUY\" => \"Купить\",\n		\"MESS_BTN_COMPARE\" => \"Сравнение\",\n		\"MESS_BTN_DETAIL\" => \"Подробнее\",\n		\"MESS_BTN_SUBSCRIBE\" => \"Подписаться\",\n		\"MESS_NOT_AVAILABLE\" => \"Нет в наличии\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Товары\",\n		\"PAGE_ELEMENT_COUNT\" => \"30\",\n		\"PARTIAL_PRODUCT_PROPERTIES\" => \"N\",\n		\"PRICE_CODE\" => array(\n		),\n		\"PRICE_VAT_INCLUDE\" => \"Y\",\n		\"PRICE_VAT_SHOW_VALUE\" => \"N\",\n		\"PRODUCT_ID_VARIABLE\" => \"id\",\n		\"PRODUCT_PROPS_VARIABLE\" => \"prop\",\n		\"PRODUCT_QUANTITY_VARIABLE\" => \"quantity\",\n		\"SEARCH_CHECK_DATES\" => \"Y\",\n		\"SEARCH_NO_WORD_LOGIC\" => \"Y\",\n		\"SEARCH_PAGE_RESULT_COUNT\" => \"50\",\n		\"SEARCH_RESTART\" => \"N\",\n		\"SEARCH_USE_LANGUAGE_GUESS\" => \"Y\",\n		\"SECTIONS_SHOW_PARENT_NAME\" => \"Y\",\n		\"SECTIONS_VIEW_MODE\" => \"LIST\",\n		\"SECTION_BACKGROUND_IMAGE\" => \"-\",\n		\"SECTION_COUNT_ELEMENTS\" => \"Y\",\n		\"SECTION_ID_VARIABLE\" => \"SECTION_ID\",\n		\"SECTION_TOP_DEPTH\" => \"2\",\n		\"SEF_MODE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_STATUS_404\" => \"Y\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"Y\",\n		\"SHOW_DEACTIVATED\" => \"N\",\n		\"SHOW_PRICE_COUNT\" => \"1\",\n		\"SHOW_TOP_ELEMENTS\" => \"Y\",\n		\"SIDEBAR_DETAIL_SHOW\" => \"N\",\n		\"SIDEBAR_PATH\" => \"\",\n		\"SIDEBAR_SECTION_SHOW\" => \"Y\",\n		\"TEMPLATE_THEME\" => \"blue\",\n		\"TOP_ELEMENT_COUNT\" => \"9\",\n		\"TOP_ELEMENT_SORT_FIELD\" => \"sort\",\n		\"TOP_ELEMENT_SORT_FIELD2\" => \"id\",\n		\"TOP_ELEMENT_SORT_ORDER\" => \"asc\",\n		\"TOP_ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"TOP_LINE_ELEMENT_COUNT\" => \"3\",\n		\"TOP_VIEW_MODE\" => \"SECTION\",\n		\"USER_CONSENT\" => \"N\",\n		\"USER_CONSENT_ID\" => \"0\",\n		\"USER_CONSENT_IS_CHECKED\" => \"Y\",\n		\"USER_CONSENT_IS_LOADED\" => \"N\",\n		\"USE_COMPARE\" => \"N\",\n		\"USE_ELEMENT_COUNTER\" => \"Y\",\n		\"USE_ENHANCED_ECOMMERCE\" => \"N\",\n		\"USE_FILTER\" => \"N\",\n		\"USE_MAIN_ELEMENT_SECTION\" => \"N\",\n		\"USE_PRICE_COUNT\" => \"N\",\n		\"USE_PRODUCT_QUANTITY\" => \"N\",\n		\"USE_STORE\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \".default_old1\",\n		\"ADD_PICT_PROP\" => \"-\",\n		\"LABEL_PROP\" => \"-\",\n		\"SEF_FOLDER\" => \"/chastnym-licam/\",\n		\"FILE_404\" => \"/404.php\",\n		\"SEF_URL_TEMPLATES\" => array(\n			\"sections\" => \"\",\n			\"section\" => \"#SECTION_CODE#/\",\n			\"element\" => \"#SECTION_CODE#/#ELEMENT_CODE#\",\n			\"compare\" => \"compare.php?action=#ACTION_CODE#\",\n			\"smart_filter\" => \"#SECTION_ID#/filter/#SMART_FILTER_PATH#/apply/\",\n		),\n		\"VARIABLE_ALIASES\" => array(\n			\"compare\" => array(\n				\"ACTION_CODE\" => \"action\",\n			),\n		)\n	),\n	false\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1586801747),('111c8ee01052acfe4959866821f4d5880','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:42:\"/var/www/data/www/chastnym-licam/index.php\";s:7:\"content\";s:4927:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Частным лицам\");\n?><?$APPLICATION->IncludeComponent(\n	\"bitrix:catalog\", \n	\".default_old1\", \n	array(\n		\"ACTION_VARIABLE\" => \"action\",\n		\"ADD_ELEMENT_CHAIN\" => \"N\",\n		\"ADD_PROPERTIES_TO_BASKET\" => \"Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"BASKET_URL\" => \"/personal/basket.php\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"COMPATIBLE_MODE\" => \"Y\",\n		\"DETAIL_ADD_DETAIL_TO_SLIDER\" => \"N\",\n		\"DETAIL_BACKGROUND_IMAGE\" => \"-\",\n		\"DETAIL_BRAND_USE\" => \"N\",\n		\"DETAIL_BROWSER_TITLE\" => \"-\",\n		\"DETAIL_CHECK_SECTION_ID_VARIABLE\" => \"N\",\n		\"DETAIL_DETAIL_PICTURE_MODE\" => \"MAGNIFIER\",\n		\"DETAIL_DISPLAY_NAME\" => \"Y\",\n		\"DETAIL_DISPLAY_PREVIEW_TEXT_MODE\" => \"E\",\n		\"DETAIL_IMAGE_RESOLUTION\" => \"16by9\",\n		\"DETAIL_META_DESCRIPTION\" => \"-\",\n		\"DETAIL_META_KEYWORDS\" => \"-\",\n		\"DETAIL_PRODUCT_INFO_BLOCK_ORDER\" => \"sku,props\",\n		\"DETAIL_PRODUCT_PAY_BLOCK_ORDER\" => \"rating,price,priceRanges,quantityLimit,quantity,buttons\",\n		\"DETAIL_SET_CANONICAL_URL\" => \"N\",\n		\"DETAIL_SHOW_POPULAR\" => \"Y\",\n		\"DETAIL_SHOW_SLIDER\" => \"N\",\n		\"DETAIL_SHOW_VIEWED\" => \"Y\",\n		\"DETAIL_STRICT_SECTION_CHECK\" => \"N\",\n		\"DETAIL_USE_COMMENTS\" => \"N\",\n		\"DETAIL_USE_VOTE_RATING\" => \"N\",\n		\"DISABLE_INIT_JS_IN_COMPONENT\" => \"N\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"ELEMENT_SORT_FIELD\" => \"sort\",\n		\"ELEMENT_SORT_FIELD2\" => \"id\",\n		\"ELEMENT_SORT_ORDER\" => \"asc\",\n		\"ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"FILTER_HIDE_ON_MOBILE\" => \"N\",\n		\"FILTER_VIEW_MODE\" => \"VERTICAL\",\n		\"IBLOCK_ID\" => \"3\",\n		\"IBLOCK_TYPE\" => \"catalog\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"INSTANT_RELOAD\" => \"N\",\n		\"LAZY_LOAD\" => \"N\",\n		\"LINE_ELEMENT_COUNT\" => \"3\",\n		\"LINK_ELEMENTS_URL\" => \"link.php?PARENT_ELEMENT_ID=#ELEMENT_ID#\",\n		\"LINK_IBLOCK_ID\" => \"\",\n		\"LINK_IBLOCK_TYPE\" => \"\",\n		\"LINK_PROPERTY_SID\" => \"\",\n		\"LIST_BROWSER_TITLE\" => \"-\",\n		\"LIST_META_DESCRIPTION\" => \"-\",\n		\"LIST_META_KEYWORDS\" => \"-\",\n		\"LOAD_ON_SCROLL\" => \"N\",\n		\"MESSAGE_404\" => \"\",\n		\"MESS_BTN_ADD_TO_BASKET\" => \"В корзину\",\n		\"MESS_BTN_BUY\" => \"Купить\",\n		\"MESS_BTN_COMPARE\" => \"Сравнение\",\n		\"MESS_BTN_DETAIL\" => \"Подробнее\",\n		\"MESS_BTN_SUBSCRIBE\" => \"Подписаться\",\n		\"MESS_NOT_AVAILABLE\" => \"Нет в наличии\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Товары\",\n		\"PAGE_ELEMENT_COUNT\" => \"30\",\n		\"PARTIAL_PRODUCT_PROPERTIES\" => \"N\",\n		\"PRICE_CODE\" => array(\n		),\n		\"PRICE_VAT_INCLUDE\" => \"Y\",\n		\"PRICE_VAT_SHOW_VALUE\" => \"N\",\n		\"PRODUCT_ID_VARIABLE\" => \"id\",\n		\"PRODUCT_PROPS_VARIABLE\" => \"prop\",\n		\"PRODUCT_QUANTITY_VARIABLE\" => \"quantity\",\n		\"SEARCH_CHECK_DATES\" => \"Y\",\n		\"SEARCH_NO_WORD_LOGIC\" => \"Y\",\n		\"SEARCH_PAGE_RESULT_COUNT\" => \"50\",\n		\"SEARCH_RESTART\" => \"N\",\n		\"SEARCH_USE_LANGUAGE_GUESS\" => \"Y\",\n		\"SECTIONS_SHOW_PARENT_NAME\" => \"Y\",\n		\"SECTIONS_VIEW_MODE\" => \"LIST\",\n		\"SECTION_BACKGROUND_IMAGE\" => \"-\",\n		\"SECTION_COUNT_ELEMENTS\" => \"Y\",\n		\"SECTION_ID_VARIABLE\" => \"SECTION_ID\",\n		\"SECTION_TOP_DEPTH\" => \"2\",\n		\"SEF_MODE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SHOW_DEACTIVATED\" => \"N\",\n		\"SHOW_PRICE_COUNT\" => \"1\",\n		\"SHOW_TOP_ELEMENTS\" => \"Y\",\n		\"SIDEBAR_DETAIL_SHOW\" => \"N\",\n		\"SIDEBAR_PATH\" => \"\",\n		\"SIDEBAR_SECTION_SHOW\" => \"Y\",\n		\"TEMPLATE_THEME\" => \"blue\",\n		\"TOP_ELEMENT_COUNT\" => \"9\",\n		\"TOP_ELEMENT_SORT_FIELD\" => \"sort\",\n		\"TOP_ELEMENT_SORT_FIELD2\" => \"id\",\n		\"TOP_ELEMENT_SORT_ORDER\" => \"asc\",\n		\"TOP_ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"TOP_LINE_ELEMENT_COUNT\" => \"3\",\n		\"TOP_VIEW_MODE\" => \"SECTION\",\n		\"USER_CONSENT\" => \"N\",\n		\"USER_CONSENT_ID\" => \"0\",\n		\"USER_CONSENT_IS_CHECKED\" => \"Y\",\n		\"USER_CONSENT_IS_LOADED\" => \"N\",\n		\"USE_COMPARE\" => \"N\",\n		\"USE_ELEMENT_COUNTER\" => \"Y\",\n		\"USE_ENHANCED_ECOMMERCE\" => \"N\",\n		\"USE_FILTER\" => \"N\",\n		\"USE_MAIN_ELEMENT_SECTION\" => \"N\",\n		\"USE_PRICE_COUNT\" => \"N\",\n		\"USE_PRODUCT_QUANTITY\" => \"N\",\n		\"USE_STORE\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \".default_old1\",\n		\"ADD_PICT_PROP\" => \"-\",\n		\"LABEL_PROP\" => \"-\",\n		\"SEF_FOLDER\" => \"/chastnym-licam/\",\n		\"SEF_URL_TEMPLATES\" => array(\n			\"sections\" => \"index.php\",\n			\"section\" => \"#SECTION_CODE_PATH#/\",\n			\"element\" => \"#SECTION_CODE_PATH#/#ELEMENT_CODE#/\",\n			\"compare\" => \"compare.php?action=#ACTION_CODE#\",\n			\"smart_filter\" => \"#SECTION_ID#/filter/#SMART_FILTER_PATH#/apply/\",\n		),\n		\"VARIABLE_ALIASES\" => array(\n			\"compare\" => array(\n				\"ACTION_CODE\" => \"action\",\n			),\n		)\n	),\n	false\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1586799026),('114a9e74d7eabb4db65d9b1c2e8c26607','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:42:\"/var/www/data/www/chastnym-licam/index.php\";s:7:\"content\";s:242:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Частным лицам\");\n?><?$APPLICATION->IncludeComponent(\n	\"bitrix:news\",\n	\"\",\nArray()\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1586797900),('1326f0a6907acc3c65beccf43d612cc9e','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:48:\"/var/www/data/www/local/templates/skb/header.php\";s:7:\"content\";s:7828:\"<? if (!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED !== true) die(); ?>\n<?\nIncludeTemplateLangFile(__FILE__);\n?>\n<!DOCTYPE html>\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"/>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n    <title><? $APPLICATION->ShowTitle() ?></title>\n    <link rel=\"apple-touch-icon\" sizes=\"180x180\" href=\"<?= SITE_TEMPLATE_PATH ?>/apple-touch-icon.png\">\n    <link rel=\"icon\" type=\"image/png\" sizes=\"32x32\" href=\"<?= SITE_TEMPLATE_PATH ?>/favicon-32x32.png\">\n    <link rel=\"icon\" type=\"image/png\" sizes=\"16x16\" href=\"<?= SITE_TEMPLATE_PATH ?>/favicon-16x16.png\">\n\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"<?= SITE_TEMPLATE_PATH ?>/css/bootstrap.css\"/>\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"<?= SITE_TEMPLATE_PATH ?>/css/global.css\"/>\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"<?= SITE_TEMPLATE_PATH ?>/css/layout.css\"/>\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"<?= SITE_TEMPLATE_PATH ?>/css/font-awesome.min.css\"/>\n    <?/*?><link rel=\"stylesheet\" type=\"text/css\" href=\"<?= SITE_TEMPLATE_PATH ?>/common.css\"/>\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"<?= SITE_TEMPLATE_PATH ?>/colors.css\"/><?//*/?>\n\n\n\n    <? $APPLICATION->ShowHead(); ?>\n\n</head>\n<body class=\"banner-to-new\">\n    <div id=\"panel\"><? $APPLICATION->ShowPanel(); ?></div>\n    <div class=\"menu\">\n        <div class=\"menu-main\">\n            <div class=\"container\">\n                <div class=\"row\">\n                    <div class=\"col-12 col-md-auto\">\n                        <a href=\"/chastnym-licam\">\n                            <div class=\"logo\"></div>\n                        </a>\n                    </div>\n                    <div class=\"col-12 col-md-auto\">\n                        <a class=\"menu-item active\" href=\"/chastnym-licam\">Частным лицам</a>\n                    </div>\n                    <div class=\"col-12 col-md col-lg-auto\">\n                        <a class=\"menu-item\" href=\"/predprinimatelyam-i-biznesu\">Бизнесу</a>\n                    </div>\n                    <div class=\"col-12 col-md-auto d-none d-lg-inline\">\n                        <a class=\"menu-item\" href=\"/o-banke\">О банке</a></div>\n                    <div class=\"col-12 col-md text-md-right d-none d-lg-inline\">\n                        <a class=\"menu-item\" href=\"/atms\">Офисы и банкоматы</a></div>\n                    <div class=\"col-12 col-md-auto\">\n                        <a class=\"menu-item city-select\" href=\"#\" data-toggle=\"modal\" data-target=\"#modalCitiesList\">\n                            <i class=\"fa fa-location-arrow\"></i>\n                            Выберите город </a>\n                    </div>\n                    <div class=\"col-12 col-md-auto\">\n                        <a href=\"#search\" class=\"menu-item\" id=\"search\">\n                            <i class=\"fa fa-search\"></i> <span class=\"d-inline d-md-none\">Поиск</span>\n                        </a>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"menu-additional\">\n            <div class=\"container\">\n                <div class=\"row personal\">\n                    <div class=\"col-12 col-md-auto\">\n                        <a class=\"menu-item active\" href=\"/chastnym-licam/kredity\">Кредиты</a>\n                        <a class=\"menu-item\" href=\"/chastnym-licam/kredity/ipoteka\">Ипотека</a>\n                        <a class=\"menu-item\" href=\"/chastnym-licam/vklady\">Вклады</a>\n                        <a class=\"menu-item\" href=\"/chastnym-licam/karty\">Карты</a>\n                        <a class=\"menu-item\" href=\"/chastnym-licam/premialnoe-obsluzivanie\">Премиальное обслуживание</a>\n                        <a class=\"menu-item\" href=\"/offers\">Акции</a></div>\n                    <div class=\"col px-lg-0\">\n                        <nobr>\n                            <a class=\"menu-item menu-more\" data-toggle=\"collapse\" href=\"#morePersonal\" role=\"button\"\n                               aria-expanded=\"false\" aria-controls=\"morePersonal\">Ещё <i class=\"fa fa-angle-down\"></i>\n                            </a>\n                        </nobr>\n                    </div>\n                    <div class=\"col-auto\">\n                        <a href=\"https://ib.skbbank.ru/login\" class=\"btn btn-coral-white btn-menu\" target=\"_blank\">Интернет-банк</a>\n                    </div>\n                </div>\n                <div class=\"row search\" style=\"display:none;\">\n                    <div class=\"col-12\">\n                        <form class=\"form-search_mobile\" action=\"/search\" method=\"get\">\n                            <input type=\"text\" name=\"q\" value=\"\" placeholder=\"Найти\">\n                            <i class=\"fa fa-search\"></i>\n                        </form>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n\n    <div class=\"container\">\n        <?$APPLICATION->IncludeComponent(\"bitrix:breadcrumb\", \".default\", array(\n            \"START_FROM\" => \"0\",\n            \"PATH\" => \"\",\n            \"SITE_ID\" => SITE_ID\n        ),\n            false\n        );?>\n    </div>\n\n<? /*?>\n		<div id=\"page-wrapper\">\n\n			<div id=\"header\">\n				<table>\n					<tr>\n						<td id=\"logo\"><a href=\"<?=SITE_DIR?>\" title=\"<?=GetMessage(\"HDR_GOTO_MAIN\")?>\"><?$APPLICATION->IncludeFile(\n									SITE_DIR.\"include/company_name.php\",\n									Array(),\n									Array(\"MODE\"=>\"html\")\n								);?></a></td>\n						<td id=\"slogan\"><?$APPLICATION->IncludeFile(\n									SITE_DIR.\"include/company_slogan.php\",\n									Array(),\n									Array(\"MODE\"=>\"html\")\n								);?></td>\n					</tr>\n				</table>\n\n				\n				<div id=\"search\">\n				<?$APPLICATION->IncludeComponent(\"bitrix:search.form\", \"flat\", array(\n					\"PAGE\" => \"#SITE_DIR#search/index.php\"\n					),\n					false\n				);?>\n				</div>\n			</div>\n\n<?$APPLICATION->IncludeComponent(\"bitrix:menu\", \"top\", array(\n	\"ROOT_MENU_TYPE\" => \"top\",\n	\"MENU_CACHE_TYPE\" => \"Y\",\n	\"MENU_CACHE_TIME\" => \"36000000\",\n	\"MENU_CACHE_USE_GROUPS\" => \"Y\",\n	\"MENU_CACHE_GET_VARS\" => array(\n	),\n	\"MAX_LEVEL\" => \"1\",\n	\"CHILD_MENU_TYPE\" => \"left\",\n	\"USE_EXT\" => \"N\",\n	\"ALLOW_MULTI_SELECT\" => \"N\"\n	),\n	false\n);?>\n				\n		\n			<div id=\"content-wrapper\">\n				<div id=\"content\">\n				<?if($APPLICATION->GetCurPage(false)==SITE_DIR):?>\n					<div id=\"banner\">\n						<div id=\"banner-image\"><?$APPLICATION->IncludeFile(\n									SITE_DIR.\"include/banner.php\",\n									Array(),\n									Array(\"MODE\"=>\"html\")\n								);?></div>\n						<table cellspacing=\"0\" id=\"banner-text\">\n							<tr>\n								<td width=\"35%\">&nbsp;</td>\n								<td>\n								<?$APPLICATION->IncludeFile(\n									SITE_DIR.\"include/banner_text.php\",\n									Array(),\n									Array(\"MODE\"=>\"text\")\n								);?>\n								</td>\n							</tr>\n						</table>\n						<div id=\"banner-overlay\"></div>\n					</div>\n				<?else:?>\n					<div id=\"breadcrumb\">\n						<?$APPLICATION->IncludeComponent(\"bitrix:breadcrumb\", \".default\", array(\n	\"START_FROM\" => \"1\",\n	\"PATH\" => \"\",\n	\"SITE_ID\" => SITE_ID\n	),\n	false\n);?>\n					</div>					\n				<?endif?>					\n					<div id=\"workarea-wrapper\">\n						<div id=\"left-menu\">\n						<?$APPLICATION->IncludeComponent(\"bitrix:menu\", \"tree\", array(\n							\"ROOT_MENU_TYPE\" => \"leftfirst\",\n							\"MENU_CACHE_TYPE\" => \"Y\",\n							\"MENU_CACHE_TIME\" => \"36000000\",\n							\"MENU_CACHE_USE_GROUPS\" => \"Y\",\n							\"MENU_CACHE_GET_VARS\" => array(\n							),\n							\"MAX_LEVEL\" => \"4\",\n							\"CHILD_MENU_TYPE\" => \"left\",\n							\"USE_EXT\" => \"N\",\n							\"ALLOW_MULTI_SELECT\" => \"N\"\n							),\n							false\n						);?>\n						</div>						\n						<div id=\"workarea\">\n							<div id=\"workarea-inner\">\n							<h5><?$APPLICATION->ShowTitle(false);?></h5> \n<?//*/ ?>\n\";}',1,1586798838),('14391182f234f2fae4e660b06ec5ddb26','fileman','edit_file','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:42:\"/var/www/data/www/chastnym-licam/index.php\";s:7:\"content\";s:188:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Частным лицам\");\n?>Text here....<?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1586797729),('1468266b427381188f76993068f6fa028','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:42:\"/var/www/data/www/chastnym-licam/index.php\";s:7:\"content\";s:4954:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Частным лицам\");\n?><?$APPLICATION->IncludeComponent(\n	\"bitrix:catalog\", \n	\".default_old1\", \n	array(\n		\"ACTION_VARIABLE\" => \"action\",\n		\"ADD_ELEMENT_CHAIN\" => \"N\",\n		\"ADD_PROPERTIES_TO_BASKET\" => \"Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"BASKET_URL\" => \"/personal/basket.php\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"COMPATIBLE_MODE\" => \"Y\",\n		\"DETAIL_ADD_DETAIL_TO_SLIDER\" => \"N\",\n		\"DETAIL_BACKGROUND_IMAGE\" => \"-\",\n		\"DETAIL_BRAND_USE\" => \"N\",\n		\"DETAIL_BROWSER_TITLE\" => \"-\",\n		\"DETAIL_CHECK_SECTION_ID_VARIABLE\" => \"N\",\n		\"DETAIL_DETAIL_PICTURE_MODE\" => \"MAGNIFIER\",\n		\"DETAIL_DISPLAY_NAME\" => \"Y\",\n		\"DETAIL_DISPLAY_PREVIEW_TEXT_MODE\" => \"E\",\n		\"DETAIL_IMAGE_RESOLUTION\" => \"16by9\",\n		\"DETAIL_META_DESCRIPTION\" => \"-\",\n		\"DETAIL_META_KEYWORDS\" => \"-\",\n		\"DETAIL_PRODUCT_INFO_BLOCK_ORDER\" => \"sku,props\",\n		\"DETAIL_PRODUCT_PAY_BLOCK_ORDER\" => \"rating,price,priceRanges,quantityLimit,quantity,buttons\",\n		\"DETAIL_SET_CANONICAL_URL\" => \"N\",\n		\"DETAIL_SHOW_POPULAR\" => \"Y\",\n		\"DETAIL_SHOW_SLIDER\" => \"N\",\n		\"DETAIL_SHOW_VIEWED\" => \"Y\",\n		\"DETAIL_STRICT_SECTION_CHECK\" => \"N\",\n		\"DETAIL_USE_COMMENTS\" => \"N\",\n		\"DETAIL_USE_VOTE_RATING\" => \"N\",\n		\"DISABLE_INIT_JS_IN_COMPONENT\" => \"N\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"ELEMENT_SORT_FIELD\" => \"sort\",\n		\"ELEMENT_SORT_FIELD2\" => \"id\",\n		\"ELEMENT_SORT_ORDER\" => \"asc\",\n		\"ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"FILTER_HIDE_ON_MOBILE\" => \"N\",\n		\"FILTER_VIEW_MODE\" => \"VERTICAL\",\n		\"IBLOCK_ID\" => \"3\",\n		\"IBLOCK_TYPE\" => \"catalog\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"INSTANT_RELOAD\" => \"N\",\n		\"LAZY_LOAD\" => \"N\",\n		\"LINE_ELEMENT_COUNT\" => \"3\",\n		\"LINK_ELEMENTS_URL\" => \"link.php?PARENT_ELEMENT_ID=#ELEMENT_ID#\",\n		\"LINK_IBLOCK_ID\" => \"\",\n		\"LINK_IBLOCK_TYPE\" => \"\",\n		\"LINK_PROPERTY_SID\" => \"\",\n		\"LIST_BROWSER_TITLE\" => \"-\",\n		\"LIST_META_DESCRIPTION\" => \"-\",\n		\"LIST_META_KEYWORDS\" => \"-\",\n		\"LOAD_ON_SCROLL\" => \"N\",\n		\"MESSAGE_404\" => \"\",\n		\"MESS_BTN_ADD_TO_BASKET\" => \"В корзину\",\n		\"MESS_BTN_BUY\" => \"Купить\",\n		\"MESS_BTN_COMPARE\" => \"Сравнение\",\n		\"MESS_BTN_DETAIL\" => \"Подробнее\",\n		\"MESS_BTN_SUBSCRIBE\" => \"Подписаться\",\n		\"MESS_NOT_AVAILABLE\" => \"Нет в наличии\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Товары\",\n		\"PAGE_ELEMENT_COUNT\" => \"30\",\n		\"PARTIAL_PRODUCT_PROPERTIES\" => \"N\",\n		\"PRICE_CODE\" => array(\n		),\n		\"PRICE_VAT_INCLUDE\" => \"Y\",\n		\"PRICE_VAT_SHOW_VALUE\" => \"N\",\n		\"PRODUCT_ID_VARIABLE\" => \"id\",\n		\"PRODUCT_PROPS_VARIABLE\" => \"prop\",\n		\"PRODUCT_QUANTITY_VARIABLE\" => \"quantity\",\n		\"SEARCH_CHECK_DATES\" => \"Y\",\n		\"SEARCH_NO_WORD_LOGIC\" => \"Y\",\n		\"SEARCH_PAGE_RESULT_COUNT\" => \"50\",\n		\"SEARCH_RESTART\" => \"N\",\n		\"SEARCH_USE_LANGUAGE_GUESS\" => \"Y\",\n		\"SECTIONS_SHOW_PARENT_NAME\" => \"Y\",\n		\"SECTIONS_VIEW_MODE\" => \"LIST\",\n		\"SECTION_BACKGROUND_IMAGE\" => \"-\",\n		\"SECTION_COUNT_ELEMENTS\" => \"Y\",\n		\"SECTION_ID_VARIABLE\" => \"SECTION_ID\",\n		\"SECTION_TOP_DEPTH\" => \"2\",\n		\"SEF_MODE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_STATUS_404\" => \"Y\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"Y\",\n		\"SHOW_DEACTIVATED\" => \"N\",\n		\"SHOW_PRICE_COUNT\" => \"1\",\n		\"SHOW_TOP_ELEMENTS\" => \"Y\",\n		\"SIDEBAR_DETAIL_SHOW\" => \"N\",\n		\"SIDEBAR_PATH\" => \"\",\n		\"SIDEBAR_SECTION_SHOW\" => \"Y\",\n		\"TEMPLATE_THEME\" => \"blue\",\n		\"TOP_ELEMENT_COUNT\" => \"9\",\n		\"TOP_ELEMENT_SORT_FIELD\" => \"sort\",\n		\"TOP_ELEMENT_SORT_FIELD2\" => \"id\",\n		\"TOP_ELEMENT_SORT_ORDER\" => \"asc\",\n		\"TOP_ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"TOP_LINE_ELEMENT_COUNT\" => \"3\",\n		\"TOP_VIEW_MODE\" => \"SECTION\",\n		\"USER_CONSENT\" => \"N\",\n		\"USER_CONSENT_ID\" => \"0\",\n		\"USER_CONSENT_IS_CHECKED\" => \"Y\",\n		\"USER_CONSENT_IS_LOADED\" => \"N\",\n		\"USE_COMPARE\" => \"N\",\n		\"USE_ELEMENT_COUNTER\" => \"Y\",\n		\"USE_ENHANCED_ECOMMERCE\" => \"N\",\n		\"USE_FILTER\" => \"N\",\n		\"USE_MAIN_ELEMENT_SECTION\" => \"N\",\n		\"USE_PRICE_COUNT\" => \"N\",\n		\"USE_PRODUCT_QUANTITY\" => \"N\",\n		\"USE_STORE\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \".default_old1\",\n		\"ADD_PICT_PROP\" => \"-\",\n		\"LABEL_PROP\" => \"-\",\n		\"SEF_FOLDER\" => \"/chastnym-licam/\",\n		\"FILE_404\" => \"/404.php\",\n		\"SEF_URL_TEMPLATES\" => array(\n			\"sections\" => \"index.php\",\n			\"section\" => \"#SECTION_CODE_PATH#/\",\n			\"element\" => \"#SECTION_CODE_PATH#/#ELEMENT_CODE#\",\n			\"compare\" => \"compare.php?action=#ACTION_CODE#\",\n			\"smart_filter\" => \"#SECTION_ID#/filter/#SMART_FILTER_PATH#/apply/\",\n		),\n		\"VARIABLE_ALIASES\" => array(\n			\"compare\" => array(\n				\"ACTION_CODE\" => \"action\",\n			),\n		)\n	),\n	false\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1586799781),('1500442ececb41fb5478965bde099cd5a','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:42:\"/var/www/data/www/chastnym-licam/index.php\";s:7:\"content\";s:4956:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Частным лицам\");\n?><?$APPLICATION->IncludeComponent(\n	\"bitrix:catalog\", \n	\".default_old1\", \n	array(\n		\"ACTION_VARIABLE\" => \"action\",\n		\"ADD_ELEMENT_CHAIN\" => \"N\",\n		\"ADD_PROPERTIES_TO_BASKET\" => \"Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"BASKET_URL\" => \"/personal/basket.php\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"COMPATIBLE_MODE\" => \"Y\",\n		\"DETAIL_ADD_DETAIL_TO_SLIDER\" => \"N\",\n		\"DETAIL_BACKGROUND_IMAGE\" => \"-\",\n		\"DETAIL_BRAND_USE\" => \"N\",\n		\"DETAIL_BROWSER_TITLE\" => \"-\",\n		\"DETAIL_CHECK_SECTION_ID_VARIABLE\" => \"N\",\n		\"DETAIL_DETAIL_PICTURE_MODE\" => \"MAGNIFIER\",\n		\"DETAIL_DISPLAY_NAME\" => \"Y\",\n		\"DETAIL_DISPLAY_PREVIEW_TEXT_MODE\" => \"E\",\n		\"DETAIL_IMAGE_RESOLUTION\" => \"16by9\",\n		\"DETAIL_META_DESCRIPTION\" => \"-\",\n		\"DETAIL_META_KEYWORDS\" => \"-\",\n		\"DETAIL_PRODUCT_INFO_BLOCK_ORDER\" => \"sku,props\",\n		\"DETAIL_PRODUCT_PAY_BLOCK_ORDER\" => \"rating,price,priceRanges,quantityLimit,quantity,buttons\",\n		\"DETAIL_SET_CANONICAL_URL\" => \"N\",\n		\"DETAIL_SHOW_POPULAR\" => \"Y\",\n		\"DETAIL_SHOW_SLIDER\" => \"N\",\n		\"DETAIL_SHOW_VIEWED\" => \"Y\",\n		\"DETAIL_STRICT_SECTION_CHECK\" => \"N\",\n		\"DETAIL_USE_COMMENTS\" => \"N\",\n		\"DETAIL_USE_VOTE_RATING\" => \"N\",\n		\"DISABLE_INIT_JS_IN_COMPONENT\" => \"N\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"ELEMENT_SORT_FIELD\" => \"sort\",\n		\"ELEMENT_SORT_FIELD2\" => \"id\",\n		\"ELEMENT_SORT_ORDER\" => \"asc\",\n		\"ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"FILTER_HIDE_ON_MOBILE\" => \"N\",\n		\"FILTER_VIEW_MODE\" => \"VERTICAL\",\n		\"IBLOCK_ID\" => \"3\",\n		\"IBLOCK_TYPE\" => \"catalog\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"INSTANT_RELOAD\" => \"N\",\n		\"LAZY_LOAD\" => \"N\",\n		\"LINE_ELEMENT_COUNT\" => \"3\",\n		\"LINK_ELEMENTS_URL\" => \"link.php?PARENT_ELEMENT_ID=#ELEMENT_ID#\",\n		\"LINK_IBLOCK_ID\" => \"\",\n		\"LINK_IBLOCK_TYPE\" => \"\",\n		\"LINK_PROPERTY_SID\" => \"\",\n		\"LIST_BROWSER_TITLE\" => \"-\",\n		\"LIST_META_DESCRIPTION\" => \"-\",\n		\"LIST_META_KEYWORDS\" => \"-\",\n		\"LOAD_ON_SCROLL\" => \"N\",\n		\"MESSAGE_404\" => \"\",\n		\"MESS_BTN_ADD_TO_BASKET\" => \"В корзину\",\n		\"MESS_BTN_BUY\" => \"Купить\",\n		\"MESS_BTN_COMPARE\" => \"Сравнение\",\n		\"MESS_BTN_DETAIL\" => \"Подробнее\",\n		\"MESS_BTN_SUBSCRIBE\" => \"Подписаться\",\n		\"MESS_NOT_AVAILABLE\" => \"Нет в наличии\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Товары\",\n		\"PAGE_ELEMENT_COUNT\" => \"30\",\n		\"PARTIAL_PRODUCT_PROPERTIES\" => \"N\",\n		\"PRICE_CODE\" => array(\n		),\n		\"PRICE_VAT_INCLUDE\" => \"Y\",\n		\"PRICE_VAT_SHOW_VALUE\" => \"N\",\n		\"PRODUCT_ID_VARIABLE\" => \"id\",\n		\"PRODUCT_PROPS_VARIABLE\" => \"prop\",\n		\"PRODUCT_QUANTITY_VARIABLE\" => \"quantity\",\n		\"SEARCH_CHECK_DATES\" => \"Y\",\n		\"SEARCH_NO_WORD_LOGIC\" => \"Y\",\n		\"SEARCH_PAGE_RESULT_COUNT\" => \"50\",\n		\"SEARCH_RESTART\" => \"N\",\n		\"SEARCH_USE_LANGUAGE_GUESS\" => \"Y\",\n		\"SECTIONS_SHOW_PARENT_NAME\" => \"Y\",\n		\"SECTIONS_VIEW_MODE\" => \"LIST\",\n		\"SECTION_BACKGROUND_IMAGE\" => \"-\",\n		\"SECTION_COUNT_ELEMENTS\" => \"Y\",\n		\"SECTION_ID_VARIABLE\" => \"SECTION_ID\",\n		\"SECTION_TOP_DEPTH\" => \"2\",\n		\"SEF_MODE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_STATUS_404\" => \"Y\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"Y\",\n		\"SHOW_DEACTIVATED\" => \"N\",\n		\"SHOW_PRICE_COUNT\" => \"1\",\n		\"SHOW_TOP_ELEMENTS\" => \"Y\",\n		\"SIDEBAR_DETAIL_SHOW\" => \"N\",\n		\"SIDEBAR_PATH\" => \"\",\n		\"SIDEBAR_SECTION_SHOW\" => \"Y\",\n		\"TEMPLATE_THEME\" => \"blue\",\n		\"TOP_ELEMENT_COUNT\" => \"9\",\n		\"TOP_ELEMENT_SORT_FIELD\" => \"sort\",\n		\"TOP_ELEMENT_SORT_FIELD2\" => \"id\",\n		\"TOP_ELEMENT_SORT_ORDER\" => \"asc\",\n		\"TOP_ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"TOP_LINE_ELEMENT_COUNT\" => \"3\",\n		\"TOP_VIEW_MODE\" => \"SECTION\",\n		\"USER_CONSENT\" => \"N\",\n		\"USER_CONSENT_ID\" => \"0\",\n		\"USER_CONSENT_IS_CHECKED\" => \"Y\",\n		\"USER_CONSENT_IS_LOADED\" => \"N\",\n		\"USE_COMPARE\" => \"N\",\n		\"USE_ELEMENT_COUNTER\" => \"Y\",\n		\"USE_ENHANCED_ECOMMERCE\" => \"N\",\n		\"USE_FILTER\" => \"N\",\n		\"USE_MAIN_ELEMENT_SECTION\" => \"N\",\n		\"USE_PRICE_COUNT\" => \"N\",\n		\"USE_PRODUCT_QUANTITY\" => \"N\",\n		\"USE_STORE\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \".default_old1\",\n		\"ADD_PICT_PROP\" => \"-\",\n		\"LABEL_PROP\" => \"-\",\n		\"SEF_FOLDER\" => \"/chastnym-licam/\",\n		\"FILE_404\" => \"/404.php\",\n		\"SEF_URL_TEMPLATES\" => array(\n			\"sections\" => \"index.php\",\n			\"section\" => \"/#SECTION_CODE_PATH#/\",\n			\"element\" => \"/#SECTION_CODE_PATH#/#ELEMENT_CODE#\",\n			\"compare\" => \"compare.php?action=#ACTION_CODE#\",\n			\"smart_filter\" => \"#SECTION_ID#/filter/#SMART_FILTER_PATH#/apply/\",\n		),\n		\"VARIABLE_ALIASES\" => array(\n			\"compare\" => array(\n				\"ACTION_CODE\" => \"action\",\n			),\n		)\n	),\n	false\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1586799620),('1710d097f373443470b294276eaa52c6e','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:42:\"/var/www/data/www/chastnym-licam/index.php\";s:7:\"content\";s:4957:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Частным лицам\");\n?><?$APPLICATION->IncludeComponent(\n	\"bitrix:catalog\", \n	\".default_old1\", \n	array(\n		\"ACTION_VARIABLE\" => \"action\",\n		\"ADD_ELEMENT_CHAIN\" => \"N\",\n		\"ADD_PROPERTIES_TO_BASKET\" => \"Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"BASKET_URL\" => \"/personal/basket.php\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"COMPATIBLE_MODE\" => \"Y\",\n		\"DETAIL_ADD_DETAIL_TO_SLIDER\" => \"N\",\n		\"DETAIL_BACKGROUND_IMAGE\" => \"-\",\n		\"DETAIL_BRAND_USE\" => \"N\",\n		\"DETAIL_BROWSER_TITLE\" => \"-\",\n		\"DETAIL_CHECK_SECTION_ID_VARIABLE\" => \"N\",\n		\"DETAIL_DETAIL_PICTURE_MODE\" => \"MAGNIFIER\",\n		\"DETAIL_DISPLAY_NAME\" => \"Y\",\n		\"DETAIL_DISPLAY_PREVIEW_TEXT_MODE\" => \"E\",\n		\"DETAIL_IMAGE_RESOLUTION\" => \"16by9\",\n		\"DETAIL_META_DESCRIPTION\" => \"-\",\n		\"DETAIL_META_KEYWORDS\" => \"-\",\n		\"DETAIL_PRODUCT_INFO_BLOCK_ORDER\" => \"sku,props\",\n		\"DETAIL_PRODUCT_PAY_BLOCK_ORDER\" => \"rating,price,priceRanges,quantityLimit,quantity,buttons\",\n		\"DETAIL_SET_CANONICAL_URL\" => \"N\",\n		\"DETAIL_SHOW_POPULAR\" => \"Y\",\n		\"DETAIL_SHOW_SLIDER\" => \"N\",\n		\"DETAIL_SHOW_VIEWED\" => \"Y\",\n		\"DETAIL_STRICT_SECTION_CHECK\" => \"N\",\n		\"DETAIL_USE_COMMENTS\" => \"N\",\n		\"DETAIL_USE_VOTE_RATING\" => \"N\",\n		\"DISABLE_INIT_JS_IN_COMPONENT\" => \"N\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"ELEMENT_SORT_FIELD\" => \"sort\",\n		\"ELEMENT_SORT_FIELD2\" => \"id\",\n		\"ELEMENT_SORT_ORDER\" => \"asc\",\n		\"ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"FILTER_HIDE_ON_MOBILE\" => \"N\",\n		\"FILTER_VIEW_MODE\" => \"VERTICAL\",\n		\"IBLOCK_ID\" => \"3\",\n		\"IBLOCK_TYPE\" => \"catalog\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"INSTANT_RELOAD\" => \"N\",\n		\"LAZY_LOAD\" => \"N\",\n		\"LINE_ELEMENT_COUNT\" => \"3\",\n		\"LINK_ELEMENTS_URL\" => \"link.php?PARENT_ELEMENT_ID=#ELEMENT_ID#\",\n		\"LINK_IBLOCK_ID\" => \"\",\n		\"LINK_IBLOCK_TYPE\" => \"\",\n		\"LINK_PROPERTY_SID\" => \"\",\n		\"LIST_BROWSER_TITLE\" => \"-\",\n		\"LIST_META_DESCRIPTION\" => \"-\",\n		\"LIST_META_KEYWORDS\" => \"-\",\n		\"LOAD_ON_SCROLL\" => \"N\",\n		\"MESSAGE_404\" => \"\",\n		\"MESS_BTN_ADD_TO_BASKET\" => \"В корзину\",\n		\"MESS_BTN_BUY\" => \"Купить\",\n		\"MESS_BTN_COMPARE\" => \"Сравнение\",\n		\"MESS_BTN_DETAIL\" => \"Подробнее\",\n		\"MESS_BTN_SUBSCRIBE\" => \"Подписаться\",\n		\"MESS_NOT_AVAILABLE\" => \"Нет в наличии\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Товары\",\n		\"PAGE_ELEMENT_COUNT\" => \"30\",\n		\"PARTIAL_PRODUCT_PROPERTIES\" => \"N\",\n		\"PRICE_CODE\" => array(\n		),\n		\"PRICE_VAT_INCLUDE\" => \"Y\",\n		\"PRICE_VAT_SHOW_VALUE\" => \"N\",\n		\"PRODUCT_ID_VARIABLE\" => \"id\",\n		\"PRODUCT_PROPS_VARIABLE\" => \"prop\",\n		\"PRODUCT_QUANTITY_VARIABLE\" => \"quantity\",\n		\"SEARCH_CHECK_DATES\" => \"Y\",\n		\"SEARCH_NO_WORD_LOGIC\" => \"Y\",\n		\"SEARCH_PAGE_RESULT_COUNT\" => \"50\",\n		\"SEARCH_RESTART\" => \"N\",\n		\"SEARCH_USE_LANGUAGE_GUESS\" => \"Y\",\n		\"SECTIONS_SHOW_PARENT_NAME\" => \"Y\",\n		\"SECTIONS_VIEW_MODE\" => \"LIST\",\n		\"SECTION_BACKGROUND_IMAGE\" => \"-\",\n		\"SECTION_COUNT_ELEMENTS\" => \"Y\",\n		\"SECTION_ID_VARIABLE\" => \"SECTION_ID\",\n		\"SECTION_TOP_DEPTH\" => \"2\",\n		\"SEF_MODE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_STATUS_404\" => \"Y\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"Y\",\n		\"SHOW_DEACTIVATED\" => \"N\",\n		\"SHOW_PRICE_COUNT\" => \"1\",\n		\"SHOW_TOP_ELEMENTS\" => \"Y\",\n		\"SIDEBAR_DETAIL_SHOW\" => \"N\",\n		\"SIDEBAR_PATH\" => \"\",\n		\"SIDEBAR_SECTION_SHOW\" => \"Y\",\n		\"TEMPLATE_THEME\" => \"blue\",\n		\"TOP_ELEMENT_COUNT\" => \"9\",\n		\"TOP_ELEMENT_SORT_FIELD\" => \"sort\",\n		\"TOP_ELEMENT_SORT_FIELD2\" => \"id\",\n		\"TOP_ELEMENT_SORT_ORDER\" => \"asc\",\n		\"TOP_ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"TOP_LINE_ELEMENT_COUNT\" => \"3\",\n		\"TOP_VIEW_MODE\" => \"SECTION\",\n		\"USER_CONSENT\" => \"N\",\n		\"USER_CONSENT_ID\" => \"0\",\n		\"USER_CONSENT_IS_CHECKED\" => \"Y\",\n		\"USER_CONSENT_IS_LOADED\" => \"N\",\n		\"USE_COMPARE\" => \"N\",\n		\"USE_ELEMENT_COUNTER\" => \"Y\",\n		\"USE_ENHANCED_ECOMMERCE\" => \"N\",\n		\"USE_FILTER\" => \"N\",\n		\"USE_MAIN_ELEMENT_SECTION\" => \"N\",\n		\"USE_PRICE_COUNT\" => \"N\",\n		\"USE_PRODUCT_QUANTITY\" => \"N\",\n		\"USE_STORE\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \".default_old1\",\n		\"ADD_PICT_PROP\" => \"-\",\n		\"LABEL_PROP\" => \"-\",\n		\"SEF_FOLDER\" => \"/chastnym-licam/\",\n		\"FILE_404\" => \"/404.php\",\n		\"SEF_URL_TEMPLATES\" => array(\n			\"sections\" => \"index.php\",\n			\"section\" => \"/#SECTION_CODE_PATH#/\",\n			\"element\" => \"/#SECTION_CODE_PATH#/#ELEMENT_CODE#/\",\n			\"compare\" => \"compare.php?action=#ACTION_CODE#\",\n			\"smart_filter\" => \"#SECTION_ID#/filter/#SMART_FILTER_PATH#/apply/\",\n		),\n		\"VARIABLE_ALIASES\" => array(\n			\"compare\" => array(\n				\"ACTION_CODE\" => \"action\",\n			),\n		)\n	),\n	false\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1586799172),('176ce67fff3910e923980b7696dccb9ef','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:42:\"/var/www/data/www/chastnym-licam/index.php\";s:7:\"content\";s:4959:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Частным лицам\");\n?><?$APPLICATION->IncludeComponent(\n	\"bitrix:catalog\", \n	\".default_old1\", \n	array(\n		\"ACTION_VARIABLE\" => \"action\",\n		\"ADD_ELEMENT_CHAIN\" => \"N\",\n		\"ADD_PROPERTIES_TO_BASKET\" => \"Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"BASKET_URL\" => \"/personal/basket.php\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"COMPATIBLE_MODE\" => \"Y\",\n		\"DETAIL_ADD_DETAIL_TO_SLIDER\" => \"N\",\n		\"DETAIL_BACKGROUND_IMAGE\" => \"-\",\n		\"DETAIL_BRAND_USE\" => \"N\",\n		\"DETAIL_BROWSER_TITLE\" => \"-\",\n		\"DETAIL_CHECK_SECTION_ID_VARIABLE\" => \"N\",\n		\"DETAIL_DETAIL_PICTURE_MODE\" => \"MAGNIFIER\",\n		\"DETAIL_DISPLAY_NAME\" => \"Y\",\n		\"DETAIL_DISPLAY_PREVIEW_TEXT_MODE\" => \"E\",\n		\"DETAIL_IMAGE_RESOLUTION\" => \"16by9\",\n		\"DETAIL_META_DESCRIPTION\" => \"-\",\n		\"DETAIL_META_KEYWORDS\" => \"-\",\n		\"DETAIL_PRODUCT_INFO_BLOCK_ORDER\" => \"sku,props\",\n		\"DETAIL_PRODUCT_PAY_BLOCK_ORDER\" => \"rating,price,priceRanges,quantityLimit,quantity,buttons\",\n		\"DETAIL_SET_CANONICAL_URL\" => \"N\",\n		\"DETAIL_SHOW_POPULAR\" => \"Y\",\n		\"DETAIL_SHOW_SLIDER\" => \"N\",\n		\"DETAIL_SHOW_VIEWED\" => \"Y\",\n		\"DETAIL_STRICT_SECTION_CHECK\" => \"N\",\n		\"DETAIL_USE_COMMENTS\" => \"N\",\n		\"DETAIL_USE_VOTE_RATING\" => \"N\",\n		\"DISABLE_INIT_JS_IN_COMPONENT\" => \"N\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"ELEMENT_SORT_FIELD\" => \"sort\",\n		\"ELEMENT_SORT_FIELD2\" => \"id\",\n		\"ELEMENT_SORT_ORDER\" => \"asc\",\n		\"ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"FILTER_HIDE_ON_MOBILE\" => \"N\",\n		\"FILTER_VIEW_MODE\" => \"VERTICAL\",\n		\"IBLOCK_ID\" => \"3\",\n		\"IBLOCK_TYPE\" => \"catalog\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"INSTANT_RELOAD\" => \"N\",\n		\"LAZY_LOAD\" => \"N\",\n		\"LINE_ELEMENT_COUNT\" => \"3\",\n		\"LINK_ELEMENTS_URL\" => \"link.php?PARENT_ELEMENT_ID=#ELEMENT_ID#\",\n		\"LINK_IBLOCK_ID\" => \"\",\n		\"LINK_IBLOCK_TYPE\" => \"\",\n		\"LINK_PROPERTY_SID\" => \"\",\n		\"LIST_BROWSER_TITLE\" => \"-\",\n		\"LIST_META_DESCRIPTION\" => \"-\",\n		\"LIST_META_KEYWORDS\" => \"-\",\n		\"LOAD_ON_SCROLL\" => \"N\",\n		\"MESSAGE_404\" => \"\",\n		\"MESS_BTN_ADD_TO_BASKET\" => \"В корзину\",\n		\"MESS_BTN_BUY\" => \"Купить\",\n		\"MESS_BTN_COMPARE\" => \"Сравнение\",\n		\"MESS_BTN_DETAIL\" => \"Подробнее\",\n		\"MESS_BTN_SUBSCRIBE\" => \"Подписаться\",\n		\"MESS_NOT_AVAILABLE\" => \"Нет в наличии\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Товары\",\n		\"PAGE_ELEMENT_COUNT\" => \"30\",\n		\"PARTIAL_PRODUCT_PROPERTIES\" => \"N\",\n		\"PRICE_CODE\" => array(\n		),\n		\"PRICE_VAT_INCLUDE\" => \"Y\",\n		\"PRICE_VAT_SHOW_VALUE\" => \"N\",\n		\"PRODUCT_ID_VARIABLE\" => \"id\",\n		\"PRODUCT_PROPS_VARIABLE\" => \"prop\",\n		\"PRODUCT_QUANTITY_VARIABLE\" => \"quantity\",\n		\"SEARCH_CHECK_DATES\" => \"Y\",\n		\"SEARCH_NO_WORD_LOGIC\" => \"Y\",\n		\"SEARCH_PAGE_RESULT_COUNT\" => \"50\",\n		\"SEARCH_RESTART\" => \"N\",\n		\"SEARCH_USE_LANGUAGE_GUESS\" => \"Y\",\n		\"SECTIONS_SHOW_PARENT_NAME\" => \"Y\",\n		\"SECTIONS_VIEW_MODE\" => \"LIST\",\n		\"SECTION_BACKGROUND_IMAGE\" => \"-\",\n		\"SECTION_COUNT_ELEMENTS\" => \"Y\",\n		\"SECTION_ID_VARIABLE\" => \"SECTION_ID\",\n		\"SECTION_TOP_DEPTH\" => \"2\",\n		\"SEF_MODE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SHOW_DEACTIVATED\" => \"N\",\n		\"SHOW_PRICE_COUNT\" => \"1\",\n		\"SHOW_TOP_ELEMENTS\" => \"Y\",\n		\"SIDEBAR_DETAIL_SHOW\" => \"N\",\n		\"SIDEBAR_PATH\" => \"\",\n		\"SIDEBAR_SECTION_SHOW\" => \"Y\",\n		\"TEMPLATE_THEME\" => \"blue\",\n		\"TOP_ELEMENT_COUNT\" => \"9\",\n		\"TOP_ELEMENT_SORT_FIELD\" => \"sort\",\n		\"TOP_ELEMENT_SORT_FIELD2\" => \"id\",\n		\"TOP_ELEMENT_SORT_ORDER\" => \"asc\",\n		\"TOP_ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"TOP_LINE_ELEMENT_COUNT\" => \"3\",\n		\"TOP_VIEW_MODE\" => \"SECTION\",\n		\"USER_CONSENT\" => \"N\",\n		\"USER_CONSENT_ID\" => \"0\",\n		\"USER_CONSENT_IS_CHECKED\" => \"Y\",\n		\"USER_CONSENT_IS_LOADED\" => \"N\",\n		\"USE_COMPARE\" => \"N\",\n		\"USE_ELEMENT_COUNTER\" => \"Y\",\n		\"USE_ENHANCED_ECOMMERCE\" => \"N\",\n		\"USE_FILTER\" => \"N\",\n		\"USE_MAIN_ELEMENT_SECTION\" => \"N\",\n		\"USE_PRICE_COUNT\" => \"N\",\n		\"USE_PRODUCT_QUANTITY\" => \"N\",\n		\"USE_STORE\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \".default_old1\",\n		\"ADD_PICT_PROP\" => \"-\",\n		\"LABEL_PROP\" => \"-\",\n		\"SEF_FOLDER\" => \"/chastnym-licam/\",\n		\"SEF_URL_TEMPLATES\" => array(\n			\"sections\" => \"index.php\",\n			\"section\" => \"/chastnym-licam/#SECTION_CODE_PATH#/\",\n			\"element\" => \"/chastnym-licam/#SECTION_CODE_PATH#/#ELEMENT_CODE#/\",\n			\"compare\" => \"compare.php?action=#ACTION_CODE#\",\n			\"smart_filter\" => \"#SECTION_ID#/filter/#SMART_FILTER_PATH#/apply/\",\n		),\n		\"VARIABLE_ALIASES\" => array(\n			\"compare\" => array(\n				\"ACTION_CODE\" => \"action\",\n			),\n		)\n	),\n	false\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1586799057),('19325a3bec3984dd15ccc30319b742ac3','fileman','edit_file','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:90:\"/var/www/data/www/local/templates/skb/components/bitrix/catalog/.default_old1/sections.php\";s:7:\"content\";s:6435:\"<?if(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n/** @var array $arParams */\n/** @var array $arResult */\n/** @global CMain $APPLICATION */\n/** @global CUser $USER */\n/** @global CDatabase $DB */\n/** @var CBitrixComponentTemplate $this */\n/** @var string $templateName */\n/** @var string $templateFile */\n/** @var string $templateFolder */\n/** @var string $componentPath */\n/** @var CBitrixComponent $component */\n\n$this->setFrameMode(true);\n$this->addExternalCss(\"/bitrix/css/main/bootstrap.css\");\n?><?$APPLICATION->IncludeComponent(\n	\"bitrix:catalog.section.list\",\n	\"\",\n	array(\n		\"IBLOCK_TYPE\" => $arParams[\"IBLOCK_TYPE\"],\n		\"IBLOCK_ID\" => $arParams[\"IBLOCK_ID\"],\n		\"CACHE_TYPE\" => $arParams[\"CACHE_TYPE\"],\n		\"CACHE_TIME\" => $arParams[\"CACHE_TIME\"],\n		\"CACHE_GROUPS\" => $arParams[\"CACHE_GROUPS\"],\n		\"COUNT_ELEMENTS\" => $arParams[\"SECTION_COUNT_ELEMENTS\"],\n		\"TOP_DEPTH\" => $arParams[\"SECTION_TOP_DEPTH\"],\n		\"SECTION_URL\" => $arResult[\"FOLDER\"].$arResult[\"URL_TEMPLATES\"][\"section\"],\n		\"VIEW_MODE\" => $arParams[\"SECTIONS_VIEW_MODE\"],\n		\"SHOW_PARENT_NAME\" => $arParams[\"SECTIONS_SHOW_PARENT_NAME\"],\n		\"HIDE_SECTION_NAME\" => (isset($arParams[\"SECTIONS_HIDE_SECTION_NAME\"]) ? $arParams[\"SECTIONS_HIDE_SECTION_NAME\"] : \"N\"),\n		\"ADD_SECTIONS_CHAIN\" => (isset($arParams[\"ADD_SECTIONS_CHAIN\"]) ? $arParams[\"ADD_SECTIONS_CHAIN\"] : \'\')\n	),\n	$component,\n	array(\"HIDE_ICONS\" => \"Y\")\n);\n?><?\nif($arParams[\"USE_COMPARE\"]==\"Y\")\n{\n	?><?$APPLICATION->IncludeComponent(\n	\"bitrix:catalog.compare.list\",\n	\"\",\n	array(\n		\"IBLOCK_TYPE\" => $arParams[\"IBLOCK_TYPE\"],\n		\"IBLOCK_ID\" => $arParams[\"IBLOCK_ID\"],\n		\"NAME\" => $arParams[\"COMPARE_NAME\"],\n		\"DETAIL_URL\" => $arResult[\"FOLDER\"].$arResult[\"URL_TEMPLATES\"][\"element\"],\n		\"COMPARE_URL\" => $arResult[\"FOLDER\"].$arResult[\"URL_TEMPLATES\"][\"compare\"],\n		\"ACTION_VARIABLE\" => $arParams[\"ACTION_VARIABLE\"],\n		\"PRODUCT_ID_VARIABLE\" => $arParams[\"PRODUCT_ID_VARIABLE\"],\n		\'POSITION_FIXED\' => isset($arParams[\'COMPARE_POSITION_FIXED\']) ? $arParams[\'COMPARE_POSITION_FIXED\'] : \'\',\n		\'POSITION\' => isset($arParams[\'COMPARE_POSITION\']) ? $arParams[\'COMPARE_POSITION\'] : \'\'\n	),\n	$component,\n	array(\"HIDE_ICONS\" => \"Y\")\n);?><?\n}\nif($arParams[\"SHOW_TOP_ELEMENTS\"]!=\"N\")\n{\n	if (isset($arParams[\'USE_COMMON_SETTINGS_BASKET_POPUP\']) && $arParams[\'USE_COMMON_SETTINGS_BASKET_POPUP\'] == \'Y\')\n	{\n		$basketAction = (isset($arParams[\'COMMON_ADD_TO_BASKET_ACTION\']) ? $arParams[\'COMMON_ADD_TO_BASKET_ACTION\'] : \'\');\n	}\n	else\n	{\n		$basketAction = (isset($arParams[\'TOP_ADD_TO_BASKET_ACTION\']) ? $arParams[\'TOP_ADD_TO_BASKET_ACTION\'] : \'\');\n	}\n\n	?><?$APPLICATION->IncludeComponent(\n	\"bitrix:catalog.top\",\n	\"\",\n	array(\n		\"IBLOCK_TYPE\" => $arParams[\"IBLOCK_TYPE\"],\n		\"IBLOCK_ID\" => $arParams[\"IBLOCK_ID\"],\n		\"ELEMENT_SORT_FIELD\" => $arParams[\"TOP_ELEMENT_SORT_FIELD\"],\n		\"ELEMENT_SORT_ORDER\" => $arParams[\"TOP_ELEMENT_SORT_ORDER\"],\n		\"ELEMENT_SORT_FIELD2\" => $arParams[\"TOP_ELEMENT_SORT_FIELD2\"],\n		\"ELEMENT_SORT_ORDER2\" => $arParams[\"TOP_ELEMENT_SORT_ORDER2\"],\n		\"SECTION_URL\" => $arResult[\"FOLDER\"].$arResult[\"URL_TEMPLATES\"][\"section\"],\n		\"DETAIL_URL\" => $arResult[\"FOLDER\"].$arResult[\"URL_TEMPLATES\"][\"element\"],\n		\"BASKET_URL\" => $arParams[\"BASKET_URL\"],\n		\"ACTION_VARIABLE\" => $arParams[\"ACTION_VARIABLE\"],\n		\"PRODUCT_ID_VARIABLE\" => $arParams[\"PRODUCT_ID_VARIABLE\"],\n		\"SECTION_ID_VARIABLE\" => $arParams[\"SECTION_ID_VARIABLE\"],\n		\"PRODUCT_QUANTITY_VARIABLE\" => $arParams[\"PRODUCT_QUANTITY_VARIABLE\"],\n		\"PRODUCT_PROPS_VARIABLE\" => $arParams[\"PRODUCT_PROPS_VARIABLE\"],\n		\"DISPLAY_COMPARE\" => $arParams[\"USE_COMPARE\"],\n		\"ELEMENT_COUNT\" => $arParams[\"TOP_ELEMENT_COUNT\"],\n		\"LINE_ELEMENT_COUNT\" => $arParams[\"TOP_LINE_ELEMENT_COUNT\"],\n		\"PROPERTY_CODE\" => $arParams[\"TOP_PROPERTY_CODE\"],\n		\"PRICE_CODE\" => $arParams[\"PRICE_CODE\"],\n		\"USE_PRICE_COUNT\" => $arParams[\"USE_PRICE_COUNT\"],\n		\"SHOW_PRICE_COUNT\" => $arParams[\"SHOW_PRICE_COUNT\"],\n		\"PRICE_VAT_INCLUDE\" => $arParams[\"PRICE_VAT_INCLUDE\"],\n		\"PRICE_VAT_SHOW_VALUE\" => $arParams[\"PRICE_VAT_SHOW_VALUE\"],\n		\"USE_PRODUCT_QUANTITY\" => $arParams[\'USE_PRODUCT_QUANTITY\'],\n		\"ADD_PROPERTIES_TO_BASKET\" => (isset($arParams[\"ADD_PROPERTIES_TO_BASKET\"]) ? $arParams[\"ADD_PROPERTIES_TO_BASKET\"] : \'\'),\n		\"PARTIAL_PRODUCT_PROPERTIES\" => (isset($arParams[\"PARTIAL_PRODUCT_PROPERTIES\"]) ? $arParams[\"PARTIAL_PRODUCT_PROPERTIES\"] : \'\'),\n		\"PRODUCT_PROPERTIES\" => $arParams[\"PRODUCT_PROPERTIES\"],\n		\"CACHE_TYPE\" => $arParams[\"CACHE_TYPE\"],\n		\"CACHE_TIME\" => $arParams[\"CACHE_TIME\"],\n		\"CACHE_GROUPS\" => $arParams[\"CACHE_GROUPS\"],\n		\"OFFERS_CART_PROPERTIES\" => $arParams[\"OFFERS_CART_PROPERTIES\"],\n		\"OFFERS_FIELD_CODE\" => $arParams[\"TOP_OFFERS_FIELD_CODE\"],\n		\"OFFERS_PROPERTY_CODE\" => $arParams[\"TOP_OFFERS_PROPERTY_CODE\"],\n		\"OFFERS_SORT_FIELD\" => $arParams[\"OFFERS_SORT_FIELD\"],\n		\"OFFERS_SORT_ORDER\" => $arParams[\"OFFERS_SORT_ORDER\"],\n		\"OFFERS_SORT_FIELD2\" => $arParams[\"OFFERS_SORT_FIELD2\"],\n		\"OFFERS_SORT_ORDER2\" => $arParams[\"OFFERS_SORT_ORDER2\"],\n		\"OFFERS_LIMIT\" => $arParams[\"TOP_OFFERS_LIMIT\"],\n		\'CONVERT_CURRENCY\' => $arParams[\'CONVERT_CURRENCY\'],\n		\'CURRENCY_ID\' => $arParams[\'CURRENCY_ID\'],\n		\'HIDE_NOT_AVAILABLE\' => $arParams[\'HIDE_NOT_AVAILABLE\'],\n		\'VIEW_MODE\' => (isset($arParams[\'TOP_VIEW_MODE\']) ? $arParams[\'TOP_VIEW_MODE\'] : \'\'),\n		\'ROTATE_TIMER\' => (isset($arParams[\'TOP_ROTATE_TIMER\']) ? $arParams[\'TOP_ROTATE_TIMER\'] : \'\'),\n		\'TEMPLATE_THEME\' => (isset($arParams[\'TEMPLATE_THEME\']) ? $arParams[\'TEMPLATE_THEME\'] : \'\'),\n		\'LABEL_PROP\' => $arParams[\'LABEL_PROP\'],\n		\'ADD_PICT_PROP\' => $arParams[\'ADD_PICT_PROP\'],\n		\'PRODUCT_DISPLAY_MODE\' => $arParams[\'PRODUCT_DISPLAY_MODE\'],\n\n		\'OFFER_ADD_PICT_PROP\' => $arParams[\'OFFER_ADD_PICT_PROP\'],\n		\'OFFER_TREE_PROPS\' => $arParams[\'OFFER_TREE_PROPS\'],\n		\'PRODUCT_SUBSCRIPTION\' => $arParams[\'PRODUCT_SUBSCRIPTION\'],\n		\'SHOW_DISCOUNT_PERCENT\' => $arParams[\'SHOW_DISCOUNT_PERCENT\'],\n		\'SHOW_OLD_PRICE\' => $arParams[\'SHOW_OLD_PRICE\'],\n		\'MESS_BTN_BUY\' => $arParams[\'MESS_BTN_BUY\'],\n		\'MESS_BTN_ADD_TO_BASKET\' => $arParams[\'MESS_BTN_ADD_TO_BASKET\'],\n		\'MESS_BTN_SUBSCRIBE\' => $arParams[\'MESS_BTN_SUBSCRIBE\'],\n		\'MESS_BTN_DETAIL\' => $arParams[\'MESS_BTN_DETAIL\'],\n		\'MESS_NOT_AVAILABLE\' => $arParams[\'MESS_NOT_AVAILABLE\'],\n		\'ADD_TO_BASKET_ACTION\' => $basketAction,\n		\'SHOW_CLOSE_POPUP\' => isset($arParams[\'COMMON_SHOW_CLOSE_POPUP\']) ? $arParams[\'COMMON_SHOW_CLOSE_POPUP\'] : \'\',\n		\'COMPARE_PATH\' => $arResult[\'FOLDER\'].$arResult[\'URL_TEMPLATES\'][\'compare\']\n	),\n	$component\n);?><?\n	unset($basketAction);\n}\n?>\";}',1,1586798482),('19d71177b4ae3ae36ba48072f4cf828ad','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:42:\"/var/www/data/www/chastnym-licam/index.php\";s:7:\"content\";s:4929:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Частным лицам\");\n?><?$APPLICATION->IncludeComponent(\n	\"bitrix:catalog\", \n	\".default_old1\", \n	array(\n		\"ACTION_VARIABLE\" => \"action\",\n		\"ADD_ELEMENT_CHAIN\" => \"N\",\n		\"ADD_PROPERTIES_TO_BASKET\" => \"Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"BASKET_URL\" => \"/personal/basket.php\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"COMPATIBLE_MODE\" => \"Y\",\n		\"DETAIL_ADD_DETAIL_TO_SLIDER\" => \"N\",\n		\"DETAIL_BACKGROUND_IMAGE\" => \"-\",\n		\"DETAIL_BRAND_USE\" => \"N\",\n		\"DETAIL_BROWSER_TITLE\" => \"-\",\n		\"DETAIL_CHECK_SECTION_ID_VARIABLE\" => \"N\",\n		\"DETAIL_DETAIL_PICTURE_MODE\" => \"MAGNIFIER\",\n		\"DETAIL_DISPLAY_NAME\" => \"Y\",\n		\"DETAIL_DISPLAY_PREVIEW_TEXT_MODE\" => \"E\",\n		\"DETAIL_IMAGE_RESOLUTION\" => \"16by9\",\n		\"DETAIL_META_DESCRIPTION\" => \"-\",\n		\"DETAIL_META_KEYWORDS\" => \"-\",\n		\"DETAIL_PRODUCT_INFO_BLOCK_ORDER\" => \"sku,props\",\n		\"DETAIL_PRODUCT_PAY_BLOCK_ORDER\" => \"rating,price,priceRanges,quantityLimit,quantity,buttons\",\n		\"DETAIL_SET_CANONICAL_URL\" => \"N\",\n		\"DETAIL_SHOW_POPULAR\" => \"Y\",\n		\"DETAIL_SHOW_SLIDER\" => \"N\",\n		\"DETAIL_SHOW_VIEWED\" => \"Y\",\n		\"DETAIL_STRICT_SECTION_CHECK\" => \"N\",\n		\"DETAIL_USE_COMMENTS\" => \"N\",\n		\"DETAIL_USE_VOTE_RATING\" => \"N\",\n		\"DISABLE_INIT_JS_IN_COMPONENT\" => \"N\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"ELEMENT_SORT_FIELD\" => \"sort\",\n		\"ELEMENT_SORT_FIELD2\" => \"id\",\n		\"ELEMENT_SORT_ORDER\" => \"asc\",\n		\"ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"FILTER_HIDE_ON_MOBILE\" => \"N\",\n		\"FILTER_VIEW_MODE\" => \"VERTICAL\",\n		\"IBLOCK_ID\" => \"3\",\n		\"IBLOCK_TYPE\" => \"catalog\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"INSTANT_RELOAD\" => \"N\",\n		\"LAZY_LOAD\" => \"N\",\n		\"LINE_ELEMENT_COUNT\" => \"3\",\n		\"LINK_ELEMENTS_URL\" => \"link.php?PARENT_ELEMENT_ID=#ELEMENT_ID#\",\n		\"LINK_IBLOCK_ID\" => \"\",\n		\"LINK_IBLOCK_TYPE\" => \"\",\n		\"LINK_PROPERTY_SID\" => \"\",\n		\"LIST_BROWSER_TITLE\" => \"-\",\n		\"LIST_META_DESCRIPTION\" => \"-\",\n		\"LIST_META_KEYWORDS\" => \"-\",\n		\"LOAD_ON_SCROLL\" => \"N\",\n		\"MESSAGE_404\" => \"\",\n		\"MESS_BTN_ADD_TO_BASKET\" => \"В корзину\",\n		\"MESS_BTN_BUY\" => \"Купить\",\n		\"MESS_BTN_COMPARE\" => \"Сравнение\",\n		\"MESS_BTN_DETAIL\" => \"Подробнее\",\n		\"MESS_BTN_SUBSCRIBE\" => \"Подписаться\",\n		\"MESS_NOT_AVAILABLE\" => \"Нет в наличии\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Товары\",\n		\"PAGE_ELEMENT_COUNT\" => \"30\",\n		\"PARTIAL_PRODUCT_PROPERTIES\" => \"N\",\n		\"PRICE_CODE\" => array(\n		),\n		\"PRICE_VAT_INCLUDE\" => \"Y\",\n		\"PRICE_VAT_SHOW_VALUE\" => \"N\",\n		\"PRODUCT_ID_VARIABLE\" => \"id\",\n		\"PRODUCT_PROPS_VARIABLE\" => \"prop\",\n		\"PRODUCT_QUANTITY_VARIABLE\" => \"quantity\",\n		\"SEARCH_CHECK_DATES\" => \"Y\",\n		\"SEARCH_NO_WORD_LOGIC\" => \"Y\",\n		\"SEARCH_PAGE_RESULT_COUNT\" => \"50\",\n		\"SEARCH_RESTART\" => \"N\",\n		\"SEARCH_USE_LANGUAGE_GUESS\" => \"Y\",\n		\"SECTIONS_SHOW_PARENT_NAME\" => \"Y\",\n		\"SECTIONS_VIEW_MODE\" => \"LIST\",\n		\"SECTION_BACKGROUND_IMAGE\" => \"-\",\n		\"SECTION_COUNT_ELEMENTS\" => \"Y\",\n		\"SECTION_ID_VARIABLE\" => \"SECTION_ID\",\n		\"SECTION_TOP_DEPTH\" => \"2\",\n		\"SEF_MODE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SHOW_DEACTIVATED\" => \"N\",\n		\"SHOW_PRICE_COUNT\" => \"1\",\n		\"SHOW_TOP_ELEMENTS\" => \"Y\",\n		\"SIDEBAR_DETAIL_SHOW\" => \"N\",\n		\"SIDEBAR_PATH\" => \"\",\n		\"SIDEBAR_SECTION_SHOW\" => \"Y\",\n		\"TEMPLATE_THEME\" => \"blue\",\n		\"TOP_ELEMENT_COUNT\" => \"9\",\n		\"TOP_ELEMENT_SORT_FIELD\" => \"sort\",\n		\"TOP_ELEMENT_SORT_FIELD2\" => \"id\",\n		\"TOP_ELEMENT_SORT_ORDER\" => \"asc\",\n		\"TOP_ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"TOP_LINE_ELEMENT_COUNT\" => \"3\",\n		\"TOP_VIEW_MODE\" => \"SECTION\",\n		\"USER_CONSENT\" => \"N\",\n		\"USER_CONSENT_ID\" => \"0\",\n		\"USER_CONSENT_IS_CHECKED\" => \"Y\",\n		\"USER_CONSENT_IS_LOADED\" => \"N\",\n		\"USE_COMPARE\" => \"N\",\n		\"USE_ELEMENT_COUNTER\" => \"Y\",\n		\"USE_ENHANCED_ECOMMERCE\" => \"N\",\n		\"USE_FILTER\" => \"N\",\n		\"USE_MAIN_ELEMENT_SECTION\" => \"N\",\n		\"USE_PRICE_COUNT\" => \"N\",\n		\"USE_PRODUCT_QUANTITY\" => \"N\",\n		\"USE_STORE\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \".default_old1\",\n		\"ADD_PICT_PROP\" => \"-\",\n		\"LABEL_PROP\" => \"-\",\n		\"SEF_FOLDER\" => \"/chastnym-licam/\",\n		\"SEF_URL_TEMPLATES\" => array(\n			\"sections\" => \"index.php\",\n			\"section\" => \"/#SECTION_CODE_PATH#/\",\n			\"element\" => \"/#SECTION_CODE_PATH#/#ELEMENT_CODE#/\",\n			\"compare\" => \"compare.php?action=#ACTION_CODE#\",\n			\"smart_filter\" => \"#SECTION_ID#/filter/#SMART_FILTER_PATH#/apply/\",\n		),\n		\"VARIABLE_ALIASES\" => array(\n			\"compare\" => array(\n				\"ACTION_CODE\" => \"action\",\n			),\n		)\n	),\n	false\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1586799098),('1a7f2273ff4766605b8a798313b215020','fileman','new_section','CFileman::UndoNewSection','a:4:{s:7:\"absPath\";s:32:\"/var/www/data/www/chastnym-licam\";s:4:\"path\";s:15:\"/chastnym-licam\";s:4:\"site\";s:2:\"s1\";s:4:\"menu\";a:3:{s:8:\"menuFile\";s:15:\"/.left.menu.php\";s:8:\"menuName\";s:25:\"Частным лицам\";s:8:\"menuPath\";s:16:\"/chastnym-licam/\";}}',1,1586797688),('1c594f0c6612d8692cdbb25adee022e34','fileman','edit_file','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:42:\"/var/www/data/www/chastnym-licam/index.php\";s:7:\"content\";s:2425:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Частным лицам\");\n?><?$APPLICATION->IncludeComponent(\n	\"bitrix:news\", \n	\".default\", \n	array(\n		\"COMPONENT_TEMPLATE\" => \".default\",\n		\"IBLOCK_TYPE\" => \"catalog\",\n		\"IBLOCK_ID\" => \"3\",\n		\"NEWS_COUNT\" => \"20\",\n		\"USE_SEARCH\" => \"N\",\n		\"USE_RSS\" => \"N\",\n		\"USE_RATING\" => \"N\",\n		\"USE_CATEGORIES\" => \"N\",\n		\"USE_FILTER\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"CHECK_DATES\" => \"Y\",\n		\"SEF_MODE\" => \"N\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"ADD_ELEMENT_CHAIN\" => \"N\",\n		\"USE_PERMISSIONS\" => \"N\",\n		\"STRICT_SECTION_CHECK\" => \"N\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"USE_SHARE\" => \"N\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"LIST_ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"LIST_FIELD_CODE\" => array(\n			0 => \"\",\n			1 => \"\",\n		),\n		\"LIST_PROPERTY_CODE\" => array(\n			0 => \"\",\n			1 => \"\",\n		),\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"META_KEYWORDS\" => \"-\",\n		\"META_DESCRIPTION\" => \"-\",\n		\"BROWSER_TITLE\" => \"-\",\n		\"DETAIL_SET_CANONICAL_URL\" => \"N\",\n		\"DETAIL_ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"DETAIL_FIELD_CODE\" => array(\n			0 => \"\",\n			1 => \"\",\n		),\n		\"DETAIL_PROPERTY_CODE\" => array(\n			0 => \"\",\n			1 => \"\",\n		),\n		\"DETAIL_DISPLAY_TOP_PAGER\" => \"N\",\n		\"DETAIL_DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DETAIL_PAGER_TITLE\" => \"Страница\",\n		\"DETAIL_PAGER_TEMPLATE\" => \"\",\n		\"DETAIL_PAGER_SHOW_ALL\" => \"Y\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SHOW_404\" => \"N\",\n		\"MESSAGE_404\" => \"\",\n		\"VARIABLE_ALIASES\" => array(\n			\"SECTION_ID\" => \"SECTION_ID\",\n			\"ELEMENT_ID\" => \"ELEMENT_ID\",\n		)\n	),\n	false\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1586798197),('1d02c2b10a2ad520a522c9d76e7ef1659','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:42:\"/var/www/data/www/chastnym-licam/index.php\";s:7:\"content\";s:11932:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Частным лицам\");\n?><?$APPLICATION->IncludeComponent(\"bitrix:catalog\", \".default_old1\", Array(\n	\"ACTION_VARIABLE\" => \"action\",	// Название переменной, в которой передается действие\n		\"ADD_ELEMENT_CHAIN\" => \"N\",	// Включать название элемента в цепочку навигации\n		\"ADD_PROPERTIES_TO_BASKET\" => \"Y\",	// Добавлять в корзину свойства товаров и предложений\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",	// Включать раздел в цепочку навигации\n		\"AJAX_MODE\" => \"N\",	// Включить режим AJAX\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",	// Дополнительный идентификатор\n		\"AJAX_OPTION_HISTORY\" => \"N\",	// Включить эмуляцию навигации браузера\n		\"AJAX_OPTION_JUMP\" => \"N\",	// Включить прокрутку к началу компонента\n		\"AJAX_OPTION_STYLE\" => \"Y\",	// Включить подгрузку стилей\n		\"BASKET_URL\" => \"/personal/basket.php\",	// URL, ведущий на страницу с корзиной покупателя\n		\"CACHE_FILTER\" => \"N\",	// Кешировать при установленном фильтре\n		\"CACHE_GROUPS\" => \"Y\",	// Учитывать права доступа\n		\"CACHE_TIME\" => \"36000000\",	// Время кеширования (сек.)\n		\"CACHE_TYPE\" => \"A\",	// Тип кеширования\n		\"COMPATIBLE_MODE\" => \"Y\",	// Включить режим совместимости\n		\"DETAIL_ADD_DETAIL_TO_SLIDER\" => \"N\",	// Добавлять детальную картинку в слайдер\n		\"DETAIL_BACKGROUND_IMAGE\" => \"-\",	// Установить фоновую картинку для шаблона из свойства\n		\"DETAIL_BRAND_USE\" => \"N\",	// Использовать компонент \"Бренды\"\n		\"DETAIL_BROWSER_TITLE\" => \"-\",	// Установить заголовок окна браузера из свойства\n		\"DETAIL_CHECK_SECTION_ID_VARIABLE\" => \"N\",	// Использовать код группы из переменной, если не задан раздел элемента\n		\"DETAIL_DETAIL_PICTURE_MODE\" => \"MAGNIFIER\",	// Режим показа детальной картинки\n		\"DETAIL_DISPLAY_NAME\" => \"Y\",	// Выводить название элемента\n		\"DETAIL_DISPLAY_PREVIEW_TEXT_MODE\" => \"E\",	// Показ описания для анонса на детальной странице\n		\"DETAIL_IMAGE_RESOLUTION\" => \"16by9\",\n		\"DETAIL_META_DESCRIPTION\" => \"-\",	// Установить описание страницы из свойства\n		\"DETAIL_META_KEYWORDS\" => \"-\",	// Установить ключевые слова страницы из свойства\n		\"DETAIL_PRODUCT_INFO_BLOCK_ORDER\" => \"sku,props\",\n		\"DETAIL_PRODUCT_PAY_BLOCK_ORDER\" => \"rating,price,priceRanges,quantityLimit,quantity,buttons\",\n		\"DETAIL_SET_CANONICAL_URL\" => \"N\",	// Устанавливать канонический URL\n		\"DETAIL_SHOW_POPULAR\" => \"Y\",\n		\"DETAIL_SHOW_SLIDER\" => \"N\",\n		\"DETAIL_SHOW_VIEWED\" => \"Y\",\n		\"DETAIL_STRICT_SECTION_CHECK\" => \"N\",	// Строгая проверка раздела для детального показа элемента\n		\"DETAIL_USE_COMMENTS\" => \"N\",	// Включить отзывы о товаре\n		\"DETAIL_USE_VOTE_RATING\" => \"N\",	// Включить рейтинг товара\n		\"DISABLE_INIT_JS_IN_COMPONENT\" => \"N\",	// Не подключать js-библиотеки в компоненте\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",	// Выводить под списком\n		\"DISPLAY_TOP_PAGER\" => \"N\",	// Выводить над списком\n		\"ELEMENT_SORT_FIELD\" => \"sort\",	// По какому полю сортируем товары в разделе\n		\"ELEMENT_SORT_FIELD2\" => \"id\",	// Поле для второй сортировки товаров в разделе\n		\"ELEMENT_SORT_ORDER\" => \"asc\",	// Порядок сортировки товаров в разделе\n		\"ELEMENT_SORT_ORDER2\" => \"desc\",	// Порядок второй сортировки товаров в разделе\n		\"FILTER_HIDE_ON_MOBILE\" => \"N\",\n		\"FILTER_VIEW_MODE\" => \"VERTICAL\",	// Вид отображения умного фильтра\n		\"IBLOCK_ID\" => \"3\",	// Инфоблок\n		\"IBLOCK_TYPE\" => \"catalog\",	// Тип инфоблока\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",	// Показывать элементы подразделов раздела\n		\"INSTANT_RELOAD\" => \"N\",\n		\"LAZY_LOAD\" => \"N\",\n		\"LINE_ELEMENT_COUNT\" => \"3\",	// Количество элементов, выводимых в одной строке таблицы\n		\"LINK_ELEMENTS_URL\" => \"link.php?PARENT_ELEMENT_ID=#ELEMENT_ID#\",	// URL на страницу, где будет показан список связанных элементов\n		\"LINK_IBLOCK_ID\" => \"\",	// ID инфоблока, элементы которого связаны с текущим элементом\n		\"LINK_IBLOCK_TYPE\" => \"\",	// Тип инфоблока, элементы которого связаны с текущим элементом\n		\"LINK_PROPERTY_SID\" => \"\",	// Свойство, в котором хранится связь\n		\"LIST_BROWSER_TITLE\" => \"-\",	// Установить заголовок окна браузера из свойства раздела\n		\"LIST_META_DESCRIPTION\" => \"-\",	// Установить описание страницы из свойства раздела\n		\"LIST_META_KEYWORDS\" => \"-\",	// Установить ключевые слова страницы из свойства раздела\n		\"LOAD_ON_SCROLL\" => \"N\",\n		\"MESSAGE_404\" => \"\",	// Сообщение для показа (по умолчанию из компонента)\n		\"MESS_BTN_ADD_TO_BASKET\" => \"В корзину\",	// Текст кнопки \"Добавить в корзину\"\n		\"MESS_BTN_BUY\" => \"Купить\",	// Текст кнопки \"Купить\"\n		\"MESS_BTN_COMPARE\" => \"Сравнение\",	// Текст кнопки \"Сравнение\"\n		\"MESS_BTN_DETAIL\" => \"Подробнее\",	// Текст кнопки \"Подробнее\"\n		\"MESS_BTN_SUBSCRIBE\" => \"Подписаться\",\n		\"MESS_NOT_AVAILABLE\" => \"Нет в наличии\",	// Сообщение об отсутствии товара\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",	// Включить обработку ссылок\n		\"PAGER_DESC_NUMBERING\" => \"N\",	// Использовать обратную навигацию\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",	// Время кеширования страниц для обратной навигации\n		\"PAGER_SHOW_ALL\" => \"N\",	// Показывать ссылку \"Все\"\n		\"PAGER_SHOW_ALWAYS\" => \"N\",	// Выводить всегда\n		\"PAGER_TEMPLATE\" => \".default\",	// Шаблон постраничной навигации\n		\"PAGER_TITLE\" => \"Товары\",	// Название категорий\n		\"PAGE_ELEMENT_COUNT\" => \"30\",	// Количество элементов на странице\n		\"PARTIAL_PRODUCT_PROPERTIES\" => \"N\",	// Разрешить добавлять в корзину товары, у которых заполнены не все характеристики\n		\"PRICE_CODE\" => \"\",	// Тип цены\n		\"PRICE_VAT_INCLUDE\" => \"Y\",	// Включать НДС в цену\n		\"PRICE_VAT_SHOW_VALUE\" => \"N\",	// Отображать значение НДС\n		\"PRODUCT_ID_VARIABLE\" => \"id\",	// Название переменной, в которой передается код товара для покупки\n		\"PRODUCT_PROPS_VARIABLE\" => \"prop\",	// Название переменной, в которой передаются характеристики товара\n		\"PRODUCT_QUANTITY_VARIABLE\" => \"quantity\",	// Название переменной, в которой передается количество товара\n		\"SEARCH_CHECK_DATES\" => \"Y\",\n		\"SEARCH_NO_WORD_LOGIC\" => \"Y\",\n		\"SEARCH_PAGE_RESULT_COUNT\" => \"50\",\n		\"SEARCH_RESTART\" => \"N\",\n		\"SEARCH_USE_LANGUAGE_GUESS\" => \"Y\",\n		\"SECTIONS_SHOW_PARENT_NAME\" => \"Y\",	// Показывать название раздела\n		\"SECTIONS_VIEW_MODE\" => \"LIST\",	// Вид списка подразделов\n		\"SECTION_BACKGROUND_IMAGE\" => \"-\",	// Установить фоновую картинку для шаблона из свойства\n		\"SECTION_COUNT_ELEMENTS\" => \"Y\",	// Показывать количество элементов в разделе\n		\"SECTION_ID_VARIABLE\" => \"SECTION_ID\",	// Название переменной, в которой передается код группы\n		\"SECTION_TOP_DEPTH\" => \"2\",	// Максимальная отображаемая глубина разделов\n		\"SEF_MODE\" => \"N\",	// Включить поддержку ЧПУ\n		\"SET_LAST_MODIFIED\" => \"N\",	// Устанавливать в заголовках ответа время модификации страницы\n		\"SET_STATUS_404\" => \"N\",	// Устанавливать статус 404\n		\"SET_TITLE\" => \"Y\",	// Устанавливать заголовок страницы\n		\"SHOW_404\" => \"N\",	// Показ специальной страницы\n		\"SHOW_DEACTIVATED\" => \"N\",	// Показывать деактивированные товары\n		\"SHOW_PRICE_COUNT\" => \"1\",	// Выводить цены для количества\n		\"SHOW_TOP_ELEMENTS\" => \"Y\",	// Выводить топ элементов\n		\"SIDEBAR_DETAIL_SHOW\" => \"N\",\n		\"SIDEBAR_PATH\" => \"\",\n		\"SIDEBAR_SECTION_SHOW\" => \"Y\",\n		\"TEMPLATE_THEME\" => \"blue\",	// Цветовая тема\n		\"TOP_ELEMENT_COUNT\" => \"9\",	// Количество выводимых элементов\n		\"TOP_ELEMENT_SORT_FIELD\" => \"sort\",	// По какому полю сортируем товары в разделе\n		\"TOP_ELEMENT_SORT_FIELD2\" => \"id\",	// Поле для второй сортировки товаров в разделе\n		\"TOP_ELEMENT_SORT_ORDER\" => \"asc\",	// Порядок сортировки товаров в разделе\n		\"TOP_ELEMENT_SORT_ORDER2\" => \"desc\",	// Порядок второй сортировки товаров в разделе\n		\"TOP_LINE_ELEMENT_COUNT\" => \"3\",	// Количество элементов, выводимых в одной строке таблицы\n		\"TOP_VIEW_MODE\" => \"SECTION\",	// Показ элементов top\'а\n		\"USER_CONSENT\" => \"N\",	// Запрашивать согласие\n		\"USER_CONSENT_ID\" => \"0\",	// Соглашение\n		\"USER_CONSENT_IS_CHECKED\" => \"Y\",	// Галка по умолчанию проставлена\n		\"USER_CONSENT_IS_LOADED\" => \"N\",	// Загружать текст сразу\n		\"USE_COMPARE\" => \"N\",	// Разрешить сравнение товаров\n		\"USE_ELEMENT_COUNTER\" => \"Y\",	// Использовать счетчик просмотров\n		\"USE_ENHANCED_ECOMMERCE\" => \"N\",\n		\"USE_FILTER\" => \"N\",	// Показывать фильтр\n		\"USE_MAIN_ELEMENT_SECTION\" => \"N\",	// Использовать основной раздел для показа элемента\n		\"USE_PRICE_COUNT\" => \"N\",	// Использовать вывод цен с диапазонами\n		\"USE_PRODUCT_QUANTITY\" => \"N\",	// Разрешить указание количества товара\n		\"USE_STORE\" => \"N\",	// Показывать блок \"Количество товара на складе\"\n		\"COMPONENT_TEMPLATE\" => \".default_old\",\n		\"ADD_PICT_PROP\" => \"-\",	// Дополнительная картинка основного товара\n		\"LABEL_PROP\" => \"-\",	// Свойство меток товара\n		\"VARIABLE_ALIASES\" => array(\n			\"ELEMENT_ID\" => \"ELEMENT_ID\",\n			\"SECTION_ID\" => \"SECTION_ID\",\n		)\n	),\n	false\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1586798929),('1e4284683bf8e18c5310a3e3c2ce0835b','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:42:\"/var/www/data/www/chastnym-licam/index.php\";s:7:\"content\";s:4555:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Частным лицам\");\n?><?$APPLICATION->IncludeComponent(\n	\"bitrix:catalog\", \n	\".default_old\", \n	array(\n		\"ACTION_VARIABLE\" => \"action\",\n		\"ADD_ELEMENT_CHAIN\" => \"N\",\n		\"ADD_PROPERTIES_TO_BASKET\" => \"Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"BASKET_URL\" => \"/personal/basket.php\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"COMPATIBLE_MODE\" => \"Y\",\n		\"DETAIL_ADD_DETAIL_TO_SLIDER\" => \"N\",\n		\"DETAIL_BACKGROUND_IMAGE\" => \"-\",\n		\"DETAIL_BRAND_USE\" => \"N\",\n		\"DETAIL_BROWSER_TITLE\" => \"-\",\n		\"DETAIL_CHECK_SECTION_ID_VARIABLE\" => \"N\",\n		\"DETAIL_DETAIL_PICTURE_MODE\" => \"MAGNIFIER\",\n		\"DETAIL_DISPLAY_NAME\" => \"Y\",\n		\"DETAIL_DISPLAY_PREVIEW_TEXT_MODE\" => \"E\",\n		\"DETAIL_IMAGE_RESOLUTION\" => \"16by9\",\n		\"DETAIL_META_DESCRIPTION\" => \"-\",\n		\"DETAIL_META_KEYWORDS\" => \"-\",\n		\"DETAIL_PRODUCT_INFO_BLOCK_ORDER\" => \"sku,props\",\n		\"DETAIL_PRODUCT_PAY_BLOCK_ORDER\" => \"rating,price,priceRanges,quantityLimit,quantity,buttons\",\n		\"DETAIL_SET_CANONICAL_URL\" => \"N\",\n		\"DETAIL_SHOW_POPULAR\" => \"Y\",\n		\"DETAIL_SHOW_SLIDER\" => \"N\",\n		\"DETAIL_SHOW_VIEWED\" => \"Y\",\n		\"DETAIL_STRICT_SECTION_CHECK\" => \"N\",\n		\"DETAIL_USE_COMMENTS\" => \"N\",\n		\"DETAIL_USE_VOTE_RATING\" => \"N\",\n		\"DISABLE_INIT_JS_IN_COMPONENT\" => \"N\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"ELEMENT_SORT_FIELD\" => \"sort\",\n		\"ELEMENT_SORT_FIELD2\" => \"id\",\n		\"ELEMENT_SORT_ORDER\" => \"asc\",\n		\"ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"FILTER_HIDE_ON_MOBILE\" => \"N\",\n		\"FILTER_VIEW_MODE\" => \"VERTICAL\",\n		\"IBLOCK_ID\" => \"\",\n		\"IBLOCK_TYPE\" => \"news\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"INSTANT_RELOAD\" => \"N\",\n		\"LAZY_LOAD\" => \"N\",\n		\"LINE_ELEMENT_COUNT\" => \"3\",\n		\"LINK_ELEMENTS_URL\" => \"link.php?PARENT_ELEMENT_ID=#ELEMENT_ID#\",\n		\"LINK_IBLOCK_ID\" => \"\",\n		\"LINK_IBLOCK_TYPE\" => \"\",\n		\"LINK_PROPERTY_SID\" => \"\",\n		\"LIST_BROWSER_TITLE\" => \"-\",\n		\"LIST_META_DESCRIPTION\" => \"-\",\n		\"LIST_META_KEYWORDS\" => \"-\",\n		\"LOAD_ON_SCROLL\" => \"N\",\n		\"MESSAGE_404\" => \"\",\n		\"MESS_BTN_ADD_TO_BASKET\" => \"В корзину\",\n		\"MESS_BTN_BUY\" => \"Купить\",\n		\"MESS_BTN_COMPARE\" => \"Сравнение\",\n		\"MESS_BTN_DETAIL\" => \"Подробнее\",\n		\"MESS_BTN_SUBSCRIBE\" => \"Подписаться\",\n		\"MESS_NOT_AVAILABLE\" => \"Нет в наличии\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Товары\",\n		\"PAGE_ELEMENT_COUNT\" => \"30\",\n		\"PARTIAL_PRODUCT_PROPERTIES\" => \"N\",\n		\"PRICE_CODE\" => array(\n		),\n		\"PRICE_VAT_INCLUDE\" => \"Y\",\n		\"PRICE_VAT_SHOW_VALUE\" => \"N\",\n		\"PRODUCT_ID_VARIABLE\" => \"id\",\n		\"PRODUCT_PROPS_VARIABLE\" => \"prop\",\n		\"PRODUCT_QUANTITY_VARIABLE\" => \"quantity\",\n		\"SEARCH_CHECK_DATES\" => \"Y\",\n		\"SEARCH_NO_WORD_LOGIC\" => \"Y\",\n		\"SEARCH_PAGE_RESULT_COUNT\" => \"50\",\n		\"SEARCH_RESTART\" => \"N\",\n		\"SEARCH_USE_LANGUAGE_GUESS\" => \"Y\",\n		\"SECTIONS_SHOW_PARENT_NAME\" => \"Y\",\n		\"SECTIONS_VIEW_MODE\" => \"LIST\",\n		\"SECTION_BACKGROUND_IMAGE\" => \"-\",\n		\"SECTION_COUNT_ELEMENTS\" => \"Y\",\n		\"SECTION_ID_VARIABLE\" => \"SECTION_ID\",\n		\"SECTION_TOP_DEPTH\" => \"2\",\n		\"SEF_MODE\" => \"N\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SHOW_DEACTIVATED\" => \"N\",\n		\"SHOW_PRICE_COUNT\" => \"1\",\n		\"SHOW_TOP_ELEMENTS\" => \"Y\",\n		\"SIDEBAR_DETAIL_SHOW\" => \"N\",\n		\"SIDEBAR_PATH\" => \"\",\n		\"SIDEBAR_SECTION_SHOW\" => \"Y\",\n		\"TEMPLATE_THEME\" => \"blue\",\n		\"TOP_ELEMENT_COUNT\" => \"9\",\n		\"TOP_ELEMENT_SORT_FIELD\" => \"sort\",\n		\"TOP_ELEMENT_SORT_FIELD2\" => \"id\",\n		\"TOP_ELEMENT_SORT_ORDER\" => \"asc\",\n		\"TOP_ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"TOP_LINE_ELEMENT_COUNT\" => \"3\",\n		\"TOP_VIEW_MODE\" => \"SECTION\",\n		\"USER_CONSENT\" => \"N\",\n		\"USER_CONSENT_ID\" => \"0\",\n		\"USER_CONSENT_IS_CHECKED\" => \"Y\",\n		\"USER_CONSENT_IS_LOADED\" => \"N\",\n		\"USE_COMPARE\" => \"N\",\n		\"USE_ELEMENT_COUNTER\" => \"Y\",\n		\"USE_ENHANCED_ECOMMERCE\" => \"N\",\n		\"USE_FILTER\" => \"N\",\n		\"USE_MAIN_ELEMENT_SECTION\" => \"N\",\n		\"USE_PRICE_COUNT\" => \"N\",\n		\"USE_PRODUCT_QUANTITY\" => \"N\",\n		\"USE_STORE\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \".default_old\",\n		\"VARIABLE_ALIASES\" => array(\n			\"ELEMENT_ID\" => \"ELEMENT_ID\",\n			\"SECTION_ID\" => \"SECTION_ID\",\n		)\n	),\n	false\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1586798240),('1f3dfa9b11a2a27a561548c6024283eff','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:42:\"/var/www/data/www/chastnym-licam/index.php\";s:7:\"content\";s:4487:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Частным лицам\");\n?><?$APPLICATION->IncludeComponent(\n	\"bitrix:catalog\",\n	\"\",\n	Array(\n		\"ACTION_VARIABLE\" => \"action\",\n		\"ADD_ELEMENT_CHAIN\" => \"N\",\n		\"ADD_PROPERTIES_TO_BASKET\" => \"Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"BASKET_URL\" => \"/personal/basket.php\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"COMPATIBLE_MODE\" => \"Y\",\n		\"DETAIL_ADD_DETAIL_TO_SLIDER\" => \"N\",\n		\"DETAIL_BACKGROUND_IMAGE\" => \"-\",\n		\"DETAIL_BRAND_USE\" => \"N\",\n		\"DETAIL_BROWSER_TITLE\" => \"-\",\n		\"DETAIL_CHECK_SECTION_ID_VARIABLE\" => \"N\",\n		\"DETAIL_DETAIL_PICTURE_MODE\" => array(\"POPUP\",\"MAGNIFIER\"),\n		\"DETAIL_DISPLAY_NAME\" => \"Y\",\n		\"DETAIL_DISPLAY_PREVIEW_TEXT_MODE\" => \"E\",\n		\"DETAIL_IMAGE_RESOLUTION\" => \"16by9\",\n		\"DETAIL_META_DESCRIPTION\" => \"-\",\n		\"DETAIL_META_KEYWORDS\" => \"-\",\n		\"DETAIL_PRODUCT_INFO_BLOCK_ORDER\" => \"sku,props\",\n		\"DETAIL_PRODUCT_PAY_BLOCK_ORDER\" => \"rating,price,priceRanges,quantityLimit,quantity,buttons\",\n		\"DETAIL_SET_CANONICAL_URL\" => \"N\",\n		\"DETAIL_SHOW_POPULAR\" => \"Y\",\n		\"DETAIL_SHOW_SLIDER\" => \"N\",\n		\"DETAIL_SHOW_VIEWED\" => \"Y\",\n		\"DETAIL_STRICT_SECTION_CHECK\" => \"N\",\n		\"DETAIL_USE_COMMENTS\" => \"N\",\n		\"DETAIL_USE_VOTE_RATING\" => \"N\",\n		\"DISABLE_INIT_JS_IN_COMPONENT\" => \"N\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"ELEMENT_SORT_FIELD\" => \"sort\",\n		\"ELEMENT_SORT_FIELD2\" => \"id\",\n		\"ELEMENT_SORT_ORDER\" => \"asc\",\n		\"ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"FILTER_HIDE_ON_MOBILE\" => \"N\",\n		\"FILTER_VIEW_MODE\" => \"VERTICAL\",\n		\"IBLOCK_ID\" => \"\",\n		\"IBLOCK_TYPE\" => \"news\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"INSTANT_RELOAD\" => \"N\",\n		\"LAZY_LOAD\" => \"N\",\n		\"LINE_ELEMENT_COUNT\" => \"3\",\n		\"LINK_ELEMENTS_URL\" => \"link.php?PARENT_ELEMENT_ID=#ELEMENT_ID#\",\n		\"LINK_IBLOCK_ID\" => \"\",\n		\"LINK_IBLOCK_TYPE\" => \"\",\n		\"LINK_PROPERTY_SID\" => \"\",\n		\"LIST_BROWSER_TITLE\" => \"-\",\n		\"LIST_META_DESCRIPTION\" => \"-\",\n		\"LIST_META_KEYWORDS\" => \"-\",\n		\"LOAD_ON_SCROLL\" => \"N\",\n		\"MESSAGE_404\" => \"\",\n		\"MESS_BTN_ADD_TO_BASKET\" => \"В корзину\",\n		\"MESS_BTN_BUY\" => \"Купить\",\n		\"MESS_BTN_COMPARE\" => \"Сравнение\",\n		\"MESS_BTN_DETAIL\" => \"Подробнее\",\n		\"MESS_BTN_SUBSCRIBE\" => \"Подписаться\",\n		\"MESS_NOT_AVAILABLE\" => \"Нет в наличии\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Товары\",\n		\"PAGE_ELEMENT_COUNT\" => \"30\",\n		\"PARTIAL_PRODUCT_PROPERTIES\" => \"N\",\n		\"PRICE_CODE\" => array(),\n		\"PRICE_VAT_INCLUDE\" => \"Y\",\n		\"PRICE_VAT_SHOW_VALUE\" => \"N\",\n		\"PRODUCT_ID_VARIABLE\" => \"id\",\n		\"PRODUCT_PROPS_VARIABLE\" => \"prop\",\n		\"PRODUCT_QUANTITY_VARIABLE\" => \"quantity\",\n		\"SEARCH_CHECK_DATES\" => \"Y\",\n		\"SEARCH_NO_WORD_LOGIC\" => \"Y\",\n		\"SEARCH_PAGE_RESULT_COUNT\" => \"50\",\n		\"SEARCH_RESTART\" => \"N\",\n		\"SEARCH_USE_LANGUAGE_GUESS\" => \"Y\",\n		\"SECTIONS_SHOW_PARENT_NAME\" => \"Y\",\n		\"SECTIONS_VIEW_MODE\" => \"LIST\",\n		\"SECTION_BACKGROUND_IMAGE\" => \"-\",\n		\"SECTION_COUNT_ELEMENTS\" => \"Y\",\n		\"SECTION_ID_VARIABLE\" => \"SECTION_ID\",\n		\"SECTION_TOP_DEPTH\" => \"2\",\n		\"SEF_MODE\" => \"N\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SHOW_DEACTIVATED\" => \"N\",\n		\"SHOW_PRICE_COUNT\" => \"1\",\n		\"SHOW_TOP_ELEMENTS\" => \"Y\",\n		\"SIDEBAR_DETAIL_SHOW\" => \"N\",\n		\"SIDEBAR_PATH\" => \"\",\n		\"SIDEBAR_SECTION_SHOW\" => \"Y\",\n		\"TEMPLATE_THEME\" => \"blue\",\n		\"TOP_ELEMENT_COUNT\" => \"9\",\n		\"TOP_ELEMENT_SORT_FIELD\" => \"sort\",\n		\"TOP_ELEMENT_SORT_FIELD2\" => \"id\",\n		\"TOP_ELEMENT_SORT_ORDER\" => \"asc\",\n		\"TOP_ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"TOP_LINE_ELEMENT_COUNT\" => \"3\",\n		\"TOP_VIEW_MODE\" => \"SECTION\",\n		\"USER_CONSENT\" => \"N\",\n		\"USER_CONSENT_ID\" => \"0\",\n		\"USER_CONSENT_IS_CHECKED\" => \"Y\",\n		\"USER_CONSENT_IS_LOADED\" => \"N\",\n		\"USE_COMPARE\" => \"N\",\n		\"USE_ELEMENT_COUNTER\" => \"Y\",\n		\"USE_ENHANCED_ECOMMERCE\" => \"N\",\n		\"USE_FILTER\" => \"N\",\n		\"USE_MAIN_ELEMENT_SECTION\" => \"N\",\n		\"USE_PRICE_COUNT\" => \"N\",\n		\"USE_PRODUCT_QUANTITY\" => \"N\",\n		\"USE_STORE\" => \"N\",\n		\"VARIABLE_ALIASES\" => Array(\"ELEMENT_ID\"=>\"ELEMENT_ID\",\"SECTION_ID\"=>\"SECTION_ID\")\n	)\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1586798219),('1fe9c2c33a6575b724f5410eb8f60c550','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:42:\"/var/www/data/www/chastnym-licam/index.php\";s:7:\"content\";s:4918:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Частным лицам\");\n?><?$APPLICATION->IncludeComponent(\n	\"bitrix:catalog\", \n	\".default_old1\", \n	array(\n		\"ACTION_VARIABLE\" => \"action\",\n		\"ADD_ELEMENT_CHAIN\" => \"N\",\n		\"ADD_PROPERTIES_TO_BASKET\" => \"Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"BASKET_URL\" => \"/personal/basket.php\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"COMPATIBLE_MODE\" => \"Y\",\n		\"DETAIL_ADD_DETAIL_TO_SLIDER\" => \"N\",\n		\"DETAIL_BACKGROUND_IMAGE\" => \"-\",\n		\"DETAIL_BRAND_USE\" => \"N\",\n		\"DETAIL_BROWSER_TITLE\" => \"-\",\n		\"DETAIL_CHECK_SECTION_ID_VARIABLE\" => \"N\",\n		\"DETAIL_DETAIL_PICTURE_MODE\" => \"MAGNIFIER\",\n		\"DETAIL_DISPLAY_NAME\" => \"Y\",\n		\"DETAIL_DISPLAY_PREVIEW_TEXT_MODE\" => \"E\",\n		\"DETAIL_IMAGE_RESOLUTION\" => \"16by9\",\n		\"DETAIL_META_DESCRIPTION\" => \"-\",\n		\"DETAIL_META_KEYWORDS\" => \"-\",\n		\"DETAIL_PRODUCT_INFO_BLOCK_ORDER\" => \"sku,props\",\n		\"DETAIL_PRODUCT_PAY_BLOCK_ORDER\" => \"rating,price,priceRanges,quantityLimit,quantity,buttons\",\n		\"DETAIL_SET_CANONICAL_URL\" => \"N\",\n		\"DETAIL_SHOW_POPULAR\" => \"Y\",\n		\"DETAIL_SHOW_SLIDER\" => \"N\",\n		\"DETAIL_SHOW_VIEWED\" => \"Y\",\n		\"DETAIL_STRICT_SECTION_CHECK\" => \"N\",\n		\"DETAIL_USE_COMMENTS\" => \"N\",\n		\"DETAIL_USE_VOTE_RATING\" => \"N\",\n		\"DISABLE_INIT_JS_IN_COMPONENT\" => \"N\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"ELEMENT_SORT_FIELD\" => \"sort\",\n		\"ELEMENT_SORT_FIELD2\" => \"id\",\n		\"ELEMENT_SORT_ORDER\" => \"asc\",\n		\"ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"FILTER_HIDE_ON_MOBILE\" => \"N\",\n		\"FILTER_VIEW_MODE\" => \"VERTICAL\",\n		\"IBLOCK_ID\" => \"3\",\n		\"IBLOCK_TYPE\" => \"catalog\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"INSTANT_RELOAD\" => \"N\",\n		\"LAZY_LOAD\" => \"N\",\n		\"LINE_ELEMENT_COUNT\" => \"3\",\n		\"LINK_ELEMENTS_URL\" => \"link.php?PARENT_ELEMENT_ID=#ELEMENT_ID#\",\n		\"LINK_IBLOCK_ID\" => \"\",\n		\"LINK_IBLOCK_TYPE\" => \"\",\n		\"LINK_PROPERTY_SID\" => \"\",\n		\"LIST_BROWSER_TITLE\" => \"-\",\n		\"LIST_META_DESCRIPTION\" => \"-\",\n		\"LIST_META_KEYWORDS\" => \"-\",\n		\"LOAD_ON_SCROLL\" => \"N\",\n		\"MESSAGE_404\" => \"\",\n		\"MESS_BTN_ADD_TO_BASKET\" => \"В корзину\",\n		\"MESS_BTN_BUY\" => \"Купить\",\n		\"MESS_BTN_COMPARE\" => \"Сравнение\",\n		\"MESS_BTN_DETAIL\" => \"Подробнее\",\n		\"MESS_BTN_SUBSCRIBE\" => \"Подписаться\",\n		\"MESS_NOT_AVAILABLE\" => \"Нет в наличии\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Товары\",\n		\"PAGE_ELEMENT_COUNT\" => \"30\",\n		\"PARTIAL_PRODUCT_PROPERTIES\" => \"N\",\n		\"PRICE_CODE\" => array(\n		),\n		\"PRICE_VAT_INCLUDE\" => \"Y\",\n		\"PRICE_VAT_SHOW_VALUE\" => \"N\",\n		\"PRODUCT_ID_VARIABLE\" => \"id\",\n		\"PRODUCT_PROPS_VARIABLE\" => \"prop\",\n		\"PRODUCT_QUANTITY_VARIABLE\" => \"quantity\",\n		\"SEARCH_CHECK_DATES\" => \"Y\",\n		\"SEARCH_NO_WORD_LOGIC\" => \"Y\",\n		\"SEARCH_PAGE_RESULT_COUNT\" => \"50\",\n		\"SEARCH_RESTART\" => \"N\",\n		\"SEARCH_USE_LANGUAGE_GUESS\" => \"Y\",\n		\"SECTIONS_SHOW_PARENT_NAME\" => \"Y\",\n		\"SECTIONS_VIEW_MODE\" => \"LIST\",\n		\"SECTION_BACKGROUND_IMAGE\" => \"-\",\n		\"SECTION_COUNT_ELEMENTS\" => \"Y\",\n		\"SECTION_ID_VARIABLE\" => \"SECTION_ID\",\n		\"SECTION_TOP_DEPTH\" => \"2\",\n		\"SEF_MODE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SHOW_DEACTIVATED\" => \"N\",\n		\"SHOW_PRICE_COUNT\" => \"1\",\n		\"SHOW_TOP_ELEMENTS\" => \"Y\",\n		\"SIDEBAR_DETAIL_SHOW\" => \"N\",\n		\"SIDEBAR_PATH\" => \"\",\n		\"SIDEBAR_SECTION_SHOW\" => \"Y\",\n		\"TEMPLATE_THEME\" => \"blue\",\n		\"TOP_ELEMENT_COUNT\" => \"9\",\n		\"TOP_ELEMENT_SORT_FIELD\" => \"sort\",\n		\"TOP_ELEMENT_SORT_FIELD2\" => \"id\",\n		\"TOP_ELEMENT_SORT_ORDER\" => \"asc\",\n		\"TOP_ELEMENT_SORT_ORDER2\" => \"desc\",\n		\"TOP_LINE_ELEMENT_COUNT\" => \"3\",\n		\"TOP_VIEW_MODE\" => \"SECTION\",\n		\"USER_CONSENT\" => \"N\",\n		\"USER_CONSENT_ID\" => \"0\",\n		\"USER_CONSENT_IS_CHECKED\" => \"Y\",\n		\"USER_CONSENT_IS_LOADED\" => \"N\",\n		\"USE_COMPARE\" => \"N\",\n		\"USE_ELEMENT_COUNTER\" => \"Y\",\n		\"USE_ENHANCED_ECOMMERCE\" => \"N\",\n		\"USE_FILTER\" => \"N\",\n		\"USE_MAIN_ELEMENT_SECTION\" => \"N\",\n		\"USE_PRICE_COUNT\" => \"N\",\n		\"USE_PRODUCT_QUANTITY\" => \"N\",\n		\"USE_STORE\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \".default_old1\",\n		\"ADD_PICT_PROP\" => \"-\",\n		\"LABEL_PROP\" => \"-\",\n		\"SEF_FOLDER\" => \"/chastnym-licam/\",\n		\"SEF_URL_TEMPLATES\" => array(\n			\"sections\" => \"\",\n			\"section\" => \"#SECTION_CODE_PATH#/\",\n			\"element\" => \"#SECTION_CODE_PATH#/#ELEMENT_CODE#/\",\n			\"compare\" => \"compare.php?action=#ACTION_CODE#\",\n			\"smart_filter\" => \"#SECTION_ID#/filter/#SMART_FILTER_PATH#/apply/\",\n		),\n		\"VARIABLE_ALIASES\" => array(\n			\"compare\" => array(\n				\"ACTION_CODE\" => \"action\",\n			),\n		)\n	),\n	false\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1586798990);
/*!40000 ALTER TABLE `b_undo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_urlpreview_metadata`
--

DROP TABLE IF EXISTS `b_urlpreview_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_urlpreview_metadata` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `URL` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `DATE_INSERT` datetime NOT NULL,
  `DATE_EXPIRE` datetime DEFAULT NULL,
  `TITLE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE_ID` int(11) DEFAULT NULL,
  `IMAGE` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMBED` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXTRA` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_URLPREVIEW_METADATA_URL` (`URL`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_urlpreview_metadata`
--

LOCK TABLES `b_urlpreview_metadata` WRITE;
/*!40000 ALTER TABLE `b_urlpreview_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_urlpreview_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_urlpreview_route`
--

DROP TABLE IF EXISTS `b_urlpreview_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_urlpreview_route` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROUTE` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMETERS` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_URLPREVIEW_ROUTE_ROUTE` (`ROUTE`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_urlpreview_route`
--

LOCK TABLES `b_urlpreview_route` WRITE;
/*!40000 ALTER TABLE `b_urlpreview_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_urlpreview_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user`
--

DROP TABLE IF EXISTS `b_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CHECKWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `DATE_REGISTER` datetime NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PROFESSION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ICQ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_GENDER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(18) DEFAULT NULL,
  `PERSONAL_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_MOBILE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STREET` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_NOTES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_COMPANY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_DEPARTMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STREET` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PROFILE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_LOGO` int(18) DEFAULT NULL,
  `WORK_NOTES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADMIN_NOTES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDAY` date DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECKWORD_TIME` datetime DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONFIRM_CODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN_ATTEMPTS` int(18) DEFAULT NULL,
  `LAST_ACTIVITY_DATE` datetime DEFAULT NULL,
  `AUTO_TIME_ZONE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE_OFFSET` int(18) DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BX_USER_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_login` (`LOGIN`,`EXTERNAL_AUTH_ID`),
  KEY `ix_b_user_email` (`EMAIL`),
  KEY `ix_b_user_activity_date` (`LAST_ACTIVITY_DATE`),
  KEY `IX_B_USER_XML_ID` (`XML_ID`),
  KEY `ix_user_last_login` (`LAST_LOGIN`),
  KEY `ix_user_date_register` (`DATE_REGISTER`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user`
--

LOCK TABLES `b_user` WRITE;
/*!40000 ALTER TABLE `b_user` DISABLE KEYS */;
INSERT INTO `b_user` VALUES (1,'2020-04-13 14:56:03','admin','bpjCBhtv76afa1704df5f1ba60f0469b7cda97e5','Bwl2BmHZ50cabeb4589a09614040f676533570bd','Y','','','merinovroman@gmail.com','2020-04-13 18:15:02','2020-04-13 14:56:03',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-13 14:56:03',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_access`
--

DROP TABLE IF EXISTS `b_user_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_access` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS_CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_ua_user_provider` (`USER_ID`,`PROVIDER_ID`),
  KEY `ix_ua_user_access` (`USER_ID`,`ACCESS_CODE`),
  KEY `ix_ua_access` (`ACCESS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_access`
--

LOCK TABLES `b_user_access` WRITE;
/*!40000 ALTER TABLE `b_user_access` DISABLE KEYS */;
INSERT INTO `b_user_access` VALUES (0,'group','G2'),(1,'group','G1'),(1,'group','G3'),(1,'group','G4'),(1,'group','G2'),(1,'user','U1');
/*!40000 ALTER TABLE `b_user_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_access_check`
--

DROP TABLE IF EXISTS `b_user_access_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_access_check` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_uac_user_provider` (`USER_ID`,`PROVIDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_access_check`
--

LOCK TABLES `b_user_access_check` WRITE;
/*!40000 ALTER TABLE `b_user_access_check` DISABLE KEYS */;
INSERT INTO `b_user_access_check` VALUES (1,'group'),(1,'user');
/*!40000 ALTER TABLE `b_user_access_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_auth_action`
--

DROP TABLE IF EXISTS `b_user_auth_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_auth_action` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `PRIORITY` int(11) NOT NULL DEFAULT 100,
  `ACTION` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTION_DATE` datetime NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_auth_action_user` (`USER_ID`,`PRIORITY`),
  KEY `ix_auth_action_date` (`ACTION_DATE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_auth_action`
--

LOCK TABLES `b_user_auth_action` WRITE;
/*!40000 ALTER TABLE `b_user_auth_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_auth_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_counter`
--

DROP TABLE IF EXISTS `b_user_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_counter` (
  `USER_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '**',
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CNT` int(18) NOT NULL DEFAULT 0,
  `LAST_DATE` datetime DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL DEFAULT '3000-01-01 00:00:00',
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SENT` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`USER_ID`,`SITE_ID`,`CODE`),
  KEY `ix_buc_tag` (`TAG`),
  KEY `ix_buc_code` (`CODE`),
  KEY `ix_buc_ts` (`TIMESTAMP_X`),
  KEY `ix_buc_sent_userid` (`SENT`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_counter`
--

LOCK TABLES `b_user_counter` WRITE;
/*!40000 ALTER TABLE `b_user_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_digest`
--

DROP TABLE IF EXISTS `b_user_digest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_digest` (
  `USER_ID` int(11) NOT NULL,
  `DIGEST_HA1` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_digest`
--

LOCK TABLES `b_user_digest` WRITE;
/*!40000 ALTER TABLE `b_user_digest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_digest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field`
--

DROP TABLE IF EXISTS `b_user_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MANDATORY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_FILTER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `IS_SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_type_entity` (`ENTITY_ID`,`FIELD_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field`
--

LOCK TABLES `b_user_field` WRITE;
/*!40000 ALTER TABLE `b_user_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_confirm`
--

DROP TABLE IF EXISTS `b_user_field_confirm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field_confirm` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `DATE_CHANGE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `FIELD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELD_VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIRM_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ATTEMPTS` int(18) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ix_b_user_field_confirm1` (`USER_ID`,`CONFIRM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_confirm`
--

LOCK TABLES `b_user_field_confirm` WRITE;
/*!40000 ALTER TABLE `b_user_field_confirm` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_confirm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_enum`
--

DROP TABLE IF EXISTS `b_user_field_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field_enum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_FIELD_ID` int(11) DEFAULT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_field_enum` (`USER_FIELD_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_enum`
--

LOCK TABLES `b_user_field_enum` WRITE;
/*!40000 ALTER TABLE `b_user_field_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_lang`
--

DROP TABLE IF EXISTS `b_user_field_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field_lang` (
  `USER_FIELD_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EDIT_FORM_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_COLUMN_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_FILTER_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERROR_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HELP_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_FIELD_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_lang`
--

LOCK TABLES `b_user_field_lang` WRITE;
/*!40000 ALTER TABLE `b_user_field_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_group`
--

DROP TABLE IF EXISTS `b_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_group` (
  `USER_ID` int(18) NOT NULL,
  `GROUP_ID` int(18) NOT NULL,
  `DATE_ACTIVE_FROM` datetime DEFAULT NULL,
  `DATE_ACTIVE_TO` datetime DEFAULT NULL,
  UNIQUE KEY `ix_user_group` (`USER_ID`,`GROUP_ID`),
  KEY `ix_user_group_group` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_group`
--

LOCK TABLES `b_user_group` WRITE;
/*!40000 ALTER TABLE `b_user_group` DISABLE KEYS */;
INSERT INTO `b_user_group` VALUES (1,1,NULL,NULL),(1,3,NULL,NULL),(1,4,NULL,NULL);
/*!40000 ALTER TABLE `b_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_hit_auth`
--

DROP TABLE IF EXISTS `b_user_hit_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_hit_auth` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `IX_USER_HIT_AUTH_1` (`HASH`),
  KEY `IX_USER_HIT_AUTH_2` (`USER_ID`),
  KEY `IX_USER_HIT_AUTH_3` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_hit_auth`
--

LOCK TABLES `b_user_hit_auth` WRITE;
/*!40000 ALTER TABLE `b_user_hit_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_hit_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_index`
--

DROP TABLE IF EXISTS `b_user_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_index` (
  `USER_ID` int(11) NOT NULL,
  `SEARCH_USER_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCH_DEPARTMENT_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCH_ADMIN_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UF_DEPARTMENT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  FULLTEXT KEY `IXF_B_USER_INDEX_1` (`SEARCH_USER_CONTENT`),
  FULLTEXT KEY `IXF_B_USER_INDEX_2` (`SEARCH_DEPARTMENT_CONTENT`),
  FULLTEXT KEY `IXF_B_USER_INDEX_3` (`SEARCH_ADMIN_CONTENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_index`
--

LOCK TABLES `b_user_index` WRITE;
/*!40000 ALTER TABLE `b_user_index` DISABLE KEYS */;
INSERT INTO `b_user_index` VALUES (1,'001','','001 zrevabiebzna tznvy pbz zrevabiebzna@tznvy.pbz nqzva','','','','','');
/*!40000 ALTER TABLE `b_user_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_index_selector`
--

DROP TABLE IF EXISTS `b_user_index_selector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_index_selector` (
  `USER_ID` int(11) NOT NULL,
  `SEARCH_SELECTOR_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  FULLTEXT KEY `IXF_B_USER_INDEX_SELECTOR_1` (`SEARCH_SELECTOR_CONTENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_index_selector`
--

LOCK TABLES `b_user_index_selector` WRITE;
/*!40000 ALTER TABLE `b_user_index_selector` DISABLE KEYS */;
INSERT INTO `b_user_index_selector` VALUES (1,'');
/*!40000 ALTER TABLE `b_user_index_selector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_option`
--

DROP TABLE IF EXISTS `b_user_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_option` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `CATEGORY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_category_name` (`USER_ID`,`CATEGORY`,`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_option`
--

LOCK TABLES `b_user_option` WRITE;
/*!40000 ALTER TABLE `b_user_option` DISABLE KEYS */;
INSERT INTO `b_user_option` VALUES (1,0,'intranet','~gadgets_admin_index','a:1:{i:0;a:1:{s:7:\"GADGETS\";a:8:{s:20:\"ADMIN_INFO@333333333\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:19:\"HTML_AREA@444444444\";a:5:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";s:8:\"USERDATA\";a:1:{s:7:\"content\";s:797:\"<table class=\"bx-gadgets-info-site-table\" cellspacing=\"0\"><tr>	<td class=\"bx-gadget-gray\">Создатель сайта:</td>	<td>Группа компаний &laquo;1С-Битрикс&raquo;.</td>	<td class=\"bx-gadgets-info-site-logo\" rowspan=\"5\"><img src=\"/bitrix/components/bitrix/desktop/templates/admin/images/site_logo.png\"></td></tr><tr>	<td class=\"bx-gadget-gray\">Адрес сайта:</td>	<td><a href=\"http://www.1c-bitrix.ru\">www.1c-bitrix.ru</a></td></tr><tr>	<td class=\"bx-gadget-gray\">Сайт сдан:</td>	<td>12 декабря 2010 г.</td></tr><tr>	<td class=\"bx-gadget-gray\">Ответственное лицо:</td>	<td>Иван Иванов</td></tr><tr>	<td class=\"bx-gadget-gray\">E-mail:</td>	<td><a href=\"mailto:info@1c-bitrix.ru\">info@1c-bitrix.ru</a></td></tr></table>\";}s:8:\"SETTINGS\";a:1:{s:9:\"TITLE_STD\";s:34:\"Информация о сайте\";}}s:25:\"ADMIN_CHECKLIST@777888999\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:19:\"RSSREADER@777777777\";a:4:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";s:8:\"SETTINGS\";a:3:{s:9:\"TITLE_STD\";s:33:\"Новости 1С-Битрикс\";s:3:\"CNT\";i:10;s:7:\"RSS_URL\";s:45:\"https://www.1c-bitrix.ru/about/life/news/rss/\";}}s:24:\"ADMIN_SECURITY@555555555\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:25:\"ADMIN_SITESPEED@666666777\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_PERFMON@666666666\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_MARKETPALCE@22549\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";}}}}','Y'),(2,0,'main.interface','global','a:1:{s:5:\"theme\";s:5:\"green\";}','Y'),(3,1,'admin_panel','settings','a:3:{s:4:\"edit\";s:3:\"off\";s:9:\"collapsed\";s:2:\"on\";s:3:\"fix\";s:3:\"off\";}','N'),(4,1,'hot_keys','user_defined','b:1;','N'),(5,1,'favorite','favorite_menu','a:1:{s:5:\"stick\";s:1:\"N\";}','N'),(8,1,'admin_menu','pos','a:1:{s:8:\"sections\";s:92:\"menu_system,menu_site,menu_util,menu_iblock,menu_bitrixcloud,menu_iblock_/catalog,urlrewrite\";}','N'),(18,1,'fileman','code_editor','a:1:{s:5:\"theme\";s:5:\"light\";}','N'),(20,1,'fileman','last_pathes','s:56:\"a:2:{i:0;s:20:\"/local/templates/skb\";i:1;s:7:\"/bitrix\";}\";','N'),(35,1,'main.interface.grid','tbl_iblock_admin_46f22f2a56ddd091f4b2b2c35c5ca989','a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}','N'),(38,1,'main.ui.filter','tbl_iblock_section_d45a1a3185cf681c5d2c0d97987ad64b','a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"0\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}','N'),(44,1,'main.interface.grid','tbl_iblock_section_d45a1a3185cf681c5d2c0d97987ad64b','a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}','N'),(50,1,'html_editor','user_settings_','a:1:{s:13:\"taskbar_shown\";s:1:\"1\";}','N'),(52,1,'bx.windowmanager.9.5','size_/bitrix/admin/component_props.php','a:2:{s:5:\"width\";s:3:\"975\";s:6:\"height\";s:3:\"525\";}','N'),(57,1,'bx.windowmanager.9.5','size_bx_component_properties_res','a:2:{s:5:\"width\";s:3:\"914\";s:6:\"height\";s:3:\"537\";}','N'),(73,1,'main.ui.filter','tbl_iblock_element_d45a1a3185cf681c5d2c0d97987ad64b','a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"1\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}','N'),(78,1,'main.interface.grid','tbl_iblock_element_d45a1a3185cf681c5d2c0d97987ad64b','a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}','N');
/*!40000 ALTER TABLE `b_user_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_phone_auth`
--

DROP TABLE IF EXISTS `b_user_phone_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_phone_auth` (
  `USER_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `OTP_SECRET` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ATTEMPTS` int(11) DEFAULT 0,
  `CONFIRMED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `DATE_SENT` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `ix_user_phone_auth_number` (`PHONE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_phone_auth`
--

LOCK TABLES `b_user_phone_auth` WRITE;
/*!40000 ALTER TABLE `b_user_phone_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_phone_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_profile_history`
--

DROP TABLE IF EXISTS `b_user_profile_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_profile_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `EVENT_TYPE` int(11) DEFAULT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATED_BY_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_profile_history_user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_profile_history`
--

LOCK TABLES `b_user_profile_history` WRITE;
/*!40000 ALTER TABLE `b_user_profile_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_profile_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_profile_record`
--

DROP TABLE IF EXISTS `b_user_profile_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_profile_record` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HISTORY_ID` int(11) NOT NULL,
  `FIELD` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATA` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_profile_record_history_field` (`HISTORY_ID`,`FIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_profile_record`
--

LOCK TABLES `b_user_profile_record` WRITE;
/*!40000 ALTER TABLE `b_user_profile_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_profile_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_stored_auth`
--

DROP TABLE IF EXISTS `b_user_stored_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_stored_auth` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `DATE_REG` datetime NOT NULL,
  `LAST_AUTH` datetime NOT NULL,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TEMP_HASH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IP_ADDR` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ux_user_hash` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_stored_auth`
--

LOCK TABLES `b_user_stored_auth` WRITE;
/*!40000 ALTER TABLE `b_user_stored_auth` DISABLE KEYS */;
INSERT INTO `b_user_stored_auth` VALUES (1,1,'2020-04-13 14:56:05','2020-04-13 14:56:05','d603bf02cd5b5ceb6af1ea7320dfb977','N',3232247809),(2,1,'2020-04-13 17:38:37','2020-04-13 17:38:37','3a8f5d8116f64d9ba21febbd2ba9a698','N',3232247809),(3,1,'2020-04-13 18:15:02','2020-04-13 18:15:02','53fab7ade7e9f8a9b84a789479d6c540','N',3232247809);
/*!40000 ALTER TABLE `b_user_stored_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_xml_tree`
--

DROP TABLE IF EXISTS `b_xml_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_xml_tree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int(11) DEFAULT NULL,
  `LEFT_MARGIN` int(11) DEFAULT NULL,
  `RIGHT_MARGIN` int(11) DEFAULT NULL,
  `DEPTH_LEVEL` int(11) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALUE` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ATTRIBUTES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_xml_tree_parent` (`PARENT_ID`),
  KEY `ix_b_xml_tree_left` (`LEFT_MARGIN`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_xml_tree`
--

LOCK TABLES `b_xml_tree` WRITE;
/*!40000 ALTER TABLE `b_xml_tree` DISABLE KEYS */;
INSERT INTO `b_xml_tree` VALUES (1,0,1,320,0,'КоммерческаяИнформация',NULL,'a:2:{s:22:\"ВерсияСхемы\";s:5:\"2.021\";s:32:\"ДатаФормирования\";s:19:\"2010-06-22T12:53:42\";}'),(2,1,2,67,1,'Классификатор',NULL,NULL),(3,2,3,4,2,'Ид','2',NULL),(4,2,5,6,2,'Наименование','Вакансии',NULL),(5,2,7,64,2,'Свойства',NULL,NULL),(6,5,8,15,3,'Свойство',NULL,NULL),(7,6,9,10,4,'Ид','CML2_ACTIVE',NULL),(8,6,11,12,4,'Наименование','БитриксАктивность',NULL),(9,6,13,14,4,'Множественное','false',NULL),(10,5,16,23,3,'Свойство',NULL,NULL),(11,10,17,18,4,'Ид','CML2_CODE',NULL),(12,10,19,20,4,'Наименование','Символьный код',NULL),(13,10,21,22,4,'Множественное','false',NULL),(14,5,24,31,3,'Свойство',NULL,NULL),(15,14,25,26,4,'Ид','CML2_SORT',NULL),(16,14,27,28,4,'Наименование','Сортировка',NULL),(17,14,29,30,4,'Множественное','false',NULL),(18,5,32,39,3,'Свойство',NULL,NULL),(19,18,33,34,4,'Ид','CML2_ACTIVE_FROM',NULL),(20,18,35,36,4,'Наименование','Начало активности',NULL),(21,18,37,38,4,'Множественное','false',NULL),(22,5,40,47,3,'Свойство',NULL,NULL),(23,22,41,42,4,'Ид','CML2_ACTIVE_TO',NULL),(24,22,43,44,4,'Наименование','Окончание активности',NULL),(25,22,45,46,4,'Множественное','false',NULL),(26,5,48,55,3,'Свойство',NULL,NULL),(27,26,49,50,4,'Ид','CML2_PREVIEW_TEXT',NULL),(28,26,51,52,4,'Наименование','Анонс',NULL),(29,26,53,54,4,'Множественное','false',NULL),(30,5,56,63,3,'Свойство',NULL,NULL),(31,30,57,58,4,'Ид','CML2_PREVIEW_PICTURE',NULL),(32,30,59,60,4,'Наименование','Картинка анонса',NULL),(33,30,61,62,4,'Множественное','false',NULL),(34,2,65,66,2,'Группы',NULL,NULL),(35,1,68,319,1,'Каталог',NULL,NULL),(36,35,69,70,2,'Ид','corp_vacancies',NULL),(37,35,71,72,2,'ИдКлассификатора','2',NULL),(38,35,73,74,2,'Наименование','Вакансии',NULL),(39,35,75,76,2,'БитриксКод','corp_vacancies',NULL),(40,35,77,78,2,'БитриксСортировка','500',NULL),(41,35,79,80,2,'БитриксURLСписок','#SITE_DIR#/about/vacancies.php',NULL),(42,35,81,82,2,'БитриксURLДеталь','#SITE_DIR#/about/vacancies.php##ID#',NULL),(43,35,83,84,2,'БитриксURLРаздел',NULL,NULL),(44,35,85,86,2,'БитриксКартинка',NULL,NULL),(45,35,87,88,2,'БитриксИндексироватьЭлементы','true',NULL),(46,35,89,90,2,'БитриксИндексироватьРазделы','false',NULL),(47,35,91,92,2,'БитриксДокументооборот','false',NULL),(48,35,93,154,2,'БитриксПодписи',NULL,NULL),(49,48,94,99,3,'БитриксПодпись',NULL,NULL),(50,49,95,96,4,'Ид','ELEMENT_NAME',NULL),(51,49,97,98,4,'Значение','Вакансия',NULL),(52,48,100,105,3,'БитриксПодпись',NULL,NULL),(53,52,101,102,4,'Ид','ELEMENTS_NAME',NULL),(54,52,103,104,4,'Значение','Вакансии',NULL),(55,48,106,111,3,'БитриксПодпись',NULL,NULL),(56,55,107,108,4,'Ид','ELEMENT_ADD',NULL),(57,55,109,110,4,'Значение','Добавить вакансию',NULL),(58,48,112,117,3,'БитриксПодпись',NULL,NULL),(59,58,113,114,4,'Ид','ELEMENT_EDIT',NULL),(60,58,115,116,4,'Значение','Изменить вакансию',NULL),(61,48,118,123,3,'БитриксПодпись',NULL,NULL),(62,61,119,120,4,'Ид','ELEMENT_DELETE',NULL),(63,61,121,122,4,'Значение','Удалить вакансию',NULL),(64,48,124,129,3,'БитриксПодпись',NULL,NULL),(65,64,125,126,4,'Ид','SECTION_NAME',NULL),(66,64,127,128,4,'Значение','Раздел',NULL),(67,48,130,135,3,'БитриксПодпись',NULL,NULL),(68,67,131,132,4,'Ид','SECTIONS_NAME',NULL),(69,67,133,134,4,'Значение','Разделы',NULL),(70,48,136,141,3,'БитриксПодпись',NULL,NULL),(71,70,137,138,4,'Ид','SECTION_ADD',NULL),(72,70,139,140,4,'Значение','Добавить раздел',NULL),(73,48,142,147,3,'БитриксПодпись',NULL,NULL),(74,73,143,144,4,'Ид','SECTION_EDIT',NULL),(75,73,145,146,4,'Значение','Изменить раздел',NULL),(76,48,148,153,3,'БитриксПодпись',NULL,NULL),(77,76,149,150,4,'Ид','SECTION_DELETE',NULL),(78,76,151,152,4,'Значение','Удалить раздел',NULL),(79,35,155,318,2,'Товары',NULL,NULL),(80,79,156,209,3,'Товар',NULL,NULL),(81,80,157,158,4,'Ид','2',NULL),(82,80,159,160,4,'Наименование','Главный специалист Отдела анализа кредитных проектов региональной сети',NULL),(83,80,161,162,4,'БитриксТеги',NULL,NULL),(84,80,163,164,4,'Описание','<b>Требования</b> 						 						 \n<p>Высшее экономическое/финансовое образование, опыт в банках топ-100 не менее 3-х лет в кредитном отделе (анализ заемщиков), желателен опыт работы с кредитными заявками филиалов, знание технологий АФХД предприятий, навыки написания экспертного заключения, знание законодательства (в т.ч. Положение ЦБ № 254-П).</p>\n 						 						<b>Обязанности</b> 						 \n<p>Анализ кредитных проектов филиалов Банка, подготовка предложений по структурированию кредитных проектов, оценка полноты и качества формируемых филиалами заключений, выявление стоп-факторов, доработка заявок филиалов в соответствии со стандартами Банка, подготовка заключения (рекомендаций) на КК по заявкам филиалов в части оценки финансово-экономического состояния заемщика, защита проектов на КК Банка, консультирование и методологическая помощь филиалам Банка в части корпоративного кредитования.</p>\n 						 						<b>Условия</b> 						 \n<p> Место работы: М.Парк Культуры. Графики работы: пятидневная рабочая неделя, с 9:00 до 18:00, пт. до 16:45. Зарплата: 50000 руб. оклад + премии, полный соц. пакет,оформление согласно ТК РФ</p>\n ',NULL),(85,80,165,208,4,'ЗначенияСвойств',NULL,NULL),(86,85,166,171,5,'ЗначенияСвойства',NULL,NULL),(87,86,167,168,6,'Ид','CML2_ACTIVE',NULL),(88,86,169,170,6,'Значение','true',NULL),(89,85,172,177,5,'ЗначенияСвойства',NULL,NULL),(90,89,173,174,6,'Ид','CML2_CODE',NULL),(91,89,175,176,6,'Значение',NULL,NULL),(92,85,178,183,5,'ЗначенияСвойства',NULL,NULL),(93,92,179,180,6,'Ид','CML2_SORT',NULL),(94,92,181,182,6,'Значение','200',NULL),(95,85,184,189,5,'ЗначенияСвойства',NULL,NULL),(96,95,185,186,6,'Ид','CML2_ACTIVE_FROM',NULL),(97,95,187,188,6,'Значение','2010-05-01 00:00:00',NULL),(98,85,190,195,5,'ЗначенияСвойства',NULL,NULL),(99,98,191,192,6,'Ид','CML2_ACTIVE_TO',NULL),(100,98,193,194,6,'Значение',NULL,NULL),(101,85,196,201,5,'ЗначенияСвойства',NULL,NULL),(102,101,197,198,6,'Ид','CML2_PREVIEW_TEXT',NULL),(103,101,199,200,6,'Значение',NULL,NULL),(104,85,202,207,5,'ЗначенияСвойства',NULL,NULL),(105,104,203,204,6,'Ид','CML2_PREVIEW_PICTURE',NULL),(106,104,205,206,6,'Значение',NULL,NULL),(107,79,210,263,3,'Товар',NULL,NULL),(108,107,211,212,4,'Ид','3',NULL),(109,107,213,214,4,'Наименование','Специалист по продажам розничных банковских продуктов',NULL),(110,107,215,216,4,'БитриксТеги',NULL,NULL),(111,107,217,218,4,'Описание','<b>Требования</b> 						 						 \n<p>Высшее экономического образования ‚ опыт работы в сфере продаж банковских продуктов‚ опытный пользователь ПК‚ этика делового общения‚ ответственность‚ инициативность‚ активность.</p>\n 						 						<b>Обязанности</b> 						 \n<p>Продажа розничных банковских продуктов, оформление документов.</p>\n 						 						<b>Условия</b> 						 \n<p>Трудоустройство по ТК РФ‚ полный соц. пакет. График работы: пятидневная рабочая неделя. Зарплата: 20000 руб. оклад + премии</p>\n ',NULL),(112,107,219,262,4,'ЗначенияСвойств',NULL,NULL),(113,112,220,225,5,'ЗначенияСвойства',NULL,NULL),(114,113,221,222,6,'Ид','CML2_ACTIVE',NULL),(115,113,223,224,6,'Значение','true',NULL),(116,112,226,231,5,'ЗначенияСвойства',NULL,NULL),(117,116,227,228,6,'Ид','CML2_CODE',NULL),(118,116,229,230,6,'Значение',NULL,NULL),(119,112,232,237,5,'ЗначенияСвойства',NULL,NULL),(120,119,233,234,6,'Ид','CML2_SORT',NULL),(121,119,235,236,6,'Значение','300',NULL),(122,112,238,243,5,'ЗначенияСвойства',NULL,NULL),(123,122,239,240,6,'Ид','CML2_ACTIVE_FROM',NULL),(124,122,241,242,6,'Значение','2010-05-01 00:00:00',NULL),(125,112,244,249,5,'ЗначенияСвойства',NULL,NULL),(126,125,245,246,6,'Ид','CML2_ACTIVE_TO',NULL),(127,125,247,248,6,'Значение',NULL,NULL),(128,112,250,255,5,'ЗначенияСвойства',NULL,NULL),(129,128,251,252,6,'Ид','CML2_PREVIEW_TEXT',NULL),(130,128,253,254,6,'Значение',NULL,NULL),(131,112,256,261,5,'ЗначенияСвойства',NULL,NULL),(132,131,257,258,6,'Ид','CML2_PREVIEW_PICTURE',NULL),(133,131,259,260,6,'Значение',NULL,NULL),(134,79,264,317,3,'Товар',NULL,NULL),(135,134,265,266,4,'Ид','4',NULL),(136,134,267,268,4,'Наименование','Специалист Отдела андеррайтинга',NULL),(137,134,269,270,4,'БитриксТеги',NULL,NULL),(138,134,271,272,4,'Описание','<b>Требования</b> 						 						 \n<p>Высшее профессиональное образование, опыт работы от 2 лет в отделе по работе с физическими и юридическими лицами Банков, связанных с анализом платёжеспособности и кредитоспособности физических и юридических лиц.</p>\n 						 						<b>Обязанности</b> 						 \n<p>Проверка соответствия документов, предоставленных клиентами Банка, анализ информации о риске</p>\n 						 						<b>Условия</b> 						 \n<p>Трудоустройство по ТК РФ‚ полный соц. пакет. График работы: пятидневная рабочая неделя. Зарплата: оклад 25000 руб.</p>\n ',NULL),(139,134,273,316,4,'ЗначенияСвойств',NULL,NULL),(140,139,274,279,5,'ЗначенияСвойства',NULL,NULL),(141,140,275,276,6,'Ид','CML2_ACTIVE',NULL),(142,140,277,278,6,'Значение','true',NULL),(143,139,280,285,5,'ЗначенияСвойства',NULL,NULL),(144,143,281,282,6,'Ид','CML2_CODE',NULL),(145,143,283,284,6,'Значение',NULL,NULL),(146,139,286,291,5,'ЗначенияСвойства',NULL,NULL),(147,146,287,288,6,'Ид','CML2_SORT',NULL),(148,146,289,290,6,'Значение','400',NULL),(149,139,292,297,5,'ЗначенияСвойства',NULL,NULL),(150,149,293,294,6,'Ид','CML2_ACTIVE_FROM',NULL),(151,149,295,296,6,'Значение','2010-05-01 00:00:00',NULL),(152,139,298,303,5,'ЗначенияСвойства',NULL,NULL),(153,152,299,300,6,'Ид','CML2_ACTIVE_TO',NULL),(154,152,301,302,6,'Значение',NULL,NULL),(155,139,304,309,5,'ЗначенияСвойства',NULL,NULL),(156,155,305,306,6,'Ид','CML2_PREVIEW_TEXT',NULL),(157,155,307,308,6,'Значение',NULL,NULL),(158,139,310,315,5,'ЗначенияСвойства',NULL,NULL),(159,158,311,312,6,'Ид','CML2_PREVIEW_PICTURE',NULL),(160,158,313,314,6,'Значение',NULL,NULL),(161,0,4,0,0,'',NULL,NULL),(162,0,5,0,0,'',NULL,NULL),(163,0,6,0,0,'',NULL,NULL);
/*!40000 ALTER TABLE `b_xml_tree` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-13 18:46:51
