-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: wordpress
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (2,23,'student','admin@msctutorial05ca-mconno24453953.codeanyapp.com','','73.74.159.155','2019-12-27 21:38:27','2019-12-27 21:38:27','I like this Red Squirrel picture. Where was it taken?',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:71.0) Gecko/20100101 Firefox/71.0','comment',0,1),(3,21,'student','admin@msctutorial05ca-mconno24453953.codeanyapp.com','','73.74.159.155','2019-12-27 21:39:20','2019-12-27 21:39:20','The bunny photo is nice, but the dragonfly image is blurry. Can you fix that?',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:71.0) Gecko/20100101 Firefox/71.0','comment',0,1),(4,21,'student','admin@msctutorial05ca-mconno24453953.codeanyapp.com','','73.74.159.155','2019-12-27 21:39:31','2019-12-27 21:39:31','Thanks I can try.',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:71.0) Gecko/20100101 Firefox/71.0','comment',0,1),(5,19,'student','admin@msctutorial05ca-mconno24453953.codeanyapp.com','','73.74.159.155','2019-12-27 21:40:03','2019-12-27 21:40:03','Nice squirrel photos.',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:71.0) Gecko/20100101 Firefox/71.0','comment',0,1),(6,23,'Bill','bv@x.com','','73.74.159.155','2019-12-27 21:41:33','2019-12-27 21:41:33','So where was this red squirrel photo taken?',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36','comment',0,0),(7,23,'Michael Chase','mchase2@cdm.depaul.edu','','73.74.159.155','2019-12-27 21:41:56','2019-12-27 21:41:56','I took it in Maine in 2018.',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36','comment',0,0),(8,10,'','','','73.74.159.155','2019-12-27 21:43:15','2019-12-27 21:43:15','The red squirrel is my fave photo. Do you have any more squirrel photos to share?',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36','comment',0,0),(9,13,'','','','73.74.159.155','2019-12-27 21:43:30','2019-12-27 21:43:30','Nice bunny image.',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36','comment',0,0),(10,16,'','','','73.74.159.155','2019-12-27 21:43:54','2019-12-27 21:43:54','Are those white pelicans? Where was this taken?',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36','comment',0,0),(11,16,'','','','73.74.159.155','2019-12-27 21:44:19','2019-12-27 21:44:19','Is that a Rose Crested Grosbeak?',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36','comment',0,0),(12,10,'','','','73.74.159.155','2019-12-27 21:44:39','2019-12-27 21:44:39','Where do I go to see red squirrels?',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_games_systems`
--

DROP TABLE IF EXISTS `wp_games_systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_games_systems` (
  `gs_id` int(11) NOT NULL AUTO_INCREMENT,
  `gs_name` varchar(255) NOT NULL,
  `gs_condition` varchar(100) NOT NULL,
  `gs_price` float NOT NULL,
  `gs_date_entered` date NOT NULL,
  PRIMARY KEY (`gs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_games_systems`
--

LOCK TABLES `wp_games_systems` WRITE;
/*!40000 ALTER TABLE `wp_games_systems` DISABLE KEYS */;
INSERT INTO `wp_games_systems` VALUES (1,'Microsoft XBOX','NEW',35,'2013-07-16'),(2,'Nintendo 3DSXL','USED',25,'2013-07-14'),(3,'Nintendo WiiU','LIKE NEW',40,'2013-07-12'),(4,'Sony Playstation','NEW',35,'2013-07-04');
/*!40000 ALTER TABLE `wp_games_systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','https://msctutorial05ca-mconno24453953.codeanyapp.com','yes'),(2,'home','https://msctutorial05ca-mconno24453953.codeanyapp.com','yes'),(3,'blogname','Squirrel WP Site','yes'),(4,'blogdescription','Squirrels on WP CMS','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','admin@msctutorial05ca-mconno24453953.codeanyapp.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','closed','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','1','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','','yes'),(29,'rewrite_rules','','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','a:5:{i:0;s:117:\"/home/cabox/workspace/wp-content/plugins/div_no_grid_games_systems_reader/it320_div_no_grid_games_systems_reader .php\";i:2;s:60:\"/home/cabox/workspace/wp-content/plugins/akismet/akismet.php\";i:3;s:91:\"/home/cabox/workspace/wp-content/plugins/games-systems-reader/it320_game_systems_reader.php\";i:4;s:96:\"/home/cabox/workspace/wp-content/plugins/games-systems-reader/it320_div_games_systems_reader.php\";i:5;s:77:\"/home/cabox/workspace/wp-content/plugins/posts-tbl-reader/wp-posts-reader.php\";}','no'),(44,'comment_registration','','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','48748','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','1','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','posts','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(81,'uninstall_plugins','a:0:{}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','0','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'wp_page_for_privacy_policy','3','yes'),(92,'show_comments_cookies_opt_in','1','yes'),(93,'admin_email_lifespan','1609333754','yes'),(94,'initial_db_version','45805','yes'),(95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(96,'fresh_site','0','yes'),(97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(102,'sidebars_widgets','a:15:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"blog-sidebar\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:13:\"right-sidebar\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:12:\"left-sidebar\";a:0:{}s:6:\"banner\";a:0:{}s:5:\"ctop1\";a:0:{}s:5:\"ctop2\";a:0:{}s:5:\"ctop3\";a:0:{}s:5:\"ctop4\";a:0:{}s:8:\"cbottom1\";a:0:{}s:8:\"cbottom2\";a:0:{}s:8:\"cbottom3\";a:0:{}s:8:\"cbottom4\";a:0:{}s:11:\"breadcrumbs\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(103,'cron','a:7:{i:1602651083;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1602654681;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1602697881;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602698528;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602700023;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602940079;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),(104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'recovery_keys','a:0:{}','yes'),(114,'theme_mods_twentytwenty','a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"mobile\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1595605791;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes'),(126,'siteground_optimizer_default_enable_cache','0','no'),(127,'siteground_optimizer_default_autoflush_cache','0','no'),(128,'siteground_optimizer_supercacher_permissions','1','no'),(129,'sg_cachepress','a:3:{s:12:\"enable_cache\";i:0;s:15:\"autoflush_cache\";i:1;s:16:\"enable_memcached\";i:0;}','yes'),(130,'siteground_optimizer_enable_cache','1','yes'),(131,'siteground_optimizer_autoflush_cache','1','yes'),(132,'siteground_optimizer_enable_memcached','0','yes'),(133,'siteground_optimizer_show_notice','0','yes'),(134,'siteground_optimizer_is_nginx','0','yes'),(135,'siteground_optimizer_checked_nginx','0','yes'),(136,'siteground_optimizer_first_run','0','yes'),(137,'siteground_optimizer_last_fail','0','yes'),(138,'siteground_optimizer_ssl_enabled','0','yes'),(139,'siteground_optimizer_optimize_html','0','yes'),(140,'siteground_optimizer_optimize_javascript','0','yes'),(141,'siteground_optimizer_optimize_javascript_async','0','yes'),(142,'siteground_optimizer_optimize_css','0','yes'),(143,'siteground_optimizer_combine_css','0','yes'),(144,'siteground_optimizer_remove_query_strings','0','yes'),(145,'siteground_optimizer_disable_emojis','0','yes'),(146,'siteground_optimizer_optimize_images','0','yes'),(148,'siteground_optimizer_version','5.3.10','yes'),(149,'siteground_optimizer_update_timestamp','1577037090','yes'),(150,'siteground_optimizer_phpcompat_status','1','yes'),(151,'siteground_optimizer_phpcompat_progress','0','yes'),(152,'siteground_optimizer_phpcompat_is_compatible','0','yes'),(153,'siteground_optimizer_phpcompat_result','a:0:{}','yes'),(154,'siteground_optimizer_image_optimization_completed','1','no'),(155,'siteground_optimizer_enable_gzip_compression','1','yes'),(156,'siteground_optimizer_enable_browser_caching','1','yes'),(157,'siteground_optimizer_lazyload_mobile','1','yes'),(158,'siteground_optimizer_async_javascript_exclude','a:2:{i:0;s:11:\"jquery-core\";i:1;s:14:\"jquery-migrate\";}','yes'),(294,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:2:{i:0;i:2;i:1;i:3;}}','yes'),(619,'recently_activated','a:0:{}','yes'),(665,'ai1wm_updater','a:0:{}','yes'),(669,'jetpack_active_modules','a:0:{}','yes'),(688,'siteground_optimizer_memcache_notice','1','yes'),(735,'WPLANG','','yes'),(736,'new_admin_email','admin@msctutorial05ca-mconno24453953.codeanyapp.com','yes'),(758,'category_children','a:0:{}','yes'),(817,'db_upgraded','','yes'),(910,'current_theme','Camer','yes'),(911,'theme_mods_camer','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:18:\"custom_css_post_id\";i:-1;}','yes'),(912,'theme_switched','','yes'),(913,'widget_camer-recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(978,'disallowed_keys','','no'),(979,'comment_previously_approved','1','yes'),(980,'auto_plugin_theme_update_emails','a:0:{}','no'),(981,'finished_updating_comment_type','1','yes'),(984,'can_compress_scripts','0','no'),(987,'auto_update_plugins','a:1:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";}','no'),(1056,'active_plugins','a:3:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1;s:38:\"it320-posts-reader/wp-posts-reader.php\";i:2;s:41:\"wp-comments-reader/wp-comments_reader.php\";}','yes'),(1057,'ai1wm_secret_key','m4aEZ8ACXJAF','yes'),(1058,'ai1wm_backups_labels','a:0:{}','yes'),(1059,'ai1wm_sites_links','a:0:{}','yes'),(1060,'nonce_key','os[0RH<,UCL#~YX6UsCh)2{4fk)k[t3cNl>rd(/kBAj.x}+!L^44[NX]8^[Dgw]L','no'),(1061,'nonce_salt','gE{Dm%mg7:A.>9L h$pc (8:Y>F$lSmSa1l:z#Lh}Z/83#<:!i/fVq%2)sfSi1_H','no'),(1063,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1602641905;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}','no'),(1065,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1602647131;s:7:\"checked\";a:3:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.28\";s:41:\"wp-comments-reader/wp-comments_reader.php\";s:3:\"1.2\";s:38:\"it320-posts-reader/wp-posts-reader.php\";s:3:\"5.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.28\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.28.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2246309\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2246309\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2246309\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2246309\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),(1068,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1602641905;s:7:\"checked\";a:5:{s:5:\"camer\";s:5:\"1.0.5\";s:6:\"sporty\";s:5:\"1.8.8\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:5:{s:5:\"camer\";a:6:{s:5:\"theme\";s:5:\"camer\";s:11:\"new_version\";s:5:\"1.0.5\";s:3:\"url\";s:35:\"https://wordpress.org/themes/camer/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/camer.1.0.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:6:\"sporty\";a:6:{s:5:\"theme\";s:6:\"sporty\";s:11:\"new_version\";s:5:\"1.8.8\";s:3:\"url\";s:36:\"https://wordpress.org/themes/sporty/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/theme/sporty.1.8.8.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}','no'),(1069,'ai1wm_status','a:3:{s:4:\"type\";s:4:\"done\";s:5:\"title\";s:41:\"Your site has been imported successfully!\";s:7:\"message\";s:406:\"Â» <a class=\"ai1wm-no-underline\" href=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-admin/options-permalink.php#submit\" target=\"_blank\">Save permalinks structure</a>. (opens a new window)<br />Â» <a class=\"ai1wm-no-underline\" href=\"https://wordpress.org/support/view/plugin-reviews/all-in-one-wp-migration?rate=5#postform\" target=\"_blank\">Optionally, review the plugin</a>. (opens a new window)\";}','yes'),(1070,'template','camer','yes'),(1071,'stylesheet','camer','yes'),(1072,'_site_transient_timeout_php_check_4706fbaeddfbccd4cd3b41b2eead5fda','1603047512','no'),(1073,'_site_transient_php_check_4706fbaeddfbccd4cd3b41b2eead5fda','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no'),(1074,'_transient_health-check-site-status-result','{\"good\":\"12\",\"recommended\":\"8\",\"critical\":\"0\"}','yes'),(1075,'secure_auth_key','[9].;bx>sSC+^SBWh5`e[t>iZXIy4S~w^a{1=ykr!ZM6Ys?+slMnmyD@hw9]d[K<','no'),(1076,'secure_auth_salt','+HN[f%%tECt5z$3T&QC1*z<g%xs$]0s6n5TOC$iuh0e,xg+>wE0K$=D>/?<>@o#R','no'),(1077,'logged_in_key','RR,~*4g+&M;8OqB`G=as5f|Esj.P;&C~kD|8+{LM$`/4&De!)a*s?j(.3m2g@Cm5','no'),(1078,'logged_in_salt','u=0xj=SkM !3_k.2-JFFMHl$KF|IQr1#DWMWN@JvGA$17)+9.65g>X b*F72dWd)','no'),(1079,'_site_transient_timeout_browser_d60fdd76ceb7e119a305c04400d74a74','1603047564','no'),(1080,'_site_transient_browser_d60fdd76ceb7e119a305c04400d74a74','a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"81.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),(1117,'_site_transient_timeout_theme_roots','1602643705','no'),(1118,'_site_transient_theme_roots','a:5:{s:5:\"camer\";s:7:\"/themes\";s:6:\"sporty\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}','no'),(1119,'_site_transient_timeout_community-events-2d17a31e3ab572a6a31aa3cdc2a356a8','1602685128','no'),(1120,'_site_transient_community-events-2d17a31e3ab572a6a31aa3cdc2a356a8','a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:11:\"73.45.118.0\";}s:6:\"events\";a:7:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:77:\"Discussion: Introduction to Contributing to the WordPress Open Source Project\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/273834007/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2020-10-13 16:00:00\";s:8:\"end_date\";s:19:\"2020-10-13 17:00:00\";s:20:\"start_unix_timestamp\";i:1602630000;s:18:\"end_unix_timestamp\";i:1602633600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:22:\"WordCamp Italia Online\";s:3:\"url\";s:33:\"https://2020.italia.wordcamp.org/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-10-16 00:00:00\";s:8:\"end_date\";s:19:\"2020-10-17 00:00:00\";s:20:\"start_unix_timestamp\";i:1602799200;s:18:\"end_unix_timestamp\";i:1602885600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"IT\";s:8:\"latitude\";d:41.87194;s:9:\"longitude\";d:12.56738;}}i:2;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:42:\"AMA: Gutenberg Blocks with Michelle Schulp\";s:3:\"url\";s:65:\"https://www.meetup.com/WordPress-Naperville/events/vzstwrybcnbbc/\";s:6:\"meetup\";s:20:\"WordPress Naperville\";s:10:\"meetup_url\";s:44:\"https://www.meetup.com/WordPress-Naperville/\";s:4:\"date\";s:19:\"2020-10-20 18:30:00\";s:8:\"end_date\";s:19:\"2020-10-20 20:00:00\";s:20:\"start_unix_timestamp\";i:1603236600;s:18:\"end_unix_timestamp\";i:1603242000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:41.790000915527;s:9:\"longitude\";d:-88.169998168945;}}i:3;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:3:\"TBD\";s:3:\"url\";s:65:\"https://www.meetup.com/WordPress-Naperville/events/vzstwrybcpbwb/\";s:6:\"meetup\";s:20:\"WordPress Naperville\";s:10:\"meetup_url\";s:44:\"https://www.meetup.com/WordPress-Naperville/\";s:4:\"date\";s:19:\"2020-11-17 18:30:00\";s:8:\"end_date\";s:19:\"2020-11-17 20:00:00\";s:20:\"start_unix_timestamp\";i:1605659400;s:18:\"end_unix_timestamp\";i:1605664800;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:41.790000915527;s:9:\"longitude\";d:-88.169998168945;}}i:4;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:3:\"TBD\";s:3:\"url\";s:65:\"https://www.meetup.com/WordPress-Naperville/events/vzstwrybcqbtb/\";s:6:\"meetup\";s:20:\"WordPress Naperville\";s:10:\"meetup_url\";s:44:\"https://www.meetup.com/WordPress-Naperville/\";s:4:\"date\";s:19:\"2020-12-15 18:30:00\";s:8:\"end_date\";s:19:\"2020-12-15 20:00:00\";s:20:\"start_unix_timestamp\";i:1608078600;s:18:\"end_unix_timestamp\";i:1608084000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:41.790000915527;s:9:\"longitude\";d:-88.169998168945;}}i:5;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:3:\"TBD\";s:3:\"url\";s:65:\"https://www.meetup.com/WordPress-Naperville/events/vzstwrycccbzb/\";s:6:\"meetup\";s:20:\"WordPress Naperville\";s:10:\"meetup_url\";s:44:\"https://www.meetup.com/WordPress-Naperville/\";s:4:\"date\";s:19:\"2021-01-19 18:30:00\";s:8:\"end_date\";s:19:\"2021-01-19 20:00:00\";s:20:\"start_unix_timestamp\";i:1611102600;s:18:\"end_unix_timestamp\";i:1611108000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:41.790000915527;s:9:\"longitude\";d:-88.169998168945;}}i:6;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:3:\"TBD\";s:3:\"url\";s:65:\"https://www.meetup.com/WordPress-Naperville/events/vzstwryccdbvb/\";s:6:\"meetup\";s:20:\"WordPress Naperville\";s:10:\"meetup_url\";s:44:\"https://www.meetup.com/WordPress-Naperville/\";s:4:\"date\";s:19:\"2021-02-16 18:30:00\";s:8:\"end_date\";s:19:\"2021-02-16 20:00:00\";s:20:\"start_unix_timestamp\";i:1613521800;s:18:\"end_unix_timestamp\";i:1613527200;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:41.790000915527;s:9:\"longitude\";d:-88.169998168945;}}}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_person`
--

DROP TABLE IF EXISTS `wp_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_person` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Age` int(11) NOT NULL,
  `EyeColor` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_person`
--

LOCK TABLES `wp_person` WRITE;
/*!40000 ALTER TABLE `wp_person` DISABLE KEYS */;
INSERT INTO `wp_person` VALUES (1,'Michael S Connolly',52,'Blue'),(2,'Ellen Connolly',52,'Brown'),(3,'Michael C Connolly',23,'Brown'),(4,'Parker Connolly',22,'Brown');
/*!40000 ALTER TABLE `wp_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(5,6,'_wp_attached_file','2019/12/BlackSquirrel001.png'),(6,6,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:623;s:6:\"height\";i:520;s:4:\"file\";s:28:\"2019/12/BlackSquirrel001.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"BlackSquirrel001-300x250.png\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"BlackSquirrel001-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(9,8,'_wp_attached_file','2019/12/GraySquirrel001.png'),(10,8,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:511;s:6:\"height\";i:404;s:4:\"file\";s:27:\"2019/12/GraySquirrel001.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"GraySquirrel001-300x237.png\";s:5:\"width\";i:300;s:6:\"height\";i:237;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"GraySquirrel001-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(11,9,'_wp_attached_file','2019/12/RedSquirrel001.png'),(12,9,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:792;s:6:\"height\";i:614;s:4:\"file\";s:26:\"2019/12/RedSquirrel001.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"RedSquirrel001-300x233.png\";s:5:\"width\";i:300;s:6:\"height\";i:233;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"RedSquirrel001-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"RedSquirrel001-768x595.png\";s:5:\"width\";i:768;s:6:\"height\";i:595;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(13,10,'_edit_lock','1602646691:2'),(14,9,'_wp_attachment_image_alt','red squirrel.'),(23,13,'_edit_lock','1577482482:1'),(24,6,'_wp_attachment_image_alt','black squirrel.'),(33,16,'_edit_lock','1602646681:2'),(43,19,'_edit_lock','1577482648:1'),(46,21,'_edit_lock','1577482516:1'),(47,8,'_wp_attachment_image_alt','gray squirrel.'),(50,23,'_edit_lock','1602561404:2'),(62,30,'_wp_attached_file','2019/12/Bunny-Rabbit-02.png'),(63,30,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:182;s:6:\"height\";i:150;s:4:\"file\";s:27:\"2019/12/Bunny-Rabbit-02.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Bunny-Rabbit-02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(64,31,'_wp_attached_file','2019/12/Dragonfly001.png'),(65,31,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:112;s:6:\"height\";i:100;s:4:\"file\";s:24:\"2019/12/Dragonfly001.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(66,32,'_wp_attached_file','2019/12/GrossBeak001.png'),(67,32,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:227;s:6:\"height\";i:150;s:4:\"file\";s:24:\"2019/12/GrossBeak001.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"GrossBeak001-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(68,33,'_wp_attached_file','2019/12/WhitePellicans001.png'),(69,33,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:227;s:6:\"height\";i:150;s:4:\"file\";s:29:\"2019/12/WhitePellicans001.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"WhitePellicans001-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(70,30,'_wp_attachment_image_alt','a bunny.'),(71,32,'_wp_attachment_image_alt','a grossbeak.'),(72,33,'_wp_attachment_image_alt','white pelican.'),(84,31,'_wp_attachment_image_alt','a dragonfly.'),(149,61,'_menu_item_type','post_type'),(150,61,'_menu_item_menu_item_parent','0'),(151,61,'_menu_item_object_id','16'),(152,61,'_menu_item_object','page'),(153,61,'_menu_item_target',''),(154,61,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(155,61,'_menu_item_xfn',''),(156,61,'_menu_item_url',''),(158,62,'_menu_item_type','post_type'),(159,62,'_menu_item_menu_item_parent','0'),(160,62,'_menu_item_object_id','13'),(161,62,'_menu_item_object','page'),(162,62,'_menu_item_target',''),(163,62,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(164,62,'_menu_item_xfn',''),(165,62,'_menu_item_url',''),(167,63,'_menu_item_type','post_type'),(168,63,'_menu_item_menu_item_parent','0'),(169,63,'_menu_item_object_id','10'),(170,63,'_menu_item_object','page'),(171,63,'_menu_item_target',''),(172,63,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(173,63,'_menu_item_xfn',''),(174,63,'_menu_item_url',''),(175,70,'_edit_lock','1602642115:2'),(176,71,'_menu_item_type','post_type'),(177,71,'_menu_item_menu_item_parent','0'),(178,71,'_menu_item_object_id','70'),(179,71,'_menu_item_object','page'),(180,71,'_menu_item_target',''),(181,71,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(182,71,'_menu_item_xfn',''),(183,71,'_menu_item_url','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (6,1,'2019-12-22 18:02:40','2019-12-22 18:02:40','','BlackSquirrel001','','inherit','closed','closed','','blacksquirrel001','','','2019-12-22 18:07:19','2019-12-22 18:07:19','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/BlackSquirrel001.png',0,'attachment','image/png',0),(8,1,'2019-12-22 18:02:42','2019-12-22 18:02:42','','GraySquirrel001','','inherit','closed','closed','','graysquirrel001','','','2019-12-22 18:18:54','2019-12-22 18:18:54','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/GraySquirrel001.png',0,'attachment','image/png',0),(9,1,'2019-12-22 18:02:44','2019-12-22 18:02:44','','RedSquirrel001','','inherit','closed','closed','','redsquirrel001','','','2019-12-22 18:06:44','2019-12-22 18:06:44','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png',0,'attachment','image/png',0),(10,1,'2019-12-22 18:06:54','2019-12-22 18:06:54','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png\" alt=\"red squirrel. \" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcin</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/BlackSquirrel001.png\" alt=\"black squirrel.\" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->','Squirrel Page 1','','publish','open','closed','','page-test-1','','','2019-12-27 21:36:53','2019-12-27 21:36:53','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/?page_id=10',0,'page','',2),(12,1,'2019-12-22 18:06:54','2019-12-22 18:06:54','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png\" alt=\"red squirrel. \" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->','Page Test 1','','inherit','closed','closed','','10-revision-v1','','','2019-12-22 18:06:54','2019-12-22 18:06:54','',10,'https://msctutorial05ca-mconno24453953.codeanyapp.com/2019/12/22/10-revision-v1/',0,'revision','',0),(13,1,'2019-12-22 18:07:22','2019-12-22 18:07:22','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":30,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/Bunny-Rabbit-02.png\" alt=\"a bunny. \" class=\"wp-image-30\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcin</p>\n<!-- /wp:paragraph -->','Bunny Page','','publish','open','closed','','page-test-2','','','2019-12-27 21:37:05','2019-12-27 21:37:05','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/?page_id=13',0,'page','',1),(15,1,'2019-12-22 18:07:22','2019-12-22 18:07:22','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/BlackSquirrel001.png\" alt=\"black squirrel. \" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->','Page Test 2','','inherit','closed','closed','','13-revision-v1','','','2019-12-22 18:07:22','2019-12-22 18:07:22','',13,'https://msctutorial05ca-mconno24453953.codeanyapp.com/2019/12/22/13-revision-v1/',0,'revision','',0),(16,1,'2019-12-22 18:07:59','2019-12-22 18:07:59','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":32,\"width\":561,\"height\":371,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/GrossBeak001.png\" alt=\"a grossbeak. \" class=\"wp-image-32\" width=\"561\" height=\"371\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcin</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":33,\"width\":549,\"height\":363,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/WhitePellicans001.png\" alt=\"white pelican. \" class=\"wp-image-33\" width=\"549\" height=\"363\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:shortcode -->\n[wp_comments_shortcode]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Bird Page','','publish','open','closed','','page-test-3','','','2020-10-13 04:14:24','2020-10-13 04:14:24','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/?page_id=16',0,'page','',2),(18,1,'2019-12-22 18:07:59','2019-12-22 18:07:59','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":7,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/FoxSquirrel001.png\" alt=\"fox squirrel. \" class=\"wp-image-7\"/></figure>\n<!-- /wp:image -->','Page Test 3','','inherit','closed','closed','','16-revision-v1','','','2019-12-22 18:07:59','2019-12-22 18:07:59','',16,'https://msctutorial05ca-mconno24453953.codeanyapp.com/2019/12/22/16-revision-v1/',0,'revision','',0),(19,1,'2019-12-22 18:08:57','2019-12-22 18:08:57','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/BlackSquirrel001.png\" alt=\"black squirrel.\" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/GraySquirrel001.png\" alt=\"gray squirrel.\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png\" alt=\"red squirrel.\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->','Squirrel Post','','publish','open','open','','post-test-1','','','2019-12-27 21:37:25','2019-12-27 21:37:25','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/?p=19',0,'post','',1),(20,1,'2019-12-22 18:08:57','2019-12-22 18:08:57','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/BlackSquirrel001.png\" alt=\"black squirrel.\" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->','Post Test 1','','inherit','closed','closed','','19-revision-v1','','','2019-12-22 18:08:57','2019-12-22 18:08:57','',19,'https://msctutorial05ca-mconno24453953.codeanyapp.com/2019/12/22/19-revision-v1/',0,'revision','',0),(21,1,'2019-12-22 18:09:41','2019-12-22 18:09:41','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":30,\"width\":524,\"height\":432,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/Bunny-Rabbit-02.png\" alt=\"a bunny.\" class=\"wp-image-30\" width=\"524\" height=\"432\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcini.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":31,\"width\":537,\"height\":479,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/Dragonfly001.png\" alt=\"a dragonfly. \" class=\"wp-image-31\" width=\"537\" height=\"479\"/></figure>\n<!-- /wp:image -->','Bunny Post','','publish','open','open','','post-test-2','','','2019-12-27 21:37:37','2019-12-27 21:37:37','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/?p=21',0,'post','',2),(22,1,'2019-12-22 18:09:41','2019-12-22 18:09:41','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/GraySquirrel001.png\" alt=\"gray squirrel\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->','Post Test 2','','inherit','closed','closed','','21-revision-v1','','','2019-12-22 18:09:41','2019-12-22 18:09:41','',21,'https://msctutorial05ca-mconno24453953.codeanyapp.com/2019/12/22/21-revision-v1/',0,'revision','',0),(23,1,'2019-12-22 18:10:19','2019-12-22 18:10:19','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png\" alt=\"red squirrel.\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcini.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->','Red Squirrel Post','','publish','open','open','','post-test-3','','','2019-12-27 21:37:49','2019-12-27 21:37:49','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/?p=23',0,'post','',3),(24,1,'2019-12-22 18:10:19','2019-12-22 18:10:19','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png\" alt=\"red squirrel.\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->','Post Test 3','','inherit','closed','closed','','23-revision-v1','','','2019-12-22 18:10:19','2019-12-22 18:10:19','',23,'https://msctutorial05ca-mconno24453953.codeanyapp.com/2019/12/22/23-revision-v1/',0,'revision','',0),(30,1,'2019-12-27 14:46:36','2019-12-27 14:46:36','','Bunny-Rabbit-02','','inherit','closed','closed','','bunny-rabbit-02','','','2019-12-27 14:48:23','2019-12-27 14:48:23','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/Bunny-Rabbit-02.png',0,'attachment','image/png',0),(31,1,'2019-12-27 14:46:43','2019-12-27 14:46:43','','Dragonfly001','','inherit','closed','closed','','dragonfly001','','','2019-12-27 14:53:06','2019-12-27 14:53:06','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/Dragonfly001.png',0,'attachment','image/png',0),(32,1,'2019-12-27 14:46:47','2019-12-27 14:46:47','','GrossBeak001','','inherit','closed','closed','','grossbeak001','','','2019-12-27 14:49:08','2019-12-27 14:49:08','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/GrossBeak001.png',0,'attachment','image/png',0),(33,1,'2019-12-27 14:46:50','2019-12-27 14:46:50','','WhitePellicans001','','inherit','closed','closed','','whitepellicans001','','','2019-12-27 14:49:41','2019-12-27 14:49:41','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/WhitePellicans001.png',0,'attachment','image/png',0),(34,1,'2019-12-27 14:47:44','2019-12-27 14:47:44','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png\" alt=\"red squirrel. \" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcin</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/BlackSquirrel001.png\" alt=\"black squirrel.\" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->','Squirrel Page 1','','inherit','closed','closed','','10-revision-v1','','','2019-12-27 14:47:44','2019-12-27 14:47:44','',10,'https://msctutorial05ca-mconno24453953.codeanyapp.com/2019/12/27/10-revision-v1/',0,'revision','',0),(35,1,'2019-12-27 14:48:33','2019-12-27 14:48:33','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":30,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/Bunny-Rabbit-02.png\" alt=\"a bunny. \" class=\"wp-image-30\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcin</p>\n<!-- /wp:paragraph -->','Bunny Page','','inherit','closed','closed','','13-revision-v1','','','2019-12-27 14:48:33','2019-12-27 14:48:33','',13,'https://msctutorial05ca-mconno24453953.codeanyapp.com/2019/12/27/13-revision-v1/',0,'revision','',0),(36,1,'2019-12-27 14:49:53','2019-12-27 14:49:53','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":32,\"width\":561,\"height\":371,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/GrossBeak001.png\" alt=\"a grossbeak. \" class=\"wp-image-32\" width=\"561\" height=\"371\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcin</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":33,\"width\":549,\"height\":363,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/WhitePellicans001.png\" alt=\"white pelican. \" class=\"wp-image-33\" width=\"549\" height=\"363\"/></figure>\n<!-- /wp:image -->','Bird Page','','inherit','closed','closed','','16-revision-v1','','','2019-12-27 14:49:53','2019-12-27 14:49:53','',16,'https://msctutorial05ca-mconno24453953.codeanyapp.com/2019/12/27/16-revision-v1/',0,'revision','',0),(37,1,'2019-12-27 14:51:10','2019-12-27 14:51:10','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/BlackSquirrel001.png\" alt=\"black squirrel.\" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/GraySquirrel001.png\" alt=\"gray squirrel.\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png\" alt=\"red squirrel.\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->','Squirrel Post','','inherit','closed','closed','','19-revision-v1','','','2019-12-27 14:51:10','2019-12-27 14:51:10','',19,'https://msctutorial05ca-mconno24453953.codeanyapp.com/2019/12/27/19-revision-v1/',0,'revision','',0),(38,1,'2019-12-27 14:52:42','2019-12-27 14:52:42','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":30,\"width\":524,\"height\":432,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/Bunny-Rabbit-02.png\" alt=\"a bunny.\" class=\"wp-image-30\" width=\"524\" height=\"432\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcini.</p>\n<!-- /wp:paragraph -->','Bunny Post','','inherit','closed','closed','','21-revision-v1','','','2019-12-27 14:52:42','2019-12-27 14:52:42','',21,'https://msctutorial05ca-mconno24453953.codeanyapp.com/2019/12/27/21-revision-v1/',0,'revision','',0),(39,1,'2019-12-27 14:53:15','2019-12-27 14:53:15','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":30,\"width\":524,\"height\":432,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/Bunny-Rabbit-02.png\" alt=\"a bunny.\" class=\"wp-image-30\" width=\"524\" height=\"432\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcini.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":31,\"width\":537,\"height\":479,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/Dragonfly001.png\" alt=\"a dragonfly. \" class=\"wp-image-31\" width=\"537\" height=\"479\"/></figure>\n<!-- /wp:image -->','Bunny Post','','inherit','closed','closed','','21-revision-v1','','','2019-12-27 14:53:15','2019-12-27 14:53:15','',21,'https://msctutorial05ca-mconno24453953.codeanyapp.com/2019/12/27/21-revision-v1/',0,'revision','',0),(40,1,'2019-12-27 14:54:23','2019-12-27 14:54:23','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png\" alt=\"red squirrel.\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcini.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->','Red Squirrel Post','','inherit','closed','closed','','23-revision-v1','','','2019-12-27 14:54:23','2019-12-27 14:54:23','',23,'https://msctutorial05ca-mconno24453953.codeanyapp.com/2019/12/27/23-revision-v1/',0,'revision','',0),(41,1,'2019-12-27 14:54:47','2019-12-27 14:54:47','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/BlackSquirrel001.png\" alt=\"black squirrel.\" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/GraySquirrel001.png\" alt=\"gray squirrel.\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png\" alt=\"red squirrel.\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->','Squirrel Post','','inherit','closed','closed','','19-revision-v1','','','2019-12-27 14:54:47','2019-12-27 14:54:47','',19,'https://msctutorial05ca-mconno24453953.codeanyapp.com/2019/12/27/19-revision-v1/',0,'revision','',0),(61,1,'2020-08-30 15:12:26','2020-08-30 15:12:26',' ','','','publish','closed','closed','','61','','','2020-08-30 15:12:26','2020-08-30 15:12:26','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/?p=61',1,'nav_menu_item','',0),(62,1,'2020-08-30 15:12:26','2020-08-30 15:12:26',' ','','','publish','closed','closed','','62','','','2020-08-30 15:12:26','2020-08-30 15:12:26','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/?p=62',2,'nav_menu_item','',0),(63,1,'2020-08-30 15:12:26','2020-08-30 15:12:26',' ','','','publish','closed','closed','','63','','','2020-08-30 15:12:26','2020-08-30 15:12:26','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/?p=63',3,'nav_menu_item','',0),(64,1,'2020-10-11 18:59:24','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','open','','','','','2020-10-11 18:59:24','0000-00-00 00:00:00','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/?p=64',0,'post','',0),(65,2,'2020-10-11 19:02:49','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','open','','','','','2020-10-11 19:02:49','0000-00-00 00:00:00','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/?p=65',0,'post','',0),(67,2,'2020-10-13 04:13:13','2020-10-13 04:13:13','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":32,\"width\":561,\"height\":371,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/GrossBeak001.png\" alt=\"a grossbeak. \" class=\"wp-image-32\" width=\"561\" height=\"371\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcin</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":33,\"width\":549,\"height\":363,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/WhitePellicans001.png\" alt=\"white pelican. \" class=\"wp-image-33\" width=\"549\" height=\"363\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:latest-comments {\"commentsToShow\":10} /-->\n\n<!-- wp:shortcode -->\n[wp_comments_shortcode]\\\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Bird Page','','inherit','closed','closed','','16-revision-v1','','','2020-10-13 04:13:13','2020-10-13 04:13:13','',16,'https://msctutorial05ca-mconno24453953.codeanyapp.com/?p=67',0,'revision','',0),(68,2,'2020-10-13 04:13:54','2020-10-13 04:13:54','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":32,\"width\":561,\"height\":371,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/GrossBeak001.png\" alt=\"a grossbeak. \" class=\"wp-image-32\" width=\"561\" height=\"371\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcin</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":33,\"width\":549,\"height\":363,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/WhitePellicans001.png\" alt=\"white pelican. \" class=\"wp-image-33\" width=\"549\" height=\"363\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:shortcode -->\n[wp_comments_shortcode]\\\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Bird Page','','inherit','closed','closed','','16-revision-v1','','','2020-10-13 04:13:54','2020-10-13 04:13:54','',16,'https://msctutorial05ca-mconno24453953.codeanyapp.com/?p=68',0,'revision','',0),(69,2,'2020-10-13 04:14:24','2020-10-13 04:14:24','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":32,\"width\":561,\"height\":371,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/GrossBeak001.png\" alt=\"a grossbeak. \" class=\"wp-image-32\" width=\"561\" height=\"371\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcin</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":33,\"width\":549,\"height\":363,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://msctutorial05ca-mconno24453953.codeanyapp.com/wp-content/uploads/2019/12/WhitePellicans001.png\" alt=\"white pelican. \" class=\"wp-image-33\" width=\"549\" height=\"363\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:shortcode -->\n[wp_comments_shortcode]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Bird Page','','inherit','closed','closed','','16-revision-v1','','','2020-10-13 04:14:24','2020-10-13 04:14:24','',16,'https://msctutorial05ca-mconno24453953.codeanyapp.com/?p=69',0,'revision','',0),(70,2,'2020-10-13 04:17:48','2020-10-13 04:17:48','<!-- wp:shortcode -->\n[wp_comments_shortcode]\n<!-- /wp:shortcode -->','Test Page','','publish','closed','closed','','test-page','','','2020-10-13 04:17:48','2020-10-13 04:17:48','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/?page_id=70',0,'page','',0),(71,2,'2020-10-13 04:17:48','2020-10-13 04:17:48',' ','','','publish','closed','closed','','71','','','2020-10-13 04:17:48','2020-10-13 04:17:48','',0,'https://msctutorial05ca-mconno24453953.codeanyapp.com/?p=71',4,'nav_menu_item','',0),(72,2,'2020-10-13 04:17:48','2020-10-13 04:17:48','<!-- wp:shortcode -->\n[wp_comments_shortcode]\n<!-- /wp:shortcode -->','Test Page','','inherit','closed','closed','','70-revision-v1','','','2020-10-13 04:17:48','2020-10-13 04:17:48','',70,'https://msctutorial05ca-mconno24453953.codeanyapp.com/?p=72',0,'revision','',0),(73,2,'2020-10-14 02:20:02','2020-10-14 02:20:02','<!-- wp:shortcode -->\n[wp_comments_shortcode]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Test Page','','inherit','closed','closed','','70-autosave-v1','','','2020-10-14 02:20:02','2020-10-14 02:20:02','',70,'https://msctutorial05ca-mconno24453953.codeanyapp.com/?p=73',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (19,4,0),(19,5,0),(21,6,0),(21,9,0),(21,10,0),(23,4,0),(23,8,0),(61,3,0),(62,3,0),(63,3,0),(71,3,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0),(3,3,'nav_menu','',0,4),(4,4,'category','',0,2),(5,5,'post_tag','',0,1),(6,6,'post_tag','',0,1),(7,7,'post_tag','',0,0),(8,8,'post_tag','',0,1),(9,9,'category','',0,1),(10,10,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(3,'My Menu','my-menu',0),(4,'Squirrel','squirrel',0),(5,'Black','black',0),(6,'Gray','gray',0),(7,'Fox','fox',0),(8,'Red','red',0),(9,'Dragonfly','dragonfly',0),(10,'Rabbit','rabbit',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','mxchase'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers','plugin_editor_notice'),(15,1,'show_welcome_panel','1'),(17,1,'wp_dashboard_quick_press_last_post_id','64'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:11:\"73.45.118.0\";}'),(19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}'),(21,1,'nav_menu_recently_edited','3'),(22,1,'wp_user-settings','libraryContent=browse&posts_list_mode=list'),(23,1,'wp_user-settings-time','1577297967'),(24,1,'wp_media_library_mode','list'),(25,1,'closedpostboxes_page','a:0:{}'),(26,1,'metaboxhidden_page','a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),(27,1,'closedpostboxes_dashboard','a:0:{}'),(28,1,'metaboxhidden_dashboard','a:0:{}'),(30,2,'nickname','mXconnol'),(31,2,'first_name','Michael'),(32,2,'last_name','Connolly'),(33,2,'description',''),(34,2,'rich_editing','true'),(35,2,'syntax_highlighting','true'),(36,2,'comment_shortcuts','false'),(37,2,'admin_color','fresh'),(38,2,'use_ssl','0'),(39,2,'show_admin_bar_front','true'),(40,2,'locale',''),(41,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(42,2,'wp_user_level','10'),(43,2,'dismissed_wp_pointers',''),(44,2,'session_tokens','a:1:{s:64:\"af03f46be26c173ec2f1253ddbb85667800f56782e076d1b2ae85fd38557e889\";a:4:{s:10:\"expiration\";i:1602814725;s:2:\"ip\";s:12:\"38.91.106.40\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\";s:5:\"login\";i:1602641925;}}'),(45,2,'wp_dashboard_quick_press_last_post_id','65'),(46,2,'community-events-location','a:1:{s:2:\"ip\";s:11:\"73.45.118.0\";}'),(47,2,'meta-box-order_dashboard','a:4:{s:6:\"normal\";s:41:\"dashboard_right_now,dashboard_site_health\";s:4:\"side\";s:58:\"dashboard_activity,dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),(48,2,'closedpostboxes_dashboard','a:2:{i:0;s:21:\"dashboard_quick_press\";i:1;s:17:\"dashboard_primary\";}'),(49,2,'metaboxhidden_dashboard','a:0:{}'),(50,2,'wp_user-settings','mfold=f'),(51,2,'wp_user-settings-time','1602467861'),(52,3,'nickname','userIT320'),(53,3,'first_name','User'),(54,3,'last_name','IT320'),(55,3,'description',''),(56,3,'rich_editing','true'),(57,3,'syntax_highlighting','true'),(58,3,'comment_shortcuts','false'),(59,3,'admin_color','fresh'),(60,3,'use_ssl','0'),(61,3,'show_admin_bar_front','true'),(62,3,'locale',''),(63,3,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(64,3,'wp_user_level','10'),(65,3,'dismissed_wp_pointers','');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'student','$P$BxLdXRznwmBwc1GFjYjlLmdyV/D6mV/','student','admin@msctutorial05ca-mconno24453953.codeanyapp.com','','2019-12-22 17:51:21','',0,'student'),(2,'mXconnol','$P$BoO2TRHL/OBwFWpEfbkQB08WSDoquY.','mxconnol','mconno24@depaul.edu','','2020-10-11 19:02:32','',0,'Michael Connolly'),(3,'userIT320','$P$B4IM2qq.PZbZ6leSaBOWMMHia3Xfa..','userit320','mscster@gmail.com','','2020-10-14 02:26:13','',0,'User IT320');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza`
--

DROP TABLE IF EXISTS `wp_wpgmza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(2083) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `sticky` tinyint(1) DEFAULT '0',
  `other_data` longtext NOT NULL,
  `latlng` point DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza`
--

LOCK TABLES `wp_wpgmza` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza` DISABLE KEYS */;
INSERT INTO `wp_wpgmza` VALUES (1,1,'California','','','','','36.778261','-119.4179323999','0','','','',1,0,0,'',0,'',_binary '\0\0\0\0\0\0\0J`sžcB@˜`‰g¿\Ú]À');
/*!40000 ALTER TABLE `wp_wpgmza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_circles`
--

DROP TABLE IF EXISTS `wp_wpgmza_circles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmza_circles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `name` text,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_circles`
--

LOCK TABLES `wp_wpgmza_circles` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_circles` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_circles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_maps`
--

DROP TABLE IF EXISTS `wp_wpgmza_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_title` varchar(256) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_maps`
--

LOCK TABLES `wp_wpgmza_maps` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_maps` DISABLE KEYS */;
INSERT INTO `wp_wpgmza_maps` VALUES (1,'My first map','100','400','45.950464398418106','-109.81550500000003','45.950464398418106,-109.81550500000003',2,'0',1,4,1,0,'',0,'',2,2,1,'100',0,0,0,0,0,'','%','px',1,0,1,2,0,'','a:2:{s:19:\"store_locator_style\";s:6:\"modern\";s:33:\"wpgmza_store_locator_radius_style\";s:6:\"modern\";}');
/*!40000 ALTER TABLE `wp_wpgmza_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_polygon`
--

DROP TABLE IF EXISTS `wp_wpgmza_polygon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `description` text NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_polygon`
--

LOCK TABLES `wp_wpgmza_polygon` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_polygon` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_polygon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_polylines`
--

DROP TABLE IF EXISTS `wp_wpgmza_polylines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_polylines`
--

LOCK TABLES `wp_wpgmza_polylines` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_polylines` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_polylines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_rectangles`
--

DROP TABLE IF EXISTS `wp_wpgmza_rectangles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmza_rectangles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `name` text,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_rectangles`
--

LOCK TABLES `wp_wpgmza_rectangles` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_rectangles` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_rectangles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-14  0:06:41
