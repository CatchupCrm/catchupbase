/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50631
 Source Host           : localhost
 Source Database       : webed_sedna_theme

 Target Server Type    : MySQL
 Target Server Version : 50631
 File Encoding         : utf-8

 Date: 02/18/2017 22:14:57 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `custom_fields`
-- ----------------------------
DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE `custom_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `use_for` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `use_for_id` int(10) unsigned NOT NULL,
  `field_item_id` int(10) unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `custom_fields_field_item_id_foreign` (`field_item_id`),
  CONSTRAINT `custom_fields_field_item_id_foreign` FOREIGN KEY (`field_item_id`) REFERENCES `field_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `custom_fields`
-- ----------------------------
BEGIN;
INSERT INTO `custom_fields` VALUES ('1', 'WebEd\\Plugins\\Blocks\\Models\\Block', '1', '1', 'text', 'big_title', 'WebEd CMS'), ('2', 'WebEd\\Plugins\\Blocks\\Models\\Block', '1', '2', 'text', 'intro_text', 'Build with latest Laravel version. Very easy to start!'), ('3', 'WebEd\\Plugins\\Blocks\\Models\\Block', '1', '3', 'text', 'download_link', 'https://github.com/sgsoft-studio/webed'), ('5', 'WebEd\\Plugins\\Blocks\\Models\\Block', '2', '5', 'repeater', 'intro_boxes', '[[{\"field_item_id\":6,\"type\":\"text\",\"slug\":\"icon\",\"value\":\"&#xe033;\"},{\"field_item_id\":7,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Easily customized\"},{\"field_item_id\":8,\"type\":\"text\",\"slug\":\"intro_text\",\"value\":\"Easily customize WebEd to suit your start up, portfolio or product.\"}],[{\"field_item_id\":6,\"type\":\"text\",\"slug\":\"icon\",\"value\":\"&#xe030;\"},{\"field_item_id\":7,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Modular\"},{\"field_item_id\":8,\"type\":\"text\",\"slug\":\"intro_text\",\"value\":\"Wow, everything are plugins!\"}],[{\"field_item_id\":6,\"type\":\"text\",\"slug\":\"icon\",\"value\":\"&#xe046;\"},{\"field_item_id\":7,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Clean code\"},{\"field_item_id\":8,\"type\":\"text\",\"slug\":\"intro_text\",\"value\":\"Follow PSR-2 coding style\"}]]'), ('6', 'WebEd\\Plugins\\Blocks\\Models\\Block', '3', '9', 'text', 'big_title', 'WebEd will drive your product forward'), ('7', 'WebEd\\Plugins\\Blocks\\Models\\Block', '3', '10', 'text', 'big_intro_text', 'Present your product, start up, or portfolio in a beautifully modern way. Turn your visitors into clients.'), ('8', 'WebEd\\Plugins\\Blocks\\Models\\Block', '3', '11', 'repeater', 'feature_stacks', '[[{\"field_item_id\":12,\"type\":\"text\",\"slug\":\"icon\",\"value\":\"\\ue03e\"},{\"field_item_id\":13,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Universal & Responsive\"},{\"field_item_id\":14,\"type\":\"text\",\"slug\":\"intro_text\",\"value\":\"WebEd is universal and will look smashing on any device.\"}],[{\"field_item_id\":12,\"type\":\"text\",\"slug\":\"icon\",\"value\":\"\\ue040\"},{\"field_item_id\":13,\"type\":\"text\",\"slug\":\"title\",\"value\":\"User Centric Design\"},{\"field_item_id\":14,\"type\":\"text\",\"slug\":\"intro_text\",\"value\":\"WebEd takes advantage of common design patterns, allowing for a seamless experience for users of all levels.\"}],[{\"field_item_id\":12,\"type\":\"text\",\"slug\":\"icon\",\"value\":\"\\ue03c\"},{\"field_item_id\":13,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Clean reusable code\"},{\"field_item_id\":14,\"type\":\"text\",\"slug\":\"intro_text\",\"value\":\"Download and re-use the WebEd open source code for any other project you like.\"}]]'), ('9', 'WebEd\\Base\\Pages\\Models\\Page', '1', '1', 'text', 'big_title', 'WebEd CMS'), ('10', 'WebEd\\Base\\Pages\\Models\\Page', '1', '2', 'text', 'intro_text', 'Build with latest Laravel version. Very easy to start!'), ('11', 'WebEd\\Base\\Pages\\Models\\Page', '1', '3', 'text', 'download_link', 'https://github.com/sgsoft-studio/webed'), ('12', 'WebEd\\Base\\Pages\\Models\\Page', '1', '5', 'repeater', 'intro_boxes', '[[{\"field_item_id\":6,\"type\":\"text\",\"slug\":\"icon\",\"value\":\"\\ue033\"},{\"field_item_id\":7,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Easily customized\"},{\"field_item_id\":8,\"type\":\"text\",\"slug\":\"intro_text\",\"value\":\"Easily customize WebEd to suit your start up, portfolio or product.\"}],[{\"field_item_id\":6,\"type\":\"text\",\"slug\":\"icon\",\"value\":\"\\ue030\"},{\"field_item_id\":7,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Modular\"},{\"field_item_id\":8,\"type\":\"text\",\"slug\":\"intro_text\",\"value\":\"Wow, everything are plugins!\"}],[{\"field_item_id\":6,\"type\":\"text\",\"slug\":\"icon\",\"value\":\"\\ue046\"},{\"field_item_id\":7,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Clean code\"},{\"field_item_id\":8,\"type\":\"text\",\"slug\":\"intro_text\",\"value\":\"Follow PSR-2 coding style\"}]]'), ('13', 'WebEd\\Base\\Pages\\Models\\Page', '1', '9', 'text', 'big_title', 'WebEd will drive your product forward'), ('14', 'WebEd\\Base\\Pages\\Models\\Page', '1', '10', 'text', 'big_intro_text', 'Present your product, start up, or portfolio in a beautifully modern way. Turn your visitors into clients.'), ('15', 'WebEd\\Base\\Pages\\Models\\Page', '1', '11', 'repeater', 'feature_stacks', '[[{\"field_item_id\":12,\"type\":\"text\",\"slug\":\"icon\",\"value\":\"\\ue03e\"},{\"field_item_id\":13,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Universal & Responsive\"},{\"field_item_id\":14,\"type\":\"text\",\"slug\":\"intro_text\",\"value\":\"WebEd is universal and will look smashing on any device.\"}],[{\"field_item_id\":12,\"type\":\"text\",\"slug\":\"icon\",\"value\":\"\\ue040\"},{\"field_item_id\":13,\"type\":\"text\",\"slug\":\"title\",\"value\":\"User Centric Design\"},{\"field_item_id\":14,\"type\":\"text\",\"slug\":\"intro_text\",\"value\":\"WebEd takes advantage of common design patterns, allowing for a seamless experience for users of all levels.\"}],[{\"field_item_id\":12,\"type\":\"text\",\"slug\":\"icon\",\"value\":\"\\ue03c\"},{\"field_item_id\":13,\"type\":\"text\",\"slug\":\"title\",\"value\":\"Clean reusable code\"},{\"field_item_id\":14,\"type\":\"text\",\"slug\":\"intro_text\",\"value\":\"Download and re-use the WebEd open source code for any other project you like.\"}]]'), ('16', 'WebEd\\Base\\Pages\\Models\\Page', '1', '15', 'wysiwyg', 'content', '<p>At error noster inciderint has, te animal copiosae usu. Ne vim admodum signiferumque, modo hendrerit at duo. Usu ad tacimates electram. Quem invidunt consetetur est ei, ei sit vidisse nusquam eloquentiam, persecuti assueverit signiferumque et mel. Vis oblique ancillae hendrerit cu. Vel atqui prodesset maiestatis cu. Ea veri alterum delenit sea?</p>\n\n<p>At error noster inciderint has, te animal copiosae usu. Ne vim admodum signiferumque, modo hendrerit at duo. Usu ad tacimates electram. Quem invidunt consetetur est ei, ei sit vidisse nusquam eloquentiam, persecuti assueverit signiferumque et mel. Vis oblique ancillae hendrerit cu. Vel atqui prodesset maiestatis cu. Ea veri alterum delenit sea?</p>\n'), ('17', 'WebEd\\Base\\Pages\\Models\\Page', '1', '16', 'text', 'big_title', 'H3 heading'), ('18', 'WebEd\\Base\\Pages\\Models\\Page', '1', '17', 'repeater', 'blog_intro_boxes', '[[{\"field_item_id\":18,\"type\":\"text\",\"slug\":\"title\",\"value\":\"H5 title\"},{\"field_item_id\":19,\"type\":\"text\",\"slug\":\"content\",\"value\":\"At error noster inciderint has, te animal copiosae usu. Ne vim admodum signiferumque, modo hendrerit at duo. Usu ad tacimates electram. Quem invidunt consetetur est ei, ei sit vidisse nusquam eloquentiam, persecuti assueverit signiferumque et mel. Vis oblique ancillae hendrerit cu. Vel atqui prodesset maiestatis cu. Ea veri alterum delenit sea?\"}],[{\"field_item_id\":18,\"type\":\"text\",\"slug\":\"title\",\"value\":\"H5 title\"},{\"field_item_id\":19,\"type\":\"text\",\"slug\":\"content\",\"value\":\"At error noster inciderint has, te animal copiosae usu. Ne vim admodum signiferumque, modo hendrerit at duo. Usu ad tacimates electram. Quem invidunt consetetur est ei, ei sit vidisse nusquam eloquentiam, persecuti assueverit signiferumque et mel. Vis oblique ancillae hendrerit cu. Vel atqui prodesset maiestatis cu. Ea veri alterum delenit sea?\"}]]'), ('19', 'WebEd\\Base\\Pages\\Models\\Page', '1', '20', 'repeater', 'testimonials', '[[{\"field_item_id\":21,\"type\":\"text\",\"slug\":\"name\",\"value\":\"Tedozi Manson\"},{\"field_item_id\":22,\"type\":\"text\",\"slug\":\"quote\",\"value\":\"At error noster inciderint has, te animal copiosae usu. Ne vim admodum signiferumque, modo hendrerit at duo.\"}],[{\"field_item_id\":21,\"type\":\"text\",\"slug\":\"name\",\"value\":\"Duy Phan\"},{\"field_item_id\":22,\"type\":\"text\",\"slug\":\"quote\",\"value\":\"At error noster inciderint has, te animal copiosae usu. Ne vim admodum signiferumque, modo hendrerit at duo.\"}],[{\"field_item_id\":21,\"type\":\"text\",\"slug\":\"name\",\"value\":\"Nghia Tran\"},{\"field_item_id\":22,\"type\":\"text\",\"slug\":\"quote\",\"value\":\"At error noster inciderint has, te animal copiosae usu. Ne vim admodum signiferumque, modo hendrerit at duo.\"}],[{\"field_item_id\":21,\"type\":\"text\",\"slug\":\"name\",\"value\":\"Hue Linh\"},{\"field_item_id\":22,\"type\":\"text\",\"slug\":\"quote\",\"value\":\"At error noster inciderint has, te animal copiosae usu. Ne vim admodum signiferumque, modo hendrerit at duo.\"}]]');
COMMIT;

