CREATE DATABASE  IF NOT EXISTS `jobboard` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `jobboard`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: jobboard
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `company_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(45) NOT NULL,
  `company_description` text,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Alphabet, Inc','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(2,'YouTube','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(3,'Nik Software','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(4,'Facebook','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(5,'Instagram','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(6,'Twitter','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(7,'Amazon Co., Inc','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(8,'Apple','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(9,'Microsoft','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(10,'Crowded','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(11,'Eastern, Inc','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `country_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `country_abbr` varchar(2) DEFAULT NULL,
  `country_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'AF','Afghanistan'),(2,'AL','Albania'),(3,'DZ','Algeria'),(4,'AS','American Samoa'),(5,'AD','Andorra'),(6,'AO','Angola'),(7,'AI','Anguilla'),(8,'AQ','Antarctica'),(9,'AG','Antigua and Barbuda'),(10,'AR','Argentina'),(11,'AW','Aruba'),(12,'AU','Australia'),(13,'AT','Austria'),(14,'BS','Bahamas'),(15,'BH','Bahrain'),(16,'BD','Bangladesh'),(17,'BB','Barbados'),(18,'BE','Belgium'),(19,'BZ','Belize'),(20,'BJ','Benin'),(21,'BM','Bermuda'),(22,'BT','Bhutan'),(23,'BO','Bolivia'),(24,'BW','Botswana'),(25,'BR','Brazil'),(26,'BN','Brunei'),(27,'BG','Bulgaria'),(28,'BF','Burkina Faso'),(29,'BI','Burundi'),(30,'KH','Cambodia'),(31,'CM','Cameroon'),(32,'CA','Canada'),(33,'CV','Cape Verde'),(34,'KY','Cayman Islands'),(35,'CF','Central African Republic'),(36,'TD','Chad'),(37,'CL','Chile'),(38,'CN','China'),(39,'CX','Christmas Island'),(40,'CC','Cocos Keeling Islands'),(41,'CO','Colombia'),(42,'KM','Comoros'),(43,'CG','Congo'),(44,'CK','Cook Islands'),(45,'CR','Costa Rica'),(46,'HR','Croatia'),(47,'CY','Cyprus'),(48,'CZ','Czech Republic'),(49,'DK','Denmark'),(50,'DJ','Djibouti'),(51,'DM','Dominica'),(52,'DO','Dominican Republic'),(53,'EC','Ecuador'),(54,'EG','Egypt'),(55,'SV','El Salvador'),(56,'KI','Enderbury Islands'),(57,'GQ','Equatorial Guinea'),(58,'EE','Estonia'),(59,'ET','Ethiopia'),(60,'FK','Falkland Islands'),(61,'FO','Faroe Islands'),(62,'FJ','Fiji'),(63,'FI','Finland'),(64,'FR','France'),(65,'GF','French Guiana'),(66,'PF','French Polynesia'),(67,'GA','Gabon'),(68,'GM','Gambia'),(69,'DE','Germany'),(70,'GH','Ghana'),(71,'GI','Gibraltar'),(72,'GR','Greece'),(73,'GL','Greenland'),(74,'GD','Grenada'),(75,'VC','Grenadines St Vincent'),(76,'GP','Guadeloupe and Martinique'),(77,'GU','Guam'),(78,'GT','Guatemala'),(79,'GN','Guinea'),(80,'GW','Guinea Bissau'),(81,'GY','Guyana'),(82,'HT','Haiti'),(83,'HN','Honduras'),(84,'HK','Hong Kong'),(85,'HU','Hungary'),(86,'IS','Iceland'),(87,'IN','India'),(88,'ID','Indonesia'),(89,'IR','Iran'),(90,'IQ','Iraq'),(91,'IE','Ireland'),(92,'IL','Israel'),(93,'IT','Italy'),(94,'CI','Ivory Coast'),(95,'JM','Jamaica'),(96,'JP','Japan'),(97,'JO','Jordan'),(98,'KE','Kenya'),(99,'KI','Kirbati'),(100,'KP','Korea Dem Peoples Rep'),(101,'KR','Korea Repof'),(102,'KW','Kuwait'),(103,'LA','Lao Peoples Dem Rep'),(104,'LV','Latvia'),(105,'LB','Lebanon'),(106,'LS','Lesotho'),(107,'LR','Liberia'),(108,'LT','Lithuania'),(109,'LU','Luxembourg'),(110,'MO','Macau'),(111,'MG','Madagascar'),(112,'MW','Malawi'),(113,'MY','Malaysia'),(114,'MV','Maldives'),(115,'ML','Mali'),(116,'MT','Malta'),(117,'MH','Marshall Islands'),(118,'MQ','Martinique'),(119,'MR','Mauritania'),(120,'MU','Mauritius'),(121,'XM','Mayotte'),(122,'MX','Mexico'),(123,'FM','Micronesia'),(124,'MD','Moldova'),(125,'MC','Monaco'),(126,'MN','Mongolia'),(127,'MS','Montserrat'),(128,'MA','Morocco'),(129,'MZ','Mozambique'),(130,'MM','Myanmar'),(131,'NA','Namibia'),(132,'NR','Nauru'),(133,'NP','Nepal'),(134,'NL','Netherlands'),(135,'AN','Netherlands Antilles'),(136,'NC','New Caledonia'),(137,'NZ','New Zealand'),(138,'NI','Nicaragua'),(139,'NE','Niger'),(140,'NG','Nigeria'),(141,'NU','Niue'),(142,'NF','Norfolk Island'),(143,'MP','Northern Mariana Islands'),(144,'NO','Norway'),(145,'OM','Oman'),(146,'PK','Pakistan'),(147,'PW','Palau'),(148,'PA','Panama'),(149,'PG','Papua New Guinea'),(150,'PY','Paraguay'),(151,'PE','Peru'),(152,'PH','Philippines'),(153,'PL','Poland'),(154,'PT','Portugal'),(155,'PR','Puerto Rico'),(156,'QA','Qatar'),(157,'RE','Reunion'),(158,'RO','Romania'),(159,'RU','Russian Federation'),(160,'RW','Rwanda'),(161,'LC','Saint Lucia'),(162,'WS','Samoa Western'),(163,'SM','San Marino'),(164,'ST','Sao Tome and Principe'),(165,'SA','Saudi Arabia'),(166,'SN','Senegal'),(167,'SC','Seychelles Islands'),(168,'SL','Sierra Leone'),(169,'SG','Singapore'),(170,'SK','Slovakia'),(171,'SI','Slovenia'),(172,'SB','Solomon Islands'),(173,'SO','Somalia'),(174,'ZA','South Africa'),(175,'ES','Spain and Canary Islands'),(176,'LK','Sri Lanka'),(177,'SH','St Helena'),(178,'KN','St Kitts'),(179,'PM','St Pierre and Miquelon'),(180,'SD','Sudan'),(181,'SR','Suriname'),(182,'SZ','Swaziland'),(183,'SE','Sweden'),(184,'SY','Syria'),(185,'CH','Switzerland'),(186,'TW','Taiwan'),(187,'TZ','Tanzania'),(188,'TH','Thailand'),(189,'TG','Togo'),(190,'TO','Tonga'),(191,'TT','Trinidad and Tobago'),(192,'TN','Tunisia'),(193,'TR','Turkey'),(194,'TC','Turks and Caicos Islands'),(195,'TV','Tuvalu'),(196,'UM','US Minor Outlying Islands'),(197,'UG','Uganda'),(198,'UA','Ukraine'),(199,'AE','United Arab Emirates'),(200,'GB','United Kingdom'),(201,'US','United States'),(202,'UY','Uruguay'),(203,'VU','Vanuatu'),(204,'VE','Venezuela'),(205,'VN','Vietnam'),(206,'VG','Virgin Islands British'),(207,'VI','Virgin Islands US'),(208,'WF','Wallis and Futuna Islands'),(209,'YE','Yemen'),(210,'YU','Yugoslavia'),(211,'ZR','Zaire'),(212,'ZM','Zambia'),(213,'ZW','Zimbabwe');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_code`
