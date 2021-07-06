-- MySQL dump 10.13  Distrib 5.7.34, for Linux (x86_64)
--
-- Host: localhost    Database: backend_granja
-- ------------------------------------------------------
-- Server version	5.7.34-0ubuntu0.18.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'model_def_strapi::core-store','{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}','object',NULL,NULL),(2,'model_def_strapi::webhooks','{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(3,'model_def_strapi::permission','{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}','object',NULL,NULL),(4,'model_def_strapi::role','{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}','object',NULL,NULL),(5,'model_def_strapi::user','{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}}}','object',NULL,NULL),(6,'model_def_plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(7,'model_def_plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(8,'model_def_plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"campo\":{\"model\":\"campo\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(9,'model_def_plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(10,'model_def_plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"collectionName\":\"i18n_locales\",\"kind\":\"collectionType\",\"info\":{\"name\":\"locale\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(11,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}','object','',''),(12,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),(13,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"PreferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreferedLanguage\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}','object','',''),(14,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"campo\":{\"edit\":{\"label\":\"Campo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Campo\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]],\"editRelations\":[\"role\",\"campo\"]}}','object','',''),(15,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(16,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"Properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),(17,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(18,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),(19,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(20,'plugin_content_manager_configuration_content_types::plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object','',''),(21,'plugin_i18n_default_locale','\"en\"','string','',''),(22,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(23,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','',''),(24,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object','',''),(25,'plugin_documentation_config','{\"restrictedAccess\":false}','object','',''),(26,'model_def_application::granja.granja','{\"uid\":\"application::granja.granja\",\"collectionName\":\"granjas\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Granja\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(28,'model_def_application::campo.campo','{\"uid\":\"application::campo.campo\",\"collectionName\":\"campos\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Campo\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(29,'plugin_content_manager_configuration_content_types::application::campo.campo','{\"uid\":\"application::campo.campo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"Nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nombre\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"nombre\",\"size\":6}]],\"editRelations\":[],\"list\":[\"id\",\"nombre\"]}}','object','',''),(30,'model_def_application::actividad.actividad','{\"uid\":\"application::actividad.actividad\",\"collectionName\":\"actividades\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Actividad\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"enumeration\",\"enum\":[\"poda\",\"humix\",\"fungicida\"],\"required\":true},\"inicio\":{\"type\":\"date\",\"required\":true},\"fin\":{\"type\":\"date\",\"required\":true},\"proposito\":{\"type\":\"string\"},\"tipo\":{\"type\":\"enumeration\",\"enum\":[\"mantencion\",\"aplicacion\"]},\"cantidad\":{\"type\":\"string\"},\"medida\":{\"type\":\"string\"},\"campo\":{\"model\":\"campo\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(32,'model_def_application::actividades.actividades','{\"uid\":\"application::actividades.actividades\",\"collectionName\":\"actividades\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Actividades\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(33,'plugin_content_manager_configuration_content_types::application::actividades.actividades','{\"uid\":\"application::actividades.actividades\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"Nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nombre\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"nombre\",\"size\":6}]],\"editRelations\":[],\"list\":[\"id\",\"nombre\"]}}','object','',''),(34,'model_def_application::registro-actividad.registro-actividad','{\"uid\":\"application::registro-actividad.registro-actividad\",\"collectionName\":\"registro_actividads\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Registro Actividad\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"actividad\":{\"type\":\"string\",\"required\":true},\"fechainicio\":{\"type\":\"datetime\"},\"fechafin\":{\"type\":\"datetime\"},\"proposito\":{\"type\":\"string\"},\"tipo\":{\"type\":\"string\"},\"cantidad\":{\"type\":\"string\"},\"medida\":{\"type\":\"string\"},\"campo\":{\"model\":\"campo\"},\"registro_actividad\":{\"model\":\"registro-actividad\"},\"estado\":{\"type\":\"enumeration\",\"enum\":[\"Proyectado\",\"Iniciado\",\"Finalizado\"],\"default\":\"Proyectado\",\"required\":true},\"fechainiciocliente\":{\"type\":\"datetime\"},\"fechafincliente\":{\"type\":\"datetime\"},\"observacion\":{\"type\":\"string\"},\"recursos\":{\"type\":\"integer\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(35,'plugin_content_manager_configuration_content_types::application::registro-actividad.registro-actividad','{\"uid\":\"application::registro-actividad.registro-actividad\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"actividad\",\"defaultSortBy\":\"actividad\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"actividad\":{\"edit\":{\"label\":\"Actividad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Actividad\",\"searchable\":true,\"sortable\":true}},\"fechainicio\":{\"edit\":{\"label\":\"Fechainicio\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fechainicio\",\"searchable\":true,\"sortable\":true}},\"fechafin\":{\"edit\":{\"label\":\"Fechafin\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fechafin\",\"searchable\":true,\"sortable\":true}},\"proposito\":{\"edit\":{\"label\":\"Proposito\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Proposito\",\"searchable\":true,\"sortable\":true}},\"tipo\":{\"edit\":{\"label\":\"Tipo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Tipo\",\"searchable\":true,\"sortable\":true}},\"cantidad\":{\"edit\":{\"label\":\"Cantidad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cantidad\",\"searchable\":true,\"sortable\":true}},\"medida\":{\"edit\":{\"label\":\"Medida\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Medida\",\"searchable\":true,\"sortable\":true}},\"campo\":{\"edit\":{\"label\":\"Campo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"Campo\",\"searchable\":true,\"sortable\":true}},\"registro_actividad\":{\"edit\":{\"label\":\"Registro_actividad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"actividad\"},\"list\":{\"label\":\"Registro_actividad\",\"searchable\":true,\"sortable\":true}},\"estado\":{\"edit\":{\"label\":\"Estado\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Estado\",\"searchable\":true,\"sortable\":true}},\"fechainiciocliente\":{\"edit\":{\"label\":\"Fechainiciocliente\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fechainiciocliente\",\"searchable\":true,\"sortable\":true}},\"fechafincliente\":{\"edit\":{\"label\":\"Fechafincliente\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fechafincliente\",\"searchable\":true,\"sortable\":true}},\"observacion\":{\"edit\":{\"label\":\"Observacion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Observacion\",\"searchable\":true,\"sortable\":true}},\"recursos\":{\"edit\":{\"label\":\"Recursos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Recursos\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"actividad\",\"fechainicio\",\"fechafin\"],\"edit\":[[{\"name\":\"actividad\",\"size\":6},{\"name\":\"proposito\",\"size\":6}],[{\"name\":\"estado\",\"size\":6},{\"name\":\"tipo\",\"size\":6}],[{\"name\":\"medida\",\"size\":6},{\"name\":\"cantidad\",\"size\":6}],[{\"name\":\"fechainicio\",\"size\":6},{\"name\":\"fechafin\",\"size\":6}],[{\"name\":\"fechainiciocliente\",\"size\":6},{\"name\":\"fechafincliente\",\"size\":6}],[{\"name\":\"observacion\",\"size\":6},{\"name\":\"recursos\",\"size\":4}]],\"editRelations\":[\"campo\",\"registro_actividad\"]}}','object','','');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_actividads`
--

LOCK TABLES `registro_actividads` WRITE;
/*!40000 ALTER TABLE `registro_actividads` DISABLE KEYS */;
INSERT INTO `registro_actividads` VALUES (59,'Poda','2021-07-01 04:00:00','2021-07-03 04:00:00','Cortar todas las plantas y darselas a los animales','Mantención','','','2021-07-01 02:40:10',NULL,NULL,'2021-07-01 06:40:10','2021-07-01 06:40:43',2,NULL,'Finalizado','2021-07-01 02:40:38','2021-07-01 02:40:42','',5),(60,'Humix','2021-07-02 04:00:00','2021-07-03 04:00:00','Cortar todas las plantas y darselas a los animales','Mantención','','','2021-07-01 02:41:19',NULL,NULL,'2021-07-01 06:41:19','2021-07-01 06:42:17',2,NULL,'Finalizado','2021-07-01 02:42:10','2021-07-01 02:42:17','',6),(61,'Poda','2021-07-03 04:00:00','2021-07-04 04:00:00','Cortar todas las plantas y darselas a los animales','Mantención','','','2021-07-01 02:41:40',NULL,NULL,'2021-07-01 06:41:40','2021-07-01 06:42:29',2,60,'Finalizado','2021-07-01 02:42:24','2021-07-01 02:42:29','',6),(62,'Fungicida','2021-07-02 04:00:00','2021-07-04 04:00:00','Cortar todas las plantas y darselas a los animales','Mantención','','','2021-07-02 17:40:01',NULL,NULL,'2021-07-02 21:40:01','2021-07-02 21:40:01',2,NULL,'Proyectado',NULL,NULL,NULL,NULL),(63,'Poda','2021-07-03 04:00:00','2021-07-04 04:00:00','Cortar todas las plantas y darselas a los animales','Mantención','','','2021-07-02 17:49:19',NULL,NULL,'2021-07-02 21:49:19','2021-07-02 21:49:19',2,60,'Proyectado',NULL,NULL,NULL,NULL),(64,'Humix','2021-07-07 04:00:00','2021-07-15 04:00:00','Cortar todas las plantas y darselas a los animales','Mantención','','','2021-07-02 17:52:56',NULL,NULL,'2021-07-02 21:52:56','2021-07-02 21:52:56',2,63,'Proyectado',NULL,NULL,NULL,NULL),(65,'Humix','2021-07-15 04:00:00','2021-07-16 04:00:00','sfsdf','Mantención','','','2021-07-02 17:54:50',NULL,NULL,'2021-07-02 21:54:50','2021-07-02 21:54:50',2,NULL,'Proyectado',NULL,NULL,NULL,NULL),(66,'Fungicida','2021-07-28 04:00:00','2021-07-29 04:00:00','sfsdf','Mantención','','','2021-07-02 17:56:04',NULL,NULL,'2021-07-02 21:56:04','2021-07-02 21:56:04',2,NULL,'Proyectado',NULL,NULL,NULL,NULL),(67,'Poda','2021-07-21 04:00:00','2021-07-22 04:00:00','Cortar todas las plantas y darselas a los animales','Mantención','','','2021-07-02 17:56:57',NULL,NULL,'2021-07-02 21:56:57','2021-07-02 21:56:57',2,NULL,'Proyectado',NULL,NULL,NULL,NULL),(68,'Fungicida','2021-07-08 04:00:00','2021-07-09 04:00:00','Cortar todas las plantas y darselas a los animales44','Aplicación','1000','Litros','2021-07-02 17:59:39',NULL,NULL,'2021-07-02 21:59:39','2021-07-02 21:59:39',2,63,'Proyectado',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=338 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_permission`
--

LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` VALUES (1,'plugins::upload.read',NULL,'{}','[]',2,'2021-06-10 20:37:28','2021-06-10 20:37:28'),(2,'plugins::upload.assets.create',NULL,'{}','[]',2,'2021-06-10 20:37:28','2021-06-10 20:37:28'),(3,'plugins::upload.assets.copy-link',NULL,'{}','[]',2,'2021-06-10 20:37:28','2021-06-10 20:37:28'),(4,'plugins::upload.assets.download',NULL,'{}','[]',2,'2021-06-10 20:37:28','2021-06-10 20:37:28'),(5,'plugins::upload.assets.update',NULL,'{}','[]',2,'2021-06-10 20:37:28','2021-06-10 20:37:28'),(6,'plugins::upload.assets.create',NULL,'{}','[]',3,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(7,'plugins::upload.read',NULL,'{}','[\"admin::is-creator\"]',3,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(8,'plugins::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]',3,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(9,'plugins::upload.assets.download',NULL,'{}','[]',3,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(10,'plugins::upload.assets.copy-link',NULL,'{}','[]',3,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(15,'plugins::content-type-builder.read',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(16,'plugins::email.settings.read',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(17,'plugins::upload.read',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(18,'plugins::upload.assets.create',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(19,'plugins::upload.assets.update',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(20,'plugins::upload.assets.download',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(21,'plugins::upload.assets.copy-link',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(22,'plugins::upload.settings.read',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(23,'plugins::content-manager.single-types.configure-view',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(24,'plugins::content-manager.collection-types.configure-view',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(25,'plugins::content-manager.components.configure-layout',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(26,'plugins::i18n.locale.create',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(27,'plugins::i18n.locale.read',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(28,'plugins::i18n.locale.update',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(29,'plugins::i18n.locale.delete',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(30,'plugins::users-permissions.roles.create',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(31,'plugins::users-permissions.roles.read',NULL,'{}','[]',1,'2021-06-10 20:37:29','2021-06-10 20:37:29'),(32,'plugins::users-permissions.roles.update',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(33,'plugins::users-permissions.roles.delete',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(34,'plugins::users-permissions.providers.read',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(35,'plugins::users-permissions.providers.update',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(36,'plugins::users-permissions.email-templates.read',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(37,'plugins::users-permissions.email-templates.update',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(38,'plugins::users-permissions.advanced-settings.read',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(39,'plugins::users-permissions.advanced-settings.update',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(40,'admin::marketplace.read',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(41,'admin::marketplace.plugins.install',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(42,'admin::marketplace.plugins.uninstall',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(43,'admin::webhooks.create',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(44,'admin::webhooks.read',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(45,'admin::webhooks.update',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(46,'admin::webhooks.delete',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(47,'admin::users.create',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(48,'admin::users.read',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(49,'admin::users.update',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(50,'admin::users.delete',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(51,'admin::roles.create',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(52,'admin::roles.read',NULL,'{}','[]',1,'2021-06-10 20:37:30','2021-06-10 20:37:30'),(53,'admin::roles.update',NULL,'{}','[]',1,'2021-06-10 20:37:31','2021-06-10 20:37:31'),(54,'admin::roles.delete',NULL,'{}','[]',1,'2021-06-10 20:37:31','2021-06-10 20:37:31'),(59,'plugins::documentation.read',NULL,'{}','[]',1,'2021-06-10 23:40:51','2021-06-10 23:40:51'),(60,'plugins::documentation.settings.update',NULL,'{}','[]',1,'2021-06-10 23:40:51','2021-06-10 23:40:51'),(61,'plugins::documentation.settings.regenerate',NULL,'{}','[]',1,'2021-06-10 23:40:51','2021-06-10 23:40:51'),(87,'plugins::content-manager.explorer.create','application::campo.campo','{\"fields\":[\"nombre\"]}','[]',1,'2021-06-11 00:38:54','2021-06-11 00:38:54'),(88,'plugins::content-manager.explorer.read','application::campo.campo','{\"fields\":[\"nombre\"]}','[]',1,'2021-06-11 00:38:54','2021-06-11 00:38:54'),(89,'plugins::content-manager.explorer.update','application::campo.campo','{\"fields\":[\"nombre\"]}','[]',1,'2021-06-11 00:38:54','2021-06-11 00:38:54'),(123,'plugins::content-manager.explorer.create','application::actividades.actividades','{\"fields\":[\"nombre\"]}','[]',1,'2021-06-11 08:04:50','2021-06-11 08:04:50'),(124,'plugins::content-manager.explorer.read','application::actividades.actividades','{\"fields\":[\"nombre\"]}','[]',1,'2021-06-11 08:04:50','2021-06-11 08:04:50'),(125,'plugins::content-manager.explorer.update','application::actividades.actividades','{\"fields\":[\"nombre\"]}','[]',1,'2021-06-11 08:04:50','2021-06-11 08:04:50'),(249,'plugins::content-manager.explorer.create','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"campo\"]}','[]',1,'2021-06-25 06:18:18','2021-06-25 06:18:19'),(250,'plugins::content-manager.explorer.read','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"campo\"]}','[]',1,'2021-06-25 06:18:18','2021-06-25 06:18:19'),(251,'plugins::content-manager.explorer.update','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"campo\"]}','[]',1,'2021-06-25 06:18:18','2021-06-25 06:18:19'),(286,'plugins::content-manager.explorer.update','application::registro-actividad.registro-actividad','{\"fields\":[\"actividad\",\"fechainicio\",\"fechafin\",\"proposito\",\"tipo\",\"cantidad\",\"medida\",\"campo\",\"registro_actividad\",\"estado\",\"fechainiciocliente\",\"fechafincliente\",\"observacion\",\"recursos\"]}','[]',1,'2021-06-25 22:04:41','2021-06-25 22:04:41'),(287,'plugins::content-manager.explorer.read','application::registro-actividad.registro-actividad','{\"fields\":[\"actividad\",\"fechainicio\",\"fechafin\",\"proposito\",\"tipo\",\"cantidad\",\"medida\",\"campo\",\"registro_actividad\",\"estado\",\"fechainiciocliente\",\"fechafincliente\",\"observacion\",\"recursos\"]}','[]',1,'2021-06-25 22:04:41','2021-06-25 22:04:41'),(288,'plugins::content-manager.explorer.create','application::registro-actividad.registro-actividad','{\"fields\":[\"actividad\",\"fechainicio\",\"fechafin\",\"proposito\",\"tipo\",\"cantidad\",\"medida\",\"campo\",\"registro_actividad\",\"estado\",\"fechainiciocliente\",\"fechafincliente\",\"observacion\",\"recursos\"]}','[]',1,'2021-06-25 22:04:41','2021-06-25 22:04:41'),(331,'plugins::content-manager.explorer.publish','application::campo.campo','{}','[]',1,'2021-07-06 20:54:01','2021-07-06 20:54:01'),(332,'plugins::content-manager.explorer.delete','application::campo.campo','{}','[]',1,'2021-07-06 20:54:00','2021-07-06 20:54:01'),(333,'plugins::content-manager.explorer.publish','application::registro-actividad.registro-actividad','{}','[]',1,'2021-07-06 20:54:01','2021-07-06 20:54:01'),(334,'plugins::content-manager.explorer.delete','application::registro-actividad.registro-actividad','{}','[]',1,'2021-07-06 20:54:00','2021-07-06 20:54:01'),(335,'plugins::content-manager.explorer.delete','application::actividades.actividades','{}','[]',1,'2021-07-06 20:54:00','2021-07-06 20:54:01'),(336,'plugins::content-manager.explorer.delete','plugins::users-permissions.user','{}','[]',1,'2021-07-06 20:54:00','2021-07-06 20:54:01'),(337,'plugins::content-manager.explorer.publish','application::actividades.actividades','{}','[]',1,'2021-07-06 20:54:01','2021-07-06 20:54:01');
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
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'content-manager','collection-types','bulkdelete',0,'',1,NULL,NULL),(2,'content-manager','collection-types','bulkdelete',0,'',2,NULL,NULL),(3,'content-manager','collection-types','delete',0,'',2,NULL,NULL),(4,'content-manager','collection-types','find',0,'',1,NULL,NULL),(5,'content-manager','collection-types','delete',0,'',1,NULL,NULL),(6,'content-manager','collection-types','findone',0,'',2,NULL,NULL),(7,'content-manager','collection-types','create',0,'',2,NULL,NULL),(8,'content-manager','collection-types','findone',0,'',1,NULL,NULL),(9,'content-manager','collection-types','create',0,'',1,NULL,NULL),(10,'content-manager','collection-types','find',0,'',2,NULL,NULL),(11,'content-manager','collection-types','previewmanyrelations',0,'',1,NULL,NULL),(12,'content-manager','collection-types','previewmanyrelations',0,'',2,NULL,NULL),(13,'content-manager','collection-types','publish',0,'',1,NULL,NULL),(14,'content-manager','collection-types','publish',0,'',2,NULL,NULL),(15,'content-manager','collection-types','unpublish',0,'',1,NULL,NULL),(16,'content-manager','collection-types','unpublish',0,'',2,NULL,NULL),(17,'content-manager','collection-types','update',0,'',1,NULL,NULL),(18,'content-manager','collection-types','update',0,'',2,NULL,NULL),(19,'content-manager','components','findcomponentconfiguration',0,'',1,NULL,NULL),(20,'content-manager','components','findcomponentconfiguration',0,'',2,NULL,NULL),(21,'content-manager','components','findcomponents',0,'',1,NULL,NULL),(22,'content-manager','components','findcomponents',0,'',2,NULL,NULL),(23,'content-manager','components','updatecomponentconfiguration',0,'',1,NULL,NULL),(24,'content-manager','components','updatecomponentconfiguration',0,'',2,NULL,NULL),(25,'content-manager','content-types','findcontenttypeconfiguration',0,'',1,NULL,NULL),(26,'content-manager','content-types','findcontenttypeconfiguration',0,'',2,NULL,NULL),(27,'content-manager','content-types','findcontenttypes',0,'',1,NULL,NULL),(28,'content-manager','content-types','findcontenttypes',0,'',2,NULL,NULL),(29,'content-manager','content-types','findcontenttypessettings',0,'',1,NULL,NULL),(30,'content-manager','content-types','findcontenttypessettings',0,'',2,NULL,NULL),(31,'content-manager','content-types','updatecontenttypeconfiguration',0,'',1,NULL,NULL),(32,'content-manager','content-types','updatecontenttypeconfiguration',0,'',2,NULL,NULL),(33,'content-manager','relations','find',0,'',1,NULL,NULL),(34,'content-manager','relations','find',0,'',2,NULL,NULL),(35,'content-manager','single-types','createorupdate',0,'',1,NULL,NULL),(36,'content-manager','single-types','createorupdate',0,'',2,NULL,NULL),(37,'content-manager','single-types','delete',0,'',1,NULL,NULL),(38,'content-manager','single-types','delete',0,'',2,NULL,NULL),(39,'content-manager','single-types','find',0,'',1,NULL,NULL),(40,'content-manager','single-types','find',0,'',2,NULL,NULL),(41,'content-manager','single-types','publish',0,'',1,NULL,NULL),(42,'content-manager','single-types','publish',0,'',2,NULL,NULL),(43,'content-manager','single-types','unpublish',0,'',1,NULL,NULL),(44,'content-manager','single-types','unpublish',0,'',2,NULL,NULL),(45,'content-manager','uid','checkuidavailability',0,'',1,NULL,NULL),(46,'content-manager','uid','checkuidavailability',0,'',2,NULL,NULL),(47,'content-manager','uid','generateuid',0,'',1,NULL,NULL),(48,'content-manager','uid','generateuid',0,'',2,NULL,NULL),(49,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),(50,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),(51,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),(52,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),(53,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),(54,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),(55,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),(56,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),(57,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),(58,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),(59,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),(60,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),(61,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),(62,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),(63,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),(64,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),(65,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),(66,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(67,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(68,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(69,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(70,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(71,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(72,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(73,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(74,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(75,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(76,'email','email','getsettings',0,'',1,NULL,NULL),(77,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(78,'email','email','getsettings',0,'',2,NULL,NULL),(79,'email','email','send',0,'',1,NULL,NULL),(80,'email','email','send',0,'',2,NULL,NULL),(81,'email','email','test',0,'',1,NULL,NULL),(82,'email','email','test',0,'',2,NULL,NULL),(83,'i18n','content-types','getnonlocalizedattributes',0,'',1,NULL,NULL),(84,'i18n','content-types','getnonlocalizedattributes',0,'',2,NULL,NULL),(85,'i18n','iso-locales','listisolocales',0,'',1,NULL,NULL),(86,'i18n','iso-locales','listisolocales',0,'',2,NULL,NULL),(87,'i18n','locales','createlocale',0,'',1,NULL,NULL),(88,'i18n','locales','createlocale',0,'',2,NULL,NULL),(89,'i18n','locales','deletelocale',0,'',1,NULL,NULL),(90,'i18n','locales','deletelocale',0,'',2,NULL,NULL),(91,'i18n','locales','listlocales',0,'',1,NULL,NULL),(92,'i18n','locales','listlocales',0,'',2,NULL,NULL),(93,'i18n','locales','updatelocale',0,'',1,NULL,NULL),(94,'i18n','locales','updatelocale',0,'',2,NULL,NULL),(95,'upload','upload','count',0,'',1,NULL,NULL),(96,'upload','upload','count',0,'',2,NULL,NULL),(97,'upload','upload','destroy',0,'',1,NULL,NULL),(98,'upload','upload','destroy',0,'',2,NULL,NULL),(99,'upload','upload','find',0,'',1,NULL,NULL),(100,'upload','upload','find',0,'',2,NULL,NULL),(101,'upload','upload','findone',0,'',1,NULL,NULL),(102,'upload','upload','findone',0,'',2,NULL,NULL),(103,'upload','upload','getsettings',0,'',1,NULL,NULL),(104,'upload','upload','getsettings',0,'',2,NULL,NULL),(105,'upload','upload','search',0,'',1,NULL,NULL),(106,'upload','upload','search',0,'',2,NULL,NULL),(107,'upload','upload','updatesettings',0,'',1,NULL,NULL),(108,'upload','upload','updatesettings',0,'',2,NULL,NULL),(109,'upload','upload','upload',0,'',1,NULL,NULL),(110,'upload','upload','upload',0,'',2,NULL,NULL),(111,'users-permissions','auth','callback',0,'',1,NULL,NULL),(112,'users-permissions','auth','callback',1,'',2,NULL,NULL),(113,'users-permissions','auth','connect',1,'',2,NULL,NULL),(114,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(115,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(116,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),(117,'users-permissions','auth','connect',1,'',1,NULL,NULL),(118,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(119,'users-permissions','auth','register',0,'',1,NULL,NULL),(120,'users-permissions','auth','register',1,'',2,NULL,NULL),(121,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),(122,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(123,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(124,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(125,'users-permissions','user','count',0,'',1,NULL,NULL),(126,'users-permissions','user','count',0,'',2,NULL,NULL),(127,'users-permissions','user','create',0,'',1,NULL,NULL),(128,'users-permissions','user','create',0,'',2,NULL,NULL),(129,'users-permissions','user','destroy',0,'',1,NULL,NULL),(130,'users-permissions','user','destroy',0,'',2,NULL,NULL),(131,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(132,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(133,'users-permissions','user','find',0,'',1,NULL,NULL),(134,'users-permissions','user','find',0,'',2,NULL,NULL),(135,'users-permissions','user','findone',1,'',1,NULL,NULL),(136,'users-permissions','user','findone',0,'',2,NULL,NULL),(137,'users-permissions','user','me',1,'',1,NULL,NULL),(138,'users-permissions','user','me',0,'',2,NULL,NULL),(139,'users-permissions','user','update',0,'',1,NULL,NULL),(140,'users-permissions','user','update',0,'',2,NULL,NULL),(141,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(142,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(143,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(144,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(145,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(146,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(147,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(148,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(149,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(150,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(151,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(152,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(153,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(154,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(155,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(156,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(157,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),(158,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),(159,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(160,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(161,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(162,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(163,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(164,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(165,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(166,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(167,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(168,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(169,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(170,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(171,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(172,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),(173,'documentation','documentation','deletedoc',0,'',1,NULL,NULL),(174,'documentation','documentation','deletedoc',0,'',2,NULL,NULL),(175,'documentation','documentation','getinfos',0,'',1,NULL,NULL),(176,'documentation','documentation','getinfos',0,'',2,NULL,NULL),(177,'documentation','documentation','index',0,'',1,NULL,NULL),(178,'documentation','documentation','index',0,'',2,NULL,NULL),(179,'documentation','documentation','login',0,'',1,NULL,NULL),(180,'documentation','documentation','login',0,'',2,NULL,NULL),(181,'documentation','documentation','loginview',0,'',1,NULL,NULL),(182,'documentation','documentation','loginview',0,'',2,NULL,NULL),(183,'documentation','documentation','regeneratedoc',0,'',1,NULL,NULL),(184,'documentation','documentation','regeneratedoc',0,'',2,NULL,NULL),(185,'documentation','documentation','updatesettings',0,'',1,NULL,NULL),(186,'documentation','documentation','updatesettings',0,'',2,NULL,NULL),(199,'application','campo','count',0,'',1,NULL,NULL),(200,'application','campo','count',0,'',2,NULL,NULL),(201,'application','campo','create',0,'',1,NULL,NULL),(202,'application','campo','create',0,'',2,NULL,NULL),(203,'application','campo','delete',0,'',1,NULL,NULL),(204,'application','campo','delete',0,'',2,NULL,NULL),(205,'application','campo','find',1,'',1,NULL,NULL),(206,'application','campo','find',0,'',2,NULL,NULL),(207,'application','campo','findone',1,'',1,NULL,NULL),(208,'application','campo','findone',0,'',2,NULL,NULL),(209,'application','campo','update',0,'',1,NULL,NULL),(210,'application','campo','update',0,'',2,NULL,NULL),(211,'application','campo','find',1,'',3,NULL,NULL),(212,'application','campo','findone',1,'',3,NULL,NULL),(213,'application','campo','count',0,'',3,NULL,NULL),(214,'application','campo','create',0,'',3,NULL,NULL),(215,'application','campo','update',0,'',3,NULL,NULL),(216,'application','campo','delete',0,'',3,NULL,NULL),(217,'content-manager','collection-types','find',0,'',3,NULL,NULL),(218,'content-manager','collection-types','findone',0,'',3,NULL,NULL),(219,'content-manager','collection-types','create',0,'',3,NULL,NULL),(220,'content-manager','collection-types','update',0,'',3,NULL,NULL),(221,'content-manager','collection-types','delete',0,'',3,NULL,NULL),(222,'content-manager','collection-types','publish',0,'',3,NULL,NULL),(223,'content-manager','collection-types','unpublish',0,'',3,NULL,NULL),(224,'content-manager','collection-types','bulkdelete',0,'',3,NULL,NULL),(225,'content-manager','collection-types','previewmanyrelations',0,'',3,NULL,NULL),(226,'content-manager','components','findcomponents',0,'',3,NULL,NULL),(227,'content-manager','components','findcomponentconfiguration',0,'',3,NULL,NULL),(228,'content-manager','components','updatecomponentconfiguration',0,'',3,NULL,NULL),(229,'content-manager','content-types','findcontenttypes',0,'',3,NULL,NULL),(230,'content-manager','content-types','findcontenttypessettings',0,'',3,NULL,NULL),(231,'content-manager','content-types','findcontenttypeconfiguration',0,'',3,NULL,NULL),(232,'content-manager','content-types','updatecontenttypeconfiguration',0,'',3,NULL,NULL),(233,'content-manager','relations','find',0,'',3,NULL,NULL),(234,'content-manager','single-types','find',0,'',3,NULL,NULL),(235,'content-manager','single-types','createorupdate',0,'',3,NULL,NULL),(236,'content-manager','single-types','delete',0,'',3,NULL,NULL),(237,'content-manager','single-types','publish',0,'',3,NULL,NULL),(238,'content-manager','single-types','unpublish',0,'',3,NULL,NULL),(239,'content-manager','uid','generateuid',0,'',3,NULL,NULL),(240,'content-manager','uid','checkuidavailability',0,'',3,NULL,NULL),(241,'content-type-builder','builder','getreservednames',0,'',3,NULL,NULL),(242,'content-type-builder','componentcategories','editcategory',0,'',3,NULL,NULL),(243,'content-type-builder','componentcategories','deletecategory',0,'',3,NULL,NULL),(244,'content-type-builder','components','getcomponents',0,'',3,NULL,NULL),(245,'content-type-builder','components','getcomponent',0,'',3,NULL,NULL),(246,'content-type-builder','components','createcomponent',0,'',3,NULL,NULL),(247,'content-type-builder','components','updatecomponent',0,'',3,NULL,NULL),(248,'content-type-builder','components','deletecomponent',0,'',3,NULL,NULL),(249,'content-type-builder','connections','getconnections',0,'',3,NULL,NULL),(250,'content-type-builder','contenttypes','getcontenttypes',0,'',3,NULL,NULL),(251,'content-type-builder','contenttypes','getcontenttype',0,'',3,NULL,NULL),(252,'content-type-builder','contenttypes','createcontenttype',0,'',3,NULL,NULL),(253,'content-type-builder','contenttypes','updatecontenttype',0,'',3,NULL,NULL),(254,'content-type-builder','contenttypes','deletecontenttype',0,'',3,NULL,NULL),(255,'documentation','documentation','getinfos',0,'',3,NULL,NULL),(256,'documentation','documentation','index',0,'',3,NULL,NULL),(257,'documentation','documentation','loginview',0,'',3,NULL,NULL),(258,'documentation','documentation','login',0,'',3,NULL,NULL),(259,'documentation','documentation','regeneratedoc',0,'',3,NULL,NULL),(260,'documentation','documentation','deletedoc',0,'',3,NULL,NULL),(261,'documentation','documentation','updatesettings',0,'',3,NULL,NULL),(262,'email','email','send',0,'',3,NULL,NULL),(263,'email','email','test',0,'',3,NULL,NULL),(264,'email','email','getsettings',0,'',3,NULL,NULL),(265,'i18n','content-types','getnonlocalizedattributes',0,'',3,NULL,NULL),(266,'i18n','iso-locales','listisolocales',0,'',3,NULL,NULL),(267,'i18n','locales','listlocales',0,'',3,NULL,NULL),(268,'i18n','locales','createlocale',0,'',3,NULL,NULL),(269,'i18n','locales','updatelocale',0,'',3,NULL,NULL),(270,'i18n','locales','deletelocale',0,'',3,NULL,NULL),(271,'upload','upload','find',0,'',3,NULL,NULL),(272,'upload','upload','findone',0,'',3,NULL,NULL),(273,'upload','upload','count',0,'',3,NULL,NULL),(274,'upload','upload','destroy',0,'',3,NULL,NULL),(275,'upload','upload','updatesettings',0,'',3,NULL,NULL),(276,'upload','upload','getsettings',0,'',3,NULL,NULL),(277,'upload','upload','upload',0,'',3,NULL,NULL),(278,'upload','upload','search',0,'',3,NULL,NULL),(279,'users-permissions','auth','callback',0,'',3,NULL,NULL),(280,'users-permissions','auth','resetpassword',0,'',3,NULL,NULL),(281,'users-permissions','auth','connect',0,'',3,NULL,NULL),(282,'users-permissions','auth','forgotpassword',0,'',3,NULL,NULL),(283,'users-permissions','auth','register',0,'',3,NULL,NULL),(284,'users-permissions','auth','emailconfirmation',0,'',3,NULL,NULL),(285,'users-permissions','auth','sendemailconfirmation',0,'',3,NULL,NULL),(286,'users-permissions','user','create',0,'',3,NULL,NULL),(287,'users-permissions','user','update',0,'',3,NULL,NULL),(288,'users-permissions','user','find',0,'',3,NULL,NULL),(289,'users-permissions','user','findone',1,'',3,NULL,NULL),(290,'users-permissions','user','count',0,'',3,NULL,NULL),(291,'users-permissions','user','destroy',0,'',3,NULL,NULL),(292,'users-permissions','user','destroyall',0,'',3,NULL,NULL),(293,'users-permissions','user','me',1,'',3,NULL,NULL),(294,'users-permissions','userspermissions','createrole',0,'',3,NULL,NULL),(295,'users-permissions','userspermissions','deleterole',0,'',3,NULL,NULL),(296,'users-permissions','userspermissions','getpermissions',0,'',3,NULL,NULL),(297,'users-permissions','userspermissions','getpolicies',0,'',3,NULL,NULL),(298,'users-permissions','userspermissions','getrole',0,'',3,NULL,NULL),(299,'users-permissions','userspermissions','getroles',0,'',3,NULL,NULL),(300,'users-permissions','userspermissions','getroutes',0,'',3,NULL,NULL),(301,'users-permissions','userspermissions','index',0,'',3,NULL,NULL),(302,'users-permissions','userspermissions','searchusers',0,'',3,NULL,NULL),(303,'users-permissions','userspermissions','updaterole',0,'',3,NULL,NULL),(304,'users-permissions','userspermissions','getemailtemplate',0,'',3,NULL,NULL),(305,'users-permissions','userspermissions','updateemailtemplate',0,'',3,NULL,NULL),(306,'users-permissions','userspermissions','getadvancedsettings',0,'',3,NULL,NULL),(307,'users-permissions','userspermissions','updateadvancedsettings',0,'',3,NULL,NULL),(308,'users-permissions','userspermissions','getproviders',0,'',3,NULL,NULL),(309,'users-permissions','userspermissions','updateproviders',0,'',3,NULL,NULL),(328,'application','actividades','count',0,'',3,NULL,NULL),(329,'application','actividades','count',0,'',2,NULL,NULL),(330,'application','actividades','count',0,'',1,NULL,NULL),(331,'application','actividades','create',0,'',1,NULL,NULL),(332,'application','actividades','create',0,'',2,NULL,NULL),(333,'application','actividades','create',0,'',3,NULL,NULL),(334,'application','actividades','delete',0,'',1,NULL,NULL),(335,'application','actividades','delete',0,'',2,NULL,NULL),(336,'application','actividades','delete',0,'',3,NULL,NULL),(337,'application','actividades','find',1,'',1,NULL,NULL),(338,'application','actividades','find',0,'',2,NULL,NULL),(339,'application','actividades','find',1,'',3,NULL,NULL),(340,'application','actividades','findone',1,'',1,NULL,NULL),(341,'application','actividades','findone',0,'',2,NULL,NULL),(342,'application','actividades','findone',1,'',3,NULL,NULL),(343,'application','actividades','update',0,'',1,NULL,NULL),(344,'application','actividades','update',0,'',2,NULL,NULL),(345,'application','actividades','update',0,'',3,NULL,NULL),(346,'application','registro-actividad','count',0,'',3,NULL,NULL),(347,'application','registro-actividad','count',0,'',2,NULL,NULL),(348,'application','registro-actividad','count',0,'',1,NULL,NULL),(349,'application','registro-actividad','create',1,'',1,NULL,NULL),(350,'application','registro-actividad','create',0,'',2,NULL,NULL),(351,'application','registro-actividad','create',0,'',3,NULL,NULL),(352,'application','registro-actividad','delete',0,'',1,NULL,NULL),(353,'application','registro-actividad','delete',0,'',2,NULL,NULL),(354,'application','registro-actividad','delete',0,'',3,NULL,NULL),(355,'application','registro-actividad','find',1,'',1,NULL,NULL),(356,'application','registro-actividad','find',0,'',2,NULL,NULL),(357,'application','registro-actividad','find',1,'',3,NULL,NULL),(358,'application','registro-actividad','findone',1,'',1,NULL,NULL),(359,'application','registro-actividad','findone',0,'',2,NULL,NULL),(360,'application','registro-actividad','findone',1,'',3,NULL,NULL),(361,'application','registro-actividad','update',0,'',1,NULL,NULL),(362,'application','registro-actividad','update',0,'',2,NULL,NULL),(363,'application','registro-actividad','update',1,'',3,NULL,NULL);
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-06 13:36:37