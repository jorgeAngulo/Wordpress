-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-02-2018 a las 10:18:34
-- Versión del servidor: 10.0.32-MariaDB-1~wheezy
-- Versión de PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Wordpress`
--
CREATE DATABASE IF NOT EXISTS `Wordpress` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Wordpress`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_wp_trash_meta_status', '0'),
(2, 1, '_wp_trash_meta_time', '1518439031'),
(3, 2, '_wp_trash_meta_status', '0'),
(4, 2, '_wp_trash_meta_time', '1518439617'),
(5, 3, '_wp_trash_meta_status', '0'),
(6, 3, '_wp_trash_meta_time', '1518439650'),
(7, 4, '_wp_trash_meta_status', '0'),
(8, 4, '_wp_trash_meta_time', '1518439662');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 127, 'Panaderia Alfredo', 'scoobydoo@hotmail.com', 'http://notengo.com', '10.15.24.119', '2018-02-12 12:18:08', '2018-02-12 12:18:08', 'No puedo ver los panes', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '', 0, 0),
(2, 109, 'Panaderia Alfredo', 'scoobydoo@hotmail.com', 'http://notengo.com', '10.15.24.119', '2018-02-12 12:46:26', '2018-02-12 12:46:26', 'quiere pipa', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '', 0, 0),
(3, 109, 'la competensia', 'scoobydoo@hotmail.com', 'http://notengo.com', '10.15.24.119', '2018-02-12 12:47:20', '2018-02-12 12:47:20', 'scoby do', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '', 0, 0),
(4, 109, 'la competensia', 'scoobydoo@hotmail.com', 'http://notengo.com', '10.15.24.119', '2018-02-12 12:47:35', '2018-02-12 12:47:35', 'hhufhrfcfsd', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://10.15.24.140/wordpress', 'yes'),
(2, 'home', 'http://10.15.24.140/wordpress', 'yes'),
(3, 'blogname', 'Pandora', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'as3-2-01.17@uni.eus', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:37:"index.php/comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=61&cpage=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:31:"wp-google-maps/wpGoogleMaps.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;i:4;a:4:{s:5:"title";s:0:"";s:5:"count";i:1;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:41:"google-maps-widget/google-maps-widget.php";a:2:{i:0;s:3:"GMW";i:1;s:9:"uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '61', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'es_ES', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;i:4;a:0:{}}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;i:4;a:0:{}}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:2:{i:0;s:6:"meta-2";i:1;s:19:"wpgmza_map_widget-3";}s:9:"sidebar-1";a:1:{i:0;s:12:"categories-4";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:1:{i:0;s:19:"wpgmza_map_widget-5";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:"title";s:6:"Prueba";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:11:{s:13:"attachment_id";i:0;s:3:"url";s:43:"https://www.youtube.com/watch?v=Qz551QovGJU";s:5:"title";s:21:"Elaboracion de panes:";s:7:"preload";s:8:"metadata";s:4:"loop";b:0;s:7:"content";s:0:"";s:3:"mp4";s:0:"";s:3:"m4v";s:0:"";s:4:"webm";s:0:"";s:3:"ogv";s:0:"";s:3:"flv";s:0:"";}}', 'yes'),
(107, 'nonce_key', '/vFTXGv f9D0:CeZC6yTXB~6nd~.0_e=?f[Z$sgUFJr0MKkP{HK:=XXrr*f9}HbD', 'no'),
(108, 'nonce_salt', '`tX8NYOVu/G>=~AZVaG+z9[SB+P,4A78fUD2/]6F3cVeNdt!,Pgw>#TmY^$xG,20', 'no'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:4:{i:1518697161;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1518697312;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1518698157;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:6:{s:18:"custom_css_post_id";i:-1;s:12:"header_image";s:74:"http://localhost/wordpress/wp-content/uploads/2018/01/cropped-prueba-2.jpg";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:22;s:3:"url";s:74:"http://localhost/wordpress/wp-content/uploads/2018/01/cropped-prueba-2.jpg";s:13:"thumbnail_url";s:74:"http://localhost/wordpress/wp-content/uploads/2018/01/cropped-prueba-2.jpg";s:6:"height";i:1200;s:5:"width";i:2000;}s:11:"colorscheme";s:4:"dark";s:18:"nav_menu_locations";a:2:{s:3:"top";i:2;s:6:"social";i:0;}s:11:"page_layout";s:10:"one-column";}', 'yes'),
(124, 'auth_key', 'xuv_Dert,Gu.Dw eJzrm9NXC>hG%m+J*%t2?<)LOKA^nu*B<0IGpj}RB5|[u}g|y', 'no'),
(125, 'auth_salt', 'Tg#jQfmNap>PKYMP#cuoWBnAm]DOZ@$eAJs-dg<m{Q;X%R|id)9i,6*}&~^DglY4', 'no'),
(126, 'logged_in_key', 'Za,+~nrcg0,BqRV-o31x*$e$^zL-oVU*Do:=JOWZ40>!b`Zq<lH[RvT,}cs8@0sB', 'no'),
(127, 'logged_in_salt', '>aQs{sxu!hB ,>wAb,l*j7{JuI<wznNQA_~kuWLs;qF#zk4&*Ld*h_~GFf+|~sC=', 'no'),
(133, 'can_compress_scripts', '0', 'no'),
(150, 'recently_activated', 'a:1:{s:41:"google-maps-widget/google-maps-widget.php";i:1518595995;}', 'yes'),
(198, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(349, 'category_children', 'a:0:{}', 'yes'),
(475, 'new_admin_email', 'as3-2-01.17@uni.eus', 'yes'),
(478, '_site_transient_timeout_browser_6df47feeeda72948e2378527bc065d7f', '1519041815', 'no'),
(479, '_site_transient_browser_6df47feeeda72948e2378527bc065d7f', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"57.0";s:8:"platform";s:5:"Linux";s:10:"update_url";s:24:"https://www.firefox.com/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(540, 'gmw_options', 'a:18:{s:6:"sc_map";s:3:"gmw";s:7:"api_key";s:32:"https://goo.gl/maps/LS9B3CdAhUC2";s:8:"track_ga";s:1:"0";s:14:"include_jquery";s:1:"1";s:17:"include_gmaps_api";s:1:"1";s:19:"include_lightbox_js";s:1:"1";s:20:"include_lightbox_css";s:1:"1";s:16:"disable_tooltips";s:1:"0";s:15:"disable_sidebar";s:1:"0";s:15:"activation_code";s:0:"";s:14:"license_active";s:0:"";s:15:"license_expires";s:0:"";s:12:"license_type";s:0:"";s:13:"first_version";s:4:"3.80";s:13:"first_install";i:1518595781;s:13:"last_tracking";b:0;s:17:"first_install_gmt";i:1518595781;s:23:"dismiss_notice_upgrade2";b:1;}', 'yes'),
(543, 'widget_googlemapswidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(546, 'wpgmza_temp_api', 'AIzaSyChPphumyabdfggISDNBuGOlGVBgEvZnGE', 'yes'),
(547, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(548, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(549, 'wpgmza_db_version', '6.4.09', 'yes'),
(550, 'wpgmaps_current_version', '6.4.09', 'yes'),
(551, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(552, 'widget_wpgmza_map_widget', 'a:3:{s:12:"_multiwidget";i:1;i:3;a:2:{s:9:"selection";s:1:"1";s:5:"title";s:21:"Ubicacion de Pandora:";}i:5;a:2:{s:9:"selection";s:1:"1";s:5:"title";s:22:"Ubicación de Pandora:";}}', 'yes'),
(553, 'WPGMZA_OTHER_SETTINGS', 'a:1:{s:27:"wpgmza_settings_marker_pull";s:1:"0";}', 'yes'),
(554, 'WPGMZA_FIRST_TIME', '6.4.09', 'yes'),
(555, 'wpgmza_stats', 'a:3:{s:15:"list_maps_basic";a:3:{s:5:"views";i:5;s:13:"last_accessed";s:19:"2018-02-15 09:07:38";s:14:"first_accessed";s:19:"2018-02-14 08:17:07";}s:9:"dashboard";a:3:{s:5:"views";i:14;s:13:"last_accessed";s:19:"2018-02-15 09:07:41";s:14:"first_accessed";s:19:"2018-02-14 08:18:56";}s:14:"settings_basic";a:3:{s:5:"views";i:1;s:13:"last_accessed";s:19:"2018-02-14 08:28:16";s:14:"first_accessed";s:19:"2018-02-14 08:28:16";}}', 'yes'),
(556, 'wpgmza_google_maps_api_key', 'AIzaSyDjDRtN1u3CWvWRyjxLt_JghLTeL-cEj1E', 'yes'),
(559, 'WPGMZA_SETTINGS', 'a:10:{s:24:"map_default_starting_lat";s:17:"43.31270203694456";s:24:"map_default_starting_lng";s:18:"-8.272200467039625";s:18:"map_default_height";s:3:"400";s:17:"map_default_width";s:3:"400";s:16:"map_default_zoom";i:14;s:20:"map_default_max_zoom";i:1;s:16:"map_default_type";i:1;s:21:"map_default_alignment";i:2;s:22:"map_default_width_type";s:2:"\\%";s:23:"map_default_height_type";s:2:"px";}', 'yes'),
(567, '_transient_is_multi_author', '0', 'yes'),
(572, '_site_transient_timeout_theme_roots', '1518687243', 'no'),
(573, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(575, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/es_ES/wordpress-4.9.4.zip";s:6:"locale";s:5:"es_ES";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/es_ES/wordpress-4.9.4.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.4";s:7:"version";s:5:"4.9.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.4-partial-1.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.4";s:7:"version";s:5:"4.9.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.1";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/es_ES/wordpress-4.9.4.zip";s:6:"locale";s:5:"es_ES";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/es_ES/wordpress-4.9.4.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.4";s:7:"version";s:5:"4.9.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1518685460;s:15:"version_checked";s:5:"4.9.1";s:12:"translations";a:0:{}}', 'no'),
(576, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1518685467;s:7:"checked";a:3:{s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(577, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1518685653;s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:5:"4.0.1";s:41:"google-maps-widget/google-maps-widget.php";s:4:"3.80";s:9:"hello.php";s:3:"1.6";s:31:"wp-google-maps/wpGoogleMaps.php";s:6:"6.4.09";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.4";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:3:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:18:"google-maps-widget";s:8:"language";s:5:"es_ES";s:7:"version";s:4:"3.80";s:7:"updated";s:19:"2018-01-27 09:34:27";s:7:"package";s:84:"https://downloads.wordpress.org/translation/plugin/google-maps-widget/3.80/es_ES.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:11:"hello-dolly";s:8:"language";s:5:"es_ES";s:7:"version";s:3:"1.6";s:7:"updated";s:19:"2017-09-22 18:05:32";s:7:"package";s:76:"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.6/es_ES.zip";s:10:"autoupdate";b:1;}i:2;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:14:"wp-google-maps";s:8:"language";s:5:"es_ES";s:7:"version";s:6:"6.4.09";s:7:"updated";s:19:"2017-10-13 06:50:52";s:7:"package";s:82:"https://downloads.wordpress.org/translation/plugin/wp-google-maps/6.4.09/es_ES.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:3:{s:41:"google-maps-widget/google-maps-widget.php";O:8:"stdClass":9:{s:2:"id";s:32:"w.org/plugins/google-maps-widget";s:4:"slug";s:18:"google-maps-widget";s:6:"plugin";s:41:"google-maps-widget/google-maps-widget.php";s:11:"new_version";s:4:"3.80";s:3:"url";s:49:"https://wordpress.org/plugins/google-maps-widget/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/google-maps-widget.3.80.zip";s:5:"icons";a:3:{s:2:"1x";s:71:"https://ps.w.org/google-maps-widget/assets/icon-128x128.png?rev=1566956";s:2:"2x";s:71:"https://ps.w.org/google-maps-widget/assets/icon-256x256.png?rev=1625687";s:7:"default";s:71:"https://ps.w.org/google-maps-widget/assets/icon-256x256.png?rev=1625687";}s:7:"banners";a:3:{s:2:"2x";s:74:"https://ps.w.org/google-maps-widget/assets/banner-1544x500.png?rev=1653423";s:2:"1x";s:73:"https://ps.w.org/google-maps-widget/assets/banner-772x250.png?rev=1653423";s:7:"default";s:74:"https://ps.w.org/google-maps-widget/assets/banner-1544x500.png?rev=1653423";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:31:"wp-google-maps/wpGoogleMaps.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/wp-google-maps";s:4:"slug";s:14:"wp-google-maps";s:6:"plugin";s:31:"wp-google-maps/wpGoogleMaps.php";s:11:"new_version";s:6:"6.4.09";s:3:"url";s:45:"https://wordpress.org/plugins/wp-google-maps/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/wp-google-maps.zip";s:5:"icons";a:3:{s:2:"1x";s:66:"https://ps.w.org/wp-google-maps/assets/icon-128x128.png?rev=970398";s:2:"2x";s:66:"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398";s:7:"default";s:66:"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398";}s:7:"banners";a:2:{s:2:"1x";s:68:"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293";s:7:"default";s:68:"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(578, '_transient_timeout_plugin_slugs', '1518772054', 'no'),
(579, '_transient_plugin_slugs', 'a:4:{i:0;s:19:"akismet/akismet.php";i:1;s:41:"google-maps-widget/google-maps-widget.php";i:2;s:9:"hello.php";i:3;s:31:"wp-google-maps/wpGoogleMaps.php";}', 'no'),
(580, '_transient_twentyseventeen_categories', '1', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(11, 9, '_wp_trash_meta_status', 'publish'),
(12, 9, '_wp_trash_meta_time', '1516621637'),
(13, 10, '_wp_trash_meta_status', 'publish'),
(14, 10, '_wp_trash_meta_time', '1516621673'),
(15, 11, '_wp_trash_meta_status', 'publish'),
(16, 11, '_wp_trash_meta_time', '1516621921'),
(24, 14, '_wp_trash_meta_status', 'publish'),
(25, 14, '_wp_trash_meta_time', '1516622223'),
(30, 15, '_edit_lock', '1516622425:1'),
(38, 15, '_wp_trash_meta_status', 'publish'),
(39, 15, '_wp_trash_meta_time', '1516622425'),
(40, 18, '_wp_attached_file', '2018/01/prueba-1.jpg'),
(41, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2018/01/prueba-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"prueba-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"prueba-1-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"prueba-1-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"prueba-1-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"prueba-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(42, 19, '_wp_attached_file', '2018/01/prueba-2.jpg'),
(43, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2018/01/prueba-2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"prueba-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"prueba-2-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"prueba-2-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"prueba-2-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"prueba-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(44, 20, '_wp_attached_file', '2018/01/cropped-prueba-1.jpg'),
(45, 20, '_wp_attachment_context', 'custom-header'),
(46, 20, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:28:"2018/01/cropped-prueba-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"cropped-prueba-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"cropped-prueba-1-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"cropped-prueba-1-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"cropped-prueba-1-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:28:"cropped-prueba-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:18;}'),
(47, 20, '_wp_attachment_custom_header_last_used_twentyseventeen', '1516623601'),
(48, 20, '_wp_attachment_is_custom_header', 'twentyseventeen'),
(49, 21, '_wp_trash_meta_status', 'publish'),
(50, 21, '_wp_trash_meta_time', '1516623601'),
(51, 22, '_wp_attached_file', '2018/01/cropped-prueba-2.jpg'),
(52, 22, '_wp_attachment_context', 'custom-header'),
(53, 22, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:28:"2018/01/cropped-prueba-2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"cropped-prueba-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"cropped-prueba-2-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"cropped-prueba-2-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"cropped-prueba-2-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:28:"cropped-prueba-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:19;}'),
(54, 22, '_wp_attachment_custom_header_last_used_twentyseventeen', '1516623634'),
(55, 22, '_wp_attachment_is_custom_header', 'twentyseventeen'),
(56, 23, '_wp_trash_meta_status', 'publish'),
(57, 23, '_wp_trash_meta_time', '1516623634'),
(58, 24, '_wp_trash_meta_status', 'publish'),
(59, 24, '_wp_trash_meta_time', '1516623713'),
(60, 2, '_wp_trash_meta_status', 'publish'),
(61, 2, '_wp_trash_meta_time', '1516623747'),
(62, 2, '_wp_desired_post_slug', 'pagina-ejemplo'),
(63, 26, '_edit_last', '1'),
(64, 26, '_edit_lock', '1517831029:1'),
(65, 28, '_edit_last', '1'),
(66, 28, '_edit_lock', '1516623737:1'),
(67, 30, '_edit_last', '1'),
(68, 30, '_edit_lock', '1516623754:1'),
(69, 32, '_edit_last', '1'),
(70, 32, '_edit_lock', '1516623761:1'),
(71, 34, '_edit_last', '1'),
(72, 34, '_edit_lock', '1516623901:1'),
(73, 36, '_wp_trash_meta_status', 'publish'),
(74, 36, '_wp_trash_meta_time', '1516623987'),
(75, 37, '_wp_trash_meta_status', 'publish'),
(76, 37, '_wp_trash_meta_time', '1516623996'),
(77, 38, '_wp_trash_meta_status', 'publish'),
(78, 38, '_wp_trash_meta_time', '1516624001'),
(79, 39, '_wp_trash_meta_status', 'publish'),
(80, 39, '_wp_trash_meta_time', '1516624027'),
(81, 40, '_edit_last', '1'),
(82, 40, '_edit_lock', '1516874810:1'),
(83, 42, '_menu_item_type', 'post_type'),
(84, 42, '_menu_item_menu_item_parent', '0'),
(85, 42, '_menu_item_object_id', '40'),
(86, 42, '_menu_item_object', 'page'),
(87, 42, '_menu_item_target', ''),
(88, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(89, 42, '_menu_item_xfn', ''),
(90, 42, '_menu_item_url', ''),
(92, 43, '_menu_item_type', 'post_type'),
(93, 43, '_menu_item_menu_item_parent', '0'),
(94, 43, '_menu_item_object_id', '34'),
(95, 43, '_menu_item_object', 'page'),
(96, 43, '_menu_item_target', ''),
(97, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(98, 43, '_menu_item_xfn', ''),
(99, 43, '_menu_item_url', ''),
(137, 48, '_wp_trash_meta_status', 'publish'),
(138, 48, '_wp_trash_meta_time', '1516624514'),
(139, 49, '_edit_last', '1'),
(140, 49, '_edit_lock', '1517384226:1'),
(141, 51, '_edit_last', '1'),
(142, 51, '_edit_lock', '1518436765:1'),
(143, 53, '_menu_item_type', 'post_type'),
(144, 53, '_menu_item_menu_item_parent', '0'),
(145, 53, '_menu_item_object_id', '51'),
(146, 53, '_menu_item_object', 'page'),
(147, 53, '_menu_item_target', ''),
(148, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(149, 53, '_menu_item_xfn', ''),
(150, 53, '_menu_item_url', ''),
(160, 56, '_wp_trash_meta_status', 'publish'),
(161, 56, '_wp_trash_meta_time', '1516871327'),
(162, 57, '_edit_lock', '1516871395:1'),
(163, 57, '_wp_trash_meta_status', 'publish'),
(164, 57, '_wp_trash_meta_time', '1516871396'),
(172, 59, '_wp_trash_meta_status', 'publish'),
(173, 59, '_wp_trash_meta_time', '1516871658'),
(175, 61, '_edit_last', '1'),
(176, 61, '_edit_lock', '1518597023:1'),
(178, 63, '_wp_trash_meta_status', 'publish'),
(179, 63, '_wp_trash_meta_time', '1516871747'),
(180, 65, '_menu_item_type', 'post_type'),
(181, 65, '_menu_item_menu_item_parent', '0'),
(182, 65, '_menu_item_object_id', '61'),
(183, 65, '_menu_item_object', 'page'),
(184, 65, '_menu_item_target', ''),
(185, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(186, 65, '_menu_item_xfn', ''),
(187, 65, '_menu_item_url', ''),
(188, 64, '_wp_trash_meta_status', 'publish'),
(189, 64, '_wp_trash_meta_time', '1516871804'),
(190, 67, '_wp_attached_file', '2018/01/Pandora-Maps.png'),
(191, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:713;s:6:"height";i:353;s:4:"file";s:24:"2018/01/Pandora-Maps.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Pandora-Maps-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"Pandora-Maps-300x149.png";s:5:"width";i:300;s:6:"height";i:149;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:24:"Pandora-Maps-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(192, 71, '_wp_trash_meta_status', 'publish'),
(193, 71, '_wp_trash_meta_time', '1516873096'),
(194, 72, '_wp_trash_meta_status', 'publish'),
(195, 72, '_wp_trash_meta_time', '1516873164'),
(196, 32, '_wp_trash_meta_status', 'publish'),
(197, 32, '_wp_trash_meta_time', '1516873207'),
(198, 32, '_wp_desired_post_slug', 'conocenos'),
(199, 73, '_wp_trash_meta_status', 'publish'),
(200, 73, '_wp_trash_meta_time', '1516873230'),
(201, 74, '_wp_attached_file', '2018/01/1.jpg'),
(202, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:259;s:6:"height";i:194;s:4:"file";s:13:"2018/01/1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:13:"1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(203, 75, '_wp_attached_file', '2018/01/2.jpg'),
(204, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:13:"2018/01/2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:13:"2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(205, 76, '_wp_attached_file', '2018/01/3.jpg'),
(206, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:380;s:4:"file";s:13:"2018/01/3.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"3-300x238.jpg";s:5:"width";i:300;s:6:"height";i:238;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:13:"3-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(207, 77, '_wp_attached_file', '2018/01/4.jpg'),
(208, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:350;s:6:"height";i:250;s:4:"file";s:13:"2018/01/4.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"4-300x214.jpg";s:5:"width";i:300;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:13:"4-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(209, 78, '_wp_attached_file', '2018/01/5.jpg'),
(210, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:406;s:6:"height";i:280;s:4:"file";s:13:"2018/01/5.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"5-300x207.jpg";s:5:"width";i:300;s:6:"height";i:207;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:13:"5-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(211, 79, '_wp_attached_file', '2018/01/6.jpg'),
(212, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:13:"2018/01/6.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:13:"6-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(213, 80, '_wp_attached_file', '2018/01/7.jpg'),
(214, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:705;s:6:"height";i:415;s:4:"file";s:13:"2018/01/7.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"7-300x177.jpg";s:5:"width";i:300;s:6:"height";i:177;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:13:"7-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(215, 81, '_wp_attached_file', '2018/01/8.jpg'),
(216, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:275;s:6:"height";i:183;s:4:"file";s:13:"2018/01/8.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:13:"8-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(217, 82, '_wp_attached_file', '2018/01/9.jpg'),
(218, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:534;s:4:"file";s:13:"2018/01/9.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"9-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"9-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"9-768x513.jpg";s:5:"width";i:768;s:6:"height";i:513;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:13:"9-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(219, 83, '_wp_attached_file', '2018/01/10.jpg'),
(220, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:14:"2018/01/10.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"10-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:14:"10-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(221, 84, '_wp_attached_file', '2018/01/11.jpg'),
(222, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2953;s:6:"height";i:1347;s:4:"file";s:14:"2018/01/11.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"11-300x137.jpg";s:5:"width";i:300;s:6:"height";i:137;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:14:"11-768x350.jpg";s:5:"width";i:768;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:15:"11-1024x467.jpg";s:5:"width";i:1024;s:6:"height";i:467;s:9:"mime-type";s:10:"image/jpeg";}s:30:"twentyseventeen-featured-image";a:4:{s:4:"file";s:16:"11-2000x1200.jpg";s:5:"width";i:2000;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:14:"11-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(223, 85, '_wp_attached_file', '2018/01/carro.jpg'),
(224, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:196;s:6:"height";i:61;s:4:"file";s:17:"2018/01/carro.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"carro-150x61.jpg";s:5:"width";i:150;s:6:"height";i:61;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:16:"carro-100x61.jpg";s:5:"width";i:100;s:6:"height";i:61;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(225, 90, '_edit_last', '1'),
(226, 90, '_edit_lock', '1517831537:1'),
(239, 96, '_edit_last', '1'),
(240, 96, '_edit_lock', '1517228832:1'),
(241, 96, 'Temperatura:', '17'),
(250, 90, 'Pan s/sal Rustico', '1.15€'),
(251, 90, 'Pan Rustico Uno', '1.15€'),
(252, 90, 'Pan Rustico Dos', '1.90€'),
(253, 90, '2 Pan Baguette', '1.00€'),
(254, 90, '3 Panes s/sal', '1.75€'),
(255, 90, 'Pan Chapata', '0.70€'),
(256, 90, 'Pan Chapata 2', '2.00€'),
(257, 90, 'Pan Tostadas Uno', '1.50€'),
(258, 90, 'Pan Tostadas Dos', '2.00€'),
(259, 90, 'Pan Omega', '1.20€'),
(260, 90, 'Pan de Pipas', '2.15€'),
(282, 96, '_wp_trash_meta_status', 'publish'),
(283, 96, '_wp_trash_meta_time', '1517383448'),
(284, 96, '_wp_desired_post_slug', 'lunes-anterior-a-s-blas'),
(294, 109, '_edit_last', '1'),
(295, 109, '_edit_lock', '1518439396:1'),
(296, 109, 'Precio', '2.15€'),
(299, 111, '_edit_last', '1'),
(300, 111, '_edit_lock', '1518439384:1'),
(301, 111, 'Precio', '1.20€'),
(304, 113, '_edit_last', '1'),
(305, 113, '_edit_lock', '1518439372:1'),
(306, 113, 'Pan Tostadas Dos', '2.00€'),
(311, 115, '_edit_last', '1'),
(312, 115, '_edit_lock', '1518439362:1'),
(313, 115, 'Pan Tostadas Uno', '1.50€'),
(316, 117, '_edit_last', '1'),
(317, 117, '_edit_lock', '1518439349:1'),
(318, 117, 'Precio', '1.95€'),
(321, 119, '_edit_last', '1'),
(322, 119, '_edit_lock', '1518439333:1'),
(323, 119, 'Precio', '0.70€'),
(326, 121, '_edit_last', '1'),
(327, 121, '_edit_lock', '1518439322:1'),
(328, 121, 'Precio', '1.75€'),
(345, 123, '_edit_last', '1'),
(346, 123, '_edit_lock', '1518439312:1'),
(347, 123, 'Precio', '1.00€'),
(350, 125, '_edit_last', '1'),
(351, 125, '_edit_lock', '1518439302:1'),
(352, 125, 'Precio', '1.90€'),
(355, 127, '_edit_last', '1'),
(356, 127, '_edit_lock', '1518439292:1'),
(357, 127, 'Precio', '1.15€'),
(360, 129, '_edit_last', '1'),
(361, 129, '_edit_lock', '1518439279:1'),
(362, 129, 'Precio', '1.15€'),
(365, 131, '_wp_trash_meta_status', 'publish'),
(366, 131, '_wp_trash_meta_time', '1517384097'),
(367, 132, '_menu_item_type', 'taxonomy'),
(368, 132, '_menu_item_menu_item_parent', '0'),
(369, 132, '_menu_item_object_id', '3'),
(370, 132, '_menu_item_object', 'category'),
(371, 132, '_menu_item_target', ''),
(372, 132, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(373, 132, '_menu_item_xfn', ''),
(374, 132, '_menu_item_url', ''),
(376, 133, '_wp_trash_meta_status', 'publish'),
(377, 133, '_wp_trash_meta_time', '1517384665'),
(378, 134, '_wp_trash_meta_status', 'publish'),
(379, 134, '_wp_trash_meta_time', '1517384690'),
(380, 135, '_wp_trash_meta_status', 'publish'),
(381, 135, '_wp_trash_meta_time', '1517385038'),
(388, 137, '_menu_item_type', 'custom'),
(389, 137, '_menu_item_menu_item_parent', '42'),
(390, 137, '_menu_item_object_id', '137'),
(391, 137, '_menu_item_object', 'custom'),
(392, 137, '_menu_item_target', ''),
(393, 137, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(394, 137, '_menu_item_xfn', ''),
(395, 137, '_menu_item_url', 'http://localhost/wordpress/index.php/tag/oferta/'),
(457, 90, '_wp_trash_meta_status', 'publish'),
(458, 90, '_wp_trash_meta_time', '1517832312'),
(459, 90, '_wp_desired_post_slug', 'pan-s-sal-rustico'),
(476, 149, '_menu_item_type', 'custom'),
(477, 149, '_menu_item_menu_item_parent', '42'),
(478, 149, '_menu_item_object_id', '149'),
(479, 149, '_menu_item_object', 'custom'),
(480, 149, '_menu_item_target', ''),
(481, 149, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(482, 149, '_menu_item_xfn', ''),
(483, 149, '_menu_item_url', 'http://localhost/wordpress/index.php/tag/panes-caseros/'),
(485, 150, '_menu_item_type', 'custom'),
(486, 150, '_menu_item_menu_item_parent', '42'),
(487, 150, '_menu_item_object_id', '150'),
(488, 150, '_menu_item_object', 'custom'),
(489, 150, '_menu_item_target', ''),
(490, 150, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(491, 150, '_menu_item_xfn', ''),
(492, 150, '_menu_item_url', 'http://localhost/wordpress/index.php/tag/panes-variados/'),
(493, 51, '_wp_page_template', 'miplantilla.php'),
(494, 164, '_edit_lock', '1518595134:1'),
(495, 164, '_wp_trash_meta_status', 'publish'),
(496, 164, '_wp_trash_meta_time', '1518595135'),
(498, 165, '_customize_restore_dismissed', '1'),
(499, 166, '_wp_trash_meta_status', 'publish'),
(500, 166, '_wp_trash_meta_time', '1518596606'),
(501, 61, '_wp_page_template', 'default'),
(502, 168, '_edit_lock', '1518596787:1'),
(503, 168, '_wp_trash_meta_status', 'publish'),
(504, 168, '_wp_trash_meta_time', '1518596787'),
(505, 169, '_wp_trash_meta_status', 'publish'),
(506, 169, '_wp_trash_meta_time', '1518596831'),
(507, 170, '_wp_trash_meta_status', 'publish'),
(508, 170, '_wp_trash_meta_time', '1518597058'),
(509, 171, '_wp_trash_meta_status', 'publish'),
(510, 171, '_wp_trash_meta_time', '1518597092'),
(511, 34, '_wp_trash_meta_status', 'publish'),
(512, 34, '_wp_trash_meta_time', '1518597128'),
(513, 34, '_wp_desired_post_slug', 'contactanos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2018-01-15 12:19:21', '2018-01-15 12:19:21', 'Esta es una página de ejemplo, Es diferente a una entrada de un blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página Sobre mí para presentarse a los potenciales visitantes. Podría ser algo así:\n\n<blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Madrid, tengo perrazo llamado Juan y me encantan las piñas coladas (y que me pille un chaparrón)</blockquote>\n\n… o algo así:\n\n<blockquote>La empresa Calcetines XYZ se fundó en 1971, y ha estado produciendo calcetines de calidad para sus clientes desde entonces. Ubicada en Gothan, la empresa XYZ tiene más de 2.000 empleados e intenta ayudar en lo que puede para mejorar la vida en Gothan</blockquote>\n\nSi eres nuevo en WordPress deberías ir a <a href="http://localhost/wordpress/wp-admin/">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-ejemplo__trashed', '', '', '2018-01-22 12:22:27', '2018-01-22 12:22:27', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(9, 1, '2018-01-22 11:47:17', '2018-01-22 11:47:17', '{\n    "twentyseventeen::header_image": {\n        "value": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-panaderia-tienda.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 11:47:17"\n    },\n    "twentyseventeen::header_image_data": {\n        "value": {\n            "url": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-panaderia-tienda.jpg",\n            "thumbnail_url": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-panaderia-tienda.jpg",\n            "timestamp": 1516621593745,\n            "attachment_id": 8,\n            "width": 2000,\n            "height": 1199\n        },\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 11:47:17"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd8f69bc0-bfd8-4ac1-9ab2-bbfa52d6991b', '', '', '2018-01-22 11:47:17', '2018-01-22 11:47:17', '', 0, 'http://localhost/wordpress/index.php/2018/01/22/d8f69bc0-bfd8-4ac1-9ab2-bbfa52d6991b/', 0, 'customize_changeset', '', 0),
(10, 1, '2018-01-22 11:47:53', '2018-01-22 11:47:53', '{\n    "twentyseventeen::header_image_data": {\n        "value": {\n            "attachment_id": 8,\n            "url": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-panaderia-tienda.jpg",\n            "thumbnail_url": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-panaderia-tienda.jpg",\n            "alt_text": "",\n            "attachment_parent": 7,\n            "width": 2000,\n            "height": 1199,\n            "timestamp": [\n                "1516621637"\n            ]\n        },\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 11:47:53"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'de7812dd-36a9-47b0-90b9-007c5d6ab78e', '', '', '2018-01-22 11:47:53', '2018-01-22 11:47:53', '', 0, 'http://localhost/wordpress/index.php/2018/01/22/de7812dd-36a9-47b0-90b9-007c5d6ab78e/', 0, 'customize_changeset', '', 0),
(11, 1, '2018-01-22 11:52:01', '2018-01-22 11:52:01', '{\n    "twentyseventeen::header_image": {\n        "value": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-panaderia-tienda-1.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 11:52:01"\n    },\n    "twentyseventeen::header_image_data": {\n        "value": {\n            "url": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-panaderia-tienda-1.jpg",\n            "thumbnail_url": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-panaderia-tienda-1.jpg",\n            "timestamp": 1516621915388,\n            "attachment_id": 8,\n            "width": 2000,\n            "height": 998\n        },\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 11:52:01"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f2dfade9-1989-41fb-ab6f-fe0e128b2d24', '', '', '2018-01-22 11:52:01', '2018-01-22 11:52:01', '', 0, 'http://localhost/wordpress/index.php/2018/01/22/f2dfade9-1989-41fb-ab6f-fe0e128b2d24/', 0, 'customize_changeset', '', 0),
(14, 1, '2018-01-22 11:57:03', '2018-01-22 11:57:03', '{\n    "twentyseventeen::header_image": {\n        "value": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-panaderia-tienda1.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 11:57:03"\n    },\n    "twentyseventeen::header_image_data": {\n        "value": {\n            "url": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-panaderia-tienda1.jpg",\n            "thumbnail_url": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-panaderia-tienda1.jpg",\n            "timestamp": 1516622218733,\n            "attachment_id": 13,\n            "width": 2000,\n            "height": 1200\n        },\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 11:57:03"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5510debe-1597-4dcc-8457-cf2b17ca1387', '', '', '2018-01-22 11:57:03', '2018-01-22 11:57:03', '', 0, 'http://localhost/wordpress/index.php/2018/01/22/5510debe-1597-4dcc-8457-cf2b17ca1387/', 0, 'customize_changeset', '', 0),
(15, 1, '2018-01-22 12:00:25', '2018-01-22 12:00:25', '{\n    "twentyseventeen::header_image": {\n        "value": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-panaderia-tienda1-1.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 12:00:25"\n    },\n    "twentyseventeen::header_image_data": {\n        "value": {\n            "url": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-panaderia-tienda1-1.jpg",\n            "thumbnail_url": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-panaderia-tienda1-1.jpg",\n            "timestamp": 1516622422583,\n            "attachment_id": 17,\n            "width": 2000,\n            "height": 985\n        },\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 12:00:25"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8492d30c-a558-4149-b00e-7a3e0355cfb4', '', '', '2018-01-22 12:00:25', '2018-01-22 12:00:25', '', 0, 'http://localhost/wordpress/?p=15', 0, 'customize_changeset', '', 0),
(18, 1, '2018-01-22 12:19:27', '2018-01-22 12:19:27', '', 'prueba 1', '', 'inherit', 'open', 'closed', '', 'prueba-1', '', '', '2018-01-22 12:19:27', '2018-01-22 12:19:27', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/01/prueba-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-01-22 12:19:28', '2018-01-22 12:19:28', '', 'prueba 2', '', 'inherit', 'open', 'closed', '', 'prueba-2', '', '', '2018-01-22 12:19:28', '2018-01-22 12:19:28', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/01/prueba-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-01-22 12:19:56', '2018-01-22 12:19:56', '', 'cropped-prueba-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-prueba-1-jpg', '', '', '2018-01-22 12:19:56', '2018-01-22 12:19:56', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/01/cropped-prueba-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-01-22 12:20:01', '2018-01-22 12:20:01', '{\n    "twentyseventeen::header_image": {\n        "value": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-prueba-1.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 12:20:01"\n    },\n    "twentyseventeen::header_image_data": {\n        "value": {\n            "url": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-prueba-1.jpg",\n            "thumbnail_url": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-prueba-1.jpg",\n            "timestamp": 1516623597334,\n            "attachment_id": 20,\n            "width": 2000,\n            "height": 1200\n        },\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 12:20:01"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f79f140c-f7a4-439a-92bf-7bf9465f66fb', '', '', '2018-01-22 12:20:01', '2018-01-22 12:20:01', '', 0, 'http://localhost/wordpress/index.php/2018/01/22/f79f140c-f7a4-439a-92bf-7bf9465f66fb/', 0, 'customize_changeset', '', 0),
(22, 1, '2018-01-22 12:20:31', '2018-01-22 12:20:31', '', 'cropped-prueba-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-prueba-2-jpg', '', '', '2018-01-22 12:20:31', '2018-01-22 12:20:31', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/01/cropped-prueba-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-01-22 12:20:34', '2018-01-22 12:20:34', '{\n    "twentyseventeen::header_image": {\n        "value": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-prueba-2.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 12:20:34"\n    },\n    "twentyseventeen::header_image_data": {\n        "value": {\n            "url": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-prueba-2.jpg",\n            "thumbnail_url": "http://localhost/wordpress/wp-content/uploads/2018/01/cropped-prueba-2.jpg",\n            "timestamp": 1516623631981,\n            "attachment_id": 22,\n            "width": 2000,\n            "height": 1200\n        },\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 12:20:34"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0676d243-3e96-4c6a-b167-9c96d9ff9c6f', '', '', '2018-01-22 12:20:34', '2018-01-22 12:20:34', '', 0, 'http://localhost/wordpress/index.php/2018/01/22/0676d243-3e96-4c6a-b167-9c96d9ff9c6f/', 0, 'customize_changeset', '', 0),
(24, 1, '2018-01-22 12:21:52', '2018-01-22 12:21:52', '{\n    "blogname": {\n        "value": "",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 12:21:52"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5060266e-c04b-4a1f-95f8-8d6b135aac7e', '', '', '2018-01-22 12:21:52', '2018-01-22 12:21:52', '', 0, 'http://localhost/wordpress/index.php/2018/01/22/5060266e-c04b-4a1f-95f8-8d6b135aac7e/', 0, 'customize_changeset', '', 0),
(25, 1, '2018-01-22 12:22:27', '2018-01-22 12:22:27', 'Esta es una página de ejemplo, Es diferente a una entrada de un blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página Sobre mí para presentarse a los potenciales visitantes. Podría ser algo así:\n\n<blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Madrid, tengo perrazo llamado Juan y me encantan las piñas coladas (y que me pille un chaparrón)</blockquote>\n\n… o algo así:\n\n<blockquote>La empresa Calcetines XYZ se fundó en 1971, y ha estado produciendo calcetines de calidad para sus clientes desde entonces. Ubicada en Gothan, la empresa XYZ tiene más de 2.000 empleados e intenta ayudar en lo que puede para mejorar la vida en Gothan</blockquote>\n\nSi eres nuevo en WordPress deberías ir a <a href="http://localhost/wordpress/wp-admin/">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-01-22 12:22:27', '2018-01-22 12:22:27', '', 2, 'http://localhost/wordpress/index.php/2018/01/22/2-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-01-22 12:24:23', '2018-01-22 12:24:23', '<p style="text-align: center;"><span style="color: #ff0000;">OFERTA 24H!!</span></p>', 'Oferta', '', 'publish', 'closed', 'closed', '', 'oferta', '', '', '2018-01-25 10:11:24', '2018-01-25 10:11:24', '', 0, 'http://localhost/wordpress/?page_id=26', 0, 'page', '', 0),
(27, 1, '2018-01-22 12:24:23', '2018-01-22 12:24:23', '', 'Oferta', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-22 12:24:23', '2018-01-22 12:24:23', '', 26, 'http://localhost/wordpress/index.php/2018/01/22/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-01-22 12:24:39', '2018-01-22 12:24:39', '', 'Panes Variados', '', 'publish', 'closed', 'closed', '', 'panes-variados', '', '', '2018-01-22 12:24:39', '2018-01-22 12:24:39', '', 0, 'http://localhost/wordpress/?page_id=28', 0, 'page', '', 0),
(29, 1, '2018-01-22 12:24:39', '2018-01-22 12:24:39', '', 'Panes Variados', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-01-22 12:24:39', '2018-01-22 12:24:39', '', 28, 'http://localhost/wordpress/index.php/2018/01/22/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-01-22 12:24:52', '2018-01-22 12:24:52', '', 'Panes Caseros', '', 'publish', 'closed', 'closed', '', 'panes-caseros', '', '', '2018-01-22 12:24:52', '2018-01-22 12:24:52', '', 0, 'http://localhost/wordpress/?page_id=30', 0, 'page', '', 0),
(31, 1, '2018-01-22 12:24:52', '2018-01-22 12:24:52', '', 'Panes Caseros', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-01-22 12:24:52', '2018-01-22 12:24:52', '', 30, 'http://localhost/wordpress/index.php/2018/01/22/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-01-22 12:25:04', '2018-01-22 12:25:04', '', 'Conocenos', '', 'trash', 'closed', 'closed', '', 'conocenos__trashed', '', '', '2018-01-25 09:40:07', '2018-01-25 09:40:07', '', 0, 'http://localhost/wordpress/?page_id=32', 0, 'page', '', 0),
(33, 1, '2018-01-22 12:25:04', '2018-01-22 12:25:04', '', 'Conocenos', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-01-22 12:25:04', '2018-01-22 12:25:04', '', 32, 'http://localhost/wordpress/index.php/2018/01/22/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-01-22 12:25:14', '2018-01-22 12:25:14', '', 'Contactanos', '', 'trash', 'closed', 'closed', '', 'contactanos__trashed', '', '', '2018-02-14 08:32:08', '2018-02-14 08:32:08', '', 0, 'http://localhost/wordpress/?page_id=34', 0, 'page', '', 0),
(35, 1, '2018-01-22 12:25:14', '2018-01-22 12:25:14', '', 'Contactanos', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-01-22 12:25:14', '2018-01-22 12:25:14', '', 34, 'http://localhost/wordpress/index.php/2018/01/22/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-01-22 12:26:27', '2018-01-22 12:26:27', '{\n    "twentyseventeen::colorscheme": {\n        "value": "dark",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 12:26:27"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9d91f548-66a1-427f-baea-cb6994787ebc', '', '', '2018-01-22 12:26:27', '2018-01-22 12:26:27', '', 0, 'http://localhost/wordpress/index.php/2018/01/22/9d91f548-66a1-427f-baea-cb6994787ebc/', 0, 'customize_changeset', '', 0),
(37, 1, '2018-01-22 12:26:36', '2018-01-22 12:26:36', '{\n    "twentyseventeen::colorscheme": {\n        "value": "light",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 12:26:36"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a1144d09-bcc7-4c9c-a72d-412ecfb73bc1', '', '', '2018-01-22 12:26:36', '2018-01-22 12:26:36', '', 0, 'http://localhost/wordpress/index.php/2018/01/22/a1144d09-bcc7-4c9c-a72d-412ecfb73bc1/', 0, 'customize_changeset', '', 0),
(38, 1, '2018-01-22 12:26:41', '2018-01-22 12:26:41', '{\n    "twentyseventeen::colorscheme": {\n        "value": "dark",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 12:26:41"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0de6810e-dd34-42b6-ad82-580cb495ac43', '', '', '2018-01-22 12:26:41', '2018-01-22 12:26:41', '', 0, 'http://localhost/wordpress/index.php/2018/01/22/0de6810e-dd34-42b6-ad82-580cb495ac43/', 0, 'customize_changeset', '', 0),
(39, 1, '2018-01-22 12:27:07', '2018-01-22 12:27:07', '{\n    "blogname": {\n        "value": "Pandora",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 12:27:07"\n    },\n    "blogdescription": {\n        "value": "",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 12:27:07"\n    },\n    "twentyseventeen::colorscheme": {\n        "value": "dark",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 12:27:07"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0aa009f8-caea-471c-8179-6fdb57dad0ad', '', '', '2018-01-22 12:27:07', '2018-01-22 12:27:07', '', 0, 'http://localhost/wordpress/index.php/2018/01/22/0aa009f8-caea-471c-8179-6fdb57dad0ad/', 0, 'customize_changeset', '', 0),
(40, 1, '2018-01-22 12:31:57', '2018-01-22 12:31:57', '', 'Tipos de Panes', '', 'publish', 'closed', 'closed', '', 'tipos-de-panes', '', '', '2018-01-25 10:08:55', '2018-01-25 10:08:55', '', 0, 'http://localhost/wordpress/?page_id=40', 0, 'page', '', 0),
(41, 1, '2018-01-22 12:31:57', '2018-01-22 12:31:57', '', 'Tipos de Panes', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-01-22 12:31:57', '2018-01-22 12:31:57', '', 40, 'http://localhost/wordpress/index.php/2018/01/22/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-01-22 12:33:26', '2018-01-22 12:33:26', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2018-02-05 12:12:29', '2018-02-05 12:12:29', '', 0, 'http://localhost/wordpress/?p=42', 2, 'nav_menu_item', '', 0),
(43, 1, '2018-01-22 12:33:27', '2018-01-22 12:33:27', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2018-02-05 12:12:29', '2018-02-05 12:12:29', '', 0, 'http://localhost/wordpress/?p=43', 8, 'nav_menu_item', '', 0),
(48, 1, '2018-01-22 12:35:14', '2018-01-22 12:35:14', '{\n    "twentyseventeen::nav_menu_locations[top]": {\n        "value": 2,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 12:35:14"\n    },\n    "twentyseventeen::nav_menu_locations[social]": {\n        "value": 0,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 12:35:14"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '272e757a-d589-4c54-af98-90e2934df243', '', '', '2018-01-22 12:35:14', '2018-01-22 12:35:14', '', 0, 'http://localhost/wordpress/index.php/2018/01/22/272e757a-d589-4c54-af98-90e2934df243/', 0, 'customize_changeset', '', 0),
(49, 1, '2018-01-22 12:36:15', '2018-01-22 12:36:15', '', 'Panes', '', 'publish', 'closed', 'closed', '', 'panes', '', '', '2018-01-22 12:36:15', '2018-01-22 12:36:15', '', 0, 'http://localhost/wordpress/?page_id=49', 0, 'page', '', 0),
(50, 1, '2018-01-22 12:36:15', '2018-01-22 12:36:15', '', 'Panes', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-01-22 12:36:15', '2018-01-22 12:36:15', '', 49, 'http://localhost/wordpress/index.php/2018/01/22/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-01-22 12:36:25', '2018-01-22 12:36:25', '', 'Clientes Registrados', '', 'publish', 'closed', 'closed', '', 'clientes-registrados', '', '', '2018-02-12 11:59:05', '2018-02-12 11:59:05', '', 0, 'http://localhost/wordpress/?page_id=51', 0, 'page', '', 0),
(52, 1, '2018-01-22 12:36:25', '2018-01-22 12:36:25', '', 'Clientes Registrados', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2018-01-22 12:36:25', '2018-01-22 12:36:25', '', 51, 'http://localhost/wordpress/index.php/2018/01/22/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-01-22 12:36:45', '2018-01-22 12:36:45', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2018-02-05 12:12:29', '2018-02-05 12:12:29', '', 0, 'http://localhost/wordpress/?p=53', 7, 'nav_menu_item', '', 0),
(56, 1, '2018-01-25 09:08:47', '2018-01-25 09:08:47', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "recent-posts-2",\n            "meta-2"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:08:47"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bf2559cb-08fa-414e-9da7-371f4ee7149c', '', '', '2018-01-25 09:08:47', '2018-01-25 09:08:47', '', 0, 'http://localhost/wordpress/index.php/2018/01/25/bf2559cb-08fa-414e-9da7-371f4ee7149c/', 0, 'customize_changeset', '', 0),
(57, 1, '2018-01-25 09:09:55', '2018-01-25 09:09:55', '{\n    "sidebars_widgets[wp_inactive_widgets]": {\n        "value": [\n            "meta-2"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:09:55"\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "recent-posts-2"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:09:55"\n    },\n    "sidebars_widgets[sidebar-2]": {\n        "value": [\n            "meta-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:09:55"\n    },\n    "widget_meta[4]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:09:55"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3f727137-5a43-4cce-a013-d76f2ca45642', '', '', '2018-01-25 09:09:55', '2018-01-25 09:09:55', '', 0, 'http://localhost/wordpress/?p=57', 0, 'customize_changeset', '', 0),
(59, 1, '2018-01-25 09:14:18', '2018-01-25 09:14:18', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "recent-posts-2",\n            "recent-posts-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:14:18"\n    },\n    "widget_recent-posts[4]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:14:18"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd2dea173-eff4-42da-b35c-c2c7d8bd523e', '', '', '2018-01-25 09:14:18', '2018-01-25 09:14:18', '', 0, 'http://localhost/wordpress/index.php/2018/01/25/d2dea173-eff4-42da-b35c-c2c7d8bd523e/', 0, 'customize_changeset', '', 0),
(61, 1, '2018-01-25 09:14:57', '2018-01-25 09:14:57', '¿Quienes somos?\r\n\r\nSomos una empresa llamada Pandora, con la que contamos con 24 empleados actualmente, que se dedican a vender nuestros panes en nuestras tiendas.\r\n\r\nNuestra empresa también se dedica a enviar y distribuir panes por todo Europa.\r\n\r\n¿Donde estamos ubicados?\r\n\r\nPandora, esta ubicada en el polígono industrial de Bergondo.\r\n\r\n¿Que materiales usamos y que hacemos con ellos?\r\n\r\nEn nuestra empresa los materiales para la creación de los panes son tanto recolectados como comprados en supermercados.\r\n\r\nUna vez hacemos el pan, nuestros repartidores lo llevan a las tiendas o bien los congelamos en la empresa para encargos o compras por Internet.', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2018-02-14 08:23:48', '2018-02-14 08:23:48', '', 0, 'http://localhost/wordpress/?page_id=61', 0, 'page', '', 0),
(62, 1, '2018-01-25 09:14:57', '2018-01-25 09:14:57', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-01-25 09:14:57', '2018-01-25 09:14:57', '', 61, 'http://localhost/wordpress/index.php/2018/01/25/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-01-25 09:15:47', '2018-01-25 09:15:47', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:15:47"\n    },\n    "page_on_front": {\n        "value": "61",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:15:47"\n    },\n    "page_for_posts": {\n        "value": "0",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:15:47"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0df4b5eb-9f77-48ad-947b-99481e62022a', '', '', '2018-01-25 09:15:47', '2018-01-25 09:15:47', '', 0, 'http://localhost/wordpress/index.php/2018/01/25/0df4b5eb-9f77-48ad-947b-99481e62022a/', 0, 'customize_changeset', '', 0),
(64, 1, '2018-01-25 09:16:43', '2018-01-25 09:16:43', '{\n    "nav_menu_item[42]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 40,\n            "object": "page",\n            "type": "post_type",\n            "type_label": "P\\u00e1gina",\n            "url": "http://localhost/wordpress/index.php/tipos-de-panes/",\n            "title": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 2,\n            "position": 2,\n            "status": "publish",\n            "original_title": "Tipos de Panes",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:16:43"\n    },\n    "nav_menu_item[47]": {\n        "value": {\n            "menu_item_parent": 42,\n            "object_id": 26,\n            "object": "page",\n            "type": "post_type",\n            "type_label": "P\\u00e1gina",\n            "url": "http://localhost/wordpress/index.php/oferta/",\n            "title": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 2,\n            "position": 3,\n            "status": "publish",\n            "original_title": "Oferta",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:16:43"\n    },\n    "nav_menu_item[46]": {\n        "value": {\n            "menu_item_parent": 42,\n            "object_id": 28,\n            "object": "page",\n            "type": "post_type",\n            "type_label": "P\\u00e1gina",\n            "url": "http://localhost/wordpress/index.php/panes-variados/",\n            "title": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 2,\n            "position": 4,\n            "status": "publish",\n            "original_title": "Panes Variados",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:16:43"\n    },\n    "nav_menu_item[45]": {\n        "value": {\n            "menu_item_parent": 42,\n            "object_id": 30,\n            "object": "page",\n            "type": "post_type",\n            "type_label": "P\\u00e1gina",\n            "url": "http://localhost/wordpress/index.php/panes-caseros/",\n            "title": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 2,\n            "position": 5,\n            "status": "publish",\n            "original_title": "Panes Caseros",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:16:43"\n    },\n    "nav_menu_item[44]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 32,\n            "object": "page",\n            "type": "post_type",\n            "type_label": "P\\u00e1gina",\n            "url": "http://localhost/wordpress/index.php/conocenos/",\n            "title": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 2,\n            "position": 6,\n            "status": "publish",\n            "original_title": "Conocenos",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:16:43"\n    },\n    "nav_menu_item[43]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 34,\n            "object": "page",\n            "type": "post_type",\n            "type_label": "P\\u00e1gina",\n            "url": "http://localhost/wordpress/index.php/contactanos/",\n            "title": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 2,\n            "position": 7,\n            "status": "publish",\n            "original_title": "Contactanos",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:16:43"\n    },\n    "nav_menu_item[54]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 49,\n            "object": "page",\n            "type": "post_type",\n            "type_label": "P\\u00e1gina",\n            "url": "http://localhost/wordpress/index.php/panes/",\n            "title": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 2,\n            "position": 8,\n            "status": "publish",\n            "original_title": "Panes",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:16:43"\n    },\n    "nav_menu_item[53]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 51,\n            "object": "page",\n            "type": "post_type",\n            "type_label": "P\\u00e1gina",\n            "url": "http://localhost/wordpress/index.php/clientes-registrados/",\n            "title": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 2,\n            "position": 9,\n            "status": "publish",\n            "original_title": "Clientes Registrados",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:16:43"\n    },\n    "nav_menu_item[-2331730922153309000]": {\n        "value": {\n            "object_id": 61,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "post_type",\n            "title": "Inicio",\n            "url": "http://localhost/wordpress/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Inicio",\n            "nav_menu_term_id": 2,\n            "_invalid": false,\n            "type_label": "P\\u00e1gina"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:16:43"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ac0db042-3a60-4c60-b639-c4e7f25ef2b0', '', '', '2018-01-25 09:16:43', '2018-01-25 09:16:43', '', 0, 'http://localhost/wordpress/index.php/2018/01/25/ac0db042-3a60-4c60-b639-c4e7f25ef2b0/', 0, 'customize_changeset', '', 0),
(65, 1, '2018-01-25 09:16:44', '2018-01-25 09:16:44', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2018-02-05 12:12:29', '2018-02-05 12:12:29', '', 0, 'http://localhost/wordpress/index.php/2018/01/25/65/', 1, 'nav_menu_item', '', 0),
(66, 1, '2018-01-25 09:30:34', '2018-01-25 09:30:34', '¿Quienes somos?\n\nSomos una empresa llamada Pandora, con la que contamos con 24 empleados actualmente, que se dedican a vender nuestros panes en nuestras tiendas.\n\nNuestra empresa también se dedica a enviar y distribuir panes por todo Europa.\n\n¿Donde estamos ubicados?\n\n<img class="alignnone size-medium wp-image-67" src="http://localhost/wordpress/wp-content/uploads/2018/01/Pandora-Maps-300x149.png" alt="" width="300" height="149" />\n\nPandora, esta ubicada en el polígono industrial de Bergondo.\n\n¿Que materiales usamos y que hacemos con ellos?\n\nEn nuestra empresa los materiales para la creación de los panes son tanto recolectados como comprados en supermercados.\n\nUna vez hacemos el pan, nuestros repartidores lo llevan a las tiendas o bien los congelamos  para los envios o re', 'Inicio', '', 'inherit', 'closed', 'closed', '', '61-autosave-v1', '', '', '2018-01-25 09:30:34', '2018-01-25 09:30:34', '', 61, 'http://localhost/wordpress/index.php/2018/01/25/61-autosave-v1/', 0, 'revision', '', 0),
(67, 1, '2018-01-25 09:24:06', '2018-01-25 09:24:06', '', 'Pandora Maps', '', 'inherit', 'open', 'closed', '', 'pandora-maps', '', '', '2018-01-25 09:24:06', '2018-01-25 09:24:06', '', 61, 'http://localhost/wordpress/wp-content/uploads/2018/01/Pandora-Maps.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2018-01-25 09:31:15', '2018-01-25 09:31:15', '¿Quienes somos?\r\n\r\nSomos una empresa llamada Pandora, con la que contamos con 24 empleados actualmente, que se dedican a vender nuestros panes en nuestras tiendas.\r\n\r\nNuestra empresa también se dedica a enviar y distribuir panes por todo Europa.\r\n\r\n¿Donde estamos ubicados?\r\n\r\n<img class="alignnone size-medium wp-image-67" src="http://localhost/wordpress/wp-content/uploads/2018/01/Pandora-Maps-300x149.png" alt="" width="300" height="149" />\r\n\r\nPandora, esta ubicada en el polígono industrial de Bergondo.\r\n\r\n¿Que materiales usamos y que hacemos con ellos?\r\n\r\nEn nuestra empresa los materiales para la creación de los panes son tanto recolectados como comprados en supermercados.\r\n\r\nUna vez hacemos el pan, nuestros repartidores lo llevan a las tiendas o bien los congelamos en la empresa para encargos o compras por Internet.', 'Inicio', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-01-25 09:31:15', '2018-01-25 09:31:15', '', 61, 'http://localhost/wordpress/index.php/2018/01/25/61-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-01-25 09:32:20', '2018-01-25 09:32:20', '¿Quienes somos?\r\n\r\nSomos una empresa llamada Pandora, con la que contamos con 24 empleados actualmente, que se dedican a vender nuestros panes en nuestras tiendas.\r\n\r\nNuestra empresa también se dedica a enviar y distribuir panes por todo Europa.\r\n\r\n¿Donde estamos ubicados?\r\n\r\n<img class="alignnone wp-image-67 size-full" src="http://localhost/wordpress/wp-content/uploads/2018/01/Pandora-Maps.png" alt="" width="713" height="353" />\r\n\r\nPandora, esta ubicada en el polígono industrial de Bergondo.\r\n\r\n¿Que materiales usamos y que hacemos con ellos?\r\n\r\nEn nuestra empresa los materiales para la creación de los panes son tanto recolectados como comprados en supermercados.\r\n\r\nUna vez hacemos el pan, nuestros repartidores lo llevan a las tiendas o bien los congelamos en la empresa para encargos o compras por Internet.', 'Inicio', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-01-25 09:32:20', '2018-01-25 09:32:20', '', 61, 'http://localhost/wordpress/index.php/2018/01/25/61-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-01-25 09:34:27', '2018-01-25 09:34:27', '¿Quienes somos?\r\n\r\nSomos una empresa llamada Pandora, con la que contamos con 24 empleados actualmente, que se dedican a vender nuestros panes en nuestras tiendas.\r\n\r\nNuestra empresa también se dedica a enviar y distribuir panes por todo Europa.\r\n\r\n¿Donde estamos ubicados?\r\n\r\n<a href="https://goo.gl/maps/LS9B3CdAhUC2"><img class="alignnone wp-image-67 size-full" src="http://localhost/wordpress/wp-content/uploads/2018/01/Pandora-Maps.png" alt="" width="713" height="353" /></a>\r\n\r\nPandora, esta ubicada en el polígono industrial de Bergondo.\r\n\r\n¿Que materiales usamos y que hacemos con ellos?\r\n\r\nEn nuestra empresa los materiales para la creación de los panes son tanto recolectados como comprados en supermercados.\r\n\r\nUna vez hacemos el pan, nuestros repartidores lo llevan a las tiendas o bien los congelamos en la empresa para encargos o compras por Internet.', 'Inicio', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-01-25 09:34:27', '2018-01-25 09:34:27', '', 61, 'http://localhost/wordpress/index.php/2018/01/25/61-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-01-25 09:38:16', '2018-01-25 09:38:16', '{\n    "sidebars_widgets[sidebar-2]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:38:16"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a95a3bcf-083c-49e3-a47b-518ecebd3f3a', '', '', '2018-01-25 09:38:16', '2018-01-25 09:38:16', '', 0, 'http://localhost/wordpress/index.php/2018/01/25/a95a3bcf-083c-49e3-a47b-518ecebd3f3a/', 0, 'customize_changeset', '', 0),
(72, 1, '2018-01-25 09:39:24', '2018-01-25 09:39:24', '{\n    "twentyseventeen::page_layout": {\n        "value": "one-column",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:39:24"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c007f01d-2f94-4c69-ba62-3a61a5a8a8fc', '', '', '2018-01-25 09:39:24', '2018-01-25 09:39:24', '', 0, 'http://localhost/wordpress/index.php/2018/01/25/c007f01d-2f94-4c69-ba62-3a61a5a8a8fc/', 0, 'customize_changeset', '', 0),
(73, 1, '2018-01-25 09:40:30', '2018-01-25 09:40:30', '{\n    "nav_menu_item[44]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-25 09:40:30"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fbb1d29d-f955-47ab-89fb-6ef2aad83233', '', '', '2018-01-25 09:40:30', '2018-01-25 09:40:30', '', 0, 'http://localhost/wordpress/index.php/2018/01/25/fbb1d29d-f955-47ab-89fb-6ef2aad83233/', 0, 'customize_changeset', '', 0),
(74, 1, '2018-01-25 10:04:47', '2018-01-25 10:04:47', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-02-12 12:36:31', '2018-02-12 12:36:31', '', 129, 'http://localhost/wordpress/wp-content/uploads/2018/01/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2018-01-25 10:04:47', '2018-01-25 10:04:47', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2018-01-31 07:32:16', '2018-01-31 07:32:16', '', 127, 'http://localhost/wordpress/wp-content/uploads/2018/01/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2018-01-25 10:04:48', '2018-01-25 10:04:48', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2018-01-31 07:31:36', '2018-01-31 07:31:36', '', 125, 'http://localhost/wordpress/wp-content/uploads/2018/01/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2018-01-25 10:04:48', '2018-01-25 10:04:48', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2018-01-31 07:31:01', '2018-01-31 07:31:01', '', 123, 'http://localhost/wordpress/wp-content/uploads/2018/01/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2018-01-25 10:04:48', '2018-01-25 10:04:48', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2018-01-31 07:28:44', '2018-01-31 07:28:44', '', 121, 'http://localhost/wordpress/wp-content/uploads/2018/01/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2018-01-25 10:04:48', '2018-01-25 10:04:48', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2018-01-31 07:28:09', '2018-01-31 07:28:09', '', 119, 'http://localhost/wordpress/wp-content/uploads/2018/01/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2018-01-25 10:04:48', '2018-01-25 10:04:48', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2018-01-31 07:27:14', '2018-01-31 07:27:14', '', 117, 'http://localhost/wordpress/wp-content/uploads/2018/01/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2018-01-25 10:04:49', '2018-01-25 10:04:49', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2018-01-29 12:32:49', '2018-01-29 12:32:49', '', 90, 'http://localhost/wordpress/wp-content/uploads/2018/01/8.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2018-01-25 10:04:49', '2018-01-25 10:04:49', '', '9', '', 'inherit', 'open', 'closed', '', '9', '', '', '2018-01-31 07:26:06', '2018-01-31 07:26:06', '', 113, 'http://localhost/wordpress/wp-content/uploads/2018/01/9.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2018-01-25 10:04:49', '2018-01-25 10:04:49', '', '10', '', 'inherit', 'open', 'closed', '', '10', '', '', '2018-01-31 07:15:16', '2018-01-31 07:15:16', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/01/10.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2018-01-25 10:04:50', '2018-01-25 10:04:50', '', '11', '', 'inherit', 'open', 'closed', '', '11', '', '', '2018-01-31 07:25:00', '2018-01-31 07:25:00', '', 109, 'http://localhost/wordpress/wp-content/uploads/2018/01/11.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2018-01-25 10:04:50', '2018-01-25 10:04:50', '', 'carro', '', 'inherit', 'open', 'closed', '', 'carro', '', '', '2018-01-25 10:04:50', '2018-01-25 10:04:50', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/01/carro.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2018-01-25 10:10:04', '2018-01-25 10:10:04', '<H1 align="center"><font color="#FF0000">Oferta 24H!</font></H1>\r\n<table border="1">\r\n\r\n<table width="50%" border="2" align="center" cellspacing="0" bordercolor="#000000" bgcolor="#E2D0A8">\r\n  <tr>\r\n    <td width="23%"><h2 align="center">Pan s/sal rustico</h2>\r\n    <p align="center"><img src="build/img/1.jpg" width="174" height="95" /></p>\r\n    \r\n    <h1 align="center"><strong><font color="#FF0000">1,15€</font></strong></h1>\r\n    \r\n    <p align="center"><a href="/contactanos"><img src="build/img/carro.jpg" width="109" height="47" /></a></p></td>\r\n    \r\n    <td width="14%"><h2 align="center">2 Pan baguette </h2>\r\n    \r\n<p align="center"><img src="build/img/4.jpg" width="174" height="95" /></p>\r\n\r\n    <h1 align="center"><strong><font color="#FF0000">1€</font></strong></h1>\r\n    \r\n    <p align="center"><a href="/contactanos"><img src="build/img/carro.jpg" width="109" height="47" /></a></p></td>\r\n    <td width="15%"><h2 align="center">Pan omega</h2>\r\n    \r\n<p align="center"><img src="build/img/10.jpg" width="174" height="95" /></p>\r\n\r\n    <h1 align="center"><strong><font color="#FF0000">1,20€</font></strong></h1>\r\n    \r\n    <p align="center"><a href="/contactanos"><img src="build/img/carro.jpg" width="109" height="47" /></a></p></td>\r\n     <td width="15%"><h2 align="center">Pan Chapata</h2>\r\n     \r\n<p align="center"><img src="build/img/6.jpg" width="174" height="95" /></p>\r\n\r\n    <h1 align="center"><strong><font color="#FF0000">0,70€</font></strong></h1>\r\n    <p align="center"><a href="/contactanos"><img src="build/img/carro.jpg" width="109" height="47" /></a></p></td>\r\n     </tr>\r\n</table>\r\n<br />', 'Oferta', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-25 10:10:04', '2018-01-25 10:10:04', '', 26, 'http://localhost/wordpress/index.php/2018/01/25/26-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-01-25 10:10:42', '2018-01-25 10:10:42', '', 'Oferta', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-25 10:10:42', '2018-01-25 10:10:42', '', 26, 'http://localhost/wordpress/index.php/2018/01/25/26-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-01-25 10:11:24', '2018-01-25 10:11:24', '<p style="text-align: center;"><span style="color: #ff0000;">OFERTA 24H!!</span></p>', 'Oferta', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-25 10:11:24', '2018-01-25 10:11:24', '', 26, 'http://localhost/wordpress/index.php/2018/01/25/26-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-01-25 10:17:26', '2018-01-25 10:17:26', '<p style="text-align: center;"><span style="color: #ff0000;">OFERTA 24H!!</span></p>\n&nbsp;', 'Oferta', '', 'inherit', 'closed', 'closed', '', '26-autosave-v1', '', '', '2018-01-25 10:17:26', '2018-01-25 10:17:26', '', 26, 'http://localhost/wordpress/index.php/2018/01/25/26-autosave-v1/', 0, 'revision', '', 0),
(90, 1, '2018-01-29 11:37:45', '2018-01-29 11:37:45', '', 'Panes', '', 'trash', 'open', 'open', '', 'pan-s-sal-rustico__trashed', '', '', '2018-02-05 12:05:12', '2018-02-05 12:05:12', '', 0, 'http://localhost/wordpress/?p=90', 0, 'post', '', 0),
(91, 1, '2018-01-29 11:37:45', '2018-01-29 11:37:45', '', 'Pan s/sal Rustico', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-01-29 11:37:45', '2018-01-29 11:37:45', '', 90, 'http://localhost/wordpress/index.php/2018/01/29/90-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-01-29 11:48:09', '2018-01-29 11:48:09', 'Hoy hace un día soleado y si no tuviera q................. iría a la playa.', 'Lunes anterior a S.Blas', '', 'trash', 'open', 'open', '', 'lunes-anterior-a-s-blas__trashed', '', '', '2018-01-31 07:24:08', '2018-01-31 07:24:08', '', 0, 'http://localhost/wordpress/?p=96', 0, 'post', '', 0),
(97, 1, '2018-01-29 11:48:09', '2018-01-29 11:48:09', 'Hoy hace un día soleado y si no tuviera q................. iría a la playa.', 'Lunes anterior a S.Blas', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2018-01-29 11:48:09', '2018-01-29 11:48:09', '', 96, 'http://localhost/wordpress/index.php/2018/01/29/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-01-29 12:34:51', '2018-01-29 12:34:51', '', 'Panes', '', 'inherit', 'closed', 'closed', '', '90-autosave-v1', '', '', '2018-01-29 12:34:51', '2018-01-29 12:34:51', '', 90, 'http://localhost/wordpress/index.php/2018/01/29/90-autosave-v1/', 0, 'revision', '', 0),
(99, 1, '2018-01-29 12:37:32', '2018-01-29 12:37:32', '', 'Panes', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-01-29 12:37:32', '2018-01-29 12:37:32', '', 90, 'http://localhost/wordpress/index.php/2018/01/29/90-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-01-31 07:25:17', '2018-01-31 07:25:17', '<img class="alignnone size-medium wp-image-84" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/11-300x137.jpg" alt="" width="259" height="194" />', 'Pan de Pipas', '', 'publish', 'open', 'open', '', 'pan-de-pipas', '', '', '2018-02-12 12:45:38', '2018-02-12 12:45:38', '', 0, 'http://localhost/wordpress/?p=109', 0, 'post', '', 0),
(110, 1, '2018-01-31 07:25:17', '2018-01-31 07:25:17', '<img class="alignnone size-medium wp-image-84" src="http://localhost/wordpress/wp-content/uploads/2018/01/11-300x137.jpg" alt="" width="300" height="137" />', 'Pan de Pipas', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2018-01-31 07:25:17', '2018-01-31 07:25:17', '', 109, 'http://localhost/wordpress/index.php/2018/01/31/109-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-01-31 07:25:49', '2018-01-31 07:25:49', '<img class="alignnone size-full wp-image-83" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/10.jpg" alt="" width="259" height="194" />', 'Pan Omega', '', 'publish', 'open', 'open', '', 'pan-omega', '', '', '2018-02-12 12:45:26', '2018-02-12 12:45:26', '', 0, 'http://localhost/wordpress/?p=111', 0, 'post', '', 0),
(112, 1, '2018-01-31 07:25:49', '2018-01-31 07:25:49', '<img class="alignnone size-full wp-image-83" src="http://localhost/wordpress/wp-content/uploads/2018/01/10.jpg" alt="" width="200" height="200" />', 'Pan Omega', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2018-01-31 07:25:49', '2018-01-31 07:25:49', '', 111, 'http://localhost/wordpress/index.php/2018/01/31/111-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2018-01-31 07:26:25', '2018-01-31 07:26:25', '<img class="alignnone size-medium wp-image-82" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/9-300x200.jpg" alt="" width="259" height="194" />', 'Pan Tostadas 2', '', 'publish', 'open', 'open', '', 'pan-tostadas-2', '', '', '2018-02-12 12:45:15', '2018-02-12 12:45:15', '', 0, 'http://localhost/wordpress/?p=113', 0, 'post', '', 0),
(114, 1, '2018-01-31 07:26:25', '2018-01-31 07:26:25', '<img class="alignnone size-medium wp-image-82" src="http://localhost/wordpress/wp-content/uploads/2018/01/9-300x200.jpg" alt="" width="300" height="200" />', 'Pan Tostadas 2', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-01-31 07:26:25', '2018-01-31 07:26:25', '', 113, 'http://localhost/wordpress/index.php/2018/01/31/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-01-31 07:26:54', '2018-01-31 07:26:54', '<img class="alignnone size-full wp-image-81" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/8.jpg" alt="" width="259" height="194" />', 'Pan Tostadas 1', '', 'publish', 'open', 'open', '', 'pan-tostadas-1', '', '', '2018-02-12 12:45:05', '2018-02-12 12:45:05', '', 0, 'http://localhost/wordpress/?p=115', 0, 'post', '', 0),
(116, 1, '2018-01-31 07:26:54', '2018-01-31 07:26:54', '<img class="alignnone size-full wp-image-81" src="http://localhost/wordpress/wp-content/uploads/2018/01/8.jpg" alt="" width="275" height="183" />', 'Pan Tostadas 1', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2018-01-31 07:26:54', '2018-01-31 07:26:54', '', 115, 'http://localhost/wordpress/index.php/2018/01/31/115-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-01-31 07:27:28', '2018-01-31 07:27:28', '<img class="alignnone size-medium wp-image-80" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/7-300x177.jpg" alt="" width="259" height="194" />', 'Pan Chapata 2', '', 'publish', 'open', 'open', '', 'pan-chapata-2', '', '', '2018-02-12 12:44:46', '2018-02-12 12:44:46', '', 0, 'http://localhost/wordpress/?p=117', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(118, 1, '2018-01-31 07:27:28', '2018-01-31 07:27:28', '<img class="alignnone size-medium wp-image-80" src="http://localhost/wordpress/wp-content/uploads/2018/01/7-300x177.jpg" alt="" width="300" height="177" />', 'Pan Chapata 2', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-01-31 07:27:28', '2018-01-31 07:27:28', '', 117, 'http://localhost/wordpress/index.php/2018/01/31/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-01-31 07:28:23', '2018-01-31 07:28:23', '<img class="alignnone size-full wp-image-79" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/6.jpg" alt="" width="259" height="194" />', 'Pan Chapata 1', '', 'publish', 'open', 'open', '', 'pan-chapata-1', '', '', '2018-02-12 12:44:35', '2018-02-12 12:44:35', '', 0, 'http://localhost/wordpress/?p=119', 0, 'post', '', 0),
(120, 1, '2018-01-31 07:28:23', '2018-01-31 07:28:23', '<img class="alignnone size-full wp-image-79" src="http://localhost/wordpress/wp-content/uploads/2018/01/6.jpg" alt="" width="200" height="200" />', 'Pan Chapata 1', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-01-31 07:28:23', '2018-01-31 07:28:23', '', 119, 'http://localhost/wordpress/index.php/2018/01/31/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-01-31 07:28:57', '2018-01-31 07:28:57', '<img class="alignnone size-medium wp-image-78" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/5-300x207.jpg" alt="" width="259" height="194" />', '3 Panes s/sal', '', 'publish', 'open', 'open', '', '3-panes-s-sal', '', '', '2018-02-12 12:44:24', '2018-02-12 12:44:24', '', 0, 'http://localhost/wordpress/?p=121', 0, 'post', '', 0),
(122, 1, '2018-01-31 07:28:57', '2018-01-31 07:28:57', '<img class="alignnone size-medium wp-image-78" src="http://localhost/wordpress/wp-content/uploads/2018/01/5-300x207.jpg" alt="" width="300" height="207" />', '3 Panes s/sal', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2018-01-31 07:28:57', '2018-01-31 07:28:57', '', 121, 'http://localhost/wordpress/index.php/2018/01/31/121-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-01-31 07:31:12', '2018-01-31 07:31:12', '<img class="alignnone size-medium wp-image-77" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/4-300x214.jpg" alt="" width="259" height="194" />', '2 Pan Baguette', '', 'publish', 'open', 'open', '', '2-pan-baguette', '', '', '2018-02-12 12:44:14', '2018-02-12 12:44:14', '', 0, 'http://localhost/wordpress/?p=123', 0, 'post', '', 0),
(124, 1, '2018-01-31 07:31:12', '2018-01-31 07:31:12', '<img class="alignnone size-medium wp-image-77" src="http://localhost/wordpress/wp-content/uploads/2018/01/4-300x214.jpg" alt="" width="300" height="214" />', '2 Pan Baguette', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2018-01-31 07:31:12', '2018-01-31 07:31:12', '', 123, 'http://localhost/wordpress/index.php/2018/01/31/123-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-01-31 07:31:51', '2018-01-31 07:31:51', '<img class="alignnone size-medium wp-image-76" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/3-300x238.jpg" alt="" width="259" height="194" />', 'Pan Rustico 2', '', 'publish', 'open', 'open', '', 'pan-rustico-2', '', '', '2018-02-12 12:44:04', '2018-02-12 12:44:04', '', 0, 'http://localhost/wordpress/?p=125', 0, 'post', '', 0),
(126, 1, '2018-01-31 07:31:51', '2018-01-31 07:31:51', '<img class="alignnone size-medium wp-image-76" src="http://localhost/wordpress/wp-content/uploads/2018/01/3-300x238.jpg" alt="" width="300" height="238" />', 'Pan Rustico 2', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2018-01-31 07:31:51', '2018-01-31 07:31:51', '', 125, 'http://localhost/wordpress/index.php/2018/01/31/125-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2018-01-31 07:32:32', '2018-01-31 07:32:32', '<img class="alignnone size-full wp-image-75" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/2.jpg" alt="" width="259" height="194" />', 'Pan Rustico 1', '', 'publish', 'open', 'open', '', 'pan-rustico-1', '', '', '2018-02-12 12:43:53', '2018-02-12 12:43:53', '', 0, 'http://localhost/wordpress/?p=127', 0, 'post', '', 0),
(128, 1, '2018-01-31 07:32:32', '2018-01-31 07:32:32', '<img class="alignnone size-full wp-image-75" src="http://localhost/wordpress/wp-content/uploads/2018/01/2.jpg" alt="" width="200" height="200" />', 'Pan Rustico 1', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2018-01-31 07:32:32', '2018-01-31 07:32:32', '', 127, 'http://localhost/wordpress/index.php/2018/01/31/127-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2018-01-31 07:33:01', '2018-01-31 07:33:01', '<img class="alignnone size-full wp-image-74" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/1.jpg" alt="" width="259" height="194" />', 'Pan s/sal Rustico', '', 'publish', 'open', 'open', '', 'pan-s-sal-rustico-2', '', '', '2018-02-12 12:43:42', '2018-02-12 12:43:42', '', 0, 'http://localhost/wordpress/?p=129', 0, 'post', '', 0),
(130, 1, '2018-01-31 07:33:01', '2018-01-31 07:33:01', '<img class="alignnone size-full wp-image-74" src="http://localhost/wordpress/wp-content/uploads/2018/01/1.jpg" alt="" width="259" height="194" />', 'Pan s/sal Rustico', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2018-01-31 07:33:01', '2018-01-31 07:33:01', '', 129, 'http://localhost/wordpress/index.php/2018/01/31/129-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2018-01-31 07:34:57', '2018-01-31 07:34:57', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "categories-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-31 07:34:57"\n    },\n    "widget_categories[4]": {\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJjb3VudCI7aToxO3M6MTI6ImhpZXJhcmNoaWNhbCI7aTowO3M6ODoiZHJvcGRvd24iO2k6MDt9",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "b014ef003a8d3c9dd611c95fcf2fbc93"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-31 07:34:57"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'be0b12f9-c344-411e-9275-7e16e5c5fb03', '', '', '2018-01-31 07:34:57', '2018-01-31 07:34:57', '', 0, 'http://localhost/wordpress/index.php/2018/01/31/be0b12f9-c344-411e-9275-7e16e5c5fb03/', 0, 'customize_changeset', '', 0),
(132, 1, '2018-01-31 07:42:39', '2018-01-31 07:42:39', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2018-02-05 12:12:29', '2018-02-05 12:12:29', '', 0, 'http://localhost/wordpress/?p=132', 6, 'nav_menu_item', '', 0),
(133, 1, '2018-01-31 07:44:25', '2018-01-31 07:44:25', '{\n    "twentyseventeen::page_layout": {\n        "value": "two-column",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-31 07:44:25"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '00eed603-2f99-4bcf-88af-0710d3cab087', '', '', '2018-01-31 07:44:25', '2018-01-31 07:44:25', '', 0, 'http://localhost/wordpress/index.php/2018/01/31/00eed603-2f99-4bcf-88af-0710d3cab087/', 0, 'customize_changeset', '', 0),
(134, 1, '2018-01-31 07:44:50', '2018-01-31 07:44:50', '{\n    "twentyseventeen::page_layout": {\n        "value": "one-column",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-31 07:44:50"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd7e19f4c-e823-4285-9508-4e098587a668', '', '', '2018-01-31 07:44:50', '2018-01-31 07:44:50', '', 0, 'http://localhost/wordpress/index.php/2018/01/31/d7e19f4c-e823-4285-9508-4e098587a668/', 0, 'customize_changeset', '', 0),
(135, 1, '2018-01-31 07:50:38', '2018-01-31 07:50:38', '{\n    "twentyseventeen::page_layout": {\n        "value": "one-column",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-31 07:50:38"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '31e7d54c-1a85-419a-b630-93edea896098', '', '', '2018-01-31 07:50:38', '2018-01-31 07:50:38', '', 0, 'http://localhost/wordpress/index.php/2018/01/31/31e7d54c-1a85-419a-b630-93edea896098/', 0, 'customize_changeset', '', 0),
(137, 1, '2018-02-05 11:49:57', '2018-02-05 11:49:57', '', 'Oferta', '', 'publish', 'closed', 'closed', '', 'oferta', '', '', '2018-02-05 12:12:29', '2018-02-05 12:12:29', '', 0, 'http://localhost/wordpress/?p=137', 3, 'nav_menu_item', '', 0),
(138, 1, '2018-02-05 12:02:53', '2018-02-05 12:02:53', '<img class="alignnone size-full wp-image-75" src="http://localhost/wordpress/wp-content/uploads/2018/01/2.jpg" alt="" width="259" height="194" />', 'Pan Rustico 1', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2018-02-05 12:02:53', '2018-02-05 12:02:53', '', 127, 'http://localhost/wordpress/index.php/2018/02/05/127-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2018-02-05 12:03:15', '2018-02-05 12:03:15', '<img class="alignnone size-medium wp-image-76" src="http://localhost/wordpress/wp-content/uploads/2018/01/3-300x238.jpg" alt="" width="259" height="194" />', 'Pan Rustico 2', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2018-02-05 12:03:15', '2018-02-05 12:03:15', '', 125, 'http://localhost/wordpress/index.php/2018/02/05/125-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2018-02-05 12:03:26', '2018-02-05 12:03:26', '<img class="alignnone size-medium wp-image-77" src="http://localhost/wordpress/wp-content/uploads/2018/01/4-300x214.jpg" alt="" width="259" height="194" />', '2 Pan Baguette', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2018-02-05 12:03:26', '2018-02-05 12:03:26', '', 123, 'http://localhost/wordpress/index.php/2018/02/05/123-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2018-02-05 12:03:39', '2018-02-05 12:03:39', '<img class="alignnone size-medium wp-image-78" src="http://localhost/wordpress/wp-content/uploads/2018/01/5-300x207.jpg" alt="" width="259" height="194" />', '3 Panes s/sal', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2018-02-05 12:03:39', '2018-02-05 12:03:39', '', 121, 'http://localhost/wordpress/index.php/2018/02/05/121-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2018-02-05 12:03:50', '2018-02-05 12:03:50', '<img class="alignnone size-full wp-image-79" src="http://localhost/wordpress/wp-content/uploads/2018/01/6.jpg" alt="" width="259" height="194" />', 'Pan Chapata 1', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-02-05 12:03:50', '2018-02-05 12:03:50', '', 119, 'http://localhost/wordpress/index.php/2018/02/05/119-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2018-02-05 12:04:02', '2018-02-05 12:04:02', '<img class="alignnone size-medium wp-image-80" src="http://localhost/wordpress/wp-content/uploads/2018/01/7-300x177.jpg" alt="" width="259" height="194" />', 'Pan Chapata 2', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-02-05 12:04:02', '2018-02-05 12:04:02', '', 117, 'http://localhost/wordpress/index.php/2018/02/05/117-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2018-02-05 12:04:29', '2018-02-05 12:04:29', '<img class="alignnone size-full wp-image-81" src="http://localhost/wordpress/wp-content/uploads/2018/01/8.jpg" alt="" width="259" height="194" />', 'Pan Tostadas 1', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2018-02-05 12:04:29', '2018-02-05 12:04:29', '', 115, 'http://localhost/wordpress/index.php/2018/02/05/115-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2018-02-05 12:04:39', '2018-02-05 12:04:39', '<img class="alignnone size-medium wp-image-82" src="http://localhost/wordpress/wp-content/uploads/2018/01/9-300x200.jpg" alt="" width="259" height="194" />', 'Pan Tostadas 2', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-02-05 12:04:39', '2018-02-05 12:04:39', '', 113, 'http://localhost/wordpress/index.php/2018/02/05/113-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2018-02-05 12:04:50', '2018-02-05 12:04:50', '<img class="alignnone size-full wp-image-83" src="http://localhost/wordpress/wp-content/uploads/2018/01/10.jpg" alt="" width="259" height="194" />', 'Pan Omega', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2018-02-05 12:04:50', '2018-02-05 12:04:50', '', 111, 'http://localhost/wordpress/index.php/2018/02/05/111-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2018-02-05 12:05:01', '2018-02-05 12:05:01', '<img class="alignnone size-medium wp-image-84" src="http://localhost/wordpress/wp-content/uploads/2018/01/11-300x137.jpg" alt="" width="259" height="194" />', 'Pan de Pipas', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2018-02-05 12:05:01', '2018-02-05 12:05:01', '', 109, 'http://localhost/wordpress/index.php/2018/02/05/109-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2018-02-05 12:12:29', '2018-02-05 12:12:29', '', 'Panes Caseros', '', 'publish', 'closed', 'closed', '', 'panes-caseros', '', '', '2018-02-05 12:12:29', '2018-02-05 12:12:29', '', 0, 'http://localhost/wordpress/?p=149', 5, 'nav_menu_item', '', 0),
(150, 1, '2018-02-05 12:12:29', '2018-02-05 12:12:29', '', 'Panes Variados', '', 'publish', 'closed', 'closed', '', 'panes-variados', '', '', '2018-02-05 12:12:29', '2018-02-05 12:12:29', '', 0, 'http://localhost/wordpress/?p=150', 4, 'nav_menu_item', '', 0),
(151, 1, '2018-02-12 12:03:35', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-02-12 12:03:35', '0000-00-00 00:00:00', '', 0, 'http://10.15.24.140/wordpress/?p=151', 0, 'post', '', 0),
(153, 1, '2018-02-12 12:42:30', '2018-02-12 12:42:30', '<img class="alignnone size-full wp-image-74" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/1.jpg" alt="" width="259" height="194" />', 'Pan s/sal Rustico', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2018-02-12 12:42:30', '2018-02-12 12:42:30', '', 129, 'http://10.15.24.140/wordpress/index.php/2018/02/12/129-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2018-02-12 12:43:53', '2018-02-12 12:43:53', '<img class="alignnone size-full wp-image-75" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/2.jpg" alt="" width="259" height="194" />', 'Pan Rustico 1', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2018-02-12 12:43:53', '2018-02-12 12:43:53', '', 127, 'http://10.15.24.140/wordpress/index.php/2018/02/12/127-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2018-02-12 12:44:04', '2018-02-12 12:44:04', '<img class="alignnone size-medium wp-image-76" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/3-300x238.jpg" alt="" width="259" height="194" />', 'Pan Rustico 2', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2018-02-12 12:44:04', '2018-02-12 12:44:04', '', 125, 'http://10.15.24.140/wordpress/index.php/2018/02/12/125-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2018-02-12 12:44:14', '2018-02-12 12:44:14', '<img class="alignnone size-medium wp-image-77" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/4-300x214.jpg" alt="" width="259" height="194" />', '2 Pan Baguette', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2018-02-12 12:44:14', '2018-02-12 12:44:14', '', 123, 'http://10.15.24.140/wordpress/index.php/2018/02/12/123-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2018-02-12 12:44:24', '2018-02-12 12:44:24', '<img class="alignnone size-medium wp-image-78" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/5-300x207.jpg" alt="" width="259" height="194" />', '3 Panes s/sal', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2018-02-12 12:44:24', '2018-02-12 12:44:24', '', 121, 'http://10.15.24.140/wordpress/index.php/2018/02/12/121-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2018-02-12 12:44:35', '2018-02-12 12:44:35', '<img class="alignnone size-full wp-image-79" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/6.jpg" alt="" width="259" height="194" />', 'Pan Chapata 1', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-02-12 12:44:35', '2018-02-12 12:44:35', '', 119, 'http://10.15.24.140/wordpress/index.php/2018/02/12/119-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2018-02-12 12:44:46', '2018-02-12 12:44:46', '<img class="alignnone size-medium wp-image-80" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/7-300x177.jpg" alt="" width="259" height="194" />', 'Pan Chapata 2', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-02-12 12:44:46', '2018-02-12 12:44:46', '', 117, 'http://10.15.24.140/wordpress/index.php/2018/02/12/117-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2018-02-12 12:45:05', '2018-02-12 12:45:05', '<img class="alignnone size-full wp-image-81" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/8.jpg" alt="" width="259" height="194" />', 'Pan Tostadas 1', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2018-02-12 12:45:05', '2018-02-12 12:45:05', '', 115, 'http://10.15.24.140/wordpress/index.php/2018/02/12/115-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2018-02-12 12:45:15', '2018-02-12 12:45:15', '<img class="alignnone size-medium wp-image-82" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/9-300x200.jpg" alt="" width="259" height="194" />', 'Pan Tostadas 2', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-02-12 12:45:15', '2018-02-12 12:45:15', '', 113, 'http://10.15.24.140/wordpress/index.php/2018/02/12/113-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2018-02-12 12:45:26', '2018-02-12 12:45:26', '<img class="alignnone size-full wp-image-83" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/10.jpg" alt="" width="259" height="194" />', 'Pan Omega', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2018-02-12 12:45:26', '2018-02-12 12:45:26', '', 111, 'http://10.15.24.140/wordpress/index.php/2018/02/12/111-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2018-02-12 12:45:38', '2018-02-12 12:45:38', '<img class="alignnone size-medium wp-image-84" src="http://10.15.24.140/wordpress/wp-content/uploads/2018/01/11-300x137.jpg" alt="" width="259" height="194" />', 'Pan de Pipas', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2018-02-12 12:45:38', '2018-02-12 12:45:38', '', 109, 'http://10.15.24.140/wordpress/index.php/2018/02/12/109-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2018-02-14 07:58:54', '2018-02-14 07:58:54', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "categories-4",\n            "media_video-3"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 07:56:27"\n    },\n    "sidebars_widgets[sidebar-3]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 07:56:27"\n    },\n    "widget_media_video[3]": {\n        "value": {\n            "encoded_serialized_instance": "YToxMTp7czoxMzoiYXR0YWNobWVudF9pZCI7aTowO3M6MzoidXJsIjtzOjQzOiJodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PVF6NTUxUW92R0pVIjtzOjU6InRpdGxlIjtzOjIxOiJFbGFib3JhY2lvbiBkZSBwYW5lczoiO3M6NzoicHJlbG9hZCI7czo4OiJtZXRhZGF0YSI7czo0OiJsb29wIjtiOjA7czo3OiJjb250ZW50IjtzOjA6IiI7czozOiJtcDQiO3M6MDoiIjtzOjM6Im00diI7czowOiIiO3M6NDoid2VibSI7czowOiIiO3M6Mzoib2d2IjtzOjA6IiI7czozOiJmbHYiO3M6MDoiIjt9",\n            "title": "Elaboracion de panes:",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "a6488287ac3cf097e36918ec5db265ff"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 07:58:27"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '09d981f4-fac3-47f5-a412-71eb0bee29fc', '', '', '2018-02-14 07:58:54', '2018-02-14 07:58:54', '', 0, 'http://10.15.24.140/wordpress/?p=164', 0, 'customize_changeset', '', 0),
(165, 1, '2018-02-14 08:02:36', '0000-00-00 00:00:00', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "categories-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 08:02:36"\n    },\n    "sidebars_widgets[sidebar-2]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 08:02:36"\n    },\n    "sidebars_widgets[sidebar-3]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 08:02:36"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '03ec383f-9c82-4fbe-8f5b-2feca602016c', '', '', '2018-02-14 08:02:36', '0000-00-00 00:00:00', '', 0, 'http://10.15.24.140/wordpress/?p=165', 0, 'customize_changeset', '', 0),
(166, 1, '2018-02-14 08:23:25', '2018-02-14 08:23:25', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "categories-4",\n            "wpgmza_map_widget-3"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 08:23:25"\n    },\n    "widget_wpgmza_map_widget[3]": {\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjk6InNlbGVjdGlvbiI7czoxOiIxIjtzOjU6InRpdGxlIjtzOjIxOiJVYmljYWNpb24gZGUgUGFuZG9yYToiO30=",\n            "title": "Ubicacion de Pandora:",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "45e53fe97087e1a1384fc51c5716a456"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 08:23:25"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e82c924e-a8e7-4354-8401-e29ea54a9f8a', '', '', '2018-02-14 08:23:25', '2018-02-14 08:23:25', '', 0, 'http://10.15.24.140/wordpress/index.php/2018/02/14/e82c924e-a8e7-4354-8401-e29ea54a9f8a/', 0, 'customize_changeset', '', 0),
(167, 1, '2018-02-14 08:23:48', '2018-02-14 08:23:48', '¿Quienes somos?\r\n\r\nSomos una empresa llamada Pandora, con la que contamos con 24 empleados actualmente, que se dedican a vender nuestros panes en nuestras tiendas.\r\n\r\nNuestra empresa también se dedica a enviar y distribuir panes por todo Europa.\r\n\r\n¿Donde estamos ubicados?\r\n\r\nPandora, esta ubicada en el polígono industrial de Bergondo.\r\n\r\n¿Que materiales usamos y que hacemos con ellos?\r\n\r\nEn nuestra empresa los materiales para la creación de los panes son tanto recolectados como comprados en supermercados.\r\n\r\nUna vez hacemos el pan, nuestros repartidores lo llevan a las tiendas o bien los congelamos en la empresa para encargos o compras por Internet.', 'Inicio', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-02-14 08:23:48', '2018-02-14 08:23:48', '', 61, 'http://10.15.24.140/wordpress/index.php/2018/02/14/61-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2018-02-14 08:26:27', '2018-02-14 08:26:27', '{\n    "twentyseventeen::page_layout": {\n        "value": "one-column",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 08:25:13"\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "categories-4",\n            "wpgmza_map_widget-3"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 08:26:27"\n    },\n    "sidebars_widgets[sidebar-2]": {\n        "value": [\n            "wpgmza_map_widget-5"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 08:26:27"\n    },\n    "sidebars_widgets[sidebar-3]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 08:26:13"\n    },\n    "widget_wpgmza_map_widget[5]": {\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjk6InNlbGVjdGlvbiI7czoxOiIxIjtzOjU6InRpdGxlIjtzOjg6InBhbmRvcmFzIjt9",\n            "title": "pandoras",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "f36da93a8501305f9582edda20dfb585"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 08:26:13"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6b68b59d-2ba4-4d28-b2b8-363ca9148af9', '', '', '2018-02-14 08:26:27', '2018-02-14 08:26:27', '', 0, 'http://10.15.24.140/wordpress/?p=168', 0, 'customize_changeset', '', 0),
(169, 1, '2018-02-14 08:27:10', '2018-02-14 08:27:10', '{\n    "sidebars_widgets[wp_inactive_widgets]": {\n        "value": [\n            "meta-2",\n            "wpgmza_map_widget-3"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 08:27:10"\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "categories-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 08:27:10"\n    },\n    "widget_wpgmza_map_widget[5]": {\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjk6InNlbGVjdGlvbiI7czoxOiIxIjtzOjU6InRpdGxlIjtzOjIyOiJVYmljYWNpw7NuIGRlIFBhbmRvcmE6Ijt9",\n            "title": "Ubicaci\\u00f3n de Pandora:",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "2bebf11128adf2e4f96f6c5a85d58bc3"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 08:27:10"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7c438376-6372-4590-a2b1-c4a26d41eba7', '', '', '2018-02-14 08:27:10', '2018-02-14 08:27:10', '', 0, 'http://10.15.24.140/wordpress/index.php/2018/02/14/7c438376-6372-4590-a2b1-c4a26d41eba7/', 0, 'customize_changeset', '', 0),
(170, 1, '2018-02-14 08:30:58', '2018-02-14 08:30:58', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "categories-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 08:30:58"\n    },\n    "sidebars_widgets[sidebar-2]": {\n        "value": [\n            "wpgmza_map_widget-5"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 08:30:58"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2a8a0504-e3aa-48cb-9766-06f10b1c4e7f', '', '', '2018-02-14 08:30:58', '2018-02-14 08:30:58', '', 0, 'http://10.15.24.140/wordpress/index.php/2018/02/14/2a8a0504-e3aa-48cb-9766-06f10b1c4e7f/', 0, 'customize_changeset', '', 0),
(171, 1, '2018-02-14 08:31:32', '2018-02-14 08:31:32', '{\n    "sidebars_widgets[sidebar-2]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 08:31:32"\n    },\n    "sidebars_widgets[sidebar-3]": {\n        "value": [\n            "wpgmza_map_widget-5"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 08:31:32"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6cc3b39b-b84e-4fcd-b4e1-1ee502aeff17', '', '', '2018-02-14 08:31:32', '2018-02-14 08:31:32', '', 0, 'http://10.15.24.140/wordpress/index.php/2018/02/14/6cc3b39b-b84e-4fcd-b4e1-1ee502aeff17/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Pandora', 'pandora', 0),
(3, 'Panes', 'panes', 0),
(4, 'Oferta', 'oferta', 0),
(5, 'Panes Variados', 'panes-variados', 0),
(6, 'Panes Caseros', 'panes-caseros', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(42, 2, 0),
(43, 2, 0),
(53, 2, 0),
(65, 2, 0),
(90, 1, 0),
(96, 1, 0),
(109, 3, 0),
(109, 6, 0),
(111, 3, 0),
(111, 4, 0),
(113, 3, 0),
(113, 5, 0),
(115, 3, 0),
(115, 6, 0),
(117, 3, 0),
(117, 6, 0),
(119, 3, 0),
(119, 4, 0),
(121, 3, 0),
(121, 5, 0),
(123, 3, 0),
(123, 4, 0),
(123, 5, 0),
(125, 3, 0),
(125, 6, 0),
(127, 3, 0),
(127, 5, 0),
(129, 3, 0),
(129, 4, 0),
(132, 2, 0),
(137, 2, 0),
(149, 2, 0),
(150, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'category', '', 0, 11),
(4, 4, 'post_tag', '', 0, 4),
(5, 5, 'post_tag', '', 0, 4),
(6, 6, 'post_tag', '', 0, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:"8a3e81e877837c07a4385838c7b2b638904594f280473189081411ecce9cd4b4";a:4:{s:10:"expiration";i:1518767378;s:2:"ip";s:12:"10.15.24.140";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) Gecko/20100101 Firefox/57.0";s:5:"login";i:1518594578;}s:64:"ea44ac94c6d2c310d2f02d1be4ce8a60f95fab8af21b3c8252b84804f7a37a52";a:4:{s:10:"expiration";i:1518858295;s:2:"ip";s:12:"10.15.24.140";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) Gecko/20100101 Firefox/57.0";s:5:"login";i:1518685495;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '151'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:10:"10.15.24.0";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=1&editor_plain_text_paste_warning=1'),
(20, 1, 'wp_user-settings-time', '1518596623'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'closedpostboxes_post', 'a:0:{}'),
(25, 1, 'metaboxhidden_post', 'a:4:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:9:"authordiv";}'),
(26, 1, 'closedpostboxes_page', 'a:0:{}'),
(27, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:"revisionsdiv";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BZ0X68iz/izxo063tF3bfpUgmAGLDf.', 'admin', 'as3-2-01.17@uni.eus', '', '2018-01-15 12:19:21', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wpgmza`
--

CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
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
  `other_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_wpgmza`
--

INSERT INTO `wp_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `other_data`) VALUES
(2, 1, 'Polígono Industrial Bergondo, España', '', '', '', '', '43.3137924', '-8.272968200000037', '0', '', '0', '', 1, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wpgmza_categories`
--

CREATE TABLE `wp_wpgmza_categories` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wpgmza_category_maps`
--

CREATE TABLE `wp_wpgmza_category_maps` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wpgmza_maps`
--

CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(55) NOT NULL,
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
  `other_settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_wpgmza_maps`
--

INSERT INTO `wp_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'Pandora', '400', '400', '43.312702', '-8.272200', '43.31270203694456,-8.272200467039625', 14, '0', 1, 2, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '\\%', 'px', 1, 0, 1, 2, 0, '', 'a:12:{s:21:"store_locator_enabled";i:2;s:22:"store_locator_distance";i:2;s:28:"store_locator_default_radius";s:2:"10";s:31:"store_locator_not_found_message";s:52:"No results found in this location. Please try again.";s:20:"store_locator_bounce";i:1;s:26:"store_locator_query_string";s:33:"ZIP / Código Postal / Dirección";s:29:"store_locator_default_address";s:0:"";s:29:"wpgmza_store_locator_restrict";s:0:"";s:12:"map_max_zoom";s:1:"1";s:15:"transport_layer";i:2;s:17:"wpgmza_theme_data";s:0:"";s:30:"wpgmza_show_points_of_interest";i:1;}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wpgmza_polygon`
--

CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
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
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wpgmza_polylines`
--

CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=581;
--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;
--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
