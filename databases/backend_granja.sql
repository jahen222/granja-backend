-- MySQL dump 10.13  Distrib 5.7.35, for Linux (x86_64)
--
-- Host: localhost    Database: backend_granja
-- ------------------------------------------------------
-- Server version	5.7.35-0ubuntu0.18.04.2

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
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actividades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
INSERT INTO `actividades` VALUES (1,'Poda','2021-06-11 04:16:58',1,1,'2021-06-11 08:16:54','2021-06-11 08:16:58'),(2,'Humix','2021-06-11 04:17:29',1,1,'2021-06-11 08:17:26','2021-06-11 08:17:29'),(3,'Fungicida','2021-06-11 04:17:47',1,1,'2021-06-11 08:17:45','2021-06-11 08:17:47');
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arbols`
--

DROP TABLE IF EXISTS `arbols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arbols` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `numero` int(11) DEFAULT NULL,
  `camellon` int(11) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `camellone` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arbols`
--

LOCK TABLES `arbols` WRITE;
/*!40000 ALTER TABLE `arbols` DISABLE KEYS */;
INSERT INTO `arbols` VALUES (1,102,NULL,'Nogal','2021-07-13 22:37:24',1,1,'2021-07-14 02:37:09','2021-07-14 02:37:24',1),(3,103,NULL,'Roble','2021-07-13 22:42:06',1,1,'2021-07-14 02:41:27','2021-07-14 02:42:06',1);
/*!40000 ALTER TABLE `arbols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camellones`
--

DROP TABLE IF EXISTS `camellones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `camellones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `numero` int(11) DEFAULT NULL,
  `zona` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camellones`
--

LOCK TABLES `camellones` WRITE;
/*!40000 ALTER TABLE `camellones` DISABLE KEYS */;
INSERT INTO `camellones` VALUES (1,1,1,'2021-07-13 22:07:51',1,1,'2021-07-14 02:07:46','2021-07-14 02:07:51'),(2,2,1,'2021-07-13 22:08:12',1,1,'2021-07-14 02:08:09','2021-07-14 02:08:13'),(3,3,1,'2021-07-13 22:08:29',1,1,'2021-07-14 02:08:26','2021-07-14 02:08:29');
/*!40000 ALTER TABLE `camellones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campos`
--

DROP TABLE IF EXISTS `campos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campos_nombre_unique` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campos`
--

LOCK TABLES `campos` WRITE;
/*!40000 ALTER TABLE `campos` DISABLE KEYS */;
INSERT INTO `campos` VALUES (1,'Buli','2021-06-10 20:42:17',1,1,'2021-06-11 00:42:14','2021-06-11 00:42:17'),(2,'San Carlos','2021-06-10 20:42:31',1,1,'2021-06-11 00:42:28','2021-06-11 00:42:31');
/*!40000 ALTER TABLE `campos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centro_costos`
--

DROP TABLE IF EXISTS `centro_costos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centro_costos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centro_costos`
--

LOCK TABLES `centro_costos` WRITE;
/*!40000 ALTER TABLE `centro_costos` DISABLE KEYS */;
INSERT INTO `centro_costos` VALUES (1,'Agricolas','2021-07-21 20:34:17',1,1,'2021-07-22 00:34:14','2021-07-22 00:34:17'),(2,'Servicios','2021-07-21 20:34:29',1,1,'2021-07-22 00:34:26','2021-07-22 00:34:29');
/*!40000 ALTER TABLE `centro_costos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `rut` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `direccion` longtext,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Prueba cliente','k-7445454','04127738975','','a ver que es esto','2021-09-23 03:12:22',1,1,'2021-09-23 07:12:17','2021-09-23 07:12:22');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compras` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `producto` int(11) DEFAULT NULL,
  `centrocosto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `unidad` varchar(255) DEFAULT NULL,
  `valorunitario` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `guia` varchar(255) DEFAULT NULL,
  `factura` varchar(255) DEFAULT NULL,
  `forma_pago` int(11) DEFAULT NULL,
  `cheque` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `campo` int(11) DEFAULT NULL,
  `centro_costo` int(11) DEFAULT NULL,
  `proveedore` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (3,4,NULL,3335,'Kilos',100.00,333500.00,'2325','52115',1,'','2021-09-23 02:49:28',NULL,NULL,'2021-09-23 06:49:28','2021-09-23 06:49:28',2,1,2);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'model_def_strapi::core-store','{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}','object',NULL,NULL),(2,'model_def_strapi::webhooks','{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(3,'model_def_strapi::permission','{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}','object',NULL,NULL),(4,'model_def_strapi::role','{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}','object',NULL,NULL),(5,'model_def_strapi::user','{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}}}','object',NULL,NULL),(6,'model_def_plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(7,'model_def_plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(8,'model_def_plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"campo\":{\"model\":\"campo\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(9,'model_def_plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(10,'model_def_plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"collectionName\":\"i18n_locales\",\"kind\":\"collectionType\",\"info\":{\"name\":\"locale\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(11,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}','object','',''),(12,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),(13,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"PreferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreferedLanguage\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}','object','',''),(14,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"campo\":{\"edit\":{\"label\":\"Campo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Campo\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]],\"editRelations\":[\"role\",\"campo\"]}}','object','',''),(15,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(16,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"Properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),(17,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(18,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),(19,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(20,'plugin_content_manager_configuration_content_types::plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object','',''),(21,'plugin_i18n_default_locale','\"en\"','string','',''),(22,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(23,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','',''),(24,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object','',''),(25,'plugin_documentation_config','{\"restrictedAccess\":false}','object','',''),(26,'model_def_application::granja.granja','{\"uid\":\"application::granja.granja\",\"collectionName\":\"granjas\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Granja\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(28,'model_def_application::campo.campo','{\"uid\":\"application::campo.campo\",\"collectionName\":\"campos\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Campos\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"zonas\":{\"via\":\"campo\",\"collection\":\"zonas\",\"isVirtual\":true},\"ventas\":{\"via\":\"campo\",\"collection\":\"ventas\",\"isVirtual\":true},\"compras\":{\"via\":\"campo\",\"collection\":\"compras\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(29,'plugin_content_manager_configuration_content_types::application::campo.campo','{\"uid\":\"application::campo.campo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"Nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nombre\",\"searchable\":true,\"sortable\":true}},\"zonas\":{\"edit\":{\"label\":\"Zonas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Zonas\",\"searchable\":false,\"sortable\":false}},\"ventas\":{\"edit\":{\"label\":\"Ventas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"factura\"},\"list\":{\"label\":\"Ventas\",\"searchable\":false,\"sortable\":false}},\"compras\":{\"edit\":{\"label\":\"Compras\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"unidad\"},\"list\":{\"label\":\"Compras\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nombre\",\"zonas\",\"ventas\"],\"edit\":[[{\"name\":\"nombre\",\"size\":6}]],\"editRelations\":[\"zonas\",\"ventas\",\"compras\"]}}','object','',''),(30,'model_def_application::actividad.actividad','{\"uid\":\"application::actividad.actividad\",\"collectionName\":\"actividades\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Actividad\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"enumeration\",\"enum\":[\"poda\",\"humix\",\"fungicida\"],\"required\":true},\"inicio\":{\"type\":\"date\",\"required\":true},\"fin\":{\"type\":\"date\",\"required\":true},\"proposito\":{\"type\":\"string\"},\"tipo\":{\"type\":\"enumeration\",\"enum\":[\"mantencion\",\"aplicacion\"]},\"cantidad\":{\"type\":\"string\"},\"medida\":{\"type\":\"string\"},\"campo\":{\"model\":\"campo\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(32,'model_def_application::actividades.actividades','{\"uid\":\"application::actividades.actividades\",\"collectionName\":\"actividades\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Actividades\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(33,'plugin_content_manager_configuration_content_types::application::actividades.actividades','{\"uid\":\"application::actividades.actividades\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"Nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nombre\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"nombre\",\"size\":6}]],\"editRelations\":[],\"list\":[\"id\",\"nombre\"]}}','object','',''),(34,'model_def_application::registro-actividad.registro-actividad','{\"uid\":\"application::registro-actividad.registro-actividad\",\"collectionName\":\"registro_actividads\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Registro Actividades\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"actividad\":{\"type\":\"string\",\"required\":true},\"fechainicio\":{\"type\":\"datetime\"},\"fechafin\":{\"type\":\"datetime\"},\"proposito\":{\"type\":\"string\"},\"tipo\":{\"type\":\"string\"},\"cantidad\":{\"type\":\"string\"},\"medida\":{\"type\":\"string\"},\"campo\":{\"model\":\"campo\"},\"registro_actividad\":{\"model\":\"registro-actividad\"},\"fechainiciocliente\":{\"type\":\"datetime\"},\"fechafincliente\":{\"type\":\"datetime\"},\"observacion\":{\"type\":\"string\"},\"recursos\":{\"type\":\"integer\"},\"estado\":{\"type\":\"string\",\"required\":true,\"default\":\"Proyectado\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(35,'plugin_content_manager_configuration_content_types::application::registro-actividad.registro-actividad','{\"uid\":\"application::registro-actividad.registro-actividad\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"actividad\",\"defaultSortBy\":\"actividad\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"fechainicio\":{\"edit\":{\"label\":\"Fechainicio\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fechainicio\",\"searchable\":true,\"sortable\":true}},\"cantidad\":{\"edit\":{\"label\":\"Cantidad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cantidad\",\"searchable\":true,\"sortable\":true}},\"estado\":{\"edit\":{\"label\":\"Estado\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Estado\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"recursos\":{\"edit\":{\"label\":\"Recursos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Recursos\",\"searchable\":true,\"sortable\":true}},\"fechafincliente\":{\"edit\":{\"label\":\"Fechafincliente\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fechafincliente\",\"searchable\":true,\"sortable\":true}},\"campo\":{\"edit\":{\"label\":\"Campo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Campo\",\"searchable\":true,\"sortable\":true}},\"fechafin\":{\"edit\":{\"label\":\"Fechafin\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fechafin\",\"searchable\":true,\"sortable\":true}},\"registro_actividad\":{\"edit\":{\"label\":\"Registro_actividad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"actividad\"},\"list\":{\"label\":\"Registro_actividad\",\"searchable\":true,\"sortable\":true}},\"tipo\":{\"edit\":{\"label\":\"Tipo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Tipo\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}},\"fechainiciocliente\":{\"edit\":{\"label\":\"Fechainiciocliente\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fechainiciocliente\",\"searchable\":true,\"sortable\":true}},\"medida\":{\"edit\":{\"label\":\"Medida\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Medida\",\"searchable\":true,\"sortable\":true}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"actividad\":{\"edit\":{\"label\":\"Actividad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Actividad\",\"searchable\":true,\"sortable\":true}},\"observacion\":{\"edit\":{\"label\":\"Observacion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Observacion\",\"searchable\":true,\"sortable\":true}},\"proposito\":{\"edit\":{\"label\":\"Proposito\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Proposito\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"actividad\",\"size\":6},{\"name\":\"proposito\",\"size\":6}],[{\"name\":\"tipo\",\"size\":6},{\"name\":\"estado\",\"size\":6}],[{\"name\":\"medida\",\"size\":6},{\"name\":\"cantidad\",\"size\":6}],[{\"name\":\"fechainicio\",\"size\":6},{\"name\":\"fechafin\",\"size\":6}],[{\"name\":\"fechainiciocliente\",\"size\":6},{\"name\":\"fechafincliente\",\"size\":6}],[{\"name\":\"observacion\",\"size\":6},{\"name\":\"recursos\",\"size\":4}]],\"editRelations\":[\"campo\",\"registro_actividad\"],\"list\":[\"id\",\"actividad\",\"fechainicio\",\"fechafin\"]}}','object','',''),(36,'model_def_application::zona.zona','{\"uid\":\"application::zona.zona\",\"collectionName\":\"zonas\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Zonas\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Numero\":{\"type\":\"integer\",\"required\":true,\"private\":false,\"unique\":true,\"min\":0},\"campo\":{\"via\":\"zonas\",\"model\":\"campo\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(38,'model_def_application::camellon.camellon','{\"uid\":\"application::camellon.camellon\",\"collectionName\":\"camellons\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Camellones\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Numero\":{\"type\":\"integer\",\"required\":true,\"unique\":true,\"min\":0},\"zona\":{\"via\":\"camellons\",\"model\":\"zona\"},\"arbols\":{\"via\":\"camellon\",\"collection\":\"arbol\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(40,'model_def_application::arbol.arbol','{\"uid\":\"application::arbol.arbol\",\"collectionName\":\"arbols\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Arboles\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"numero\":{\"type\":\"integer\",\"required\":true,\"unique\":false,\"min\":0},\"tipo\":{\"type\":\"enumeration\",\"enum\":[\"Manzano\",\"Nogal\",\"Roble\"],\"required\":true},\"camellone\":{\"via\":\"arboles\",\"model\":\"camellones\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(41,'plugin_content_manager_configuration_content_types::application::arbol.arbol','{\"uid\":\"application::arbol.arbol\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"numero\":{\"edit\":{\"label\":\"Numero\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Numero\",\"searchable\":true,\"sortable\":true}},\"tipo\":{\"edit\":{\"label\":\"Tipo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Tipo\",\"searchable\":true,\"sortable\":true}},\"camellone\":{\"edit\":{\"label\":\"Camellone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Camellone\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"tipo\",\"size\":6},{\"name\":\"numero\",\"size\":4}]],\"editRelations\":[\"camellone\"],\"list\":[\"id\",\"numero\",\"tipo\",\"camellone\"]}}','object','',''),(42,'model_def_application::cuidado-arboles.cuidado-arboles','{\"uid\":\"application::cuidado-arboles.cuidado-arboles\",\"collectionName\":\"cuidado_arboles\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Cuidado Arboles\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"actividad\":{\"type\":\"string\",\"required\":true},\"descripcion\":{\"type\":\"string\"},\"estado\":{\"type\":\"string\",\"required\":true,\"default\":\"Pendiente\"},\"camellone\":{\"type\":\"string\"},\"arbol\":{\"type\":\"string\"},\"zona\":{\"model\":\"zonas\",\"via\":\"cuidado_arboles\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(43,'plugin_content_manager_configuration_content_types::application::cuidado-arboles.cuidado-arboles','{\"uid\":\"application::cuidado-arboles.cuidado-arboles\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"actividad\":{\"edit\":{\"label\":\"Actividad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Actividad\",\"searchable\":true,\"sortable\":true}},\"descripcion\":{\"edit\":{\"label\":\"Descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Descripcion\",\"searchable\":true,\"sortable\":true}},\"estado\":{\"edit\":{\"label\":\"Estado\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Estado\",\"searchable\":true,\"sortable\":true}},\"camellone\":{\"edit\":{\"label\":\"Camellone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Camellone\",\"searchable\":true,\"sortable\":true}},\"arbol\":{\"edit\":{\"label\":\"Arbol\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Arbol\",\"searchable\":true,\"sortable\":true}},\"zona\":{\"edit\":{\"label\":\"Zona\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Zona\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"camellone\",\"arbol\",\"zona\"],\"edit\":[[{\"name\":\"actividad\",\"size\":6},{\"name\":\"descripcion\",\"size\":6}],[{\"name\":\"estado\",\"size\":6}],[{\"name\":\"camellone\",\"size\":6}]],\"editRelations\":[\"zona\"]}}','object','',''),(44,'model_def_application::zonas.zonas','{\"uid\":\"application::zonas.zonas\",\"collectionName\":\"zonas\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Zonas\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"numero\":{\"required\":true,\"unique\":false,\"min\":0,\"default\":1,\"type\":\"integer\"},\"campo\":{\"model\":\"campo\",\"via\":\"zonas\"},\"camellones\":{\"via\":\"zona\",\"collection\":\"camellones\",\"isVirtual\":true},\"cuidado_arboles\":{\"via\":\"zona\",\"collection\":\"cuidado-arboles\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(45,'plugin_content_manager_configuration_content_types::application::zonas.zonas','{\"uid\":\"application::zonas.zonas\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"numero\":{\"edit\":{\"label\":\"Numero\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Numero\",\"searchable\":true,\"sortable\":true}},\"campo\":{\"edit\":{\"label\":\"Campo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Campo\",\"searchable\":true,\"sortable\":true}},\"camellones\":{\"edit\":{\"label\":\"Camellones\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Camellones\",\"searchable\":false,\"sortable\":false}},\"cuidado_arboles\":{\"edit\":{\"label\":\"Cuidado_arboles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"actividad\"},\"list\":{\"label\":\"Cuidado_arboles\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"numero\",\"campo\",\"camellones\"],\"edit\":[[{\"name\":\"numero\",\"size\":4}]],\"editRelations\":[\"campo\",\"camellones\",\"cuidado_arboles\"]}}','object','',''),(46,'model_def_application::camellones.camellones','{\"uid\":\"application::camellones.camellones\",\"collectionName\":\"camellones\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Camellones\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"numero\":{\"type\":\"integer\",\"required\":true,\"unique\":false,\"min\":0},\"zona\":{\"via\":\"camellones\",\"model\":\"zonas\"},\"arboles\":{\"via\":\"camellone\",\"collection\":\"arbol\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(47,'plugin_content_manager_configuration_content_types::application::camellones.camellones','{\"uid\":\"application::camellones.camellones\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"numero\":{\"edit\":{\"label\":\"Numero\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Numero\",\"searchable\":true,\"sortable\":true}},\"zona\":{\"edit\":{\"label\":\"Zona\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Zona\",\"searchable\":true,\"sortable\":true}},\"arboles\":{\"edit\":{\"label\":\"Arboles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Arboles\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"numero\",\"size\":4}]],\"editRelations\":[\"zona\",\"arboles\"],\"list\":[\"id\",\"numero\",\"zona\",\"arboles\"]}}','object','',''),(48,'model_def_application::productos.productos','{\"uid\":\"application::productos.productos\",\"collectionName\":\"productos\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Productos\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(49,'plugin_content_manager_configuration_content_types::application::productos.productos','{\"uid\":\"application::productos.productos\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"Nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nombre\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"nombre\",\"size\":6}]],\"editRelations\":[],\"list\":[\"id\",\"nombre\"]}}','object','',''),(50,'model_def_application::ventas.ventas','{\"uid\":\"application::ventas.ventas\",\"collectionName\":\"ventas\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Ventas\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"producto\":{\"model\":\"productos\"},\"valorkilo\":{\"type\":\"decimal\",\"required\":true,\"min\":0},\"total\":{\"type\":\"decimal\",\"required\":true,\"min\":0},\"factura\":{\"type\":\"string\",\"required\":true},\"forma_pago\":{\"model\":\"forma-pagos\"},\"cheque\":{\"type\":\"string\"},\"campo\":{\"model\":\"campo\",\"via\":\"ventas\"},\"calidad\":{\"type\":\"string\",\"required\":true},\"cantidad\":{\"required\":true,\"type\":\"integer\"},\"cliente\":{\"model\":\"clientes\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(51,'plugin_content_manager_configuration_content_types::application::ventas.ventas','{\"uid\":\"application::ventas.ventas\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"factura\",\"defaultSortBy\":\"factura\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"producto\":{\"edit\":{\"label\":\"Producto\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Producto\",\"searchable\":true,\"sortable\":true}},\"valorkilo\":{\"edit\":{\"label\":\"Valorkilo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Valorkilo\",\"searchable\":true,\"sortable\":true}},\"total\":{\"edit\":{\"label\":\"Total\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Total\",\"searchable\":true,\"sortable\":true}},\"factura\":{\"edit\":{\"label\":\"Factura\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Factura\",\"searchable\":true,\"sortable\":true}},\"forma_pago\":{\"edit\":{\"label\":\"Forma_pago\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Forma_pago\",\"searchable\":true,\"sortable\":true}},\"cheque\":{\"edit\":{\"label\":\"Cheque\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cheque\",\"searchable\":true,\"sortable\":true}},\"campo\":{\"edit\":{\"label\":\"Campo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Campo\",\"searchable\":true,\"sortable\":true}},\"calidad\":{\"edit\":{\"label\":\"Calidad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Calidad\",\"searchable\":true,\"sortable\":true}},\"cantidad\":{\"edit\":{\"label\":\"Cantidad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cantidad\",\"searchable\":true,\"sortable\":true}},\"cliente\":{\"edit\":{\"label\":\"Cliente\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Cliente\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"producto\",\"calidad\",\"cliente\"],\"edit\":[[{\"name\":\"valorkilo\",\"size\":4},{\"name\":\"cantidad\",\"size\":4}],[{\"name\":\"total\",\"size\":4},{\"name\":\"calidad\",\"size\":6}],[{\"name\":\"factura\",\"size\":6},{\"name\":\"cheque\",\"size\":6}]],\"editRelations\":[\"producto\",\"forma_pago\",\"campo\",\"cliente\"]}}','object','',''),(52,'model_def_application::forma-pagos.forma-pagos','{\"uid\":\"application::forma-pagos.forma-pagos\",\"collectionName\":\"forma_pagos\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Forma Pagos\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(53,'plugin_content_manager_configuration_content_types::application::forma-pagos.forma-pagos','{\"uid\":\"application::forma-pagos.forma-pagos\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"Nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nombre\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"nombre\",\"size\":6}]],\"editRelations\":[],\"list\":[\"id\",\"nombre\"]}}','object','',''),(54,'model_def_application::compras.compras','{\"uid\":\"application::compras.compras\",\"collectionName\":\"compras\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Compras\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"producto\":{\"model\":\"productos\"},\"cantidad\":{\"type\":\"integer\",\"required\":true,\"min\":0},\"unidad\":{\"type\":\"string\",\"required\":true},\"valorunitario\":{\"type\":\"decimal\",\"required\":true,\"min\":0},\"total\":{\"type\":\"decimal\",\"required\":true,\"min\":0},\"guia\":{\"type\":\"string\",\"required\":false},\"factura\":{\"type\":\"string\",\"required\":false},\"forma_pago\":{\"model\":\"forma-pagos\"},\"cheque\":{\"type\":\"string\"},\"campo\":{\"model\":\"campo\",\"via\":\"compras\"},\"centro_costo\":{\"model\":\"centro-costos\"},\"proveedore\":{\"model\":\"proveedores\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(55,'plugin_content_manager_configuration_content_types::application::compras.compras','{\"uid\":\"application::compras.compras\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"unidad\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"producto\":{\"edit\":{\"label\":\"Producto\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Producto\",\"searchable\":true,\"sortable\":true}},\"cantidad\":{\"edit\":{\"label\":\"Cantidad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cantidad\",\"searchable\":true,\"sortable\":true}},\"unidad\":{\"edit\":{\"label\":\"Unidad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Unidad\",\"searchable\":true,\"sortable\":true}},\"valorunitario\":{\"edit\":{\"label\":\"Valorunitario\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Valorunitario\",\"searchable\":true,\"sortable\":true}},\"total\":{\"edit\":{\"label\":\"Total\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Total\",\"searchable\":true,\"sortable\":true}},\"guia\":{\"edit\":{\"label\":\"Guia\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Guia\",\"searchable\":true,\"sortable\":true}},\"factura\":{\"edit\":{\"label\":\"Factura\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Factura\",\"searchable\":true,\"sortable\":true}},\"forma_pago\":{\"edit\":{\"label\":\"Forma_pago\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Forma_pago\",\"searchable\":true,\"sortable\":true}},\"cheque\":{\"edit\":{\"label\":\"Cheque\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cheque\",\"searchable\":true,\"sortable\":true}},\"campo\":{\"edit\":{\"label\":\"Campo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Campo\",\"searchable\":true,\"sortable\":true}},\"centro_costo\":{\"edit\":{\"label\":\"Centro_costo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Centro_costo\",\"searchable\":true,\"sortable\":true}},\"proveedore\":{\"edit\":{\"label\":\"Proveedore\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Proveedore\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"producto\",\"cantidad\",\"proveedore\"],\"edit\":[[{\"name\":\"unidad\",\"size\":6},{\"name\":\"cantidad\",\"size\":4}],[{\"name\":\"valorunitario\",\"size\":4},{\"name\":\"total\",\"size\":4}],[{\"name\":\"guia\",\"size\":6},{\"name\":\"factura\",\"size\":6}],[{\"name\":\"cheque\",\"size\":6}]],\"editRelations\":[\"producto\",\"forma_pago\",\"campo\",\"centro_costo\",\"proveedore\"]}}','object','',''),(56,'model_def_application::centro-costos.centro-costos','{\"uid\":\"application::centro-costos.centro-costos\",\"collectionName\":\"centro_costos\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Centro Costos\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(57,'plugin_content_manager_configuration_content_types::application::centro-costos.centro-costos','{\"uid\":\"application::centro-costos.centro-costos\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"Nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nombre\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"nombre\",\"size\":6}]],\"editRelations\":[],\"list\":[\"id\",\"nombre\"]}}','object','',''),(58,'model_def_application::producto-cosechas.producto-cosechas','{\"uid\":\"application::producto-cosechas.producto-cosechas\",\"collectionName\":\"producto_cosechas\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Producto Cosechas\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true},\"zona_cosechas\":{\"via\":\"producto_cosecha\",\"collection\":\"zona-cosechas\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(59,'plugin_content_manager_configuration_content_types::application::producto-cosechas.producto-cosechas','{\"uid\":\"application::producto-cosechas.producto-cosechas\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"Nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nombre\",\"searchable\":true,\"sortable\":true}},\"zona_cosechas\":{\"edit\":{\"label\":\"Zona_cosechas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Zona_cosechas\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"nombre\",\"size\":6}]],\"editRelations\":[\"zona_cosechas\"],\"list\":[\"id\",\"nombre\",\"zona_cosechas\"]}}','object','',''),(60,'model_def_application::zona-cosechas.zona-cosechas','{\"uid\":\"application::zona-cosechas.zona-cosechas\",\"collectionName\":\"zona_cosechas\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Zona Cosechas\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true},\"producto_cosecha\":{\"model\":\"producto-cosechas\",\"via\":\"zona_cosechas\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(61,'plugin_content_manager_configuration_content_types::application::zona-cosechas.zona-cosechas','{\"uid\":\"application::zona-cosechas.zona-cosechas\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"Nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nombre\",\"searchable\":true,\"sortable\":true}},\"producto_cosecha\":{\"edit\":{\"label\":\"Producto_cosecha\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Producto_cosecha\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"nombre\",\"size\":6}]],\"editRelations\":[\"producto_cosecha\"],\"list\":[\"id\",\"nombre\",\"producto_cosecha\"]}}','object','',''),(62,'model_def_application::cosechas.cosechas','{\"uid\":\"application::cosechas.cosechas\",\"collectionName\":\"cosechas\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Cosechas\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"producto_cosecha\":{\"model\":\"producto-cosechas\"},\"zona_cosecha\":{\"model\":\"zona-cosechas\"},\"cantidad\":{\"type\":\"integer\",\"required\":true,\"min\":0},\"unidad\":{\"type\":\"string\",\"required\":true},\"ha\":{\"type\":\"decimal\",\"required\":true,\"min\":0},\"arboles\":{\"type\":\"integer\",\"required\":true,\"min\":0},\"kilosxarbol\":{\"type\":\"decimal\",\"required\":true,\"min\":0},\"kilosxhectarea\":{\"type\":\"decimal\",\"required\":true,\"min\":0},\"campo\":{\"model\":\"campo\"},\"vin\":{\"type\":\"float\",\"required\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(63,'plugin_content_manager_configuration_content_types::application::cosechas.cosechas','{\"uid\":\"application::cosechas.cosechas\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"unidad\",\"defaultSortBy\":\"unidad\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"producto_cosecha\":{\"edit\":{\"label\":\"Producto_cosecha\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Producto_cosecha\",\"searchable\":true,\"sortable\":true}},\"zona_cosecha\":{\"edit\":{\"label\":\"Zona_cosecha\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Zona_cosecha\",\"searchable\":true,\"sortable\":true}},\"cantidad\":{\"edit\":{\"label\":\"Cantidad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cantidad\",\"searchable\":true,\"sortable\":true}},\"unidad\":{\"edit\":{\"label\":\"Unidad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Unidad\",\"searchable\":true,\"sortable\":true}},\"ha\":{\"edit\":{\"label\":\"Ha\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ha\",\"searchable\":true,\"sortable\":true}},\"arboles\":{\"edit\":{\"label\":\"Arboles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Arboles\",\"searchable\":true,\"sortable\":true}},\"kilosxarbol\":{\"edit\":{\"label\":\"Kilosxarbol\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Kilosxarbol\",\"searchable\":true,\"sortable\":true}},\"kilosxhectarea\":{\"edit\":{\"label\":\"Kilosxhectarea\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Kilosxhectarea\",\"searchable\":true,\"sortable\":true}},\"campo\":{\"edit\":{\"label\":\"Campo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Campo\",\"searchable\":true,\"sortable\":true}},\"vin\":{\"edit\":{\"label\":\"Vin\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Vin\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"producto_cosecha\",\"zona_cosecha\",\"cantidad\"],\"edit\":[[{\"name\":\"cantidad\",\"size\":4},{\"name\":\"unidad\",\"size\":6}],[{\"name\":\"ha\",\"size\":4},{\"name\":\"arboles\",\"size\":4},{\"name\":\"kilosxarbol\",\"size\":4}],[{\"name\":\"kilosxhectarea\",\"size\":4},{\"name\":\"vin\",\"size\":4}]],\"editRelations\":[\"producto_cosecha\",\"zona_cosecha\",\"campo\"]}}','object','',''),(64,'model_def_application::profesionales.profesionales','{\"uid\":\"application::profesionales.profesionales\",\"collectionName\":\"profesionales\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Profesionales\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(65,'plugin_content_manager_configuration_content_types::application::profesionales.profesionales','{\"uid\":\"application::profesionales.profesionales\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"Nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nombre\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"nombre\",\"size\":6}]],\"editRelations\":[],\"list\":[\"id\",\"nombre\"]}}','object','',''),(66,'model_def_application::honorarios.honorarios','{\"uid\":\"application::honorarios.honorarios\",\"collectionName\":\"honorarios\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Honorarios\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"profesionale\":{\"model\":\"profesionales\"},\"descripcion\":{\"type\":\"string\",\"required\":true},\"boleta\":{\"type\":\"string\",\"required\":false},\"monto\":{\"type\":\"decimal\",\"required\":true},\"fecha\":{\"type\":\"datetime\",\"required\":true},\"campo\":{\"model\":\"campo\"},\"tipo\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(67,'plugin_content_manager_configuration_content_types::application::honorarios.honorarios','{\"uid\":\"application::honorarios.honorarios\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"descripcion\",\"defaultSortBy\":\"descripcion\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"monto\":{\"edit\":{\"label\":\"Monto\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Monto\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"descripcion\":{\"edit\":{\"label\":\"Descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Descripcion\",\"searchable\":true,\"sortable\":true}},\"campo\":{\"edit\":{\"label\":\"Campo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Campo\",\"searchable\":true,\"sortable\":true}},\"boleta\":{\"edit\":{\"label\":\"Boleta\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Boleta\",\"searchable\":true,\"sortable\":true}},\"tipo\":{\"edit\":{\"label\":\"Tipo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Tipo\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}},\"profesionale\":{\"edit\":{\"label\":\"Profesionale\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Profesionale\",\"searchable\":true,\"sortable\":true}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"fecha\":{\"edit\":{\"label\":\"Fecha\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fecha\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"descripcion\",\"size\":6},{\"name\":\"boleta\",\"size\":6}],[{\"name\":\"monto\",\"size\":4},{\"name\":\"fecha\",\"size\":6}],[{\"name\":\"tipo\",\"size\":6}]],\"editRelations\":[\"profesionale\",\"campo\"],\"list\":[\"id\",\"profesionale\",\"descripcion\",\"tipo\",\"boleta\"]}}','object','',''),(68,'model_def_application::proveedores.proveedores','{\"uid\":\"application::proveedores.proveedores\",\"collectionName\":\"proveedores\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Proveedores\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true},\"email\":{\"type\":\"email\"},\"direccion\":{\"type\":\"text\",\"required\":true},\"telefono\":{\"type\":\"string\",\"required\":true},\"rut\":{\"type\":\"string\",\"required\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(69,'plugin_content_manager_configuration_content_types::application::proveedores.proveedores','{\"uid\":\"application::proveedores.proveedores\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"Nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nombre\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"direccion\":{\"edit\":{\"label\":\"Direccion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Direccion\",\"searchable\":true,\"sortable\":true}},\"telefono\":{\"edit\":{\"label\":\"Telefono\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Telefono\",\"searchable\":true,\"sortable\":true}},\"rut\":{\"edit\":{\"label\":\"Rut\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Rut\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"nombre\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"rut\",\"size\":6},{\"name\":\"telefono\",\"size\":6}],[{\"name\":\"direccion\",\"size\":6}]],\"editRelations\":[],\"list\":[\"id\",\"nombre\",\"rut\",\"telefono\",\"email\",\"direccion\"]}}','object','',''),(70,'model_def_application::gastos-generales.gastos-generales','{\"uid\":\"application::gastos-generales.gastos-generales\",\"collectionName\":\"gastos_generales\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Gastos Generales\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"proveedore\":{\"model\":\"proveedores\"},\"descripcion\":{\"type\":\"string\",\"required\":true},\"unidad\":{\"type\":\"string\",\"required\":true},\"cantidad\":{\"type\":\"integer\",\"required\":true},\"precio\":{\"type\":\"decimal\",\"required\":true},\"total\":{\"type\":\"decimal\",\"required\":true},\"fecha\":{\"type\":\"datetime\",\"required\":true},\"documento\":{\"type\":\"string\",\"required\":true},\"tipo_documento\":{\"type\":\"string\",\"required\":true},\"campo\":{\"model\":\"campo\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(71,'plugin_content_manager_configuration_content_types::application::gastos-generales.gastos-generales','{\"uid\":\"application::gastos-generales.gastos-generales\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"descripcion\",\"defaultSortBy\":\"descripcion\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"proveedore\":{\"edit\":{\"label\":\"Proveedore\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Proveedore\",\"searchable\":true,\"sortable\":true}},\"descripcion\":{\"edit\":{\"label\":\"Descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Descripcion\",\"searchable\":true,\"sortable\":true}},\"unidad\":{\"edit\":{\"label\":\"Unidad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Unidad\",\"searchable\":true,\"sortable\":true}},\"cantidad\":{\"edit\":{\"label\":\"Cantidad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cantidad\",\"searchable\":true,\"sortable\":true}},\"precio\":{\"edit\":{\"label\":\"Precio\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Precio\",\"searchable\":true,\"sortable\":true}},\"total\":{\"edit\":{\"label\":\"Total\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Total\",\"searchable\":true,\"sortable\":true}},\"fecha\":{\"edit\":{\"label\":\"Fecha\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fecha\",\"searchable\":true,\"sortable\":true}},\"documento\":{\"edit\":{\"label\":\"Documento\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Documento\",\"searchable\":true,\"sortable\":true}},\"tipo_documento\":{\"edit\":{\"label\":\"Tipo_documento\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Tipo_documento\",\"searchable\":true,\"sortable\":true}},\"campo\":{\"edit\":{\"label\":\"Campo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Campo\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"proveedore\",\"descripcion\",\"unidad\"],\"edit\":[[{\"name\":\"descripcion\",\"size\":6},{\"name\":\"unidad\",\"size\":6}],[{\"name\":\"cantidad\",\"size\":4},{\"name\":\"precio\",\"size\":4},{\"name\":\"total\",\"size\":4}],[{\"name\":\"documento\",\"size\":6}],[{\"name\":\"tipo_documento\",\"size\":6},{\"name\":\"fecha\",\"size\":6}]],\"editRelations\":[\"proveedore\",\"campo\"]}}','object','',''),(72,'model_def_application::unidades-gastos.unidades-gastos','{\"uid\":\"application::unidades-gastos.unidades-gastos\",\"collectionName\":\"unidades_gastos\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Unidades Gastos\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(73,'plugin_content_manager_configuration_content_types::application::unidades-gastos.unidades-gastos','{\"uid\":\"application::unidades-gastos.unidades-gastos\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"Nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nombre\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"nombre\",\"size\":6}]],\"editRelations\":[],\"list\":[\"id\",\"nombre\"]}}','object','',''),(74,'model_def_application::clientes.clientes','{\"uid\":\"application::clientes.clientes\",\"collectionName\":\"clientes\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Clientes\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true},\"rut\":{\"type\":\"string\",\"required\":true},\"telefono\":{\"type\":\"string\",\"required\":true},\"email\":{\"type\":\"email\"},\"direccion\":{\"type\":\"text\",\"required\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(75,'plugin_content_manager_configuration_content_types::application::clientes.clientes','{\"uid\":\"application::clientes.clientes\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"Nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nombre\",\"searchable\":true,\"sortable\":true}},\"rut\":{\"edit\":{\"label\":\"Rut\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Rut\",\"searchable\":true,\"sortable\":true}},\"telefono\":{\"edit\":{\"label\":\"Telefono\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Telefono\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"direccion\":{\"edit\":{\"label\":\"Direccion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Direccion\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"nombre\",\"size\":6},{\"name\":\"rut\",\"size\":6}],[{\"name\":\"telefono\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"direccion\",\"size\":6}]],\"editRelations\":[],\"list\":[\"id\",\"nombre\",\"rut\",\"telefono\",\"email\",\"direccion\"]}}','object','','');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cosechas`
--

DROP TABLE IF EXISTS `cosechas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cosechas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `producto_cosecha` int(11) DEFAULT NULL,
  `zona_cosecha` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `unidad` varchar(255) DEFAULT NULL,
  `ha` decimal(10,2) DEFAULT NULL,
  `arboles` int(11) DEFAULT NULL,
  `kilosxarbol` decimal(10,2) DEFAULT NULL,
  `kilosxhectarea` decimal(10,2) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `campo` int(11) DEFAULT NULL,
  `vin` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cosechas`
--

LOCK TABLES `cosechas` WRITE;
/*!40000 ALTER TABLE `cosechas` DISABLE KEYS */;
INSERT INTO `cosechas` VALUES (2,2,2,1200,'Kilos',3.00,5,240.00,400.00,'2021-09-22 02:25:11',NULL,1,'2021-09-22 06:25:11','2021-09-23 03:28:07',2,20),(3,2,1,3326,'Kilos',20.00,10,332.60,166.30,'2021-09-22 23:24:46',NULL,NULL,'2021-09-23 03:24:46','2021-09-23 03:24:46',2,2100);
/*!40000 ALTER TABLE `cosechas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuidado_arboles`
--

DROP TABLE IF EXISTS `cuidado_arboles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuidado_arboles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arbol` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `actividad` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `zona` int(11) DEFAULT NULL,
  `camellone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuidado_arboles`
--

LOCK TABLES `cuidado_arboles` WRITE;
/*!40000 ALTER TABLE `cuidado_arboles` DISABLE KEYS */;
INSERT INTO `cuidado_arboles` VALUES (3,'','2021-09-22 01:55:10',NULL,NULL,'2021-09-22 05:55:10','2021-09-22 05:58:23','Poda','Esta es una descripcion mas larguita para ver como se comporta la tabla','Finalizado',2,'');
/*!40000 ALTER TABLE `cuidado_arboles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_pagos`
--

DROP TABLE IF EXISTS `forma_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forma_pagos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_pagos`
--

LOCK TABLES `forma_pagos` WRITE;
/*!40000 ALTER TABLE `forma_pagos` DISABLE KEYS */;
INSERT INTO `forma_pagos` VALUES (1,'Contado','2021-07-14 22:04:47',1,1,'2021-07-15 02:04:44','2021-07-15 02:04:47'),(2,'50% Contado','2021-07-14 22:05:08',1,1,'2021-07-15 02:05:04','2021-07-15 02:05:08'),(3,'Cheque','2021-07-14 22:05:28',1,1,'2021-07-15 02:05:25','2021-07-15 02:05:29');
/*!40000 ALTER TABLE `forma_pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gastos_generales`
--

DROP TABLE IF EXISTS `gastos_generales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gastos_generales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `proveedore` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `unidad` varchar(255) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `tipo_documento` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `campo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastos_generales`
--

LOCK TABLES `gastos_generales` WRITE;
/*!40000 ALTER TABLE `gastos_generales` DISABLE KEYS */;
/*!40000 ALTER TABLE `gastos_generales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `honorarios`
--

DROP TABLE IF EXISTS `honorarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `honorarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profesionale` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `boleta` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `monto` decimal(10,2) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `campo` int(11) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `honorarios`
--

LOCK TABLES `honorarios` WRITE;
/*!40000 ALTER TABLE `honorarios` DISABLE KEYS */;
INSERT INTO `honorarios` VALUES (2,1,'Esta es una descripcion mas larguita para ver como se comporta la tabla','5515210','2021-09-23 01:32:48',NULL,NULL,'2021-09-23 05:32:48','2021-09-23 05:32:48',202020.00,'2021-09-23 04:00:00',2,'Boleta'),(4,2,'Esta es una descripci','52115152','2021-09-23 01:39:14',NULL,NULL,'2021-09-23 05:39:14','2021-09-23 05:39:15',1414242.00,'2021-09-23 04:00:00',2,'Finiquito');
/*!40000 ALTER TABLE `honorarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n_locales`
--

DROP TABLE IF EXISTS `i18n_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i18n_locales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i18n_locales_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n_locales`
--

LOCK TABLES `i18n_locales` WRITE;
/*!40000 ALTER TABLE `i18n_locales` DISABLE KEYS */;
INSERT INTO `i18n_locales` VALUES (1,'English (en)','en',NULL,NULL,'2021-06-10 20:37:20','2021-06-10 20:37:20');
/*!40000 ALTER TABLE `i18n_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_cosechas`
--

DROP TABLE IF EXISTS `producto_cosechas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto_cosechas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_cosechas`
--

LOCK TABLES `producto_cosechas` WRITE;
/*!40000 ALTER TABLE `producto_cosechas` DISABLE KEYS */;
INSERT INTO `producto_cosechas` VALUES (1,'Mango','2021-07-22 21:05:34',1,1,'2021-07-23 01:05:01','2021-07-23 01:05:34'),(2,'Nogal','2021-07-22 21:07:03',1,1,'2021-07-23 01:06:56','2021-07-23 01:07:03'),(3,'Manzana','2021-07-22 21:07:20',1,1,'2021-07-23 01:07:17','2021-07-23 01:07:20');
/*!40000 ALTER TABLE `producto_cosechas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `campo` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Leche',NULL,'2021-07-14 21:29:49',1,1,'2021-07-15 01:29:47','2021-07-15 01:29:49'),(2,'Tela',NULL,'2021-07-14 21:30:01',1,1,'2021-07-15 01:29:58','2021-07-15 01:30:01'),(3,'Pienzo',NULL,'2021-07-14 21:30:19',1,1,'2021-07-15 01:30:16','2021-07-15 01:30:19'),(4,'Prueba',NULL,'2021-07-16 16:13:17',NULL,NULL,'2021-07-16 20:13:17','2021-07-16 20:13:17'),(5,'Alo',NULL,'2021-07-16 16:15:13',NULL,NULL,'2021-07-16 20:15:13','2021-07-16 20:15:13'),(6,'prueba33',NULL,'2021-07-20 20:38:58',NULL,NULL,'2021-07-21 00:38:58','2021-07-21 00:38:58'),(7,'Manzanasss',NULL,'2021-07-23 00:31:52',NULL,NULL,'2021-07-23 04:31:52','2021-07-23 04:31:52'),(8,'prueba3334',NULL,'2021-07-28 21:28:31',NULL,NULL,'2021-07-29 01:28:31','2021-07-29 01:28:31');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesionales`
--

DROP TABLE IF EXISTS `profesionales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesionales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesionales`
--

LOCK TABLES `profesionales` WRITE;
/*!40000 ALTER TABLE `profesionales` DISABLE KEYS */;
INSERT INTO `profesionales` VALUES (1,'Marco Reyes','2021-07-24 18:19:33',1,1,'2021-07-24 22:19:30','2021-07-24 22:19:33'),(2,'Henry Jaimes','2021-07-24 18:19:46',1,1,'2021-07-24 22:19:44','2021-07-24 22:19:46');
/*!40000 ALTER TABLE `profesionales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) DEFAULT NULL,
  `direccion` longtext,
  `telefono` varchar(255) DEFAULT NULL,
  `rut` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Yacson Garcia','2021-07-24 19:55:12',1,1,'2021-07-24 23:55:08','2021-07-24 23:55:12',NULL,NULL,NULL,NULL),(2,'Guitarras Blancas','2021-07-24 19:55:25',1,1,'2021-07-24 23:55:22','2021-07-24 23:55:25',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_actividads`
--

DROP TABLE IF EXISTS `registro_actividads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_actividads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actividad` varchar(255) DEFAULT NULL,
  `fechainicio` datetime DEFAULT NULL,
  `fechafin` datetime DEFAULT NULL,
  `proposito` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `cantidad` varchar(255) DEFAULT NULL,
  `medida` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `campo` int(11) DEFAULT NULL,
  `registro_actividad` int(11) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fechainiciocliente` datetime DEFAULT NULL,
  `fechafincliente` datetime DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `recursos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_actividads`
--

LOCK TABLES `registro_actividads` WRITE;
/*!40000 ALTER TABLE `registro_actividads` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro_actividads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_administrator`
--

DROP TABLE IF EXISTS `strapi_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_administrator` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `preferedLanguage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_administrator`
--

LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` VALUES (1,'admin','granja',NULL,'admintgranja@gmail.com','$2a$10$XtLvt557r7pSgp6BUdikZOOLVe7D8TAHxMqWjc8GiqvkYgVh0Cb3q',NULL,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_permission`
--

DROP TABLE IF EXISTS `strapi_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext,
  `conditions` longtext,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2765 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_permission`
--

LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` VALUES (1,'plugins::upload.read',NULL,'{}','[]',2,'2021-06-10 20:37:28','2021-06-10 20:37:28'),(2,'plugins::upload.assets.create',NULL,'{}','[]',2,'2021-06-10 20:37:28','2021-06-10 20:37:28'),(3,'plugins::upload.assets.copy-link',NULL,'{}','[]',2,'2021-06-10 20:37:28','2021-06-10 20:37:28'),(4,'plugins::upload.assets.download',NULL,'{}','[]',2,'2021-06-10 20:37:28','2021-06-10 20:37:28'),(5,'plugins::upload.assets.update',NULL,'{}','[]',2,'2021-06-10 20:37:28','2021-06-10 20:37:28'),(6,'plugins::upload.assets.create',NULL,'{}','[]',3,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(7,'plugins::upload.read',NULL,'{}','[\"admin::is-creator\"]',3,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(8,'plugins::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]',3,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(9,'plugins::upload.assets.download',NULL,'{}','[]',3,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(10,'plugins::upload.assets.copy-link',NULL,'{}','[]',3,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(15,'plugins::content-type-builder.read',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(16,'plugins::email.settings.read',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(17,'plugins::upload.read',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(18,'plugins::upload.assets.create',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(19,'plugins::upload.assets.update',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(20,'plugins::upload.assets.download',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(21,'plugins::upload.assets.copy-link',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(22,'plugins::upload.settings.read',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(23,'plugins::content-manager.single-types.configure-view',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(24,'plugins::content-manager.collection-types.configure-view',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(25,'plugins::content-manager.components.configure-layout',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(26,'plugins::i18n.locale.create',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(27,'plugins::i18n.locale.read',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(28,'plugins::i18n.locale.update',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(29,'plugins::i18n.locale.delete',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(30,'plugins::users-permissions.roles.create',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(31,'plugins::users-permissions.roles.read',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(32,'plugins::users-permissions.roles.update',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(33,'plugins::users-permissions.roles.delete',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(34,'plugins::users-permissions.providers.read',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(35,'plugins::users-permissions.providers.update',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(36,'plugins::users-permissions.email-templates.read',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(37,'plugins::users-permissions.email-templates.update',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(38,'plugins::users-permissions.advanced-settings.read',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(39,'plugins::users-permissions.advanced-settings.update',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(40,'admin::marketplace.read',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(41,'admin::marketplace.plugins.install',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(42,'admin::marketplace.plugins.uninstall',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(43,'admin::webhooks.create',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(44,'admin::webhooks.read',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(45,'admin::webhooks.update',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(46,'admin::webhooks.delete',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(47,'admin::users.create',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(48,'admin::users.read',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(49,'admin::users.update',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(50,'admin::users.delete',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(51,'admin::roles.create',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(52,'admin::roles.read',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(53,'admin::roles.update',NULL,'{}','[]',1,'2021-06-10 20:37:31','2021-06-10 20:37:31'),(54,'admin::roles.delete',NULL,'{}','[]',1,'2021-06-10 20:37:31','2021-06-10 20:37:31'),(59,'plugins::documentation.read',NULL,'{}','[]',1,'2021-06-10 23:40:51','2021-06-10 23:40:51'),(60,'plugins::documentation.settings.update',NULL,'{}','[]',1,'2021-06-10 23:40:51','2021-06-10 23:40:51'),(61,'plugins::documentation.settings.regenerate',NULL,'{}','[]',1,'2021-06-10 23:40:51','2021-06-10 23:40:51'),(123,'plugins::content-manager.explorer.create','application::actividades.actividades','{\"fields\":[\"nombre\"]}','[]',1,'2021-06-11 08:04:50','2021-06-11 08:04:50'),(124,'plugins::content-manager.explorer.read','application::actividades.actividades','{\"fields\":[\"nombre\"]}','[]',1,'2021-06-11 08:04:50','2021-06-11 08:04:50'),(125,'plugins::content-manager.explorer.update','application::actividades.actividades','{\"fields\":[\"nombre\"]}','[]',1,'2021-06-11 08:04:50','2021-06-11 08:04:50'),(249,'plugins::content-manager.explorer.create','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"campo\"]}','[]',1,'2021-06-25 06:18:18','2021-06-25 06:18:19'),(250,'plugins::content-manager.explorer.read','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"campo\"]}','[]',1,'2021-06-25 06:18:18','2021-06-25 06:18:19'),(251,'plugins::content-manager.explorer.update','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"campo\"]}','[]',1,'2021-06-25 06:18:18','2021-06-25 06:18:19'),(361,'plugins::content-manager.explorer.update','application::registro-actividad.registro-actividad','{\"fields\":[\"actividad\",\"fechainicio\",\"fechafin\",\"proposito\",\"tipo\",\"cantidad\",\"medida\",\"campo\",\"registro_actividad\",\"fechainiciocliente\",\"fechafincliente\",\"observacion\",\"recursos\",\"estado\"]}','[]',1,'2021-07-08 07:11:23','2021-07-08 07:11:23'),(362,'plugins::content-manager.explorer.read','application::registro-actividad.registro-actividad','{\"fields\":[\"actividad\",\"fechainicio\",\"fechafin\",\"proposito\",\"tipo\",\"cantidad\",\"medida\",\"campo\",\"registro_actividad\",\"fechainiciocliente\",\"fechafincliente\",\"observacion\",\"recursos\",\"estado\"]}','[]',1,'2021-07-08 07:11:23','2021-07-08 07:11:23'),(363,'plugins::content-manager.explorer.create','application::registro-actividad.registro-actividad','{\"fields\":[\"actividad\",\"fechainicio\",\"fechafin\",\"proposito\",\"tipo\",\"cantidad\",\"medida\",\"campo\",\"registro_actividad\",\"fechainiciocliente\",\"fechafincliente\",\"observacion\",\"recursos\",\"estado\"]}','[]',1,'2021-07-08 07:11:23','2021-07-08 07:11:23'),(689,'plugins::content-manager.explorer.create','application::arbol.arbol','{\"fields\":[\"numero\",\"tipo\",\"camellone\"]}','[]',1,'2021-07-13 23:29:36','2021-07-13 23:29:36'),(690,'plugins::content-manager.explorer.create','application::camellones.camellones','{\"fields\":[\"numero\",\"zona\",\"arboles\"]}','[]',1,'2021-07-13 23:29:36','2021-07-13 23:29:36'),(691,'plugins::content-manager.explorer.read','application::arbol.arbol','{\"fields\":[\"numero\",\"tipo\",\"camellone\"]}','[]',1,'2021-07-13 23:29:36','2021-07-13 23:29:36'),(692,'plugins::content-manager.explorer.read','application::camellones.camellones','{\"fields\":[\"numero\",\"zona\",\"arboles\"]}','[]',1,'2021-07-13 23:29:36','2021-07-13 23:29:36'),(693,'plugins::content-manager.explorer.update','application::arbol.arbol','{\"fields\":[\"numero\",\"tipo\",\"camellone\"]}','[]',1,'2021-07-13 23:29:36','2021-07-13 23:29:36'),(694,'plugins::content-manager.explorer.update','application::camellones.camellones','{\"fields\":[\"numero\",\"zona\",\"arboles\"]}','[]',1,'2021-07-13 23:29:36','2021-07-13 23:29:36'),(855,'plugins::content-manager.explorer.update','application::forma-pagos.forma-pagos','{\"fields\":[\"nombre\"]}','[]',1,'2021-07-15 01:00:16','2021-07-15 01:00:16'),(856,'plugins::content-manager.explorer.read','application::forma-pagos.forma-pagos','{\"fields\":[\"nombre\"]}','[]',1,'2021-07-15 01:00:16','2021-07-15 01:00:16'),(857,'plugins::content-manager.explorer.create','application::forma-pagos.forma-pagos','{\"fields\":[\"nombre\"]}','[]',1,'2021-07-15 01:00:16','2021-07-15 01:00:16'),(900,'plugins::content-manager.explorer.create','application::productos.productos','{\"fields\":[\"nombre\"]}','[]',1,'2021-07-15 01:21:26','2021-07-15 01:21:26'),(902,'plugins::content-manager.explorer.read','application::productos.productos','{\"fields\":[\"nombre\"]}','[]',1,'2021-07-15 01:21:26','2021-07-15 01:21:26'),(904,'plugins::content-manager.explorer.update','application::productos.productos','{\"fields\":[\"nombre\"]}','[]',1,'2021-07-15 01:21:26','2021-07-15 01:21:26'),(1090,'plugins::content-manager.explorer.update','application::campo.campo','{\"fields\":[\"nombre\",\"zonas\",\"ventas\",\"compras\"]}','[]',1,'2021-07-16 06:22:09','2021-07-16 06:22:09'),(1092,'plugins::content-manager.explorer.read','application::campo.campo','{\"fields\":[\"nombre\",\"zonas\",\"ventas\",\"compras\"]}','[]',1,'2021-07-16 06:22:09','2021-07-16 06:22:09'),(1094,'plugins::content-manager.explorer.create','application::campo.campo','{\"fields\":[\"nombre\",\"zonas\",\"ventas\",\"compras\"]}','[]',1,'2021-07-16 06:22:09','2021-07-16 06:22:09'),(1211,'plugins::content-manager.explorer.read','application::centro-costos.centro-costos','{\"fields\":[\"nombre\"]}','[]',1,'2021-07-22 00:33:01','2021-07-22 00:33:01'),(1212,'plugins::content-manager.explorer.create','application::centro-costos.centro-costos','{\"fields\":[\"nombre\"]}','[]',1,'2021-07-22 00:33:01','2021-07-22 00:33:01'),(1213,'plugins::content-manager.explorer.update','application::centro-costos.centro-costos','{\"fields\":[\"nombre\"]}','[]',1,'2021-07-22 00:33:01','2021-07-22 00:33:01'),(1325,'plugins::content-manager.explorer.create','application::producto-cosechas.producto-cosechas','{\"fields\":[\"nombre\",\"zona_cosechas\"]}','[]',1,'2021-07-22 05:47:28','2021-07-22 05:47:29'),(1326,'plugins::content-manager.explorer.create','application::zona-cosechas.zona-cosechas','{\"fields\":[\"nombre\",\"producto_cosecha\"]}','[]',1,'2021-07-22 05:47:28','2021-07-22 05:47:29'),(1327,'plugins::content-manager.explorer.read','application::producto-cosechas.producto-cosechas','{\"fields\":[\"nombre\",\"zona_cosechas\"]}','[]',1,'2021-07-22 05:47:28','2021-07-22 05:47:29'),(1328,'plugins::content-manager.explorer.read','application::zona-cosechas.zona-cosechas','{\"fields\":[\"nombre\",\"producto_cosecha\"]}','[]',1,'2021-07-22 05:47:28','2021-07-22 05:47:29'),(1329,'plugins::content-manager.explorer.update','application::producto-cosechas.producto-cosechas','{\"fields\":[\"nombre\",\"zona_cosechas\"]}','[]',1,'2021-07-22 05:47:28','2021-07-22 05:47:29'),(1330,'plugins::content-manager.explorer.update','application::zona-cosechas.zona-cosechas','{\"fields\":[\"nombre\",\"producto_cosecha\"]}','[]',1,'2021-07-22 05:47:28','2021-07-22 05:47:29'),(1519,'plugins::content-manager.explorer.read','application::profesionales.profesionales','{\"fields\":[\"nombre\"]}','[]',1,'2021-07-24 18:52:55','2021-07-24 18:52:55'),(1520,'plugins::content-manager.explorer.create','application::profesionales.profesionales','{\"fields\":[\"nombre\"]}','[]',1,'2021-07-24 18:52:55','2021-07-24 18:52:55'),(1521,'plugins::content-manager.explorer.update','application::profesionales.profesionales','{\"fields\":[\"nombre\"]}','[]',1,'2021-07-24 18:52:55','2021-07-24 18:52:55'),(1907,'plugins::content-manager.explorer.create','application::gastos-generales.gastos-generales','{\"fields\":[\"proveedore\",\"descripcion\",\"unidad\",\"cantidad\",\"precio\",\"total\",\"fecha\",\"documento\",\"tipo_documento\",\"campo\"]}','[]',1,'2021-07-25 00:29:15','2021-07-25 00:29:16'),(1908,'plugins::content-manager.explorer.read','application::gastos-generales.gastos-generales','{\"fields\":[\"proveedore\",\"descripcion\",\"unidad\",\"cantidad\",\"precio\",\"total\",\"fecha\",\"documento\",\"tipo_documento\",\"campo\"]}','[]',1,'2021-07-25 00:29:15','2021-07-25 00:29:16'),(1909,'plugins::content-manager.explorer.update','application::gastos-generales.gastos-generales','{\"fields\":[\"proveedore\",\"descripcion\",\"unidad\",\"cantidad\",\"precio\",\"total\",\"fecha\",\"documento\",\"tipo_documento\",\"campo\"]}','[]',1,'2021-07-25 00:29:15','2021-07-25 00:29:16'),(1991,'plugins::content-manager.explorer.update','application::unidades-gastos.unidades-gastos','{\"fields\":[\"nombre\"]}','[]',1,'2021-07-28 20:35:01','2021-07-28 20:35:01'),(1992,'plugins::content-manager.explorer.read','application::unidades-gastos.unidades-gastos','{\"fields\":[\"nombre\"]}','[]',1,'2021-07-28 20:35:01','2021-07-28 20:35:01'),(1993,'plugins::content-manager.explorer.create','application::unidades-gastos.unidades-gastos','{\"fields\":[\"nombre\"]}','[]',1,'2021-07-28 20:35:01','2021-07-28 20:35:01'),(2366,'plugins::content-manager.explorer.read','application::zonas.zonas','{\"fields\":[\"numero\",\"campo\",\"camellones\",\"cuidado_arboles\"]}','[]',1,'2021-09-22 05:52:21','2021-09-22 05:52:21'),(2367,'plugins::content-manager.explorer.read','application::cuidado-arboles.cuidado-arboles','{\"fields\":[\"actividad\",\"descripcion\",\"estado\",\"camellone\",\"arbol\",\"zona\"]}','[]',1,'2021-09-22 05:52:21','2021-09-22 05:52:21'),(2368,'plugins::content-manager.explorer.create','application::zonas.zonas','{\"fields\":[\"numero\",\"campo\",\"camellones\",\"cuidado_arboles\"]}','[]',1,'2021-09-22 05:52:21','2021-09-22 05:52:21'),(2369,'plugins::content-manager.explorer.create','application::cuidado-arboles.cuidado-arboles','{\"fields\":[\"actividad\",\"descripcion\",\"estado\",\"camellone\",\"arbol\",\"zona\"]}','[]',1,'2021-09-22 05:52:21','2021-09-22 05:52:21'),(2370,'plugins::content-manager.explorer.update','application::cuidado-arboles.cuidado-arboles','{\"fields\":[\"actividad\",\"descripcion\",\"estado\",\"camellone\",\"arbol\",\"zona\"]}','[]',1,'2021-09-22 05:52:21','2021-09-22 05:52:21'),(2371,'plugins::content-manager.explorer.update','application::zonas.zonas','{\"fields\":[\"numero\",\"campo\",\"camellones\",\"cuidado_arboles\"]}','[]',1,'2021-09-22 05:52:21','2021-09-22 05:52:21'),(2413,'plugins::content-manager.explorer.create','application::cosechas.cosechas','{\"fields\":[\"producto_cosecha\",\"zona_cosecha\",\"cantidad\",\"unidad\",\"ha\",\"arboles\",\"kilosxarbol\",\"kilosxhectarea\",\"campo\",\"vin\"]}','[]',1,'2021-09-22 06:26:32','2021-09-22 06:26:32'),(2414,'plugins::content-manager.explorer.read','application::cosechas.cosechas','{\"fields\":[\"producto_cosecha\",\"zona_cosecha\",\"cantidad\",\"unidad\",\"ha\",\"arboles\",\"kilosxarbol\",\"kilosxhectarea\",\"campo\",\"vin\"]}','[]',1,'2021-09-22 06:26:32','2021-09-22 06:26:32'),(2415,'plugins::content-manager.explorer.update','application::cosechas.cosechas','{\"fields\":[\"producto_cosecha\",\"zona_cosecha\",\"cantidad\",\"unidad\",\"ha\",\"arboles\",\"kilosxarbol\",\"kilosxhectarea\",\"campo\",\"vin\"]}','[]',1,'2021-09-22 06:26:32','2021-09-22 06:26:32'),(2503,'plugins::content-manager.explorer.update','application::honorarios.honorarios','{\"fields\":[\"profesionale\",\"descripcion\",\"boleta\",\"monto\",\"fecha\",\"campo\",\"tipo\"]}','[]',1,'2021-09-23 05:19:33','2021-09-23 05:19:33'),(2504,'plugins::content-manager.explorer.read','application::honorarios.honorarios','{\"fields\":[\"profesionale\",\"descripcion\",\"boleta\",\"monto\",\"fecha\",\"campo\",\"tipo\"]}','[]',1,'2021-09-23 05:19:33','2021-09-23 05:19:33'),(2505,'plugins::content-manager.explorer.create','application::honorarios.honorarios','{\"fields\":[\"profesionale\",\"descripcion\",\"boleta\",\"monto\",\"fecha\",\"campo\",\"tipo\"]}','[]',1,'2021-09-23 05:19:33','2021-09-23 05:19:33'),(2583,'plugins::content-manager.explorer.read','application::proveedores.proveedores','{\"fields\":[\"nombre\",\"email\",\"direccion\",\"telefono\",\"rut\"]}','[]',1,'2021-09-23 05:46:50','2021-09-23 05:46:50'),(2584,'plugins::content-manager.explorer.create','application::proveedores.proveedores','{\"fields\":[\"nombre\",\"email\",\"direccion\",\"telefono\",\"rut\"]}','[]',1,'2021-09-23 05:46:50','2021-09-23 05:46:50'),(2585,'plugins::content-manager.explorer.update','application::proveedores.proveedores','{\"fields\":[\"nombre\",\"email\",\"direccion\",\"telefono\",\"rut\"]}','[]',1,'2021-09-23 05:46:50','2021-09-23 05:46:50'),(2631,'plugins::content-manager.explorer.update','application::clientes.clientes','{\"fields\":[\"nombre\",\"rut\",\"telefono\",\"email\",\"direccion\"]}','[]',1,'2021-09-23 06:13:35','2021-09-23 06:13:35'),(2632,'plugins::content-manager.explorer.read','application::clientes.clientes','{\"fields\":[\"nombre\",\"rut\",\"telefono\",\"email\",\"direccion\"]}','[]',1,'2021-09-23 06:13:35','2021-09-23 06:13:35'),(2633,'plugins::content-manager.explorer.create','application::clientes.clientes','{\"fields\":[\"nombre\",\"rut\",\"telefono\",\"email\",\"direccion\"]}','[]',1,'2021-09-23 06:13:35','2021-09-23 06:13:35'),(2673,'plugins::content-manager.explorer.create','application::compras.compras','{\"fields\":[\"producto\",\"cantidad\",\"unidad\",\"valorunitario\",\"total\",\"guia\",\"factura\",\"forma_pago\",\"cheque\",\"campo\",\"centro_costo\",\"proveedore\"]}','[]',1,'2021-09-23 06:32:20','2021-09-23 06:32:20'),(2674,'plugins::content-manager.explorer.read','application::compras.compras','{\"fields\":[\"producto\",\"cantidad\",\"unidad\",\"valorunitario\",\"total\",\"guia\",\"factura\",\"forma_pago\",\"cheque\",\"campo\",\"centro_costo\",\"proveedore\"]}','[]',1,'2021-09-23 06:32:20','2021-09-23 06:32:20'),(2675,'plugins::content-manager.explorer.update','application::compras.compras','{\"fields\":[\"producto\",\"cantidad\",\"unidad\",\"valorunitario\",\"total\",\"guia\",\"factura\",\"forma_pago\",\"cheque\",\"campo\",\"centro_costo\",\"proveedore\"]}','[]',1,'2021-09-23 06:32:20','2021-09-23 06:32:20'),(2719,'plugins::content-manager.explorer.create','application::ventas.ventas','{\"fields\":[\"producto\",\"valorkilo\",\"total\",\"factura\",\"forma_pago\",\"cheque\",\"campo\",\"calidad\",\"cantidad\",\"cliente\"]}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:44'),(2720,'plugins::content-manager.explorer.read','application::ventas.ventas','{\"fields\":[\"producto\",\"valorkilo\",\"total\",\"factura\",\"forma_pago\",\"cheque\",\"campo\",\"calidad\",\"cantidad\",\"cliente\"]}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:44'),(2721,'plugins::content-manager.explorer.update','application::ventas.ventas','{\"fields\":[\"producto\",\"valorkilo\",\"total\",\"factura\",\"forma_pago\",\"cheque\",\"campo\",\"calidad\",\"cantidad\",\"cliente\"]}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:44'),(2722,'plugins::content-manager.explorer.delete','application::actividades.actividades','{}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:44'),(2723,'plugins::content-manager.explorer.delete','application::arbol.arbol','{}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:44'),(2724,'plugins::content-manager.explorer.delete','application::camellones.camellones','{}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:44'),(2725,'plugins::content-manager.explorer.delete','application::campo.campo','{}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:44'),(2726,'plugins::content-manager.explorer.delete','application::centro-costos.centro-costos','{}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:44'),(2727,'plugins::content-manager.explorer.delete','application::clientes.clientes','{}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:44'),(2728,'plugins::content-manager.explorer.delete','application::compras.compras','{}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:44'),(2729,'plugins::content-manager.explorer.delete','application::cosechas.cosechas','{}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:44'),(2730,'plugins::content-manager.explorer.delete','application::cuidado-arboles.cuidado-arboles','{}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:45'),(2731,'plugins::content-manager.explorer.delete','application::forma-pagos.forma-pagos','{}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:45'),(2732,'plugins::content-manager.explorer.delete','application::gastos-generales.gastos-generales','{}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:45'),(2733,'plugins::content-manager.explorer.delete','application::honorarios.honorarios','{}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:45'),(2734,'plugins::content-manager.explorer.delete','application::producto-cosechas.producto-cosechas','{}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:45'),(2735,'plugins::content-manager.explorer.delete','application::productos.productos','{}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:44'),(2736,'plugins::content-manager.explorer.delete','application::profesionales.profesionales','{}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:45'),(2737,'plugins::content-manager.explorer.delete','application::proveedores.proveedores','{}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:45'),(2738,'plugins::content-manager.explorer.delete','application::registro-actividad.registro-actividad','{}','[]',1,'2021-09-23 06:33:44','2021-09-23 06:33:45'),(2739,'plugins::content-manager.explorer.delete','application::unidades-gastos.unidades-gastos','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2740,'plugins::content-manager.explorer.delete','application::ventas.ventas','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2741,'plugins::content-manager.explorer.delete','application::zona-cosechas.zona-cosechas','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2742,'plugins::content-manager.explorer.delete','application::zonas.zonas','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2743,'plugins::content-manager.explorer.delete','plugins::users-permissions.user','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2744,'plugins::content-manager.explorer.publish','application::actividades.actividades','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2745,'plugins::content-manager.explorer.publish','application::arbol.arbol','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2746,'plugins::content-manager.explorer.publish','application::camellones.camellones','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2747,'plugins::content-manager.explorer.publish','application::campo.campo','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2748,'plugins::content-manager.explorer.publish','application::centro-costos.centro-costos','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2749,'plugins::content-manager.explorer.publish','application::clientes.clientes','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2750,'plugins::content-manager.explorer.publish','application::compras.compras','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2751,'plugins::content-manager.explorer.publish','application::cosechas.cosechas','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2752,'plugins::content-manager.explorer.publish','application::cuidado-arboles.cuidado-arboles','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2753,'plugins::content-manager.explorer.publish','application::forma-pagos.forma-pagos','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2754,'plugins::content-manager.explorer.publish','application::honorarios.honorarios','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2755,'plugins::content-manager.explorer.publish','application::producto-cosechas.producto-cosechas','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2756,'plugins::content-manager.explorer.publish','application::productos.productos','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2757,'plugins::content-manager.explorer.publish','application::profesionales.profesionales','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2758,'plugins::content-manager.explorer.publish','application::proveedores.proveedores','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2759,'plugins::content-manager.explorer.publish','application::gastos-generales.gastos-generales','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2760,'plugins::content-manager.explorer.publish','application::registro-actividad.registro-actividad','{}','[]',1,'2021-09-23 06:33:45','2021-09-23 06:33:45'),(2761,'plugins::content-manager.explorer.publish','application::unidades-gastos.unidades-gastos','{}','[]',1,'2021-09-23 06:33:46','2021-09-23 06:33:46'),(2762,'plugins::content-manager.explorer.publish','application::ventas.ventas','{}','[]',1,'2021-09-23 06:33:46','2021-09-23 06:33:46'),(2763,'plugins::content-manager.explorer.publish','application::zona-cosechas.zona-cosechas','{}','[]',1,'2021-09-23 06:33:46','2021-09-23 06:33:46'),(2764,'plugins::content-manager.explorer.publish','application::zonas.zonas','{}','[]',1,'2021-09-23 06:33:46','2021-09-23 06:33:46');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_role`
--

DROP TABLE IF EXISTS `strapi_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_role`
--

LOCK TABLES `strapi_role` WRITE;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2021-06-10 20:37:28','2021-06-10 20:37:28'),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2021-06-10 20:37:28','2021-06-10 20:37:28'),(3,'Author','strapi-author','Authors can manage the content they have created.','2021-06-10 20:37:28','2021-06-10 20:37:28');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_users_roles`
--

DROP TABLE IF EXISTS `strapi_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_users_roles`
--

LOCK TABLES `strapi_users_roles` WRITE;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
INSERT INTO `strapi_users_roles` VALUES (1,1,1);
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidades_gastos`
--

DROP TABLE IF EXISTS `unidades_gastos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidades_gastos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidades_gastos`
--

LOCK TABLES `unidades_gastos` WRITE;
/*!40000 ALTER TABLE `unidades_gastos` DISABLE KEYS */;
INSERT INTO `unidades_gastos` VALUES (1,'Litros','2021-07-28 16:36:05',1,1,'2021-07-28 20:36:00','2021-07-28 20:36:05'),(2,'General','2021-07-28 16:36:18',1,1,'2021-07-28 20:36:14','2021-07-28 20:36:18');
/*!40000 ALTER TABLE `unidades_gastos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file_morph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=724 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'content-manager','collection-types','bulkdelete',0,'',1,NULL,NULL),(2,'content-manager','collection-types','bulkdelete',0,'',2,NULL,NULL),(3,'content-manager','collection-types','delete',0,'',2,NULL,NULL),(4,'content-manager','collection-types','find',0,'',1,NULL,NULL),(5,'content-manager','collection-types','delete',0,'',1,NULL,NULL),(6,'content-manager','collection-types','findone',0,'',2,NULL,NULL),(7,'content-manager','collection-types','create',0,'',2,NULL,NULL),(8,'content-manager','collection-types','findone',0,'',1,NULL,NULL),(9,'content-manager','collection-types','create',0,'',1,NULL,NULL),(10,'content-manager','collection-types','find',0,'',2,NULL,NULL),(11,'content-manager','collection-types','previewmanyrelations',0,'',1,NULL,NULL),(12,'content-manager','collection-types','previewmanyrelations',0,'',2,NULL,NULL),(13,'content-manager','collection-types','publish',0,'',1,NULL,NULL),(14,'content-manager','collection-types','publish',0,'',2,NULL,NULL),(15,'content-manager','collection-types','unpublish',0,'',1,NULL,NULL),(16,'content-manager','collection-types','unpublish',0,'',2,NULL,NULL),(17,'content-manager','collection-types','update',0,'',1,NULL,NULL),(18,'content-manager','collection-types','update',0,'',2,NULL,NULL),(19,'content-manager','components','findcomponentconfiguration',0,'',1,NULL,NULL),(20,'content-manager','components','findcomponentconfiguration',0,'',2,NULL,NULL),(21,'content-manager','components','findcomponents',0,'',1,NULL,NULL),(22,'content-manager','components','findcomponents',0,'',2,NULL,NULL),(23,'content-manager','components','updatecomponentconfiguration',0,'',1,NULL,NULL),(24,'content-manager','components','updatecomponentconfiguration',0,'',2,NULL,NULL),(25,'content-manager','content-types','findcontenttypeconfiguration',0,'',1,NULL,NULL),(26,'content-manager','content-types','findcontenttypeconfiguration',0,'',2,NULL,NULL),(27,'content-manager','content-types','findcontenttypes',0,'',1,NULL,NULL),(28,'content-manager','content-types','findcontenttypes',0,'',2,NULL,NULL),(29,'content-manager','content-types','findcontenttypessettings',0,'',1,NULL,NULL),(30,'content-manager','content-types','findcontenttypessettings',0,'',2,NULL,NULL),(31,'content-manager','content-types','updatecontenttypeconfiguration',0,'',1,NULL,NULL),(32,'content-manager','content-types','updatecontenttypeconfiguration',0,'',2,NULL,NULL),(33,'content-manager','relations','find',0,'',1,NULL,NULL),(34,'content-manager','relations','find',0,'',2,NULL,NULL),(35,'content-manager','single-types','createorupdate',0,'',1,NULL,NULL),(36,'content-manager','single-types','createorupdate',0,'',2,NULL,NULL),(37,'content-manager','single-types','delete',0,'',1,NULL,NULL),(38,'content-manager','single-types','delete',0,'',2,NULL,NULL),(39,'content-manager','single-types','find',0,'',1,NULL,NULL),(40,'content-manager','single-types','find',0,'',2,NULL,NULL),(41,'content-manager','single-types','publish',0,'',1,NULL,NULL),(42,'content-manager','single-types','publish',0,'',2,NULL,NULL),(43,'content-manager','single-types','unpublish',0,'',1,NULL,NULL),(44,'content-manager','single-types','unpublish',0,'',2,NULL,NULL),(45,'content-manager','uid','checkuidavailability',0,'',1,NULL,NULL),(46,'content-manager','uid','checkuidavailability',0,'',2,NULL,NULL),(47,'content-manager','uid','generateuid',0,'',1,NULL,NULL),(48,'content-manager','uid','generateuid',0,'',2,NULL,NULL),(49,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),(50,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),(51,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),(52,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),(53,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),(54,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),(55,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),(56,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),(57,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),(58,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),(59,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),(60,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),(61,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),(62,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),(63,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),(64,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),(65,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),(66,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(67,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(68,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(69,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(70,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(71,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(72,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(73,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(74,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(75,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(76,'email','email','getsettings',0,'',1,NULL,NULL),(77,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(78,'email','email','getsettings',0,'',2,NULL,NULL),(79,'email','email','send',0,'',1,NULL,NULL),(80,'email','email','send',0,'',2,NULL,NULL),(81,'email','email','test',0,'',1,NULL,NULL),(82,'email','email','test',0,'',2,NULL,NULL),(83,'i18n','content-types','getnonlocalizedattributes',0,'',1,NULL,NULL),(84,'i18n','content-types','getnonlocalizedattributes',0,'',2,NULL,NULL),(85,'i18n','iso-locales','listisolocales',0,'',1,NULL,NULL),(86,'i18n','iso-locales','listisolocales',0,'',2,NULL,NULL),(87,'i18n','locales','createlocale',0,'',1,NULL,NULL),(88,'i18n','locales','createlocale',0,'',2,NULL,NULL),(89,'i18n','locales','deletelocale',0,'',1,NULL,NULL),(90,'i18n','locales','deletelocale',0,'',2,NULL,NULL),(91,'i18n','locales','listlocales',0,'',1,NULL,NULL),(92,'i18n','locales','listlocales',0,'',2,NULL,NULL),(93,'i18n','locales','updatelocale',0,'',1,NULL,NULL),(94,'i18n','locales','updatelocale',0,'',2,NULL,NULL),(95,'upload','upload','count',0,'',1,NULL,NULL),(96,'upload','upload','count',0,'',2,NULL,NULL),(97,'upload','upload','destroy',0,'',1,NULL,NULL),(98,'upload','upload','destroy',0,'',2,NULL,NULL),(99,'upload','upload','find',0,'',1,NULL,NULL),(100,'upload','upload','find',0,'',2,NULL,NULL),(101,'upload','upload','findone',0,'',1,NULL,NULL),(102,'upload','upload','findone',0,'',2,NULL,NULL),(103,'upload','upload','getsettings',0,'',1,NULL,NULL),(104,'upload','upload','getsettings',0,'',2,NULL,NULL),(105,'upload','upload','search',0,'',1,NULL,NULL),(106,'upload','upload','search',0,'',2,NULL,NULL),(107,'upload','upload','updatesettings',0,'',1,NULL,NULL),(108,'upload','upload','updatesettings',0,'',2,NULL,NULL),(109,'upload','upload','upload',0,'',1,NULL,NULL),(110,'upload','upload','upload',0,'',2,NULL,NULL),(111,'users-permissions','auth','callback',0,'',1,NULL,NULL),(112,'users-permissions','auth','callback',1,'',2,NULL,NULL),(113,'users-permissions','auth','connect',1,'',2,NULL,NULL),(114,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(115,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(116,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),(117,'users-permissions','auth','connect',1,'',1,NULL,NULL),(118,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(119,'users-permissions','auth','register',0,'',1,NULL,NULL),(120,'users-permissions','auth','register',1,'',2,NULL,NULL),(121,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),(122,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(123,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(124,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(125,'users-permissions','user','count',0,'',1,NULL,NULL),(126,'users-permissions','user','count',0,'',2,NULL,NULL),(127,'users-permissions','user','create',0,'',1,NULL,NULL),(128,'users-permissions','user','create',0,'',2,NULL,NULL),(129,'users-permissions','user','destroy',0,'',1,NULL,NULL),(130,'users-permissions','user','destroy',0,'',2,NULL,NULL),(131,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(132,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(133,'users-permissions','user','find',0,'',1,NULL,NULL),(134,'users-permissions','user','find',0,'',2,NULL,NULL),(135,'users-permissions','user','findone',1,'',1,NULL,NULL),(136,'users-permissions','user','findone',0,'',2,NULL,NULL),(137,'users-permissions','user','me',1,'',1,NULL,NULL),(138,'users-permissions','user','me',0,'',2,NULL,NULL),(139,'users-permissions','user','update',0,'',1,NULL,NULL),(140,'users-permissions','user','update',0,'',2,NULL,NULL),(141,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(142,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(143,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(144,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(145,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(146,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(147,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(148,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(149,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(150,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(151,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(152,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(153,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(154,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(155,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(156,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(157,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),(158,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),(159,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(160,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(161,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(162,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(163,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(164,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(165,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(166,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(167,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(168,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(169,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(170,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(171,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(172,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),(173,'documentation','documentation','deletedoc',0,'',1,NULL,NULL),(174,'documentation','documentation','deletedoc',0,'',2,NULL,NULL),(175,'documentation','documentation','getinfos',0,'',1,NULL,NULL),(176,'documentation','documentation','getinfos',0,'',2,NULL,NULL),(177,'documentation','documentation','index',0,'',1,NULL,NULL),(178,'documentation','documentation','index',0,'',2,NULL,NULL),(179,'documentation','documentation','login',0,'',1,NULL,NULL),(180,'documentation','documentation','login',0,'',2,NULL,NULL),(181,'documentation','documentation','loginview',0,'',1,NULL,NULL),(182,'documentation','documentation','loginview',0,'',2,NULL,NULL),(183,'documentation','documentation','regeneratedoc',0,'',1,NULL,NULL),(184,'documentation','documentation','regeneratedoc',0,'',2,NULL,NULL),(185,'documentation','documentation','updatesettings',0,'',1,NULL,NULL),(186,'documentation','documentation','updatesettings',0,'',2,NULL,NULL),(199,'application','campo','count',0,'',1,NULL,NULL),(200,'application','campo','count',0,'',2,NULL,NULL),(201,'application','campo','create',0,'',1,NULL,NULL),(202,'application','campo','create',0,'',2,NULL,NULL),(203,'application','campo','delete',0,'',1,NULL,NULL),(204,'application','campo','delete',0,'',2,NULL,NULL),(205,'application','campo','find',1,'',1,NULL,NULL),(206,'application','campo','find',0,'',2,NULL,NULL),(207,'application','campo','findone',1,'',1,NULL,NULL),(208,'application','campo','findone',0,'',2,NULL,NULL),(209,'application','campo','update',0,'',1,NULL,NULL),(210,'application','campo','update',0,'',2,NULL,NULL),(211,'application','campo','find',1,'',3,NULL,NULL),(212,'application','campo','findone',1,'',3,NULL,NULL),(213,'application','campo','count',0,'',3,NULL,NULL),(214,'application','campo','create',0,'',3,NULL,NULL),(215,'application','campo','update',0,'',3,NULL,NULL),(216,'application','campo','delete',0,'',3,NULL,NULL),(217,'content-manager','collection-types','find',0,'',3,NULL,NULL),(218,'content-manager','collection-types','findone',0,'',3,NULL,NULL),(219,'content-manager','collection-types','create',0,'',3,NULL,NULL),(220,'content-manager','collection-types','update',0,'',3,NULL,NULL),(221,'content-manager','collection-types','delete',0,'',3,NULL,NULL),(222,'content-manager','collection-types','publish',0,'',3,NULL,NULL),(223,'content-manager','collection-types','unpublish',0,'',3,NULL,NULL),(224,'content-manager','collection-types','bulkdelete',0,'',3,NULL,NULL),(225,'content-manager','collection-types','previewmanyrelations',0,'',3,NULL,NULL),(226,'content-manager','components','findcomponents',0,'',3,NULL,NULL),(227,'content-manager','components','findcomponentconfiguration',0,'',3,NULL,NULL),(228,'content-manager','components','updatecomponentconfiguration',0,'',3,NULL,NULL),(229,'content-manager','content-types','findcontenttypes',0,'',3,NULL,NULL),(230,'content-manager','content-types','findcontenttypessettings',0,'',3,NULL,NULL),(231,'content-manager','content-types','findcontenttypeconfiguration',0,'',3,NULL,NULL),(232,'content-manager','content-types','updatecontenttypeconfiguration',0,'',3,NULL,NULL),(233,'content-manager','relations','find',0,'',3,NULL,NULL),(234,'content-manager','single-types','find',0,'',3,NULL,NULL),(235,'content-manager','single-types','createorupdate',0,'',3,NULL,NULL),(236,'content-manager','single-types','delete',0,'',3,NULL,NULL),(237,'content-manager','single-types','publish',0,'',3,NULL,NULL),(238,'content-manager','single-types','unpublish',0,'',3,NULL,NULL),(239,'content-manager','uid','generateuid',0,'',3,NULL,NULL),(240,'content-manager','uid','checkuidavailability',0,'',3,NULL,NULL),(241,'content-type-builder','builder','getreservednames',0,'',3,NULL,NULL),(242,'content-type-builder','componentcategories','editcategory',0,'',3,NULL,NULL),(243,'content-type-builder','componentcategories','deletecategory',0,'',3,NULL,NULL),(244,'content-type-builder','components','getcomponents',0,'',3,NULL,NULL),(245,'content-type-builder','components','getcomponent',0,'',3,NULL,NULL),(246,'content-type-builder','components','createcomponent',0,'',3,NULL,NULL),(247,'content-type-builder','components','updatecomponent',0,'',3,NULL,NULL),(248,'content-type-builder','components','deletecomponent',0,'',3,NULL,NULL),(249,'content-type-builder','connections','getconnections',0,'',3,NULL,NULL),(250,'content-type-builder','contenttypes','getcontenttypes',0,'',3,NULL,NULL),(251,'content-type-builder','contenttypes','getcontenttype',0,'',3,NULL,NULL),(252,'content-type-builder','contenttypes','createcontenttype',0,'',3,NULL,NULL),(253,'content-type-builder','contenttypes','updatecontenttype',0,'',3,NULL,NULL),(254,'content-type-builder','contenttypes','deletecontenttype',0,'',3,NULL,NULL),(255,'documentation','documentation','getinfos',0,'',3,NULL,NULL),(256,'documentation','documentation','index',0,'',3,NULL,NULL),(257,'documentation','documentation','loginview',0,'',3,NULL,NULL),(258,'documentation','documentation','login',0,'',3,NULL,NULL),(259,'documentation','documentation','regeneratedoc',0,'',3,NULL,NULL),(260,'documentation','documentation','deletedoc',0,'',3,NULL,NULL),(261,'documentation','documentation','updatesettings',0,'',3,NULL,NULL),(262,'email','email','send',0,'',3,NULL,NULL),(263,'email','email','test',0,'',3,NULL,NULL),(264,'email','email','getsettings',0,'',3,NULL,NULL),(265,'i18n','content-types','getnonlocalizedattributes',0,'',3,NULL,NULL),(266,'i18n','iso-locales','listisolocales',0,'',3,NULL,NULL),(267,'i18n','locales','listlocales',0,'',3,NULL,NULL),(268,'i18n','locales','createlocale',0,'',3,NULL,NULL),(269,'i18n','locales','updatelocale',0,'',3,NULL,NULL),(270,'i18n','locales','deletelocale',0,'',3,NULL,NULL),(271,'upload','upload','find',0,'',3,NULL,NULL),(272,'upload','upload','findone',0,'',3,NULL,NULL),(273,'upload','upload','count',0,'',3,NULL,NULL),(274,'upload','upload','destroy',0,'',3,NULL,NULL),(275,'upload','upload','updatesettings',0,'',3,NULL,NULL),(276,'upload','upload','getsettings',0,'',3,NULL,NULL),(277,'upload','upload','upload',0,'',3,NULL,NULL),(278,'upload','upload','search',0,'',3,NULL,NULL),(279,'users-permissions','auth','callback',0,'',3,NULL,NULL),(280,'users-permissions','auth','resetpassword',0,'',3,NULL,NULL),(281,'users-permissions','auth','connect',0,'',3,NULL,NULL),(282,'users-permissions','auth','forgotpassword',0,'',3,NULL,NULL),(283,'users-permissions','auth','register',0,'',3,NULL,NULL),(284,'users-permissions','auth','emailconfirmation',0,'',3,NULL,NULL),(285,'users-permissions','auth','sendemailconfirmation',0,'',3,NULL,NULL),(286,'users-permissions','user','create',0,'',3,NULL,NULL),(287,'users-permissions','user','update',0,'',3,NULL,NULL),(288,'users-permissions','user','find',0,'',3,NULL,NULL),(289,'users-permissions','user','findone',1,'',3,NULL,NULL),(290,'users-permissions','user','count',0,'',3,NULL,NULL),(291,'users-permissions','user','destroy',0,'',3,NULL,NULL),(292,'users-permissions','user','destroyall',0,'',3,NULL,NULL),(293,'users-permissions','user','me',1,'',3,NULL,NULL),(294,'users-permissions','userspermissions','createrole',0,'',3,NULL,NULL),(295,'users-permissions','userspermissions','deleterole',0,'',3,NULL,NULL),(296,'users-permissions','userspermissions','getpermissions',0,'',3,NULL,NULL),(297,'users-permissions','userspermissions','getpolicies',0,'',3,NULL,NULL),(298,'users-permissions','userspermissions','getrole',0,'',3,NULL,NULL),(299,'users-permissions','userspermissions','getroles',0,'',3,NULL,NULL),(300,'users-permissions','userspermissions','getroutes',0,'',3,NULL,NULL),(301,'users-permissions','userspermissions','index',0,'',3,NULL,NULL),(302,'users-permissions','userspermissions','searchusers',0,'',3,NULL,NULL),(303,'users-permissions','userspermissions','updaterole',0,'',3,NULL,NULL),(304,'users-permissions','userspermissions','getemailtemplate',0,'',3,NULL,NULL),(305,'users-permissions','userspermissions','updateemailtemplate',0,'',3,NULL,NULL),(306,'users-permissions','userspermissions','getadvancedsettings',0,'',3,NULL,NULL),(307,'users-permissions','userspermissions','updateadvancedsettings',0,'',3,NULL,NULL),(308,'users-permissions','userspermissions','getproviders',0,'',3,NULL,NULL),(309,'users-permissions','userspermissions','updateproviders',0,'',3,NULL,NULL),(328,'application','actividades','count',0,'',3,NULL,NULL),(329,'application','actividades','count',0,'',2,NULL,NULL),(330,'application','actividades','count',0,'',1,NULL,NULL),(331,'application','actividades','create',0,'',1,NULL,NULL),(332,'application','actividades','create',0,'',2,NULL,NULL),(333,'application','actividades','create',0,'',3,NULL,NULL),(334,'application','actividades','delete',0,'',1,NULL,NULL),(335,'application','actividades','delete',0,'',2,NULL,NULL),(336,'application','actividades','delete',0,'',3,NULL,NULL),(337,'application','actividades','find',1,'',1,NULL,NULL),(338,'application','actividades','find',0,'',2,NULL,NULL),(339,'application','actividades','find',1,'',3,NULL,NULL),(340,'application','actividades','findone',1,'',1,NULL,NULL),(341,'application','actividades','findone',0,'',2,NULL,NULL),(342,'application','actividades','findone',1,'',3,NULL,NULL),(343,'application','actividades','update',0,'',1,NULL,NULL),(344,'application','actividades','update',0,'',2,NULL,NULL),(345,'application','actividades','update',0,'',3,NULL,NULL),(346,'application','registro-actividad','count',0,'',3,NULL,NULL),(347,'application','registro-actividad','count',0,'',2,NULL,NULL),(348,'application','registro-actividad','count',0,'',1,NULL,NULL),(349,'application','registro-actividad','create',1,'',1,NULL,NULL),(350,'application','registro-actividad','create',0,'',2,NULL,NULL),(351,'application','registro-actividad','create',0,'',3,NULL,NULL),(352,'application','registro-actividad','delete',0,'',1,NULL,NULL),(353,'application','registro-actividad','delete',0,'',2,NULL,NULL),(354,'application','registro-actividad','delete',0,'',3,NULL,NULL),(355,'application','registro-actividad','find',1,'',1,NULL,NULL),(356,'application','registro-actividad','find',0,'',2,NULL,NULL),(357,'application','registro-actividad','find',1,'',3,NULL,NULL),(358,'application','registro-actividad','findone',1,'',1,NULL,NULL),(359,'application','registro-actividad','findone',0,'',2,NULL,NULL),(360,'application','registro-actividad','findone',1,'',3,NULL,NULL),(361,'application','registro-actividad','update',1,'',1,NULL,NULL),(362,'application','registro-actividad','update',0,'',2,NULL,NULL),(363,'application','registro-actividad','update',1,'',3,NULL,NULL),(400,'application','arbol','count',0,'',3,NULL,NULL),(401,'application','arbol','count',0,'',2,NULL,NULL),(402,'application','arbol','count',0,'',1,NULL,NULL),(403,'application','arbol','create',0,'',1,NULL,NULL),(404,'application','arbol','create',0,'',2,NULL,NULL),(405,'application','arbol','create',0,'',3,NULL,NULL),(406,'application','arbol','delete',0,'',1,NULL,NULL),(407,'application','arbol','delete',0,'',2,NULL,NULL),(408,'application','arbol','delete',0,'',3,NULL,NULL),(409,'application','arbol','find',1,'',1,NULL,NULL),(410,'application','arbol','find',0,'',2,NULL,NULL),(411,'application','arbol','find',0,'',3,NULL,NULL),(412,'application','arbol','findone',1,'',1,NULL,NULL),(413,'application','arbol','findone',0,'',2,NULL,NULL),(414,'application','arbol','findone',0,'',3,NULL,NULL),(415,'application','arbol','update',0,'',1,NULL,NULL),(416,'application','arbol','update',0,'',2,NULL,NULL),(417,'application','arbol','update',0,'',3,NULL,NULL),(418,'application','cuidado-arboles','count',0,'',3,NULL,NULL),(419,'application','cuidado-arboles','count',0,'',2,NULL,NULL),(420,'application','cuidado-arboles','count',0,'',1,NULL,NULL),(421,'application','cuidado-arboles','create',1,'',1,NULL,NULL),(422,'application','cuidado-arboles','create',0,'',2,NULL,NULL),(423,'application','cuidado-arboles','create',0,'',3,NULL,NULL),(424,'application','cuidado-arboles','delete',1,'',1,NULL,NULL),(425,'application','cuidado-arboles','delete',0,'',2,NULL,NULL),(426,'application','cuidado-arboles','delete',0,'',3,NULL,NULL),(427,'application','cuidado-arboles','find',1,'',1,NULL,NULL),(428,'application','cuidado-arboles','find',0,'',2,NULL,NULL),(429,'application','cuidado-arboles','find',0,'',3,NULL,NULL),(430,'application','cuidado-arboles','findone',1,'',1,NULL,NULL),(431,'application','cuidado-arboles','findone',0,'',2,NULL,NULL),(432,'application','cuidado-arboles','findone',0,'',3,NULL,NULL),(433,'application','cuidado-arboles','update',1,'',1,NULL,NULL),(434,'application','cuidado-arboles','update',0,'',2,NULL,NULL),(435,'application','cuidado-arboles','update',0,'',3,NULL,NULL),(436,'application','zonas','count',0,'',3,NULL,NULL),(437,'application','zonas','count',0,'',2,NULL,NULL),(438,'application','zonas','count',0,'',1,NULL,NULL),(439,'application','zonas','create',0,'',1,NULL,NULL),(440,'application','zonas','create',0,'',2,NULL,NULL),(441,'application','zonas','create',0,'',3,NULL,NULL),(442,'application','zonas','delete',0,'',1,NULL,NULL),(443,'application','zonas','delete',0,'',2,NULL,NULL),(444,'application','zonas','delete',0,'',3,NULL,NULL),(445,'application','zonas','find',1,'',1,NULL,NULL),(446,'application','zonas','find',0,'',2,NULL,NULL),(447,'application','zonas','find',0,'',3,NULL,NULL),(448,'application','zonas','findone',1,'',1,NULL,NULL),(449,'application','zonas','findone',0,'',2,NULL,NULL),(450,'application','zonas','findone',0,'',3,NULL,NULL),(451,'application','zonas','update',0,'',1,NULL,NULL),(452,'application','zonas','update',0,'',2,NULL,NULL),(453,'application','zonas','update',0,'',3,NULL,NULL),(454,'application','camellones','count',0,'',1,NULL,NULL),(455,'application','camellones','count',0,'',2,NULL,NULL),(456,'application','camellones','count',0,'',3,NULL,NULL),(457,'application','camellones','create',0,'',1,NULL,NULL),(458,'application','camellones','create',0,'',2,NULL,NULL),(459,'application','camellones','create',0,'',3,NULL,NULL),(460,'application','camellones','delete',0,'',1,NULL,NULL),(461,'application','camellones','delete',0,'',2,NULL,NULL),(462,'application','camellones','delete',0,'',3,NULL,NULL),(463,'application','camellones','find',1,'',1,NULL,NULL),(464,'application','camellones','find',0,'',2,NULL,NULL),(465,'application','camellones','find',0,'',3,NULL,NULL),(466,'application','camellones','findone',1,'',1,NULL,NULL),(467,'application','camellones','findone',0,'',2,NULL,NULL),(468,'application','camellones','findone',0,'',3,NULL,NULL),(469,'application','camellones','update',0,'',1,NULL,NULL),(470,'application','camellones','update',0,'',2,NULL,NULL),(471,'application','camellones','update',0,'',3,NULL,NULL),(472,'application','productos','count',0,'',3,NULL,NULL),(473,'application','productos','count',0,'',2,NULL,NULL),(474,'application','productos','count',0,'',1,NULL,NULL),(475,'application','productos','create',1,'',1,NULL,NULL),(476,'application','productos','create',0,'',2,NULL,NULL),(477,'application','productos','create',0,'',3,NULL,NULL),(478,'application','productos','delete',0,'',1,NULL,NULL),(479,'application','productos','delete',0,'',2,NULL,NULL),(480,'application','productos','delete',0,'',3,NULL,NULL),(481,'application','productos','find',1,'',1,NULL,NULL),(482,'application','productos','find',0,'',2,NULL,NULL),(483,'application','productos','find',0,'',3,NULL,NULL),(484,'application','productos','findone',1,'',1,NULL,NULL),(485,'application','productos','findone',0,'',2,NULL,NULL),(486,'application','productos','findone',0,'',3,NULL,NULL),(487,'application','productos','update',0,'',1,NULL,NULL),(488,'application','productos','update',0,'',2,NULL,NULL),(489,'application','productos','update',0,'',3,NULL,NULL),(490,'application','ventas','count',0,'',1,NULL,NULL),(491,'application','ventas','count',0,'',2,NULL,NULL),(492,'application','ventas','count',0,'',3,NULL,NULL),(493,'application','ventas','create',1,'',1,NULL,NULL),(494,'application','ventas','create',0,'',2,NULL,NULL),(495,'application','ventas','create',0,'',3,NULL,NULL),(496,'application','ventas','delete',1,'',1,NULL,NULL),(497,'application','ventas','delete',0,'',2,NULL,NULL),(498,'application','ventas','delete',0,'',3,NULL,NULL),(499,'application','ventas','find',1,'',1,NULL,NULL),(500,'application','ventas','find',0,'',2,NULL,NULL),(501,'application','ventas','find',0,'',3,NULL,NULL),(502,'application','ventas','findone',1,'',1,NULL,NULL),(503,'application','ventas','findone',0,'',2,NULL,NULL),(504,'application','ventas','findone',0,'',3,NULL,NULL),(505,'application','ventas','update',0,'',1,NULL,NULL),(506,'application','ventas','update',0,'',2,NULL,NULL),(507,'application','ventas','update',0,'',3,NULL,NULL),(508,'application','forma-pagos','count',0,'',1,NULL,NULL),(509,'application','forma-pagos','count',0,'',2,NULL,NULL),(510,'application','forma-pagos','count',0,'',3,NULL,NULL),(511,'application','forma-pagos','create',0,'',1,NULL,NULL),(512,'application','forma-pagos','create',0,'',2,NULL,NULL),(513,'application','forma-pagos','create',0,'',3,NULL,NULL),(514,'application','forma-pagos','delete',0,'',1,NULL,NULL),(515,'application','forma-pagos','delete',0,'',2,NULL,NULL),(516,'application','forma-pagos','delete',0,'',3,NULL,NULL),(517,'application','forma-pagos','find',1,'',1,NULL,NULL),(518,'application','forma-pagos','find',0,'',2,NULL,NULL),(519,'application','forma-pagos','find',0,'',3,NULL,NULL),(520,'application','forma-pagos','findone',1,'',1,NULL,NULL),(521,'application','forma-pagos','findone',0,'',2,NULL,NULL),(522,'application','forma-pagos','findone',0,'',3,NULL,NULL),(523,'application','forma-pagos','update',0,'',1,NULL,NULL),(524,'application','forma-pagos','update',0,'',2,NULL,NULL),(525,'application','forma-pagos','update',0,'',3,NULL,NULL),(526,'application','compras','count',0,'',3,NULL,NULL),(527,'application','compras','count',0,'',2,NULL,NULL),(528,'application','compras','count',0,'',1,NULL,NULL),(529,'application','compras','create',1,'',1,NULL,NULL),(530,'application','compras','create',0,'',2,NULL,NULL),(531,'application','compras','create',0,'',3,NULL,NULL),(532,'application','compras','delete',1,'',1,NULL,NULL),(533,'application','compras','delete',0,'',2,NULL,NULL),(534,'application','compras','delete',0,'',3,NULL,NULL),(535,'application','compras','find',1,'',1,NULL,NULL),(536,'application','compras','find',0,'',2,NULL,NULL),(537,'application','compras','find',0,'',3,NULL,NULL),(538,'application','compras','findone',1,'',1,NULL,NULL),(539,'application','compras','findone',0,'',2,NULL,NULL),(540,'application','compras','findone',0,'',3,NULL,NULL),(541,'application','compras','update',1,'',1,NULL,NULL),(542,'application','compras','update',0,'',2,NULL,NULL),(543,'application','compras','update',0,'',3,NULL,NULL),(544,'application','centro-costos','count',0,'',1,NULL,NULL),(545,'application','centro-costos','count',0,'',2,NULL,NULL),(546,'application','centro-costos','count',0,'',3,NULL,NULL),(547,'application','centro-costos','create',0,'',1,NULL,NULL),(548,'application','centro-costos','create',0,'',2,NULL,NULL),(549,'application','centro-costos','create',0,'',3,NULL,NULL),(550,'application','centro-costos','delete',0,'',1,NULL,NULL),(551,'application','centro-costos','delete',0,'',2,NULL,NULL),(552,'application','centro-costos','delete',0,'',3,NULL,NULL),(553,'application','centro-costos','find',1,'',1,NULL,NULL),(554,'application','centro-costos','find',0,'',2,NULL,NULL),(555,'application','centro-costos','find',0,'',3,NULL,NULL),(556,'application','centro-costos','findone',1,'',1,NULL,NULL),(557,'application','centro-costos','findone',0,'',2,NULL,NULL),(558,'application','centro-costos','findone',0,'',3,NULL,NULL),(559,'application','centro-costos','update',0,'',1,NULL,NULL),(560,'application','centro-costos','update',0,'',2,NULL,NULL),(561,'application','centro-costos','update',0,'',3,NULL,NULL),(562,'application','producto-cosechas','count',0,'',1,NULL,NULL),(563,'application','producto-cosechas','count',0,'',2,NULL,NULL),(564,'application','producto-cosechas','count',0,'',3,NULL,NULL),(565,'application','producto-cosechas','create',0,'',1,NULL,NULL),(566,'application','producto-cosechas','create',0,'',2,NULL,NULL),(567,'application','producto-cosechas','create',0,'',3,NULL,NULL),(568,'application','producto-cosechas','delete',0,'',1,NULL,NULL),(569,'application','producto-cosechas','delete',0,'',2,NULL,NULL),(570,'application','producto-cosechas','delete',0,'',3,NULL,NULL),(571,'application','producto-cosechas','find',1,'',1,NULL,NULL),(572,'application','producto-cosechas','find',0,'',2,NULL,NULL),(573,'application','producto-cosechas','find',0,'',3,NULL,NULL),(574,'application','producto-cosechas','findone',1,'',1,NULL,NULL),(575,'application','producto-cosechas','findone',0,'',2,NULL,NULL),(576,'application','producto-cosechas','findone',0,'',3,NULL,NULL),(577,'application','producto-cosechas','update',0,'',1,NULL,NULL),(578,'application','producto-cosechas','update',0,'',2,NULL,NULL),(579,'application','producto-cosechas','update',0,'',3,NULL,NULL),(580,'application','zona-cosechas','count',0,'',3,NULL,NULL),(581,'application','zona-cosechas','count',0,'',2,NULL,NULL),(582,'application','zona-cosechas','count',0,'',1,NULL,NULL),(583,'application','zona-cosechas','create',0,'',1,NULL,NULL),(584,'application','zona-cosechas','create',0,'',2,NULL,NULL),(585,'application','zona-cosechas','create',0,'',3,NULL,NULL),(586,'application','zona-cosechas','delete',0,'',1,NULL,NULL),(587,'application','zona-cosechas','delete',0,'',2,NULL,NULL),(588,'application','zona-cosechas','delete',0,'',3,NULL,NULL),(589,'application','zona-cosechas','find',1,'',1,NULL,NULL),(590,'application','zona-cosechas','find',0,'',2,NULL,NULL),(591,'application','zona-cosechas','find',0,'',3,NULL,NULL),(592,'application','zona-cosechas','findone',1,'',1,NULL,NULL),(593,'application','zona-cosechas','findone',0,'',2,NULL,NULL),(594,'application','zona-cosechas','findone',0,'',3,NULL,NULL),(595,'application','zona-cosechas','update',0,'',1,NULL,NULL),(596,'application','zona-cosechas','update',0,'',2,NULL,NULL),(597,'application','zona-cosechas','update',0,'',3,NULL,NULL),(598,'application','cosechas','count',0,'',1,NULL,NULL),(599,'application','cosechas','count',0,'',2,NULL,NULL),(600,'application','cosechas','count',0,'',3,NULL,NULL),(601,'application','cosechas','create',1,'',1,NULL,NULL),(602,'application','cosechas','create',0,'',2,NULL,NULL),(603,'application','cosechas','create',0,'',3,NULL,NULL),(604,'application','cosechas','delete',1,'',1,NULL,NULL),(605,'application','cosechas','delete',0,'',2,NULL,NULL),(606,'application','cosechas','delete',0,'',3,NULL,NULL),(607,'application','cosechas','find',1,'',1,NULL,NULL),(608,'application','cosechas','find',0,'',2,NULL,NULL),(609,'application','cosechas','find',0,'',3,NULL,NULL),(610,'application','cosechas','findone',1,'',1,NULL,NULL),(611,'application','cosechas','findone',0,'',2,NULL,NULL),(612,'application','cosechas','findone',0,'',3,NULL,NULL),(613,'application','cosechas','update',0,'',1,NULL,NULL),(614,'application','cosechas','update',0,'',2,NULL,NULL),(615,'application','cosechas','update',0,'',3,NULL,NULL),(616,'application','profesionales','count',0,'',3,NULL,NULL),(617,'application','profesionales','count',0,'',2,NULL,NULL),(618,'application','profesionales','count',0,'',1,NULL,NULL),(619,'application','profesionales','create',0,'',1,NULL,NULL),(620,'application','profesionales','create',0,'',2,NULL,NULL),(621,'application','profesionales','create',0,'',3,NULL,NULL),(622,'application','profesionales','delete',0,'',1,NULL,NULL),(623,'application','profesionales','delete',0,'',2,NULL,NULL),(624,'application','profesionales','delete',0,'',3,NULL,NULL),(625,'application','profesionales','find',1,'',1,NULL,NULL),(626,'application','profesionales','find',0,'',2,NULL,NULL),(627,'application','profesionales','find',0,'',3,NULL,NULL),(628,'application','profesionales','findone',1,'',1,NULL,NULL),(629,'application','profesionales','findone',0,'',2,NULL,NULL),(630,'application','profesionales','findone',0,'',3,NULL,NULL),(631,'application','profesionales','update',0,'',1,NULL,NULL),(632,'application','profesionales','update',0,'',2,NULL,NULL),(633,'application','profesionales','update',0,'',3,NULL,NULL),(634,'application','honorarios','count',0,'',1,NULL,NULL),(635,'application','honorarios','count',0,'',2,NULL,NULL),(636,'application','honorarios','count',0,'',3,NULL,NULL),(637,'application','honorarios','create',1,'',1,NULL,NULL),(638,'application','honorarios','create',0,'',2,NULL,NULL),(639,'application','honorarios','create',0,'',3,NULL,NULL),(640,'application','honorarios','delete',1,'',1,NULL,NULL),(641,'application','honorarios','delete',0,'',2,NULL,NULL),(642,'application','honorarios','delete',0,'',3,NULL,NULL),(643,'application','honorarios','find',1,'',1,NULL,NULL),(644,'application','honorarios','find',0,'',2,NULL,NULL),(645,'application','honorarios','find',0,'',3,NULL,NULL),(646,'application','honorarios','findone',1,'',1,NULL,NULL),(647,'application','honorarios','findone',0,'',2,NULL,NULL),(648,'application','honorarios','findone',0,'',3,NULL,NULL),(649,'application','honorarios','update',0,'',1,NULL,NULL),(650,'application','honorarios','update',0,'',2,NULL,NULL),(651,'application','honorarios','update',0,'',3,NULL,NULL),(652,'application','proveedores','count',0,'',3,NULL,NULL),(653,'application','proveedores','count',0,'',2,NULL,NULL),(654,'application','proveedores','count',0,'',1,NULL,NULL),(655,'application','proveedores','create',0,'',1,NULL,NULL),(656,'application','proveedores','create',0,'',2,NULL,NULL),(657,'application','proveedores','create',0,'',3,NULL,NULL),(658,'application','proveedores','delete',0,'',1,NULL,NULL),(659,'application','proveedores','delete',0,'',2,NULL,NULL),(660,'application','proveedores','delete',0,'',3,NULL,NULL),(661,'application','proveedores','find',1,'',1,NULL,NULL),(662,'application','proveedores','find',0,'',2,NULL,NULL),(663,'application','proveedores','find',0,'',3,NULL,NULL),(664,'application','proveedores','findone',1,'',1,NULL,NULL),(665,'application','proveedores','findone',0,'',2,NULL,NULL),(666,'application','proveedores','findone',0,'',3,NULL,NULL),(667,'application','proveedores','update',0,'',1,NULL,NULL),(668,'application','proveedores','update',0,'',2,NULL,NULL),(669,'application','proveedores','update',0,'',3,NULL,NULL),(670,'application','gastos-generales','count',0,'',3,NULL,NULL),(671,'application','gastos-generales','count',0,'',2,NULL,NULL),(672,'application','gastos-generales','count',0,'',1,NULL,NULL),(673,'application','gastos-generales','create',1,'',1,NULL,NULL),(674,'application','gastos-generales','create',0,'',2,NULL,NULL),(675,'application','gastos-generales','create',0,'',3,NULL,NULL),(676,'application','gastos-generales','delete',1,'',1,NULL,NULL),(677,'application','gastos-generales','delete',0,'',2,NULL,NULL),(678,'application','gastos-generales','delete',0,'',3,NULL,NULL),(679,'application','gastos-generales','find',1,'',1,NULL,NULL),(680,'application','gastos-generales','find',0,'',2,NULL,NULL),(681,'application','gastos-generales','find',0,'',3,NULL,NULL),(682,'application','gastos-generales','findone',1,'',1,NULL,NULL),(683,'application','gastos-generales','findone',0,'',2,NULL,NULL),(684,'application','gastos-generales','findone',0,'',3,NULL,NULL),(685,'application','gastos-generales','update',0,'',1,NULL,NULL),(686,'application','gastos-generales','update',0,'',2,NULL,NULL),(687,'application','gastos-generales','update',0,'',3,NULL,NULL),(688,'application','unidades-gastos','count',0,'',1,NULL,NULL),(689,'application','unidades-gastos','count',0,'',2,NULL,NULL),(690,'application','unidades-gastos','count',0,'',3,NULL,NULL),(691,'application','unidades-gastos','create',0,'',1,NULL,NULL),(692,'application','unidades-gastos','create',0,'',2,NULL,NULL),(693,'application','unidades-gastos','create',0,'',3,NULL,NULL),(694,'application','unidades-gastos','delete',0,'',1,NULL,NULL),(695,'application','unidades-gastos','delete',0,'',2,NULL,NULL),(696,'application','unidades-gastos','delete',0,'',3,NULL,NULL),(697,'application','unidades-gastos','find',1,'',1,NULL,NULL),(698,'application','unidades-gastos','find',0,'',2,NULL,NULL),(699,'application','unidades-gastos','find',0,'',3,NULL,NULL),(700,'application','unidades-gastos','findone',1,'',1,NULL,NULL),(701,'application','unidades-gastos','findone',0,'',2,NULL,NULL),(702,'application','unidades-gastos','findone',0,'',3,NULL,NULL),(703,'application','unidades-gastos','update',0,'',1,NULL,NULL),(704,'application','unidades-gastos','update',0,'',2,NULL,NULL),(705,'application','unidades-gastos','update',0,'',3,NULL,NULL),(706,'application','clientes','count',0,'',3,NULL,NULL),(707,'application','clientes','count',0,'',2,NULL,NULL),(708,'application','clientes','count',0,'',1,NULL,NULL),(709,'application','clientes','create',0,'',1,NULL,NULL),(710,'application','clientes','create',0,'',2,NULL,NULL),(711,'application','clientes','create',0,'',3,NULL,NULL),(712,'application','clientes','delete',0,'',1,NULL,NULL),(713,'application','clientes','delete',0,'',2,NULL,NULL),(714,'application','clientes','delete',0,'',3,NULL,NULL),(715,'application','clientes','find',1,'',1,NULL,NULL),(716,'application','clientes','find',0,'',2,NULL,NULL),(717,'application','clientes','find',0,'',3,NULL,NULL),(718,'application','clientes','findone',1,'',1,NULL,NULL),(719,'application','clientes','findone',0,'',2,NULL,NULL),(720,'application','clientes','findone',0,'',3,NULL,NULL),(721,'application','clientes','update',0,'',1,NULL,NULL),(722,'application','clientes','update',0,'',2,NULL,NULL),(723,'application','clientes','update',0,'',3,NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (1,'Admin','Default role given to authenticated user.','authenticated',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL),(3,'Cliente','Usuario básico del sistema','cliente',NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `granja` int(11) DEFAULT NULL,
  `campo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
INSERT INTO `users-permissions_user` VALUES (1,'userbuli','userbuli@gmail.com','local','$2a$10$HKVM3O7EB/uwYGYDgg3/KewEZnxOcgil2/i4ba.W3Q7zxNFN.iInO',NULL,NULL,1,0,1,1,1,'2021-06-11 00:44:21','2021-06-11 00:44:21',NULL,1),(2,'usersancarlos','usersancarlos@gmail.com','local','$2a$10$kTJnq4VOmyuM6T4VhP2TpOo25hKECCqOw3xihdfD7Vtpemi0btHHS',NULL,NULL,1,0,1,1,1,'2021-06-11 00:46:56','2021-06-11 00:46:56',NULL,2),(3,'pruebaerror','pruebaerror@gmail.com','local','$2a$10$n44pow9dvlLeYM3DnfEfZOKHHAMg7La/x1wddUybJppZBMU8UtBba',NULL,NULL,1,0,1,1,1,'2021-06-11 06:50:27','2021-06-11 06:51:24',NULL,2),(4,'cliente','hrey@kubikware.com','local','$2a$10$pKaBFUH62iKTycsSk1gBo.uTFGiWL20mAWLRDTIHwqYRA2usaHkcG',NULL,NULL,1,0,3,1,1,'2021-06-25 06:16:24','2021-06-25 06:33:46',NULL,2);
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `producto` int(11) DEFAULT NULL,
  `calidad` varchar(255) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `valorkilo` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `factura` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `forma_pago` int(11) DEFAULT NULL,
  `cheque` varchar(255) DEFAULT NULL,
  `campo` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,3,'Baja',NULL,2000.00,2400000.00,'52115','2021-09-23 03:13:55',NULL,NULL,'2021-09-23 07:13:55','2021-09-23 07:13:56',1,'',2,1200,1),(3,3,'Baja',NULL,1235.00,14820.00,'5515210','2021-09-23 03:15:23',NULL,NULL,'2021-09-23 07:15:23','2021-09-23 07:15:23',3,'226262',2,12,1);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zona_cosechas`
--

DROP TABLE IF EXISTS `zona_cosechas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zona_cosechas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `producto_cosecha` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zona_cosechas`
--

LOCK TABLES `zona_cosechas` WRITE;
/*!40000 ALTER TABLE `zona_cosechas` DISABLE KEYS */;
INSERT INTO `zona_cosechas` VALUES (1,'A',2,'2021-07-22 21:05:22',1,1,'2021-07-23 01:05:16','2021-07-23 01:06:56'),(2,'B',2,'2021-07-22 21:06:21',1,1,'2021-07-23 01:06:18','2021-07-23 01:06:56'),(3,'1',3,'2021-07-22 21:06:31',1,1,'2021-07-23 01:06:28','2021-07-23 01:07:17'),(4,'2',3,'2021-07-22 21:06:41',1,1,'2021-07-23 01:06:37','2021-07-23 01:07:17');
/*!40000 ALTER TABLE `zona_cosechas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zonas`
--

DROP TABLE IF EXISTS `zonas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zonas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `numero` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `campo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zonas`
--

LOCK TABLES `zonas` WRITE;
/*!40000 ALTER TABLE `zonas` DISABLE KEYS */;
INSERT INTO `zonas` VALUES (1,1,'2021-07-13 21:46:32',1,1,'2021-07-14 01:46:23','2021-07-14 01:46:32',2),(2,2,'2021-07-13 21:47:38',1,1,'2021-07-14 01:47:33','2021-07-14 01:47:38',2),(4,1,'2021-07-13 21:48:57',1,1,'2021-07-14 01:48:54','2021-07-14 01:48:57',1);
/*!40000 ALTER TABLE `zonas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-22 23:19:39