--

DROP TABLE IF EXISTS `country_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_code` (
  `country_code_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `country_name` varchar(45) NOT NULL,
  PRIMARY KEY (`country_code_id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_code`
--

LOCK TABLES `country_code` WRITE;
/*!40000 ALTER TABLE `country_code` DISABLE KEYS */;
INSERT INTO `country_code` VALUES (1,'+7 840','Abkhazia'),(2,'+93','Afghanistan'),(3,'+355','Albania'),(4,'+213','Algeria'),(5,'+1 684','American Samoa'),(6,'+376','Andorra'),(7,'+244','Angola'),(8,'+1 264','Anguilla'),(9,'+1 268','Antigua and Barbuda'),(10,'+54','Argentina'),(11,'+374','Armenia'),(12,'+297','Aruba'),(13,'+247','Ascension'),(14,'+61','Australia'),(15,'+672','Australian External Territories'),(16,'+43','Austria'),(17,'+994','Azerbaijan'),(18,'+1 242','Bahamas'),(19,'+973','Bahrain'),(20,'+880','Bangladesh'),(21,'+1 246','Barbados'),(22,'+1 268','Barbuda'),(23,'+375','Belarus'),(24,'+32','Belgium'),(25,'+501','Belize'),(26,'+229','Benin'),(27,'+1 441','Bermuda'),(28,'+975','Bhutan'),(29,'+591','Bolivia'),(30,'+387','Bosnia and Herzegovina'),(31,'+267','Botswana'),(32,'+55','Brazil'),(33,'+246','British Indian Ocean Territory'),(34,'+1 284','British Virgin Islands'),(35,'+673','Brunei'),(36,'+359','Bulgaria'),(37,'+226','Burkina Faso'),(38,'+257','Burundi'),(39,'+855','Cambodia'),(40,'+237','Cameroon'),(41,'+1','Canada'),(42,'+238','Cape Verde'),(43,'+1 345','Cayman Islands'),(44,'+236','Central African Republic'),(45,'+235','Chad'),(46,'+56','Chile'),(47,'+86','China'),(48,'+61','Christmas Island'),(49,'+61','Cocos-Keeling Islands'),(50,'+57','Colombia'),(51,'+269','Comoros'),(52,'+242','Congo'),(53,'+243','Congo, Dem. Rep. of (Zaire)'),(54,'+682','Cook Islands'),(55,'+506','Costa Rica'),(56,'+385','Croatia'),(57,'+53','Cuba'),(58,'+599','Curacao'),(59,'+537','Cyprus'),(60,'+420','Czech Republic'),(61,'+45','Denmark'),(62,'+246','Diego Garcia'),(63,'+253','Djibouti'),(64,'+1 767','Dominica'),(65,'+1 809','Dominican Republic'),(66,'+670','East Timor'),(67,'+56','Easter Island'),(68,'+593','Ecuador'),(69,'+20','Egypt'),(70,'+503','El Salvador'),(71,'+240','Equatorial Guinea'),(72,'+291','Eritrea'),(73,'+372','Estonia'),(74,'+251','Ethiopia'),(75,'+500','Falkland Islands'),(76,'+298','Faroe Islands'),(77,'+679','Fiji'),(78,'+358','Finland'),(79,'+33','France'),(80,'+596','French Antilles'),(81,'+594','French Guiana'),(82,'+689','French Polynesia'),(83,'+241','Gabon'),(84,'+220','Gambia'),(85,'+995','Georgia'),(86,'+49','Germany'),(87,'+233','Ghana'),(88,'+350','Gibraltar'),(89,'+30','Greece'),(90,'+299','Greenland'),(91,'+1 473','Grenada'),(92,'+590','Guadeloupe'),(93,'+1 671','Guam'),(94,'+502','Guatemala'),(95,'+224','Guinea'),(96,'+245','Guinea-Bissau'),(97,'+595','Guyana'),(98,'+509','Haiti'),(99,'+504','Honduras'),(100,'+852','Hong Kong SAR China'),(101,'+36','Hungary'),(102,'+354','Iceland'),(103,'+91','India'),(104,'+62','Indonesia'),(105,'+98','Iran'),(106,'+964','Iraq'),(107,'+353','Ireland'),(108,'+972','Israel'),(109,'+39','Italy'),(110,'+225','Ivory Coast'),(111,'+1 876','Jamaica'),(112,'+81','Japan'),(113,'+962','Jordan'),(114,'+7 7','Kazakhstan'),(115,'+254','Kenya'),(116,'+686','Kiribati'),(117,'+965','Kuwait'),(118,'+996','Kyrgyzstan'),(119,'+856','Laos'),(120,'+371','Latvia'),(121,'+961','Lebanon'),(122,'+266','Lesotho'),(123,'+231','Liberia'),(124,'+218','Libya'),(125,'+423','Liechtenstein'),(126,'+370','Lithuania'),(127,'+352','Luxembourg'),(128,'+853','Macau SAR China'),(129,'+389','Macedonia'),(130,'+261','Madagascar'),(131,'+265','Malawi'),(132,'+60','Malaysia'),(133,'+960','Maldives'),(134,'+223','Mali'),(135,'+356','Malta'),(136,'+692','Marshall Islands'),(137,'+596','Martinique'),(138,'+222','Mauritania'),(139,'+230','Mauritius'),(140,'+262','Mayotte'),(141,'+52','Mexico'),(142,'+691','Micronesia'),(143,'+1 808','Midway Island'),(144,'+373','Moldova'),(145,'+377','Monaco'),(146,'+976','Mongolia'),(147,'+382','Montenegro'),(148,'+1 664','Montserrat'),(149,'+212','Morocco'),(150,'+95','Myanmar'),(151,'+264','Namibia'),(152,'+674','Nauru'),(153,'+977','Nepal'),(154,'+31','Netherlands'),(155,'+599','Netherlands Antilles'),(156,'+1 869','Nevis'),(157,'+687','New Caledonia'),(158,'+64','New Zealand'),(159,'+505','Nicaragua'),(160,'+227','Niger'),(161,'+234','Nigeria'),(162,'+683','Niue'),(163,'+672','Norfolk Island'),(164,'+850','North Korea'),(165,'+1 670','Northern Mariana Islands'),(166,'+47','Norway'),(167,'+968','Oman'),(168,'+92','Pakistan'),(169,'+680','Palau'),(170,'+970','Palestinian Territory'),(171,'+507','Panama'),(172,'+675','Papua New Guinea'),(173,'+595','Paraguay'),(174,'+51','Peru'),(175,'+63','Philippines'),(176,'+48','Poland'),(177,'+351','Portugal'),(178,'+1 787','Puerto Rico'),(179,'+974','Qatar'),(180,'+262','Reunion'),(181,'+40','Romania'),(182,'+7','Russia'),(183,'+250','Rwanda'),(184,'+685','Samoa'),(185,'+378','San Marino'),(186,'+966','Saudi Arabia'),(187,'+221','Senegal'),(188,'+381','Serbia'),(189,'+248','Seychelles'),(190,'+232','Sierra Leone'),(191,'+65','Singapore'),(192,'+421','Slovakia'),(193,'+386','Slovenia'),(194,'+677','Solomon Islands'),(195,'+27','South Africa'),(196,'+500','S. Georgia/S. Sandwich Islands'),(197,'+82','South Korea'),(198,'+34','Spain'),(199,'+94','Sri Lanka'),(200,'+249','Sudan'),(201,'+597','Suriname'),(202,'+268','Swaziland'),(203,'+46','Sweden'),(204,'+41','Switzerland'),(205,'+963','Syria'),(206,'+886','Taiwan'),(207,'+992','Tajikistan'),(208,'+255','Tanzania'),(209,'+66','Thailand'),(210,'+670','Timor Leste'),(211,'+228','Togo'),(212,'+690','Tokelau'),(213,'+676','Tonga'),(214,'+1 868','Trinidad and Tobago'),(215,'+216','Tunisia'),(216,'+90','Turkey'),(217,'+993','Turkmenistan'),(218,'+1 649','Turks and Caicos Islands'),(219,'+688','Tuvalu'),(220,'+1 340','U.S. Virgin Islands'),(221,'+256','Uganda'),(222,'+380','Ukraine'),(223,'+971','United Arab Emirates'),(224,'+44','United Kingdom'),(225,'+1','United States'),(226,'+598','Uruguay'),(227,'+998','Uzbekistan'),(228,'+678','Vanuatu'),(229,'+58','Venezuela'),(230,'+84','Vietnam'),(231,'+1 808','Wake Island'),(232,'+681','Wallis and Futuna'),(233,'+967','Yemen'),(234,'+260','Zambia'),(235,'+255','Zanzibar'),(236,'+263','Zimbabwe');
/*!40000 ALTER TABLE `country_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `currency_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(45) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_symbol` varchar(1) DEFAULT NULL,
  `currency_cent` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'US Dollar','USD','$','¢'),(2,'British Pound','GBP','£','p'),(3,'Canadian Dollar','CAD','$','¢'),(4,'Euro','EUR','€','c'),(5,'Japanese Yen','JPY','¥','s');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry`
--

DROP TABLE IF EXISTS `industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `industry` (
  `industry_id` smallint(5) unsigned NOT NULL,
  `industry_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`industry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry`
--

LOCK TABLES `industry` WRITE;
/*!40000 ALTER TABLE `industry` DISABLE KEYS */;
INSERT INTO `industry` VALUES (1,'Telecommunications'),(2,'Education and Health Services'),(3,'Educational Services'),(4,'General Merchandising Stores'),(5,'Information'),(6,'Internet Publishing and Broadcasting'),(7,'Leisure and Hospitality'),(8,'Real Estate'),(9,'Truck Transportatio'),(10,'Transit and Ground Passenger Transportation'),(11,'Hospitals'),(12,'Construction'),(13,'Data Processing, Hosting, and Related Service'),(14,'Oil and Gas Extraction');
/*!40000 ALTER TABLE `industry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `job_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `recruiter_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(45) NOT NULL,
  `job_description` text,
  `municipality1` varchar(45) DEFAULT NULL COMMENT 'we may want to use a table to store all municipalities for optimal performance.',
  `municipality2` varchar(45) DEFAULT NULL COMMENT 'we may want to use a table to store all municipalities for optimal performance.',
  `country_id` tinyint(3) unsigned NOT NULL,
  `job_created` datetime DEFAULT NULL,
  `job_post_start` datetime DEFAULT NULL,
  `job_post_ends` datetime DEFAULT NULL,
  `job_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'type of job for this position. This value is linked with metada. 1=fulltime,2=parttime,3=seasonal,4=temp,5=intern,6=volunteer',
  `job_experience` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'desired experience level for this positon. This value is linked from the metadata table. 7=entry,8=junior,9=mid-senior,10=senior',
  `job_url` varchar(100) DEFAULT NULL,
  `job_reference` varchar(45) DEFAULT NULL COMMENT 'allows to enter a recruiter''s reference identifier',
  `industry_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `compensation_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'allows recruiter to enable the display of compensation in the job post.',
  `compensation_start` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `compensation_end` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `currency_id` tinyint(3) unsigned DEFAULT NULL,
  `compensation_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'this is the type of compensation. 1=per annum, 2=per hour',
  `total_views` int(10) unsigned NOT NULL DEFAULT '0',
  `total_applicants` int(10) unsigned NOT NULL DEFAULT '0',
  `publish` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'bool val to publish this to the job board',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'mark archivedif recruiter decides to delete. do not delete record from db just mark it with bool val',
  PRIMARY KEY (`job_id`),
  KEY `fk_country_idx` (`country_id`),
  KEY `fk_currency_idx` (`currency_id`),
  KEY `fk_industry_idx` (`industry_id`),
  KEY `idx_publish` (`publish`),
  KEY `idx_archived` (`archived`),
  KEY `fk_recruiter_idx` (`recruiter_id`),
  KEY `idx_views` (`total_views`),
  KEY `idx_applicants` (`total_applicants`),
  KEY `idx_type` (`job_type`),
  KEY `idx_experience` (`job_experience`),
  CONSTRAINT `fk_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_currency` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_industry` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`industry_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_recruiter` FOREIGN KEY (`recruiter_id`) REFERENCES `recruiter` (`recruiter_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,3,'Web Developer','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<ul>\n	<li>PHP</li>\n	<li>Object Oriented Programming</li>\n	<li>Work with fellow engineers</li>\n	<li>Optimize database</li>\n	<li>Agile Methodologies</li>\n	<li>Linux Environment</li>\n	<li>Willing to take on a new role.</li>\n</ul>','NY','Brooklyn',201,'2017-03-03 11:37:41','2017-03-10 12:00:00','2017-04-01 18:00:00',1,7,'https://anysite.com/jobpost/anynumer/','abc100',10,1,60000,80000,1,11,64,7,1,0),(2,3,'UI/UX Designer','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<ul>\n	<li>PHP</li>\n	<li>Object Oriented Programming</li>\n	<li>Work with fellow engineers</li>\n	<li>Optimize database</li>\n	<li>Agile Methodologies</li>\n	<li>Linux Environment</li>\n	<li>Willing to take on a new role.</li>\n</ul>','New York','Brooklyn',201,'2017-03-03 13:37:41','2017-03-10 12:00:00','2017-04-01 18:00:00',1,8,'https://anysite.com/jobpost/anynumer/','abc101',10,1,80000,100000,1,11,38,3,1,0),(3,3,'PHP Developer','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<ul>\n	<li>PHP</li>\n	<li>Object Oriented Programming</li>\n	<li>Work with fellow engineers</li>\n	<li>Optimize database</li>\n	<li>Agile Methodologies</li>\n	<li>Linux Environment</li>\n	<li>Willing to take on a new role.</li>\n</ul>','New York','',201,'2017-03-03 15:37:41','2017-03-10 12:00:00','2017-04-01 18:00:00',1,9,NULL,'abc102',10,1,130000,0,1,11,51,3,1,0),(4,3,'Mobile Developer','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<ul>\n	<li>PHP</li>\n	<li>Object Oriented Programming</li>\n	<li>Work with fellow engineers</li>\n	<li>Optimize database</li>\n	<li>Agile Methodologies</li>\n	<li>Linux Environment</li>\n	<li>Willing to take on a new role.</li>\n</ul>','New York','Brooklyn',201,'2017-03-04 08:37:41','2017-03-10 12:00:00','2017-04-01 18:00:00',1,8,'https://anysite.com/jobpost/anynumer/','abc103',10,1,100000,130000,1,11,17,1,1,0),(5,3,'Graphic Designer','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<ul>\n	<li>PHP</li>\n	<li>Object Oriented Programming</li>\n	<li>Work with fellow engineers</li>\n	<li>Optimize database</li>\n	<li>Agile Methodologies</li>\n	<li>Linux Environment</li>\n	<li>Willing to take on a new role.</li>\n</ul>','New York','Brooklyn',201,'2017-03-04 10:37:41','2017-03-10 12:00:00','2017-04-01 18:00:00',2,7,'https://anysite.com/jobpost/anynumer/','',10,0,60,75,1,12,32,0,0,0),(6,3,'Senior PHP Developer','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<ul>\n	<li>PHP</li>\n	<li>Object Oriented Programming</li>\n	<li>Work with fellow engineers</li>\n	<li>Optimize database</li>\n	<li>Agile Methodologies</li>\n	<li>Linux Environment</li>\n	<li>Willing to take on a new role.</li>\n</ul>','New York','',201,'2017-03-04 11:37:41','2017-03-10 12:00:00','2017-04-01 18:00:00',1,10,'https://anysite.com/jobpost/anynumer/','abc105',10,1,120000,150000,1,11,87,0,1,0),(25,1,'Sr. Front-End Engineer','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','NY','New York',201,'2017-02-17 11:37:41','2017-03-03 11:37:41','2017-03-03 11:37:41',2,7,NULL,'101245',5,1,80000,0,2,11,42,0,0,0),(26,3,'Senior Software Engineer','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r <ul>\r 	<li>PHP</li>\r 	<li>Object Oriented Programming</li>\r 	<li>Work with fellow engineers</li>\r 	<li>Optimize database</li>\r 	<li>Agile Methodologies</li>\r 	<li>Linux Environment</li>\r 	<li>Willing to take on a new role.</li>\r </ul>','New York','Brooklyn',201,'2017-02-18 11:37:41','2017-03-03 11:37:41','2017-03-03 11:37:41',3,8,NULL,'101256',5,0,90000,110000,1,11,14,0,1,0),(27,1,'Lead Java Developer','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r <ul>\r 	<li>PHP</li>\r 	<li>Object Oriented Programming</li>\r 	<li>Work with fellow engineers</li>\r 	<li>Optimize database</li>\r 	<li>Agile Methodologies</li>\r 	<li>Linux Environment</li>\r 	<li>Willing to take on a new role.</li>\r </ul>','NJ','Newark',201,'2017-02-18 11:37:41','2017-03-03 11:37:41','2017-03-03 11:37:41',4,9,NULL,'101656',5,1,50,0,5,12,25,0,0,0),(28,1,'Sr. Software Engineer, Full-Stack','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r <ul>\r 	<li>PHP</li>\r 	<li>Object Oriented Programming</li>\r 	<li>Work with fellow engineers</li>\r 	<li>Optimize database</li>\r 	<li>Agile Methodologies</li>\r 	<li>Linux Environment</li>\r 	<li>Willing to take on a new role.</li>\r </ul>','CT','Hartford',201,'2017-02-19 11:37:41','2017-03-03 11:37:41','2017-03-03 11:37:41',5,10,'https://anysite.com/jobpost/anynumer/','KL1253',6,0,100000,130000,4,11,104,0,1,0),(29,3,'Lead Front End Developer','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r <ul>\r 	<li>PHP</li>\r 	<li>Object Oriented Programming</li>\r 	<li>Work with fellow engineers</li>\r 	<li>Optimize database</li>\r 	<li>Agile Methodologies</li>\r 	<li>Linux Environment</li>\r 	<li>Willing to take on a new role.</li>\r </ul>','NY','New York',201,'2017-02-20 11:37:41','2017-03-03 11:37:41','2017-03-03 11:37:41',6,10,'https://anysite.com/jobpost/anynumer/','AS3556',7,1,60,0,3,12,62,0,1,0),(30,1,'Technical Service Manager','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r <ul>\r 	<li>PHP</li>\r 	<li>Object Oriented Programming</li>\r 	<li>Work with fellow engineers</li>\r 	<li>Optimize database</li>\r 	<li>Agile Methodologies</li>\r 	<li>Linux Environment</li>\r 	<li>Willing to take on a new role.</li>\r </ul>','NY','New York',201,'2017-02-22 11:37:41','2017-03-03 11:37:41','2017-03-03 11:37:41',1,9,NULL,'12365',4,1,75000,0,2,11,32,0,1,0),(31,3,'UI/UX Designer/Developer','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r <ul>\r 	<li>PHP</li>\r 	<li>Object Oriented Programming</li>\r 	<li>Work with fellow engineers</li>\r 	<li>Optimize database</li>\r 	<li>Agile Methodologies</li>\r 	<li>Linux Environment</li>\r 	<li>Willing to take on a new role.</li>\r </ul>','MA','Boston',201,'2017-02-24 11:37:41','2017-03-03 11:37:41','2017-03-03 11:37:41',1,8,'https://anysite.com/jobpost/anynumer/','32564',5,1,85000,100000,1,11,84,0,0,0),(32,3,'Senior Web Developer(Node.js)','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r <ul>\r 	<li>PHP</li>\r 	<li>Object Oriented Programming</li>\r 	<li>Work with fellow engineers</li>\r 	<li>Optimize database</li>\r 	<li>Agile Methodologies</li>\r 	<li>Linux Environment</li>\r 	<li>Willing to take on a new role.</li>\r </ul>','NJ','Jersey City',201,'2017-02-27 11:37:41','2017-03-03 11:37:41','2017-03-03 11:37:41',2,7,NULL,'RDF125',2,0,75,0,5,12,45,0,1,0),(33,1,'Senior Product Manager','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r <ul>\r 	<li>PHP</li>\r 	<li>Object Oriented Programming</li>\r 	<li>Work with fellow engineers</li>\r 	<li>Optimize database</li>\r 	<li>Agile Methodologies</li>\r 	<li>Linux Environment</li>\r 	<li>Willing to take on a new role.</li>\r </ul>','NY','White Plains',201,'2017-02-28 11:37:41','2017-03-03 11:37:41','2017-03-03 11:37:41',3,8,'https://anysite.com/jobpost/anynumer/','DSS255',3,1,75000,90000,4,11,33,0,1,0),(34,1,'eCommerce Full Stack Developer','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r <ul>\r 	<li>PHP</li>\r 	<li>Object Oriented Programming</li>\r 	<li>Work with fellow engineers</li>\r 	<li>Optimize database</li>\r 	<li>Agile Methodologies</li>\r 	<li>Linux Environment</li>\r 	<li>Willing to take on a new role.</li>\r </ul>','NY','New York',201,'2017-03-03 11:37:41','2017-03-03 11:37:41','2017-03-03 11:37:41',4,9,NULL,'ER1235',8,1,68000,80000,3,11,17,0,0,0);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_applicants`
--

DROP TABLE IF EXISTS `job_applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_applicants` (
  `job_applicants_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(10) unsigned NOT NULL DEFAULT '0',
  `seeker_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_applied` datetime DEFAULT NULL,
  PRIMARY KEY (`job_applicants_id`),
  KEY `fk_app_job_idx` (`job_id`),
  KEY `fk_app_seeker_idx` (`seeker_id`),
  CONSTRAINT `fk_app_job` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_app_seeker` FOREIGN KEY (`seeker_id`) REFERENCES `seeker` (`seeker_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_applicants`
--

LOCK TABLES `job_applicants` WRITE;
/*!40000 ALTER TABLE `job_applicants` DISABLE KEYS */;
INSERT INTO `job_applicants` VALUES (1,1,5,'2017-02-15 11:12:25'),(2,1,7,'2017-02-15 13:12:25'),(3,1,8,'2017-02-17 21:12:25'),(4,1,18,'2017-02-22 13:12:25'),(5,1,16,'2017-02-27 07:12:25'),(6,1,4,'2017-02-28 14:12:25'),(7,1,11,'2017-03-05 11:12:25'),(8,2,7,'2017-02-11 11:12:25'),(9,3,5,'2017-02-15 12:12:25'),(10,3,6,'2017-02-16 11:12:25'),(11,2,4,'2017-02-17 11:12:25'),(12,4,3,'2017-02-18 11:12:25'),(13,5,2,'2017-02-19 11:12:25'),(14,5,19,'2017-02-20 11:12:25'),(15,2,18,'2017-02-21 11:12:25'),(16,3,17,'2017-02-22 11:12:25');
/*!40000 ALTER TABLE `job_applicants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_skill`
--

DROP TABLE IF EXISTS `job_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_skill` (
  `job_skill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(10) unsigned NOT NULL,
  `skill_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`job_skill_id`),
  KEY `fk_job_id_idx` (`job_id`),
  KEY `fk_skill_idx` (`skill_id`),
  CONSTRAINT `fk_job_id` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_skill` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`skill_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='table to hold desired skills for job post';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_skill`