-- ----------------------------
--  Table structure for `field_groups`
-- ----------------------------
DROP TABLE IF EXISTS `field_groups`;
CREATE TABLE `field_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rules` text COLLATE utf8_unicode_ci,
  `status` enum('activated','disabled') COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_groups_created_by_foreign` (`created_by`),
  KEY `field_groups_updated_by_foreign` (`updated_by`),
  CONSTRAINT `field_groups_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `field_groups_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `field_groups`
-- ----------------------------
BEGIN;
INSERT INTO `field_groups` VALUES ('1', 'Homepage CMS blocks - Hero', '[[{\"name\":\"page_template\",\"type\":\"==\",\"value\":\"homepage\"}]]', 'activated', '0', '1', '1', '2017-01-19 14:46:40', '2017-02-18 15:05:57'), ('2', 'Homepage CMS blocks - Intro', '[[{\"name\":\"page_template\",\"type\":\"==\",\"value\":\"homepage\"}]]', 'activated', '0', '1', '1', '2017-01-19 14:57:05', '2017-02-18 15:06:14'), ('3', 'Homepage CMS blocks - Features', '[[{\"name\":\"page_template\",\"type\":\"==\",\"value\":\"homepage\"}]]', 'activated', '0', '1', '1', '2017-01-19 15:12:46', '2017-02-18 15:06:18'), ('4', 'Homepage CMS blocks - features extra', '[[{\"name\":\"page_template\",\"type\":\"==\",\"value\":\"homepage\"}]]', 'activated', '0', '1', '1', '2017-01-19 17:04:04', '2017-02-18 15:06:25'), ('5', 'Homepage CMS blocks - Blog intro', '[[{\"name\":\"page_template\",\"type\":\"==\",\"value\":\"homepage\"}]]', 'activated', '0', '1', '1', '2017-01-19 17:21:54', '2017-02-18 15:06:30'), ('6', 'Homepage CMS blocks - Testimonials', '[[{\"name\":\"page_template\",\"type\":\"==\",\"value\":\"homepage\"}]]', 'activated', '0', '1', '1', '2017-01-19 17:33:33', '2017-02-18 15:06:37');
COMMIT;

-- ----------------------------
--  Table structure for `field_items`
-- ----------------------------
DROP TABLE IF EXISTS `field_items`;
CREATE TABLE `field_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_group_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8_unicode_ci,
  `options` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_items_field_group_id_parent_id_slug_unique` (`field_group_id`,`parent_id`,`slug`),
  KEY `field_items_parent_id_foreign` (`parent_id`),
  CONSTRAINT `field_items_field_group_id_foreign` FOREIGN KEY (`field_group_id`) REFERENCES `field_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `field_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `field_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `field_items`