--

LOCK TABLES `job_skill` WRITE;
/*!40000 ALTER TABLE `job_skill` DISABLE KEYS */;
INSERT INTO `job_skill` VALUES (1,1,1),(2,1,3),(3,1,12),(4,1,13),(5,1,14),(6,1,20),(7,1,23),(8,1,28),(9,1,35),(10,1,45),(11,2,2),(12,2,3),(13,2,5),(14,2,7),(15,2,6),(16,2,18),(17,2,22),(18,2,31),(19,2,32),(20,3,42),(21,3,19),(22,3,12),(23,3,11),(24,4,10),(25,4,35),(26,4,40),(27,4,17),(28,4,19),(29,4,2),(30,6,1),(31,6,3),(32,6,5),(33,6,7),(34,25,1),(35,25,2),(36,25,3),(37,25,4),(38,25,5),(39,25,6),(40,25,14),(41,25,25),(42,26,36),(43,26,15),(44,26,1),(45,26,7),(46,26,3),(47,26,68),(48,26,67),(49,26,65),(50,26,1),(51,27,54),(52,27,18),(53,27,22),(54,27,33),(55,27,35),(56,27,24),(57,28,26),(58,28,44),(59,28,55),(60,28,67),(61,28,62),(62,30,60),(63,30,18),(64,30,6),(65,31,9),(66,31,8),(67,31,10),(68,31,17),(69,31,28),(70,31,33),(71,32,38),(72,32,45),(73,32,7),(74,32,68),(75,32,61),(76,33,15),(77,33,22),(78,33,17),(79,33,24),(80,33,33),(81,33,44),(82,33,47),(83,33,50);
/*!40000 ALTER TABLE `job_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_view`
--

DROP TABLE IF EXISTS `job_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_view` (
  `job_view_id` int(10) unsigned NOT NULL,
  `job_id` int(11) unsigned NOT NULL,
  `seeker_id` int(11) unsigned NOT NULL,
  `view_date` datetime DEFAULT NULL,
  PRIMARY KEY (`job_view_id`),
  KEY `fk_job_idx` (`job_id`),
  KEY `fk_seeker_idx` (`seeker_id`),
  CONSTRAINT `fk_job` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_seeker` FOREIGN KEY (`seeker_id`) REFERENCES `seeker` (`seeker_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_view`
--

LOCK TABLES `job_view` WRITE;
/*!40000 ALTER TABLE `job_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadata`
--

DROP TABLE IF EXISTS `metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadata` (
  `metadata_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `metadata_type` varchar(45) DEFAULT NULL,
  `metadata_label` varchar(45) DEFAULT NULL,
  `metadata_value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`metadata_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='Table to store metadata for various datasets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadata`
--

LOCK TABLES `metadata` WRITE;
/*!40000 ALTER TABLE `metadata` DISABLE KEYS */;
INSERT INTO `metadata` VALUES (1,'jobtype','Full-time',NULL),(2,'jobtype','Part-Time',NULL),(3,'jobtype','Seasonal',NULL),(4,'jobtype','Temp',NULL),(5,'jobtype','Intern',NULL),(6,'jobtype','Volunteer',NULL),(7,'experience','Entry',NULL),(8,'experience','Junior',NULL),(9,'experience','Mid-Senior',NULL),(10,'experience','Senior',NULL),(11,'comptype','Annum',NULL),(12,'comptype','Hour',NULL),(13,'jobtype','Contract',NULL);
/*!40000 ALTER TABLE `metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruiter`
--

DROP TABLE IF EXISTS `recruiter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recruiter` (
  `recruiter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recruiter_fname` varchar(45) DEFAULT NULL,
  `recruiter_lname` varchar(45) DEFAULT NULL,
  `recruiter_email` varchar(45) DEFAULT NULL,
  `country_code_id` tinyint(3) unsigned NOT NULL DEFAULT '225',
  `recruiter_phone` varchar(20) NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`recruiter_id`),
  KEY `fk_company_idx` (`company_id`),
  KEY `fk_ccode` (`country_code_id`),
  CONSTRAINT `fk_ccode` FOREIGN KEY (`country_code_id`) REFERENCES `country_code` (`country_code_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruiter`
--

LOCK TABLES `recruiter` WRITE;
/*!40000 ALTER TABLE `recruiter` DISABLE KEYS */;
INSERT INTO `recruiter` VALUES (1,'John','Doe','johndoe@crowded.com',225,'8885556666',10),(2,'Jane','Doe','janedoe@facebook.com',225,'7774447777',4),(3,'Elizabeth','Jimenez','ejimenez@easterncarservice.com',225,'7183695031',11);
/*!40000 ALTER TABLE `recruiter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seeker`
--

DROP TABLE IF EXISTS `seeker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seeker` (
  `seeker_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `seeker_fname` varchar(45) NOT NULL,
  `seeker_lname` varchar(45) NOT NULL,
  `seeker_email` varchar(45) NOT NULL,
  `seeker_phone` varchar(20) NOT NULL,
  `country_code_id` tinyint(3) unsigned DEFAULT '225',
  PRIMARY KEY (`seeker_id`),
  UNIQUE KEY `seeker_email_UNIQUE` (`seeker_email`),
  KEY `idx_seeker_email` (`seeker_email`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seeker`
--

LOCK TABLES `seeker` WRITE;
/*!40000 ALTER TABLE `seeker` DISABLE KEYS */;
INSERT INTO `seeker` VALUES (1,'Marvin','Aleman','mraleman@gmail.com','7185102231',225),(2,'Heeday','Nakahashi','hnaka@hotmail.com','7186336661',225),(3,'Jose','Peralta','jp@asds.com','6467011234',225),(4,'Jennifer','Smith','jsmith@hotmail.com','2123214567',225),(5,'Freddy','Mercury','ibitthedust@queen.com','3474899898',225),(6,'Michael','Jackson','thriller@whiteglove.com','9177717085',225),(7,'John','Lennon','imagine@allthepeople.com','7184830935',225),(8,'James','Calhoun','jcaloh@gmail.com','6453251254',225),(9,'Fred','Navarro','asds@lldd.com','6584561234',222),(10,'Gina','Rivas','grivas@aol.com','6665211252',15),(11,'Bob','Harris','bharris@gmail.com','1234567890',225),(12,'Kitty','Pride','kpride@xmen.com','9876543210',225),(13,'Clark','Kent','ckent@dailyplanet.com','6587965232',119),(14,'Peter','Parker','pparker@sman.com','4567894561',225),(15,'Susan','Leobardi','sleo@gmail.com','6547896321',225),(16,'Terrance','Howard','thoward@gmail.com','9871478522',225),(17,'Tom','Pence','tpence@pensive.com','3258963256',225),(18,'Nate','Vasquez','nvasquez@sbyo.org','9876696321',225),(19,'John','Deacon','queens@queens.com','1234563258',225);
/*!40000 ALTER TABLE `seeker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill` (
  `skill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'PHP7'),(2,'PHP'),(3,'Javascript'),(4,'React-Native'),(5,'ReactJS'),(6,'Perl'),(7,'C#'),(8,'Python'),(9,'Java'),(10,'C++'),(11,'XML'),(12,'JSON'),(13,'RESTful API'),(14,'Photoshop'),(15,'Illustrator'),(16,'Microsoft Office'),(17,'Word'),(18,'Excel'),(19,'Social Media'),(20,'LAMP'),(21,'WAMP'),(22,'XAMP'),(23,'MySQL'),(24,'MongoDB'),(25,'NoSQL'),(26,'CSS'),(27,'HTML'),(28,'HTML5'),(29,'CSS3'),(30,'Bootstrap'),(31,'Responsive Web Design'),(32,'Responsive Web Developmen'),(33,'Web Development'),(34,'Mobile Development'),(35,'Laravel'),(36,'CakePHP'),(37,'CodeIgniter'),(38,'Wordpress'),(39,'Joomla'),(40,'OOP'),(41,'Object-Oriented Programmi'),(42,'Frontend Development'),(43,'Backend Development'),(44,'Relational Database'),(45,'Github'),(46,'Git'),(47,'Linux'),(48,'Nginx'),(49,'AWS'),(50,'Amazon Web Services'),(51,'jQuery'),(52,'SQL'),(53,'AngularJS'),(54,'NodeJS'),(55,'Apache'),(56,'MVC Frameworks'),(57,'UI/UX'),(58,'Grunt'),(59,'React'),(60,'Ember'),(61,'YAML'),(62,'Customer Service'),(63,'Time Management'),(64,'Scrum Master'),(65,'Agile'),(66,'Scrum'),(67,'ASP.Net'),(68,'GO');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-07  3:59:55