-- ----------------------------
BEGIN;
INSERT INTO `field_items` VALUES ('1', '1', null, '1', 'Big title', 'big_title', 'text', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('2', '1', null, '2', 'Intro text', 'intro_text', 'text', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('3', '1', null, '3', 'Download link', 'download_link', 'text', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('5', '2', null, '1', 'Intro boxes', 'intro_boxes', 'repeater', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('6', '2', '5', '1', 'Icon', 'icon', 'text', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('7', '2', '5', '2', 'Title', 'title', 'text', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('8', '2', '5', '3', 'Intro text', 'intro_text', 'text', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('9', '3', null, '1', 'Big title', 'big_title', 'text', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('10', '3', null, '2', 'Big intro text', 'big_intro_text', 'text', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('11', '3', null, '3', 'Feature stacks', 'feature_stacks', 'repeater', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('12', '3', '11', '1', 'Icon', 'icon', 'text', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('13', '3', '11', '2', 'Title', 'title', 'text', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('14', '3', '11', '3', 'Intro text', 'intro_text', 'text', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('15', '4', null, '1', 'Content', 'content', 'wysiwyg', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":\"basic\",\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('16', '5', null, '1', 'Big title', 'big_title', 'text', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('17', '5', null, '2', 'Blog intro boxes', 'blog_intro_boxes', 'repeater', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('18', '5', '17', '1', 'Title', 'title', 'text', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('19', '5', '17', '2', 'Content', 'content', 'text', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('20', '6', null, '1', 'Testimonials', 'testimonials', 'repeater', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('21', '6', '20', '1', 'Name', 'name', 'text', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'), ('22', '6', '20', '2', 'Quote', 'quote', 'text', null, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');
COMMIT;

-- ----------------------------
--  Table structure for `menu_nodes`
-- ----------------------------
DROP TABLE IF EXISTS `menu_nodes`;
CREATE TABLE `menu_nodes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `related_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_font` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `css_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_foreign` (`menu_id`),
  KEY `menu_nodes_parent_id_foreign` (`parent_id`),
  CONSTRAINT `menu_nodes_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `menu_nodes_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menu_nodes` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `menu_nodes`
-- ----------------------------
BEGIN;
INSERT INTO `menu_nodes` VALUES ('1', '1', null, null, 'custom-link', '#features', 'Features', '', '', '', '1', '2017-01-19 13:22:27', '2017-01-19 14:32:44'), ('2', '1', null, null, 'custom-link', '#assets', 'Assets', '', '', '', '2', '2017-01-19 13:22:27', '2017-01-19 14:32:44'), ('3', '1', null, null, 'custom-link', '#download', 'Download', '', '', '', '3', '2017-01-19 13:22:27', '2017-01-19 14:32:44'), ('4', '1', null, null, 'custom-link', '#top', 'Home', '', '', '', '0', '2017-01-19 14:32:44', '2017-01-19 14:32:44'), ('5', '2', null, '1', 'page', null, '', '', '', null, '0', '2017-01-20 01:54:57', '2017-01-20 01:54:57'), ('6', '2', null, null, 'custom-link', 'https://tympanus.net/codrops', 'Codrops', '', '', '_blank', '1', '2017-01-20 01:54:57', '2017-01-20 01:54:57');
COMMIT;

-- ----------------------------
--  Table structure for `menus`
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('activated','disabled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activated',
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menus_created_by_foreign` (`created_by`),
  KEY `menus_updated_by_foreign` (`updated_by`),
  CONSTRAINT `menus_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `menus_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `menus`
-- ----------------------------
BEGIN;
INSERT INTO `menus` VALUES ('1', 'Top menu', 'top-menu', 'activated', '1', '1', '2017-01-19 13:22:27', '2017-01-19 13:22:27'), ('2', 'Footer menu', 'footer-menu', 'activated', '1', '1', '2017-01-20 01:54:57', '2017-01-20 01:54:57');
COMMIT;

-- ----------------------------
--  Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `migrations`
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES ('1', '2016_08_04_043730_create_users_table', '1'), ('2', '2016_08_04_043732_create_roles_table', '1'), ('3', '2016_08_04_043756_create_settings_table', '1'), ('4', '2016_11_07_102334_create_menus', '1'), ('5', '2016_11_27_120334_create_plugins_table', '1'), ('6', '2016_11_28_015813_create_pages_table', '1'), ('7', '2016_11_29_163613_create_theme_options_table', '1'), ('8', '2016_11_29_163713_add_field_installed_version_to_table_themes', '1'), ('9', '2016_12_07_121349_create_view_trackers_table', '1'), ('10', '2016_11_29_163613_create_themes_table', '2');
COMMIT;

-- ----------------------------
--  Table structure for `pages`
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('activated','disabled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activated',
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`),
  KEY `pages_created_by_foreign` (`created_by`),
  KEY `pages_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pages_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `pages_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `pages`
-- ----------------------------
BEGIN;
INSERT INTO `pages` VALUES ('1', 'Homepage', 'homepage', 'homepage', '', '', '', '', 'activated', '0', '1', '1', '2017-01-19 13:04:31', '2017-02-18 15:06:52');
COMMIT;

-- ----------------------------
--  Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `permissions`
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `permissions`
-- ----------------------------
BEGIN;
INSERT INTO `permissions` VALUES ('1', 'View roles', 'view-roles', 'WebEd\\Base\\ACL'), ('2', 'Create roles', 'create-roles', 'WebEd\\Base\\ACL'), ('3', 'Edit roles', 'edit-roles', 'WebEd\\Base\\ACL'), ('4', 'Delete roles', 'delete-roles', 'WebEd\\Base\\ACL'), ('5', 'View permissions', 'view-permissions', 'WebEd\\Base\\ACL'), ('6', 'Assign roles', 'assign-roles', 'WebEd\\Base\\ACL'), ('7', 'Access to dashboard', 'access-dashboard', 'WebEd\\Base\\Core'), ('8', 'System commands', 'use-system-commands', 'WebEd\\Base\\Core'), ('9', 'View cache management page', 'view-cache', 'WebEd\\Base\\Caching'), ('10', 'Modify cache', 'modify-cache', 'WebEd\\Base\\Caching'), ('11', 'Clear cache', 'clear-cache', 'WebEd\\Base\\Caching'), ('12', 'View files', 'view-files', 'WebEd\\Base\\Elfinder'), ('13', 'Upload files', 'upload-files', 'WebEd\\Base\\Elfinder'), ('14', 'Edit files', 'edit-files', 'WebEd\\Base\\Elfinder'), ('15', 'Delete files', 'delete-files', 'WebEd\\Base\\Elfinder'), ('16', 'View menus', 'view-menus', 'WebEd\\Base\\Menu'), ('17', 'Delete menus', 'delete-menus', 'WebEd\\Base\\Menu'), ('18', 'Create menus', 'create-menus', 'WebEd\\Base\\Menu'), ('19', 'Edit menus', 'edit-menus', 'WebEd\\Base\\Menu'), ('20', 'Manage plugins', 'view-plugins', 'WebEd\\Base\\ModulesManagement'), ('21', 'View pages', 'view-pages', 'WebEd\\Base\\Pages'), ('22', 'Create pages', 'create-pages', 'WebEd\\Base\\Pages'), ('23', 'Edit pages', 'edit-pages', 'WebEd\\Base\\Pages'), ('24', 'Delete pages', 'delete-pages', 'WebEd\\Base\\Pages'), ('25', 'View settings page', 'view-settings', 'WebEd\\Base\\Settings'), ('26', 'Edit settings', 'edit-settings', 'WebEd\\Base\\Settings'), ('27', 'View themes', 'view-themes', 'WebEd\\Base\\ThemesManagement'), ('28', 'View users', 'view-users', 'WebEd\\Base\\Users'), ('29', 'Create users', 'create-users', 'WebEd\\Base\\Users'), ('30', 'Edit other users', 'edit-other-users', 'WebEd\\Base\\Users'), ('31', 'Delete users', 'delete-users', 'WebEd\\Base\\Users'), ('32', 'Delete users', 'force-delete-users', 'WebEd\\Base\\Users'), ('37', 'View custom fields', 'view-custom-fields', 'WebEd\\Plugins\\CustomFields'), ('38', 'Create field group', 'create-field-groups', 'WebEd\\Plugins\\CustomFields'), ('39', 'Edit field group', 'edit-field-groups', 'WebEd\\Plugins\\CustomFields'), ('40', 'Delete field group', 'delete-field-groups', 'WebEd\\Plugins\\CustomFields'), ('41', 'View posts', 'view-posts', 'WebEd\\Plugins\\Blog'), ('42', 'Create posts', 'create-posts', 'WebEd\\Plugins\\Blog'), ('43', 'Update posts', 'update-posts', 'WebEd\\Plugins\\Blog'), ('44', 'Delete posts', 'delete-posts', 'WebEd\\Plugins\\Blog'), ('45', 'View categories', 'view-categories', 'WebEd\\Plugins\\Blog'), ('46', 'Create categories', 'create-categories', 'WebEd\\Plugins\\Blog'), ('47', 'Update categories', 'update-categories', 'WebEd\\Plugins\\Blog'), ('48', 'Delete categories', 'delete-categories', 'WebEd\\Plugins\\Blog');
COMMIT;

-- ----------------------------
--  Table structure for `plugins`
-- ----------------------------
DROP TABLE IF EXISTS `plugins`;
CREATE TABLE `plugins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installed_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `installed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `plugins`
-- ----------------------------
BEGIN;
INSERT INTO `plugins` VALUES ('1', 'webed-analytics', '1.0.3', '0', '1'), ('2', 'webed-backup', null, '0', '0'), ('3', 'webed-blocks', '1.0', '0', '0'), ('4', 'webed-blog', '3.0.1', '0', '0'), ('5', 'webed-custom-fields', '3.0.1', '1', '1'), ('6', 'webed-dashboard-style-guide', null, '0', '0'), ('7', 'webed-ecommerce', null, '0', '0'), ('8', 'webed-ecommerce-coupons', null, '0', '0'), ('9', 'webed-ecommerce-customers', null, '0', '0'), ('10', 'webed-ecommerce-orders', null, '0', '0'), ('11', 'webed-ecommerce-product-attributes', null, '0', '0'), ('12', 'webed-ide', null, '0', '0'), ('13', 'webed-captcha', null, '0', '0'), ('14', 'webed-contact-form', null, '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_foreign` (`created_by`),
  KEY `roles_updated_by_foreign` (`updated_by`),
  CONSTRAINT `roles_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `roles_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `roles`
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES ('1', 'Super Admin', 'super-admin', null, null, '2017-01-19 12:37:23', '2017-01-19 12:37:23');
COMMIT;

-- ----------------------------
--  Table structure for `roles_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE `roles_permissions` (
  `role_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `roles_permissions_role_id_permission_id_unique` (`role_id`,`permission_id`),
  KEY `roles_permissions_permission_id_foreign` (`permission_id`),
  CONSTRAINT `roles_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `roles_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `settings`
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `option_value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_option_key_unique` (`option_key`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `settings`
-- ----------------------------
BEGIN;
INSERT INTO `settings` VALUES ('1', 'default_homepage', '1', '2017-01-19 13:04:41', '2017-01-19 13:04:41'), ('2', 'site_title', '', '2017-01-19 13:04:41', '2017-01-19 13:04:41'), ('3', 'site_logo', '', '2017-01-19 13:04:41', '2017-01-19 13:04:41'), ('4', 'favicon', '', '2017-01-19 13:04:41', '2017-01-19 13:04:41'), ('5', 'show_admin_bar', '1', '2017-01-19 13:04:56', '2017-01-19 14:33:52'), ('6', 'construction_mode', '0', '2017-01-19 13:04:56', '2017-01-19 13:04:56'), ('7', 'main_menu', 'top-menu', '2017-02-18 15:05:27', '2017-02-18 15:05:27');
COMMIT;

-- ----------------------------
--  Table structure for `theme_options`
-- ----------------------------
DROP TABLE IF EXISTS `theme_options`;
CREATE TABLE `theme_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme_id` int(10) unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `theme_options_theme_id_key_unique` (`theme_id`,`key`),
  CONSTRAINT `theme_options_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `themes`
-- ----------------------------
DROP TABLE IF EXISTS `themes`;
CREATE TABLE `themes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `installed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `installed_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `themes_alias_unique` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `themes`
-- ----------------------------
BEGIN;
INSERT INTO `themes` VALUES ('1', 'cosmetics', '0', '0', null), ('2', 'sedna', '1', '1', '1.0.1'), ('3', 'nongdanviet', '0', '0', null), ('4', 'poli-shop', '0', '0', null);
COMMIT;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` enum('male','female','other') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
  `status` enum('activated','disabled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activated',
  `birthday` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_activity_at` timestamp NULL DEFAULT NULL,
  `disabled_until` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_created_by_foreign` (`created_by`),
  KEY `users_updated_by_foreign` (`updated_by`),
  CONSTRAINT `users_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `users_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `users`
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('1', 'admin', 'admin@webed.com', '$2y$10$bdXhVPjR0u.tyzKfdC40NOgOGK5jdnUUkCmsMzDj5ptpBea4L74bC', 'Super Admin', 'Admin', '0', null, null, null, null, 'male', 'activated', null, null, 'yw2lIMJBpuKtZtqkanMIPUg8s521QXeOVS8uY5G2fVG1zfGqIVYnamvD5FOx', null, null, '2017-02-18 15:05:15', null, null, null, '2017-01-19 12:37:38', '2017-02-18 15:05:15');
COMMIT;

-- ----------------------------
--  Table structure for `users_roles`
-- ----------------------------
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `users_roles_user_id_role_id_unique` (`user_id`,`role_id`),
  KEY `users_roles_role_id_foreign` (`role_id`),
  CONSTRAINT `users_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `users_roles`
-- ----------------------------
BEGIN;
INSERT INTO `users_roles` VALUES ('1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `view_trackers`
-- ----------------------------
DROP TABLE IF EXISTS `view_trackers`;
CREATE TABLE `view_trackers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entity_id` int(10) unsigned NOT NULL,
  `count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `view_trackers_entity_entity_id_unique` (`entity`,`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `view_trackers`
-- ----------------------------
BEGIN;
INSERT INTO `view_trackers` VALUES ('1', 'WebEd\\Base\\Pages\\Models\\Page', '1', '168');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
