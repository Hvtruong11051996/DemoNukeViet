-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2020 at 03:36 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_dienthoai`
--

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors`
--

CREATE TABLE `nv4_authors` (
  `admin_id` int(11) UNSIGNED NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lev` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `files_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'siteinfo',
  `admin_theme` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT 0,
  `edittime` int(11) NOT NULL DEFAULT 0,
  `is_suspend` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `susp_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pre_last_login` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pre_last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pre_last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_authors`
--

INSERT INTO `nv4_authors` (`admin_id`, `editor`, `lev`, `files_level`, `position`, `main_module`, `admin_theme`, `addtime`, `edittime`, `is_suspend`, `susp_reason`, `pre_check_num`, `pre_last_login`, `pre_last_ip`, `pre_last_agent`, `check_num`, `last_login`, `last_ip`, `last_agent`) VALUES
(1, 'ckeditor', 1, 'adobe,archives,audio,documents,flash,images,real,video|1|1|1', 'Administrator', 'siteinfo', '', 0, 0, 0, '', '', 0, '', '', '48bf01120981d8e99a28f4f5ede85343', 1605922423, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_config`
--

CREATE TABLE `nv4_authors_config` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `keyname` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mask` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `begintime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_module`
--

CREATE TABLE `nv4_authors_module` (
  `mid` mediumint(8) NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT 0,
  `act_1` tinyint(4) NOT NULL DEFAULT 0,
  `act_2` tinyint(4) NOT NULL DEFAULT 1,
  `act_3` tinyint(4) NOT NULL DEFAULT 1,
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_authors_module`
--

INSERT INTO `nv4_authors_module` (`mid`, `module`, `lang_key`, `weight`, `act_1`, `act_2`, `act_3`, `checksum`) VALUES
(1, 'siteinfo', 'mod_siteinfo', 1, 1, 1, 1, '8031df211050610876d43cc40110162b'),
(2, 'authors', 'mod_authors', 2, 1, 1, 1, '20350deb3e6f7cea51e3a23d65864554'),
(3, 'settings', 'mod_settings', 3, 1, 1, 0, 'e22eb387b31e8ea51c6b54d7fa14c5b9'),
(4, 'database', 'mod_database', 4, 1, 0, 0, 'dbb7867a55b48cff389de36fce2d9075'),
(5, 'webtools', 'mod_webtools', 5, 1, 1, 0, '7568c0ff6d31619c5205e5b386f023ff'),
(6, 'seotools', 'mod_seotools', 6, 1, 1, 0, 'e214d5564c1b4fbfc987d72931474538'),
(7, 'language', 'mod_language', 7, 1, 1, 0, '8738a48d105a2048b5db052e28027e5a'),
(8, 'modules', 'mod_modules', 8, 1, 1, 0, 'a901d0c5122813257b12b554f54f5c25'),
(9, 'themes', 'mod_themes', 9, 1, 1, 0, '792247a1181a42e70883e210de8623dd'),
(10, 'extensions', 'mod_extensions', 10, 1, 0, 0, '114d291371894acdea0b68750dec38fa'),
(11, 'upload', 'mod_upload', 11, 1, 1, 1, '7e8378bdc8e7f3af843be1624e14c7ed');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_oauth`
--

CREATE TABLE `nv4_authors_oauth` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `admin_id` int(11) UNSIGNED NOT NULL COMMENT 'ID của quản trị',
  `oauth_server` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Eg: facebook, google...',
  `oauth_uid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID duy nhất ứng với server',
  `oauth_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng lưu xác thực 2 bước từ oauth của admin';

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_click`
--

CREATE TABLE `nv4_banners_click` (
  `id` int(11) UNSIGNED NOT NULL,
  `bid` mediumint(8) NOT NULL DEFAULT 0,
  `click_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(46) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_click`
--

INSERT INTO `nv4_banners_click` (`id`, `bid`, `click_time`, `click_day`, `click_ip`, `click_country`, `click_browse_key`, `click_browse_name`, `click_os_key`, `click_os_name`, `click_ref`) VALUES
(1, 5, 1605175473, 0, '::1', 'ZZ', '', 'chrome', '', 'Windows 10', 'http://localhost/nukeviet4.4.02setup/nukeviet/'),
(2, 7, 1605176319, 0, '::1', 'ZZ', '', 'chrome', '', 'Windows 10', 'http://localhost/nukeviet4.4.02setup/nukeviet/');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_plans`
--

CREATE TABLE `nv4_banners_plans` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `blang` char(2) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `height` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `require_image` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `uploadtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uploadgroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_plans`
--

INSERT INTO `nv4_banners_plans` (`id`, `blang`, `title`, `description`, `form`, `width`, `height`, `act`, `require_image`, `uploadtype`, `uploadgroup`, `exp_time`) VALUES
(2, '', 'Quang cao trai', '', 'sequential', 212, 800, 1, 1, 'images', '', 0),
(3, '', 'Quang cao Phai', '', 'random', 250, 500, 1, 1, 'images', '', 0),
(4, '', 'Thời Đại Số', '', 'sequential', 200, 150, 1, 1, 'images', '', 0),
(5, '', 'Công Nghệ', '', 'sequential', 200, 150, 1, 1, 'images', '', 0),
(6, '', 'Quảng cáo main', '', 'sequential', 1000, 100, 1, 1, 'images', '', 0),
(7, '', 'QC_footer', '', 'sequential', 1200, 100, 1, 1, 'images', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_rows`
--

CREATE TABLE `nv4_banners_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `clid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ext` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `height` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `file_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageforswf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `click_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_blank',
  `bannerhtml` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `hits_total` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_rows`
--

INSERT INTO `nv4_banners_rows` (`id`, `title`, `pid`, `clid`, `file_name`, `file_ext`, `file_mime`, `width`, `height`, `file_alt`, `imageforswf`, `click_url`, `target`, `bannerhtml`, `add_time`, `publ_time`, `exp_time`, `hits_total`, `act`, `weight`) VALUES
(2, 'vinades', 2, 1, 'vinades.jpg', 'jpg', 'image/jpeg', 212, 400, '', '', 'http://vinades.vn', '_blank', '', 1603626132, 1603626132, 0, 0, 1, 2),
(4, 'Cuộc Sống Mới', 4, 1, 'kkk.jpg', 'jpg', 'image/jpeg', 702, 584, '', '', '', '_blank', '<a data-utm=\"Home|MainList|18\" href=\"https://dantri.com.vn/ban-doc/ngan-ngam-canh-duong-vao-khu-di-tich-quoc-gia-bi-cay-nat-tai-dak-nong-20201112054934453.htm#dt_source=Home&amp;dt_campaign=MainList&amp;dt_medium=18\" title=\"Ngán ngẩm cảnh đường vào khu di tích quốc gia bị cày nát tại Đắk Nông\">(Dân trí)&nbsp;- Hàng ngày, xe chở đá trọng tải lớn chạy rầp rập trên con đường duy nhất dẫn vào khu di tích cấp quốc gia. Mặt đường bị cày nát, người dân chỉ biết cầu cứu cơ quan chức năng.</a>', 1605173139, 1605173139, 0, 0, 1, 1),
(5, 'Siêu khuyến mãi', 5, 1, 'fpt_1.jfif', 'jfif', 'image/jpeg', 353, 210, '', '', 'https://fpt.vn/vi/internet-fpt/bung-no-khuyen-mai-cung-dang-ky-online-duy-nhat-tai-fpt.vn-shop--5633.html', '_blank', '<strong><em>Tặng Voucher giảm cước 100,000 VNĐ, miễn phí tới 03 tháng cước dành cho 300 Khách hàng đăng ký Online gói cước Internet hoăc Combo Internet Truyền hình FPT sớm nhất.</em></strong><br />\r\n&nbsp;', 1605175411, 1605175411, 0, 1, 1, 1),
(6, 'Khuyến mãi tháng 11', 5, 1, 'pft_2.jpg', 'jpg', 'image/jpeg', 700, 410, '', '', 'https://fpt.vn/vi/internet-fpt/gioi-thieu-ban-be-su-dung-internet-truyen-hinh-fpt-nhan-qua-laptop-sieu-mong--5555.html', '_blank', '<strong><em>Chiếc Laptop Asus Zenbook UX362 có hình thức siêu mỏng, chỉ nặng 1,3kg sẽ trở thành quà tặng dành cho Khách hàng khi tham gia chương trình Rủ bạn thêm vui – Tăng phần ưu đãi của FPT Telecom.</em></strong><br />\r\n&nbsp;', 1605175653, 1605175653, 0, 0, 1, 2),
(7, 'Siêu Sale tháng 11', 6, 1, 'pft_2_1.jpg', 'jpg', 'image/jpeg', 700, 410, '', '', 'https://fpt.vn/vi/internet-fpt/gioi-thieu-ban-be-su-dung-internet-truyen-hinh-fpt-nhan-qua-laptop-sieu-mong--5555.html', '_blank', '', 1605176069, 1605176069, 0, 1, 1, 1),
(9, 'Siêu Sale tháng 11', 7, 1, 'tb1tvu_omgp7k4jszfqxxamhvxa.jpg_1200x1200_1.jpg', 'jpg', 'image/jpeg', 1200, 418, '', '', 'https://pages.lazada.vn/wow/gcp/route/lazada/vn/upr_1000345_lazada/channel/vn/upr-router/vn?spm=a2o4n.home.top.dbr2.59976afem1rL5a&hybrid=1&data_prefetch=true&wh_pid=/lazada/channel/vn/dien-tu-dien-gia-dung/dien-tu-chinh-hang-trang-chinh&scm=1003.4.icms-z', '_blank', '', 1605179356, 1605179356, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_config`
--

CREATE TABLE `nv4_config` (
  `lang` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sys',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_config`
--

INSERT INTO `nv4_config` (`lang`, `module`, `config_name`, `config_value`) VALUES
('sys', 'site', 'closed_site', '0'),
('sys', 'site', 'admin_theme', 'admin_default'),
('sys', 'site', 'date_pattern', 'l, d/m/Y'),
('sys', 'site', 'time_pattern', 'H:i'),
('sys', 'site', 'online_upd', '1'),
('sys', 'site', 'statistic', '1'),
('sys', 'site', 'site_phone', ''),
('sys', 'site', 'mailer_mode', 'mail'),
('sys', 'site', 'smtp_host', 'smtp.gmail.com'),
('sys', 'site', 'smtp_ssl', '1'),
('sys', 'site', 'smtp_port', '465'),
('sys', 'site', 'verify_peer_ssl', '1'),
('sys', 'site', 'verify_peer_name_ssl', '1'),
('sys', 'site', 'smtp_username', 'user@gmail.com'),
('sys', 'site', 'smtp_password', ''),
('sys', 'site', 'sender_name', ''),
('sys', 'site', 'sender_email', ''),
('sys', 'site', 'reply_name', ''),
('sys', 'site', 'reply_email', ''),
('sys', 'site', 'force_sender', '0'),
('sys', 'site', 'force_reply', '0'),
('sys', 'site', 'notify_email_error', '0'),
('sys', 'site', 'googleAnalyticsID', ''),
('sys', 'site', 'googleAnalyticsSetDomainName', '0'),
('sys', 'site', 'googleAnalyticsMethod', 'classic'),
('sys', 'site', 'searchEngineUniqueID', ''),
('sys', 'site', 'metaTagsOgp', '1'),
('sys', 'site', 'pageTitleMode', 'pagetitle'),
('sys', 'site', 'description_length', '170'),
('sys', 'site', 'nv_unickmin', '4'),
('sys', 'site', 'nv_unickmax', '20'),
('sys', 'site', 'nv_upassmin', '8'),
('sys', 'site', 'nv_upassmax', '32'),
('sys', 'site', 'dir_forum', ''),
('sys', 'site', 'nv_unick_type', '4'),
('sys', 'site', 'nv_upass_type', '3'),
('sys', 'site', 'allowmailchange', '1'),
('sys', 'site', 'allowuserpublic', '1'),
('sys', 'site', 'allowquestion', '0'),
('sys', 'site', 'allowloginchange', '0'),
('sys', 'site', 'allowuserlogin', '1'),
('sys', 'site', 'allowuserloginmulti', '0'),
('sys', 'site', 'allowuserreg', '2'),
('sys', 'site', 'is_user_forum', '0'),
('sys', 'site', 'openid_servers', ''),
('sys', 'site', 'openid_processing', '0'),
('sys', 'site', 'user_check_pass_time', '1800'),
('sys', 'site', 'auto_login_after_reg', '1'),
('sys', 'site', 'whoviewuser', '2'),
('sys', 'site', 'ssl_https', '0'),
('sys', 'site', 'facebook_client_id', ''),
('sys', 'site', 'facebook_client_secret', ''),
('sys', 'site', 'google_client_id', ''),
('sys', 'site', 'google_client_secret', ''),
('sys', 'site', 'referer_blocker', '1'),
('sys', 'site', 'private_site', '0'),
('sys', 'site', 'max_user_admin', '0'),
('sys', 'site', 'max_user_number', '0'),
('sys', 'define', 'nv_gfx_num', '6'),
('sys', 'global', 'notification_active', '1'),
('sys', 'global', 'notification_autodel', '15'),
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'),
('sys', 'global', 'block_admin_ip', '0'),
('sys', 'global', 'admfirewall', '0'),
('sys', 'global', 'dump_autobackup', '1'),
('sys', 'global', 'dump_backup_ext', 'gz'),
('sys', 'global', 'dump_backup_day', '30'),
('sys', 'global', 'gfx_chk', '3'),
('sys', 'global', 'file_allowed_ext', 'adobe,archives,audio,documents,flash,images,real,video'),
('sys', 'global', 'forbid_extensions', 'php,php3,php4,php5,phtml,inc'),
('sys', 'global', 'forbid_mimes', ''),
('sys', 'global', 'nv_max_size', '41943040'),
('sys', 'global', 'nv_overflow_size', '0'),
('sys', 'global', 'upload_checking_mode', 'strong'),
('sys', 'global', 'upload_alt_require', '1'),
('sys', 'global', 'upload_auto_alt', '1'),
('sys', 'global', 'upload_chunk_size', '0'),
('sys', 'global', 'useactivate', '2'),
('sys', 'global', 'allow_sitelangs', 'vi'),
('sys', 'global', 'read_type', '0'),
('sys', 'global', 'rewrite_enable', '1'),
('sys', 'global', 'rewrite_optional', '1'),
('sys', 'global', 'rewrite_endurl', '/'),
('sys', 'global', 'rewrite_exturl', '.html'),
('sys', 'global', 'rewrite_op_mod', 'news'),
('sys', 'global', 'autocheckupdate', '1'),
('sys', 'global', 'autoupdatetime', '24'),
('sys', 'global', 'gzip_method', '1'),
('sys', 'global', 'authors_detail_main', '0'),
('sys', 'global', 'spadmin_add_admin', '1'),
('sys', 'global', 'timestamp', '1605839442'),
('sys', 'global', 'captcha_type', '0'),
('sys', 'global', 'version', '4.4.02'),
('sys', 'global', 'cookie_httponly', '1'),
('sys', 'global', 'admin_check_pass_time', '1800'),
('sys', 'global', 'cookie_secure', '0'),
('sys', 'global', 'is_flood_blocker', '1'),
('sys', 'global', 'max_requests_60', '40'),
('sys', 'global', 'max_requests_300', '150'),
('sys', 'global', 'is_login_blocker', '1'),
('sys', 'global', 'login_number_tracking', '5'),
('sys', 'global', 'login_time_tracking', '5'),
('sys', 'global', 'login_time_ban', '30'),
('sys', 'global', 'nv_display_errors_list', '1'),
('sys', 'global', 'display_errors_list', '1'),
('sys', 'global', 'nv_auto_resize', '1'),
('sys', 'global', 'dump_interval', '1'),
('sys', 'global', 'cdn_url', ''),
('sys', 'global', 'two_step_verification', '0'),
('sys', 'global', 'admin_2step_opt', 'code'),
('sys', 'global', 'admin_2step_default', 'code'),
('sys', 'global', 'recaptcha_sitekey', ''),
('sys', 'global', 'recaptcha_secretkey', ''),
('sys', 'global', 'recaptcha_type', 'image'),
('sys', 'global', 'users_special', '0'),
('sys', 'global', 'crosssite_restrict', '1'),
('sys', 'global', 'crosssite_valid_domains', ''),
('sys', 'global', 'crosssite_valid_ips', ''),
('sys', 'global', 'crossadmin_restrict', '1'),
('sys', 'global', 'crossadmin_valid_domains', ''),
('sys', 'global', 'crossadmin_valid_ips', ''),
('sys', 'global', 'domains_whitelist', '[\"youtube.com\",\"www.youtube.com\",\"google.com\",\"www.google.com\",\"drive.google.com\"]'),
('sys', 'global', 'domains_restrict', '1'),
('sys', 'define', 'nv_gfx_width', '150'),
('sys', 'define', 'nv_gfx_height', '40'),
('sys', 'define', 'nv_max_width', '1500'),
('sys', 'define', 'nv_max_height', '1500'),
('sys', 'define', 'nv_live_cookie_time', '31104000'),
('sys', 'define', 'nv_live_session_time', '0'),
('sys', 'define', 'nv_anti_iframe', '1'),
('sys', 'define', 'nv_anti_agent', '0'),
('sys', 'define', 'nv_allowed_html_tags', 'embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, s, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'),
('sys', 'define', 'nv_debug', '1'),
('vi', 'global', 'site_domain', ''),
('vi', 'global', 'site_name', 'Báo Dân Trí'),
('vi', 'global', 'site_logo', 'uploads/logo_dantri.png'),
('vi', 'global', 'site_banner', 'uploads/banner.png'),
('vi', 'global', 'site_favicon', ''),
('vi', 'global', 'site_description', ''),
('vi', 'global', 'site_keywords', ''),
('vi', 'global', 'theme_type', 'r,d,m'),
('vi', 'global', 'site_theme', 'BaoDanTri'),
('vi', 'global', 'preview_theme', ''),
('vi', 'global', 'user_allowed_theme', ''),
('vi', 'global', 'mobile_theme', 'mobile_default'),
('vi', 'global', 'site_home_module', 'news'),
('vi', 'global', 'switch_mobi_des', '1'),
('vi', 'global', 'upload_logo', ''),
('vi', 'global', 'upload_logo_pos', 'bottomRight'),
('vi', 'global', 'autologosize1', '50'),
('vi', 'global', 'autologosize2', '40'),
('vi', 'global', 'autologosize3', '30'),
('vi', 'global', 'autologomod', ''),
('vi', 'global', 'name_show', '0'),
('vi', 'global', 'cronjobs_next_time', '1605925604'),
('vi', 'global', 'disable_site_content', 'Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),
('vi', 'seotools', 'prcservice', ''),
('vi', 'news', 'indexfile', 'viewcat_main_right'),
('vi', 'news', 'per_page', '20'),
('vi', 'news', 'st_links', '10'),
('vi', 'news', 'homewidth', '100'),
('vi', 'news', 'homeheight', '150'),
('vi', 'news', 'blockwidth', '70'),
('vi', 'news', 'blockheight', '75'),
('vi', 'news', 'imagefull', '460'),
('vi', 'news', 'copyright', 'Chú ý: Việc đăng lại bài viết trên ở website hoặc các phương tiện truyền thông khác mà không ghi rõ nguồn http://nukeviet.vn là vi phạm bản quyền'),
('vi', 'news', 'showtooltip', '1'),
('vi', 'news', 'tooltip_position', 'bottom'),
('vi', 'news', 'tooltip_length', '150'),
('vi', 'news', 'showhometext', '1'),
('vi', 'news', 'timecheckstatus', '0'),
('vi', 'news', 'config_source', '0'),
('vi', 'news', 'show_no_image', ''),
('vi', 'news', 'allowed_rating_point', '1'),
('vi', 'news', 'facebookappid', ''),
('vi', 'news', 'socialbutton', '1'),
('vi', 'news', 'alias_lower', '1'),
('vi', 'news', 'tags_alias', '0'),
('vi', 'news', 'auto_tags', '0'),
('vi', 'news', 'tags_remind', '1'),
('vi', 'news', 'keywords_tag', '1'),
('vi', 'news', 'copy_news', '0'),
('vi', 'news', 'structure_upload', 'Ym'),
('vi', 'news', 'imgposition', '2'),
('vi', 'news', 'htmlhometext', '0'),
('vi', 'news', 'order_articles', '1'),
('vi', 'news', 'identify_cat_change', '0'),
('vi', 'news', 'elas_use', '0'),
('vi', 'news', 'elas_host', ''),
('vi', 'news', 'elas_port', '9200'),
('vi', 'news', 'elas_index', ''),
('vi', 'news', 'instant_articles_active', '0'),
('vi', 'news', 'instant_articles_template', 'default'),
('vi', 'news', 'instant_articles_httpauth', '0'),
('vi', 'news', 'instant_articles_username', ''),
('vi', 'news', 'instant_articles_password', ''),
('vi', 'news', 'instant_articles_livetime', '60'),
('vi', 'news', 'instant_articles_gettime', '120'),
('vi', 'news', 'instant_articles_auto', '1'),
('vi', 'news', 'auto_postcomm', '1'),
('vi', 'news', 'allowed_comm', '-1'),
('vi', 'news', 'view_comm', '6'),
('vi', 'news', 'setcomm', '4'),
('vi', 'news', 'activecomm', '1'),
('vi', 'news', 'emailcomm', '0'),
('vi', 'news', 'adminscomm', ''),
('vi', 'news', 'sortcomm', '0'),
('vi', 'news', 'captcha', '1'),
('vi', 'news', 'perpagecomm', '5'),
('vi', 'news', 'timeoutcomm', '360'),
('vi', 'news', 'allowattachcomm', '0'),
('vi', 'news', 'alloweditorcomm', '0'),
('vi', 'news', 'frontend_edit_alias', '0'),
('vi', 'news', 'frontend_edit_layout', '1'),
('vi', 'page', 'auto_postcomm', '1'),
('vi', 'page', 'allowed_comm', '-1'),
('vi', 'page', 'view_comm', '6'),
('vi', 'page', 'setcomm', '4'),
('vi', 'page', 'activecomm', '0'),
('vi', 'page', 'emailcomm', '0'),
('vi', 'page', 'adminscomm', ''),
('vi', 'page', 'sortcomm', '0'),
('vi', 'page', 'captcha', '1'),
('vi', 'page', 'perpagecomm', '5'),
('vi', 'page', 'timeoutcomm', '360'),
('vi', 'page', 'allowattachcomm', '0'),
('vi', 'page', 'alloweditorcomm', '0'),
('vi', 'freecontent', 'next_execute', '0'),
('vi', 'contact', 'bodytext', ''),
('vi', 'contact', 'sendcopymode', '0'),
('sys', 'site', 'statistics_timezone', 'Asia/Bangkok'),
('sys', 'site', 'site_email', ''),
('sys', 'global', 'error_set_logs', '1'),
('sys', 'global', 'error_send_email', ''),
('sys', 'global', 'site_lang', 'vi'),
('sys', 'global', 'my_domains', 'shop_dienthoai.my,localhost'),
('sys', 'global', 'cookie_prefix', 'nv4'),
('sys', 'global', 'session_prefix', 'nv4s_k3Cw2x'),
('sys', 'global', 'site_timezone', 'byCountry'),
('sys', 'global', 'proxy_blocker', '0'),
('sys', 'global', 'str_referer_blocker', '0'),
('sys', 'global', 'lang_multi', '0'),
('sys', 'global', 'lang_geo', '0'),
('sys', 'global', 'ftp_server', 'localhost'),
('sys', 'global', 'ftp_port', '21'),
('sys', 'global', 'ftp_user_name', ''),
('sys', 'global', 'ftp_user_pass', 't6S2ZA6Tuj6404-K1zFj5Q,,'),
('sys', 'global', 'ftp_path', '/'),
('sys', 'global', 'ftp_check_login', '0'),
('vi', 'shops', 'image_size', '100x100'),
('vi', 'shops', 'home_view', 'view_home_all'),
('vi', 'shops', 'per_page', '20'),
('vi', 'shops', 'per_row', '3'),
('vi', 'shops', 'money_unit', 'VND'),
('vi', 'shops', 'weight_unit', 'g'),
('vi', 'shops', 'post_auto_member', '0'),
('vi', 'shops', 'auto_check_order', '1'),
('vi', 'shops', 'format_order_id', 'S%06s'),
('vi', 'shops', 'format_code_id', 'S%06s'),
('vi', 'shops', 'facebookappid', ''),
('vi', 'shops', 'active_guest_order', '1'),
('vi', 'shops', 'active_showhomtext', '1'),
('vi', 'shops', 'active_order', '1'),
('vi', 'shops', 'active_order_popup', '1'),
('vi', 'shops', 'active_order_non_detail', '1'),
('vi', 'shops', 'active_price', '1'),
('vi', 'shops', 'active_order_number', '0'),
('vi', 'shops', 'order_day', '0'),
('vi', 'shops', 'order_nexttime', '0'),
('vi', 'shops', 'active_payment', '1'),
('vi', 'shops', 'groups_price', '3'),
('vi', 'shops', 'active_tooltip', '1'),
('vi', 'shops', 'timecheckstatus', '0'),
('vi', 'shops', 'show_product_code', '1'),
('vi', 'shops', 'show_compare', '1'),
('vi', 'shops', 'show_displays', '1'),
('vi', 'shops', 'use_shipping', '1'),
('vi', 'shops', 'use_coupons', '1'),
('vi', 'shops', 'active_wishlist', '1'),
('vi', 'shops', 'active_gift', '1'),
('vi', 'shops', 'active_warehouse', '1'),
('vi', 'shops', 'tags_alias', '0'),
('vi', 'shops', 'auto_tags', '1'),
('vi', 'shops', 'tags_remind', '0'),
('vi', 'shops', 'point_active', '0'),
('vi', 'shops', 'point_conversion', '0'),
('vi', 'shops', 'point_new_order', '0'),
('vi', 'shops', 'money_to_point', '0'),
('vi', 'shops', 'review_active', '1'),
('vi', 'shops', 'review_check', '1'),
('vi', 'shops', 'review_captcha', '1'),
('vi', 'shops', 'group_price', ''),
('vi', 'shops', 'groups_notify', '3'),
('vi', 'shops', 'template_active', '0'),
('vi', 'shops', 'download_active', '0'),
('vi', 'shops', 'download_groups', '6'),
('vi', 'shops', 'sortdefault', '0'),
('vi', 'shops', 'alias_lower', '1'),
('vi', 'shops', 'auto_postcomm', '1'),
('vi', 'shops', 'allowed_comm', '-1'),
('vi', 'shops', 'view_comm', '6'),
('vi', 'shops', 'setcomm', '4'),
('vi', 'shops', 'activecomm', '1'),
('vi', 'shops', 'emailcomm', '0'),
('vi', 'shops', 'adminscomm', ''),
('vi', 'shops', 'sortcomm', '0'),
('vi', 'shops', 'captcha', '1'),
('vi', 'shops', 'allowattachcomm', '0'),
('vi', 'shops', 'alloweditorcomm', '0');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_cookies`
--

CREATE TABLE `nv4_cookies` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT 0,
  `secure` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_cookies`
--

INSERT INTO `nv4_cookies` (`name`, `value`, `domain`, `path`, `expires`, `secure`) VALUES
('nv4c_b1Sp_ctr', 'MjdfNzJfOTdfNTEuVk4=', '.api.nukeviet.vn', '/', 1635644470, 0),
('nv4c_b1Sp_u_lang', 'YpTSHDtzEZZlnKC1-4-mDQ,,', '.api.nukeviet.vn', '/', 1635212470, 0),
('nv4c_b1Sp_statistic_vi', 'P0xa-1LeH7IEkS-lX3wLWA,,', '.api.nukeviet.vn', '/', 1604110270, 0),
('nv4c_b1Sp_nvvithemever', 'y6z0B4S1YKW4aqQyD0bnVQ,,', '.api.nukeviet.vn', '/', 1635213077, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_counter`
--

CREATE TABLE `nv4_counter` (
  `c_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_val` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT 0,
  `c_count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `vi_count` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_counter`
--

INSERT INTO `nv4_counter` (`c_type`, `c_val`, `last_update`, `c_count`, `vi_count`) VALUES
('c_time', 'start', 0, 0, 0),
('c_time', 'last', 0, 1605922942, 0),
('total', 'hits', 1605922942, 98, 98),
('year', '2020', 1605922942, 98, 98),
('year', '2021', 0, 0, 0),
('year', '2022', 0, 0, 0),
('year', '2023', 0, 0, 0),
('year', '2024', 0, 0, 0),
('year', '2025', 0, 0, 0),
('year', '2026', 0, 0, 0),
('year', '2027', 0, 0, 0),
('year', '2028', 0, 0, 0),
('month', 'Jan', 0, 0, 0),
('month', 'Feb', 0, 0, 0),
('month', 'Mar', 0, 0, 0),
('month', 'Apr', 0, 0, 0),
('month', 'May', 0, 0, 0),
('month', 'Jun', 0, 0, 0),
('month', 'Jul', 0, 0, 0),
('month', 'Aug', 0, 0, 0),
('month', 'Sep', 0, 0, 0),
('month', 'Oct', 1604114544, 12, 12),
('month', 'Nov', 1605922942, 86, 86),
('month', 'Dec', 0, 0, 0),
('day', '01', 1604249282, 5, 5),
('day', '02', 1604291870, 3, 3),
('day', '03', 1604394184, 2, 2),
('day', '04', 1604461249, 2, 2),
('day', '05', 0, 0, 0),
('day', '06', 0, 0, 0),
('day', '07', 1604723947, 4, 4),
('day', '08', 0, 0, 0),
('day', '09', 0, 0, 0),
('day', '10', 1605015286, 7, 7),
('day', '11', 1605067300, 4, 4),
('day', '12', 1605178969, 11, 11),
('day', '13', 1605279455, 6, 6),
('day', '14', 1605347146, 7, 7),
('day', '15', 1605433598, 5, 5),
('day', '16', 1605521627, 4, 4),
('day', '17', 1605627350, 6, 6),
('day', '18', 1605706455, 10, 10),
('day', '19', 0, 0, 0),
('day', '20', 1605889740, 9, 9),
('day', '21', 1605922942, 1, 1),
('day', '22', 0, 0, 0),
('day', '23', 0, 0, 0),
('day', '24', 0, 0, 0),
('day', '25', 1603626420, 0, 0),
('day', '26', 1603682996, 0, 0),
('day', '27', 0, 0, 0),
('day', '28', 1603859117, 0, 0),
('day', '29', 0, 0, 0),
('day', '30', 1604073983, 0, 0),
('day', '31', 1604114544, 0, 0),
('dayofweek', 'Sunday', 1605433598, 11, 11),
('dayofweek', 'Monday', 1605521627, 8, 8),
('dayofweek', 'Tuesday', 1605627350, 15, 15),
('dayofweek', 'Wednesday', 1605706455, 19, 19),
('dayofweek', 'Thursday', 1605178969, 11, 11),
('dayofweek', 'Friday', 1605889740, 18, 18),
('dayofweek', 'Saturday', 1605922942, 16, 16),
('hour', '00', 0, 0, 0),
('hour', '01', 0, 0, 0),
('hour', '02', 0, 0, 0),
('hour', '03', 0, 0, 0),
('hour', '04', 0, 0, 0),
('hour', '05', 0, 0, 0),
('hour', '06', 0, 0, 0),
('hour', '07', 0, 0, 0),
('hour', '08', 1605922942, 1, 1),
('hour', '09', 1605840143, 0, 0),
('hour', '10', 1605843744, 0, 0),
('hour', '11', 1605845544, 0, 0),
('hour', '12', 0, 0, 0),
('hour', '13', 0, 0, 0),
('hour', '14', 1605686095, 0, 0),
('hour', '15', 1605861534, 0, 0),
('hour', '16', 1605865031, 0, 0),
('hour', '17', 1605521627, 0, 0),
('hour', '18', 1605178969, 0, 0),
('hour', '19', 1605011403, 0, 0),
('hour', '20', 1605706455, 0, 0),
('hour', '21', 1605623749, 0, 0),
('hour', '22', 1605627350, 0, 0),
('hour', '23', 1605889740, 0, 0),
('bot', 'googlebot', 0, 0, 0),
('bot', 'msnbot', 0, 0, 0),
('bot', 'bingbot', 0, 0, 0),
('bot', 'yahooslurp', 0, 0, 0),
('bot', 'w3cvalidator', 0, 0, 0),
('browser', 'opera', 0, 0, 0),
('browser', 'operamini', 0, 0, 0),
('browser', 'webtv', 0, 0, 0),
('browser', 'explorer', 0, 0, 0),
('browser', 'edge', 0, 0, 0),
('browser', 'pocket', 0, 0, 0),
('browser', 'konqueror', 0, 0, 0),
('browser', 'icab', 0, 0, 0),
('browser', 'omniweb', 0, 0, 0),
('browser', 'firebird', 0, 0, 0),
('browser', 'firefox', 0, 0, 0),
('browser', 'iceweasel', 0, 0, 0),
('browser', 'shiretoko', 0, 0, 0),
('browser', 'mozilla', 0, 0, 0),
('browser', 'amaya', 0, 0, 0),
('browser', 'lynx', 0, 0, 0),
('browser', 'safari', 0, 0, 0),
('browser', 'iphone', 0, 0, 0),
('browser', 'ipod', 0, 0, 0),
('browser', 'ipad', 0, 0, 0),
('browser', 'chrome', 1605922942, 96, 96),
('browser', 'cococ', 0, 0, 0),
('browser', 'android', 0, 0, 0),
('browser', 'googlebot', 0, 0, 0),
('browser', 'yahooslurp', 0, 0, 0),
('browser', 'w3cvalidator', 0, 0, 0),
('browser', 'blackberry', 0, 0, 0),
('browser', 'icecat', 0, 0, 0),
('browser', 'nokias60', 0, 0, 0),
('browser', 'nokia', 0, 0, 0),
('browser', 'msn', 0, 0, 0),
('browser', 'msnbot', 0, 0, 0),
('browser', 'bingbot', 0, 0, 0),
('browser', 'netscape', 0, 0, 0),
('browser', 'galeon', 0, 0, 0),
('browser', 'netpositive', 0, 0, 0),
('browser', 'phoenix', 0, 0, 0),
('browser', 'Mobile', 0, 0, 0),
('browser', 'bots', 0, 0, 0),
('browser', 'Unknown', 0, 0, 0),
('os', 'unknown', 0, 0, 0),
('os', 'win', 0, 0, 0),
('os', 'win10', 1605922942, 98, 98),
('os', 'win8', 0, 0, 0),
('os', 'win7', 0, 0, 0),
('os', 'win2003', 0, 0, 0),
('os', 'winvista', 0, 0, 0),
('os', 'wince', 0, 0, 0),
('os', 'winxp', 0, 0, 0),
('os', 'win2000', 0, 0, 0),
('os', 'apple', 0, 0, 0),
('os', 'linux', 0, 0, 0),
('os', 'os2', 0, 0, 0),
('os', 'beos', 0, 0, 0),
('os', 'iphone', 0, 0, 0),
('os', 'ipod', 0, 0, 0),
('os', 'ipad', 0, 0, 0),
('os', 'blackberry', 0, 0, 0),
('os', 'nokia', 0, 0, 0),
('os', 'freebsd', 0, 0, 0),
('os', 'openbsd', 0, 0, 0),
('os', 'netbsd', 0, 0, 0),
('os', 'sunos', 0, 0, 0),
('os', 'opensolaris', 0, 0, 0),
('os', 'android', 0, 0, 0),
('os', 'irix', 0, 0, 0),
('os', 'palm', 0, 0, 0),
('country', 'AD', 0, 0, 0),
('country', 'AE', 0, 0, 0),
('country', 'AF', 0, 0, 0),
('country', 'AG', 0, 0, 0),
('country', 'AI', 0, 0, 0),
('country', 'AL', 0, 0, 0),
('country', 'AM', 0, 0, 0),
('country', 'AN', 0, 0, 0),
('country', 'AO', 0, 0, 0),
('country', 'AQ', 0, 0, 0),
('country', 'AR', 0, 0, 0),
('country', 'AS', 0, 0, 0),
('country', 'AT', 0, 0, 0),
('country', 'AU', 0, 0, 0),
('country', 'AW', 0, 0, 0),
('country', 'AZ', 0, 0, 0),
('country', 'BA', 0, 0, 0),
('country', 'BB', 0, 0, 0),
('country', 'BD', 0, 0, 0),
('country', 'BE', 0, 0, 0),
('country', 'BF', 0, 0, 0),
('country', 'BG', 0, 0, 0),
('country', 'BH', 0, 0, 0),
('country', 'BI', 0, 0, 0),
('country', 'BJ', 0, 0, 0),
('country', 'BM', 0, 0, 0),
('country', 'BN', 0, 0, 0),
('country', 'BO', 0, 0, 0),
('country', 'BR', 0, 0, 0),
('country', 'BS', 0, 0, 0),
('country', 'BT', 0, 0, 0),
('country', 'BW', 0, 0, 0),
('country', 'BY', 0, 0, 0),
('country', 'BZ', 0, 0, 0),
('country', 'CA', 0, 0, 0),
('country', 'CD', 0, 0, 0),
('country', 'CF', 0, 0, 0),
('country', 'CG', 0, 0, 0),
('country', 'CH', 0, 0, 0),
('country', 'CI', 0, 0, 0),
('country', 'CK', 0, 0, 0),
('country', 'CL', 0, 0, 0),
('country', 'CM', 0, 0, 0),
('country', 'CN', 0, 0, 0),
('country', 'CO', 0, 0, 0),
('country', 'CR', 0, 0, 0),
('country', 'CS', 0, 0, 0),
('country', 'CU', 0, 0, 0),
('country', 'CV', 0, 0, 0),
('country', 'CY', 0, 0, 0),
('country', 'CZ', 0, 0, 0),
('country', 'DE', 0, 0, 0),
('country', 'DJ', 0, 0, 0),
('country', 'DK', 0, 0, 0),
('country', 'DM', 0, 0, 0),
('country', 'DO', 0, 0, 0),
('country', 'DZ', 0, 0, 0),
('country', 'EC', 0, 0, 0),
('country', 'EE', 0, 0, 0),
('country', 'EG', 0, 0, 0),
('country', 'ER', 0, 0, 0),
('country', 'ES', 0, 0, 0),
('country', 'ET', 0, 0, 0),
('country', 'EU', 0, 0, 0),
('country', 'FI', 0, 0, 0),
('country', 'FJ', 0, 0, 0),
('country', 'FK', 0, 0, 0),
('country', 'FM', 0, 0, 0),
('country', 'FO', 0, 0, 0),
('country', 'FR', 0, 0, 0),
('country', 'GA', 0, 0, 0),
('country', 'GB', 0, 0, 0),
('country', 'GD', 0, 0, 0),
('country', 'GE', 0, 0, 0),
('country', 'GF', 0, 0, 0),
('country', 'GH', 0, 0, 0),
('country', 'GI', 0, 0, 0),
('country', 'GL', 0, 0, 0),
('country', 'GM', 0, 0, 0),
('country', 'GN', 0, 0, 0),
('country', 'GP', 0, 0, 0),
('country', 'GQ', 0, 0, 0),
('country', 'GR', 0, 0, 0),
('country', 'GS', 0, 0, 0),
('country', 'GT', 0, 0, 0),
('country', 'GU', 0, 0, 0),
('country', 'GW', 0, 0, 0),
('country', 'GY', 0, 0, 0),
('country', 'HK', 0, 0, 0),
('country', 'HN', 0, 0, 0),
('country', 'HR', 0, 0, 0),
('country', 'HT', 0, 0, 0),
('country', 'HU', 0, 0, 0),
('country', 'ID', 0, 0, 0),
('country', 'IE', 0, 0, 0),
('country', 'IL', 0, 0, 0),
('country', 'IN', 0, 0, 0),
('country', 'IO', 0, 0, 0),
('country', 'IQ', 0, 0, 0),
('country', 'IR', 0, 0, 0),
('country', 'IS', 0, 0, 0),
('country', 'IT', 0, 0, 0),
('country', 'JM', 0, 0, 0),
('country', 'JO', 0, 0, 0),
('country', 'JP', 0, 0, 0),
('country', 'KE', 0, 0, 0),
('country', 'KG', 0, 0, 0),
('country', 'KH', 0, 0, 0),
('country', 'KI', 0, 0, 0),
('country', 'KM', 0, 0, 0),
('country', 'KN', 0, 0, 0),
('country', 'KR', 0, 0, 0),
('country', 'KW', 0, 0, 0),
('country', 'KY', 0, 0, 0),
('country', 'KZ', 0, 0, 0),
('country', 'LA', 0, 0, 0),
('country', 'LB', 0, 0, 0),
('country', 'LC', 0, 0, 0),
('country', 'LI', 0, 0, 0),
('country', 'LK', 0, 0, 0),
('country', 'LR', 0, 0, 0),
('country', 'LS', 0, 0, 0),
('country', 'LT', 0, 0, 0),
('country', 'LU', 0, 0, 0),
('country', 'LV', 0, 0, 0),
('country', 'LY', 0, 0, 0),
('country', 'MA', 0, 0, 0),
('country', 'MC', 0, 0, 0),
('country', 'MD', 0, 0, 0),
('country', 'MG', 0, 0, 0),
('country', 'MH', 0, 0, 0),
('country', 'MK', 0, 0, 0),
('country', 'ML', 0, 0, 0),
('country', 'MM', 0, 0, 0),
('country', 'MN', 0, 0, 0),
('country', 'MO', 0, 0, 0),
('country', 'MP', 0, 0, 0),
('country', 'MQ', 0, 0, 0),
('country', 'MR', 0, 0, 0),
('country', 'MT', 0, 0, 0),
('country', 'MU', 0, 0, 0),
('country', 'MV', 0, 0, 0),
('country', 'MW', 0, 0, 0),
('country', 'MX', 0, 0, 0),
('country', 'MY', 0, 0, 0),
('country', 'MZ', 0, 0, 0),
('country', 'NA', 0, 0, 0),
('country', 'NC', 0, 0, 0),
('country', 'NE', 0, 0, 0),
('country', 'NF', 0, 0, 0),
('country', 'NG', 0, 0, 0),
('country', 'NI', 0, 0, 0),
('country', 'NL', 0, 0, 0),
('country', 'NO', 0, 0, 0),
('country', 'NP', 0, 0, 0),
('country', 'NR', 0, 0, 0),
('country', 'NU', 0, 0, 0),
('country', 'NZ', 0, 0, 0),
('country', 'OM', 0, 0, 0),
('country', 'PA', 0, 0, 0),
('country', 'PE', 0, 0, 0),
('country', 'PF', 0, 0, 0),
('country', 'PG', 0, 0, 0),
('country', 'PH', 0, 0, 0),
('country', 'PK', 0, 0, 0),
('country', 'PL', 0, 0, 0),
('country', 'PR', 0, 0, 0),
('country', 'PS', 0, 0, 0),
('country', 'PT', 0, 0, 0),
('country', 'PW', 0, 0, 0),
('country', 'PY', 0, 0, 0),
('country', 'QA', 0, 0, 0),
('country', 'RE', 0, 0, 0),
('country', 'RO', 0, 0, 0),
('country', 'RU', 0, 0, 0),
('country', 'RW', 0, 0, 0),
('country', 'SA', 0, 0, 0),
('country', 'SB', 0, 0, 0),
('country', 'SC', 0, 0, 0),
('country', 'SD', 0, 0, 0),
('country', 'SE', 0, 0, 0),
('country', 'SG', 0, 0, 0),
('country', 'SI', 0, 0, 0),
('country', 'SK', 0, 0, 0),
('country', 'SL', 0, 0, 0),
('country', 'SM', 0, 0, 0),
('country', 'SN', 0, 0, 0),
('country', 'SO', 0, 0, 0),
('country', 'SR', 0, 0, 0),
('country', 'ST', 0, 0, 0),
('country', 'SV', 0, 0, 0),
('country', 'SY', 0, 0, 0),
('country', 'SZ', 0, 0, 0),
('country', 'TD', 0, 0, 0),
('country', 'TF', 0, 0, 0),
('country', 'TG', 0, 0, 0),
('country', 'TH', 0, 0, 0),
('country', 'TJ', 0, 0, 0),
('country', 'TK', 0, 0, 0),
('country', 'TL', 0, 0, 0),
('country', 'TM', 0, 0, 0),
('country', 'TN', 0, 0, 0),
('country', 'TO', 0, 0, 0),
('country', 'TR', 0, 0, 0),
('country', 'TT', 0, 0, 0),
('country', 'TV', 0, 0, 0),
('country', 'TW', 0, 0, 0),
('country', 'TZ', 0, 0, 0),
('country', 'UA', 0, 0, 0),
('country', 'UG', 0, 0, 0),
('country', 'US', 0, 0, 0),
('country', 'UY', 0, 0, 0),
('country', 'UZ', 0, 0, 0),
('country', 'VA', 0, 0, 0),
('country', 'VC', 0, 0, 0),
('country', 'VE', 0, 0, 0),
('country', 'VG', 0, 0, 0),
('country', 'VI', 0, 0, 0),
('country', 'VN', 0, 0, 0),
('country', 'VU', 0, 0, 0),
('country', 'WS', 0, 0, 0),
('country', 'YE', 0, 0, 0),
('country', 'YT', 0, 0, 0),
('country', 'YU', 0, 0, 0),
('country', 'ZA', 0, 0, 0),
('country', 'ZM', 0, 0, 0),
('country', 'ZW', 0, 0, 0),
('country', 'ZZ', 1605922942, 98, 98),
('country', 'unkown', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_cronjobs`
--

CREATE TABLE `nv4_cronjobs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `start_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `inter_val` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `inter_val_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: Lặp lại sau thời điểm bắt đầu thực tế, 1:lặp lại sau thời điểm bắt đầu trong CSDL',
  `run_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `run_func` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_sys` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `last_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_result` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `vi_cron_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_cronjobs`
--

INSERT INTO `nv4_cronjobs` (`id`, `start_time`, `inter_val`, `inter_val_type`, `run_file`, `run_func`, `params`, `del`, `is_sys`, `act`, `last_time`, `last_result`, `vi_cron_name`) VALUES
(1, 1603626132, 5, 0, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1605925304, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),
(2, 1603626132, 1440, 0, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1605922943, 1, 'Tự động lưu CSDL'),
(3, 1603626132, 60, 0, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1605922418, 1, 'Xóa các file tạm trong thư mục tmp'),
(4, 1603626132, 30, 0, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1605924585, 1, 'Xóa IP log files, Xóa các file nhật ký truy cập'),
(5, 1603626132, 1440, 0, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1605922943, 1, 'Xóa các file error_log quá hạn'),
(6, 1603626132, 360, 0, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'Gửi email các thông báo lỗi cho admin'),
(7, 1603626132, 60, 0, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1605922418, 1, 'Xóa các referer quá hạn'),
(8, 1603626132, 60, 0, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1605922418, 1, 'Kiểm tra phiên bản NukeViet'),
(9, 1603626132, 1440, 0, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1605922943, 1, 'Xóa thông báo cũ');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_extension_files`
--

CREATE TABLE `nv4_extension_files` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastmodified` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `duplicate` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_extension_files`
--

INSERT INTO `nv4_extension_files` (`idfile`, `type`, `title`, `path`, `lastmodified`, `duplicate`) VALUES
(1, 'theme', 'themtet2018', 'themtet2018/blocks/global.block_language.php', 1603857027, 0),
(2, 'theme', 'themtet2018', 'themtet2018/blocks/global.block_language.tpl', 1603857027, 0),
(3, 'theme', 'themtet2018', 'themtet2018/blocks/global.company_info.ini', 1603857027, 0),
(4, 'theme', 'themtet2018', 'themtet2018/blocks/global.company_info.php', 1603857027, 0),
(5, 'theme', 'themtet2018', 'themtet2018/blocks/global.company_info.tpl', 1603857027, 0),
(6, 'theme', 'themtet2018', 'themtet2018/blocks/global.copyright.ini', 1603857027, 0),
(7, 'theme', 'themtet2018', 'themtet2018/blocks/global.copyright.php', 1603857027, 0),
(8, 'theme', 'themtet2018', 'themtet2018/blocks/global.copyright.tpl', 1603857027, 0),
(9, 'theme', 'themtet2018', 'themtet2018/blocks/global.menu_footer.ini', 1603857027, 0),
(10, 'theme', 'themtet2018', 'themtet2018/blocks/global.menu_footer.php', 1603857027, 0),
(11, 'theme', 'themtet2018', 'themtet2018/blocks/global.menu_footer.tpl', 1603857027, 0),
(12, 'theme', 'themtet2018', 'themtet2018/blocks/global.module_menu.php', 1603857027, 0),
(13, 'theme', 'themtet2018', 'themtet2018/blocks/global.module_menu.tpl', 1603857027, 0),
(14, 'theme', 'themtet2018', 'themtet2018/blocks/global.QR_code.ini', 1603857027, 0),
(15, 'theme', 'themtet2018', 'themtet2018/blocks/global.QR_code.php', 1603857027, 0),
(16, 'theme', 'themtet2018', 'themtet2018/blocks/global.QR_code.tpl', 1603857027, 0),
(17, 'theme', 'themtet2018', 'themtet2018/blocks/global.social.ini', 1603857027, 0),
(18, 'theme', 'themtet2018', 'themtet2018/blocks/global.social.php', 1603857027, 0),
(19, 'theme', 'themtet2018', 'themtet2018/blocks/global.social.tpl', 1603857027, 0),
(20, 'theme', 'themtet2018', 'themtet2018/blocks/index.html', 1603857027, 0),
(21, 'theme', 'themtet2018', 'themtet2018/config.ini', 1603857027, 0),
(22, 'theme', 'themtet2018', 'themtet2018/config.json', 1603857027, 0),
(23, 'theme', 'themtet2018', 'themtet2018/config.php', 1603857027, 0),
(24, 'theme', 'themtet2018', 'themtet2018/config_default.php', 1603857027, 0),
(25, 'theme', 'themtet2018', 'themtet2018/css/admin.css', 1603857027, 0),
(26, 'theme', 'themtet2018', 'themtet2018/css/banners.css', 1603857027, 0),
(27, 'theme', 'themtet2018', 'themtet2018/css/bootstrap-theme.min.css', 1603857027, 0),
(28, 'theme', 'themtet2018', 'themtet2018/css/bootstrap.min.css', 1603857027, 0),
(29, 'theme', 'themtet2018', 'themtet2018/css/bootstrap.non-responsive.css', 1603857027, 0),
(30, 'theme', 'themtet2018', 'themtet2018/css/comment.css', 1603857027, 0),
(31, 'theme', 'themtet2018', 'themtet2018/css/contact.css', 1603857027, 0),
(32, 'theme', 'themtet2018', 'themtet2018/css/contentslider.css', 1603857027, 0),
(33, 'theme', 'themtet2018', 'themtet2018/css/feeds.css', 1603857027, 0),
(34, 'theme', 'themtet2018', 'themtet2018/css/index.html', 1603857027, 0),
(35, 'theme', 'themtet2018', 'themtet2018/css/jquery.metisMenu.css', 1603857027, 0),
(36, 'theme', 'themtet2018', 'themtet2018/css/jquery.ui.tabs.css', 1603857027, 0),
(37, 'theme', 'themtet2018', 'themtet2018/css/menu.css', 1603857027, 0),
(38, 'theme', 'themtet2018', 'themtet2018/css/news.css', 1603857027, 0),
(39, 'theme', 'themtet2018', 'themtet2018/css/slimmenu.css', 1603857027, 0),
(40, 'theme', 'themtet2018', 'themtet2018/css/statistics.css', 1603857027, 0),
(41, 'theme', 'themtet2018', 'themtet2018/css/style.css', 1603857027, 0),
(42, 'theme', 'themtet2018', 'themtet2018/css/style.non-responsive.css', 1603857027, 0),
(43, 'theme', 'themtet2018', 'themtet2018/css/style.responsive.css', 1603857027, 0),
(44, 'theme', 'themtet2018', 'themtet2018/css/superfish-navbar.css', 1603857027, 0),
(45, 'theme', 'themtet2018', 'themtet2018/css/superfish-vertical.css', 1603857027, 0),
(46, 'theme', 'themtet2018', 'themtet2018/css/superfish.css', 1603857027, 0),
(47, 'theme', 'themtet2018', 'themtet2018/css/two-step-verification.css', 1603857027, 0),
(48, 'theme', 'themtet2018', 'themtet2018/css/users.css', 1603857027, 0),
(49, 'theme', 'themtet2018', 'themtet2018/fonts/DancingScript-Bold.ttf', 1603857027, 0),
(50, 'theme', 'themtet2018', 'themtet2018/fonts/index.html', 1603857027, 0),
(51, 'theme', 'themtet2018', 'themtet2018/fonts/NukeVietIcons.eot', 1603857027, 0),
(52, 'theme', 'themtet2018', 'themtet2018/fonts/NukeVietIcons.svg', 1603857027, 0),
(53, 'theme', 'themtet2018', 'themtet2018/fonts/NukeVietIcons.ttf', 1603857027, 0),
(54, 'theme', 'themtet2018', 'themtet2018/fonts/NukeVietIcons.woff', 1603857027, 0),
(55, 'theme', 'themtet2018', 'themtet2018/images/arrow_left_orange.png', 1603857027, 0),
(56, 'theme', 'themtet2018', 'themtet2018/images/bg_banner.png', 1603857027, 0),
(57, 'theme', 'themtet2018', 'themtet2018/images/bg_footer.png', 1603857027, 0),
(58, 'theme', 'themtet2018', 'themtet2018/images/bg_footer1.png', 1603857027, 0),
(59, 'theme', 'themtet2018', 'themtet2018/images/bg_footer_body.jpg', 1603857027, 0),
(60, 'theme', 'themtet2018', 'themtet2018/images/bg_header.png', 1603857027, 0),
(61, 'theme', 'themtet2018', 'themtet2018/images/bg_main.jpg', 1603857027, 0),
(62, 'theme', 'themtet2018', 'themtet2018/images/bg_top.png', 1603857027, 0),
(63, 'theme', 'themtet2018', 'themtet2018/images/daophai.png', 1603857027, 0),
(64, 'theme', 'themtet2018', 'themtet2018/images/daotrai.png', 1603857027, 0),
(65, 'theme', 'themtet2018', 'themtet2018/images/dau-chan.png', 1603857027, 0),
(66, 'theme', 'themtet2018', 'themtet2018/images/dog.png', 1603857027, 0),
(67, 'theme', 'themtet2018', 'themtet2018/images/footer_1.png', 1603857027, 0),
(68, 'theme', 'themtet2018', 'themtet2018/images/footer_2.png', 1603857027, 0),
(69, 'theme', 'themtet2018', 'themtet2018/images/header.png', 1603857027, 0),
(70, 'theme', 'themtet2018', 'themtet2018/images/header_1.png', 1603857027, 0),
(71, 'theme', 'themtet2018', 'themtet2018/images/header_11.png', 1603857027, 0),
(72, 'theme', 'themtet2018', 'themtet2018/images/header_12.png', 1603857027, 0),
(73, 'theme', 'themtet2018', 'themtet2018/images/header_2.png', 1603857027, 0),
(74, 'theme', 'themtet2018', 'themtet2018/images/header_3.png', 1603857027, 0),
(75, 'theme', 'themtet2018', 'themtet2018/images/hoatet.png', 1603857027, 0),
(76, 'theme', 'themtet2018', 'themtet2018/images/icons/bad.png', 1603857027, 0),
(77, 'theme', 'themtet2018', 'themtet2018/images/icons/comment.png', 1603857027, 0),
(78, 'theme', 'themtet2018', 'themtet2018/images/icons/new.gif', 1603857027, 0),
(79, 'theme', 'themtet2018', 'themtet2018/images/icons/required.png', 1603857027, 0),
(80, 'theme', 'themtet2018', 'themtet2018/images/icons/warning.png', 1603857027, 0),
(81, 'theme', 'themtet2018', 'themtet2018/images/icon_bird.png', 1603857027, 0),
(82, 'theme', 'themtet2018', 'themtet2018/images/icon_hand_dog.png', 1603857027, 0),
(83, 'theme', 'themtet2018', 'themtet2018/images/icon_news.png', 1603857027, 0),
(84, 'theme', 'themtet2018', 'themtet2018/images/index.html', 1603857027, 0),
(85, 'theme', 'themtet2018', 'themtet2018/images/logo.png', 1603857027, 0),
(86, 'theme', 'themtet2018', 'themtet2018/images/news/index.html', 1603857027, 0),
(87, 'theme', 'themtet2018', 'themtet2018/images/next.png', 1603857027, 0),
(88, 'theme', 'themtet2018', 'themtet2018/images/no_image.gif', 1603857027, 0),
(89, 'theme', 'themtet2018', 'themtet2018/images/prev.png', 1603857027, 0),
(90, 'theme', 'themtet2018', 'themtet2018/images/squared-blue.png', 1603857027, 0),
(91, 'theme', 'themtet2018', 'themtet2018/images/statistics/bg.gif', 1603857027, 0),
(92, 'theme', 'themtet2018', 'themtet2018/images/statistics/bg2.gif', 1603857027, 0),
(93, 'theme', 'themtet2018', 'themtet2018/images/statistics/index.html', 1603857027, 0),
(94, 'theme', 'themtet2018', 'themtet2018/images/tabs_arrow_down.jpg', 1603857027, 0),
(95, 'theme', 'themtet2018', 'themtet2018/images/tabs_l.png', 1603857027, 0),
(96, 'theme', 'themtet2018', 'themtet2018/images/tabs_r.png', 1603857027, 0),
(97, 'theme', 'themtet2018', 'themtet2018/images/transparent.png', 1603857027, 0),
(98, 'theme', 'themtet2018', 'themtet2018/images/users/facebook.png', 1603857027, 0),
(99, 'theme', 'themtet2018', 'themtet2018/images/users/google.png', 1603857027, 0),
(100, 'theme', 'themtet2018', 'themtet2018/images/users/index.html', 1603857027, 0),
(101, 'theme', 'themtet2018', 'themtet2018/images/users/no_avatar.png', 1603857027, 0),
(102, 'theme', 'themtet2018', 'themtet2018/images/users/nukeviet.png', 1603857027, 0),
(103, 'theme', 'themtet2018', 'themtet2018/images/users/openid.png', 1603857027, 0),
(104, 'theme', 'themtet2018', 'themtet2018/images/users/openid_small.png', 1603857027, 0),
(105, 'theme', 'themtet2018', 'themtet2018/images/users/single-sign-on.png', 1603857027, 0),
(106, 'theme', 'themtet2018', 'themtet2018/images/users/yahoo.png', 1603857027, 0),
(107, 'theme', 'themtet2018', 'themtet2018/images/vien.png', 1603857027, 0),
(108, 'theme', 'themtet2018', 'themtet2018/index.html', 1603857027, 0),
(109, 'theme', 'themtet2018', 'themtet2018/js/banners.js', 1603857027, 0),
(110, 'theme', 'themtet2018', 'themtet2018/js/block.global.company_info.js', 1603857027, 0),
(111, 'theme', 'themtet2018', 'themtet2018/js/bootstrap.min.js', 1603857027, 0),
(112, 'theme', 'themtet2018', 'themtet2018/js/comment.js', 1603857027, 0),
(113, 'theme', 'themtet2018', 'themtet2018/js/contact.js', 1603857027, 0),
(114, 'theme', 'themtet2018', 'themtet2018/js/contentslider.js', 1603857027, 0),
(115, 'theme', 'themtet2018', 'themtet2018/js/fix_banners.js', 1603857027, 0),
(116, 'theme', 'themtet2018', 'themtet2018/js/index.html', 1603857027, 0),
(117, 'theme', 'themtet2018', 'themtet2018/js/jquery.slimmenu.js', 1603857027, 0),
(118, 'theme', 'themtet2018', 'themtet2018/js/main.js', 1603857027, 0),
(119, 'theme', 'themtet2018', 'themtet2018/js/news.js', 1603857027, 0),
(120, 'theme', 'themtet2018', 'themtet2018/js/page.js', 1603857027, 0),
(121, 'theme', 'themtet2018', 'themtet2018/js/statistics.js', 1603857027, 0),
(122, 'theme', 'themtet2018', 'themtet2018/js/two-step-verification.js', 1603857027, 0),
(123, 'theme', 'themtet2018', 'themtet2018/js/users.js', 1603857027, 0),
(124, 'theme', 'themtet2018', 'themtet2018/js/voting.js', 1603857027, 0),
(125, 'theme', 'themtet2018', 'themtet2018/language/admin_en.php', 1603857027, 0),
(126, 'theme', 'themtet2018', 'themtet2018/language/admin_fr.php', 1603857027, 0),
(127, 'theme', 'themtet2018', 'themtet2018/language/admin_vi.php', 1603857027, 0),
(128, 'theme', 'themtet2018', 'themtet2018/language/en.php', 1603857027, 0),
(129, 'theme', 'themtet2018', 'themtet2018/language/fr.php', 1603857027, 0),
(130, 'theme', 'themtet2018', 'themtet2018/language/index.html', 1603857027, 0),
(131, 'theme', 'themtet2018', 'themtet2018/language/vi.php', 1603857027, 0),
(132, 'theme', 'themtet2018', 'themtet2018/layout/block.border.tpl', 1603857027, 0),
(133, 'theme', 'themtet2018', 'themtet2018/layout/block.default.tpl', 1603857027, 0),
(134, 'theme', 'themtet2018', 'themtet2018/layout/block.no_title.tpl', 1603857027, 0),
(135, 'theme', 'themtet2018', 'themtet2018/layout/block.primary.tpl', 1603857027, 0),
(136, 'theme', 'themtet2018', 'themtet2018/layout/block.simple.tpl', 1603857027, 0),
(137, 'theme', 'themtet2018', 'themtet2018/layout/footer_extended.tpl', 1603857027, 0),
(138, 'theme', 'themtet2018', 'themtet2018/layout/footer_only.tpl', 1603857027, 0),
(139, 'theme', 'themtet2018', 'themtet2018/layout/header_extended.tpl', 1603857027, 0),
(140, 'theme', 'themtet2018', 'themtet2018/layout/header_only.tpl', 1603857027, 0),
(141, 'theme', 'themtet2018', 'themtet2018/layout/index.html', 1603857027, 0),
(142, 'theme', 'themtet2018', 'themtet2018/layout/layout.left-main-right.tpl', 1603857027, 0),
(143, 'theme', 'themtet2018', 'themtet2018/layout/layout.left-main.tpl', 1603857027, 0),
(144, 'theme', 'themtet2018', 'themtet2018/layout/layout.left-right-main.tpl', 1603857027, 0),
(145, 'theme', 'themtet2018', 'themtet2018/layout/layout.main-left-right.tpl', 1603857027, 0),
(146, 'theme', 'themtet2018', 'themtet2018/layout/layout.main-right.tpl', 1603857027, 0),
(147, 'theme', 'themtet2018', 'themtet2018/layout/layout.main.tpl', 1603857027, 0),
(148, 'theme', 'themtet2018', 'themtet2018/layout/simple.tpl', 1603857027, 0),
(149, 'theme', 'themtet2018', 'themtet2018/modules/banners/addads.tpl', 1603857027, 0),
(150, 'theme', 'themtet2018', 'themtet2018/modules/banners/global.banners.tpl', 1603857027, 0),
(151, 'theme', 'themtet2018', 'themtet2018/modules/banners/home.tpl', 1603857027, 0),
(152, 'theme', 'themtet2018', 'themtet2018/modules/banners/index.html', 1603857027, 0),
(153, 'theme', 'themtet2018', 'themtet2018/modules/banners/stats.tpl', 1603857027, 0),
(154, 'theme', 'themtet2018', 'themtet2018/modules/comment/comment.tpl', 1603857027, 0),
(155, 'theme', 'themtet2018', 'themtet2018/modules/comment/index.html', 1603857027, 0),
(156, 'theme', 'themtet2018', 'themtet2018/modules/comment/main.tpl', 1603857027, 0),
(157, 'theme', 'themtet2018', 'themtet2018/modules/contact/block.contact_default.tpl', 1603857027, 0),
(158, 'theme', 'themtet2018', 'themtet2018/modules/contact/block.contact_form.tpl', 1603857027, 0),
(159, 'theme', 'themtet2018', 'themtet2018/modules/contact/block.contact_list.tpl', 1603857027, 0),
(160, 'theme', 'themtet2018', 'themtet2018/modules/contact/block.department.tpl', 1603857027, 0),
(161, 'theme', 'themtet2018', 'themtet2018/modules/contact/block.supporter.tpl', 1603857027, 0),
(162, 'theme', 'themtet2018', 'themtet2018/modules/contact/form.tpl', 1603857027, 0),
(163, 'theme', 'themtet2018', 'themtet2018/modules/contact/index.html', 1603857027, 0),
(164, 'theme', 'themtet2018', 'themtet2018/modules/contact/main.tpl', 1603857027, 0),
(165, 'theme', 'themtet2018', 'themtet2018/modules/contact/sendcontact.tpl', 1603857027, 0),
(166, 'theme', 'themtet2018', 'themtet2018/modules/feeds/global.rss.tpl', 1603857027, 0),
(167, 'theme', 'themtet2018', 'themtet2018/modules/feeds/index.html', 1603857027, 0),
(168, 'theme', 'themtet2018', 'themtet2018/modules/freecontent/block.free_content.tpl', 1603857027, 0),
(169, 'theme', 'themtet2018', 'themtet2018/modules/freecontent/index.html', 1603857027, 0),
(170, 'theme', 'themtet2018', 'themtet2018/modules/index.html', 1603857027, 0),
(171, 'theme', 'themtet2018', 'themtet2018/modules/menu/global.bootstrap.tpl', 1603857027, 0),
(172, 'theme', 'themtet2018', 'themtet2018/modules/menu/global.metismenu.tpl', 1603857027, 0),
(173, 'theme', 'themtet2018', 'themtet2018/modules/menu/global.slimmenu.tpl', 1603857027, 0),
(174, 'theme', 'themtet2018', 'themtet2018/modules/menu/global.superfish.tpl', 1603857027, 0),
(175, 'theme', 'themtet2018', 'themtet2018/modules/menu/global.treeview.tpl', 1603857027, 0),
(176, 'theme', 'themtet2018', 'themtet2018/modules/menu/index.html', 1603857027, 0),
(177, 'theme', 'themtet2018', 'themtet2018/modules/news/block_category.tpl', 1603857027, 0),
(178, 'theme', 'themtet2018', 'themtet2018/modules/news/block_content.tpl', 1603857027, 0),
(179, 'theme', 'themtet2018', 'themtet2018/modules/news/block_groups.tpl', 1603857027, 0),
(180, 'theme', 'themtet2018', 'themtet2018/modules/news/block_headline.tpl', 1603857027, 0),
(181, 'theme', 'themtet2018', 'themtet2018/modules/news/block_news.tpl', 1603857027, 0),
(182, 'theme', 'themtet2018', 'themtet2018/modules/news/block_newscenter.tpl', 1603857027, 0),
(183, 'theme', 'themtet2018', 'themtet2018/modules/news/block_new_comment.tpl', 1603857027, 0),
(184, 'theme', 'themtet2018', 'themtet2018/modules/news/block_tophits.tpl', 1603857027, 0),
(185, 'theme', 'themtet2018', 'themtet2018/modules/news/content.tpl', 1603857027, 0),
(186, 'theme', 'themtet2018', 'themtet2018/modules/news/detail.tpl', 1603857027, 0),
(187, 'theme', 'themtet2018', 'themtet2018/modules/news/index.html', 1603857027, 0),
(188, 'theme', 'themtet2018', 'themtet2018/modules/news/print.tpl', 1603857027, 0),
(189, 'theme', 'themtet2018', 'themtet2018/modules/news/search.tpl', 1603857027, 0),
(190, 'theme', 'themtet2018', 'themtet2018/modules/news/sendmail.tpl', 1603857027, 0),
(191, 'theme', 'themtet2018', 'themtet2018/modules/news/topic.tpl', 1603857027, 0),
(192, 'theme', 'themtet2018', 'themtet2018/modules/news/viewcat_grid.tpl', 1603857027, 0),
(193, 'theme', 'themtet2018', 'themtet2018/modules/news/viewcat_list.tpl', 1603857027, 0),
(194, 'theme', 'themtet2018', 'themtet2018/modules/news/viewcat_main_bottom.tpl', 1603857027, 0),
(195, 'theme', 'themtet2018', 'themtet2018/modules/news/viewcat_main_left.tpl', 1603857027, 0),
(196, 'theme', 'themtet2018', 'themtet2018/modules/news/viewcat_main_right.tpl', 1603857027, 0),
(197, 'theme', 'themtet2018', 'themtet2018/modules/news/viewcat_page.tpl', 1603857027, 0),
(198, 'theme', 'themtet2018', 'themtet2018/modules/news/viewcat_top.tpl', 1603857027, 0),
(199, 'theme', 'themtet2018', 'themtet2018/modules/news/viewcat_two_column.tpl', 1603857027, 0),
(200, 'theme', 'themtet2018', 'themtet2018/modules/page/block.about.tpl', 1603857027, 0),
(201, 'theme', 'themtet2018', 'themtet2018/modules/page/block.page_list.tpl', 1603857027, 0),
(202, 'theme', 'themtet2018', 'themtet2018/modules/page/index.html', 1603857027, 0),
(203, 'theme', 'themtet2018', 'themtet2018/modules/page/main.tpl', 1603857027, 0),
(204, 'theme', 'themtet2018', 'themtet2018/modules/page/main_list.tpl', 1603857027, 0),
(205, 'theme', 'themtet2018', 'themtet2018/modules/seek/form.tpl', 1603857027, 0),
(206, 'theme', 'themtet2018', 'themtet2018/modules/seek/index.html', 1603857027, 0),
(207, 'theme', 'themtet2018', 'themtet2018/modules/seek/result.tpl', 1603857027, 0),
(208, 'theme', 'themtet2018', 'themtet2018/modules/statistics/allbots.tpl', 1603857027, 0),
(209, 'theme', 'themtet2018', 'themtet2018/modules/statistics/allbrowsers.tpl', 1603857027, 0),
(210, 'theme', 'themtet2018', 'themtet2018/modules/statistics/allcountries.tpl', 1603857027, 0),
(211, 'theme', 'themtet2018', 'themtet2018/modules/statistics/allos.tpl', 1603857027, 0),
(212, 'theme', 'themtet2018', 'themtet2018/modules/statistics/allreferers.tpl', 1603857027, 0),
(213, 'theme', 'themtet2018', 'themtet2018/modules/statistics/global.counter.tpl', 1603857027, 0),
(214, 'theme', 'themtet2018', 'themtet2018/modules/statistics/global.counter_button.tpl', 1603857027, 0),
(215, 'theme', 'themtet2018', 'themtet2018/modules/statistics/index.html', 1603857027, 0),
(216, 'theme', 'themtet2018', 'themtet2018/modules/statistics/main.tpl', 1603857027, 0),
(217, 'theme', 'themtet2018', 'themtet2018/modules/statistics/referer.tpl', 1603857027, 0),
(218, 'theme', 'themtet2018', 'themtet2018/modules/two-step-verification/config.tpl', 1603857027, 0),
(219, 'theme', 'themtet2018', 'themtet2018/modules/two-step-verification/confirm_password.tpl', 1603857027, 0),
(220, 'theme', 'themtet2018', 'themtet2018/modules/two-step-verification/index.html', 1603857027, 0),
(221, 'theme', 'themtet2018', 'themtet2018/modules/two-step-verification/main.tpl', 1603857027, 0),
(222, 'theme', 'themtet2018', 'themtet2018/modules/users/ajax_login.tpl', 1603857027, 0),
(223, 'theme', 'themtet2018', 'themtet2018/modules/users/avatar.tpl', 1603857027, 0),
(224, 'theme', 'themtet2018', 'themtet2018/modules/users/block.login.tpl', 1603857027, 0),
(225, 'theme', 'themtet2018', 'themtet2018/modules/users/block.user_button.tpl', 1603857027, 0),
(226, 'theme', 'themtet2018', 'themtet2018/modules/users/confirm.tpl', 1603857027, 0),
(227, 'theme', 'themtet2018', 'themtet2018/modules/users/getuserid.tpl', 1603857027, 0),
(228, 'theme', 'themtet2018', 'themtet2018/modules/users/groups.tpl', 1603857027, 0),
(229, 'theme', 'themtet2018', 'themtet2018/modules/users/index.html', 1603857027, 0),
(230, 'theme', 'themtet2018', 'themtet2018/modules/users/info.tpl', 1603857027, 0),
(231, 'theme', 'themtet2018', 'themtet2018/modules/users/info_exit.tpl', 1603857027, 0),
(232, 'theme', 'themtet2018', 'themtet2018/modules/users/info_exit_redirect.tpl', 1603857027, 0),
(233, 'theme', 'themtet2018', 'themtet2018/modules/users/login.tpl', 1603857027, 0),
(234, 'theme', 'themtet2018', 'themtet2018/modules/users/login_form.tpl', 1603857027, 0),
(235, 'theme', 'themtet2018', 'themtet2018/modules/users/lostactivelink.tpl', 1603857027, 0),
(236, 'theme', 'themtet2018', 'themtet2018/modules/users/lostpass.tpl', 1603857027, 0),
(237, 'theme', 'themtet2018', 'themtet2018/modules/users/lostpass_form.tpl', 1603857027, 0),
(238, 'theme', 'themtet2018', 'themtet2018/modules/users/memberslist.tpl', 1603857027, 0),
(239, 'theme', 'themtet2018', 'themtet2018/modules/users/openid_callback.tpl', 1603857027, 0),
(240, 'theme', 'themtet2018', 'themtet2018/modules/users/openid_login.tpl', 1603857027, 0),
(241, 'theme', 'themtet2018', 'themtet2018/modules/users/register.tpl', 1603857027, 0),
(242, 'theme', 'themtet2018', 'themtet2018/modules/users/register_form.tpl', 1603857027, 0),
(243, 'theme', 'themtet2018', 'themtet2018/modules/users/safe.tpl', 1603857027, 0),
(244, 'theme', 'themtet2018', 'themtet2018/modules/users/userinfo.tpl', 1603857027, 0),
(245, 'theme', 'themtet2018', 'themtet2018/modules/users/viewdetailusers.tpl', 1603857027, 0),
(246, 'theme', 'themtet2018', 'themtet2018/modules/voting/global.voting.tpl', 1603857027, 0),
(247, 'theme', 'themtet2018', 'themtet2018/modules/voting/index.html', 1603857027, 0),
(248, 'theme', 'themtet2018', 'themtet2018/modules/voting/main.tpl', 1603857027, 0),
(249, 'theme', 'themtet2018', 'themtet2018/modules/voting/result.voting.tpl', 1603857027, 0),
(250, 'theme', 'themtet2018', 'themtet2018/system/admin_toolbar.tpl', 1603857027, 0),
(251, 'theme', 'themtet2018', 'themtet2018/system/alert.tpl', 1603857027, 0),
(252, 'theme', 'themtet2018', 'themtet2018/system/config.tpl', 1603857027, 0),
(253, 'theme', 'themtet2018', 'themtet2018/system/error_info.tpl', 1603857027, 0),
(254, 'theme', 'themtet2018', 'themtet2018/system/index.html', 1603857027, 0),
(255, 'theme', 'themtet2018', 'themtet2018/system/info_die.tpl', 1603857027, 0),
(256, 'theme', 'themtet2018', 'themtet2018/system/mail.tpl', 1603857027, 0),
(257, 'theme', 'themtet2018', 'themtet2018/theme.php', 1603857027, 0),
(258, 'theme', 'themtet2018', 'themtet2018/themetet.jpg', 1603857027, 0),
(259, 'module', 'shops', 'assets/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1604108694, 0),
(260, 'module', 'shops', 'modules/shops/action_mysql.php', 1604108694, 0),
(261, 'module', 'shops', 'modules/shops/admin/.htaccess', 1604108694, 0),
(262, 'module', 'shops', 'modules/shops/admin/active_pay.php', 1604108694, 0),
(263, 'module', 'shops', 'modules/shops/admin/actpay.php', 1604108694, 0),
(264, 'module', 'shops', 'modules/shops/admin/alias.php', 1604108694, 0),
(265, 'module', 'shops', 'modules/shops/admin/block.php', 1604108694, 0),
(266, 'module', 'shops', 'modules/shops/admin/blockcat.php', 1604108694, 0),
(267, 'module', 'shops', 'modules/shops/admin/carrier.php', 1604108694, 0),
(268, 'module', 'shops', 'modules/shops/admin/carrier_config.php', 1604108694, 0),
(269, 'module', 'shops', 'modules/shops/admin/carrier_config_items.php', 1604108694, 0),
(270, 'module', 'shops', 'modules/shops/admin/cat.php', 1604108694, 0),
(271, 'module', 'shops', 'modules/shops/admin/changepay.php', 1604108694, 0),
(272, 'module', 'shops', 'modules/shops/admin/change_block.php', 1604108694, 0),
(273, 'module', 'shops', 'modules/shops/admin/change_cat.php', 1604108694, 0),
(274, 'module', 'shops', 'modules/shops/admin/change_group.php', 1604108694, 0),
(275, 'module', 'shops', 'modules/shops/admin/change_location.php', 1604108694, 0),
(276, 'module', 'shops', 'modules/shops/admin/change_source.php', 1604108694, 0),
(277, 'module', 'shops', 'modules/shops/admin/chang_block_cat.php', 1604108694, 0),
(278, 'module', 'shops', 'modules/shops/admin/content.php', 1604108694, 0),
(279, 'module', 'shops', 'modules/shops/admin/coupons.php', 1604108694, 0),
(280, 'module', 'shops', 'modules/shops/admin/coupons_view.php', 1604108694, 0),
(281, 'module', 'shops', 'modules/shops/admin/custom_form.php', 1604108694, 0),
(282, 'module', 'shops', 'modules/shops/admin/delmoney.php', 1604108694, 0),
(283, 'module', 'shops', 'modules/shops/admin/delunit.php', 1604108694, 0),
(284, 'module', 'shops', 'modules/shops/admin/delweight.php', 1604108694, 0),
(285, 'module', 'shops', 'modules/shops/admin/del_block_cat.php', 1604108694, 0),
(286, 'module', 'shops', 'modules/shops/admin/del_cat.php', 1604108694, 0),
(287, 'module', 'shops', 'modules/shops/admin/del_content.php', 1604108694, 0),
(288, 'module', 'shops', 'modules/shops/admin/del_group.php', 1604108694, 0),
(289, 'module', 'shops', 'modules/shops/admin/del_location.php', 1604108694, 0),
(290, 'module', 'shops', 'modules/shops/admin/del_source.php', 1604108694, 0),
(291, 'module', 'shops', 'modules/shops/admin/detemplate.php', 1604108694, 0),
(292, 'module', 'shops', 'modules/shops/admin/discounts.php', 1604108694, 0),
(293, 'module', 'shops', 'modules/shops/admin/docpay.php', 1604108694, 0),
(294, 'module', 'shops', 'modules/shops/admin/download.php', 1604108694, 0),
(295, 'module', 'shops', 'modules/shops/admin/exptime.php', 1604108694, 0),
(296, 'module', 'shops', 'modules/shops/admin/fields.php', 1604108694, 0),
(297, 'module', 'shops', 'modules/shops/admin/field_tab.php', 1604108694, 0),
(298, 'module', 'shops', 'modules/shops/admin/getcatalog.php', 1604108694, 0),
(299, 'module', 'shops', 'modules/shops/admin/getgroup.php', 1604108694, 0),
(300, 'module', 'shops', 'modules/shops/admin/getprice.php', 1604108694, 0),
(301, 'module', 'shops', 'modules/shops/admin/group.php', 1604108694, 0),
(302, 'module', 'shops', 'modules/shops/admin/index.html', 1604108694, 0),
(303, 'module', 'shops', 'modules/shops/admin/items.php', 1604108694, 0),
(304, 'module', 'shops', 'modules/shops/admin/keywords.php', 1604108694, 0),
(305, 'module', 'shops', 'modules/shops/admin/list_block.php', 1604108694, 0),
(306, 'module', 'shops', 'modules/shops/admin/list_block_cat.php', 1604108694, 0),
(307, 'module', 'shops', 'modules/shops/admin/list_cat.php', 1604108694, 0),
(308, 'module', 'shops', 'modules/shops/admin/list_group.php', 1604108694, 0),
(309, 'module', 'shops', 'modules/shops/admin/list_location.php', 1604108694, 0),
(310, 'module', 'shops', 'modules/shops/admin/location.php', 1604108694, 0),
(311, 'module', 'shops', 'modules/shops/admin/main.php', 1604108694, 0),
(312, 'module', 'shops', 'modules/shops/admin/money.php', 1604108694, 0),
(313, 'module', 'shops', 'modules/shops/admin/order.php', 1604108694, 0),
(314, 'module', 'shops', 'modules/shops/admin/order_seller.php', 1604108694, 0),
(315, 'module', 'shops', 'modules/shops/admin/or_del.php', 1604108694, 0),
(316, 'module', 'shops', 'modules/shops/admin/or_view.php', 1604108694, 0),
(317, 'module', 'shops', 'modules/shops/admin/payport.php', 1604108694, 0),
(318, 'module', 'shops', 'modules/shops/admin/point.php', 1604108694, 0),
(319, 'module', 'shops', 'modules/shops/admin/print.php', 1604108694, 0),
(320, 'module', 'shops', 'modules/shops/admin/prounit.php', 1604108694, 0),
(321, 'module', 'shops', 'modules/shops/admin/publtime.php', 1604108694, 0),
(322, 'module', 'shops', 'modules/shops/admin/review.php', 1604108694, 0),
(323, 'module', 'shops', 'modules/shops/admin/seller.php', 1604108694, 0),
(324, 'module', 'shops', 'modules/shops/admin/setting.php', 1604108694, 0),
(325, 'module', 'shops', 'modules/shops/admin/shipping.php', 1604108694, 0),
(326, 'module', 'shops', 'modules/shops/admin/shops.php', 1604108694, 0),
(327, 'module', 'shops', 'modules/shops/admin/tabs.php', 1604108694, 0),
(328, 'module', 'shops', 'modules/shops/admin/tags.php', 1604108694, 0),
(329, 'module', 'shops', 'modules/shops/admin/tagsajax.php', 1604108694, 0),
(330, 'module', 'shops', 'modules/shops/admin/template.php', 1604108694, 0),
(331, 'module', 'shops', 'modules/shops/admin/updateprice.php', 1604108694, 0),
(332, 'module', 'shops', 'modules/shops/admin/view.php', 1604108694, 0),
(333, 'module', 'shops', 'modules/shops/admin/warehouse.php', 1604108694, 0),
(334, 'module', 'shops', 'modules/shops/admin/warehouse_logs.php', 1604108694, 0),
(335, 'module', 'shops', 'modules/shops/admin/weight.php', 1604108694, 0),
(336, 'module', 'shops', 'modules/shops/admin.functions.php', 1604108694, 0),
(337, 'module', 'shops', 'modules/shops/admin.menu.php', 1604108694, 0),
(338, 'module', 'shops', 'modules/shops/blocks/.htaccess', 1604108694, 0),
(339, 'module', 'shops', 'modules/shops/blocks/global.block_bxproduct_center.ini', 1604108694, 0),
(340, 'module', 'shops', 'modules/shops/blocks/global.block_bxproduct_center.php', 1604108694, 0),
(341, 'module', 'shops', 'modules/shops/blocks/global.block_cart.php', 1604108694, 0),
(342, 'module', 'shops', 'modules/shops/blocks/global.block_catalogs.ini', 1604108694, 0),
(343, 'module', 'shops', 'modules/shops/blocks/global.block_catalogs.php', 1604108694, 0),
(344, 'module', 'shops', 'modules/shops/blocks/global.block_price_view.ini', 1604108694, 0),
(345, 'module', 'shops', 'modules/shops/blocks/global.block_price_view.php', 1604108694, 0),
(346, 'module', 'shops', 'modules/shops/blocks/global.block_product_center.ini', 1604108694, 0),
(347, 'module', 'shops', 'modules/shops/blocks/global.block_product_center.php', 1604108694, 0),
(348, 'module', 'shops', 'modules/shops/blocks/global.block_relates_product.ini', 1604108694, 0),
(349, 'module', 'shops', 'modules/shops/blocks/global.block_relates_product.php', 1604108694, 0),
(350, 'module', 'shops', 'modules/shops/blocks/global.block_search.php', 1604108694, 0),
(351, 'module', 'shops', 'modules/shops/blocks/index.html', 1604108694, 0),
(352, 'module', 'shops', 'modules/shops/blocks/module.block_filter_product.ini', 1604108694, 0),
(353, 'module', 'shops', 'modules/shops/blocks/module.block_filter_product.php', 1604108694, 0),
(354, 'module', 'shops', 'modules/shops/blocks/module.block_filter_product_cat.ini', 1604108694, 0),
(355, 'module', 'shops', 'modules/shops/blocks/module.block_filter_product_cat.php', 1604108694, 0),
(356, 'module', 'shops', 'modules/shops/blocks/module.block_others_product.php', 1604108694, 0),
(357, 'module', 'shops', 'modules/shops/blocks/module.block_product_center.php', 1604108694, 0),
(358, 'module', 'shops', 'modules/shops/comment.php', 1604108694, 0),
(359, 'module', 'shops', 'modules/shops/fields.check.php', 1604108694, 0),
(360, 'module', 'shops', 'modules/shops/funcs/.htaccess', 1604108694, 0),
(361, 'module', 'shops', 'modules/shops/funcs/blockcat.php', 1604108694, 0),
(362, 'module', 'shops', 'modules/shops/funcs/cart.php', 1604108694, 0),
(363, 'module', 'shops', 'modules/shops/funcs/checkorder.php', 1604108694, 0),
(364, 'module', 'shops', 'modules/shops/funcs/compare.php', 1604108694, 0),
(365, 'module', 'shops', 'modules/shops/funcs/complete.php', 1604108694, 0),
(366, 'module', 'shops', 'modules/shops/funcs/delhis.php', 1604108694, 0),
(367, 'module', 'shops', 'modules/shops/funcs/detail.php', 1604108694, 0),
(368, 'module', 'shops', 'modules/shops/funcs/download.php', 1604108694, 0),
(369, 'module', 'shops', 'modules/shops/funcs/group.php', 1604108694, 0),
(370, 'module', 'shops', 'modules/shops/funcs/history.php', 1604108694, 0),
(371, 'module', 'shops', 'modules/shops/funcs/index.html', 1604108694, 0),
(372, 'module', 'shops', 'modules/shops/funcs/loadcart.php', 1604108694, 0),
(373, 'module', 'shops', 'modules/shops/funcs/main.php', 1604108694, 0),
(374, 'module', 'shops', 'modules/shops/funcs/order.php', 1604108694, 0),
(375, 'module', 'shops', 'modules/shops/funcs/payment.php', 1604108694, 0),
(376, 'module', 'shops', 'modules/shops/funcs/point.php', 1604108694, 0),
(377, 'module', 'shops', 'modules/shops/funcs/print.php', 1604108694, 0),
(378, 'module', 'shops', 'modules/shops/funcs/print_pro.php', 1604108694, 0),
(379, 'module', 'shops', 'modules/shops/funcs/remove.php', 1604108694, 0),
(380, 'module', 'shops', 'modules/shops/funcs/review.php', 1604108694, 0),
(381, 'module', 'shops', 'modules/shops/funcs/rss.php', 1604108694, 0),
(382, 'module', 'shops', 'modules/shops/funcs/search.php', 1604108694, 0),
(383, 'module', 'shops', 'modules/shops/funcs/search_result.php', 1604108694, 0),
(384, 'module', 'shops', 'modules/shops/funcs/sendmail.php', 1604108694, 0),
(385, 'module', 'shops', 'modules/shops/funcs/setcart.php', 1604108694, 0),
(386, 'module', 'shops', 'modules/shops/funcs/shippingajax.php', 1604108694, 0),
(387, 'module', 'shops', 'modules/shops/funcs/sitemap.php', 1604108694, 0),
(388, 'module', 'shops', 'modules/shops/funcs/tag.php', 1604108694, 0),
(389, 'module', 'shops', 'modules/shops/funcs/viewcat.php', 1604108694, 0),
(390, 'module', 'shops', 'modules/shops/funcs/wishlist.php', 1604108694, 0),
(391, 'module', 'shops', 'modules/shops/funcs/wishlist_update.php', 1604108694, 0),
(392, 'module', 'shops', 'modules/shops/functions.php', 1604108694, 0),
(393, 'module', 'shops', 'modules/shops/global.functions.php', 1604108694, 0),
(394, 'module', 'shops', 'modules/shops/index.html', 1604108694, 0),
(395, 'module', 'shops', 'modules/shops/language/.htaccess', 1604108694, 0),
(396, 'module', 'shops', 'modules/shops/language/admin_en.php', 1604108694, 0),
(397, 'module', 'shops', 'modules/shops/language/admin_vi.php', 1604108694, 0),
(398, 'module', 'shops', 'modules/shops/language/data_vi.php', 1604108694, 0),
(399, 'module', 'shops', 'modules/shops/language/en.php', 1604108694, 0),
(400, 'module', 'shops', 'modules/shops/language/index.html', 1604108694, 0),
(401, 'module', 'shops', 'modules/shops/language/vi.php', 1604108694, 0),
(402, 'module', 'shops', 'modules/shops/menu.php', 1604108694, 0),
(403, 'module', 'shops', 'modules/shops/notification.php', 1604108694, 0),
(404, 'module', 'shops', 'modules/shops/payment/.htaccess', 1604108694, 0),
(405, 'module', 'shops', 'modules/shops/payment/baokim.checkorders.php', 1604108694, 0),
(406, 'module', 'shops', 'modules/shops/payment/baokim.checkout_url.php', 1604108694, 0),
(407, 'module', 'shops', 'modules/shops/payment/baokim.class.php', 1604108694, 0),
(408, 'module', 'shops', 'modules/shops/payment/baokim.complete.php', 1604108694, 0),
(409, 'module', 'shops', 'modules/shops/payment/baokim.config.ini', 1604108694, 0),
(410, 'module', 'shops', 'modules/shops/payment/index.html', 1604108694, 0),
(411, 'module', 'shops', 'modules/shops/payment/onepaydomestic.checkorders.php', 1604108694, 0),
(412, 'module', 'shops', 'modules/shops/payment/onepaydomestic.checkout_url.php', 1604108694, 0),
(413, 'module', 'shops', 'modules/shops/payment/onepaydomestic.complete.php', 1604108694, 0),
(414, 'module', 'shops', 'modules/shops/payment/onepaydomestic.config.ini', 1604108694, 0),
(415, 'module', 'shops', 'modules/shops/payment/paypal_express_checkout.checkorders.php', 1604108694, 0),
(416, 'module', 'shops', 'modules/shops/payment/paypal_express_checkout.checkout_url.php', 1604108694, 0),
(417, 'module', 'shops', 'modules/shops/payment/paypal_express_checkout.complete.php', 1604108694, 0),
(418, 'module', 'shops', 'modules/shops/payment/paypal_express_checkout.config.ini', 1604108694, 0),
(419, 'module', 'shops', 'modules/shops/rssdata.php', 1604108694, 0),
(420, 'module', 'shops', 'modules/shops/search.php', 1604108694, 0),
(421, 'module', 'shops', 'modules/shops/site.functions.php', 1604108694, 0),
(422, 'module', 'shops', 'modules/shops/siteinfo.php', 1604108694, 0),
(423, 'module', 'shops', 'modules/shops/theme.php', 1604108694, 0),
(424, 'module', 'shops', 'modules/shops/version.php', 1604108694, 0),
(425, 'module', 'shops', 'themes/admin_default/css/shops.css', 1604108694, 0),
(426, 'module', 'shops', 'themes/admin_default/js/content.js', 1604108694, 0),
(427, 'module', 'shops', 'themes/admin_default/js/shops.js', 1604108694, 0),
(428, 'module', 'shops', 'themes/admin_default/modules/shops/.htaccess', 1604108694, 0),
(429, 'module', 'shops', 'themes/admin_default/modules/shops/block.tpl', 1604108694, 0),
(430, 'module', 'shops', 'themes/admin_default/modules/shops/blockcat.tpl', 1604108694, 0),
(431, 'module', 'shops', 'themes/admin_default/modules/shops/block_cat_list.tpl', 1604108694, 0),
(432, 'module', 'shops', 'themes/admin_default/modules/shops/block_list.tpl', 1604108694, 0),
(433, 'module', 'shops', 'themes/admin_default/modules/shops/carrier.tpl', 1604108694, 0),
(434, 'module', 'shops', 'themes/admin_default/modules/shops/carrier_config.tpl', 1604108694, 0),
(435, 'module', 'shops', 'themes/admin_default/modules/shops/carrier_config_items.tpl', 1604108694, 0),
(436, 'module', 'shops', 'themes/admin_default/modules/shops/cat_add.tpl', 1604108694, 0),
(437, 'module', 'shops', 'themes/admin_default/modules/shops/cat_delete.tpl', 1604108694, 0),
(438, 'module', 'shops', 'themes/admin_default/modules/shops/cat_lists.tpl', 1604108694, 0),
(439, 'module', 'shops', 'themes/admin_default/modules/shops/content.tpl', 1604108694, 0),
(440, 'module', 'shops', 'themes/admin_default/modules/shops/coupons.tpl', 1604108694, 0),
(441, 'module', 'shops', 'themes/admin_default/modules/shops/coupons_view.tpl', 1604108694, 0),
(442, 'module', 'shops', 'themes/admin_default/modules/shops/discounts.tpl', 1604108694, 0),
(443, 'module', 'shops', 'themes/admin_default/modules/shops/docpay.tpl', 1604108694, 0),
(444, 'module', 'shops', 'themes/admin_default/modules/shops/download.tpl', 1604108694, 0),
(445, 'module', 'shops', 'themes/admin_default/modules/shops/email_new_order_payment.tpl', 1604108694, 0),
(446, 'module', 'shops', 'themes/admin_default/modules/shops/fields.tpl', 1604108694, 0),
(447, 'module', 'shops', 'themes/admin_default/modules/shops/field_tab.tpl', 1604108694, 0),
(448, 'module', 'shops', 'themes/admin_default/modules/shops/getprice.tpl', 1604108694, 0),
(449, 'module', 'shops', 'themes/admin_default/modules/shops/group_add.tpl', 1604108694, 0),
(450, 'module', 'shops', 'themes/admin_default/modules/shops/group_delete.tpl', 1604108694, 0),
(451, 'module', 'shops', 'themes/admin_default/modules/shops/group_lists.tpl', 1604108694, 0),
(452, 'module', 'shops', 'themes/admin_default/modules/shops/index.html', 1604108694, 0),
(453, 'module', 'shops', 'themes/admin_default/modules/shops/items.tpl', 1604108694, 0),
(454, 'module', 'shops', 'themes/admin_default/modules/shops/location.tpl', 1604108694, 0),
(455, 'module', 'shops', 'themes/admin_default/modules/shops/location_lists.tpl', 1604108694, 0),
(456, 'module', 'shops', 'themes/admin_default/modules/shops/main.tpl', 1604108694, 0),
(457, 'module', 'shops', 'themes/admin_default/modules/shops/money.tpl', 1604108694, 0),
(458, 'module', 'shops', 'themes/admin_default/modules/shops/order.tpl', 1604108694, 0),
(459, 'module', 'shops', 'themes/admin_default/modules/shops/order_seller.tpl', 1604108694, 0),
(460, 'module', 'shops', 'themes/admin_default/modules/shops/or_view.tpl', 1604108694, 0),
(461, 'module', 'shops', 'themes/admin_default/modules/shops/payport.tpl', 1604108694, 0),
(462, 'module', 'shops', 'themes/admin_default/modules/shops/point.tpl', 1604108694, 0),
(463, 'module', 'shops', 'themes/admin_default/modules/shops/print.tpl', 1604108694, 0),
(464, 'module', 'shops', 'themes/admin_default/modules/shops/prounit.tpl', 1604108694, 0),
(465, 'module', 'shops', 'themes/admin_default/modules/shops/review.tpl', 1604108694, 0),
(466, 'module', 'shops', 'themes/admin_default/modules/shops/seller.tpl', 1604108694, 0),
(467, 'module', 'shops', 'themes/admin_default/modules/shops/setting.tpl', 1604108694, 0),
(468, 'module', 'shops', 'themes/admin_default/modules/shops/shipping.tpl', 1604108694, 0),
(469, 'module', 'shops', 'themes/admin_default/modules/shops/shipping_menu.tpl', 1604108694, 0),
(470, 'module', 'shops', 'themes/admin_default/modules/shops/shops.tpl', 1604108694, 0),
(471, 'module', 'shops', 'themes/admin_default/modules/shops/tabs.tpl', 1604108694, 0),
(472, 'module', 'shops', 'themes/admin_default/modules/shops/tags.tpl', 1604108694, 0),
(473, 'module', 'shops', 'themes/admin_default/modules/shops/tags_lists.tpl', 1604108694, 0),
(474, 'module', 'shops', 'themes/admin_default/modules/shops/template.tpl', 1604108694, 0),
(475, 'module', 'shops', 'themes/admin_default/modules/shops/topics.tpl', 1604108694, 0),
(476, 'module', 'shops', 'themes/admin_default/modules/shops/updateprice.tpl', 1604108694, 0),
(477, 'module', 'shops', 'themes/admin_default/modules/shops/warehouse.tpl', 1604108694, 0),
(478, 'module', 'shops', 'themes/admin_default/modules/shops/warehouse_logs.tpl', 1604108694, 0),
(479, 'module', 'shops', 'themes/admin_default/modules/shops/weight.tpl', 1604108694, 0),
(480, 'module', 'shops', 'themes/default/css/jquery.bxslider.css', 1604108694, 0),
(481, 'module', 'shops', 'themes/default/css/shops.css', 1604108694, 0),
(482, 'module', 'shops', 'themes/default/images/shops/24x24-no.png', 1604108694, 0),
(483, 'module', 'shops', 'themes/default/images/shops/access_head_bg.png', 1604108694, 0),
(484, 'module', 'shops', 'themes/default/images/shops/ajax-loader.gif', 1604108694, 0),
(485, 'module', 'shops', 'themes/default/images/shops/bgbt.png', 1604108694, 0),
(486, 'module', 'shops', 'themes/default/images/shops/bg_divtab.png', 1604108694, 0),
(487, 'module', 'shops', 'themes/default/images/shops/bl.png', 1604108694, 0),
(488, 'module', 'shops', 'themes/default/images/shops/br.png', 1604108694, 0),
(489, 'module', 'shops', 'themes/default/images/shops/buzz.png', 1604108694, 0),
(490, 'module', 'shops', 'themes/default/images/shops/controls.png', 1604108694, 0),
(491, 'module', 'shops', 'themes/default/images/shops/flickr.png', 1604108694, 0),
(492, 'module', 'shops', 'themes/default/images/shops/google.png', 1604108694, 0),
(493, 'module', 'shops', 'themes/default/images/shops/icon_files/doc.png', 1604108694, 0),
(494, 'module', 'shops', 'themes/default/images/shops/icon_files/document.png', 1604108694, 0),
(495, 'module', 'shops', 'themes/default/images/shops/icon_files/docx.png', 1604108694, 0),
(496, 'module', 'shops', 'themes/default/images/shops/icon_files/odt.png', 1604108694, 0),
(497, 'module', 'shops', 'themes/default/images/shops/icon_files/pdf.png', 1604108694, 0),
(498, 'module', 'shops', 'themes/default/images/shops/icon_files/ppt.png', 1604108694, 0),
(499, 'module', 'shops', 'themes/default/images/shops/icon_files/pptx.png', 1604108694, 0),
(500, 'module', 'shops', 'themes/default/images/shops/icon_files/rar.png', 1604108694, 0),
(501, 'module', 'shops', 'themes/default/images/shops/icon_files/xsl.png', 1604108694, 0),
(502, 'module', 'shops', 'themes/default/images/shops/icon_files/xslx.png', 1604108694, 0),
(503, 'module', 'shops', 'themes/default/images/shops/icon_files/zip.png', 1604108694, 0),
(504, 'module', 'shops', 'themes/default/images/shops/index.html', 1604108694, 0),
(505, 'module', 'shops', 'themes/default/images/shops/no-image.jpg', 1604108694, 0),
(506, 'module', 'shops', 'themes/default/images/shops/previous-next.png', 1604108694, 0),
(507, 'module', 'shops', 'themes/default/images/shops/print.png', 1604108694, 0),
(508, 'module', 'shops', 'themes/default/images/shops/pro_cat_header.png', 1604108694, 0),
(509, 'module', 'shops', 'themes/default/images/shops/pro_tab.png', 1604108694, 0),
(510, 'module', 'shops', 'themes/default/images/shops/rate/rate-btn2-hover.png', 1604108694, 0),
(511, 'module', 'shops', 'themes/default/images/shops/rate/rate-btn2.png', 1604108694, 0),
(512, 'module', 'shops', 'themes/default/images/shops/rate/rate-btn3-hover.png', 1604108694, 0),
(513, 'module', 'shops', 'themes/default/images/shops/rate/rate-stars.png', 1604108694, 0),
(514, 'module', 'shops', 'themes/default/images/shops/square.jpg', 1604108694, 0),
(515, 'module', 'shops', 'themes/default/images/shops/star-png.png', 1604108694, 0),
(516, 'module', 'shops', 'themes/default/images/shops/star.png', 1604108694, 0),
(517, 'module', 'shops', 'themes/default/images/shops/twitter.png', 1604108694, 0),
(518, 'module', 'shops', 'themes/default/images/shops/zoom-img.png', 1604108694, 0),
(519, 'module', 'shops', 'themes/default/js/jquery.bxslider.min.js', 1604108694, 0),
(520, 'module', 'shops', 'themes/default/js/responsiveCarousel.min.js', 1604108694, 0),
(521, 'module', 'shops', 'themes/default/js/shops.js', 1604108694, 0),
(522, 'module', 'shops', 'themes/default/modules/shops/.htaccess', 1604108694, 0),
(523, 'module', 'shops', 'themes/default/modules/shops/block.bxproduct_center.tpl', 1604108694, 0),
(524, 'module', 'shops', 'themes/default/modules/shops/block.cart.tpl', 1604108694, 0),
(525, 'module', 'shops', 'themes/default/modules/shops/block.catalogsv.tpl', 1604108694, 0),
(526, 'module', 'shops', 'themes/default/modules/shops/block.filter_product.tpl', 1604108694, 0),
(527, 'module', 'shops', 'themes/default/modules/shops/block.filter_product_cat.tpl', 1604108694, 0),
(528, 'module', 'shops', 'themes/default/modules/shops/block.others_product.tpl', 1604108694, 0),
(529, 'module', 'shops', 'themes/default/modules/shops/block.price_view.tpl', 1604108694, 0),
(530, 'module', 'shops', 'themes/default/modules/shops/block.product_center.tpl', 1604108694, 0),
(531, 'module', 'shops', 'themes/default/modules/shops/block.search.tpl', 1604108694, 0),
(532, 'module', 'shops', 'themes/default/modules/shops/blockcat.tpl', 1604108694, 0),
(533, 'module', 'shops', 'themes/default/modules/shops/cart.tpl', 1604108694, 0),
(534, 'module', 'shops', 'themes/default/modules/shops/compare.tpl', 1604108694, 0),
(535, 'module', 'shops', 'themes/default/modules/shops/coupons_info.tpl', 1604108694, 0),
(536, 'module', 'shops', 'themes/default/modules/shops/detail.tpl', 1604108694, 0),
(537, 'module', 'shops', 'themes/default/modules/shops/download_content.tpl', 1604108694, 0),
(538, 'module', 'shops', 'themes/default/modules/shops/email_new_order.tpl', 1604108694, 0),
(539, 'module', 'shops', 'themes/default/modules/shops/history_order.tpl', 1604108694, 0),
(540, 'module', 'shops', 'themes/default/modules/shops/index.html', 1604108694, 0),
(541, 'module', 'shops', 'themes/default/modules/shops/main_procate.tpl', 1604108694, 0),
(542, 'module', 'shops', 'themes/default/modules/shops/main_product.tpl', 1604108694, 0),
(543, 'module', 'shops', 'themes/default/modules/shops/order.tpl', 1604108694, 0),
(544, 'module', 'shops', 'themes/default/modules/shops/othersimg.tpl', 1604108694, 0),
(545, 'module', 'shops', 'themes/default/modules/shops/payment.tpl', 1604108694, 0),
(546, 'module', 'shops', 'themes/default/modules/shops/point.tpl', 1604108694, 0),
(547, 'module', 'shops', 'themes/default/modules/shops/print.tpl', 1604108694, 0),
(548, 'module', 'shops', 'themes/default/modules/shops/print_pro.tpl', 1604108694, 0),
(549, 'module', 'shops', 'themes/default/modules/shops/review_content.tpl', 1604108694, 0),
(550, 'module', 'shops', 'themes/default/modules/shops/review_list.tpl', 1604108694, 0),
(551, 'module', 'shops', 'themes/default/modules/shops/search.tpl', 1604108694, 0),
(552, 'module', 'shops', 'themes/default/modules/shops/search_all.tpl', 1604108694, 0),
(553, 'module', 'shops', 'themes/default/modules/shops/view_gird.tpl', 1604108694, 0),
(554, 'module', 'shops', 'themes/default/modules/shops/view_list.tpl', 1604108694, 0),
(555, 'module', 'shops', 'themes/default/modules/shops/wishlist.tpl', 1604108694, 0),
(556, 'module', 'shops', 'uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1604108694, 0),
(557, 'theme', 'modern_v2', 'modern_v2/blocks/.htaccess', 1604109527, 0),
(558, 'theme', 'modern_v2', 'modern_v2/blocks/global.banners.tpl', 1604109527, 0),
(559, 'theme', 'modern_v2', 'modern_v2/blocks/global.counter.tpl', 1604109527, 0),
(560, 'theme', 'modern_v2', 'modern_v2/blocks/global.rss.tpl', 1604109527, 0),
(561, 'theme', 'modern_v2', 'modern_v2/blocks/index.html', 1604109527, 0),
(562, 'theme', 'modern_v2', 'modern_v2/config.ini', 1604109527, 0),
(563, 'theme', 'modern_v2', 'modern_v2/css/admin.css', 1604109527, 0),
(564, 'theme', 'modern_v2', 'modern_v2/css/banners.css', 1604109527, 0),
(565, 'theme', 'modern_v2', 'modern_v2/css/blue.css', 1604109527, 0),
(566, 'theme', 'modern_v2', 'modern_v2/css/contact.css', 1604109527, 0),
(567, 'theme', 'modern_v2', 'modern_v2/css/contentslider.css', 1604109527, 0),
(568, 'theme', 'modern_v2', 'modern_v2/css/ddsmoothmenu.css', 1604109527, 0),
(569, 'theme', 'modern_v2', 'modern_v2/css/default.css', 1604109527, 0),
(570, 'theme', 'modern_v2', 'modern_v2/css/download.css', 1604109527, 0),
(571, 'theme', 'modern_v2', 'modern_v2/css/eb_login.css', 1604109527, 0),
(572, 'theme', 'modern_v2', 'modern_v2/css/faq.css', 1604109527, 0),
(573, 'theme', 'modern_v2', 'modern_v2/css/footer.css', 1604109527, 0),
(574, 'theme', 'modern_v2', 'modern_v2/css/gtie6.css', 1604109527, 0),
(575, 'theme', 'modern_v2', 'modern_v2/css/icons.css', 1604109527, 0),
(576, 'theme', 'modern_v2', 'modern_v2/css/ie6.css', 1604109527, 0),
(577, 'theme', 'modern_v2', 'modern_v2/css/ie9.css', 1604109527, 0),
(578, 'theme', 'modern_v2', 'modern_v2/css/index.html', 1604109527, 0),
(579, 'theme', 'modern_v2', 'modern_v2/css/news.css', 1604109527, 0),
(580, 'theme', 'modern_v2', 'modern_v2/css/real.css', 1604109527, 0),
(581, 'theme', 'modern_v2', 'modern_v2/css/red.css', 1604109527, 0),
(582, 'theme', 'modern_v2', 'modern_v2/css/reset.css', 1604109527, 0),
(583, 'theme', 'modern_v2', 'modern_v2/css/screen.css', 1604109527, 0),
(584, 'theme', 'modern_v2', 'modern_v2/css/search.css', 1604109527, 0),
(585, 'theme', 'modern_v2', 'modern_v2/css/style.css', 1604109527, 0),
(586, 'theme', 'modern_v2', 'modern_v2/css/superfish-navbar.css', 1604109527, 0),
(587, 'theme', 'modern_v2', 'modern_v2/css/superfish.css', 1604109527, 0),
(588, 'theme', 'modern_v2', 'modern_v2/css/tab_info.css', 1604109527, 0),
(589, 'theme', 'modern_v2', 'modern_v2/css/users.css', 1604109527, 0),
(590, 'theme', 'modern_v2', 'modern_v2/default.jpg', 1604109527, 0),
(591, 'theme', 'modern_v2', 'modern_v2/favicon.ico', 1604109527, 0),
(592, 'theme', 'modern_v2', 'modern_v2/images/admin/admin1.png', 1604109527, 0),
(593, 'theme', 'modern_v2', 'modern_v2/images/admin/admin2.png', 1604109527, 0),
(594, 'theme', 'modern_v2', 'modern_v2/images/admin/admin3.png', 1604109527, 0),
(595, 'theme', 'modern_v2', 'modern_v2/images/admin/admin_menu_bg.jpg', 1604109527, 0),
(596, 'theme', 'modern_v2', 'modern_v2/images/admin/bt03_l.png', 1604109527, 0),
(597, 'theme', 'modern_v2', 'modern_v2/images/admin/bt03_r.png', 1604109527, 0),
(598, 'theme', 'modern_v2', 'modern_v2/images/admin/button_bg.gif', 1604109527, 0),
(599, 'theme', 'modern_v2', 'modern_v2/images/admin/index.html', 1604109527, 0),
(600, 'theme', 'modern_v2', 'modern_v2/images/ajax-loader.gif', 1604109527, 0),
(601, 'theme', 'modern_v2', 'modern_v2/images/arrow-info.gif', 1604109527, 0),
(602, 'theme', 'modern_v2', 'modern_v2/images/arrow-red.gif', 1604109527, 0),
(603, 'theme', 'modern_v2', 'modern_v2/images/arrow-red2.gif', 1604109527, 0),
(604, 'theme', 'modern_v2', 'modern_v2/images/arrow-slide.gif', 1604109527, 0),
(605, 'theme', 'modern_v2', 'modern_v2/images/arrow-viewmore.gif', 1604109527, 0),
(606, 'theme', 'modern_v2', 'modern_v2/images/arrows/arrow1_black.gif', 1604109527, 0);
INSERT INTO `nv4_extension_files` (`idfile`, `type`, `title`, `path`, `lastmodified`, `duplicate`) VALUES
(607, 'theme', 'modern_v2', 'modern_v2/images/arrows/arrow1_green.gif', 1604109527, 0),
(608, 'theme', 'modern_v2', 'modern_v2/images/arrows/arrow1_red.gif', 1604109527, 0),
(609, 'theme', 'modern_v2', 'modern_v2/images/arrows/arrow2_black.gif', 1604109527, 0),
(610, 'theme', 'modern_v2', 'modern_v2/images/arrows/arrow2_green.gif', 1604109527, 0),
(611, 'theme', 'modern_v2', 'modern_v2/images/arrows/arrow2_red.gif', 1604109527, 0),
(612, 'theme', 'modern_v2', 'modern_v2/images/arrows/arrow3_black.gif', 1604109527, 0),
(613, 'theme', 'modern_v2', 'modern_v2/images/arrows/arrow3_green.gif', 1604109527, 0),
(614, 'theme', 'modern_v2', 'modern_v2/images/arrows/arrow3_red.gif', 1604109527, 0),
(615, 'theme', 'modern_v2', 'modern_v2/images/arrows/arrow4_black.gif', 1604109527, 0),
(616, 'theme', 'modern_v2', 'modern_v2/images/arrows/arrow4_green.gif', 1604109527, 0),
(617, 'theme', 'modern_v2', 'modern_v2/images/arrows/arrow4_red.gif', 1604109527, 0),
(618, 'theme', 'modern_v2', 'modern_v2/images/arrows/index.html', 1604109527, 0),
(619, 'theme', 'modern_v2', 'modern_v2/images/arrows-ffffff.png', 1604109527, 0),
(620, 'theme', 'modern_v2', 'modern_v2/images/arrow_down.gif', 1604109527, 0),
(621, 'theme', 'modern_v2', 'modern_v2/images/arr_red.png', 1604109527, 0),
(622, 'theme', 'modern_v2', 'modern_v2/images/background.png', 1604109527, 0),
(623, 'theme', 'modern_v2', 'modern_v2/images/Background_SearchBar.png', 1604109527, 0),
(624, 'theme', 'modern_v2', 'modern_v2/images/bgr_cen.gif', 1604109527, 0),
(625, 'theme', 'modern_v2', 'modern_v2/images/bgr_control.gif', 1604109527, 0),
(626, 'theme', 'modern_v2', 'modern_v2/images/bgr_top_page.gif', 1604109527, 0),
(627, 'theme', 'modern_v2', 'modern_v2/images/bg_taskbar.gif', 1604109527, 0),
(628, 'theme', 'modern_v2', 'modern_v2/images/big_arrow_left_bl.png', 1604109527, 0),
(629, 'theme', 'modern_v2', 'modern_v2/images/blank.gif', 1604109527, 0),
(630, 'theme', 'modern_v2', 'modern_v2/images/block-header-g1.png', 1604109527, 0),
(631, 'theme', 'modern_v2', 'modern_v2/images/bookmark.png', 1604109527, 0),
(632, 'theme', 'modern_v2', 'modern_v2/images/border_gray.png', 1604109527, 0),
(633, 'theme', 'modern_v2', 'modern_v2/images/bullet-orange.png', 1604109527, 0),
(634, 'theme', 'modern_v2', 'modern_v2/images/button-bg.png', 1604109527, 0),
(635, 'theme', 'modern_v2', 'modern_v2/images/cat-header-bg.png', 1604109527, 0),
(636, 'theme', 'modern_v2', 'modern_v2/images/com.png', 1604109527, 0),
(637, 'theme', 'modern_v2', 'modern_v2/images/css.png', 1604109527, 0),
(638, 'theme', 'modern_v2', 'modern_v2/images/DangTinMoi_s.png', 1604109527, 0),
(639, 'theme', 'modern_v2', 'modern_v2/images/danhdau.png', 1604109527, 0),
(640, 'theme', 'modern_v2', 'modern_v2/images/dd-v2.png', 1604109527, 0),
(641, 'theme', 'modern_v2', 'modern_v2/images/ddsmoothmenu/down.gif', 1604109527, 0),
(642, 'theme', 'modern_v2', 'modern_v2/images/ddsmoothmenu/index.html', 1604109527, 0),
(643, 'theme', 'modern_v2', 'modern_v2/images/ddsmoothmenu/right.gif', 1604109527, 0),
(644, 'theme', 'modern_v2', 'modern_v2/images/dot.png', 1604109527, 0),
(645, 'theme', 'modern_v2', 'modern_v2/images/download/arr_black.png', 1604109527, 0),
(646, 'theme', 'modern_v2', 'modern_v2/images/download/arr_red.png', 1604109527, 0),
(647, 'theme', 'modern_v2', 'modern_v2/images/download/arr_right.gif', 1604109527, 0),
(648, 'theme', 'modern_v2', 'modern_v2/images/download/bt_gradient.png', 1604109527, 0),
(649, 'theme', 'modern_v2', 'modern_v2/images/download/bullet_star.png', 1604109527, 0),
(650, 'theme', 'modern_v2', 'modern_v2/images/download/comment.gif', 1604109527, 0),
(651, 'theme', 'modern_v2', 'modern_v2/images/download/comment.png', 1604109527, 0),
(652, 'theme', 'modern_v2', 'modern_v2/images/download/comment_outline.png', 1604109527, 0),
(653, 'theme', 'modern_v2', 'modern_v2/images/download/dl-icon.png', 1604109527, 0),
(654, 'theme', 'modern_v2', 'modern_v2/images/download/dot.gif', 1604109527, 0),
(655, 'theme', 'modern_v2', 'modern_v2/images/download/down.gif', 1604109527, 0),
(656, 'theme', 'modern_v2', 'modern_v2/images/download/down.png', 1604109527, 0),
(657, 'theme', 'modern_v2', 'modern_v2/images/download/download.gif', 1604109527, 0),
(658, 'theme', 'modern_v2', 'modern_v2/images/download/download.png', 1604109527, 0),
(659, 'theme', 'modern_v2', 'modern_v2/images/download/download2.gif', 1604109527, 0),
(660, 'theme', 'modern_v2', 'modern_v2/images/download/down_outline.png', 1604109527, 0),
(661, 'theme', 'modern_v2', 'modern_v2/images/download/folder-icon.png', 1604109527, 0),
(662, 'theme', 'modern_v2', 'modern_v2/images/download/folder.gif', 1604109527, 0),
(663, 'theme', 'modern_v2', 'modern_v2/images/download/header-bg.png', 1604109527, 0),
(664, 'theme', 'modern_v2', 'modern_v2/images/download/index.html', 1604109527, 0),
(665, 'theme', 'modern_v2', 'modern_v2/images/download/info.gif', 1604109527, 0),
(666, 'theme', 'modern_v2', 'modern_v2/images/download/lt_top_bg.png', 1604109527, 0),
(667, 'theme', 'modern_v2', 'modern_v2/images/download/report.gif', 1604109527, 0),
(668, 'theme', 'modern_v2', 'modern_v2/images/download/s-icon.png', 1604109527, 0),
(669, 'theme', 'modern_v2', 'modern_v2/images/download/spector.png', 1604109527, 0),
(670, 'theme', 'modern_v2', 'modern_v2/images/download/thumb.png', 1604109527, 0),
(671, 'theme', 'modern_v2', 'modern_v2/images/download/thumb2.png', 1604109527, 0),
(672, 'theme', 'modern_v2', 'modern_v2/images/download/thumb3.png', 1604109527, 0),
(673, 'theme', 'modern_v2', 'modern_v2/images/download/up-icon.png', 1604109527, 0),
(674, 'theme', 'modern_v2', 'modern_v2/images/download/upload.gif', 1604109527, 0),
(675, 'theme', 'modern_v2', 'modern_v2/images/download/up_bg.png', 1604109527, 0),
(676, 'theme', 'modern_v2', 'modern_v2/images/download/url.gif', 1604109527, 0),
(677, 'theme', 'modern_v2', 'modern_v2/images/d_green_button_s_bg.png', 1604109527, 0),
(678, 'theme', 'modern_v2', 'modern_v2/images/email.png', 1604109527, 0),
(679, 'theme', 'modern_v2', 'modern_v2/images/faq/faq.gif', 1604109527, 0),
(680, 'theme', 'modern_v2', 'modern_v2/images/faq/index.html', 1604109527, 0),
(681, 'theme', 'modern_v2', 'modern_v2/images/faq/top.gif', 1604109527, 0),
(682, 'theme', 'modern_v2', 'modern_v2/images/gotop.gif', 1604109527, 0),
(683, 'theme', 'modern_v2', 'modern_v2/images/header_icon.gif', 1604109527, 0),
(684, 'theme', 'modern_v2', 'modern_v2/images/hot-news-g.png', 1604109527, 0),
(685, 'theme', 'modern_v2', 'modern_v2/images/hot-news-shadow.png', 1604109527, 0),
(686, 'theme', 'modern_v2', 'modern_v2/images/icon-search.png', 1604109527, 0),
(687, 'theme', 'modern_v2', 'modern_v2/images/icons/add.png', 1604109527, 0),
(688, 'theme', 'modern_v2', 'modern_v2/images/icons/bad.png', 1604109527, 0),
(689, 'theme', 'modern_v2', 'modern_v2/images/icons/bot.png', 1604109527, 0),
(690, 'theme', 'modern_v2', 'modern_v2/images/icons/box_down.png', 1604109527, 0),
(691, 'theme', 'modern_v2', 'modern_v2/images/icons/calendar.png', 1604109527, 0),
(692, 'theme', 'modern_v2', 'modern_v2/images/icons/comment.png', 1604109527, 0),
(693, 'theme', 'modern_v2', 'modern_v2/images/icons/database.png', 1604109527, 0),
(694, 'theme', 'modern_v2', 'modern_v2/images/icons/default.png', 1604109527, 0),
(695, 'theme', 'modern_v2', 'modern_v2/images/icons/delete.png', 1604109527, 0),
(696, 'theme', 'modern_v2', 'modern_v2/images/icons/edit.png', 1604109527, 0),
(697, 'theme', 'modern_v2', 'modern_v2/images/icons/email.png', 1604109527, 0),
(698, 'theme', 'modern_v2', 'modern_v2/images/icons/fax.png', 1604109527, 0),
(699, 'theme', 'modern_v2', 'modern_v2/images/icons/good.png', 1604109527, 0),
(700, 'theme', 'modern_v2', 'modern_v2/images/icons/group.png', 1604109527, 0),
(701, 'theme', 'modern_v2', 'modern_v2/images/icons/guest.png', 1604109527, 0),
(702, 'theme', 'modern_v2', 'modern_v2/images/icons/home.png', 1604109527, 0),
(703, 'theme', 'modern_v2', 'modern_v2/images/icons/icon-drag.png', 1604109527, 0),
(704, 'theme', 'modern_v2', 'modern_v2/images/icons/index.html', 1604109527, 0),
(705, 'theme', 'modern_v2', 'modern_v2/images/icons/lightbulb.png', 1604109527, 0),
(706, 'theme', 'modern_v2', 'modern_v2/images/icons/link.png', 1604109527, 0),
(707, 'theme', 'modern_v2', 'modern_v2/images/icons/logout.png', 1604109527, 0),
(708, 'theme', 'modern_v2', 'modern_v2/images/icons/module.png', 1604109527, 0),
(709, 'theme', 'modern_v2', 'modern_v2/images/icons/month.png', 1604109527, 0),
(710, 'theme', 'modern_v2', 'modern_v2/images/icons/newspaper.png', 1604109527, 0),
(711, 'theme', 'modern_v2', 'modern_v2/images/icons/online.png', 1604109527, 0),
(712, 'theme', 'modern_v2', 'modern_v2/images/icons/page.png', 1604109527, 0),
(713, 'theme', 'modern_v2', 'modern_v2/images/icons/phone.png', 1604109527, 0),
(714, 'theme', 'modern_v2', 'modern_v2/images/icons/refresh.png', 1604109527, 0),
(715, 'theme', 'modern_v2', 'modern_v2/images/icons/save_file.png', 1604109527, 0),
(716, 'theme', 'modern_v2', 'modern_v2/images/icons/search.png', 1604109527, 0),
(717, 'theme', 'modern_v2', 'modern_v2/images/icons/sitemanager.gif', 1604109527, 0),
(718, 'theme', 'modern_v2', 'modern_v2/images/icons/statistics.png', 1604109527, 0),
(719, 'theme', 'modern_v2', 'modern_v2/images/icons/time.png', 1604109527, 0),
(720, 'theme', 'modern_v2', 'modern_v2/images/icons/user.png', 1604109527, 0),
(721, 'theme', 'modern_v2', 'modern_v2/images/icons/warning.png', 1604109527, 0),
(722, 'theme', 'modern_v2', 'modern_v2/images/icon_config.gif', 1604109527, 0),
(723, 'theme', 'modern_v2', 'modern_v2/images/icon_fax.png', 1604109527, 0),
(724, 'theme', 'modern_v2', 'modern_v2/images/icon_finish.gif', 1604109527, 0),
(725, 'theme', 'modern_v2', 'modern_v2/images/img_other.gif', 1604109527, 0),
(726, 'theme', 'modern_v2', 'modern_v2/images/index.html', 1604109527, 0),
(727, 'theme', 'modern_v2', 'modern_v2/images/logo_em.png', 1604109527, 0),
(728, 'theme', 'modern_v2', 'modern_v2/images/logo_home.png', 1604109527, 0),
(729, 'theme', 'modern_v2', 'modern_v2/images/logo_phone.png', 1604109527, 0),
(730, 'theme', 'modern_v2', 'modern_v2/images/logo_sky.png', 1604109527, 0),
(731, 'theme', 'modern_v2', 'modern_v2/images/logo_yh.png', 1604109527, 0),
(732, 'theme', 'modern_v2', 'modern_v2/images/menu_home.png', 1604109527, 0),
(733, 'theme', 'modern_v2', 'modern_v2/images/menu_icon.gif', 1604109527, 0),
(734, 'theme', 'modern_v2', 'modern_v2/images/mnews-g1.png', 1604109527, 0),
(735, 'theme', 'modern_v2', 'modern_v2/images/mnews-g2.png', 1604109527, 0),
(736, 'theme', 'modern_v2', 'modern_v2/images/next.gif', 1604109527, 0),
(737, 'theme', 'modern_v2', 'modern_v2/images/next.png', 1604109527, 0),
(738, 'theme', 'modern_v2', 'modern_v2/images/nothumb.jpg', 1604109527, 0),
(739, 'theme', 'modern_v2', 'modern_v2/images/no_image.gif', 1604109527, 0),
(740, 'theme', 'modern_v2', 'modern_v2/images/nukeviet.png', 1604109527, 0),
(741, 'theme', 'modern_v2', 'modern_v2/images/ovl_city_head.gif', 1604109527, 0),
(742, 'theme', 'modern_v2', 'modern_v2/images/pre.gif', 1604109527, 0),
(743, 'theme', 'modern_v2', 'modern_v2/images/prev.png', 1604109527, 0),
(744, 'theme', 'modern_v2', 'modern_v2/images/print.png', 1604109527, 0),
(745, 'theme', 'modern_v2', 'modern_v2/images/rating.png', 1604109527, 0),
(746, 'theme', 'modern_v2', 'modern_v2/images/rss/home.gif', 1604109527, 0),
(747, 'theme', 'modern_v2', 'modern_v2/images/rss/index.html', 1604109527, 0),
(748, 'theme', 'modern_v2', 'modern_v2/images/rss/line1.gif', 1604109527, 0),
(749, 'theme', 'modern_v2', 'modern_v2/images/rss/line2.gif', 1604109527, 0),
(750, 'theme', 'modern_v2', 'modern_v2/images/rss/line3.gif', 1604109527, 0),
(751, 'theme', 'modern_v2', 'modern_v2/images/rss/rss.gif', 1604109527, 0),
(752, 'theme', 'modern_v2', 'modern_v2/images/rss.png', 1604109527, 0),
(753, 'theme', 'modern_v2', 'modern_v2/images/rss2.png', 1604109527, 0),
(754, 'theme', 'modern_v2', 'modern_v2/images/save.png', 1604109527, 0),
(755, 'theme', 'modern_v2', 'modern_v2/images/sblue/arrow-blue.gif', 1604109527, 0),
(756, 'theme', 'modern_v2', 'modern_v2/images/sblue/arrow-blue2.gif', 1604109527, 0),
(757, 'theme', 'modern_v2', 'modern_v2/images/sblue/background.png', 1604109527, 0),
(758, 'theme', 'modern_v2', 'modern_v2/images/sblue/bullet-blue.png', 1604109527, 0),
(759, 'theme', 'modern_v2', 'modern_v2/images/sblue/index.html', 1604109527, 0),
(760, 'theme', 'modern_v2', 'modern_v2/images/sblue/tab-g-current.png', 1604109527, 0),
(761, 'theme', 'modern_v2', 'modern_v2/images/search-icon.png', 1604109527, 0),
(762, 'theme', 'modern_v2', 'modern_v2/images/shadow.png', 1604109527, 0),
(763, 'theme', 'modern_v2', 'modern_v2/images/share.png', 1604109527, 0),
(764, 'theme', 'modern_v2', 'modern_v2/images/shopping_cart.png', 1604109527, 0),
(765, 'theme', 'modern_v2', 'modern_v2/images/small_arr_left_bl.png', 1604109527, 0),
(766, 'theme', 'modern_v2', 'modern_v2/images/spacer.gif', 1604109527, 0),
(767, 'theme', 'modern_v2', 'modern_v2/images/spector1.png', 1604109527, 0),
(768, 'theme', 'modern_v2', 'modern_v2/images/squared-blue.png', 1604109527, 0),
(769, 'theme', 'modern_v2', 'modern_v2/images/ssvborder.png', 1604109527, 0),
(770, 'theme', 'modern_v2', 'modern_v2/images/statistics/bg.gif', 1604109527, 0),
(771, 'theme', 'modern_v2', 'modern_v2/images/statistics/bg2.gif', 1604109527, 0),
(772, 'theme', 'modern_v2', 'modern_v2/images/statistics/index.html', 1604109527, 0),
(773, 'theme', 'modern_v2', 'modern_v2/images/stop.gif', 1604109527, 0),
(774, 'theme', 'modern_v2', 'modern_v2/images/tab-g-current.png', 1604109527, 0),
(775, 'theme', 'modern_v2', 'modern_v2/images/tab-g.png', 1604109527, 0),
(776, 'theme', 'modern_v2', 'modern_v2/images/tabs_arrow_down.jpg', 1604109527, 0),
(777, 'theme', 'modern_v2', 'modern_v2/images/tabs_l.png', 1604109527, 0),
(778, 'theme', 'modern_v2', 'modern_v2/images/tabs_r.png', 1604109527, 0),
(779, 'theme', 'modern_v2', 'modern_v2/images/tag.png', 1604109527, 0),
(780, 'theme', 'modern_v2', 'modern_v2/images/tooltiparrow.gif', 1604109527, 0),
(781, 'theme', 'modern_v2', 'modern_v2/images/transparent.png', 1604109527, 0),
(782, 'theme', 'modern_v2', 'modern_v2/images/users/facebook.gif', 1604109527, 0),
(783, 'theme', 'modern_v2', 'modern_v2/images/users/google.gif', 1604109527, 0),
(784, 'theme', 'modern_v2', 'modern_v2/images/users/index.html', 1604109527, 0),
(785, 'theme', 'modern_v2', 'modern_v2/images/users/myopenid.gif', 1604109527, 0),
(786, 'theme', 'modern_v2', 'modern_v2/images/users/no_avatar.jpg', 1604109527, 0),
(787, 'theme', 'modern_v2', 'modern_v2/images/users/nukeviet.gif', 1604109527, 0),
(788, 'theme', 'modern_v2', 'modern_v2/images/users/openid.gif', 1604109527, 0),
(789, 'theme', 'modern_v2', 'modern_v2/images/users/openid_small.gif', 1604109527, 0),
(790, 'theme', 'modern_v2', 'modern_v2/images/users/yahoo.gif', 1604109527, 0),
(791, 'theme', 'modern_v2', 'modern_v2/images/wtsky0Emo_J.png', 1604109527, 0),
(792, 'theme', 'modern_v2', 'modern_v2/images/xhtml.png', 1604109527, 0),
(793, 'theme', 'modern_v2', 'modern_v2/images/yahoo_help_new.png', 1604109527, 0),
(794, 'theme', 'modern_v2', 'modern_v2/index.html', 1604109527, 0),
(795, 'theme', 'modern_v2', 'modern_v2/js/contentslider.js', 1604109527, 0),
(796, 'theme', 'modern_v2', 'modern_v2/js/index.html', 1604109527, 0),
(797, 'theme', 'modern_v2', 'modern_v2/js/load.header.js', 1604109527, 0),
(798, 'theme', 'modern_v2', 'modern_v2/js/stayontop.js', 1604109527, 0),
(799, 'theme', 'modern_v2', 'modern_v2/js/styleswitch.js', 1604109527, 0),
(800, 'theme', 'modern_v2', 'modern_v2/language/.htaccess', 1604109527, 0),
(801, 'theme', 'modern_v2', 'modern_v2/language/index.html', 1604109527, 0),
(802, 'theme', 'modern_v2', 'modern_v2/layout/.htaccess', 1604109527, 0),
(803, 'theme', 'modern_v2', 'modern_v2/layout/block.default.tpl', 1604109527, 0),
(804, 'theme', 'modern_v2', 'modern_v2/layout/block.no_title.tpl', 1604109527, 0),
(805, 'theme', 'modern_v2', 'modern_v2/layout/block.no_title_html.tpl', 1604109527, 0),
(806, 'theme', 'modern_v2', 'modern_v2/layout/footer.tpl', 1604109527, 0),
(807, 'theme', 'modern_v2', 'modern_v2/layout/header.tpl', 1604109527, 0),
(808, 'theme', 'modern_v2', 'modern_v2/layout/index.html', 1604109527, 0),
(809, 'theme', 'modern_v2', 'modern_v2/layout/layout.body-right.tpl', 1604109527, 0),
(810, 'theme', 'modern_v2', 'modern_v2/layout/layout.body.tpl', 1604109527, 0),
(811, 'theme', 'modern_v2', 'modern_v2/layout/rss.tpl', 1604109527, 0),
(812, 'theme', 'modern_v2', 'modern_v2/modules/.htaccess', 1604109527, 0),
(813, 'theme', 'modern_v2', 'modern_v2/modules/about/block.about.tpl', 1604109527, 0),
(814, 'theme', 'modern_v2', 'modern_v2/modules/about/index.html', 1604109527, 0),
(815, 'theme', 'modern_v2', 'modern_v2/modules/about/main.tpl', 1604109527, 0),
(816, 'theme', 'modern_v2', 'modern_v2/modules/contact/form.tpl', 1604109527, 0),
(817, 'theme', 'modern_v2', 'modern_v2/modules/contact/index.html', 1604109527, 0),
(818, 'theme', 'modern_v2', 'modern_v2/modules/contact/sendcontact.tpl', 1604109527, 0),
(819, 'theme', 'modern_v2', 'modern_v2/modules/download/block.tpl', 1604109527, 0),
(820, 'theme', 'modern_v2', 'modern_v2/modules/download/block_category.tpl', 1604109527, 0),
(821, 'theme', 'modern_v2', 'modern_v2/modules/download/block_lastestdownload.tpl', 1604109527, 0),
(822, 'theme', 'modern_v2', 'modern_v2/modules/download/block_search.tpl', 1604109527, 0),
(823, 'theme', 'modern_v2', 'modern_v2/modules/download/block_topdownload.tpl', 1604109527, 0),
(824, 'theme', 'modern_v2', 'modern_v2/modules/download/block_upload.tpl', 1604109527, 0),
(825, 'theme', 'modern_v2', 'modern_v2/modules/download/comment.tpl', 1604109527, 0),
(826, 'theme', 'modern_v2', 'modern_v2/modules/download/index.html', 1604109527, 0),
(827, 'theme', 'modern_v2', 'modern_v2/modules/download/main_page.tpl', 1604109527, 0),
(828, 'theme', 'modern_v2', 'modern_v2/modules/download/upload.tpl', 1604109527, 0),
(829, 'theme', 'modern_v2', 'modern_v2/modules/download/viewcat_page.tpl', 1604109527, 0),
(830, 'theme', 'modern_v2', 'modern_v2/modules/download/viewfile.tpl', 1604109527, 0),
(831, 'theme', 'modern_v2', 'modern_v2/modules/faq/.htaccess', 1604109527, 0),
(832, 'theme', 'modern_v2', 'modern_v2/modules/faq/index.html', 1604109527, 0),
(833, 'theme', 'modern_v2', 'modern_v2/modules/faq/main_page.tpl', 1604109527, 0),
(834, 'theme', 'modern_v2', 'modern_v2/modules/index.html', 1604109527, 0),
(835, 'theme', 'modern_v2', 'modern_v2/modules/menu/index.html', 1604109527, 0),
(836, 'theme', 'modern_v2', 'modern_v2/modules/menu/menu_theme_modern.tpl', 1604109527, 0),
(837, 'theme', 'modern_v2', 'modern_v2/modules/news/block_category.tpl', 1604109527, 0),
(838, 'theme', 'modern_v2', 'modern_v2/modules/news/block_groups.tpl', 1604109527, 0),
(839, 'theme', 'modern_v2', 'modern_v2/modules/news/block_headline.tpl', 1604109527, 0),
(840, 'theme', 'modern_v2', 'modern_v2/modules/news/block_news.tpl', 1604109527, 0),
(841, 'theme', 'modern_v2', 'modern_v2/modules/news/block_newscenter.tpl', 1604109527, 0),
(842, 'theme', 'modern_v2', 'modern_v2/modules/news/block_newsright.tpl', 1604109527, 0),
(843, 'theme', 'modern_v2', 'modern_v2/modules/news/comment.tpl', 1604109527, 0),
(844, 'theme', 'modern_v2', 'modern_v2/modules/news/content.tpl', 1604109527, 0),
(845, 'theme', 'modern_v2', 'modern_v2/modules/news/detail.tpl', 1604109527, 0),
(846, 'theme', 'modern_v2', 'modern_v2/modules/news/index.html', 1604109527, 0),
(847, 'theme', 'modern_v2', 'modern_v2/modules/news/print.tpl', 1604109527, 0),
(848, 'theme', 'modern_v2', 'modern_v2/modules/news/search.tpl', 1604109527, 0),
(849, 'theme', 'modern_v2', 'modern_v2/modules/news/sendmail.tpl', 1604109527, 0),
(850, 'theme', 'modern_v2', 'modern_v2/modules/news/theme.php', 1604109527, 0),
(851, 'theme', 'modern_v2', 'modern_v2/modules/news/topic.tpl', 1604109527, 0),
(852, 'theme', 'modern_v2', 'modern_v2/modules/news/viewcat_grid.tpl', 1604109527, 0),
(853, 'theme', 'modern_v2', 'modern_v2/modules/news/viewcat_list.tpl', 1604109527, 0),
(854, 'theme', 'modern_v2', 'modern_v2/modules/news/viewcat_main_bottom.tpl', 1604109527, 0),
(855, 'theme', 'modern_v2', 'modern_v2/modules/news/viewcat_main_left.tpl', 1604109527, 0),
(856, 'theme', 'modern_v2', 'modern_v2/modules/news/viewcat_main_right.tpl', 1604109527, 0),
(857, 'theme', 'modern_v2', 'modern_v2/modules/news/viewcat_page.tpl', 1604109527, 0),
(858, 'theme', 'modern_v2', 'modern_v2/modules/news/viewcat_top.tpl', 1604109527, 0),
(859, 'theme', 'modern_v2', 'modern_v2/modules/news/viewcat_two_column.tpl', 1604109527, 0),
(860, 'theme', 'modern_v2', 'modern_v2/modules/search/form.tpl', 1604109527, 0),
(861, 'theme', 'modern_v2', 'modern_v2/modules/search/index.html', 1604109527, 0),
(862, 'theme', 'modern_v2', 'modern_v2/modules/search/result.tpl', 1604109527, 0),
(863, 'theme', 'modern_v2', 'modern_v2/modules/users/active_confirm.tpl', 1604109527, 0),
(864, 'theme', 'modern_v2', 'modern_v2/modules/users/block.login.tpl', 1604109527, 0),
(865, 'theme', 'modern_v2', 'modern_v2/modules/users/changepass.tpl', 1604109527, 0),
(866, 'theme', 'modern_v2', 'modern_v2/modules/users/changequestion.tpl', 1604109527, 0),
(867, 'theme', 'modern_v2', 'modern_v2/modules/users/confirm.tpl', 1604109527, 0),
(868, 'theme', 'modern_v2', 'modern_v2/modules/users/index.html', 1604109527, 0),
(869, 'theme', 'modern_v2', 'modern_v2/modules/users/info.tpl', 1604109527, 0),
(870, 'theme', 'modern_v2', 'modern_v2/modules/users/info_exit.tpl', 1604109527, 0),
(871, 'theme', 'modern_v2', 'modern_v2/modules/users/info_exit_redirect.tpl', 1604109527, 0),
(872, 'theme', 'modern_v2', 'modern_v2/modules/users/login.tpl', 1604109527, 0),
(873, 'theme', 'modern_v2', 'modern_v2/modules/users/lostactivelink.tpl', 1604109527, 0),
(874, 'theme', 'modern_v2', 'modern_v2/modules/users/lostpass.tpl', 1604109527, 0),
(875, 'theme', 'modern_v2', 'modern_v2/modules/users/memberslist.tpl', 1604109527, 0),
(876, 'theme', 'modern_v2', 'modern_v2/modules/users/openid_administrator.tpl', 1604109527, 0),
(877, 'theme', 'modern_v2', 'modern_v2/modules/users/openid_login.tpl', 1604109527, 0),
(878, 'theme', 'modern_v2', 'modern_v2/modules/users/openid_login2.tpl', 1604109527, 0),
(879, 'theme', 'modern_v2', 'modern_v2/modules/users/openid_register.tpl', 1604109527, 0),
(880, 'theme', 'modern_v2', 'modern_v2/modules/users/register.tpl', 1604109527, 0),
(881, 'theme', 'modern_v2', 'modern_v2/modules/users/re_groups.tpl', 1604109527, 0),
(882, 'theme', 'modern_v2', 'modern_v2/modules/users/userinfo.tpl', 1604109527, 0),
(883, 'theme', 'modern_v2', 'modern_v2/modules/users/viewdetailusers.tpl', 1604109527, 0),
(884, 'theme', 'modern_v2', 'modern_v2/modules/voting/global.voting.tpl', 1604109527, 0),
(885, 'theme', 'modern_v2', 'modern_v2/modules/voting/index.html', 1604109527, 0),
(886, 'theme', 'modern_v2', 'modern_v2/modules/voting/main.tpl', 1604109527, 0),
(887, 'theme', 'modern_v2', 'modern_v2/modules/voting/result.voting.tpl', 1604109527, 0),
(888, 'theme', 'modern_v2', 'modern_v2/system/.htaccess', 1604109527, 0),
(889, 'theme', 'modern_v2', 'modern_v2/system/dump.tpl', 1604109527, 0),
(890, 'theme', 'modern_v2', 'modern_v2/system/error_info.tpl', 1604109527, 0),
(891, 'theme', 'modern_v2', 'modern_v2/system/flood_blocker.tpl', 1604109527, 0),
(892, 'theme', 'modern_v2', 'modern_v2/system/index.html', 1604109527, 0),
(893, 'theme', 'modern_v2', 'modern_v2/system/info_die.tpl', 1604109527, 0),
(894, 'theme', 'modern_v2', 'modern_v2/theme.php', 1604109527, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_ips`
--

CREATE TABLE `nv4_ips` (
  `id` mediumint(8) NOT NULL,
  `type` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_ips`
--

INSERT INTO `nv4_ips` (`id`, `type`, `ip`, `mask`, `area`, `begintime`, `endtime`, `notice`) VALUES
(1, 1, '::1', 0, 1, 1603626387, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_language`
--

CREATE TABLE `nv4_language` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `idfile` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module',
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_language_file`
--

CREATE TABLE `nv4_language_file` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_file` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_logs`
--

CREATE TABLE `nv4_logs` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_logs`
--

INSERT INTO `nv4_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(1, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1603626457),
(2, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1603682993),
(3, 'vi', 'modules', 'Thứ tự module: about', '15 -> 3', '', 1, 1603683180),
(4, 'vi', 'modules', 'Thứ tự module: news', '15 -> 3', '', 1, 1603683187),
(5, 'vi', 'modules', 'Thứ tự module: users', '15 -> 4', '', 1, 1603683189),
(6, 'vi', 'login', '[truongdz96] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1603685592),
(7, 'vi', 'login', '[truongdz96] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1603853727),
(8, 'vi', 'login', '[truongdz96] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1603853737),
(9, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1603853751),
(10, 'vi', 'extensions', 'Cài đặt ứng dụng', 'theme-tet-2018.zip', '', 1, 1603857005),
(11, 'vi', 'themes', 'Thiết lập giao diện theme: \"themtet2018\"', '', '', 1, 1603857037),
(12, 'vi', 'themes', 'Kích hoạt theme: \"themtet2018\"', '', '', 1, 1603857040),
(13, 'vi', 'extensions', 'Cài đặt ứng dụng', 'theme-tet-2018 (1).zip', '', 1, 1603857455),
(14, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1603857489),
(15, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604051683),
(16, 'vi', 'modules', 'Sửa module &ldquo;voting&rdquo;', '', '', 1, 1604051890),
(17, 'vi', 'modules', 'Cài lại module \"voting\"', '', '', 1, 1604051907),
(18, 'vi', 'modules', 'Cài lại module \"voting\"', '', '', 1, 1604052000),
(19, 'vi', 'modules', 'Sửa module &ldquo;voting&rdquo;', '', '', 1, 1604052049),
(20, 'vi', 'modules', 'Thứ tự module: voting', '15 -> 1', '', 1, 1604052131),
(21, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604108440),
(22, 'vi', 'themes', 'Kích hoạt theme: \"themtet2018\"', '', '', 1, 1604108494),
(23, 'vi', 'modules', 'Thiết lập module mới shops', '', '', 1, 1604108708),
(24, 'vi', 'modules', 'Sửa module &ldquo;shops&rdquo;', '', '', 1, 1604108713),
(25, 'vi', 'modules', 'Sửa module &ldquo;shops&rdquo;', '', '', 1, 1604108809),
(26, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1604109001),
(27, 'vi', 'extensions', 'Cài đặt ứng dụng', 'themes-tet-binh-than-2016.zip', '', 1, 1604109280),
(28, 'vi', 'extensions', 'Cài đặt ứng dụng', 'theme-greenynt.zip', '', 1, 1604109353),
(29, 'vi', 'extensions', 'Cài đặt ứng dụng', 'nv3-theme-modern-v2.zip', '', 1, 1604109518),
(30, 'vi', 'themes', 'Thiết lập giao diện theme: \"modern_v2\"', '', '', 1, 1604109536),
(31, 'vi', 'themes', 'Kích hoạt theme: \"modern_v2\"', '', '', 1, 1604109544),
(32, 'vi', 'themes', 'Kích hoạt theme: \"themtet2018\"', '', '', 1, 1604109562),
(33, 'vi', 'modules', 'Thiết lập module mới samples', '', '', 1, 1604112224),
(34, 'vi', 'modules', 'Sửa module &ldquo;samples&rdquo;', '', '', 1, 1604112231),
(35, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1604112741),
(36, 'vi', 'login', '[truongdz96] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1604114543),
(37, 'vi', 'login', '[truongdz96] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1604116147),
(38, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604116155),
(39, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1604119057),
(40, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604223907),
(41, 'vi', 'login', '[truongdz96] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1604227845),
(42, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604228826),
(43, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604249294),
(44, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604254306),
(45, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604280337),
(46, 'vi', 'login', '[truongdz96] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1604285170),
(47, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604289586),
(48, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604369775),
(49, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604394197),
(50, 'vi', 'modules', 'Thiết lập module mới Demo', '', '', 1, 1604398630),
(51, 'vi', 'modules', 'Sửa module &ldquo;Demo&rdquo;', '', '', 1, 1604398647),
(52, 'vi', 'modules', 'Cài lại module \"samples\"', '', '', 1, 1604399364),
(53, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604414541),
(54, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604452360),
(55, 'vi', 'login', '[truongdz96] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1604456799),
(56, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604457172),
(57, 'vi', 'login', '[truongdz96] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1604459982),
(58, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604460575),
(59, 'vi', 'login', '[truongdz96] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1604461247),
(60, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604461266),
(61, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604463681),
(62, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604566701),
(63, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604587356),
(64, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604626077),
(65, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1604628448),
(66, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604633498),
(67, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604654922),
(68, 'vi', 'login', '[truongdz96] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1604711369),
(69, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604711381),
(70, 'vi', 'login', '[truongdz96] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1604715700),
(71, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604716004),
(72, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1604997549),
(73, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605003873),
(74, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605003880),
(75, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605006252),
(76, 'vi', 'modules', 'Thiết lập module mới album', '', '', 1, 1605006259),
(77, 'vi', 'modules', 'Sửa module &ldquo;album&rdquo;', '', '', 1, 1605006264),
(78, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605011498),
(79, 'vi', 'modules', 'Cài lại module \"Demo\"', '', '', 1, 1605013313),
(80, 'vi', 'modules', 'Kích hoạt module \"Demo\"', 'Có', '', 1, 1605013334),
(81, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605057544),
(82, 'vi', 'login', '[truongdz96] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1605061242),
(83, 'vi', 'login', '[truongdz96] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1605061942),
(84, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605061950),
(85, 'vi', 'themes', 'Thiết lập giao diện theme: \"Thuc_Hanh\"', '', '', 1, 1605061967),
(86, 'vi', 'themes', 'Kích hoạt theme: \"Thuc_Hanh\"', '', '', 1, 1605061969),
(87, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1605062033),
(88, 'vi', 'themes', 'Kích hoạt theme: \"Thuc_Hanh\"', '', '', 1, 1605062071),
(89, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1605062095),
(90, 'vi', 'themes', 'Kích hoạt theme: \"Thuc_Hanh\"', '', '', 1, 1605062103),
(91, 'vi', 'themes', 'Thiết lập giao diện theme: \"demo\"', '', '', 1, 1605062258),
(92, 'vi', 'themes', 'Kích hoạt theme: \"demo\"', '', '', 1, 1605062260),
(93, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605063003),
(94, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1605063471),
(95, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1605063639),
(96, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1605068706),
(97, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605146332),
(98, 'vi', 'upload', 'Upload file', 'uploads/logo_dantri.png', '', 1, 1605147180),
(99, 'vi', 'upload', 'Upload file', 'uploads/banner.png', '', 1, 1605147969),
(100, 'vi', 'themes', 'Kích hoạt theme: \"demo\"', '', '', 1, 1605148947),
(101, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1605148970),
(102, 'vi', 'themes', 'Kích hoạt theme: \"demo\"', '', '', 1, 1605149034),
(103, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1605149076),
(104, 'vi', 'themes', 'Thiết lập giao diện theme: \"DanTri\"', '', '', 1, 1605149228),
(105, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605149346),
(106, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605149523),
(107, 'vi', 'themes', 'Kích hoạt theme: \"DanTri\"', '', '', 1, 1605149669),
(108, 'vi', 'themes', 'Xóa các thiết lập', 'theme Thuc_Hanh', '', 1, 1605149681),
(109, 'vi', 'themes', 'Xóa các thiết lập', 'theme demo', '', 1, 1605149689),
(110, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605149892),
(111, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605150540),
(112, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605150574),
(113, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605150675),
(114, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605151048),
(115, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605151078),
(116, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605151179),
(117, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605151226),
(118, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605151247),
(119, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605151279),
(120, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605151310),
(121, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605151361),
(122, 'vi', 'themes', 'Thiết lập layout theme: \"DanTri\"', '', '', 1, 1605151428),
(123, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605151557),
(124, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605152459),
(125, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605152462),
(126, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605153034),
(127, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605153291),
(128, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605153381),
(129, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605153681),
(130, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605154374),
(131, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1605154383),
(132, 'vi', 'themes', 'Kích hoạt theme: \"DanTri\"', '', '', 1, 1605154413),
(133, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605154464),
(134, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605154691),
(135, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605155370),
(136, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605155373),
(137, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605155833),
(138, 'vi', 'banners', 'log_del_plan', 'planid 1', '', 1, 1605156334),
(139, 'vi', 'themes', 'Thêm block', 'Name : Thông cáo báo chí', '', 1, 1605156903),
(140, 'vi', 'themes', 'Sửa block', 'Name : Thông cáo báo chí', '', 1, 1605156929),
(141, 'vi', 'themes', 'Thêm block', 'Name : Samples', '', 1, 1605156983),
(142, 'vi', 'themes', 'Sửa block', 'Name : Tin nổi bật', '', 1, 1605157064),
(143, 'vi', 'themes', 'Sửa block', 'Name : Tin nổi bật', '', 1, 1605157093),
(144, 'vi', 'themes', 'Thêm block', 'Name : Tin sự kiện', '', 1, 1605157211),
(145, 'vi', 'themes', 'Sửa block', 'Name : Thông cáo báo chí', '', 1, 1605157252),
(146, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1605157278),
(147, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605171242),
(148, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1605171403),
(149, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605171733),
(150, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1605171944),
(151, 'vi', 'themes', 'Kích hoạt theme: \"DanTri\"', '', '', 1, 1605171960),
(152, 'vi', 'themes', 'Thiết lập giao diện theme: \"BaoDanTri\"', '', '', 1, 1605172295),
(153, 'vi', 'themes', 'Kích hoạt theme: \"BaoDanTri\"', '', '', 1, 1605172297),
(154, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605172315),
(155, 'vi', 'themes', 'Thiết lập layout theme: \"BaoDanTri\"', '', '', 1, 1605172377),
(156, 'vi', 'themes', 'Thêm block', 'Name : Thông cáo báo chí', '', 1, 1605172551),
(157, 'vi', 'themes', 'Thêm block', 'Name : Tin Công Nghệ', '', 1, 1605172589),
(158, 'vi', 'themes', 'Sửa block', 'Name : Tin tiêu điểm', '', 1, 1605172616),
(159, 'vi', 'themes', 'Sửa block', 'Name : Tin tiêu điểm', '', 1, 1605172646),
(160, 'vi', 'themes', 'Sửa block', 'Name : Tin tiêu điểm', '', 1, 1605172679),
(161, 'vi', 'themes', 'Thêm block', 'Name : Tin xem nhiều', '', 1, 1605172728),
(162, 'vi', 'themes', 'Sửa block', 'Name : Tin xem nhiều', '', 1, 1605172779),
(163, 'vi', 'themes', 'Thêm block', 'Name : Báo Dân Trí', '', 1, 1605172837),
(164, 'vi', 'themes', 'Sửa block', 'Name : Báo Dân Trí', '', 1, 1605172894),
(165, 'vi', 'banners', 'log_add_plan', 'planid 4', '', 1, 1605173044),
(166, 'vi', 'banners', 'log_add_banner', 'bannerid 4', '', 1, 1605173139),
(167, 'vi', 'themes', 'Thêm block', 'Name : Tiêu Điểm', '', 1, 1605173202),
(168, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605173404),
(169, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605173444),
(170, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605173526),
(171, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605173557),
(172, 'vi', 'themes', 'Kích hoạt theme: \"DanTri\"', '', '', 1, 1605173660),
(173, 'vi', 'themes', 'Kích hoạt theme: \"BaoDanTri\"', '', '', 1, 1605173665),
(174, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605173827),
(175, 'vi', 'banners', 'log_edit_plan', 'planid 4', '', 1, 1605173899),
(176, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605174010),
(177, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605174038),
(178, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605174234),
(179, 'vi', 'upload', 'Upload file', 'uploads/news/2020_11/cach-lam-chuong-cho.jpg', '', 1, 1605174335),
(180, 'vi', 'news', 'Thêm bài viết', 'Tin xã hội', '', 1, 1605174449),
(181, 'vi', 'upload', 'Upload file', 'uploads/news/2020_11/dantri_1.jpeg', '', 1, 1605174614),
(182, 'vi', 'news', 'Thêm bài viết', 'Gia đình cô gái &quot;bùng&quot; 150 mâm cỗ ở Điện Biên hứa bán đất để trả nợ', '', 1, 1605174650),
(183, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1605174826),
(184, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1605174851),
(185, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1605174874),
(186, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1605174900),
(187, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1605174923),
(188, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1605174938),
(189, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1605174955),
(190, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1605174972),
(191, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1605174980),
(192, 'vi', 'themes', 'Sửa block', 'Name : Tiêu Điểm', '', 1, 1605175030),
(193, 'vi', 'banners', 'log_add_plan', 'planid 5', '', 1, 1605175304),
(194, 'vi', 'banners', 'log_add_banner', 'bannerid 5', '', 1, 1605175411),
(195, 'vi', 'themes', 'Sửa block', 'Name : Siêu khuyến mãi', '', 1, 1605175461),
(196, 'vi', 'banners', 'log_add_banner', 'bannerid 6', '', 1, 1605175653),
(197, 'vi', 'banners', 'log_add_plan', 'planid 6', '', 1, 1605175723),
(198, 'vi', 'themes', 'Thêm block', 'Name : Siêu Sale tháng 11', '', 1, 1605175804),
(199, 'vi', 'banners', 'log_edit_plan', 'planid 6', '', 1, 1605175909),
(200, 'vi', 'themes', 'Sửa block', 'Name : Siêu Sale tháng 11', '', 1, 1605175968),
(201, 'vi', 'banners', 'log_add_banner', 'bannerid 7', '', 1, 1605176069),
(202, 'vi', 'banners', 'log_edit_plan', 'planid 6', '', 1, 1605176102),
(203, 'vi', 'themes', 'Sửa block', 'Name : Siêu Sale tháng 11', '', 1, 1605176117),
(204, 'vi', 'banners', 'log_edit_plan', 'planid 6', '', 1, 1605176197),
(205, 'vi', 'banners', 'log_edit_plan', 'planid 6', '', 1, 1605176218),
(206, 'vi', 'themes', 'Thêm block', 'Name : Samples', '', 1, 1605176637),
(207, 'vi', 'themes', 'Thêm block', 'Name : Samples', '', 1, 1605176728),
(208, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605177059),
(209, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605177145),
(210, 'vi', 'upload', 'Upload file', 'uploads/news/2020_11/1-1605091610535.jpg', '', 1, 1605177291),
(211, 'vi', 'news', 'Thêm bài viết', 'Nhân chứng kể vụ sạt lở núi kinh hoàng, người chạy thục mạng', '', 1, 1605177368),
(212, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605177680),
(213, 'vi', 'news', 'Sửa bài viết', 'Tối 11&#x002F;11, lãnh đạo huyện Bắc Trà My, Quảng Nam cho biết, đến 21h cùng ngày, lực lượng chức năng vẫn chưa tìm thấy nạn nhân được cho là mất tích trong vụ sạt lở đất xảy ra trong chiều cùng ngày.', '', 1, 1605177726),
(214, 'vi', 'themes', 'Sửa block', 'Name : Tiêu Điểm', '', 1, 1605177996),
(215, 'vi', 'banners', 'log_add_banner', 'bannerid 8', '', 1, 1605179215),
(216, 'vi', 'themes', 'Thêm block', 'Name : global banners', '', 1, 1605179247),
(217, 'vi', 'banners', 'log_add_plan', 'planid 7', '', 1, 1605179331),
(218, 'vi', 'banners', 'log_add_banner', 'bannerid 9', '', 1, 1605179356),
(219, 'vi', 'themes', 'Thêm block', 'Name : Siêu Sale tháng 11', '', 1, 1605179376),
(220, 'vi', 'banners', 'log_del_banner', 'bannerid 8', '', 1, 1605179431),
(221, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605179542),
(222, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605259965),
(223, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1605259981),
(224, 'vi', 'themes', 'Kích hoạt theme: \"BaoDanTri\"', '', '', 1, 1605260007),
(225, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1605260016),
(226, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605278666),
(227, 'vi', 'themes', 'Kích hoạt theme: \"BaoDanTri\"', '', '', 1, 1605279447),
(228, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605317292),
(229, 'vi', 'themes', 'Thêm block', 'Name : global html', '', 1, 1605318368),
(230, 'vi', 'themes', 'Thiết lập layout theme: \"BaoDanTri\"', '', '', 1, 1605319008),
(231, 'vi', 'themes', 'Thiết lập layout theme: \"BaoDanTri\"', '', '', 1, 1605319020),
(232, 'vi', 'login', '[truongdz96] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1605326882),
(233, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605327905),
(234, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605414387),
(235, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1605414396),
(236, 'vi', 'modules', 'Thiết lập module mới test', '', '', 1, 1605414405),
(237, 'vi', 'modules', 'Sửa module &ldquo;test&rdquo;', '', '', 1, 1605414413),
(238, 'vi', 'modules', 'Xóa module \"Demo\"', '', '', 1, 1605415012),
(239, 'vi', 'modules', 'Xóa module \"album\"', '', '', 1, 1605415018),
(240, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1605415782),
(241, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605428601),
(242, 'vi', 'modules', 'Sửa module &ldquo;shops&rdquo;', '', '', 1, 1605429089),
(243, 'vi', 'modules', 'Thứ tự module: shops', '18 -> 1', '', 1, 1605429107),
(244, 'vi', 'modules', 'Xóa module \"voting\"', '', '', 1, 1605429833),
(245, 'vi', 'modules', 'Xóa module \"statistics\"', '', '', 1, 1605429918),
(246, 'vi', 'modules', 'Xóa module \"samples\"', '', '', 1, 1605430022),
(247, 'vi', 'modules', 'Sửa module &ldquo;feeds&rdquo;', '', '', 1, 1605430063),
(248, 'vi', 'modules', 'Xóa module \"siteterms\"', '', '', 1, 1605430148),
(249, 'vi', 'modules', 'Xóa module \"test\"', '', '', 1, 1605430156),
(250, 'vi', 'modules', 'Cài lại module \"users\"', '', '', 1, 1605430169),
(251, 'vi', 'modules', 'Xóa module \"about\"', '', '', 1, 1605430364),
(252, 'vi', 'menu', 'Delete menu item', 'Item ID 44', '', 1, 1605430762),
(253, 'vi', 'menu', 'Delete menu item', 'Item ID 45', '', 1, 1605430762),
(254, 'vi', 'menu', 'Delete menu item', 'Item ID 46', '', 1, 1605430762),
(255, 'vi', 'menu', 'Delete menu item', 'Item ID 49', '', 1, 1605430762),
(256, 'vi', 'menu', 'Delete menu item', 'Item ID 50', '', 1, 1605430762),
(257, 'vi', 'menu', 'Delete menu item', 'Item ID 47', '', 1, 1605430762),
(258, 'vi', 'menu', 'Delete menu item', 'Item ID 48', '', 1, 1605430762),
(259, 'vi', 'menu', 'Delete menu item', 'Item ID 54', '', 1, 1605430762),
(260, 'vi', 'menu', 'Delete menu item', 'Item ID 55', '', 1, 1605430762),
(261, 'vi', 'menu', 'Delete menu item', 'Item ID 53', '', 1, 1605430762),
(262, 'vi', 'themes', 'Thiết lập layout theme: \"default\"', '', '', 1, 1605431048),
(263, 'vi', 'themes', 'Thiết lập layout theme: \"default\"', '', '', 1, 1605431152),
(264, 'vi', 'themes', 'Thiết lập layout theme: \"default\"', '', '', 1, 1605431182),
(265, 'vi', 'modules', 'Cài lại module \"banners\"', '', '', 1, 1605431564),
(266, 'vi', 'modules', 'Kích hoạt module \"banners\"', 'Có', '', 1, 1605431582),
(267, 'vi', 'modules', 'Cài lại module \"banners\"', '', '', 1, 1605431594),
(268, 'vi', 'modules', 'Thứ tự module: news', '12 -> 1', '', 1, 1605431671),
(269, 'vi', 'modules', 'Thứ tự module: banners', '12 -> 2', '', 1, 1605431673),
(270, 'vi', 'modules', 'Thứ tự module: menu', '12 -> 3', '', 1, 1605431674),
(271, 'vi', 'modules', 'Thứ tự module: page', '12 -> 4', '', 1, 1605431676),
(272, 'vi', 'modules', 'Kích hoạt module \"seek\"', 'Có', '', 1, 1605431737),
(273, 'vi', 'modules', 'Thứ tự module: seek', '12 -> 5', '', 1, 1605431745),
(274, 'vi', 'modules', 'Cài lại module \"seek\"', '', '', 1, 1605431764),
(275, 'vi', 'themes', 'Kích hoạt theme: \"BaoDanTri\"', '', '', 1, 1605431787),
(276, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1605431795),
(277, 'vi', 'modules', 'Thiết lập module mới category', '', '', 1, 1605432172),
(278, 'vi', 'modules', 'Sửa module &ldquo;category&rdquo;', '', '', 1, 1605432190),
(279, 'vi', 'modules', 'Thứ tự module: category', '13 -> 6', '', 1, 1605433777),
(280, 'vi', 'modules', 'Cài lại module \"seek\"', '', '', 1, 1605433784),
(281, 'vi', 'modules', 'Sửa module &ldquo;banners&rdquo;', '', '', 1, 1605433812),
(282, 'vi', 'modules', 'Cài lại module \"seek\"', '', '', 1, 1605433930),
(283, 'vi', 'modules', 'Cài lại module \"contact\"', '', '', 1, 1605433986),
(284, 'vi', 'modules', 'Cài lại module \"contact\"', '', '', 1, 1605434025),
(285, 'vi', 'modules', 'Cài lại module \"contact\"', '', '', 1, 1605434092),
(286, 'vi', 'modules', 'Kích hoạt module \"contact\"', 'Có', '', 1, 1605434107),
(287, 'vi', 'modules', 'Cài lại module \"contact\"', '', '', 1, 1605434111),
(288, 'vi', 'modules', 'Kích hoạt module \"contact\"', 'Không', '', 1, 1605434280),
(289, 'vi', 'modules', 'Xóa module \"contact\"', '', '', 1, 1605434291),
(290, 'vi', 'modules', 'Thiết lập module mới contact', '', '', 1, 1605434676),
(291, 'vi', 'modules', 'Kích hoạt module \"users\"', 'Có', '', 1, 1605434813),
(292, 'vi', 'modules', 'Cài lại module \"users\"', '', '', 1, 1605434825),
(293, 'vi', 'modules', 'Xóa module \"contact\"', '', '', 1, 1605434882),
(294, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605495015),
(295, 'vi', 'login', '[truongdz96] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1605500222),
(296, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605521639),
(297, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605576506),
(298, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605576930),
(299, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605577172),
(300, 'vi', 'login', '[truongdz96] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1605580554),
(301, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605587971),
(302, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605599907),
(303, 'vi', 'modules', 'Thiết lập module mới order', '', '', 1, 1605604569),
(304, 'vi', 'modules', 'Sửa module &ldquo;order&rdquo;', '', '', 1, 1605604584),
(305, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605621624),
(306, 'vi', 'modules', 'Thiết lập module mới detail', '', '', 1, 1605622124),
(307, 'vi', 'modules', 'Sửa module &ldquo;detail&rdquo;', '', '', 1, 1605622132),
(308, 'vi', 'modules', 'Thứ tự module: users', '14 -> 7', '', 1, 1605624074),
(309, 'vi', 'modules', 'Thứ tự module: order', '14 -> 8', '', 1, 1605624076),
(310, 'vi', 'modules', 'Thứ tự module: detail', '14 -> 9', '', 1, 1605624078),
(311, 'vi', 'modules', 'Thiết lập module mới contact', '', '', 1, 1605624113),
(312, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605663127),
(313, 'vi', 'themes', 'Thiết lập layout theme: \"default\"', '', '', 1, 1605663228),
(314, 'vi', 'themes', 'Thiết lập layout theme: \"default\"', '', '', 1, 1605663246),
(315, 'vi', 'themes', 'Thiết lập layout theme: \"default\"', '', '', 1, 1605663279),
(316, 'vi', 'login', '[truongdz96] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1605665078),
(317, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605667382),
(318, 'vi', 'login', '[truongdz96] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1605670012),
(319, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605670043),
(320, 'vi', 'login', '[truongdz96] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1605671951),
(321, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:::1', '', 0, 1605672271),
(322, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1605673296),
(323, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605673312),
(324, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1605673391),
(325, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1605686103),
(326, 'vi', 'themes', 'Kích hoạt theme: \"BaoDanTri\"', '', '', 1, 1605686131),
(327, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1605836079),
(328, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605838944),
(329, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1605839442),
(330, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1605861539),
(331, 'vi', 'login', '[truongdz96] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 0, 1605864040),
(332, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1605864188),
(333, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1605865042),
(334, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1605865353),
(335, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1605889741),
(336, 'vi', 'login', '[truongdz96] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1605922423);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_notification`
--

CREATE TABLE `nv4_notification` (
  `id` int(11) UNSIGNED NOT NULL,
  `admin_view_allowed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Cấp quản trị được xem: 0,1,2',
  `logic_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: Cấp trên xem được cấp dưới, 1: chỉ cấp hoặc người được chỉ định',
  `send_to` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Danh sách id người nhận, phân cách bởi dấu phảy',
  `send_from` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `area` tinyint(1) UNSIGNED NOT NULL,
  `language` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL,
  `view` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_plugin`
--

CREATE TABLE `nv4_plugin` (
  `pid` tinyint(4) NOT NULL,
  `plugin_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_plugin`
--

INSERT INTO `nv4_plugin` (`pid`, `plugin_file`, `plugin_area`, `weight`) VALUES
(1, 'qrcode.php', 1, 1),
(2, 'cdn_js_css_image.php', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_sessions`
--

CREATE TABLE `nv4_sessions` (
  `session_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup_extensions`
--

CREATE TABLE `nv4_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT 0,
  `is_virtual` tinyint(1) NOT NULL DEFAULT 0,
  `basename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_prefix` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT 0,
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup_language`
--

CREATE TABLE `nv4_setup_language` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT 0,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_setup_language`
--

INSERT INTO `nv4_setup_language` (`lang`, `setup`, `weight`) VALUES
('vi', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_block`
--

CREATE TABLE `nv4_shops_block` (
  `bid` int(11) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_block_cat`
--

CREATE TABLE `nv4_shops_block_cat` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier`
--

CREATE TABLE `nv4_shops_carrier` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config`
--

CREATE TABLE `nv4_shops_carrier_config` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config_items`
--

CREATE TABLE `nv4_shops_carrier_config_items` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `cid` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) UNSIGNED NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config_location`
--

CREATE TABLE `nv4_shops_carrier_config_location` (
  `cid` tinyint(3) UNSIGNED NOT NULL,
  `iid` smallint(4) UNSIGNED NOT NULL,
  `lid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config_weight`
--

CREATE TABLE `nv4_shops_carrier_config_weight` (
  `iid` smallint(4) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  `weight_unit` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_price` float NOT NULL,
  `carrier_price_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_catalogs`
--

CREATE TABLE `nv4_shops_catalogs` (
  `catid` mediumint(8) UNSIGNED NOT NULL,
  `parentid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `sort` mediumint(8) NOT NULL DEFAULT 0,
  `lev` smallint(4) NOT NULL DEFAULT 0,
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` int(11) NOT NULL DEFAULT 0,
  `subcatid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT 3,
  `newday` tinyint(4) NOT NULL DEFAULT 3,
  `typeprice` tinyint(4) NOT NULL DEFAULT 2,
  `form` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewdescriptionhtml` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `admins` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `groups_view` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cat_allow_point` tinyint(1) NOT NULL DEFAULT 0,
  `cat_number_point` tinyint(4) NOT NULL DEFAULT 0,
  `cat_number_product` tinyint(4) NOT NULL DEFAULT 0,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_title_custom` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_descriptionhtml` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_tag_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_coupons`
--

CREATE TABLE `nv4_shops_coupons` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'p',
  `discount` float NOT NULL DEFAULT 0,
  `total_amount` float NOT NULL DEFAULT 0,
  `date_start` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date_end` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `uses_per_coupon` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `uses_per_coupon_count` int(11) NOT NULL DEFAULT 0,
  `date_added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_coupons_history`
--

CREATE TABLE `nv4_shops_coupons_history` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `date_added` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_coupons_product`
--

CREATE TABLE `nv4_shops_coupons_product` (
  `cid` int(11) UNSIGNED NOT NULL,
  `pid` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_discounts`
--

CREATE TABLE `nv4_shops_discounts` (
  `did` smallint(6) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(6) NOT NULL DEFAULT 0,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `begin_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `end_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_field`
--

CREATE TABLE `nv4_shops_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listtemplate` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tab` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT 0,
  `max_length` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `class` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_field_value_vi`
--

CREATE TABLE `nv4_shops_field_value_vi` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `rows_id` int(11) UNSIGNED NOT NULL,
  `field_id` mediumint(8) NOT NULL,
  `field_value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_files`
--

CREATE TABLE `nv4_shops_files` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `path` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesize` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `download_groups` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `status` tinyint(1) UNSIGNED DEFAULT 1,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_files_rows`
--

CREATE TABLE `nv4_shops_files_rows` (
  `id_rows` int(11) UNSIGNED NOT NULL,
  `id_files` mediumint(8) UNSIGNED NOT NULL,
  `download_hits` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group`
--

CREATE TABLE `nv4_shops_group` (
  `groupid` mediumint(8) UNSIGNED NOT NULL,
  `parentid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `sort` mediumint(8) NOT NULL DEFAULT 0,
  `lev` smallint(4) NOT NULL DEFAULT 0,
  `viewgroup` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubgroup` int(11) NOT NULL DEFAULT 0,
  `subgroupid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `indetail` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `numpro` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `in_order` tinyint(2) NOT NULL DEFAULT 0,
  `is_require` tinyint(1) NOT NULL DEFAULT 0,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group_cateid`
--

CREATE TABLE `nv4_shops_group_cateid` (
  `groupid` mediumint(8) UNSIGNED NOT NULL,
  `cateid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group_items`
--

CREATE TABLE `nv4_shops_group_items` (
  `pro_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group_quantity`
--

CREATE TABLE `nv4_shops_group_quantity` (
  `pro_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `listgroup` varchar(247) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_location`
--

CREATE TABLE `nv4_shops_location` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `parentid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `sort` mediumint(8) NOT NULL DEFAULT 0,
  `lev` smallint(4) NOT NULL DEFAULT 0,
  `numsub` int(11) NOT NULL DEFAULT 0,
  `subid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_money_vi`
--

CREATE TABLE `nv4_shops_money_vi` (
  `id` mediumint(11) NOT NULL,
  `code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exchange` float NOT NULL DEFAULT 0,
  `round` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_format` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',||.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_money_vi`
--

INSERT INTO `nv4_shops_money_vi` (`id`, `code`, `currency`, `symbol`, `exchange`, `round`, `number_format`) VALUES
(840, 'USD', 'US Dollar', '$', 21000, '0.01', ',||.'),
(704, 'VND', 'Vietnam Dong', 'đ', 1, '100', ',||.');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders`
--

CREATE TABLE `nv4_shops_orders` (
  `order_id` int(11) UNSIGNED NOT NULL,
  `order_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `order_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `shop_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `who_is` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `unit_total` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_total` double UNSIGNED NOT NULL DEFAULT 0,
  `order_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `postip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_view` tinyint(2) NOT NULL DEFAULT 0,
  `transaction_status` tinyint(4) NOT NULL,
  `transaction_id` int(11) NOT NULL DEFAULT 0,
  `transaction_count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders_id`
--

CREATE TABLE `nv4_shops_orders_id` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `listgroupid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `proid` mediumint(9) NOT NULL,
  `num` mediumint(9) NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `discount_id` smallint(6) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders_id_group`
--

CREATE TABLE `nv4_shops_orders_id_group` (
  `order_i` int(11) NOT NULL,
  `group_id` mediumint(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders_shipping`
--

CREATE TABLE `nv4_shops_orders_shipping` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `order_id` int(11) UNSIGNED NOT NULL,
  `ship_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_location_id` mediumint(8) UNSIGNED NOT NULL,
  `ship_address_extend` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_shops_id` tinyint(3) UNSIGNED NOT NULL,
  `ship_carrier_id` tinyint(3) UNSIGNED NOT NULL,
  `weight` float NOT NULL DEFAULT 0,
  `weight_unit` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ship_price` float NOT NULL DEFAULT 0,
  `ship_price_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_payment`
--

CREATE TABLE `nv4_shops_payment` (
  `payment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentname` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL DEFAULT 0,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images_button` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_point`
--

CREATE TABLE `nv4_shops_point` (
  `userid` int(11) NOT NULL DEFAULT 0,
  `point_total` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_point_history`
--

CREATE TABLE `nv4_shops_point_history` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL,
  `point` int(11) NOT NULL DEFAULT 0,
  `time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_point_queue`
--

CREATE TABLE `nv4_shops_point_queue` (
  `order_id` int(11) NOT NULL,
  `point` mediumint(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_review`
--

CREATE TABLE `nv4_shops_review` (
  `review_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL DEFAULT 0,
  `sender` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(1) NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_rows`
--

CREATE TABLE `nv4_shops_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `listcatid` int(11) NOT NULL DEFAULT 0,
  `user_id` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `product_code` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `product_number` int(11) NOT NULL DEFAULT 0,
  `product_price` float NOT NULL DEFAULT 0,
  `price_config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_unit` smallint(4) NOT NULL,
  `product_weight` float NOT NULL DEFAULT 0,
  `weight_unit` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `discount_id` smallint(6) NOT NULL DEFAULT 0,
  `homeimgfile` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `homeimgalt` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otherimage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgposition` tinyint(1) NOT NULL DEFAULT 1,
  `copyright` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gift_from` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `gift_to` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ratingdetail` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `allowed_send` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_print` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_save` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitslm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `num_sell` mediumint(8) NOT NULL DEFAULT 0,
  `showprice` tinyint(2) NOT NULL DEFAULT 0,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_gift_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_tag_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_tag_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_shops`
--

CREATE TABLE `nv4_shops_shops` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_shops_carrier`
--

CREATE TABLE `nv4_shops_shops_carrier` (
  `shops_id` tinyint(3) UNSIGNED NOT NULL,
  `carrier_id` tinyint(3) UNSIGNED NOT NULL,
  `config_id` tinyint(3) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_tabs`
--

CREATE TABLE `nv4_shops_tabs` (
  `id` int(3) UNSIGNED NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_tags_id_vi`
--

CREATE TABLE `nv4_shops_tags_id_vi` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_tags_vi`
--

CREATE TABLE `nv4_shops_tags_vi` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numpro` mediumint(8) NOT NULL DEFAULT 0,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_template`
--

CREATE TABLE `nv4_shops_template` (
  `id` mediumint(8) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_transaction`
--

CREATE TABLE `nv4_shops_transaction` (
  `transaction_id` int(11) NOT NULL,
  `transaction_time` int(11) NOT NULL DEFAULT 0,
  `transaction_status` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL DEFAULT 0,
  `payment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_id` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_time` int(11) NOT NULL DEFAULT 0,
  `payment_amount` float NOT NULL DEFAULT 0,
  `payment_data` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_units`
--

CREATE TABLE `nv4_shops_units` (
  `id` int(11) NOT NULL,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_note` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_warehouse`
--

CREATE TABLE `nv4_shops_warehouse` (
  `wid` int(11) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_warehouse_logs`
--

CREATE TABLE `nv4_shops_warehouse_logs` (
  `logid` int(11) UNSIGNED NOT NULL,
  `wid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pro_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `price` float NOT NULL DEFAULT 0,
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_warehouse_logs_group`
--

CREATE TABLE `nv4_shops_warehouse_logs_group` (
  `id` int(11) UNSIGNED NOT NULL,
  `logid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `listgroup` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `price` float NOT NULL DEFAULT 0,
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_weight_vi`
--

CREATE TABLE `nv4_shops_weight_vi` (
  `id` tinyint(2) UNSIGNED NOT NULL,
  `code` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange` float NOT NULL DEFAULT 0,
  `round` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_weight_vi`
--

INSERT INTO `nv4_shops_weight_vi` (`id`, `code`, `title`, `exchange`, `round`) VALUES
(1, 'g', 'Gram', 1, '0.1'),
(2, 'kg', 'Kilogam', 1000, '0.1');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_wishlist`
--

CREATE TABLE `nv4_shops_wishlist` (
  `wid` smallint(6) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `listid` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_upload_dir`
--

CREATE TABLE `nv4_upload_dir` (
  `did` mediumint(8) NOT NULL,
  `dirname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT 0,
  `thumb_type` tinyint(4) NOT NULL DEFAULT 0,
  `thumb_width` smallint(6) NOT NULL DEFAULT 0,
  `thumb_height` smallint(6) NOT NULL DEFAULT 0,
  `thumb_quality` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_upload_dir`
--

INSERT INTO `nv4_upload_dir` (`did`, `dirname`, `time`, `thumb_type`, `thumb_width`, `thumb_height`, `thumb_quality`) VALUES
(0, '', 0, 3, 100, 150, 90),
(1, 'uploads', 1604109204, 0, 0, 0, 0),
(25, 'uploads/category', 0, 0, 0, 0, 0),
(3, 'uploads/banners', 0, 0, 0, 0, 0),
(4, 'uploads/banners/files', 0, 0, 0, 0, 0),
(5, 'uploads/comment', 0, 0, 0, 0, 0),
(27, 'uploads/order', 0, 0, 0, 0, 0),
(7, 'uploads/freecontent', 0, 0, 0, 0, 0),
(8, 'uploads/menu', 0, 0, 0, 0, 0),
(9, 'uploads/news', 0, 0, 0, 0, 0),
(10, 'uploads/news/source', 0, 0, 0, 0, 0),
(11, 'uploads/news/temp_pic', 0, 0, 0, 0, 0),
(12, 'uploads/news/topics', 0, 0, 0, 0, 0),
(13, 'uploads/page', 1605003206, 0, 0, 0, 0),
(28, 'uploads/detail', 0, 0, 0, 0, 0),
(15, 'uploads/users', 0, 0, 0, 0, 0),
(16, 'uploads/users/groups', 0, 0, 0, 0, 0),
(17, 'uploads/shops/temp_pic', 0, 0, 0, 0, 0),
(18, 'uploads/shops/2020_10', 0, 0, 0, 0, 0),
(19, 'uploads/shops/files', 0, 0, 0, 0, 0),
(29, 'uploads/contact', 0, 0, 0, 0, 0),
(23, 'uploads/news/2020_11', 1605174284, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_upload_file`
--

CREATE TABLE `nv4_upload_file` (
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT 0,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT 0,
  `srcheight` int(11) NOT NULL DEFAULT 0,
  `sizes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `mtime` int(11) NOT NULL DEFAULT 0,
  `did` int(11) NOT NULL DEFAULT 0,
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_upload_file`
--

INSERT INTO `nv4_upload_file` (`name`, `ext`, `type`, `filesize`, `src`, `srcwidth`, `srcheight`, `sizes`, `userid`, `mtime`, `did`, `title`, `alt`) VALUES
('logo_dantri.png', 'png', 'image', 3232, 'assets/logo_dantri.png', 80, 24, '300|90', 1, 1605147180, 1, 'logo_dantri.png', 'logo dantri'),
('banner.png', 'png', 'image', 144, 'assets/banner.png', 80, 80, '225|225', 1, 1605147969, 1, 'banner.png', 'banner'),
('cach-lam-c...jpg', 'jpg', 'image', 75547, 'assets/news/2020_11/cach-lam-chuong-cho.jpg', 80, 80, '600|600', 1, 1605174335, 23, 'cach-lam-chuong-cho.jpg', 'Cách làm chuồng chó'),
('dantri_1.jpeg', 'jpeg', 'image', 205633, 'assets/news/2020_11/dantri_1.jpeg', 80, 54, '1020|680', 1, 1605174614, 23, 'dantri_1.jpeg', 'dantri 1'),
('1-16050916...jpg', 'jpg', 'image', 134087, 'assets/news/2020_11/1-1605091610535.jpg', 80, 46, '640|365', 1, 1605177291, 23, '1-1605091610535.jpg', '1 1605091610535');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users`
--

CREATE TABLE `nv4_users` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regdate` int(11) NOT NULL DEFAULT 0,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `view_mail` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `remember` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `in_groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `active2step` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `secretkey` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checknum` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_update` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Thời điểm cập nhật thông tin lần cuối',
  `idsite` int(11) NOT NULL DEFAULT 0,
  `safemode` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `safekey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email_verification_time` int(11) NOT NULL DEFAULT -1 COMMENT '-3: Tài khoản sys, -2: Admin kích hoạt, -1 không cần kích hoạt, 0: Chưa xác minh, > 0 thời gian xác minh',
  `active_obj` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SYSTEM' COMMENT 'SYSTEM, EMAIL, OAUTH:xxxx, quản trị kích hoạt thì lưu userid'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users`
--

INSERT INTO `nv4_users` (`userid`, `group_id`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `active2step`, `secretkey`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`, `last_update`, `idsite`, `safemode`, `safekey`, `email_verification_time`, `active_obj`) VALUES
(1, 1, 'truongdz96', 'bd9ecbde7e0df4bd53e7e49ca786cde7', '{SSHA512}ZvHofMz1Ei3u51b+JlpnjtTVeFaWMOZxOnjAlVlNBEpllltdkKPvCHdq5T0/l+/CpPMatTGTnhjfgzbWaLsrZmYwNGE=', 'hoangtruongttat96@gmail.com', 'truongdz96', '', '', '', 0, '', 1603626386, 'ngày sinh của bạn?', '11051996', '', 0, 1, '1', 1, 0, '', '', 1603626386, '', '', '', 0, 0, 0, '', -3, 'SYSTEM');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_backupcodes`
--

CREATE TABLE `nv4_users_backupcodes` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_used` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `time_used` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `time_creat` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_config`
--

CREATE TABLE `nv4_users_config` (
  `config` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_config`
--

INSERT INTO `nv4_users_config` (`config`, `content`, `edit_time`) VALUES
('access_admin', 'a:8:{s:15:\"access_viewlist\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_addus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:\"access_waiting\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:17:\"access_editcensor\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_editus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_delus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_passus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_groups\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}', 1352873462),
('password_simple', '000000|1234|2000|12345|111111|123123|123456|11223344|654321|696969|1234567|12345678|87654321|123456789|23456789|1234567890|66666666|68686868|66668888|88888888|99999999|999999999|1234569|12345679|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|nuke123|nuke123@|nuke@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|iloveyou|jennifer|jordan|letmein|macromedia|master|michael|monkey|mustang|password|photoshop|pussy|qwerty|shadow|superman|hoilamgi|khongbiet|khongco|khongcopass', 1603626132),
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1603626132),
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1603626132),
('avatar_width', '80', 1603626132),
('avatar_height', '80', 1603626132),
('active_group_newusers', '0', 1603626132),
('active_editinfo_censor', '0', 1603626132),
('active_user_logs', '1', 1603626132),
('min_old_user', '16', 1603626132),
('register_active_time', '86400', 1603626132),
('siteterms_vi', '<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1274757129);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_edit`
--

CREATE TABLE `nv4_users_edit` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `lastedit` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `info_basic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_custom` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_field`
--

CREATE TABLE `nv4_users_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT 0,
  `max_length` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `required` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `show_register` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `user_editable` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `show_profile` tinyint(4) NOT NULL DEFAULT 1,
  `class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_system` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_field`
--

INSERT INTO `nv4_users_field` (`fid`, `field`, `weight`, `field_type`, `field_choices`, `sql_choices`, `match_type`, `match_regex`, `func_callback`, `min_length`, `max_length`, `required`, `show_register`, `user_editable`, `show_profile`, `class`, `language`, `default_value`, `is_system`) VALUES
(1, 'first_name', 1, 'textbox', '', '', 'none', '', '', 0, 100, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:4:\"Tên\";i:1;s:0:\"\";}}', '', 1),
(2, 'last_name', 2, 'textbox', '', '', 'none', '', '', 0, 100, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:20:\"Họ và tên đệm\";i:1;s:0:\"\";}}', '', 1),
(3, 'gender', 3, 'select', 'a:3:{s:1:\"N\";s:0:\"\";s:1:\"M\";s:0:\"\";s:1:\"F\";s:0:\"\";}', '', 'none', '', '', 0, 1, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:12:\"Giới tính\";i:1;s:0:\"\";}}', '2', 1),
(4, 'birthday', 4, 'date', 'a:1:{s:12:\"current_date\";i:0;}', '', 'none', '', '', 0, 0, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Ngày tháng năm sinh\";i:1;s:0:\"\";}}', '0', 1),
(5, 'sig', 5, 'textarea', '', '', 'none', '', '', 0, 1000, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:9:\"Chữ ký\";i:1;s:0:\"\";}}', '', 1),
(6, 'question', 6, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Câu hỏi bảo mật\";i:1;s:0:\"\";}}', '', 1),
(7, 'answer', 7, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Trả lời câu hỏi\";i:1;s:0:\"\";}}', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_groups`
--

CREATE TABLE `nv4_users_groups` (
  `group_id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_type` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `require_2step_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `require_2step_site` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL,
  `idsite` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `numbers` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `siteus` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `config` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_groups`
--

INSERT INTO `nv4_users_groups` (`group_id`, `title`, `email`, `description`, `content`, `group_type`, `group_color`, `group_avatar`, `require_2step_admin`, `require_2step_site`, `is_default`, `add_time`, `exp_time`, `weight`, `act`, `idsite`, `numbers`, `siteus`, `config`) VALUES
(1, 'Super admin', '', 'Super Admin', '', 0, '', '', 0, 0, 0, 1603626132, 0, 1, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(2, 'General admin', '', 'General Admin', '', 0, '', '', 0, 0, 0, 1603626132, 0, 2, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(3, 'Module admin', '', 'Module Admin', '', 0, '', '', 0, 0, 0, 1603626132, 0, 3, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(4, 'Users', '', 'Users', '', 0, '', '', 0, 0, 0, 1603626132, 0, 4, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(7, 'New Users', '', 'New Users', '', 0, '', '', 0, 0, 0, 1603626132, 0, 5, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(5, 'Guest', '', 'Guest', '', 0, '', '', 0, 0, 0, 1603626132, 0, 6, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(6, 'All', '', 'All', '', 0, '', '', 0, 0, 0, 1603626132, 0, 7, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(10, 'NukeViet-Fans', '', 'Nhóm những người hâm mộ hệ thống NukeViet', '', 2, '', '', 0, 0, 1, 1603626132, 0, 8, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(11, 'NukeViet-Admins', '', 'Nhóm những người quản lý website xây dựng bằng hệ thống NukeViet', '', 2, '', '', 0, 0, 0, 1603626132, 0, 9, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(12, 'NukeViet-Programmers', '', 'Nhóm Lập trình viên hệ thống NukeViet', '', 1, '', '', 0, 0, 0, 1603626132, 0, 10, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_groups_users`
--

CREATE TABLE `nv4_users_groups_users` (
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `is_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `approved` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_requested` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Thời gian yêu cầu tham gia',
  `time_approved` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Thời gian duyệt yêu cầu tham gia'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_groups_users`
--

INSERT INTO `nv4_users_groups_users` (`group_id`, `userid`, `is_leader`, `approved`, `data`, `time_requested`, `time_approved`) VALUES
(1, 1, 1, 1, '0', 1603626386, 1603626386);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_info`
--

CREATE TABLE `nv4_users_info` (
  `userid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_info`
--

INSERT INTO `nv4_users_info` (`userid`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_openid`
--

CREATE TABLE `nv4_users_openid` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_question`
--

CREATE TABLE `nv4_users_question` (
  `qid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_question`
--

INSERT INTO `nv4_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_reg`
--

CREATE TABLE `nv4_users_reg` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regdate` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checknum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `openid_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idsite` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_blocks_groups`
--

CREATE TABLE `nv4_vi_blocks_groups` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `theme` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int(11) DEFAULT 0,
  `active` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL DEFAULT 0,
  `config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_blocks_groups`
--

INSERT INTO `nv4_vi_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `act`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(1, 'default', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(2, 'default', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(3, 'default', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(5, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(8, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(10, 'default', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),
(11, 'default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:68:\"/nukeviet4.4.02setup/nukeviet/index.php?language=vi&amp;nv=siteterms\";}'),
(13, 'default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(15, 'default', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(16, 'default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:14:\"company_mapurl\";s:326:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s\";s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(17, 'default', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(19, 'default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:3:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(20, 'default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),
(21, 'default', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),
(22, 'mobile_default', 'menu', 'global.metismenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(23, 'mobile_default', 'users', 'global.user_button.php', 'Sign In', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, ''),
(26, 'mobile_default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 3, 'a:3:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(27, 'mobile_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 4, 'a:3:{s:5:\"level\";s:1:\"L\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(28, 'mobile_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:68:\"/nukeviet4.4.02setup/nukeviet/index.php?language=vi&amp;nv=siteterms\";}'),
(29, 'mobile_default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'primary', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:9:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";i:8;s:9:\"siteterms\";}}'),
(30, 'mobile_default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'primary', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:14:\"company_mapurl\";s:326:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s\";s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(31, 'themtet2018', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516000000013;s:20:\"company_mapcenterlng\";d:105.795475;s:14:\"company_maplat\";d:20.984515999999999;s:14:\"company_maplng\";d:105.79547500000001;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(33, 'themtet2018', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),
(34, 'themtet2018', 'banners', 'global.banners.php', 'global banners', '', 'no_title', '[FIX_BANNER_LEFT]', 0, '1', 1, '6', 1, 1, 'a:1:{s:12:\"idplanbanner\";i:4;}'),
(35, 'themtet2018', 'banners', 'global.banners.php', 'global banners', '', 'no_title', '[FIX_BANNER_RIGHT]', 0, '1', 1, '6', 1, 1, 'a:1:{s:12:\"idplanbanner\";i:5;}'),
(36, 'themtet2018', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),
(38, 'themtet2018', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:25;}'),
(39, 'themtet2018', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(40, 'themtet2018', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(42, 'themtet2018', 'banners', 'global.banners.php', 'global banners', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 4, 'a:1:{s:12:\"idplanbanner\";i:6;}'),
(43, 'themtet2018', 'banners', 'global.banners.php', 'global banners', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 5, 'a:1:{s:12:\"idplanbanner\";i:7;}'),
(44, 'themtet2018', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),
(45, 'themtet2018', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(46, 'themtet2018', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(47, 'themtet2018', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(50, 'themtet2018', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(52, 'themtet2018', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 6, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),
(54, 'themtet2018', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(55, 'themtet2018', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(56, 'themtet2018', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(99, 'DanTri', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:15:\"company_showmap\";i:1;s:14:\"company_mapurl\";s:326:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s\";s:13:\"company_phone\";s:74:\"+84-24-85872007&#91;+842485872007&#93;|+84-904762534&#91;+84904762534&#93;\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(101, 'DanTri', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),
(102, 'DanTri', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),
(105, 'DanTri', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, ''),
(108, 'DanTri', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),
(109, 'DanTri', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(110, 'DanTri', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(111, 'DanTri', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(114, 'DanTri', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 1, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(116, 'DanTri', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[FIX_BANNER_RIGHT]', 0, '1', 1, '6', 1, 1, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),
(117, 'DanTri', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(118, 'DanTri', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:9;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(119, 'DanTri', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(120, 'DanTri', 'news', 'global.block_category.php', 'Thông cáo báo chí', '/nukeviet4.4.02setup/nukeviet/thong-cao-bao-chi/', '', '[RIGHT]', 1605114000, '1', 0, '6', 1, 2, 'a:2:{s:5:\"catid\";i:8;s:12:\"title_length\";i:50;}'),
(122, 'DanTri', 'news', 'global.block_groups.php', 'Tin mới nhất', '/nukeviet4.4.02setup/nukeviet/groups/Tin-moi-nhat/', '', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:7:\"blockid\";i:2;s:6:\"numrow\";i:10;s:12:\"title_length\";i:50;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";}'),
(123, 'BaoDanTri', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:15:\"company_showmap\";i:1;s:14:\"company_mapurl\";s:326:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s\";s:13:\"company_phone\";s:74:\"+84-24-85872007&#91;+842485872007&#93;|+84-904762534&#91;+84904762534&#93;\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(125, 'BaoDanTri', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),
(126, 'BaoDanTri', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),
(129, 'BaoDanTri', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, ''),
(132, 'BaoDanTri', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),
(133, 'BaoDanTri', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(135, 'BaoDanTri', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(138, 'BaoDanTri', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 1, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(140, 'BaoDanTri', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),
(142, 'BaoDanTri', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:5;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:0;s:5:\"width\";i:400;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(143, 'BaoDanTri', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(145, 'BaoDanTri', 'banners', 'global.banners.php', 'Siêu khuyến mãi', 'https://fpt.vn/vi/internet-fpt/bung-no-khuyen-mai-cung-dang-ky-online-duy-nhat-tai-fpt.vn-shop--5633.html', '', '[RIGHT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:\"idplanbanner\";i:5;}'),
(146, 'BaoDanTri', 'news', 'module.block_content.php', 'Tin xem nhiều', '', '', '[RIGHT]', 0, '1', 1, '6', 0, 4, ''),
(147, 'BaoDanTri', 'banners', 'global.banners.php', 'Báo Dân Trí', '/nukeviet4.4.02setup/nukeviet/thong-cao-bao-chi/', '', '[RIGHT]', 0, '1', 1, '6', 1, 5, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(148, 'BaoDanTri', 'news', 'module.block_news.php', 'Tiêu Điểm', '/nukeviet4.4.02setup/nukeviet/thong-cao-bao-chi/', '', '[TOP]', 0, '1', 1, '6', 0, 3, 'a:4:{s:6:\"numrow\";i:20;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";}'),
(149, 'BaoDanTri', 'banners', 'global.banners.php', 'Siêu Sale tháng 11', 'https://fpt.vn/vi/internet-fpt/gioi-thieu-ban-be-su-dung-internet-truyen-hinh-fpt-nhan-qua-laptop-sieu-mong--5555.html', '', '[TOP]', 0, '1', 1, '6', 1, 4, 'a:1:{s:12:\"idplanbanner\";i:6;}'),
(150, 'BaoDanTri', 'banners', 'global.banners.php', 'Samples', '/nukeviet4.4.02setup/nukeviet/thong-cao-bao-chi/', '', '[BOTTOM1]', 0, '1', 1, '6', 1, 1, 'a:1:{s:12:\"idplanbanner\";i:5;}'),
(151, 'BaoDanTri', 'banners', 'global.banners.php', 'Samples', '/nukeviet4.4.02setup/nukeviet/thong-cao-bao-chi/', '', '[BOTTOM1]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:5;}'),
(153, 'BaoDanTri', 'banners', 'global.banners.php', 'Siêu Sale tháng 11', 'https://pages.lazada.vn/wow/gcp/route/lazada/vn/upr_1000345_lazada/channel/vn/upr-router/vn?spm=a2o4n.home.top.dbr2.59976afem1rL5a&hybrid=1&data_prefetch=true&wh_pid=/lazada/channel/vn/dien-tu-dien-gia-dung/dien-tu-chinh-hang-trang-chinh&scm=1003.4.icms-z', '', '[FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:12:\"idplanbanner\";i:7;}'),
(154, 'BaoDanTri', 'page', 'global.html.php', 'global html', '', '', '[BOTTOM1]', 0, '1', 1, '6', 1, 3, 'a:1:{s:11:\"htmlcontent\";s:3:\"bq1\";}');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_blocks_weight`
--

CREATE TABLE `nv4_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT 0,
  `func_id` mediumint(8) NOT NULL DEFAULT 0,
  `weight` mediumint(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_blocks_weight`
--

INSERT INTO `nv4_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(16, 1, 1),
(16, 38, 1),
(16, 39, 1),
(16, 41, 1),
(16, 47, 1),
(16, 48, 1),
(16, 49, 1),
(16, 50, 1),
(16, 51, 1),
(16, 61, 1),
(16, 64, 1),
(16, 4, 1),
(16, 5, 1),
(16, 6, 1),
(16, 7, 1),
(16, 8, 1),
(16, 9, 1),
(16, 10, 1),
(16, 11, 1),
(16, 12, 1),
(16, 52, 1),
(16, 63, 1),
(16, 55, 1),
(16, 56, 1),
(16, 31, 1),
(16, 32, 1),
(16, 33, 1),
(16, 34, 1),
(16, 35, 1),
(16, 36, 1),
(16, 37, 1),
(16, 58, 1),
(16, 59, 1),
(16, 60, 1),
(16, 19, 1),
(16, 62, 1),
(21, 1, 1),
(21, 38, 1),
(21, 39, 1),
(21, 41, 1),
(21, 47, 1),
(21, 48, 1),
(21, 49, 1),
(21, 50, 1),
(21, 51, 1),
(21, 61, 1),
(21, 64, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 10, 1),
(21, 11, 1),
(21, 12, 1),
(21, 52, 1),
(21, 63, 1),
(21, 55, 1),
(21, 56, 1),
(21, 31, 1),
(21, 32, 1),
(21, 33, 1),
(21, 34, 1),
(21, 35, 1),
(21, 36, 1),
(21, 37, 1),
(21, 58, 1),
(21, 59, 1),
(21, 60, 1),
(21, 19, 1),
(21, 62, 1),
(11, 1, 1),
(11, 38, 1),
(11, 39, 1),
(11, 41, 1),
(11, 47, 1),
(11, 48, 1),
(11, 49, 1),
(11, 50, 1),
(11, 51, 1),
(11, 61, 1),
(11, 64, 1),
(11, 4, 1),
(11, 5, 1),
(11, 6, 1),
(11, 7, 1),
(11, 8, 1),
(11, 9, 1),
(11, 10, 1),
(11, 11, 1),
(11, 12, 1),
(11, 52, 1),
(11, 63, 1),
(11, 55, 1),
(11, 56, 1),
(11, 31, 1),
(11, 32, 1),
(11, 33, 1),
(11, 34, 1),
(11, 35, 1),
(11, 36, 1),
(11, 37, 1),
(11, 58, 1),
(11, 59, 1),
(11, 60, 1),
(11, 19, 1),
(11, 62, 1),
(3, 4, 1),
(3, 5, 1),
(3, 6, 1),
(3, 7, 1),
(3, 8, 1),
(3, 9, 1),
(3, 10, 1),
(3, 11, 1),
(3, 12, 1),
(4, 19, 1),
(4, 31, 1),
(4, 32, 1),
(4, 33, 1),
(4, 34, 1),
(4, 35, 1),
(4, 36, 1),
(4, 37, 1),
(5, 1, 1),
(5, 38, 1),
(5, 39, 1),
(5, 41, 1),
(5, 47, 1),
(5, 48, 1),
(5, 49, 1),
(5, 50, 1),
(5, 51, 1),
(5, 61, 1),
(5, 64, 1),
(5, 4, 2),
(5, 5, 2),
(5, 6, 2),
(5, 7, 2),
(5, 8, 2),
(5, 9, 2),
(5, 10, 2),
(5, 11, 2),
(5, 12, 2),
(5, 52, 1),
(5, 63, 1),
(5, 55, 1),
(5, 56, 1),
(5, 31, 2),
(5, 32, 2),
(5, 33, 2),
(5, 34, 2),
(5, 35, 2),
(5, 36, 2),
(5, 37, 2),
(5, 58, 1),
(5, 59, 1),
(5, 60, 1),
(5, 19, 2),
(5, 62, 1),
(20, 1, 1),
(20, 38, 1),
(20, 39, 1),
(20, 41, 1),
(20, 47, 1),
(20, 48, 1),
(20, 49, 1),
(20, 50, 1),
(20, 51, 1),
(20, 61, 1),
(20, 64, 1),
(20, 4, 1),
(20, 5, 1),
(20, 6, 1),
(20, 7, 1),
(20, 8, 1),
(20, 9, 1),
(20, 10, 1),
(20, 11, 1),
(20, 12, 1),
(20, 52, 1),
(20, 63, 1),
(20, 55, 1),
(20, 56, 1),
(20, 31, 1),
(20, 32, 1),
(20, 33, 1),
(20, 34, 1),
(20, 35, 1),
(20, 36, 1),
(20, 37, 1),
(20, 58, 1),
(20, 59, 1),
(20, 60, 1),
(20, 19, 1),
(20, 62, 1),
(17, 1, 1),
(17, 38, 1),
(17, 39, 1),
(17, 41, 1),
(17, 47, 1),
(17, 48, 1),
(17, 49, 1),
(17, 50, 1),
(17, 51, 1),
(17, 61, 1),
(17, 64, 1),
(17, 4, 1),
(17, 5, 1),
(17, 6, 1),
(17, 7, 1),
(17, 8, 1),
(17, 9, 1),
(17, 10, 1),
(17, 11, 1),
(17, 12, 1),
(17, 52, 1),
(17, 63, 1),
(17, 55, 1),
(17, 56, 1),
(17, 31, 1),
(17, 32, 1),
(17, 33, 1),
(17, 34, 1),
(17, 35, 1),
(17, 36, 1),
(17, 37, 1),
(17, 58, 1),
(17, 59, 1),
(17, 60, 1),
(17, 19, 1),
(17, 62, 1),
(15, 1, 1),
(15, 38, 1),
(15, 39, 1),
(15, 41, 1),
(15, 47, 1),
(15, 48, 1),
(15, 49, 1),
(15, 50, 1),
(15, 51, 1),
(15, 61, 1),
(15, 64, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 11, 1),
(15, 12, 1),
(15, 52, 1),
(15, 63, 1),
(15, 55, 1),
(15, 56, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 34, 1),
(15, 35, 1),
(15, 36, 1),
(15, 37, 1),
(15, 58, 1),
(15, 59, 1),
(15, 60, 1),
(15, 19, 1),
(15, 62, 1),
(13, 1, 1),
(13, 38, 1),
(13, 39, 1),
(13, 41, 1),
(13, 47, 1),
(13, 48, 1),
(13, 49, 1),
(13, 50, 1),
(13, 51, 1),
(13, 61, 1),
(13, 64, 1),
(13, 4, 1),
(13, 5, 1),
(13, 6, 1),
(13, 7, 1),
(13, 8, 1),
(13, 9, 1),
(13, 10, 1),
(13, 11, 1),
(13, 12, 1),
(13, 52, 1),
(13, 63, 1),
(13, 55, 1),
(13, 56, 1),
(13, 31, 1),
(13, 32, 1),
(13, 33, 1),
(13, 34, 1),
(13, 35, 1),
(13, 36, 1),
(13, 37, 1),
(13, 58, 1),
(13, 59, 1),
(13, 60, 1),
(13, 19, 1),
(13, 62, 1),
(54, 119, 1),
(54, 116, 1),
(54, 117, 1),
(40, 119, 2),
(40, 116, 2),
(40, 117, 2),
(50, 119, 1),
(50, 116, 1),
(50, 117, 1),
(47, 119, 1),
(47, 116, 1),
(47, 117, 1),
(46, 119, 1),
(46, 116, 1),
(46, 117, 1),
(45, 119, 1),
(8, 1, 2),
(8, 38, 2),
(8, 39, 2),
(8, 41, 2),
(8, 47, 2),
(8, 48, 2),
(8, 49, 2),
(8, 50, 2),
(8, 51, 2),
(8, 61, 2),
(8, 64, 2),
(8, 4, 1),
(8, 5, 2),
(8, 6, 2),
(8, 7, 2),
(8, 8, 2),
(8, 9, 2),
(8, 10, 2),
(8, 11, 2),
(8, 12, 2),
(8, 52, 2),
(8, 63, 2),
(8, 55, 2),
(8, 56, 2),
(8, 31, 2),
(8, 32, 2),
(8, 33, 2),
(8, 34, 2),
(8, 35, 2),
(8, 36, 2),
(8, 37, 2),
(8, 58, 2),
(8, 59, 2),
(8, 60, 2),
(8, 19, 2),
(8, 62, 2),
(10, 1, 4),
(10, 38, 4),
(10, 39, 4),
(10, 41, 4),
(10, 47, 4),
(10, 48, 4),
(10, 49, 4),
(10, 50, 4),
(10, 51, 4),
(10, 61, 4),
(10, 64, 4),
(10, 4, 4),
(10, 5, 4),
(10, 6, 4),
(10, 7, 4),
(10, 8, 4),
(10, 9, 4),
(10, 10, 4),
(10, 11, 4),
(10, 12, 4),
(10, 52, 4),
(10, 63, 4),
(10, 55, 4),
(10, 56, 4),
(10, 31, 4),
(10, 32, 4),
(10, 33, 4),
(10, 34, 4),
(10, 35, 4),
(10, 36, 4),
(10, 37, 4),
(10, 58, 4),
(10, 59, 4),
(10, 60, 4),
(10, 19, 4),
(10, 62, 4),
(19, 1, 1),
(19, 38, 1),
(19, 39, 1),
(19, 41, 1),
(19, 47, 1),
(19, 48, 1),
(19, 49, 1),
(19, 50, 1),
(19, 51, 1),
(19, 61, 1),
(19, 64, 1),
(19, 4, 1),
(19, 5, 1),
(19, 6, 1),
(19, 7, 1),
(19, 8, 1),
(19, 9, 1),
(19, 10, 1),
(19, 11, 1),
(19, 12, 1),
(19, 52, 1),
(19, 63, 1),
(19, 55, 1),
(19, 56, 1),
(19, 31, 1),
(19, 32, 1),
(19, 33, 1),
(19, 34, 1),
(19, 35, 1),
(19, 36, 1),
(19, 37, 1),
(19, 58, 1),
(19, 59, 1),
(19, 60, 1),
(19, 19, 1),
(19, 62, 1),
(1, 4, 1),
(2, 4, 2),
(30, 1, 1),
(30, 38, 1),
(30, 39, 1),
(30, 41, 1),
(30, 47, 1),
(30, 48, 1),
(30, 49, 1),
(30, 50, 1),
(30, 51, 1),
(30, 61, 1),
(30, 64, 1),
(30, 4, 1),
(30, 5, 1),
(30, 6, 1),
(30, 7, 1),
(30, 8, 1),
(30, 9, 1),
(30, 10, 1),
(30, 11, 1),
(30, 12, 1),
(30, 52, 1),
(30, 63, 1),
(30, 55, 1),
(30, 56, 1),
(30, 31, 1),
(30, 32, 1),
(30, 33, 1),
(30, 34, 1),
(30, 35, 1),
(30, 36, 1),
(30, 37, 1),
(30, 58, 1),
(30, 59, 1),
(30, 60, 1),
(30, 19, 1),
(30, 62, 1),
(28, 1, 1),
(28, 38, 1),
(28, 39, 1),
(28, 41, 1),
(28, 47, 1),
(28, 48, 1),
(28, 49, 1),
(28, 50, 1),
(28, 51, 1),
(28, 61, 1),
(28, 64, 1),
(28, 4, 1),
(28, 5, 1),
(28, 6, 1),
(28, 7, 1),
(28, 8, 1),
(28, 9, 1),
(28, 10, 1),
(28, 11, 1),
(28, 12, 1),
(28, 52, 1),
(28, 63, 1),
(28, 55, 1),
(28, 56, 1),
(28, 31, 1),
(28, 32, 1),
(28, 33, 1),
(28, 34, 1),
(28, 35, 1),
(28, 36, 1),
(28, 37, 1),
(28, 58, 1),
(28, 59, 1),
(28, 60, 1),
(28, 19, 1),
(28, 62, 1),
(29, 1, 1),
(29, 38, 1),
(29, 39, 1),
(29, 41, 1),
(29, 47, 1),
(29, 48, 1),
(29, 49, 1),
(29, 50, 1),
(29, 51, 1),
(29, 61, 1),
(29, 64, 1),
(29, 4, 1),
(29, 5, 1),
(29, 6, 1),
(29, 7, 1),
(29, 8, 1),
(29, 9, 1),
(29, 10, 1),
(29, 11, 1),
(29, 12, 1),
(29, 52, 1),
(29, 63, 1),
(29, 55, 1),
(29, 56, 1),
(29, 31, 1),
(29, 32, 1),
(29, 33, 1),
(29, 34, 1),
(29, 35, 1),
(29, 36, 1),
(29, 37, 1),
(29, 58, 1),
(29, 59, 1),
(29, 60, 1),
(29, 19, 1),
(29, 62, 1),
(22, 1, 1),
(22, 38, 1),
(22, 39, 1),
(22, 41, 1),
(22, 47, 1),
(22, 48, 1),
(22, 49, 1),
(22, 50, 1),
(22, 51, 1),
(22, 61, 1),
(22, 64, 1),
(22, 4, 1),
(22, 5, 1),
(22, 6, 1),
(22, 7, 1),
(22, 8, 1),
(22, 9, 1),
(22, 10, 1),
(22, 11, 1),
(22, 12, 1),
(22, 52, 1),
(22, 63, 1),
(22, 55, 1),
(22, 56, 1),
(22, 31, 1),
(22, 32, 1),
(22, 33, 1),
(22, 34, 1),
(22, 35, 1),
(22, 36, 1),
(22, 37, 1),
(22, 58, 1),
(22, 59, 1),
(22, 60, 1),
(22, 19, 1),
(22, 62, 1),
(23, 1, 2),
(23, 38, 2),
(23, 39, 2),
(23, 41, 2),
(23, 47, 2),
(23, 48, 2),
(23, 49, 2),
(23, 50, 2),
(23, 51, 2),
(23, 61, 2),
(23, 64, 2),
(23, 4, 2),
(23, 5, 2),
(23, 6, 2),
(23, 7, 2),
(23, 8, 2),
(23, 9, 2),
(23, 10, 2),
(23, 11, 2),
(23, 12, 2),
(23, 52, 2),
(23, 63, 2),
(23, 55, 2),
(23, 56, 2),
(23, 31, 2),
(23, 32, 2),
(23, 33, 2),
(23, 34, 2),
(23, 35, 2),
(23, 36, 2),
(23, 37, 2),
(23, 58, 2),
(23, 59, 2),
(23, 60, 2),
(23, 19, 2),
(23, 62, 2),
(26, 1, 3),
(26, 38, 3),
(26, 39, 3),
(26, 41, 3),
(26, 47, 3),
(26, 48, 3),
(26, 49, 3),
(26, 50, 3),
(26, 51, 3),
(26, 61, 3),
(26, 64, 3),
(26, 4, 3),
(26, 5, 3),
(26, 6, 3),
(26, 7, 3),
(26, 8, 3),
(26, 9, 3),
(26, 10, 3),
(26, 11, 3),
(26, 12, 3),
(26, 52, 3),
(26, 63, 3),
(26, 55, 3),
(26, 56, 3),
(26, 31, 3),
(26, 32, 3),
(26, 33, 3),
(26, 34, 3),
(26, 35, 3),
(26, 36, 3),
(26, 37, 3),
(26, 58, 3),
(26, 59, 3),
(26, 60, 3),
(26, 19, 3),
(26, 62, 3),
(27, 1, 4),
(27, 38, 4),
(27, 39, 4),
(27, 41, 4),
(27, 47, 4),
(27, 48, 4),
(27, 49, 4),
(27, 50, 4),
(27, 51, 4),
(27, 61, 4),
(27, 64, 4),
(27, 4, 4),
(27, 5, 4),
(27, 6, 4),
(27, 7, 4),
(27, 8, 4),
(27, 9, 4),
(27, 10, 4),
(27, 11, 4),
(27, 12, 4),
(27, 52, 4),
(27, 63, 4),
(27, 55, 4),
(27, 56, 4),
(27, 31, 4),
(27, 32, 4),
(27, 33, 4),
(27, 34, 4),
(27, 35, 4),
(27, 36, 4),
(27, 37, 4),
(27, 58, 4),
(27, 59, 4),
(27, 60, 4),
(27, 19, 4),
(27, 62, 4),
(31, 1, 1),
(31, 38, 1),
(31, 39, 1),
(31, 41, 1),
(31, 47, 1),
(31, 48, 1),
(31, 49, 1),
(31, 50, 1),
(31, 51, 1),
(31, 61, 1),
(31, 64, 1),
(31, 4, 1),
(31, 5, 1),
(31, 6, 1),
(31, 7, 1),
(31, 8, 1),
(31, 9, 1),
(31, 10, 1),
(31, 11, 1),
(31, 12, 1),
(31, 52, 1),
(31, 63, 1),
(31, 55, 1),
(31, 56, 1),
(31, 31, 1),
(31, 32, 1),
(31, 33, 1),
(31, 34, 1),
(31, 35, 1),
(31, 36, 1),
(31, 37, 1),
(31, 58, 1),
(31, 59, 1),
(31, 60, 1),
(31, 19, 1),
(31, 62, 1),
(33, 1, 1),
(33, 38, 1),
(33, 39, 1),
(33, 41, 1),
(33, 47, 1),
(33, 48, 1),
(33, 49, 1),
(33, 50, 1),
(33, 51, 1),
(33, 61, 1),
(33, 64, 1),
(33, 4, 1),
(33, 5, 1),
(33, 6, 1),
(33, 7, 1),
(33, 8, 1),
(33, 9, 1),
(33, 10, 1),
(33, 11, 1),
(33, 12, 1),
(33, 52, 1),
(33, 63, 1),
(33, 55, 1),
(33, 56, 1),
(33, 31, 1),
(33, 32, 1),
(33, 33, 1),
(33, 34, 1),
(33, 35, 1),
(33, 36, 1),
(33, 37, 1),
(33, 58, 1),
(33, 59, 1),
(33, 60, 1),
(33, 19, 1),
(33, 62, 1),
(34, 1, 1),
(34, 38, 1),
(34, 39, 1),
(34, 41, 1),
(34, 47, 1),
(34, 48, 1),
(34, 49, 1),
(34, 50, 1),
(34, 51, 1),
(34, 61, 1),
(34, 64, 1),
(34, 4, 1),
(34, 5, 1),
(34, 6, 1),
(34, 7, 1),
(34, 8, 1),
(34, 9, 1),
(34, 10, 1),
(34, 11, 1),
(34, 12, 1),
(34, 52, 1),
(34, 63, 1),
(34, 55, 1),
(34, 56, 1),
(34, 31, 1),
(34, 32, 1),
(34, 33, 1),
(34, 34, 1),
(34, 35, 1),
(34, 36, 1),
(34, 37, 1),
(34, 58, 1),
(34, 59, 1),
(34, 60, 1),
(34, 19, 1),
(34, 62, 1),
(35, 1, 1),
(35, 38, 1),
(35, 39, 1),
(35, 41, 1),
(35, 47, 1),
(35, 48, 1),
(35, 49, 1),
(35, 50, 1),
(35, 51, 1),
(35, 61, 1),
(35, 64, 1),
(35, 4, 1),
(35, 5, 1),
(35, 6, 1),
(35, 7, 1),
(35, 8, 1),
(35, 9, 1),
(35, 10, 1),
(35, 11, 1),
(35, 12, 1),
(35, 52, 1),
(35, 63, 1),
(35, 55, 1),
(35, 56, 1),
(35, 31, 1),
(35, 32, 1),
(35, 33, 1),
(35, 34, 1),
(35, 35, 1),
(35, 36, 1),
(35, 37, 1),
(35, 58, 1),
(35, 59, 1),
(35, 60, 1),
(35, 19, 1),
(35, 62, 1),
(36, 1, 1),
(36, 38, 1),
(36, 39, 1),
(36, 41, 1),
(36, 47, 1),
(36, 48, 1),
(36, 49, 1),
(36, 50, 1),
(36, 51, 1),
(36, 61, 1),
(36, 64, 1),
(36, 4, 1),
(36, 5, 1),
(36, 6, 1),
(36, 7, 1),
(36, 8, 1),
(36, 9, 1),
(36, 10, 1),
(36, 11, 1),
(36, 12, 1),
(36, 52, 1),
(36, 63, 1),
(36, 55, 1),
(36, 56, 1),
(36, 31, 1),
(36, 32, 1),
(36, 33, 1),
(36, 34, 1),
(36, 35, 1),
(36, 36, 1),
(36, 37, 1),
(36, 58, 1),
(36, 59, 1),
(36, 60, 1),
(36, 19, 1),
(36, 62, 1),
(38, 4, 1),
(38, 5, 1),
(38, 6, 1),
(38, 7, 1),
(38, 8, 1),
(38, 9, 1),
(38, 10, 1),
(38, 11, 1),
(38, 12, 1),
(39, 19, 1),
(39, 31, 1),
(39, 32, 1),
(39, 33, 1),
(39, 34, 1),
(39, 35, 1),
(39, 36, 1),
(39, 37, 1),
(40, 1, 4),
(40, 38, 4),
(40, 39, 4),
(40, 41, 4),
(40, 47, 4),
(40, 48, 4),
(40, 49, 4),
(40, 50, 4),
(40, 51, 4),
(40, 61, 4),
(40, 64, 4),
(40, 4, 4),
(40, 5, 4),
(40, 6, 4),
(40, 7, 4),
(40, 8, 4),
(40, 9, 4),
(40, 10, 4),
(40, 11, 4),
(40, 12, 4),
(40, 52, 4),
(40, 63, 4),
(40, 55, 4),
(40, 56, 4),
(40, 31, 4),
(40, 32, 4),
(40, 33, 4),
(40, 34, 4),
(40, 35, 4),
(40, 36, 4),
(40, 37, 4),
(40, 58, 4),
(40, 59, 4),
(40, 60, 4),
(40, 19, 4),
(40, 62, 4),
(42, 1, 2),
(42, 38, 2),
(42, 39, 2),
(42, 41, 2),
(42, 47, 2),
(42, 48, 2),
(42, 49, 2),
(42, 50, 2),
(42, 51, 2),
(42, 61, 2),
(42, 64, 2),
(42, 4, 3),
(42, 5, 3),
(42, 6, 3),
(42, 7, 3),
(42, 8, 3),
(42, 9, 3),
(42, 10, 3),
(42, 11, 3),
(42, 12, 3),
(42, 52, 2),
(42, 63, 2),
(42, 55, 2),
(42, 56, 2),
(42, 31, 3),
(42, 32, 3),
(42, 33, 3),
(42, 34, 3),
(42, 35, 3),
(42, 36, 3),
(42, 37, 3),
(42, 58, 2),
(42, 59, 2),
(42, 60, 2),
(42, 19, 3),
(42, 62, 2),
(43, 1, 3),
(44, 1, 1),
(44, 38, 1),
(44, 39, 1),
(44, 41, 1),
(44, 47, 1),
(44, 48, 1),
(44, 49, 1),
(44, 50, 1),
(44, 51, 1),
(44, 61, 1),
(44, 64, 1),
(44, 4, 1),
(44, 5, 1),
(44, 6, 1),
(44, 7, 1),
(44, 8, 1),
(44, 9, 1),
(44, 10, 1),
(44, 11, 1),
(44, 12, 1),
(44, 52, 1),
(44, 63, 1),
(44, 55, 1),
(44, 56, 1),
(44, 31, 1),
(44, 32, 1),
(44, 33, 1),
(44, 34, 1),
(44, 35, 1),
(44, 36, 1),
(44, 37, 1),
(44, 58, 1),
(44, 59, 1),
(44, 60, 1),
(44, 19, 1),
(44, 62, 1),
(45, 1, 1),
(45, 38, 1),
(45, 39, 1),
(45, 41, 1),
(45, 47, 1),
(45, 48, 1),
(45, 49, 1),
(45, 50, 1),
(45, 51, 1),
(45, 61, 1),
(45, 64, 1),
(45, 4, 1),
(45, 5, 1),
(45, 6, 1),
(45, 7, 1),
(45, 8, 1),
(45, 9, 1),
(45, 10, 1),
(45, 11, 1),
(45, 12, 1),
(45, 52, 1),
(45, 63, 1),
(45, 55, 1),
(45, 56, 1),
(45, 31, 1),
(45, 32, 1),
(45, 33, 1),
(45, 34, 1),
(45, 35, 1),
(45, 36, 1),
(45, 37, 1),
(45, 58, 1),
(45, 59, 1),
(45, 60, 1),
(45, 19, 1),
(45, 62, 1),
(46, 1, 1),
(46, 38, 1),
(46, 39, 1),
(46, 41, 1),
(46, 47, 1),
(46, 48, 1),
(46, 49, 1),
(46, 50, 1),
(46, 51, 1),
(46, 61, 1),
(46, 64, 1),
(46, 4, 1),
(46, 5, 1),
(46, 6, 1),
(46, 7, 1),
(46, 8, 1),
(46, 9, 1),
(46, 10, 1),
(46, 11, 1),
(46, 12, 1),
(46, 52, 1),
(46, 63, 1),
(46, 55, 1),
(46, 56, 1),
(46, 31, 1),
(46, 32, 1),
(46, 33, 1),
(46, 34, 1),
(46, 35, 1),
(46, 36, 1),
(46, 37, 1),
(46, 58, 1),
(46, 59, 1),
(46, 60, 1),
(46, 19, 1),
(46, 62, 1),
(47, 1, 1),
(47, 38, 1),
(47, 39, 1),
(47, 41, 1),
(47, 47, 1),
(47, 48, 1),
(47, 49, 1),
(47, 50, 1),
(47, 51, 1),
(47, 61, 1),
(47, 64, 1),
(47, 4, 1),
(47, 5, 1),
(47, 6, 1),
(47, 7, 1),
(47, 8, 1),
(47, 9, 1),
(47, 10, 1),
(47, 11, 1),
(47, 12, 1),
(47, 52, 1),
(47, 63, 1),
(47, 55, 1),
(47, 56, 1),
(47, 31, 1),
(47, 32, 1),
(47, 33, 1),
(47, 34, 1),
(47, 35, 1),
(47, 36, 1),
(47, 37, 1),
(47, 58, 1),
(47, 59, 1),
(47, 60, 1),
(47, 19, 1),
(47, 62, 1),
(45, 116, 1),
(45, 117, 1),
(44, 119, 1),
(44, 116, 1),
(44, 117, 1),
(52, 119, 2),
(52, 116, 2),
(52, 117, 2),
(42, 119, 1),
(42, 116, 1),
(42, 117, 1),
(36, 119, 1),
(36, 116, 1),
(36, 117, 1),
(35, 119, 1),
(35, 116, 1),
(35, 117, 1),
(34, 119, 1),
(34, 116, 1),
(34, 117, 1),
(33, 119, 1),
(33, 116, 1),
(33, 117, 1),
(31, 119, 1),
(31, 116, 1),
(31, 117, 1),
(27, 119, 4),
(27, 116, 4),
(27, 117, 4),
(26, 119, 3),
(26, 116, 3),
(26, 117, 3),
(23, 119, 2),
(23, 116, 2),
(23, 117, 2),
(50, 1, 2),
(50, 38, 2),
(50, 39, 2),
(50, 41, 2),
(50, 47, 2),
(50, 48, 2),
(50, 49, 2),
(50, 50, 2),
(50, 51, 2),
(50, 61, 2),
(50, 64, 2),
(50, 4, 2),
(50, 5, 2),
(50, 6, 2),
(50, 7, 2),
(50, 8, 2),
(50, 9, 2),
(50, 10, 2),
(50, 11, 2),
(50, 12, 2),
(50, 52, 2),
(50, 63, 2),
(50, 55, 2),
(50, 56, 2),
(50, 31, 2),
(50, 32, 2),
(50, 33, 2),
(50, 34, 2),
(50, 35, 2),
(50, 36, 2),
(50, 37, 2),
(50, 58, 2),
(50, 59, 2),
(50, 60, 2),
(50, 19, 2),
(50, 62, 2),
(52, 1, 4),
(52, 38, 3),
(52, 39, 3),
(52, 41, 3),
(52, 47, 3),
(52, 48, 3),
(52, 49, 3),
(52, 50, 3),
(52, 51, 3),
(52, 61, 3),
(52, 64, 3),
(52, 4, 4),
(52, 5, 4),
(52, 6, 4),
(52, 7, 4),
(52, 8, 4),
(52, 9, 4),
(52, 10, 4),
(52, 11, 4),
(52, 12, 4),
(52, 52, 3),
(52, 63, 3),
(52, 55, 3),
(52, 56, 3),
(52, 31, 4),
(52, 32, 4),
(52, 33, 4),
(52, 34, 4),
(52, 35, 4),
(52, 36, 4),
(52, 37, 4),
(52, 58, 3),
(52, 59, 3),
(52, 60, 3),
(52, 19, 4),
(52, 62, 3),
(54, 1, 1),
(54, 38, 1),
(54, 39, 1),
(54, 41, 1),
(54, 47, 1),
(54, 48, 1),
(54, 49, 1),
(54, 50, 1),
(54, 51, 1),
(54, 61, 1),
(54, 64, 1),
(54, 4, 1),
(54, 5, 1),
(54, 6, 1),
(54, 7, 1),
(54, 8, 1),
(54, 9, 1),
(54, 10, 1),
(54, 11, 1),
(54, 12, 1),
(54, 52, 1),
(54, 63, 1),
(54, 55, 1),
(54, 56, 1),
(54, 31, 1),
(54, 32, 1),
(54, 33, 1),
(54, 34, 1),
(54, 35, 1),
(54, 36, 1),
(54, 37, 1),
(54, 58, 1),
(54, 59, 1),
(54, 60, 1),
(54, 19, 1),
(54, 62, 1),
(55, 4, 1),
(56, 4, 2),
(16, 76, 1),
(16, 92, 1),
(16, 71, 1),
(16, 85, 1),
(16, 66, 1),
(16, 77, 1),
(16, 78, 1),
(16, 69, 1),
(16, 74, 1),
(16, 73, 1),
(16, 86, 1),
(16, 68, 1),
(16, 93, 1),
(16, 91, 1),
(16, 79, 1),
(16, 89, 1),
(16, 72, 1),
(16, 65, 1),
(21, 76, 1),
(21, 92, 1),
(21, 71, 1),
(21, 85, 1),
(21, 66, 1),
(21, 77, 1),
(21, 78, 1),
(21, 69, 1),
(21, 74, 1),
(21, 73, 1),
(21, 86, 1),
(21, 68, 1),
(21, 93, 1),
(21, 91, 1),
(21, 79, 1),
(21, 89, 1),
(21, 72, 1),
(21, 65, 1),
(11, 76, 1),
(11, 92, 1),
(11, 71, 1),
(11, 85, 1),
(11, 66, 1),
(11, 77, 1),
(11, 78, 1),
(11, 69, 1),
(11, 74, 1),
(11, 73, 1),
(11, 86, 1),
(11, 68, 1),
(11, 93, 1),
(11, 91, 1),
(11, 79, 1),
(11, 89, 1),
(11, 72, 1),
(11, 65, 1),
(5, 76, 1),
(5, 92, 1),
(5, 71, 1),
(5, 85, 1),
(5, 66, 1),
(5, 77, 1),
(5, 78, 1),
(5, 69, 1),
(5, 74, 1),
(5, 73, 1),
(5, 86, 1),
(5, 68, 1),
(5, 93, 1),
(5, 91, 1),
(5, 79, 1),
(5, 89, 1),
(5, 72, 1),
(5, 65, 1),
(20, 76, 1),
(20, 92, 1),
(20, 71, 1),
(20, 85, 1),
(20, 66, 1),
(20, 77, 1),
(20, 78, 1),
(20, 69, 1),
(20, 74, 1),
(20, 73, 1),
(20, 86, 1),
(20, 68, 1),
(20, 93, 1),
(20, 91, 1),
(20, 79, 1),
(20, 89, 1),
(20, 72, 1),
(20, 65, 1),
(17, 76, 1),
(17, 92, 1),
(17, 71, 1),
(17, 85, 1),
(17, 66, 1),
(17, 77, 1),
(17, 78, 1),
(17, 69, 1),
(17, 74, 1),
(17, 73, 1),
(17, 86, 1),
(17, 68, 1),
(17, 93, 1),
(17, 91, 1),
(17, 79, 1),
(17, 89, 1),
(17, 72, 1),
(17, 65, 1),
(15, 76, 1),
(15, 92, 1),
(15, 71, 1),
(15, 85, 1),
(15, 66, 1),
(15, 77, 1),
(15, 78, 1),
(15, 69, 1),
(15, 74, 1),
(15, 73, 1),
(15, 86, 1),
(15, 68, 1),
(15, 93, 1),
(15, 91, 1),
(15, 79, 1),
(15, 89, 1),
(15, 72, 1),
(15, 65, 1),
(13, 76, 1),
(13, 92, 1),
(13, 71, 1),
(13, 85, 1),
(13, 66, 1),
(13, 77, 1),
(13, 78, 1),
(13, 69, 1),
(13, 74, 1),
(13, 73, 1),
(13, 86, 1),
(13, 68, 1),
(13, 93, 1),
(13, 91, 1),
(13, 79, 1),
(13, 89, 1),
(13, 72, 1),
(13, 65, 1),
(22, 119, 1),
(22, 116, 1),
(22, 117, 1),
(29, 119, 1),
(29, 116, 1),
(29, 117, 1),
(28, 119, 1),
(28, 116, 1),
(28, 117, 1),
(30, 119, 1),
(30, 116, 1),
(30, 117, 1),
(19, 119, 1),
(19, 116, 1),
(19, 117, 1),
(10, 119, 2),
(10, 116, 2),
(10, 117, 2),
(8, 76, 2),
(8, 92, 2),
(8, 71, 2),
(8, 85, 2),
(8, 66, 2),
(8, 77, 2),
(8, 78, 2),
(8, 69, 2),
(8, 74, 2),
(8, 73, 2),
(8, 86, 2),
(8, 68, 2),
(8, 93, 2),
(8, 91, 2),
(8, 79, 2),
(8, 89, 2),
(8, 72, 2),
(8, 65, 2),
(10, 76, 4),
(10, 92, 4),
(10, 71, 4),
(10, 85, 4),
(10, 66, 4),
(10, 77, 4),
(10, 78, 4),
(10, 69, 4),
(10, 74, 4),
(10, 73, 4),
(10, 86, 4),
(10, 68, 4),
(10, 93, 4),
(10, 91, 4),
(10, 79, 4),
(10, 89, 4),
(10, 72, 4),
(10, 65, 4),
(19, 76, 1),
(19, 92, 1),
(19, 71, 1),
(19, 85, 1),
(19, 66, 1),
(19, 77, 1),
(19, 78, 1),
(19, 69, 1),
(19, 74, 1),
(19, 73, 1),
(19, 86, 1),
(19, 68, 1),
(19, 93, 1),
(19, 91, 1),
(19, 79, 1),
(19, 89, 1),
(19, 72, 1),
(19, 65, 1),
(30, 76, 1),
(30, 92, 1),
(30, 71, 1),
(30, 85, 1),
(30, 66, 1),
(30, 77, 1),
(30, 78, 1),
(30, 69, 1),
(30, 74, 1),
(30, 73, 1),
(30, 86, 1),
(30, 68, 1),
(30, 93, 1),
(30, 91, 1),
(30, 79, 1),
(30, 89, 1),
(30, 72, 1),
(30, 65, 1),
(28, 76, 1),
(28, 92, 1),
(28, 71, 1),
(28, 85, 1),
(28, 66, 1),
(28, 77, 1),
(28, 78, 1),
(28, 69, 1),
(28, 74, 1),
(28, 73, 1),
(28, 86, 1),
(28, 68, 1),
(28, 93, 1),
(28, 91, 1),
(28, 79, 1),
(28, 89, 1),
(28, 72, 1),
(28, 65, 1),
(29, 76, 1),
(29, 92, 1),
(29, 71, 1),
(29, 85, 1),
(29, 66, 1),
(29, 77, 1),
(29, 78, 1),
(29, 69, 1),
(29, 74, 1),
(29, 73, 1),
(29, 86, 1),
(29, 68, 1),
(29, 93, 1),
(29, 91, 1),
(29, 79, 1),
(29, 89, 1),
(29, 72, 1),
(29, 65, 1),
(22, 76, 1),
(22, 92, 1),
(22, 71, 1),
(22, 85, 1),
(22, 66, 1),
(22, 77, 1),
(22, 78, 1),
(22, 69, 1),
(22, 74, 1),
(22, 73, 1),
(22, 86, 1),
(22, 68, 1),
(22, 93, 1),
(22, 91, 1),
(22, 79, 1),
(22, 89, 1),
(22, 72, 1),
(22, 65, 1),
(23, 76, 2),
(23, 92, 2),
(23, 71, 2),
(23, 85, 2),
(23, 66, 2),
(23, 77, 2),
(23, 78, 2),
(23, 69, 2),
(23, 74, 2),
(23, 73, 2),
(23, 86, 2),
(23, 68, 2),
(23, 93, 2),
(23, 91, 2),
(23, 79, 2),
(23, 89, 2),
(23, 72, 2),
(23, 65, 2),
(26, 76, 3),
(26, 92, 3),
(26, 71, 3),
(26, 85, 3),
(26, 66, 3),
(26, 77, 3),
(26, 78, 3),
(26, 69, 3),
(26, 74, 3),
(26, 73, 3),
(26, 86, 3),
(26, 68, 3),
(26, 93, 3),
(26, 91, 3),
(26, 79, 3),
(26, 89, 3),
(26, 72, 3),
(26, 65, 3),
(27, 76, 4),
(27, 92, 4),
(27, 71, 4),
(27, 85, 4),
(27, 66, 4),
(27, 77, 4),
(27, 78, 4),
(27, 69, 4),
(27, 74, 4),
(27, 73, 4),
(27, 86, 4),
(27, 68, 4),
(27, 93, 4),
(27, 91, 4),
(27, 79, 4),
(27, 89, 4),
(27, 72, 4),
(27, 65, 4),
(31, 76, 1),
(31, 92, 1),
(31, 71, 1),
(31, 85, 1),
(31, 66, 1),
(31, 77, 1),
(31, 78, 1),
(31, 69, 1),
(31, 74, 1),
(31, 73, 1),
(31, 86, 1),
(31, 68, 1),
(31, 93, 1),
(31, 91, 1),
(31, 79, 1),
(31, 89, 1),
(31, 72, 1),
(31, 65, 1),
(33, 76, 1),
(33, 92, 1),
(33, 71, 1),
(33, 85, 1),
(33, 66, 1),
(33, 77, 1),
(33, 78, 1),
(33, 69, 1),
(33, 74, 1),
(33, 73, 1),
(33, 86, 1),
(33, 68, 1),
(33, 93, 1),
(33, 91, 1),
(33, 79, 1),
(33, 89, 1),
(33, 72, 1),
(33, 65, 1),
(34, 76, 1),
(34, 92, 1),
(34, 71, 1),
(34, 85, 1),
(34, 66, 1),
(34, 77, 1),
(34, 78, 1),
(34, 69, 1),
(34, 74, 1),
(34, 73, 1),
(34, 86, 1),
(34, 68, 1),
(34, 93, 1),
(34, 91, 1),
(34, 79, 1),
(34, 89, 1),
(34, 72, 1),
(34, 65, 1),
(35, 76, 1),
(35, 92, 1),
(35, 71, 1),
(35, 85, 1),
(35, 66, 1),
(35, 77, 1),
(35, 78, 1),
(35, 69, 1),
(35, 74, 1),
(35, 73, 1),
(35, 86, 1),
(35, 68, 1),
(35, 93, 1),
(35, 91, 1),
(35, 79, 1),
(35, 89, 1),
(35, 72, 1),
(35, 65, 1),
(36, 76, 1),
(36, 92, 1),
(36, 71, 1),
(36, 85, 1),
(36, 66, 1),
(36, 77, 1),
(36, 78, 1),
(36, 69, 1),
(36, 74, 1),
(36, 73, 1),
(36, 86, 1),
(36, 68, 1),
(36, 93, 1),
(36, 91, 1),
(36, 79, 1),
(36, 89, 1),
(36, 72, 1),
(36, 65, 1),
(40, 76, 4),
(40, 92, 4),
(40, 71, 4),
(40, 85, 4),
(40, 66, 4),
(40, 77, 4),
(40, 78, 4),
(40, 69, 4),
(40, 74, 4),
(40, 73, 4),
(40, 86, 4),
(40, 68, 4),
(40, 93, 4),
(40, 91, 4),
(40, 79, 4),
(40, 89, 4),
(40, 72, 4),
(40, 65, 4),
(42, 76, 2),
(42, 92, 2),
(42, 71, 2),
(42, 85, 2),
(42, 66, 2),
(42, 77, 2),
(42, 78, 2),
(42, 69, 2),
(42, 74, 2),
(42, 73, 2),
(42, 86, 2),
(42, 68, 2),
(42, 93, 2),
(42, 91, 2),
(42, 79, 2),
(42, 89, 2),
(42, 72, 2),
(42, 65, 2),
(44, 76, 1),
(44, 92, 1),
(44, 71, 1),
(44, 85, 1),
(44, 66, 1),
(44, 77, 1),
(44, 78, 1),
(44, 69, 1),
(44, 74, 1),
(44, 73, 1),
(44, 86, 1),
(44, 68, 1),
(44, 93, 1),
(44, 91, 1),
(44, 79, 1),
(44, 89, 1),
(44, 72, 1),
(44, 65, 1),
(45, 76, 1),
(45, 92, 1),
(45, 71, 1),
(45, 85, 1),
(45, 66, 1),
(45, 77, 1),
(45, 78, 1),
(45, 69, 1),
(45, 74, 1),
(45, 73, 1),
(45, 86, 1),
(45, 68, 1),
(45, 93, 1),
(45, 91, 1),
(45, 79, 1),
(45, 89, 1),
(45, 72, 1),
(45, 65, 1),
(46, 76, 1),
(46, 92, 1),
(46, 71, 1),
(46, 85, 1),
(46, 66, 1),
(46, 77, 1),
(46, 78, 1),
(46, 69, 1),
(46, 74, 1),
(46, 73, 1),
(46, 86, 1),
(46, 68, 1),
(46, 93, 1),
(46, 91, 1),
(46, 79, 1),
(46, 89, 1),
(46, 72, 1),
(46, 65, 1),
(47, 76, 1),
(47, 92, 1),
(47, 71, 1),
(47, 85, 1),
(47, 66, 1),
(47, 77, 1),
(47, 78, 1),
(47, 69, 1),
(47, 74, 1),
(47, 73, 1),
(47, 86, 1),
(47, 68, 1),
(47, 93, 1),
(47, 91, 1),
(47, 79, 1),
(47, 89, 1),
(47, 72, 1),
(47, 65, 1),
(8, 119, 1),
(8, 116, 1),
(8, 117, 1),
(13, 119, 1),
(13, 116, 1),
(13, 117, 1),
(15, 119, 1),
(15, 116, 1),
(15, 117, 1),
(17, 119, 1),
(17, 116, 1),
(17, 117, 1),
(20, 119, 1),
(20, 116, 1),
(20, 117, 1),
(5, 119, 1),
(5, 116, 1),
(5, 117, 1),
(50, 76, 2),
(50, 92, 2),
(50, 71, 2),
(50, 85, 2),
(50, 66, 2),
(50, 77, 2),
(50, 78, 2),
(50, 69, 2),
(50, 74, 2),
(50, 73, 2),
(50, 86, 2),
(50, 68, 2),
(50, 93, 2),
(50, 91, 2),
(50, 79, 2),
(50, 89, 2),
(50, 72, 2),
(50, 65, 2),
(52, 76, 3),
(52, 92, 3),
(52, 71, 3),
(52, 85, 3),
(52, 66, 3),
(52, 77, 3),
(52, 78, 3),
(52, 69, 3),
(52, 74, 3),
(52, 73, 3),
(52, 86, 3),
(52, 68, 3),
(52, 93, 3),
(52, 91, 3),
(52, 79, 3),
(52, 89, 3),
(52, 72, 3),
(52, 65, 3),
(54, 76, 1),
(54, 92, 1),
(54, 71, 1),
(54, 85, 1),
(54, 66, 1),
(54, 77, 1),
(54, 78, 1),
(54, 69, 1),
(54, 74, 1),
(54, 73, 1),
(54, 86, 1),
(54, 68, 1),
(54, 93, 1),
(54, 91, 1),
(54, 79, 1),
(54, 89, 1),
(54, 72, 1),
(54, 65, 1),
(16, 96, 1),
(16, 95, 1),
(16, 98, 1),
(21, 96, 1),
(21, 95, 1),
(21, 98, 1),
(11, 96, 1),
(11, 95, 1),
(11, 98, 1),
(5, 96, 1),
(5, 95, 1),
(5, 98, 1),
(20, 96, 1),
(20, 95, 1),
(20, 98, 1),
(17, 96, 1),
(17, 95, 1),
(17, 98, 1),
(15, 96, 1),
(15, 95, 1),
(15, 98, 1),
(13, 96, 1),
(13, 95, 1),
(13, 98, 1),
(8, 96, 2),
(8, 95, 2),
(8, 98, 2),
(10, 96, 4),
(10, 95, 4),
(10, 98, 4),
(19, 96, 1),
(19, 95, 1),
(19, 98, 1),
(30, 96, 1),
(30, 95, 1),
(30, 98, 1),
(28, 96, 1),
(28, 95, 1),
(28, 98, 1),
(29, 96, 1),
(29, 95, 1),
(29, 98, 1),
(22, 96, 1),
(22, 95, 1),
(22, 98, 1),
(23, 96, 2),
(23, 95, 2),
(23, 98, 2),
(26, 96, 3),
(26, 95, 3),
(26, 98, 3),
(27, 96, 4),
(27, 95, 4),
(27, 98, 4),
(31, 96, 1),
(31, 95, 1),
(31, 98, 1),
(33, 96, 1),
(33, 95, 1),
(33, 98, 1),
(34, 96, 1),
(34, 95, 1),
(34, 98, 1),
(35, 96, 1),
(35, 95, 1),
(35, 98, 1),
(36, 96, 1),
(36, 95, 1),
(36, 98, 1),
(42, 96, 2),
(42, 95, 2),
(42, 98, 2),
(52, 96, 3),
(52, 95, 3),
(52, 98, 3),
(44, 96, 1),
(44, 95, 1),
(44, 98, 1),
(45, 96, 1),
(45, 95, 1),
(45, 98, 1),
(46, 96, 1),
(46, 95, 1),
(46, 98, 1),
(47, 96, 1),
(47, 95, 1),
(47, 98, 1),
(11, 119, 1),
(11, 116, 1),
(11, 117, 1),
(50, 96, 2),
(50, 95, 2),
(50, 98, 2),
(40, 96, 4),
(40, 95, 4),
(40, 98, 4),
(54, 96, 1),
(54, 95, 1),
(54, 98, 1),
(16, 101, 1),
(16, 100, 1),
(16, 103, 1),
(21, 101, 1),
(21, 100, 1),
(21, 103, 1),
(11, 101, 1),
(11, 100, 1),
(11, 103, 1),
(5, 101, 1),
(5, 100, 1),
(5, 103, 1),
(20, 101, 1),
(20, 100, 1),
(20, 103, 1),
(17, 101, 1),
(17, 100, 1),
(17, 103, 1),
(15, 101, 1),
(15, 100, 1),
(15, 103, 1),
(13, 101, 1),
(13, 100, 1),
(13, 103, 1),
(21, 119, 1),
(21, 116, 1),
(21, 117, 1),
(8, 101, 2),
(8, 100, 2),
(8, 103, 2),
(10, 101, 4),
(10, 100, 4),
(10, 103, 4),
(19, 101, 1),
(19, 100, 1),
(19, 103, 1),
(30, 101, 1),
(30, 100, 1),
(30, 103, 1),
(28, 101, 1),
(28, 100, 1),
(28, 103, 1),
(29, 101, 1),
(29, 100, 1),
(29, 103, 1),
(22, 101, 1),
(22, 100, 1),
(22, 103, 1),
(23, 101, 2),
(23, 100, 2),
(23, 103, 2),
(26, 101, 3),
(26, 100, 3),
(26, 103, 3),
(27, 101, 4),
(27, 100, 4),
(27, 103, 4),
(31, 101, 1),
(31, 100, 1),
(31, 103, 1),
(33, 101, 1),
(33, 100, 1),
(33, 103, 1),
(34, 101, 1),
(34, 100, 1),
(34, 103, 1),
(35, 101, 1),
(35, 100, 1),
(35, 103, 1),
(36, 101, 1),
(36, 100, 1),
(36, 103, 1),
(42, 101, 2),
(42, 100, 2),
(42, 103, 2),
(52, 101, 3),
(52, 100, 3),
(52, 103, 3),
(44, 101, 1),
(44, 100, 1),
(44, 103, 1),
(45, 101, 1),
(45, 100, 1),
(45, 103, 1),
(46, 101, 1),
(46, 100, 1),
(46, 103, 1),
(47, 101, 1),
(47, 100, 1),
(47, 103, 1),
(50, 101, 2),
(50, 100, 2),
(50, 103, 2),
(40, 101, 4),
(40, 100, 4),
(40, 103, 4),
(54, 101, 1),
(54, 100, 1),
(54, 103, 1),
(16, 106, 1),
(16, 105, 1),
(16, 108, 1),
(21, 106, 1),
(21, 105, 1),
(21, 108, 1),
(11, 106, 1),
(11, 105, 1),
(11, 108, 1),
(5, 106, 1),
(5, 105, 1),
(5, 108, 1),
(20, 106, 1),
(20, 105, 1),
(20, 108, 1),
(17, 106, 1),
(17, 105, 1),
(17, 108, 1),
(15, 106, 1),
(15, 105, 1),
(15, 108, 1),
(13, 106, 1),
(13, 105, 1),
(13, 108, 1),
(16, 119, 1),
(16, 116, 1),
(16, 117, 1),
(8, 106, 2),
(8, 105, 2),
(8, 108, 2),
(10, 106, 4),
(10, 105, 4),
(10, 108, 4),
(19, 106, 1),
(19, 105, 1),
(19, 108, 1),
(30, 106, 1),
(30, 105, 1),
(30, 108, 1),
(28, 106, 1),
(28, 105, 1),
(28, 108, 1),
(29, 106, 1),
(29, 105, 1),
(29, 108, 1),
(22, 106, 1),
(22, 105, 1),
(22, 108, 1),
(23, 106, 2),
(23, 105, 2),
(23, 108, 2),
(26, 106, 3),
(26, 105, 3),
(26, 108, 3),
(27, 106, 4),
(27, 105, 4),
(27, 108, 4),
(31, 106, 1),
(31, 105, 1),
(31, 108, 1),
(33, 106, 1),
(33, 105, 1),
(33, 108, 1),
(34, 106, 1),
(34, 105, 1),
(34, 108, 1),
(35, 106, 1),
(35, 105, 1),
(35, 108, 1),
(36, 106, 1),
(36, 105, 1),
(36, 108, 1),
(42, 106, 2),
(42, 105, 2),
(42, 108, 2),
(52, 106, 3),
(52, 105, 3),
(52, 108, 3),
(44, 106, 1),
(44, 105, 1),
(44, 108, 1),
(45, 106, 1),
(45, 105, 1),
(45, 108, 1),
(46, 106, 1),
(46, 105, 1),
(46, 108, 1),
(47, 106, 1),
(47, 105, 1),
(47, 108, 1),
(117, 119, 1),
(117, 116, 1),
(117, 117, 1),
(50, 106, 2),
(50, 105, 2),
(50, 108, 2),
(40, 106, 4),
(40, 105, 4),
(40, 108, 4),
(54, 106, 1),
(54, 105, 1),
(54, 108, 1),
(99, 3, 1),
(99, 1, 1),
(99, 106, 1),
(99, 105, 1),
(99, 108, 1),
(99, 38, 1),
(99, 39, 1),
(99, 41, 1),
(99, 47, 1),
(99, 48, 1),
(99, 49, 1),
(99, 50, 1),
(99, 51, 1),
(99, 61, 1),
(99, 101, 1),
(99, 100, 1),
(99, 103, 1),
(99, 64, 1),
(99, 4, 1),
(99, 5, 1),
(99, 6, 1),
(99, 7, 1),
(99, 8, 1),
(99, 9, 1),
(99, 10, 1),
(99, 11, 1),
(99, 12, 1),
(99, 52, 1),
(99, 96, 1),
(99, 95, 1),
(99, 98, 1),
(99, 63, 1),
(99, 76, 1),
(99, 92, 1),
(99, 71, 1),
(99, 85, 1),
(99, 66, 1),
(99, 77, 1),
(99, 78, 1),
(99, 69, 1),
(99, 74, 1),
(99, 73, 1),
(99, 86, 1),
(99, 68, 1),
(99, 93, 1),
(99, 91, 1),
(99, 79, 1),
(99, 89, 1),
(99, 72, 1),
(99, 65, 1),
(99, 55, 1),
(99, 56, 1),
(99, 31, 1),
(99, 32, 1),
(99, 33, 1),
(99, 34, 1),
(99, 35, 1),
(99, 36, 1),
(99, 37, 1),
(99, 58, 1),
(99, 59, 1),
(99, 60, 1),
(99, 19, 1),
(99, 62, 1),
(101, 3, 1),
(101, 1, 1),
(101, 106, 1),
(101, 105, 1),
(101, 108, 1),
(101, 38, 1),
(101, 39, 1),
(101, 41, 1),
(101, 47, 1),
(101, 48, 1),
(101, 49, 1),
(101, 50, 1),
(101, 51, 1),
(101, 61, 1),
(101, 101, 1),
(101, 100, 1),
(101, 103, 1),
(101, 64, 1),
(101, 4, 1),
(101, 5, 1),
(101, 6, 1),
(101, 7, 1),
(101, 8, 1),
(101, 9, 1),
(101, 10, 1),
(101, 11, 1),
(101, 12, 1),
(101, 52, 1),
(101, 96, 1),
(101, 95, 1),
(101, 98, 1),
(101, 63, 1),
(101, 76, 1),
(101, 92, 1),
(101, 71, 1),
(101, 85, 1),
(101, 66, 1),
(101, 77, 1),
(101, 78, 1),
(101, 69, 1),
(101, 74, 1),
(101, 73, 1),
(101, 86, 1),
(101, 68, 1),
(101, 93, 1),
(101, 91, 1),
(101, 79, 1),
(101, 89, 1),
(101, 72, 1),
(101, 65, 1),
(101, 55, 1),
(101, 56, 1),
(101, 31, 1),
(101, 32, 1),
(101, 33, 1),
(101, 34, 1),
(101, 35, 1),
(101, 36, 1),
(101, 37, 1),
(101, 58, 1),
(101, 59, 1),
(101, 60, 1),
(101, 19, 1),
(101, 62, 1),
(102, 3, 1),
(102, 1, 1),
(102, 106, 1),
(102, 105, 1),
(102, 108, 1),
(102, 38, 1),
(102, 39, 1),
(102, 41, 1),
(102, 47, 1),
(102, 48, 1),
(102, 49, 1),
(102, 50, 1),
(102, 51, 1),
(102, 61, 1),
(102, 101, 1),
(102, 100, 1),
(102, 103, 1),
(102, 64, 1),
(102, 4, 1),
(102, 5, 1),
(102, 6, 1),
(102, 7, 1),
(102, 8, 1),
(102, 9, 1),
(102, 10, 1),
(102, 11, 1),
(102, 12, 1),
(102, 52, 1),
(102, 96, 1),
(102, 95, 1),
(102, 98, 1),
(102, 63, 1),
(102, 76, 1),
(102, 92, 1),
(102, 71, 1),
(102, 85, 1),
(102, 66, 1),
(102, 77, 1),
(102, 78, 1),
(102, 69, 1),
(102, 74, 1),
(102, 73, 1),
(102, 86, 1),
(102, 68, 1),
(102, 93, 1),
(102, 91, 1),
(102, 79, 1),
(102, 89, 1),
(102, 72, 1),
(102, 65, 1),
(102, 55, 1),
(102, 56, 1),
(102, 31, 1),
(102, 32, 1),
(102, 33, 1),
(102, 34, 1),
(102, 35, 1),
(102, 36, 1),
(102, 37, 1),
(102, 58, 1),
(102, 59, 1),
(102, 60, 1),
(102, 19, 1),
(102, 62, 1),
(105, 19, 1),
(105, 31, 1),
(105, 32, 1),
(105, 33, 1),
(105, 34, 1),
(105, 35, 1),
(105, 36, 1),
(105, 37, 1),
(108, 3, 1),
(108, 1, 1),
(108, 106, 1),
(108, 105, 1),
(108, 108, 1),
(108, 38, 1),
(108, 39, 1),
(108, 41, 1),
(108, 47, 1),
(108, 48, 1),
(108, 49, 1),
(108, 50, 1),
(108, 51, 1),
(108, 61, 1),
(108, 101, 1),
(108, 100, 1),
(108, 103, 1),
(108, 64, 1),
(108, 4, 1),
(108, 5, 1),
(108, 6, 1),
(108, 7, 1),
(108, 8, 1),
(108, 9, 1),
(108, 10, 1),
(108, 11, 1),
(108, 12, 1),
(108, 52, 1),
(108, 96, 1),
(108, 95, 1),
(108, 98, 1),
(108, 63, 1),
(108, 76, 1),
(108, 92, 1),
(108, 71, 1),
(108, 85, 1),
(108, 66, 1),
(108, 77, 1),
(108, 78, 1),
(108, 69, 1),
(108, 74, 1),
(108, 73, 1),
(108, 86, 1),
(108, 68, 1),
(108, 93, 1),
(108, 91, 1),
(108, 79, 1),
(108, 89, 1),
(108, 72, 1),
(108, 65, 1),
(108, 55, 1),
(108, 56, 1),
(108, 31, 1),
(108, 32, 1),
(108, 33, 1),
(108, 34, 1),
(108, 35, 1),
(108, 36, 1),
(108, 37, 1),
(108, 58, 1),
(108, 59, 1),
(108, 60, 1),
(108, 19, 1),
(108, 62, 1),
(109, 3, 1),
(109, 1, 1),
(109, 106, 1),
(109, 105, 1),
(109, 108, 1),
(109, 38, 1),
(109, 39, 1),
(109, 41, 1),
(109, 47, 1),
(109, 48, 1),
(109, 49, 1),
(109, 50, 1),
(109, 51, 1),
(109, 61, 1),
(109, 101, 1),
(109, 100, 1),
(109, 103, 1),
(109, 64, 1),
(109, 4, 1),
(109, 5, 1),
(109, 6, 1),
(109, 7, 1),
(109, 8, 1),
(109, 9, 1),
(109, 10, 1),
(109, 11, 1),
(109, 12, 1),
(109, 52, 1),
(109, 96, 1),
(109, 95, 1),
(109, 98, 1),
(109, 63, 1),
(109, 76, 1),
(109, 92, 1),
(109, 71, 1),
(109, 85, 1),
(109, 66, 1),
(109, 77, 1),
(109, 78, 1),
(109, 69, 1),
(109, 74, 1),
(109, 73, 1),
(109, 86, 1),
(109, 68, 1),
(109, 93, 1),
(109, 91, 1),
(109, 79, 1),
(109, 89, 1),
(109, 72, 1),
(109, 65, 1),
(109, 55, 1),
(109, 56, 1),
(109, 31, 1),
(109, 32, 1),
(109, 33, 1),
(109, 34, 1),
(109, 35, 1),
(109, 36, 1),
(109, 37, 1),
(109, 58, 1),
(109, 59, 1),
(109, 60, 1),
(109, 19, 1),
(109, 62, 1),
(110, 3, 1),
(110, 1, 1),
(110, 106, 1),
(110, 105, 1),
(110, 108, 1),
(110, 38, 1),
(110, 39, 1),
(110, 41, 1),
(110, 47, 1),
(110, 48, 1),
(110, 49, 1),
(110, 50, 1),
(110, 51, 1),
(110, 61, 1),
(110, 101, 1),
(110, 100, 1),
(110, 103, 1),
(110, 64, 1),
(110, 4, 1),
(110, 5, 1),
(110, 6, 1),
(110, 7, 1),
(110, 8, 1),
(110, 9, 1),
(110, 10, 1),
(110, 11, 1),
(110, 12, 1),
(110, 52, 1),
(110, 96, 1),
(110, 95, 1),
(110, 98, 1),
(110, 63, 1),
(110, 76, 1),
(110, 92, 1),
(110, 71, 1),
(110, 85, 1),
(110, 66, 1),
(110, 77, 1),
(110, 78, 1),
(110, 69, 1),
(110, 74, 1),
(110, 73, 1),
(110, 86, 1),
(110, 68, 1),
(110, 93, 1),
(110, 91, 1),
(110, 79, 1),
(110, 89, 1),
(110, 72, 1),
(110, 65, 1),
(110, 55, 1),
(110, 56, 1),
(110, 31, 1),
(110, 32, 1),
(110, 33, 1),
(110, 34, 1),
(110, 35, 1),
(110, 36, 1),
(110, 37, 1),
(110, 58, 1),
(110, 59, 1),
(110, 60, 1),
(110, 19, 1),
(110, 62, 1),
(111, 3, 1),
(111, 1, 1),
(111, 106, 1),
(111, 105, 1),
(111, 108, 1),
(111, 38, 1),
(111, 39, 1),
(111, 41, 1),
(111, 47, 1),
(111, 48, 1),
(111, 49, 1),
(111, 50, 1),
(111, 51, 1),
(111, 61, 1),
(111, 101, 1),
(111, 100, 1),
(111, 103, 1),
(111, 64, 1),
(111, 4, 1),
(111, 5, 1),
(111, 6, 1),
(111, 7, 1),
(111, 8, 1),
(111, 9, 1),
(111, 10, 1),
(111, 11, 1),
(111, 12, 1),
(111, 52, 1),
(111, 96, 1),
(111, 95, 1),
(111, 98, 1),
(111, 63, 1),
(111, 76, 1),
(111, 92, 1),
(111, 71, 1),
(111, 85, 1),
(111, 66, 1),
(111, 77, 1),
(111, 78, 1),
(111, 69, 1),
(111, 74, 1),
(111, 73, 1),
(111, 86, 1),
(111, 68, 1),
(111, 93, 1),
(111, 91, 1),
(111, 79, 1),
(111, 89, 1),
(111, 72, 1),
(111, 65, 1),
(111, 55, 1),
(111, 56, 1),
(111, 31, 1),
(111, 32, 1),
(111, 33, 1),
(111, 34, 1),
(111, 35, 1),
(111, 36, 1),
(111, 37, 1),
(111, 58, 1),
(111, 59, 1),
(111, 60, 1),
(111, 19, 1),
(111, 62, 1),
(114, 3, 1),
(114, 1, 1),
(114, 106, 1),
(114, 105, 1),
(114, 108, 1),
(114, 38, 1),
(114, 39, 1),
(114, 41, 1),
(114, 47, 1),
(114, 48, 1),
(114, 49, 1),
(114, 50, 1),
(114, 51, 1),
(114, 61, 1),
(114, 101, 1),
(114, 100, 1),
(114, 103, 1),
(114, 64, 1),
(114, 4, 1),
(114, 5, 1),
(114, 6, 1),
(114, 7, 1),
(114, 8, 1),
(114, 9, 1),
(114, 10, 1),
(114, 11, 1),
(114, 12, 1),
(114, 52, 1),
(114, 96, 1),
(114, 95, 1),
(114, 98, 1),
(114, 63, 1),
(114, 76, 1),
(114, 92, 1),
(114, 71, 1),
(114, 85, 1),
(114, 66, 1),
(114, 77, 1),
(114, 78, 1),
(114, 69, 1),
(114, 74, 1),
(114, 73, 1),
(114, 86, 1),
(114, 68, 1),
(114, 93, 1),
(114, 91, 1),
(114, 79, 1),
(114, 89, 1),
(114, 72, 1),
(114, 65, 1),
(114, 55, 1),
(114, 56, 1),
(114, 31, 1),
(114, 32, 1),
(114, 33, 1),
(114, 34, 1),
(114, 35, 1),
(114, 36, 1),
(114, 37, 1),
(114, 58, 1),
(114, 59, 1),
(114, 60, 1),
(114, 19, 1),
(114, 62, 1),
(116, 3, 1),
(116, 1, 1),
(116, 106, 1),
(116, 105, 1),
(116, 108, 1),
(116, 38, 1),
(116, 39, 1),
(116, 41, 1),
(116, 47, 1),
(116, 48, 1),
(116, 49, 1),
(116, 50, 1),
(116, 51, 1),
(116, 61, 1),
(116, 101, 1),
(116, 100, 1),
(116, 103, 1),
(116, 64, 1),
(116, 4, 1),
(116, 5, 1),
(116, 6, 1),
(116, 7, 1),
(116, 8, 1),
(116, 9, 1),
(116, 10, 1),
(116, 11, 1),
(116, 12, 1),
(116, 52, 1),
(116, 96, 1),
(116, 95, 1),
(116, 98, 1),
(116, 63, 1),
(116, 76, 1),
(116, 92, 1),
(116, 71, 1),
(116, 85, 1),
(116, 66, 1),
(116, 77, 1),
(116, 78, 1),
(116, 69, 1),
(116, 74, 1),
(116, 73, 1),
(116, 86, 1),
(116, 68, 1),
(116, 93, 1),
(116, 91, 1),
(116, 79, 1),
(116, 89, 1),
(116, 72, 1),
(116, 65, 1),
(116, 55, 1),
(116, 56, 1),
(116, 31, 1),
(116, 32, 1),
(116, 33, 1),
(116, 34, 1),
(116, 35, 1),
(116, 36, 1),
(116, 37, 1),
(116, 58, 1),
(116, 59, 1),
(116, 60, 1),
(116, 19, 1),
(116, 62, 1),
(117, 3, 1),
(117, 1, 1),
(117, 106, 1),
(117, 105, 1),
(117, 108, 1),
(117, 38, 1),
(117, 39, 1),
(117, 41, 1),
(117, 47, 1),
(117, 48, 1),
(117, 49, 1),
(117, 50, 1),
(117, 51, 1),
(117, 61, 1),
(117, 101, 1),
(117, 100, 1),
(117, 103, 1),
(117, 64, 1),
(117, 4, 1),
(117, 5, 1),
(117, 6, 1),
(117, 7, 1),
(117, 8, 1),
(117, 9, 1),
(117, 10, 1),
(117, 11, 1),
(117, 12, 1),
(117, 52, 1),
(117, 96, 1),
(117, 95, 1),
(117, 98, 1),
(117, 63, 1),
(117, 76, 1),
(117, 92, 1),
(117, 71, 1),
(117, 85, 1),
(117, 66, 1),
(117, 77, 1),
(117, 78, 1),
(117, 69, 1),
(117, 74, 1),
(117, 73, 1),
(117, 86, 1),
(117, 68, 1),
(117, 93, 1),
(117, 91, 1),
(117, 79, 1),
(117, 89, 1),
(117, 72, 1),
(117, 65, 1),
(117, 55, 1),
(117, 56, 1),
(117, 31, 1),
(117, 32, 1),
(117, 33, 1),
(117, 34, 1),
(117, 35, 1),
(117, 36, 1),
(117, 37, 1),
(117, 58, 1),
(117, 59, 1),
(117, 60, 1),
(117, 19, 1),
(117, 62, 1),
(118, 4, 1),
(119, 4, 2),
(120, 62, 2),
(120, 3, 2),
(120, 1, 2),
(120, 4, 2),
(120, 5, 2),
(120, 6, 2),
(120, 7, 2),
(120, 8, 2),
(120, 9, 2),
(120, 10, 2),
(120, 11, 2),
(120, 12, 2),
(120, 61, 2),
(120, 19, 2),
(120, 31, 2),
(120, 32, 2),
(120, 33, 2),
(120, 34, 2),
(120, 35, 2),
(120, 36, 2),
(120, 37, 2),
(120, 38, 2),
(120, 39, 2),
(120, 41, 2),
(120, 63, 2),
(120, 64, 2),
(120, 52, 2),
(120, 47, 2),
(120, 48, 2),
(120, 49, 2),
(120, 50, 2),
(120, 51, 2),
(120, 55, 2),
(120, 56, 2),
(120, 58, 2),
(120, 59, 2),
(120, 60, 2),
(120, 76, 2),
(120, 92, 2),
(120, 71, 2),
(120, 85, 2),
(120, 66, 2),
(120, 77, 2),
(120, 78, 2),
(120, 69, 2),
(120, 74, 2),
(120, 73, 2),
(120, 86, 2),
(120, 68, 2),
(120, 93, 2),
(120, 91, 2),
(120, 79, 2),
(120, 89, 2),
(120, 72, 2),
(120, 65, 2),
(120, 96, 2),
(120, 95, 2),
(120, 98, 2),
(120, 101, 2),
(120, 100, 2),
(120, 103, 2),
(120, 106, 2),
(120, 105, 2),
(120, 108, 2),
(122, 119, 3),
(122, 116, 3),
(122, 117, 3),
(120, 119, 2),
(120, 116, 2),
(120, 117, 2),
(114, 119, 1),
(114, 116, 1),
(114, 117, 1),
(111, 119, 1),
(111, 116, 1),
(111, 117, 1),
(110, 119, 1),
(110, 116, 1),
(110, 117, 1),
(109, 119, 1),
(109, 116, 1),
(109, 117, 1),
(108, 119, 1),
(108, 116, 1),
(108, 117, 1),
(102, 119, 1),
(102, 116, 1),
(102, 117, 1),
(116, 119, 1),
(116, 116, 1),
(116, 117, 1),
(101, 119, 1),
(101, 116, 1),
(101, 117, 1),
(99, 119, 1),
(99, 116, 1),
(99, 117, 1),
(149, 119, 1),
(149, 116, 1),
(149, 117, 1),
(147, 119, 4),
(147, 116, 4),
(147, 117, 4),
(145, 119, 3),
(145, 116, 3),
(145, 117, 3),
(140, 119, 2),
(140, 116, 2),
(140, 117, 2),
(138, 119, 1),
(138, 116, 1),
(138, 117, 1),
(135, 119, 1),
(135, 116, 1),
(135, 117, 1),
(133, 119, 1),
(133, 116, 1),
(133, 117, 1),
(132, 119, 1),
(132, 116, 1),
(132, 117, 1),
(153, 119, 1),
(153, 116, 1),
(153, 117, 1),
(126, 119, 1),
(126, 116, 1),
(126, 117, 1),
(125, 119, 1),
(125, 116, 1),
(125, 117, 1),
(122, 4, 4),
(122, 5, 4),
(122, 6, 4),
(122, 7, 4),
(122, 8, 4),
(122, 9, 4),
(122, 10, 4),
(122, 11, 4),
(122, 12, 4),
(122, 62, 4),
(122, 3, 4),
(122, 1, 4),
(122, 61, 4),
(122, 19, 4),
(122, 31, 4),
(122, 32, 4),
(122, 33, 4),
(122, 34, 4),
(122, 35, 4),
(122, 36, 4),
(122, 37, 4),
(122, 38, 4),
(122, 39, 4),
(122, 41, 4),
(122, 63, 4),
(122, 64, 4),
(122, 52, 4),
(122, 47, 4),
(122, 48, 4),
(122, 49, 4),
(122, 50, 4),
(122, 51, 4),
(122, 55, 4),
(122, 56, 4),
(122, 58, 4),
(122, 59, 4),
(122, 60, 4),
(122, 76, 4),
(122, 92, 4),
(122, 71, 4),
(122, 85, 4),
(122, 66, 4),
(122, 77, 4),
(122, 78, 4),
(122, 69, 4),
(122, 74, 4),
(122, 73, 4),
(122, 86, 4),
(122, 68, 4),
(122, 93, 4),
(122, 91, 4),
(122, 79, 4),
(122, 89, 4),
(122, 72, 4),
(122, 65, 4),
(122, 96, 4),
(122, 95, 4),
(122, 98, 4),
(122, 101, 4),
(122, 100, 4),
(122, 103, 4),
(122, 106, 4),
(122, 105, 4),
(122, 108, 4),
(123, 3, 1),
(123, 1, 1),
(123, 106, 1),
(123, 105, 1),
(123, 108, 1),
(123, 38, 1),
(123, 39, 1),
(123, 41, 1),
(123, 47, 1),
(123, 48, 1),
(123, 49, 1),
(123, 50, 1),
(123, 51, 1),
(123, 61, 1),
(123, 101, 1),
(123, 100, 1),
(123, 103, 1),
(123, 64, 1),
(123, 4, 1),
(123, 5, 1),
(123, 6, 1),
(123, 7, 1),
(123, 8, 1),
(123, 9, 1),
(123, 10, 1),
(123, 11, 1),
(123, 12, 1),
(123, 52, 1),
(123, 96, 1),
(123, 95, 1),
(123, 98, 1),
(123, 63, 1),
(123, 76, 1),
(123, 92, 1),
(123, 71, 1),
(123, 85, 1),
(123, 66, 1),
(123, 77, 1),
(123, 78, 1),
(123, 69, 1),
(123, 74, 1),
(123, 73, 1),
(123, 86, 1),
(123, 68, 1),
(123, 93, 1),
(123, 91, 1),
(123, 79, 1),
(123, 89, 1),
(123, 72, 1),
(123, 65, 1),
(123, 55, 1),
(123, 56, 1),
(123, 31, 1),
(123, 32, 1),
(123, 33, 1),
(123, 34, 1),
(123, 35, 1),
(123, 36, 1),
(123, 37, 1),
(123, 58, 1),
(123, 59, 1),
(123, 60, 1),
(123, 19, 1),
(123, 62, 1),
(125, 3, 1),
(125, 1, 1),
(125, 106, 1),
(125, 105, 1),
(125, 108, 1),
(125, 38, 1),
(125, 39, 1),
(125, 41, 1),
(125, 47, 1),
(125, 48, 1),
(125, 49, 1),
(125, 50, 1),
(125, 51, 1),
(125, 61, 1),
(125, 101, 1),
(125, 100, 1),
(125, 103, 1),
(125, 64, 1),
(125, 4, 1),
(125, 5, 1),
(125, 6, 1),
(125, 7, 1),
(125, 8, 1),
(125, 9, 1),
(125, 10, 1),
(125, 11, 1),
(125, 12, 1),
(125, 52, 1),
(125, 96, 1),
(125, 95, 1),
(125, 98, 1),
(125, 63, 1),
(125, 76, 1),
(125, 92, 1),
(125, 71, 1),
(125, 85, 1),
(125, 66, 1),
(125, 77, 1),
(125, 78, 1),
(125, 69, 1),
(125, 74, 1),
(125, 73, 1),
(125, 86, 1),
(125, 68, 1),
(125, 93, 1),
(125, 91, 1),
(125, 79, 1),
(125, 89, 1),
(125, 72, 1),
(125, 65, 1),
(125, 55, 1),
(125, 56, 1),
(125, 31, 1),
(125, 32, 1),
(125, 33, 1),
(125, 34, 1),
(125, 35, 1),
(125, 36, 1),
(125, 37, 1),
(125, 58, 1),
(125, 59, 1),
(125, 60, 1),
(125, 19, 1),
(125, 62, 1),
(126, 3, 1),
(126, 1, 1),
(126, 106, 1),
(126, 105, 1),
(126, 108, 1),
(126, 38, 1),
(126, 39, 1),
(126, 41, 1),
(126, 47, 1),
(126, 48, 1),
(126, 49, 1),
(126, 50, 1),
(126, 51, 1),
(126, 61, 1),
(126, 101, 1),
(126, 100, 1),
(126, 103, 1),
(126, 64, 1),
(126, 4, 1),
(126, 5, 1),
(126, 6, 1),
(126, 7, 1),
(126, 8, 1),
(126, 9, 1),
(126, 10, 1),
(126, 11, 1),
(126, 12, 1),
(126, 52, 1),
(126, 96, 1),
(126, 95, 1),
(126, 98, 1),
(126, 63, 1),
(126, 76, 1),
(126, 92, 1),
(126, 71, 1),
(126, 85, 1),
(126, 66, 1),
(126, 77, 1),
(126, 78, 1),
(126, 69, 1),
(126, 74, 1),
(126, 73, 1),
(126, 86, 1),
(126, 68, 1),
(126, 93, 1),
(126, 91, 1),
(126, 79, 1),
(126, 89, 1),
(126, 72, 1),
(126, 65, 1),
(126, 55, 1),
(126, 56, 1),
(126, 31, 1),
(126, 32, 1),
(126, 33, 1),
(126, 34, 1),
(126, 35, 1),
(126, 36, 1),
(126, 37, 1),
(126, 58, 1),
(126, 59, 1),
(126, 60, 1),
(126, 19, 1),
(126, 62, 1),
(54, 122, 1),
(40, 122, 2),
(50, 122, 1),
(47, 122, 1),
(46, 122, 1),
(45, 122, 1),
(44, 122, 1),
(52, 122, 2),
(42, 122, 1),
(36, 122, 1),
(35, 122, 1),
(34, 122, 1),
(33, 122, 1),
(31, 122, 1),
(27, 122, 2),
(26, 122, 1),
(23, 122, 2),
(22, 122, 1),
(29, 122, 1),
(28, 122, 1),
(30, 122, 1),
(19, 122, 1),
(10, 122, 2),
(129, 19, 1),
(129, 31, 1),
(129, 32, 1),
(129, 33, 1),
(129, 34, 1),
(129, 35, 1),
(129, 36, 1),
(129, 37, 1),
(132, 3, 1),
(132, 1, 1),
(132, 106, 1),
(132, 105, 1),
(132, 108, 1),
(132, 38, 1),
(132, 39, 1),
(132, 41, 1),
(132, 47, 1),
(132, 48, 1),
(132, 49, 1),
(132, 50, 1),
(132, 51, 1),
(132, 61, 1),
(132, 101, 1),
(132, 100, 1),
(132, 103, 1),
(132, 64, 1),
(132, 4, 1),
(132, 5, 1),
(132, 6, 1),
(132, 7, 1),
(132, 8, 1),
(132, 9, 1),
(132, 10, 1),
(132, 11, 1),
(132, 12, 1),
(132, 52, 1),
(132, 96, 1),
(132, 95, 1),
(132, 98, 1),
(132, 63, 1),
(132, 76, 1),
(132, 92, 1),
(132, 71, 1),
(132, 85, 1),
(132, 66, 1),
(132, 77, 1),
(132, 78, 1),
(132, 69, 1),
(132, 74, 1),
(132, 73, 1),
(132, 86, 1),
(132, 68, 1),
(132, 93, 1),
(132, 91, 1),
(132, 79, 1),
(132, 89, 1),
(132, 72, 1),
(132, 65, 1),
(132, 55, 1),
(132, 56, 1),
(132, 31, 1),
(132, 32, 1),
(132, 33, 1),
(132, 34, 1),
(132, 35, 1),
(132, 36, 1),
(132, 37, 1),
(132, 58, 1),
(132, 59, 1),
(132, 60, 1),
(132, 19, 1),
(132, 62, 1),
(133, 3, 1),
(133, 1, 1),
(133, 106, 1),
(133, 105, 1),
(133, 108, 1),
(133, 38, 1),
(133, 39, 1),
(133, 41, 1),
(133, 47, 1),
(133, 48, 1),
(133, 49, 1),
(133, 50, 1),
(133, 51, 1),
(133, 61, 1),
(133, 101, 1),
(133, 100, 1),
(133, 103, 1),
(133, 64, 1),
(133, 4, 1),
(133, 5, 1),
(133, 6, 1),
(133, 7, 1),
(133, 8, 1),
(133, 9, 1),
(133, 10, 1),
(133, 11, 1),
(133, 12, 1),
(133, 52, 1),
(133, 96, 1),
(133, 95, 1),
(133, 98, 1),
(133, 63, 1),
(133, 76, 1),
(133, 92, 1),
(133, 71, 1),
(133, 85, 1),
(133, 66, 1),
(133, 77, 1),
(133, 78, 1),
(133, 69, 1),
(133, 74, 1),
(133, 73, 1),
(133, 86, 1),
(133, 68, 1),
(133, 93, 1),
(133, 91, 1),
(133, 79, 1),
(133, 89, 1),
(133, 72, 1),
(133, 65, 1),
(133, 55, 1),
(133, 56, 1),
(133, 31, 1),
(133, 32, 1),
(133, 33, 1),
(133, 34, 1),
(133, 35, 1),
(133, 36, 1),
(133, 37, 1),
(133, 58, 1),
(133, 59, 1),
(133, 60, 1),
(133, 19, 1),
(133, 62, 1),
(135, 3, 1),
(135, 1, 1),
(135, 106, 1),
(135, 105, 1),
(135, 108, 1),
(135, 38, 1),
(135, 39, 1),
(135, 41, 1),
(135, 47, 1),
(135, 48, 1),
(135, 49, 1),
(135, 50, 1),
(135, 51, 1),
(135, 61, 1),
(135, 101, 1),
(135, 100, 1),
(135, 103, 1),
(135, 64, 1),
(135, 4, 1),
(135, 5, 1),
(135, 6, 1),
(135, 7, 1),
(135, 8, 1),
(135, 9, 1),
(135, 10, 1),
(135, 11, 1),
(135, 12, 1),
(135, 52, 1),
(135, 96, 1),
(135, 95, 1),
(135, 98, 1),
(135, 63, 1),
(135, 76, 1),
(135, 92, 1),
(135, 71, 1),
(135, 85, 1),
(135, 66, 1),
(135, 77, 1),
(135, 78, 1),
(135, 69, 1),
(135, 74, 1),
(135, 73, 1),
(135, 86, 1),
(135, 68, 1),
(135, 93, 1),
(135, 91, 1),
(135, 79, 1),
(135, 89, 1),
(135, 72, 1),
(135, 65, 1),
(135, 55, 1),
(135, 56, 1),
(135, 31, 1),
(135, 32, 1),
(135, 33, 1),
(135, 34, 1),
(135, 35, 1),
(135, 36, 1),
(135, 37, 1),
(135, 58, 1),
(135, 59, 1),
(135, 60, 1),
(135, 19, 1),
(135, 62, 1),
(138, 3, 1),
(138, 1, 1),
(138, 106, 1),
(138, 105, 1),
(138, 108, 1),
(138, 38, 1),
(138, 39, 1),
(138, 41, 1),
(138, 47, 1),
(138, 48, 1),
(138, 49, 1),
(138, 50, 1),
(138, 51, 1),
(138, 61, 1),
(138, 101, 1),
(138, 100, 1),
(138, 103, 1),
(138, 64, 1),
(138, 4, 1),
(138, 5, 1),
(138, 6, 1),
(138, 7, 1),
(138, 8, 1),
(138, 9, 1),
(138, 10, 1),
(138, 11, 1),
(138, 12, 1),
(138, 52, 1),
(138, 96, 1),
(138, 95, 1),
(138, 98, 1),
(138, 63, 1),
(138, 76, 1),
(138, 92, 1),
(138, 71, 1),
(138, 85, 1),
(138, 66, 1),
(138, 77, 1),
(138, 78, 1),
(138, 69, 1),
(138, 74, 1),
(138, 73, 1),
(138, 86, 1),
(138, 68, 1),
(138, 93, 1),
(138, 91, 1),
(138, 79, 1),
(138, 89, 1),
(138, 72, 1),
(138, 65, 1),
(138, 55, 1),
(138, 56, 1),
(138, 31, 1),
(138, 32, 1),
(138, 33, 1),
(138, 34, 1),
(138, 35, 1),
(138, 36, 1),
(138, 37, 1),
(138, 58, 1),
(138, 59, 1),
(138, 60, 1),
(138, 19, 1),
(138, 62, 1),
(140, 3, 2),
(140, 1, 2),
(140, 106, 2),
(140, 105, 2),
(140, 108, 2),
(140, 38, 2),
(140, 39, 2),
(140, 41, 2),
(140, 47, 2),
(140, 48, 2),
(140, 49, 2),
(140, 50, 2),
(140, 51, 2),
(140, 61, 2),
(140, 101, 2),
(140, 100, 2),
(140, 103, 2),
(140, 64, 2),
(140, 4, 2),
(140, 5, 2),
(140, 6, 2),
(140, 7, 2),
(140, 8, 2),
(140, 9, 2),
(140, 10, 2),
(140, 11, 2),
(140, 12, 2),
(140, 52, 2),
(140, 96, 2),
(140, 95, 2),
(140, 98, 2),
(140, 63, 2),
(140, 76, 2),
(140, 92, 2),
(140, 71, 2),
(140, 85, 2),
(140, 66, 2),
(140, 77, 2),
(140, 78, 2),
(140, 69, 2),
(140, 74, 2),
(140, 73, 2),
(140, 86, 2),
(140, 68, 2),
(140, 93, 2),
(140, 91, 2),
(140, 79, 2),
(140, 89, 2),
(140, 72, 2),
(140, 65, 2),
(140, 55, 2),
(140, 56, 2),
(140, 31, 2),
(140, 32, 2),
(140, 33, 2),
(140, 34, 2),
(140, 35, 2),
(140, 36, 2),
(140, 37, 2),
(140, 58, 2),
(140, 59, 2),
(140, 60, 2),
(140, 19, 2),
(140, 62, 2),
(142, 4, 1),
(143, 4, 2),
(147, 60, 3),
(147, 33, 3),
(145, 4, 3),
(145, 5, 3),
(145, 6, 3),
(145, 7, 3),
(145, 8, 3),
(145, 9, 3),
(145, 10, 3),
(145, 11, 3),
(145, 12, 3),
(147, 59, 3),
(147, 61, 3),
(147, 12, 5),
(147, 10, 5),
(147, 31, 3),
(147, 19, 3),
(147, 32, 3),
(147, 11, 5),
(147, 38, 3),
(147, 39, 3),
(147, 41, 3),
(147, 63, 3),
(147, 52, 3),
(147, 76, 3),
(147, 92, 3),
(147, 34, 3),
(147, 47, 3),
(147, 48, 3),
(147, 49, 3),
(147, 50, 3),
(147, 64, 3),
(147, 35, 3),
(147, 51, 3),
(147, 55, 3),
(147, 56, 3),
(147, 58, 3),
(147, 86, 3),
(146, 11, 4),
(147, 78, 3),
(147, 79, 3),
(147, 85, 3),
(147, 68, 3),
(147, 93, 3),
(147, 77, 3),
(147, 73, 3),
(147, 74, 3),
(147, 89, 3),
(147, 66, 3),
(146, 10, 4),
(146, 12, 4),
(147, 91, 3),
(147, 37, 3),
(147, 69, 3),
(147, 71, 3),
(146, 8, 4),
(146, 9, 4),
(146, 7, 4),
(146, 5, 4),
(146, 6, 4),
(146, 4, 4),
(147, 72, 3),
(147, 65, 3),
(147, 36, 3),
(147, 8, 5),
(147, 9, 5),
(147, 7, 5),
(147, 5, 5),
(147, 6, 5),
(147, 4, 5),
(147, 3, 3),
(147, 1, 3),
(147, 62, 3),
(147, 96, 3),
(147, 95, 3),
(147, 98, 3),
(147, 101, 3),
(147, 100, 3),
(147, 103, 3),
(147, 106, 3),
(147, 105, 3),
(147, 108, 3),
(145, 47, 4),
(145, 105, 4),
(145, 108, 4),
(148, 4, 3),
(148, 5, 1),
(148, 6, 1),
(148, 7, 1),
(148, 8, 1),
(148, 9, 1),
(148, 10, 1),
(148, 11, 1),
(148, 12, 1),
(145, 48, 4),
(145, 106, 4),
(145, 103, 4),
(145, 100, 4),
(145, 101, 4),
(145, 98, 4),
(145, 95, 4),
(145, 96, 4),
(145, 65, 4),
(145, 72, 4),
(145, 89, 4),
(145, 79, 4),
(145, 91, 4),
(145, 93, 4),
(145, 68, 4),
(145, 86, 4),
(145, 73, 4),
(145, 74, 4),
(145, 69, 4),
(145, 78, 4),
(145, 77, 4),
(145, 66, 4),
(145, 85, 4),
(145, 52, 4),
(145, 64, 4),
(145, 58, 4),
(145, 71, 4),
(145, 92, 4),
(145, 76, 4),
(145, 60, 4),
(145, 59, 4),
(145, 56, 4),
(145, 55, 4),
(145, 51, 4),
(145, 50, 4),
(145, 49, 4),
(145, 34, 4),
(145, 38, 4),
(145, 41, 4),
(145, 33, 4),
(145, 32, 4),
(145, 39, 4),
(145, 35, 4),
(145, 36, 4),
(145, 31, 4),
(145, 37, 4),
(145, 63, 4),
(145, 19, 4),
(145, 61, 4),
(145, 3, 4),
(145, 1, 4),
(145, 62, 4),
(149, 50, 1),
(149, 1, 1),
(149, 62, 1),
(142, 5, 2),
(142, 6, 2),
(142, 7, 2),
(142, 8, 2),
(142, 9, 2),
(142, 10, 2),
(142, 11, 2),
(142, 12, 2),
(149, 49, 1),
(149, 3, 1),
(149, 4, 4),
(149, 6, 3),
(149, 5, 3),
(149, 7, 3),
(149, 9, 3),
(149, 8, 3),
(149, 33, 1),
(149, 61, 1),
(149, 12, 3),
(149, 10, 3),
(149, 31, 1),
(149, 19, 1),
(149, 32, 1),
(149, 64, 1),
(149, 34, 1),
(149, 11, 3),
(149, 38, 1),
(149, 39, 1),
(149, 41, 1),
(149, 63, 1),
(149, 52, 1),
(149, 47, 1),
(149, 48, 1),
(149, 92, 1),
(149, 73, 1),
(149, 58, 1),
(149, 77, 1),
(149, 51, 1),
(149, 71, 1),
(149, 85, 1),
(149, 56, 1),
(149, 76, 1),
(149, 60, 1),
(149, 78, 1),
(149, 55, 1),
(149, 86, 1),
(149, 74, 1),
(149, 66, 1),
(149, 69, 1),
(149, 59, 1),
(149, 35, 1),
(149, 93, 1),
(149, 68, 1),
(149, 91, 1),
(149, 89, 1),
(149, 79, 1),
(149, 37, 1),
(149, 72, 1),
(149, 65, 1),
(149, 36, 1),
(149, 96, 1),
(149, 95, 1),
(149, 98, 1),
(149, 101, 1),
(149, 100, 1),
(149, 103, 1),
(149, 106, 1),
(149, 105, 1),
(149, 108, 1),
(150, 62, 1),
(150, 3, 1),
(150, 1, 1),
(150, 4, 1),
(150, 5, 1),
(150, 6, 1),
(150, 7, 1),
(150, 8, 1),
(150, 9, 1),
(150, 10, 1),
(150, 11, 1),
(150, 12, 1),
(150, 61, 1),
(150, 19, 1),
(150, 31, 1),
(150, 32, 1),
(150, 33, 1),
(150, 34, 1),
(150, 35, 1),
(150, 36, 1),
(150, 37, 1),
(150, 38, 1),
(150, 39, 1),
(150, 41, 1),
(150, 63, 1),
(150, 64, 1),
(150, 52, 1),
(150, 47, 1),
(150, 48, 1),
(150, 49, 1),
(150, 50, 1),
(150, 51, 1),
(150, 55, 1),
(150, 56, 1),
(150, 58, 1),
(150, 59, 1),
(150, 60, 1),
(150, 76, 1),
(150, 92, 1),
(150, 71, 1),
(150, 85, 1),
(150, 66, 1),
(150, 77, 1),
(150, 78, 1),
(150, 69, 1),
(150, 74, 1),
(150, 73, 1),
(150, 86, 1),
(150, 68, 1),
(150, 93, 1),
(150, 91, 1),
(150, 79, 1),
(150, 89, 1),
(150, 72, 1),
(150, 65, 1),
(150, 96, 1),
(150, 95, 1),
(150, 98, 1),
(150, 101, 1),
(150, 100, 1),
(150, 103, 1),
(150, 106, 1),
(150, 105, 1),
(150, 108, 1),
(151, 62, 2),
(151, 3, 2),
(151, 1, 2),
(151, 4, 2),
(151, 5, 2),
(151, 6, 2),
(151, 7, 2),
(151, 8, 2),
(151, 9, 2),
(151, 10, 2),
(151, 11, 2),
(151, 12, 2),
(151, 61, 2),
(151, 19, 2),
(151, 31, 2),
(151, 32, 2),
(151, 33, 2),
(151, 34, 2),
(151, 35, 2),
(151, 36, 2),
(151, 37, 2),
(151, 38, 2),
(151, 39, 2),
(151, 41, 2),
(151, 63, 2),
(151, 64, 2),
(151, 52, 2),
(151, 47, 2),
(151, 48, 2),
(151, 49, 2),
(151, 50, 2),
(151, 51, 2),
(151, 55, 2),
(151, 56, 2),
(151, 58, 2),
(151, 59, 2),
(151, 60, 2),
(151, 76, 2),
(151, 92, 2),
(151, 71, 2),
(151, 85, 2),
(151, 66, 2),
(151, 77, 2),
(151, 78, 2),
(151, 69, 2),
(151, 74, 2),
(151, 73, 2),
(151, 86, 2),
(151, 68, 2),
(151, 93, 2),
(151, 91, 2),
(151, 79, 2),
(151, 89, 2),
(151, 72, 2),
(151, 65, 2),
(151, 96, 2),
(151, 95, 2),
(151, 98, 2),
(151, 101, 2),
(151, 100, 2),
(151, 103, 2),
(151, 106, 2),
(151, 105, 2),
(151, 108, 2),
(153, 62, 1),
(153, 3, 1),
(153, 1, 1),
(153, 4, 1),
(153, 5, 1),
(153, 6, 1),
(153, 7, 1),
(153, 8, 1),
(153, 9, 1),
(153, 10, 1),
(153, 11, 1),
(153, 12, 1),
(153, 61, 1),
(153, 19, 1),
(153, 31, 1),
(153, 32, 1),
(153, 33, 1),
(153, 34, 1),
(153, 35, 1),
(153, 36, 1),
(153, 37, 1),
(153, 38, 1),
(153, 39, 1),
(153, 41, 1),
(153, 63, 1),
(153, 64, 1),
(153, 52, 1),
(153, 47, 1),
(153, 48, 1),
(153, 49, 1),
(153, 50, 1),
(153, 51, 1),
(153, 55, 1),
(153, 56, 1),
(153, 58, 1),
(153, 59, 1),
(153, 60, 1),
(153, 76, 1),
(153, 92, 1),
(153, 71, 1),
(153, 85, 1),
(153, 66, 1),
(153, 77, 1),
(153, 78, 1),
(153, 69, 1),
(153, 74, 1),
(153, 73, 1),
(153, 86, 1),
(153, 68, 1),
(153, 93, 1),
(153, 91, 1),
(153, 79, 1),
(153, 89, 1),
(153, 72, 1),
(153, 65, 1),
(153, 96, 1),
(153, 95, 1),
(153, 98, 1),
(153, 101, 1),
(153, 100, 1),
(153, 103, 1),
(153, 106, 1),
(153, 105, 1),
(153, 108, 1),
(154, 62, 3),
(154, 3, 3),
(154, 1, 3),
(154, 4, 3),
(154, 5, 3),
(154, 6, 3),
(154, 7, 3),
(154, 8, 3),
(154, 9, 3),
(154, 10, 3),
(154, 11, 3),
(154, 12, 3),
(154, 61, 3),
(154, 19, 3),
(154, 31, 3),
(154, 32, 3),
(154, 33, 3),
(154, 34, 3),
(154, 35, 3),
(154, 36, 3),
(154, 37, 3),
(154, 38, 3),
(154, 39, 3),
(154, 41, 3),
(154, 63, 3),
(154, 64, 3),
(154, 52, 3),
(154, 47, 3),
(154, 48, 3),
(154, 49, 3),
(154, 50, 3),
(154, 51, 3),
(154, 55, 3),
(154, 56, 3),
(154, 58, 3),
(154, 59, 3),
(154, 60, 3),
(154, 76, 3),
(154, 92, 3),
(154, 71, 3),
(154, 85, 3),
(154, 66, 3),
(154, 77, 3),
(154, 78, 3),
(154, 69, 3),
(154, 74, 3),
(154, 73, 3),
(154, 86, 3),
(154, 68, 3),
(154, 93, 3),
(154, 91, 3),
(154, 79, 3),
(154, 89, 3),
(154, 72, 3),
(154, 65, 3),
(154, 96, 3),
(154, 95, 3),
(154, 98, 3),
(154, 101, 3),
(154, 100, 3),
(154, 103, 3),
(154, 106, 3),
(154, 105, 3),
(154, 108, 3),
(150, 111, 1),
(150, 110, 1),
(150, 113, 1),
(151, 111, 2),
(151, 110, 2),
(151, 113, 2),
(154, 111, 3),
(154, 110, 3),
(154, 113, 3),
(123, 111, 1),
(123, 110, 1),
(123, 113, 1),
(125, 111, 1),
(125, 110, 1),
(125, 113, 1),
(126, 111, 1),
(126, 110, 1),
(126, 113, 1),
(8, 122, 1),
(13, 122, 1),
(15, 122, 1),
(153, 111, 1),
(153, 110, 1),
(153, 113, 1),
(132, 111, 1),
(132, 110, 1),
(132, 113, 1),
(133, 111, 1),
(133, 110, 1),
(133, 113, 1),
(135, 111, 1),
(135, 110, 1),
(135, 113, 1),
(138, 111, 1),
(138, 110, 1),
(138, 113, 1),
(140, 111, 2),
(140, 110, 2),
(140, 113, 2),
(145, 111, 3),
(145, 110, 3),
(145, 113, 3),
(147, 111, 4),
(147, 110, 4),
(147, 113, 4),
(149, 111, 1),
(149, 110, 1),
(149, 113, 1),
(99, 111, 1),
(99, 110, 1),
(99, 113, 1),
(17, 122, 1),
(20, 122, 1),
(5, 122, 1),
(101, 111, 1),
(101, 110, 1),
(101, 113, 1),
(116, 111, 1),
(116, 110, 1),
(116, 113, 1),
(102, 111, 1),
(102, 110, 1),
(102, 113, 1),
(11, 122, 1),
(21, 122, 1),
(16, 122, 1),
(108, 111, 1),
(108, 110, 1),
(108, 113, 1),
(109, 111, 1),
(109, 110, 1),
(109, 113, 1),
(110, 111, 1),
(110, 110, 1),
(110, 113, 1),
(111, 111, 1),
(111, 110, 1),
(111, 113, 1),
(114, 111, 1),
(114, 110, 1),
(114, 113, 1),
(120, 111, 2),
(120, 110, 2),
(120, 113, 2),
(123, 119, 1),
(123, 116, 1),
(123, 117, 1),
(122, 111, 4),
(122, 110, 4),
(122, 113, 4),
(117, 111, 1),
(117, 110, 1),
(117, 113, 1),
(16, 111, 1),
(16, 110, 1),
(16, 113, 1),
(117, 122, 1),
(122, 122, 3),
(120, 122, 2),
(21, 111, 1),
(21, 110, 1),
(21, 113, 1),
(11, 111, 1),
(11, 110, 1),
(11, 113, 1),
(114, 122, 1),
(111, 122, 1),
(110, 122, 1),
(5, 111, 1),
(5, 110, 1),
(5, 113, 1),
(20, 111, 1),
(20, 110, 1),
(20, 113, 1),
(17, 111, 1),
(17, 110, 1),
(17, 113, 1),
(15, 111, 1),
(15, 110, 1),
(15, 113, 1),
(13, 111, 1),
(13, 110, 1),
(13, 113, 1),
(154, 119, 3),
(154, 116, 3),
(154, 117, 3),
(8, 111, 2),
(8, 110, 2),
(8, 113, 2),
(10, 111, 4),
(10, 110, 4),
(10, 113, 4),
(19, 111, 1),
(19, 110, 1),
(19, 113, 1),
(30, 111, 1),
(30, 110, 1),
(30, 113, 1),
(28, 111, 1),
(28, 110, 1),
(28, 113, 1),
(29, 111, 1),
(29, 110, 1),
(29, 113, 1),
(22, 111, 1),
(22, 110, 1),
(22, 113, 1),
(23, 111, 2),
(23, 110, 2),
(23, 113, 2),
(109, 122, 1),
(108, 122, 1),
(102, 122, 1),
(116, 122, 1),
(101, 122, 1),
(99, 122, 1),
(26, 111, 3),
(26, 110, 3),
(26, 113, 3),
(27, 111, 4),
(27, 110, 4),
(27, 113, 4),
(31, 111, 1),
(31, 110, 1),
(31, 113, 1),
(149, 122, 1),
(147, 122, 4),
(145, 122, 3),
(33, 111, 1),
(33, 110, 1),
(33, 113, 1),
(34, 111, 1),
(34, 110, 1),
(34, 113, 1),
(35, 111, 1),
(35, 110, 1),
(35, 113, 1),
(36, 111, 1),
(36, 110, 1),
(36, 113, 1),
(140, 122, 2),
(138, 122, 1),
(135, 122, 1),
(42, 111, 2),
(42, 110, 2),
(42, 113, 2),
(52, 111, 3),
(52, 110, 3),
(52, 113, 3),
(44, 111, 1),
(44, 110, 1),
(44, 113, 1),
(45, 111, 1),
(45, 110, 1),
(45, 113, 1),
(46, 111, 1),
(46, 110, 1),
(46, 113, 1),
(47, 111, 1),
(47, 110, 1),
(47, 113, 1),
(151, 119, 2),
(151, 116, 2),
(151, 117, 2),
(50, 111, 2),
(50, 110, 2),
(50, 113, 2),
(40, 111, 4),
(40, 110, 4),
(40, 113, 4),
(54, 111, 1),
(54, 110, 1),
(54, 113, 1),
(150, 115, 1),
(151, 115, 2),
(154, 115, 3),
(123, 115, 1),
(125, 115, 1),
(126, 115, 1),
(133, 122, 1),
(153, 115, 1),
(132, 115, 1),
(133, 115, 1),
(135, 115, 1),
(138, 115, 1),
(140, 115, 2),
(145, 115, 3),
(147, 115, 4),
(149, 115, 1),
(99, 115, 1),
(132, 122, 1),
(101, 115, 1),
(116, 115, 1),
(102, 115, 1),
(153, 122, 1),
(108, 115, 1),
(109, 115, 1),
(110, 115, 1),
(111, 115, 1),
(114, 115, 1),
(120, 115, 2),
(150, 119, 1),
(122, 115, 4),
(117, 115, 1),
(16, 115, 1),
(126, 122, 1),
(21, 115, 1),
(11, 115, 1),
(125, 122, 1),
(5, 115, 1),
(20, 115, 1),
(17, 115, 1),
(15, 115, 1),
(13, 115, 1),
(150, 116, 1),
(8, 115, 2),
(10, 115, 4),
(19, 115, 1),
(30, 115, 1),
(28, 115, 1),
(29, 115, 1),
(22, 115, 1),
(23, 115, 2),
(123, 122, 1),
(154, 122, 3),
(26, 115, 3),
(27, 115, 4),
(31, 115, 1),
(151, 122, 2),
(33, 115, 1),
(34, 115, 1),
(35, 115, 1),
(36, 115, 1),
(150, 122, 1),
(42, 115, 2),
(52, 115, 3),
(44, 115, 1),
(45, 115, 1),
(46, 115, 1),
(47, 115, 1),
(150, 117, 1),
(50, 115, 2),
(40, 115, 4),
(54, 115, 1),
(150, 128, 1),
(150, 127, 1),
(150, 130, 1),
(151, 128, 2),
(151, 127, 2),
(151, 130, 2),
(154, 128, 3),
(154, 127, 3),
(154, 130, 3),
(123, 128, 1),
(123, 127, 1),
(123, 130, 1),
(125, 128, 1),
(125, 127, 1),
(125, 130, 1),
(126, 128, 1),
(126, 127, 1),
(126, 130, 1),
(153, 128, 1),
(153, 127, 1),
(153, 130, 1),
(132, 128, 1),
(132, 127, 1),
(132, 130, 1),
(133, 128, 1),
(133, 127, 1),
(133, 130, 1),
(135, 128, 1),
(135, 127, 1),
(135, 130, 1),
(138, 128, 1),
(138, 127, 1),
(138, 130, 1),
(140, 128, 2),
(140, 127, 2),
(140, 130, 2),
(145, 128, 3),
(145, 127, 3),
(145, 130, 3);
INSERT INTO `nv4_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(147, 128, 4),
(147, 127, 4),
(147, 130, 4),
(149, 128, 1),
(149, 127, 1),
(149, 130, 1),
(99, 128, 1),
(99, 127, 1),
(99, 130, 1),
(101, 128, 1),
(101, 127, 1),
(101, 130, 1),
(116, 128, 1),
(116, 127, 1),
(116, 130, 1),
(102, 128, 1),
(102, 127, 1),
(102, 130, 1),
(108, 128, 1),
(108, 127, 1),
(108, 130, 1),
(109, 128, 1),
(109, 127, 1),
(109, 130, 1),
(110, 128, 1),
(110, 127, 1),
(110, 130, 1),
(111, 128, 1),
(111, 127, 1),
(111, 130, 1),
(114, 128, 1),
(114, 127, 1),
(114, 130, 1),
(120, 128, 2),
(120, 127, 2),
(120, 130, 2),
(122, 128, 3),
(122, 127, 3),
(122, 130, 3),
(117, 128, 1),
(117, 127, 1),
(117, 130, 1),
(16, 128, 1),
(16, 127, 1),
(16, 130, 1),
(21, 128, 1),
(21, 127, 1),
(21, 130, 1),
(11, 128, 1),
(11, 127, 1),
(11, 130, 1),
(5, 128, 1),
(5, 127, 1),
(5, 130, 1),
(20, 128, 1),
(20, 127, 1),
(20, 130, 1),
(17, 128, 1),
(17, 127, 1),
(17, 130, 1),
(15, 128, 1),
(15, 127, 1),
(15, 130, 1),
(13, 128, 1),
(13, 127, 1),
(13, 130, 1),
(8, 128, 1),
(8, 127, 1),
(8, 130, 1),
(10, 128, 2),
(10, 127, 2),
(10, 130, 2),
(19, 128, 1),
(19, 127, 1),
(19, 130, 1),
(30, 128, 1),
(30, 127, 1),
(30, 130, 1),
(28, 128, 1),
(28, 127, 1),
(28, 130, 1),
(29, 128, 1),
(29, 127, 1),
(29, 130, 1),
(22, 128, 1),
(22, 127, 1),
(22, 130, 1),
(23, 128, 2),
(23, 127, 2),
(23, 130, 2),
(26, 128, 1),
(26, 127, 1),
(26, 130, 1),
(27, 128, 2),
(27, 127, 2),
(27, 130, 2),
(31, 128, 1),
(31, 127, 1),
(31, 130, 1),
(33, 128, 1),
(33, 127, 1),
(33, 130, 1),
(34, 128, 1),
(34, 127, 1),
(34, 130, 1),
(35, 128, 1),
(35, 127, 1),
(35, 130, 1),
(36, 128, 1),
(36, 127, 1),
(36, 130, 1),
(42, 128, 1),
(42, 127, 1),
(42, 130, 1),
(52, 128, 2),
(52, 127, 2),
(52, 130, 2),
(44, 128, 1),
(44, 127, 1),
(44, 130, 1),
(45, 128, 1),
(45, 127, 1),
(45, 130, 1),
(46, 128, 1),
(46, 127, 1),
(46, 130, 1),
(47, 128, 1),
(47, 127, 1),
(47, 130, 1),
(50, 128, 1),
(50, 127, 1),
(50, 130, 1),
(40, 128, 2),
(40, 127, 2),
(40, 130, 2),
(54, 128, 1),
(54, 127, 1),
(54, 130, 1),
(150, 133, 1),
(150, 132, 1),
(150, 135, 1),
(151, 133, 2),
(151, 132, 2),
(151, 135, 2),
(154, 133, 3),
(154, 132, 3),
(154, 135, 3),
(123, 133, 1),
(123, 132, 1),
(123, 135, 1),
(125, 133, 1),
(125, 132, 1),
(125, 135, 1),
(126, 133, 1),
(126, 132, 1),
(126, 135, 1),
(153, 133, 1),
(153, 132, 1),
(153, 135, 1),
(132, 133, 1),
(132, 132, 1),
(132, 135, 1),
(133, 133, 1),
(133, 132, 1),
(133, 135, 1),
(135, 133, 1),
(135, 132, 1),
(135, 135, 1),
(138, 133, 1),
(138, 132, 1),
(138, 135, 1),
(140, 133, 2),
(140, 132, 2),
(140, 135, 2),
(145, 133, 3),
(145, 132, 3),
(145, 135, 3),
(147, 133, 4),
(147, 132, 4),
(147, 135, 4),
(149, 133, 1),
(149, 132, 1),
(149, 135, 1),
(99, 133, 1),
(99, 132, 1),
(99, 135, 1),
(101, 133, 1),
(101, 132, 1),
(101, 135, 1),
(116, 133, 1),
(116, 132, 1),
(116, 135, 1),
(102, 133, 1),
(102, 132, 1),
(102, 135, 1),
(108, 133, 1),
(108, 132, 1),
(108, 135, 1),
(109, 133, 1),
(109, 132, 1),
(109, 135, 1),
(110, 133, 1),
(110, 132, 1),
(110, 135, 1),
(111, 133, 1),
(111, 132, 1),
(111, 135, 1),
(114, 133, 1),
(114, 132, 1),
(114, 135, 1),
(120, 133, 2),
(120, 132, 2),
(120, 135, 2),
(122, 133, 3),
(122, 132, 3),
(122, 135, 3),
(117, 133, 1),
(117, 132, 1),
(117, 135, 1),
(16, 133, 1),
(16, 132, 1),
(16, 135, 1),
(21, 133, 1),
(21, 132, 1),
(21, 135, 1),
(11, 133, 1),
(11, 132, 1),
(11, 135, 1),
(5, 133, 1),
(5, 132, 1),
(5, 135, 1),
(20, 133, 1),
(20, 132, 1),
(20, 135, 1),
(17, 133, 1),
(17, 132, 1),
(17, 135, 1),
(15, 133, 1),
(15, 132, 1),
(15, 135, 1),
(13, 133, 1),
(13, 132, 1),
(13, 135, 1),
(8, 133, 1),
(8, 132, 1),
(8, 135, 1),
(10, 133, 2),
(10, 132, 2),
(10, 135, 2),
(19, 133, 1),
(19, 132, 1),
(19, 135, 1),
(30, 133, 1),
(30, 132, 1),
(30, 135, 1),
(28, 133, 1),
(28, 132, 1),
(28, 135, 1),
(29, 133, 1),
(29, 132, 1),
(29, 135, 1),
(22, 133, 1),
(22, 132, 1),
(22, 135, 1),
(23, 133, 2),
(23, 132, 2),
(23, 135, 2),
(26, 133, 1),
(26, 132, 1),
(26, 135, 1),
(27, 133, 2),
(27, 132, 2),
(27, 135, 2),
(31, 133, 1),
(31, 132, 1),
(31, 135, 1),
(33, 133, 1),
(33, 132, 1),
(33, 135, 1),
(34, 133, 1),
(34, 132, 1),
(34, 135, 1),
(35, 133, 1),
(35, 132, 1),
(35, 135, 1),
(36, 133, 1),
(36, 132, 1),
(36, 135, 1),
(42, 133, 1),
(42, 132, 1),
(42, 135, 1),
(52, 133, 2),
(52, 132, 2),
(52, 135, 2),
(44, 133, 1),
(44, 132, 1),
(44, 135, 1),
(45, 133, 1),
(45, 132, 1),
(45, 135, 1),
(46, 133, 1),
(46, 132, 1),
(46, 135, 1),
(47, 133, 1),
(47, 132, 1),
(47, 135, 1),
(50, 133, 1),
(50, 132, 1),
(50, 135, 1),
(40, 133, 2),
(40, 132, 2),
(40, 135, 2),
(54, 133, 1),
(54, 132, 1),
(54, 135, 1),
(150, 137, 1),
(151, 137, 2),
(154, 137, 3),
(123, 137, 1),
(125, 137, 1),
(126, 137, 1),
(153, 137, 1),
(132, 137, 1),
(133, 137, 1),
(135, 137, 1),
(138, 137, 1),
(140, 137, 2),
(145, 137, 3),
(147, 137, 4),
(149, 137, 1),
(99, 137, 1),
(101, 137, 1),
(116, 137, 1),
(102, 137, 1),
(108, 137, 1),
(109, 137, 1),
(110, 137, 1),
(111, 137, 1),
(114, 137, 1),
(120, 137, 2),
(122, 137, 3),
(117, 137, 1),
(16, 137, 1),
(21, 137, 1),
(11, 137, 1),
(5, 137, 1),
(20, 137, 1),
(17, 137, 1),
(15, 137, 1),
(13, 137, 1),
(8, 137, 1),
(10, 137, 2),
(19, 137, 1),
(30, 137, 1),
(28, 137, 1),
(29, 137, 1),
(22, 137, 1),
(23, 137, 2),
(26, 137, 1),
(27, 137, 2),
(31, 137, 1),
(33, 137, 1),
(34, 137, 1),
(35, 137, 1),
(36, 137, 1),
(42, 137, 1),
(52, 137, 2),
(44, 137, 1),
(45, 137, 1),
(46, 137, 1),
(47, 137, 1),
(50, 137, 1),
(40, 137, 2),
(54, 137, 1),
(150, 138, 1),
(151, 138, 2),
(154, 138, 3),
(123, 138, 1),
(125, 138, 1),
(126, 138, 1),
(153, 138, 1),
(132, 138, 1),
(133, 138, 1),
(135, 138, 1),
(138, 138, 1),
(140, 138, 2),
(145, 138, 3),
(147, 138, 4),
(149, 138, 1),
(99, 138, 1),
(101, 138, 1),
(116, 138, 1),
(102, 138, 1),
(108, 138, 1),
(109, 138, 1),
(110, 138, 1),
(111, 138, 1),
(114, 138, 1),
(120, 138, 2),
(122, 138, 3),
(117, 138, 1),
(16, 138, 1),
(21, 138, 1),
(11, 138, 1),
(5, 138, 1),
(20, 138, 1),
(17, 138, 1),
(15, 138, 1),
(13, 138, 1),
(8, 138, 1),
(10, 138, 2),
(19, 138, 1),
(30, 138, 1),
(28, 138, 1),
(29, 138, 1),
(22, 138, 1),
(23, 138, 2),
(26, 138, 1),
(27, 138, 2),
(31, 138, 1),
(33, 138, 1),
(34, 138, 1),
(35, 138, 1),
(36, 138, 1),
(42, 138, 1),
(52, 138, 2),
(44, 138, 1),
(45, 138, 1),
(46, 138, 1),
(47, 138, 1),
(50, 138, 1),
(40, 138, 2),
(54, 138, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_comment`
--

CREATE TABLE `nv4_vi_comment` (
  `cid` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL DEFAULT 0,
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `pid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `post_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `likes` mediumint(9) NOT NULL DEFAULT 0,
  `dislikes` mediumint(9) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_department`
--

CREATE TABLE `nv4_vi_contact_department` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_reply`
--

CREATE TABLE `nv4_vi_contact_reply` (
  `rid` mediumint(8) UNSIGNED NOT NULL,
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `reply_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reply_aid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_send`
--

CREATE TABLE `nv4_vi_contact_send` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sender_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `sender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_read` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_reply` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_supporter`
--

CREATE TABLE `nv4_vi_contact_supporter` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `departmentid` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `weight` smallint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_freecontent_blocks`
--

CREATE TABLE `nv4_vi_freecontent_blocks` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_freecontent_blocks`
--

INSERT INTO `nv4_vi_freecontent_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Sản phẩm', 'Sản phẩm của công ty cổ phần phát triển nguồn mở Việt Nam - VINADES.,JSC');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_freecontent_rows`
--

CREATE TABLE `nv4_vi_freecontent_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `bid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT 0,
  `end_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_freecontent_rows`
--

INSERT INTO `nv4_vi_freecontent_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 'Hệ quản trị nội dung NukeViet', '<ul>\n	<li>Giải thưởng Nhân tài đất Việt 2011, 10.000+ website đang sử dụng</li>\n	<li>Được Bộ GD&amp;ĐT khuyến khích sử dụng trong các cơ sở giáo dục</li>\n	<li>Bộ TT&amp;TT quy định ưu tiên sử dụng trong cơ quan nhà nước</li>\n</ul>', 'http://vinades.vn/vi/san-pham/nukeviet/', '_blank', 'cms.jpg', 1603626132, 0, 1),
(2, 1, 'Cổng thông tin doanh nghiệp', '<ul>\n	<li>Tích hợp bán hàng trực tuyến</li>\n	<li>Tích hợp các nghiệp vụ quản lý (quản lý khách hàng, quản lý nhân sự, quản lý tài liệu)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-doanh-nghiep-NukeViet-portal/', '_blank', 'portal.jpg', 1603626132, 0, 1),
(3, 1, 'Cổng thông tin Phòng giáo dục, Sở giáo dục', '<ul>\n	<li>Tích hợp chung website hàng trăm trường</li>\n	<li>Tích hợp các ứng dụng trực tuyến (Tra điểm SMS, Tra cứu văn bằng, Học bạ điện tử ...)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-giao-duc-NukeViet-Edugate/', '_blank', 'edugate.jpg', 1603626132, 0, 1),
(4, 1, 'Tòa soạn báo điện tử chuyên nghiệp', '<ul>\n	<li>Bảo mật đa tầng, phân quyền linh hoạt</li>\n	<li>Hệ thống bóc tin tự động, đăng bài tự động, cùng nhiều chức năng tiên tiến khác...</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Toa-soan-bao-dien-tu/', '_blank', 'toa-soan-dien-tu.jpg', 1603626132, 0, 1),
(5, 1, 'Giải pháp bán hàng trực tuyến', '<ul><li>Tích hợp các tính năng cơ bản bán hàng trực tuyến</li><li>Tích hợp với các cổng thanh toán, ví điện tử trên toàn quốc</li></ul>', 'http://vinades.vn', '_blank', 'shop.jpg', 1603626132, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_menu`
--

CREATE TABLE `nv4_vi_menu` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_menu`
--

INSERT INTO `nv4_vi_menu` (`id`, `title`) VALUES
(1, 'Top Menu');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_menu_rows`
--

CREATE TABLE `nv4_vi_menu_rows` (
  `id` mediumint(5) NOT NULL,
  `parentid` mediumint(5) UNSIGNED NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `lev` int(11) NOT NULL DEFAULT 0,
  `subitem` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `op` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` tinyint(4) DEFAULT 0,
  `css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_menu_rows`
--

INSERT INTO `nv4_vi_menu_rows` (`id`, `parentid`, `mid`, `title`, `link`, `icon`, `image`, `note`, `weight`, `sort`, `lev`, `subitem`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type`, `status`) VALUES
(1, 0, 1, 'Trang chủ', '/nukeviet4.4.02setup/nukeviet/index.php?language=vi&nv=home', '', '', '', 1, 1, 0, '', '6', '0', '', 1, '', 0, 1),
(2, 0, 1, 'Điện thoại', '/nukeviet4.4.02setup/nukeviet/index.php?language=vi&nv=phone', '', '', '', 2, 2, 0, '', '6', 'freecontent', '', 1, '', 0, 1),
(3, 0, 1, 'Phụ kiện', '/nukeviet4.4.02setup/nukeviet/index.php?language=vi&nv=accessories', '', '', '', 3, 3, 0, '', '6', 'users', '', 1, '', 0, 1),
(4, 0, 1, 'Tin tức', '/nukeviet4.4.02setup/nukeviet/index.php?language=vi&nv=news', '', '', '', 4, 4, 0, '35,34,33', '6', '0', '', 1, '', 0, 1),
(5, 0, 1, 'Giỏ hàng', '/nukeviet4.4.02setup/nukeviet/index.php?language=vi&nv=cats', '', '', '', 5, 8, 0, '', '6', '0', '', 1, '', 0, 1),
(35, 4, 1, 'Tin tức trong tháng', 'https://dantri.com.vn/the-gioi/chau-my.htm', '', '', '', 3, 7, 1, '', '6', '0', '', 1, '', 0, 1),
(34, 4, 1, 'Tin tức trong tuần', 'https://dantri.com.vn/the-gioi/eu-nga.htm', '', '', '', 2, 6, 1, '', '6', '0', '', 1, '', 0, 1),
(33, 4, 1, 'Tin tức trong ngày', 'https://dantri.com.vn/the-gioi/chau-a.htm', '', '', '', 1, 5, 1, '', '6', '0', '', 1, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modfuncs`
--

CREATE TABLE `nv4_vi_modfuncs` (
  `func_id` mediumint(8) UNSIGNED NOT NULL,
  `func_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `func_site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `in_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT 0,
  `in_submenu` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `subweight` smallint(2) UNSIGNED NOT NULL DEFAULT 1,
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modfuncs`
--

INSERT INTO `nv4_vi_modfuncs` (`func_id`, `func_name`, `alias`, `func_custom_name`, `func_site_title`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(117, 'main', 'main', 'Main', '', 'category', 1, 1, 2, ''),
(116, 'detail', 'detail', 'Detail', '', 'category', 1, 1, 3, ''),
(4, 'main', 'main', 'Main', '', 'news', 1, 0, 1, ''),
(5, 'viewcat', 'viewcat', 'Viewcat', '', 'news', 1, 0, 2, ''),
(6, 'topic', 'topic', 'Topic', '', 'news', 1, 0, 3, ''),
(7, 'content', 'content', 'Content', '', 'news', 1, 1, 4, ''),
(8, 'detail', 'detail', 'Detail', '', 'news', 1, 0, 5, ''),
(9, 'tag', 'tag', 'Tag', '', 'news', 1, 0, 6, ''),
(10, 'rss', 'rss', 'Rss', '', 'news', 1, 1, 7, ''),
(11, 'search', 'search', 'Search', '', 'news', 1, 1, 8, ''),
(12, 'groups', 'groups', 'Groups', '', 'news', 1, 0, 9, ''),
(13, 'sitemap', 'sitemap', 'Sitemap', '', 'news', 0, 0, 0, ''),
(14, 'print', 'print', 'Print', '', 'news', 0, 0, 0, ''),
(15, 'rating', 'rating', 'Rating', '', 'news', 0, 0, 0, ''),
(16, 'savefile', 'savefile', 'Savefile', '', 'news', 0, 0, 0, ''),
(17, 'sendmail', 'sendmail', 'Sendmail', '', 'news', 0, 0, 0, ''),
(18, 'instant-rss', 'instant-rss', 'Instant Articles RSS', '', 'news', 0, 0, 0, ''),
(19, 'main', 'main', 'Main', '', 'users', 1, 1, 1, ''),
(38, 'main', 'main', 'Main', '', 'banners', 1, 0, 1, ''),
(39, 'addads', 'addads', 'Addads', '', 'banners', 1, 0, 2, ''),
(41, 'stats', 'stats', 'Stats', '', 'banners', 1, 0, 3, ''),
(43, 'click', 'click', 'Click', '', 'banners', 0, 0, 0, ''),
(46, 'viewmap', 'viewmap', 'Viewmap', '', 'banners', 0, 0, 0, ''),
(47, 'main', 'main', 'main', '', 'comment', 1, 0, 1, ''),
(48, 'post', 'post', 'post', '', 'comment', 1, 0, 2, ''),
(49, 'like', 'like', 'Like', '', 'comment', 1, 0, 3, ''),
(50, 'delete', 'delete', 'Delete', '', 'comment', 1, 0, 4, ''),
(51, 'down', 'down', 'Down', '', 'comment', 1, 0, 5, ''),
(52, 'main', 'main', 'Main', '', 'page', 1, 0, 1, ''),
(53, 'sitemap', 'sitemap', 'Sitemap', '', 'page', 0, 0, 0, ''),
(54, 'rss', 'rss', 'Rss', '', 'page', 0, 0, 0, ''),
(58, 'main', 'main', 'Main', '', 'two-step-verification', 1, 0, 1, ''),
(59, 'confirm', 'confirm', 'Confirm', '', 'two-step-verification', 1, 0, 2, ''),
(60, 'setup', 'setup', 'Setup', '', 'two-step-verification', 1, 0, 3, ''),
(127, 'detail', 'detail', 'Detail', '', 'order', 1, 1, 2, ''),
(63, 'main', 'main', 'Main', '', 'seek', 1, 0, 1, ''),
(64, 'main', 'main', 'Main', '', 'feeds', 1, 0, 1, ''),
(65, 'blockcat', 'blockcat', 'Blockcat', '', 'shops', 1, 0, 18, ''),
(66, 'cart', 'cart', 'Cart', '', 'shops', 1, 0, 5, ''),
(67, 'checkorder', 'checkorder', 'Checkorder', '', 'shops', 0, 0, 0, ''),
(68, 'compare', 'compare', 'Compare', '', 'shops', 1, 0, 12, ''),
(69, 'complete', 'complete', 'Complete', '', 'shops', 1, 0, 8, ''),
(70, 'delhis', 'delhis', 'Delhis', '', 'shops', 0, 0, 0, ''),
(71, 'detail', 'detail', 'Detail', '', 'shops', 1, 0, 3, ''),
(72, 'download', 'download', 'Download', '', 'shops', 1, 0, 17, ''),
(73, 'group', 'group', 'Group', '', 'shops', 1, 0, 10, ''),
(74, 'history', 'history', 'History', '', 'shops', 1, 0, 9, ''),
(75, 'loadcart', 'loadcart', 'Loadcart', '', 'shops', 0, 0, 0, ''),
(76, 'main', 'main', 'Main', '', 'shops', 1, 0, 1, ''),
(77, 'order', 'order', 'Order', '', 'shops', 1, 0, 6, ''),
(78, 'payment', 'payment', 'Payment', '', 'shops', 1, 0, 7, ''),
(79, 'point', 'point', 'Point', '', 'shops', 1, 0, 15, ''),
(80, 'print', 'print', 'Print', '', 'shops', 0, 0, 0, ''),
(81, 'print_pro', 'print_pro', 'Print_pro', '', 'shops', 0, 0, 0, ''),
(82, 'remove', 'remove', 'Remove', '', 'shops', 0, 0, 0, ''),
(83, 'review', 'review', 'Review', '', 'shops', 0, 0, 0, ''),
(84, 'rss', 'rss', 'Rss', '', 'shops', 0, 0, 0, ''),
(85, 'search', 'search', 'Search', '', 'shops', 1, 0, 4, ''),
(86, 'search_result', 'search_result', 'Search_result', '', 'shops', 1, 0, 11, ''),
(87, 'sendmail', 'sendmail', 'Sendmail', '', 'shops', 0, 0, 0, ''),
(88, 'setcart', 'setcart', 'Setcart', '', 'shops', 0, 0, 0, ''),
(89, 'shippingajax', 'shippingajax', 'Shippingajax', '', 'shops', 1, 0, 16, ''),
(90, 'sitemap', 'sitemap', 'Sitemap', '', 'shops', 0, 0, 0, ''),
(91, 'tag', 'tag', 'Tag', '', 'shops', 1, 0, 14, ''),
(92, 'viewcat', 'viewcat', 'Viewcat', '', 'shops', 1, 0, 2, ''),
(93, 'wishlist', 'wishlist', 'Wishlist', '', 'shops', 1, 0, 13, ''),
(94, 'wishlist_update', 'wishlist_update', 'Wishlist_update', '', 'shops', 0, 0, 0, ''),
(120, 'sitemap', 'sitemap', 'Sitemap', '', 'category', 0, 0, 0, ''),
(118, 'rss', 'rss', 'Rss', '', 'category', 0, 0, 0, ''),
(119, 'search', 'search', 'Search', '', 'category', 1, 1, 4, ''),
(123, 'detail', 'detail', 'Detail', '', 'users', 1, 1, 2, ''),
(124, 'rss', 'rss', 'Rss', '', 'users', 0, 0, 0, ''),
(125, 'search', 'search', 'Search', '', 'users', 1, 1, 3, ''),
(126, 'sitemap', 'sitemap', 'Sitemap', '', 'users', 0, 0, 0, ''),
(128, 'main', 'main', 'Main', '', 'order', 1, 1, 1, ''),
(129, 'rss', 'rss', 'Rss', '', 'order', 0, 0, 0, ''),
(130, 'search', 'search', 'Search', '', 'order', 1, 1, 3, ''),
(131, 'sitemap', 'sitemap', 'Sitemap', '', 'order', 0, 0, 0, ''),
(132, 'detail', 'detail', 'Detail', '', 'detail', 1, 1, 2, ''),
(133, 'main', 'main', 'Main', '', 'detail', 1, 1, 1, ''),
(134, 'rss', 'rss', 'Rss', '', 'detail', 0, 0, 0, ''),
(135, 'search', 'search', 'Search', '', 'detail', 1, 1, 3, ''),
(136, 'sitemap', 'sitemap', 'Sitemap', '', 'detail', 0, 0, 0, ''),
(137, 'main', 'main', 'Main', '', 'contact', 1, 0, 1, ''),
(138, 'phone', 'phone', 'Phone', '', 'category', 1, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modthemes`
--

CREATE TABLE `nv4_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modthemes`
--

INSERT INTO `nv4_vi_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'body-right', 'modern_v2'),
(0, 'left-main-right', 'BaoDanTri'),
(0, 'left-main-right', 'DanTri'),
(0, 'left-main-right', 'default'),
(0, 'left-main-right', 'themtet2018'),
(0, 'main', 'mobile_default'),
(4, 'body-right', 'modern_v2'),
(4, 'left-main-right', 'themtet2018'),
(4, 'main', 'default'),
(4, 'main', 'mobile_default'),
(4, 'main-right', 'BaoDanTri'),
(4, 'main-right', 'DanTri'),
(5, 'body-right', 'modern_v2'),
(5, 'left-main-right', 'BaoDanTri'),
(5, 'left-main-right', 'DanTri'),
(5, 'left-main-right', 'default'),
(5, 'left-main-right', 'themtet2018'),
(5, 'main', 'mobile_default'),
(6, 'body-right', 'modern_v2'),
(6, 'left-main-right', 'BaoDanTri'),
(6, 'left-main-right', 'DanTri'),
(6, 'left-main-right', 'default'),
(6, 'left-main-right', 'themtet2018'),
(6, 'main', 'mobile_default'),
(7, 'body-right', 'modern_v2'),
(7, 'left-main-right', 'BaoDanTri'),
(7, 'left-main-right', 'DanTri'),
(7, 'left-main-right', 'default'),
(7, 'left-main-right', 'themtet2018'),
(7, 'main', 'mobile_default'),
(8, 'body-right', 'modern_v2'),
(8, 'left-main-right', 'BaoDanTri'),
(8, 'left-main-right', 'DanTri'),
(8, 'left-main-right', 'default'),
(8, 'left-main-right', 'themtet2018'),
(8, 'main', 'mobile_default'),
(9, 'body-right', 'modern_v2'),
(9, 'left-main-right', 'BaoDanTri'),
(9, 'left-main-right', 'DanTri'),
(9, 'left-main-right', 'default'),
(9, 'left-main-right', 'themtet2018'),
(9, 'main', 'mobile_default'),
(10, 'body-right', 'modern_v2'),
(10, 'left-main-right', 'BaoDanTri'),
(10, 'left-main-right', 'DanTri'),
(10, 'left-main-right', 'default'),
(10, 'left-main-right', 'themtet2018'),
(11, 'body-right', 'modern_v2'),
(11, 'left-main-right', 'BaoDanTri'),
(11, 'left-main-right', 'DanTri'),
(11, 'left-main-right', 'default'),
(11, 'left-main-right', 'themtet2018'),
(11, 'main', 'mobile_default'),
(12, 'body-right', 'modern_v2'),
(12, 'left-main-right', 'BaoDanTri'),
(12, 'left-main-right', 'DanTri'),
(12, 'left-main-right', 'default'),
(12, 'left-main-right', 'themtet2018'),
(12, 'main', 'mobile_default'),
(19, 'body-right', 'modern_v2'),
(19, 'left-main-right', 'BaoDanTri'),
(19, 'left-main-right', 'DanTri'),
(19, 'left-main-right', 'themtet2018'),
(19, 'main', 'default'),
(19, 'main', 'mobile_default'),
(38, 'body-right', 'modern_v2'),
(38, 'left-main-right', 'BaoDanTri'),
(38, 'left-main-right', 'DanTri'),
(38, 'left-main-right', 'themtet2018'),
(38, 'main', 'default'),
(38, 'main', 'mobile_default'),
(39, 'body-right', 'modern_v2'),
(39, 'left-main-right', 'BaoDanTri'),
(39, 'left-main-right', 'DanTri'),
(39, 'left-main-right', 'default'),
(39, 'left-main-right', 'themtet2018'),
(39, 'main', 'mobile_default'),
(41, 'body-right', 'modern_v2'),
(41, 'left-main-right', 'BaoDanTri'),
(41, 'left-main-right', 'DanTri'),
(41, 'left-main-right', 'default'),
(41, 'left-main-right', 'themtet2018'),
(41, 'main', 'mobile_default'),
(47, 'body-right', 'modern_v2'),
(47, 'left-main-right', 'BaoDanTri'),
(47, 'left-main-right', 'DanTri'),
(47, 'left-main-right', 'themtet2018'),
(47, 'main', 'default'),
(47, 'main', 'mobile_default'),
(48, 'body-right', 'modern_v2'),
(48, 'left-main-right', 'BaoDanTri'),
(48, 'left-main-right', 'DanTri'),
(48, 'left-main-right', 'default'),
(48, 'left-main-right', 'themtet2018'),
(48, 'main', 'mobile_default'),
(49, 'body-right', 'modern_v2'),
(49, 'left-main-right', 'BaoDanTri'),
(49, 'left-main-right', 'DanTri'),
(49, 'left-main-right', 'default'),
(49, 'left-main-right', 'themtet2018'),
(49, 'main', 'mobile_default'),
(50, 'body-right', 'modern_v2'),
(50, 'left-main-right', 'BaoDanTri'),
(50, 'left-main-right', 'DanTri'),
(50, 'left-main-right', 'default'),
(50, 'left-main-right', 'themtet2018'),
(50, 'main', 'mobile_default'),
(51, 'body-right', 'modern_v2'),
(51, 'left-main-right', 'BaoDanTri'),
(51, 'left-main-right', 'DanTri'),
(51, 'left-main-right', 'default'),
(51, 'left-main-right', 'themtet2018'),
(52, 'body-right', 'modern_v2'),
(52, 'left-main', 'BaoDanTri'),
(52, 'left-main', 'DanTri'),
(52, 'left-main', 'themtet2018'),
(52, 'main', 'default'),
(52, 'main', 'mobile_default'),
(58, 'body-right', 'modern_v2'),
(58, 'left-main-right', 'BaoDanTri'),
(58, 'left-main-right', 'DanTri'),
(58, 'left-main-right', 'themtet2018'),
(58, 'main', 'default'),
(58, 'main', 'mobile_default'),
(59, 'body-right', 'modern_v2'),
(59, 'left-main-right', 'BaoDanTri'),
(59, 'left-main-right', 'DanTri'),
(59, 'left-main-right', 'default'),
(59, 'left-main-right', 'themtet2018'),
(59, 'main', 'mobile_default'),
(60, 'body-right', 'modern_v2'),
(60, 'left-main-right', 'BaoDanTri'),
(60, 'left-main-right', 'DanTri'),
(60, 'left-main-right', 'default'),
(60, 'left-main-right', 'themtet2018'),
(60, 'main', 'mobile_default'),
(61, 'body-right', 'modern_v2'),
(61, 'left-main', 'BaoDanTri'),
(61, 'left-main', 'DanTri'),
(61, 'left-main', 'themtet2018'),
(61, 'main', 'default'),
(61, 'main', 'mobile_default'),
(63, 'body-right', 'modern_v2'),
(63, 'left-main-right', 'BaoDanTri'),
(63, 'left-main-right', 'DanTri'),
(63, 'left-main-right', 'themtet2018'),
(63, 'main', 'default'),
(63, 'main', 'mobile_default'),
(64, 'body-right', 'modern_v2'),
(64, 'left-main-right', 'BaoDanTri'),
(64, 'left-main-right', 'DanTri'),
(64, 'left-main-right', 'themtet2018'),
(64, 'main', 'default'),
(64, 'main', 'mobile_default'),
(65, 'body-right', 'modern_v2'),
(65, 'left-main-right', 'BaoDanTri'),
(65, 'left-main-right', 'DanTri'),
(65, 'left-main-right', 'default'),
(65, 'left-main-right', 'themtet2018'),
(65, 'main', 'mobile_default'),
(66, 'body-right', 'modern_v2'),
(66, 'left-main-right', 'BaoDanTri'),
(66, 'left-main-right', 'DanTri'),
(66, 'left-main-right', 'default'),
(66, 'left-main-right', 'themtet2018'),
(66, 'main', 'mobile_default'),
(67, 'left-main-right', 'themtet2018'),
(68, 'body-right', 'modern_v2'),
(68, 'left-main-right', 'BaoDanTri'),
(68, 'left-main-right', 'DanTri'),
(68, 'left-main-right', 'default'),
(68, 'left-main-right', 'themtet2018'),
(68, 'main', 'mobile_default'),
(69, 'body-right', 'modern_v2'),
(69, 'left-main-right', 'BaoDanTri'),
(69, 'left-main-right', 'DanTri'),
(69, 'left-main-right', 'default'),
(69, 'left-main-right', 'themtet2018'),
(69, 'main', 'mobile_default'),
(70, 'left-main-right', 'themtet2018'),
(71, 'body-right', 'modern_v2'),
(71, 'left-main-right', 'BaoDanTri'),
(71, 'left-main-right', 'DanTri'),
(71, 'left-main-right', 'default'),
(71, 'left-main-right', 'themtet2018'),
(71, 'main', 'mobile_default'),
(72, 'body-right', 'modern_v2'),
(72, 'left-main-right', 'BaoDanTri'),
(72, 'left-main-right', 'DanTri'),
(72, 'left-main-right', 'default'),
(72, 'left-main-right', 'themtet2018'),
(72, 'main', 'mobile_default'),
(73, 'body-right', 'modern_v2'),
(73, 'left-main-right', 'BaoDanTri'),
(73, 'left-main-right', 'DanTri'),
(73, 'left-main-right', 'default'),
(73, 'left-main-right', 'themtet2018'),
(73, 'main', 'mobile_default'),
(74, 'body-right', 'modern_v2'),
(74, 'left-main-right', 'BaoDanTri'),
(74, 'left-main-right', 'DanTri'),
(74, 'left-main-right', 'default'),
(74, 'left-main-right', 'themtet2018'),
(74, 'main', 'mobile_default'),
(75, 'left-main-right', 'themtet2018'),
(76, 'body-right', 'modern_v2'),
(76, 'left-main-right', 'BaoDanTri'),
(76, 'left-main-right', 'DanTri'),
(76, 'left-main-right', 'themtet2018'),
(76, 'main', 'default'),
(76, 'main', 'mobile_default'),
(77, 'body-right', 'modern_v2'),
(77, 'left-main-right', 'BaoDanTri'),
(77, 'left-main-right', 'DanTri'),
(77, 'left-main-right', 'default'),
(77, 'left-main-right', 'themtet2018'),
(77, 'main', 'mobile_default'),
(78, 'body-right', 'modern_v2'),
(78, 'left-main-right', 'BaoDanTri'),
(78, 'left-main-right', 'DanTri'),
(78, 'left-main-right', 'default'),
(78, 'left-main-right', 'themtet2018'),
(78, 'main', 'mobile_default'),
(79, 'body-right', 'modern_v2'),
(79, 'left-main-right', 'BaoDanTri'),
(79, 'left-main-right', 'DanTri'),
(79, 'left-main-right', 'default'),
(79, 'left-main-right', 'themtet2018'),
(79, 'main', 'mobile_default'),
(80, 'left-main-right', 'themtet2018'),
(81, 'left-main-right', 'themtet2018'),
(82, 'left-main-right', 'themtet2018'),
(83, 'left-main-right', 'themtet2018'),
(84, 'left-main-right', 'themtet2018'),
(85, 'body-right', 'modern_v2'),
(85, 'left-main-right', 'BaoDanTri'),
(85, 'left-main-right', 'DanTri'),
(85, 'left-main-right', 'default'),
(85, 'left-main-right', 'themtet2018'),
(85, 'main', 'mobile_default'),
(86, 'body-right', 'modern_v2'),
(86, 'left-main-right', 'BaoDanTri'),
(86, 'left-main-right', 'DanTri'),
(86, 'left-main-right', 'default'),
(86, 'left-main-right', 'themtet2018'),
(86, 'main', 'mobile_default'),
(87, 'left-main-right', 'themtet2018'),
(88, 'left-main-right', 'themtet2018'),
(89, 'body-right', 'modern_v2'),
(89, 'left-main-right', 'BaoDanTri'),
(89, 'left-main-right', 'DanTri'),
(89, 'left-main-right', 'default'),
(89, 'left-main-right', 'themtet2018'),
(89, 'main', 'mobile_default'),
(90, 'left-main-right', 'themtet2018'),
(91, 'body-right', 'modern_v2'),
(91, 'left-main-right', 'BaoDanTri'),
(91, 'left-main-right', 'DanTri'),
(91, 'left-main-right', 'default'),
(91, 'left-main-right', 'themtet2018'),
(91, 'main', 'mobile_default'),
(92, 'body-right', 'modern_v2'),
(92, 'left-main-right', 'BaoDanTri'),
(92, 'left-main-right', 'DanTri'),
(92, 'left-main-right', 'default'),
(92, 'left-main-right', 'themtet2018'),
(92, 'main', 'mobile_default'),
(93, 'body-right', 'modern_v2'),
(93, 'left-main-right', 'BaoDanTri'),
(93, 'left-main-right', 'DanTri'),
(93, 'left-main-right', 'default'),
(93, 'left-main-right', 'themtet2018'),
(93, 'main', 'mobile_default'),
(94, 'left-main-right', 'themtet2018'),
(116, 'body-right', 'modern_v2'),
(116, 'left-main-right', 'BaoDanTri'),
(116, 'left-main-right', 'DanTri'),
(116, 'left-main-right', 'themtet2018'),
(116, 'main', 'default'),
(116, 'main', 'mobile_default'),
(117, 'body-right', 'modern_v2'),
(117, 'left-main-right', 'BaoDanTri'),
(117, 'left-main-right', 'DanTri'),
(117, 'left-main-right', 'default'),
(117, 'left-main-right', 'themtet2018'),
(117, 'main', 'mobile_default'),
(118, 'left-main-right', 'default'),
(119, 'body-right', 'modern_v2'),
(119, 'left-main-right', 'BaoDanTri'),
(119, 'left-main-right', 'DanTri'),
(119, 'left-main-right', 'themtet2018'),
(119, 'main', 'default'),
(119, 'main', 'mobile_default'),
(120, 'left-main-right', 'default'),
(123, 'left-main-right', 'default'),
(124, 'left-main-right', 'default'),
(125, 'left-main-right', 'default'),
(126, 'left-main-right', 'default'),
(127, 'body-right', 'modern_v2'),
(127, 'left-main-right', 'BaoDanTri'),
(127, 'left-main-right', 'DanTri'),
(127, 'left-main-right', 'default'),
(127, 'left-main-right', 'themtet2018'),
(127, 'main', 'mobile_default'),
(128, 'body-right', 'modern_v2'),
(128, 'left-main-right', 'BaoDanTri'),
(128, 'left-main-right', 'DanTri'),
(128, 'left-main-right', 'default'),
(128, 'left-main-right', 'themtet2018'),
(128, 'main', 'mobile_default'),
(129, 'left-main-right', 'default'),
(130, 'body-right', 'modern_v2'),
(130, 'left-main-right', 'BaoDanTri'),
(130, 'left-main-right', 'DanTri'),
(130, 'left-main-right', 'default'),
(130, 'left-main-right', 'themtet2018'),
(130, 'main', 'mobile_default'),
(131, 'left-main-right', 'default'),
(132, 'body-right', 'modern_v2'),
(132, 'left-main-right', 'BaoDanTri'),
(132, 'left-main-right', 'DanTri'),
(132, 'left-main-right', 'default'),
(132, 'left-main-right', 'themtet2018'),
(132, 'main', 'mobile_default'),
(133, 'body-right', 'modern_v2'),
(133, 'left-main-right', 'BaoDanTri'),
(133, 'left-main-right', 'DanTri'),
(133, 'left-main-right', 'default'),
(133, 'left-main-right', 'themtet2018'),
(133, 'main', 'mobile_default'),
(134, 'left-main-right', 'default'),
(135, 'body-right', 'modern_v2'),
(135, 'left-main-right', 'BaoDanTri'),
(135, 'left-main-right', 'DanTri'),
(135, 'left-main-right', 'default'),
(135, 'left-main-right', 'themtet2018'),
(135, 'main', 'mobile_default'),
(136, 'left-main-right', 'default'),
(137, 'left-main', 'default'),
(138, 'main', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modules`
--

CREATE TABLE `nv4_vi_modules` (
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `main_file` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `admin_file` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `admins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT 1,
  `sitemap` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modules`
--

INSERT INTO `nv4_vi_modules` (`title`, `module_file`, `module_data`, `module_upload`, `module_theme`, `custom_title`, `site_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `weight`, `act`, `admins`, `rss`, `sitemap`) VALUES
('category', 'category', 'category', 'category', 'category', 'Category', '', '', 1605432172, 1, 1, '', '', '', '', '6', 6, 1, '', 1, 1),
('news', 'news', 'news', 'news', 'news', 'Tin Tức', '', '', 1603626132, 1, 1, '', '', '', '', '6', 1, 1, '', 1, 1),
('users', 'users', 'users', 'users', 'users', 'Thành viên', '', 'Tài khoản', 1603626132, 1, 1, '', '', '', '', '6', 7, 1, '', 0, 1),
('order', 'order', 'order', 'order', 'order', 'Order', '', '', 1605604569, 1, 1, '', '', '', '', '6', 8, 1, '', 1, 1),
('detail', 'detail', 'detail', 'detail', 'detail', 'Detail', '', '', 1605622124, 1, 1, '', '', '', '', '6', 9, 1, '', 1, 1),
('contact', 'contact', 'contact', 'contact', 'contact', 'Contact', '', '', 1605624113, 1, 1, '', '', '', '', '6', 15, 1, '', 1, 1),
('banners', 'banners', 'banners', 'banners', 'banners', 'Quảng cáo', '', '', 1603626132, 1, 1, '', '', '', '', '6', 2, 1, '', 0, 0),
('seek', 'seek', 'seek', 'seek', 'seek', 'Tìm kiếm', '', '', 1603626132, 1, 0, '', '', '', '', '6', 5, 1, '', 0, 1),
('menu', 'menu', 'menu', 'menu', 'menu', 'Menu Site', '', '', 1603626132, 0, 1, '', '', '', '', '6', 3, 1, '', 0, 1),
('feeds', 'feeds', 'feeds', 'feeds', 'feeds', 'Thông Báo', '', 'Thông Báo', 1603626132, 1, 1, '', '', '', '', '6', 11, 2, '', 0, 0),
('page', 'page', 'page', 'page', 'page', 'Page', '', '', 1603626132, 1, 1, '', '', '', '', '6', 4, 1, '', 1, 0),
('comment', 'comment', 'comment', 'comment', 'comment', 'Bình luận', '', 'Quản lý bình luận', 1603626132, 0, 1, '', '', '', '', '6', 12, 2, '', 0, 1),
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'freecontent', 'Giới thiệu sản phẩm', '', '', 1603626132, 0, 1, '', '', '', '', '6', 13, 2, '', 0, 1),
('two-step-verification', 'two-step-verification', 'two_step_verification', 'two_step_verification', 'two-step-verification', 'Xác thực hai bước', '', '', 1603626132, 1, 0, '', '', '', '', '6', 14, 2, '', 0, 1),
('shops', 'shops', 'shops', 'shops', 'shops', 'Quản lý sản phẩm', '', '', 1604108708, 1, 0, '', '', '', '', '6', 10, 2, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_1`
--

CREATE TABLE `nv4_vi_news_1` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_1`
--

INSERT INTO `nv4_vi_news_1` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0),
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 2, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 0, 1, 0, 0, 0, 0, '', 0),
(11, 1, '1', 0, 1, '', 4, 1445309676, 1445309676, 1, 3, 1445309520, 0, 2, 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 'nukeviet-duoc-uu-tien-mua-sam-su-dung-trong-co-quan-to-chuc-nha-nuoc', 'Ngày 5/12/2014, Bộ trưởng Bộ TT&TT Nguyễn Bắc Son đã ký ban hành Thông tư 20/2014/TT-BTTTT (Thông tư 20) quy định về các sản phẩm phần mềm nguồn mở (PMNM) được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước. NukeViet (phiên bản 3.4.02 trở lên) là phần mềm được nằm trong danh sách này.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 1, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 7, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(16, 1, '1', 0, 1, '', 0, 1445391182, 1445394133, 1, 9, 1445391120, 0, 2, 'NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016', 'nukeviet-duoc-bo-gd-dt-dua-vao-huong-dan-thuc-hien-nhiem-vu-cntt-nam-hoc-2015-2016', 'Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, NukeViet được đưa vào các hạng mục: Tập huấn sử dụng phần mềm nguồn mở cho giáo viên và cán bộ quản lý giáo dục; Khai thác, sử dụng và dạy học; đặc biệt phần &quot;khuyến cáo khi sử dụng các hệ thống CNTT&quot; có chỉ rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.', 'nukeviet-cms.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 10, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 12, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 0, 14, 0, 0, 0, 0, '', 0),
(21, 1, '1,12', 0, 1, 'truongdz96', 0, 1605174449, 1605174449, 1, 16, 1605174240, 0, 2, 'Tin xã hội', 'tin-xa-hoi', '', '2020_11/cach-lam-chuong-cho.jpg', 'Cách làm chuồng chó', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(22, 1, '1,12', 0, 1, 'truong96', 0, 1605174650, 1605174650, 1, 17, 1605174540, 0, 2, 'Gia đình cô gái &quot;bùng&quot; 150 mâm cỗ ở Điện Biên hứa bán đất để trả nợ', 'gia-dinh-co-gai-bung-150-mam-co-o-dien-bien-hua-ban-dat-de-tra-no', '', '2020_11/dantri_1.jpeg', '', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0),
(23, 1, '1,8', 0, 1, 'truong96', 0, 1605177368, 1605177726, 1, 18, 1605177180, 0, 2, 'Tối 11&#x002F;11, lãnh đạo huyện Bắc Trà My, Quảng Nam cho biết, đến 21h cùng ngày, lực lượng chức năng vẫn chưa tìm thấy nạn nhân được cho là mất tích trong vụ sạt lở đất xảy ra trong chiều cùng ngày.', 'nhan-chung-ke-vu-sat-lo-nui-kinh-hoang-nguoi-chay-thuc-mang', '', '2020_11/1-1605091610535.jpg', '', 1, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_2`
--

CREATE TABLE `nv4_vi_news_2` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_2`
--

INSERT INTO `nv4_vi_news_2` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(18, 2, '2', 0, 1, 'VINADES', 0, 1453194455, 1453194455, 1, 13, 1453194455, 0, 2, 'NukeViet 4.0 có gì mới?', 'nukeviet-4-0-co-gi-moi', 'NukeViet 4 là phiên bản NukeViet được cộng đồng đánh giá cao, hứa hẹn nhiều điểm vượt trội về công nghệ đến thời điểm hiện tại. NukeViet 4 thay đổi gần như hoàn toàn từ nhân hệ thống đến chức năng, giao diện người dùng. Vậy, có gì mới trong phiên bản này?', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0),
(19, 2, '2', 0, 1, 'VINADES', 0, 1501837620, 1501837620, 1, 14, 1501837620, 0, 2, 'NukeViet 4.2 có gì mới?', 'nukeviet-4-2-co-gi-moi', 'NukeViet 4.2 là phiên bản nâng cấp của phiên bản NukeViet 4.0 tập trung vào việc fix các vấn đề bất cập còn tồn tại của NukeViet 4.0, Thêm các tính năng mới để tăng cường bảo mật của hệ thống cũng như tối ưu trải nghiệm của người dùng.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 1, 2, 0, 0, 0, 0, '', 0),
(20, 2, '2', 0, 1, 'VINADES', 0, 1510215907, 1510215907, 1, 15, 1510215907, 0, 2, 'NukeViet 4.3 có gì mới?', 'nukeviet-4-3-co-gi-moi', 'NukeViet 4.3 là phiên bản nâng cấp của phiên bản NukeViet 4.2 tập trung vào việc fix các vấn đề bất cập còn tồn tại, tối ưu trải nghiệm của người dùng.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 1, 2, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_8`
--

CREATE TABLE `nv4_vi_news_8` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_8`
--

INSERT INTO `nv4_vi_news_8` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0),
(23, 1, '1,8', 0, 1, 'truong96', 0, 1605177368, 1605177726, 1, 18, 1605177180, 0, 2, 'Tối 11&#x002F;11, lãnh đạo huyện Bắc Trà My, Quảng Nam cho biết, đến 21h cùng ngày, lực lượng chức năng vẫn chưa tìm thấy nạn nhân được cho là mất tích trong vụ sạt lở đất xảy ra trong chiều cùng ngày.', 'nhan-chung-ke-vu-sat-lo-nui-kinh-hoang-nguoi-chay-thuc-mang', '', '2020_11/1-1605091610535.jpg', '', 1, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_9`
--

CREATE TABLE `nv4_vi_news_9` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_9`
--

INSERT INTO `nv4_vi_news_9` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 2, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 0, 1, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_10`
--

CREATE TABLE `nv4_vi_news_10` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_10`
--

INSERT INTO `nv4_vi_news_10` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 10, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_11`
--

CREATE TABLE `nv4_vi_news_11` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_11`
--

INSERT INTO `nv4_vi_news_11` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(12, 11, '11', 0, 1, 'Vũ Bích Ngọc', 0, 1445391061, 1445394203, 1, 4, 1445391000, 0, 2, 'Công ty VINADES tuyển dụng nhân viên kinh doanh', 'cong-ty-vinades-tuyen-dung-nhan-vien-kinh-doanh', 'Công ty cổ phần phát triển nguồn mở Việt Nam là đơn vị chủ quản của phần mềm mã nguồn mở NukeViet - một mã nguồn được tin dùng trong cơ quan nhà nước, đặc biệt là ngành giáo dục. Chúng tôi cần tuyển 05 nhân viên kinh doanh cho lĩnh vực này.', 'tuyen-dung-nvkd.png', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(8, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391089, 1445394192, 1, 5, 1445391060, 0, 2, 'Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet', 'Tuyen-dung-chuyen-vien-do-hoa', 'Bạn đam mê nguồn mở? Bạn là chuyên gia đồ họa? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(9, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391090, 1445394193, 1, 6, 1445391060, 0, 2, 'Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về front-end (HTML/CSS/JS)? Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 7, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(15, 11, '11', 0, 1, 'Trần Thị Thu', 0, 1445391135, 1445394444, 1, 8, 1445391120, 0, 2, 'Học việc tại công ty VINADES', 'hoc-viec-tai-cong-ty-vinades', 'Công ty cổ phần phát triển nguồn mở Việt Nam tạo cơ hội việc làm và học việc miễn phí cho những ứng viên có đam mê thiết kế web, lập trình PHP… được học tập và rèn luyện cùng đội ngũ lập trình viên phát triển NukeViet.', 'hoc-viec-tai-cong-ty-vinades.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(7, 11, '11', 0, 1, 'Phạm Quốc Tiến', 2, 1453192400, 1453192400, 1, 11, 1453192400, 0, 2, 'Tuyển dụng lập trình viên PHP phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-PHP', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về PHP và MySQL? Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_12`
--

CREATE TABLE `nv4_vi_news_12` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_12`
--

INSERT INTO `nv4_vi_news_12` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 12, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 0, 14, 0, 0, 0, 0, '', 0),
(21, 1, '1,12', 0, 1, 'truongdz96', 0, 1605174449, 1605174449, 1, 16, 1605174240, 0, 2, 'Tin xã hội', 'tin-xa-hoi', '', '2020_11/cach-lam-chuong-cho.jpg', 'Cách làm chuồng chó', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(22, 1, '1,12', 0, 1, 'truong96', 0, 1605174650, 1605174650, 1, 17, 1605174540, 0, 2, 'Gia đình cô gái &quot;bùng&quot; 150 mâm cỗ ở Điện Biên hứa bán đất để trả nợ', 'gia-dinh-co-gai-bung-150-mam-co-o-dien-bien-hua-ban-dat-de-tra-no', '', '2020_11/dantri_1.jpeg', '', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_admins`
--

CREATE TABLE `nv4_vi_news_admins` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `catid` smallint(5) NOT NULL DEFAULT 0,
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  `add_content` tinyint(4) NOT NULL DEFAULT 0,
  `pub_content` tinyint(4) NOT NULL DEFAULT 0,
  `edit_content` tinyint(4) NOT NULL DEFAULT 0,
  `del_content` tinyint(4) NOT NULL DEFAULT 0,
  `app_content` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_block`
--

CREATE TABLE `nv4_vi_news_block` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_block`
--

INSERT INTO `nv4_vi_news_block` (`bid`, `id`, `weight`) VALUES
(1, 1, 1),
(2, 17, 4),
(2, 16, 5),
(2, 15, 6),
(2, 14, 7),
(2, 12, 8),
(2, 11, 9),
(2, 1, 10),
(2, 6, 11),
(2, 21, 3),
(2, 22, 2),
(2, 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_block_cat`
--

CREATE TABLE `nv4_vi_news_block_cat` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT 0,
  `numbers` smallint(5) NOT NULL DEFAULT 10,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_block_cat`
--

INSERT INTO `nv4_vi_news_block_cat` (`bid`, `adddefault`, `numbers`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 0, 4, 'Tin tiêu điểm', 'Tin-tieu-diem', '', 'Tin tiêu điểm', 1, '', 1279945710, 1279956943),
(2, 1, 4, 'Tin mới nhất', 'Tin-moi-nhat', '', 'Tin mới nhất', 2, '', 1279945725, 1279956445);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_cat`
--

CREATE TABLE `nv4_vi_news_cat` (
  `catid` smallint(5) UNSIGNED NOT NULL,
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT 0,
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sort` smallint(5) NOT NULL DEFAULT 0,
  `lev` smallint(5) NOT NULL DEFAULT 0,
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT 0,
  `subcatid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT 3,
  `newday` tinyint(2) UNSIGNED NOT NULL DEFAULT 2,
  `featured` int(11) NOT NULL DEFAULT 0,
  `ad_block_cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` smallint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_cat`
--

INSERT INTO `nv4_vi_news_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `numlinks`, `newday`, `featured`, `ad_block_cat`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`, `status`) VALUES
(1, 0, 'Tin tức', '', 'Tin-tuc', '', '', '', 0, 1, 1, 0, 'viewcat_main_right', 3, '8,12,9', 4, 2, 0, '', '', '', 1274986690, 1274986690, '6', 1),
(2, 0, 'Sản phẩm', '', 'San-pham', '', '', '', 0, 2, 5, 0, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274986705, 1274986705, '6', 1),
(8, 1, 'Thông cáo báo chí', '', 'thong-cao-bao-chi', '', '', '', 0, 1, 2, 1, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987105, 1274987244, '6', 1),
(9, 1, 'Tin công nghệ', '', 'Tin-cong-nghe', '', '', '', 0, 3, 4, 1, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987212, 1274987212, '6', 1),
(10, 0, 'Đối tác', '', 'Doi-tac', '', '', '', 0, 3, 9, 0, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987460, 1274987460, '6', 1),
(11, 0, 'Tuyển dụng', '', 'Tuyen-dung', '', '', '', 0, 4, 12, 0, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987538, 1274987538, '6', 1),
(12, 1, 'Bản tin nội bộ', '', 'Ban-tin-noi-bo', '', '', '', 0, 2, 3, 1, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987902, 1274987902, '6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_config_post`
--

CREATE TABLE `nv4_vi_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_detail`
--

CREATE TABLE `nv4_vi_news_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `titlesite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourcetext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `files` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgposition` tinyint(1) NOT NULL DEFAULT 1,
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `copyright` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_send` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_print` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_save` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_detail`
--

INSERT INTO `nv4_vi_news_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `keywords`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(1, '', '', '<p style=\"text-align: justify;\">Để chuyên nghiệp hóa việc phát hành mã nguồn mở NukeViet, Ban quản trị NukeViet quyết định thành lập doanh nghiệp chuyên quản NukeViet mang tên Công ty cổ phần Phát triển nguồn mở Việt Nam (Viết tắt là VINADES.,JSC), chính thức ra mắt vào ngày 25-2-2010 (trụ sở tại Hà Nội) nhằm phát triển, phổ biến hệ thống NukeViet tại Việt Nam.<br /> <br /> Theo ông Nguyễn Anh Tú, Chủ tịch HĐQT VINADES, công ty sẽ phát triển bộ mã nguồn NukeViet nhất quán theo con đường mã nguồn mở đã chọn, chuyên nghiệp và quy mô hơn bao giờ hết. Đặc biệt là hoàn toàn miễn phí đúng tinh thần mã nguồn mở quốc tế.<br /> <br /> NukeViet là một hệ quản trị nội dung mã nguồn mở (Opensource Content Management System) thuần Việt từ nền tảng PHP-Nuke và cơ sở dữ liệu MySQL. Người sử dụng thường gọi NukeViet là portal vì nó có khả năng tích hợp nhiều ứng dụng trên nền web, cho phép người sử dụng có thể dễ dàng xuất bản và quản trị các nội dung của họ lên internet hoặc intranet.<br /> <br /> NukeViet cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng thêm các module, block... tạo sự dễ dàng cài đặt, quản lý, ngay cả với những người mới tiếp cận với website. Người dùng có thể tìm hiểu thêm thông tin và tải về sản phẩm tại địa chỉ http://nukeviet.vn</p><blockquote> <p style=\"text-align: justify;\"> <em>Thông tin ra mắt công ty VINADES có thể tìm thấy trên trang 7 báo Hà Nội Mới ra ngày 25/02/2010 (<a href=\"http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm\" target=\"_blank\">xem chi tiết</a>), Bản tin tiếng Anh của đài tiếng nói Việt Nam ngày 26/02/2010 (<a href=\"http://english.vovnews.vn/Home/First-opensource-company-starts-operation/20102/112960.vov\" target=\"_blank\">xem chi tiết</a>); trang 7 báo An ninh Thủ Đô số 2858 ra vào thứ 2 ngày 01/03/2010 và các trang tin tức, báo điện tử khác.</em></p></blockquote>', '', 'http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm', NULL, 2, '', 0, 1, 1, 1),
(6, '', '', '<div style=\"text-align: justify;\">Tính đến năm 2015, ước tính có hơn 10.000 website đang sử dụng NukeViet. Nhu cầu triển khai NukeViet không chỉ dừng lại ở các cá nhân, doanh nghiệp, cơ sở giáo dục mà đã lan rộng ra khối chính phủ.</div><div style=\"text-align: justify;\"><br  />Cộng đồng NukeViet cũng đã lớn mạnh hơn trước. Nếu như đầu năm 2010, ngoài Công ty VINADES chỉ có một vài công ty cung cấp dịch vụ cho NukeViet nhưng không chuyên, thì theo thống kê năm 2015 đã có hàng trăm doanh nghiệp đang cung cấp dịch vụ có liên quan đến NukeViet như: đào tạo NukeViet, thiết kế web, phát triển phần mềm, cung cấp giao diện, module... trên nền tảng NukeViet. Đặc biệt có nhiều doanh nghiệp hoàn toàn cung cấp dịch vụ thiết kế web, cung cấp giao diện, module... sử dụng nền tảng NukeViet. Nhiều sản phẩm phái sinh từ NukeViet đã ra đời, NukeViet được phát triển thành nhiều phần mềm quản lý sử dụng trên mạng LAN hay trên internet, được phát triển thành các phần mềm dùng riêng hay sử dụng như một nền tảng để cung cấp dịch vụ online, thậm chí đã được thử nghiệm tích hợp vào trong các thiết bị phần cứng để bán cùng thiết bị (NukeViet Captive Portal - dùng để quản lý người dùng truy cập internet, tích hợp trong thiết bị quản lý wifi)...<br  /><br  />Tuy nhiên, cùng với những cơ hội, cộng đồng NukeViet đang đứng trước một thách thức mới. NukeViet cần tập hợp tất cả các doanh nghiệp, tổ chức và cá nhân đang cung cấp dịch vụ cho NukeViet và liên kết các đơn vị này với nhau để giúp nhau chuyên nghiệp hóa, cùng nhau chia sẻ những cơ hội kinh doanh và trở lên lớn mạnh hơn.<br  /><br  />Nếu cộng đồng NukeViet có 500 công ty siêu nhỏ chỉ 2-3 người và những công ty này đứng riêng rẽ như hiện nay thì NukeViet mãi bé nhỏ và sẽ không làm được việc gì. Nhưng nếu 500 công ty này biết nhau, cùng làm một số việc, cùng tham gia phát triển NukeViet, đó sẽ là sức mạnh rất lớn cho một phần mềm nguồn mở như NukeViet, và đó cũng là cơ hội rất lớn để các công ty nhỏ ấy trở lên chuyên nghiệp và vững mạnh.<br  /><br  />Cho dù bạn là doanh nghiệp hay một nhóm kinh doanh, cho dù bạn đang cung cấp bất kỳ dịch vụ có liên quan trực tiếp đến NukeViet như: đào tạo NukeViet, thiết kế web, phát triển phần mềm, cung cấp giao diện, module... hoặc gián tiếp có liên quan đến NukeViet (ví dụ các công ty hosting, các nhà cung cấp dịch vụ thanh toán điện tử...). Bạn đều là một thành phần quan trọng của NukeViet. Dù bạn là công ty to hay một nhóm nhỏ, hãy đăng ký vào danh sách các đối tác của NukeViet để thiết lập kênh liên lạc với các doanh nghiệp khác trong cộng đồng NukeViet và nhận sự hỗ trợ từ Ban Quản Trị NukeViet cũng như từ các cơ quan nhà nước đang có nhu cầu tìm kiếm các đơn vị cung ứng dịch vụ cho NukeViet.<br  /><br  />Hãy gửi email cho Ban Quản Trị NukeViet về địa chỉ: admin@nukeviet.vn để đăng ký vào danh sách các đơn vị hỗ trợ NukeViet.<br  /><br  />Tiêu đề email: Đăng ký vào danh sách các đơn vị cung cấp dịch vụ dựa trên NukeViet<br  />Nội dung email: Thông tin về đơn vị, dịch vụ cung cấp.<br  /><br  />Hoặc gửi yêu cầu tại đây: <a href=\"http://nukeviet.vn/vi/contact/\" target=\"_blank\">http://nukeviet.vn/vi/contact/</a><br  /><br  />Mọi yêu cầu sẽ được phản hồi trong vòng 24h. Trường hợp không nhận được phản hồi, hãy liên hệ với Ban Quản Trị NukeViet qua các kênh liên lạc khác như:<br  /><br  />- Diễn đàn doanh nghiệp NukeViet: <a href=\"http://forum.nukeviet.vn/viewforum.php?f=4\" target=\"_blank\">http://forum.nukeviet.vn/viewforum.php?f=4</a><br  />- Fanpage NukeViet trên FaceBook: <a href=\"http://fb.com/nukeviet/\" target=\"_blank\">http://fb.com/nukeviet/</a><br  /><br  />Vui lòng truy cập địa chỉ sau để xem danh sách các đơn vị: <a href=\"https://nukeviet.vn/vi/partner/\" target=\"_blank\">https://nukeviet.vn/vi/partner/</a></div>', '', 'http://vinades.vn/vi/news/thong-cao-bao-chi/Thu-moi-hop-tac-6/', NULL, 2, '', 0, 1, 1, 1),
(7, '', '', 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html\">Lập trình viên PHP và MySQL.</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html\">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html\">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style=\"font-size:16px;\"><strong>1. Vị trí dự tuyển:</strong></span> Lập trình viên PHP và MySQL<br /><br /><span style=\"font-size:16px;\"><strong>2. Mô tả công việc:</strong></span><ul><li>Phát triển hệ thống NukeViet.</li><li>Phân tích yêu cầu và lập trình riêng cho các dự án cụ thể.</li><li>Thực hiện các công đoạn để dưa website vào hoạt động như upload dữ liệu lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng, trải nghiệm người dùng của sản phẩm trong khi sản phẩm hoạt động.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><span style=\"font-size:16px;\"><strong>3. Yêu cầu:</strong></span><ul><li>Nắm vững kiến thức hướng đối tượng, cấu trúc dữ liệu và giải thuật.</li><li>Có kinh nghiệm về PHP và các hệ cơ sở dữ liệu MySQL.…</li><li>Tư duy lập trình tốt, thiết kế CSDL chuẩn, biết xử lý nhanh các vấn đề khi phát sinh nghiệp vụ mới.</li><li>Sửa được các lỗi, nâng cấp tính năng cho các module đã có. 6. Viết module mới.</li><li>Biết đưa website lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo.</li><li>Đam mê công việc về lập trình web.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt.</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng.</li></ul><br /><span style=\"font-size:16px;\"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style=\"font-size:16px;\"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style=\"font-size:16px;\"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style=\"font-size:16px;\"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (download tại đây: <strong><a href=\"http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-ky-thuat-vien/\" target=\"_blank\"><u>Mẫu lý lịch ứng viên</u></a></strong>)</strong></em> và gửi về hòm thư <a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a><br /><br /><span style=\"font-size:16px;\"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style=\"text-align: justify;\"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style=\"text-align: justify;\"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-24-85872007 - Fax: +84-24-35500914<br />- Email: <a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a> - Website: <a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></div></blockquote>', '', 'http://vinades.vn/vi/news/Tuyen-dung/', NULL, 2, '', 0, 1, 1, 1),
(8, '', '', 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html\">Lập trình viên PHP và MySQL.</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html\">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html\">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style=\"font-size:16px;\"><strong>1. Vị trí dự tuyển:</strong></span> Chuyên viên đồ hoạ.<br /><br /><span style=\"font-size:16px;\"><strong>2. Mô tả công việc:</strong></span><br /><br /><em><strong>Công việc chính:</strong></em><ul><li>Thiết kế layout, banner, logo website theo yêu cầu của dự án.</li><li>Đưa ra sản phẩm sáng tạo dựa trên ý tưởng của khách hàng.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><em><strong>Ngoài ra bạn cần có khả năng thực hiện các công việc sau:</strong></em><ul><li>Cắt và ghép giao diện cho hệ thống.</li><li>Valid CSS, xHTML.</li></ul><br /><span style=\"font-size:16px;\"><strong>3. Yêu cầu:</strong></span><ul><li>Sử dụng thành thạo phần mềm thiết kế: Photoshop ngoài ra cần biết cách sử dụng các phần mềm thiết kế khác là một lợi thế.</li><li>Có kiến thức cơ bản về thiết kế website: Am hiểu các dạng layout, thành phần của một website.</li><li>Có kinh nghiệm, kỹ năng thiết kế giao diện web, logo, banner.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo, tính thẩm mỹ tốt</li><li>Đam mê công việc thiết kế và website.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt</li><li>Am hiểu về Responsive và có thể thiết kế giao diện, layout trên mobile (Boostrap).</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Sử dụng thành thạo HTML5, CSS3 &amp; Javascrip/Jquery và Xtemplate</li><li>Khả năng chuyển PSD sang NukeViet tốt.</li><li>Hiểu rõ và nắm chắc cách làm Theme/Template.</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng</li></ul><br /><span style=\"font-size:16px;\"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style=\"font-size:16px;\"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style=\"font-size:16px;\"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style=\"font-size:16px;\"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (download tại đây: <strong><a href=\"http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-ky-thuat-vien/\" target=\"_blank\"><u>Mẫu lý lịch ứng viên</u></a></strong>)</strong></em> và gửi về hòm thư <a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a><br /><br /><span style=\"font-size:16px;\"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style=\"text-align: justify;\"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style=\"text-align: justify;\"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-24-85872007 - Fax: +84-24-35500914<br />- Email: <a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a> - Website: <a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></div></blockquote>', '', '', NULL, 2, '', 0, 1, 1, 1),
(9, '', '', 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html\">Lập trình viên PHP và MySQL.</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html\">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html\">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style=\"font-size:16px;\"><strong>1. Vị trí dự tuyển:</strong></span> Lập trình viên front-end (HTML/ CSS/ JS)<br /><br /><span style=\"font-size:16px;\"><strong>2. Mô tả công việc:</strong></span><ul><li>Cắt, làm giao diện website từ bản thiết kế (sử dụng Photoshop) trên nền hệ thống NukeViet.</li><li>Tham gia vào việc phát triển Front-End các ứng dụng nền web.</li><li>Thực hiện các công đoạn để dưa website vào hoạt động như upload dữ liệu lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng, trải nghiệm người dùng, thẩm mỹ của sản phẩm trong khi sản phẩm hoạt động Tham mưu, tư vấn về chất lượng, thẩm mỹ, trải nghiệm người dùng về các sản phẩm.</li><li>Đảm bảo website theo các tiêu chuẩn web (W3c, XHTML, CSS 3.0, Tableless, no inline style, … ).</li><li>Đảm bảo website hiển thị đúng trên tất cả các trình duyệt.</li><li>Đảm bảo website theo chuẩn “Responsive Web Design.</li><li>Đảm bảo việc đưa sản phẩm thiết kế đến người dùng cuối cùng một cách chính xác và đẹp.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><span style=\"font-size:16px;\"><strong>3. Yêu cầu:</strong></span><ul><li>Có kiến thức cơ bản về thiết kế website: Am hiểu các dạng layout, thành phần của một website.</li><li>Hiểu rõ và nắm chắc cách làm Theme/Template.</li><li>Sử dụng thành thạo HTML5, CSS3 &amp; Javascrip/Jquery và Xtemplate</li><li>Khả năng chuyển PSD sang NukeViet tốt.</li><li>Biết đưa website lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo, tính thẩm mỹ tốt.</li><li>Đam mê công việc về web.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt.</li><li>Am hiểu về Responsive và có thể thiết kế giao diện, layout trên mobile (Boostrap).</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng.</li></ul><br /><span style=\"font-size:16px;\"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style=\"font-size:16px;\"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style=\"font-size:16px;\"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style=\"font-size:16px;\"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (download tại đây: <strong><a href=\"http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-ky-thuat-vien/\" target=\"_blank\"><u>Mẫu lý lịch ứng viên</u></a></strong>)</strong></em> và gửi về hòm thư <a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a><br /><br /><span style=\"font-size:16px;\"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style=\"text-align: justify;\"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style=\"text-align: justify;\"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-24-85872007 - Fax: +84-24-35500914<br />- Email: <a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a> - Website: <a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></div></blockquote>', '', '', NULL, 2, '', 0, 1, 1, 1),
(10, '', '', 'Cả hội trường như vỡ òa, rộn tiếng vỗ tay, tiếng cười nói chúc mừng các nhà khoa học, các nhóm tác giả đoạt Giải thưởng Nhân tài Đất Việt năm 2011. Năm thứ 7 liên tiếp, Giải thưởng đã phát hiện và tôn vinh nhiều tài năng của đất nước.<div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/01_b7d3f.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Sân khấu trước lễ trao giải.</span></div><div> &nbsp;</div><div align=\"center\"> &nbsp;</div><div align=\"left\"> Cơ cấu Giải thưởng của Nhân tài Đất Việt 2011 trong lĩnh vực CNTT bao gồm 2 hệ thống giải dành cho “Sản phẩm có tiềm năng ứng dụng” và “Sản phẩm đã ứng dụng rộng rãi trong thực tế”. Mỗi hệ thống giải sẽ có 1 giải Nhất, 1 giải Nhì và 1 giải Ba với trị giá giải thưởng tương đương là 100 triệu đồng, 50 triệu đồng và 30 triệu đồng cùng phần thưởng của các đơn vị tài trợ.</div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/03_f19bd.jpg\" width=\"350\" /></div> <div align=\"center\"> Nhiều tác giả, nhóm tác giả đến lễ trao giải từ rất sớm.</div></div><p> Giải thưởng Nhân tài Đất Việt 2011 trong lĩnh vực Khoa học Tự nhiên được gọi chính thức là Giải thưởng Khoa học Tự nhiên Việt Nam sẽ có tối đa 6 giải, trị giá 100 triệu đồng/giải dành cho các lĩnh vực: Toán học, Cơ học, Vật lý, Hoá học, Các khoa học về sự sống, Các khoa học về trái đất (gồm cả biển) và môi trường, và các lĩnh vực khoa học liên ngành hoặc đa ngành của hai hoặc nhiều ngành nói trên. Viện Khoa học và Công nghệ Việt Nam thành lập Hội đồng giám khảo gồm các nhà khoa học tự nhiên hàng đầu trong nước để thực hiện việc đánh giá và trao giải.</p><div> Sau thành công của việc trao Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y dược năm 2010, Ban Tổ chức tiếp tục tìm kiếm những chủ nhân xứng đáng cho Giải thưởng này trong năm 2011.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/07_78b85.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam Lê Khả Phiêu tới&nbsp;dự Lễ trao giải.</span></div><div> &nbsp;</div><div> 45 phút trước lễ trao giải, không khí tại Cung Văn hóa Hữu nghị Việt - Xô đã trở nên nhộn nhịp. Sảnh phía trước Cung gần như chật kín. Rất đông bạn trẻ yêu thích công nghệ thông tin, sinh viên các trường đại học đã đổ về đây, cùng với đó là những bó hoa tươi tắn sẽ được dành cho các tác giả, nhóm tác giả đoạt giải.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/09_aef87.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Phó Chủ tịch nước CHXHCN Việt Nam Nguyễn Thị Doan.</span></div><div> &nbsp;</div><div> Các vị khách quý cũng đến từ rất sớm. Tới tham dự lễ trao giải năm nay có ông Lê Khả Phiêu, nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam; bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCN Việt Nam; ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam; ông Nguyễn Bắc Son, Bộ trưởng Bộ Thông tin và Truyền thông; ông Đặng Ngọc Tùng, Chủ tịch Tổng Liên đoàn lao động Việt Nam; ông Phạm Văn Linh, Phó trưởng ban Tuyên giáo Trung ương; ông Đỗ Trung Tá, Phái viên của Thủ tướng Chính phủ về CNTT, Chủ tịch Hội đồng Khoa học công nghệ quốc gia; ông Nguyễn Quốc Triệu, nguyên Bộ trưởng Bộ Y tế, Trưởng Ban Bảo vệ Sức khỏe TƯ; bà Cù Thị Hậu, Chủ tịch Hội người cao tuổi Việt Nam; ông Lê Doãn Hợp, nguyên Bộ trưởng Bộ Thông tin Truyền thông, Chủ tịch Hội thông tin truyền thông số…</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/08_ba46c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Bộ trưởng Bộ Thông tin và Truyền thông Nguyễn Bắc Son.</span></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/06_29592.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Giáo sư - Viện sỹ Nguyễn Văn Hiệu.</span></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/04_051f2.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nguyên Bộ trưởng Bộ Y tế Nguyễn Quốc Triệu.</span></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/05_c7ea4.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam.</span></div><p> Do tuổi cao, sức yếu hoặc bận công tác không đến tham dự lễ trao giải nhưng Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang cũng gửi lẵng hoa đến chúc mừng lễ trao giải.</p><div> Đúng 20h, Lễ trao giải bắt đầu với bài hát “Nhân tài Đất Việt” do ca sỹ Thái Thùy Linh cùng ca sĩ nhí và nhóm múa biểu diễn. Các nhóm tác giả tham dự Giải thưởng năm 2011 và những tác giả của các năm trước từ từ bước ra sân khấu trong tiếng vỗ tay tán dương của khán giả.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/12_74abf.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <div> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN15999_3e629.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Tiết mục mở màn Lễ trao giải.</span></div><p> Trước Lễ trao giải Giải thưởng Nhân tài Đất Việt năm 2011, Đại tướng Võ Nguyên Giáp, Chủ tịch danh dự Hội Khuyến học Việt Nam, đã gửi thư chúc mừng, khích lệ Ban tổ chức Giải thưởng cũng như các nhà khoa học, các tác giả tham dự.</p><blockquote> <p> <em><span style=\"FONT-STYLE: italic\">Hà Nội, ngày 16 tháng 11 năm 2011</span></em></p> <div> <em>Giải thưởng “Nhân tài đất Việt” do Hội Khuyến học Việt Nam khởi xướng đã bước vào năm thứ bảy (2005 - 2011) với ba lĩnh vực: Công nghệ thông tin, Khoa học tự nhiên và Y dược.</em></div></blockquote><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/thuDaituong1_767f4.jpg\" style=\"MARGIN: 5px\" width=\"400\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Thư của Đại tướng Võ Nguyên Giáp gửi BTC Giải thưởng Nhân tài đất Việt.</span></div><blockquote> <p> <em>Tôi gửi lời chúc mừng các nhà khoa học và các thí sinh được nhận giải thưởng “Nhân tài đất Việt” năm nay.</em></p> <p> <em>Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</em></p> <p> <em>Nhân ngày “Nhà giáo Việt Nam”, chúc Hội Khuyến học Việt nam, chúc các thầy giáo và cô giáo, với tâm huyết và trí tuệ của mình, sẽ đóng góp xứng đáng vào công cuộc đổi mới căn bản và toàn diện nền giáo dục nước nhà, để cho nền giáo dục Việt Nam thực sự là cội nguồn của nguyên khí quốc gia, đảm bảo cho mọi nhân cách và tài năng đất Việt được vun đắp và phát huy vì sự trường tồn, sự phát triển tiến bộ và bền vững của đất nước trong thời đại toàn cầu hóa và hội nhập quốc tế.</em></p> <p> <em>Chào thân ái,</em></p> <p> <strong><em>Chủ tịch danh dự Hội Khuyến học Việt Nam</em></strong></p> <p> <strong><em>Đại tướng Võ Nguyên Giáp</em></strong></p></blockquote><p> Phát biểu khai mạc Lễ trao giải, Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng Ban tổ chức, bày tỏ lời cám ơn chân thành về những tình cảm cao đẹp và sự quan tâm chăm sóc của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang đã và đang dành cho Nhân tài Đất Việt.</p><div> Nhà báo Phạm Huy Hoàn nhấn mạnh, Giải thưởng Nhân tài Đất Việt suốt 7 năm qua đều nhận được sự quan tâm của các vị lãnh đạo Đảng, Nhà nước và của toàn xã hội. Tại Lễ trao giải, Ban tổ chức luôn có vinh dự được đón tiếp&nbsp;các vị lãnh đạo&nbsp; Đảng và Nhà nước đến dự và trực tiếp trao Giải thưởng.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/15_4670c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Trưởng Ban tổ chức Phạm Huy Hoàn phát biểu khai mạc buổi lễ.</span></div><p> Năm 2011, Giải thưởng có 3 lĩnh vực được xét trao giải là CNTT, Khoa học tự nhiên và Y dược. Lĩnh&nbsp; vực CNTT đã đón nhận 204 sản phẩm tham dự từ mọi miền đất nước và cả nước ngoài như thí sinh Nguyễn Thái Bình từ bang California - Hoa Kỳ và một thí sinh ở Pháp cũng đăng ký tham gia.</p><div> “Cùng với lĩnh vực CNTT, năm nay, Hội đồng khoa học của Viện khoa học và công nghệ Việt Nam và Hội đồng khoa học - Bộ Y tế tiếp tục giới thiệu những nhà khoa học xuất&nbsp; sắc, có công trình nghiên cứu đem lại nhiều lợi ích cho xã hội trong lĩnh vực khoa học tự nhiên và lĩnh vực y dược. Đó là những bác sĩ tài năng, những nhà khoa học mẫn tuệ, những người đang ngày đêm thầm lặng cống hiến trí tuệ sáng tạo của mình cho xã hội trong công cuộc xây dựng đất nước.” - nhà báo Phạm Huy Hoàn nói.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/14_6e18f.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng BTC Giải thưởng và ông Phan Hoàng Đức, Phó TGĐ Tập đoàn VNPT nhận lẵng hoa chúc mừng của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang.</span></div><p> Cũng theo Trưởng Ban tổ chức Phạm Huy Hoàn, đến nay, vị Chủ tịch danh dự đầu tiên của Hội Khuyến học Việt Nam, Đại tướng Võ Nguyên Giáp, đã bước qua tuổi 100 nhưng vẫn luôn dõi theo và động viên từng bước phát triển của Giải thưởng Nhân tài Đất Việt. Đại tướng luôn quan tâm chăm sóc Giải thưởng ngay từ khi Giải thưởng&nbsp; mới ra đời cách đây 7 năm.</p><p> Trước lễ trao giải, Đại tướng Võ Nguyên Giáp đã gửi thư chúc mừng, động viên Ban tổ chức. Trong thư, Đại tướng viết: “Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</p><p> Sau phần khai mạc, cả hội trường hồi hội chờ đợi phút vinh danh các nhà khoa học và các tác giả, nhóm tác giả đoạt giải.</p><div> <span style=\"FONT-WEIGHT: bold\">* Giải thưởng Khoa học Tự nhiên Việt Nam </span>thuộc về 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ - Viện Vật lý, Viện Khoa học công nghệ Việt Nam với công trình “Nghiên cứu cấu trúc hạt nhân và các phản ứng hạt nhân”.</div><div> &nbsp;</div><div align=\"center\"> <div> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn_d4aae.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><p> Hai nhà khoa học đã tiến hành thành công các nghiên cứu về phản ứng hạt nhân với nơtron, phản ứng quang hạt nhân, quang phân hạch và các phản ứng hạt nhân khác có cơ chế phức tạp trên các máy gia tốc như máy phát nơtron, Microtron và các máy gia tốc thẳng của Việt Nam và Quốc tế. Các nghiên cứu này đã góp phần làm sáng tỏ cấu trúc hạt nhân và cơ chế phản ứng hạt nhân, đồng thời cung cấp nhiều số liệu hạt nhân mới có giá trị cho Kho tàng số liệu hạt nhân.</p><p> GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ đã khai thác hiệu quả hai máy gia tốc đầu tiên của Việt Nam là máy phát nơtron NA-3-C và Microtron MT-17 trong nghiên cứu cơ bản, nghiên cứu ứng dụng và đào tạo nhân lực. Trên cơ sở các thiết bị này, hai nhà khoa học đã tiến hành thành công những nghiên cứu cơ bản thực nghiệm đầu tiên về phản ứng hạt nhân ở Việt Nam; nghiên cứu và phát triển các phương pháp phân tích hạt nhân hiện đại và áp dụng thành công ở Việt Nam.</p><div> Bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCNVN và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn2_e2865.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Phó Chủ tịch nước CHXHCNVN Nguyễn Thị Doan và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ.</span></div><p> GS.VS Nguyễn Văn Hiệu chia sẻ: “Cách đây không lâu, Chính phủ đã ký quyết định xây dựng nhà máy điện hạt nhân trong điều kiện đất nước còn nhỏ bé, nghèo khó và vì thế việc đào tạo nhân lực là nhiệm vụ số 1 hiện nay. Rất may, Việt Nam có 2 nhà khoa học cực kỳ tâm huyết và nổi tiếng trong cả nước cũng như trên thế giới. Hội đồng khoa học chúng tôi muốn xướng tên 2 nhà khoa học này để Chính phủ huy động cùng phát triển xây dựng nhà máy điện hạt nhân.”</p><p> GS.VS Hiệu nhấn mạnh, mặc dù điều kiện làm việc của 2 nhà khoa học không được quan tâm, làm việc trên những máy móc cũ kỹ được mua từ năm 1992 nhưng 2 ông vẫn xay mê cống hiến hết mình cho lĩnh Khoa học tự nhiên Việt Nam.</p><p> <span style=\"FONT-WEIGHT: bold\">* Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y Dược:</span> 2 giải</p><div> <span style=\"FONT-WEIGHT: bold\">1.</span> Nhóm nghiên cứu của Bệnh viện Hữu nghị Việt - Đức với công trình <span style=\"FONT-STYLE: italic\">“Nghiên cứu triển khai ghép gan, thận, tim lấy từ người cho chết não”</span>.</div><div> &nbsp;</div><div align=\"center\"> <div> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y_3dca2.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><div> &nbsp;</div><div> Tại bệnh viện Việt Đức, tháng 4/2011, các ca ghép tạng từ nguồn cho là người bệnh chết não được triển khai liên tục. Với 4 người cho chết não hiến tạng, bệnh viện đã ghép tim cho một trường hợp,&nbsp;2 người được ghép gan, 8 người được ghép thận, 2 người được ghép van tim và tất cả các ca ghép này đều thành công, người bệnh được ghép đã có một cuộc sống tốt hơn với tình trạng sức khỏe ổn định.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y2_cb5a1.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nguyên Tổng Bí Ban chấp hành TW Đảng CSVN Lê Khả Phiêu và ông Vũ Văn Tiền, Chủ tịch Hội đồng quản trị Ngân hàng An Bình trao giải thưởng cho nhóm nghiên cứu của BV Hữu nghị Việt - Đức.</span></div><p> Công trong việc ghép tạng từ người cho chết não không chỉ thể hiện năng lực, trình độ, tay nghề của bác sĩ Việt Nam mà nó còn mang một ý nghĩa nhân văn to lớn, mang một thông điệp gửi đến những con người giàu lòng nhân ái với nghĩa cử cao đẹp đã hiến tạng để cứu sống những người bệnh khác.</p><p> <span style=\"FONT-WEIGHT: bold\">2.</span> Hội đồng ghép tim Bệnh viện Trung ương Huế với công trình nghiên cứu <span style=\"FONT-STYLE: italic\">“Triển khai ghép tim trên người lấy từ người cho chết não”</span>.</p><div> Đề tài được thực hiện dựa trên ca mổ ghép tim thành công lần đầu tiên ở Việt Nam của chính 100% đội ngũ y, bác sĩ của Bệnh viện Trung ương Huế đầu tháng 3/2011. Bệnh nhân được ghép tim thành công là anh Trần Mậu Đức (26 tuổi, ở phường Phú Hội, TP. Huế).</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y3_7768c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Hội đồng ghép tim BV Trung ương Huế nhận Giải thưởng Nhân tài Đất Việt.</span></div><p> Ghép tim từ người cho chết não đến người bị bệnh tim cần được ghép tim phải đảm bảo các yêu cầu: đánh giá chức năng các cơ quan; đánh giá tương hợp miễn dịch và phát hiện nguy cơ tiềm ẩn có thể xảy ra trong và sau khi ghép tim để từ đó có phương thức điều trị thích hợp. Có tới 30 xét nghiệm cận lâm sàng trung và cao cấp tiến hành cho cả người cho tim chết não và người sẽ nhận ghép tim tại hệ thống labo của bệnh viện.</p><p> ---------------------</p><p> <span style=\"FONT-WEIGHT: bold\">* Giải thưởng Nhân tài đất Việt Lĩnh vực Công nghệ thông tin.</span></p><p> <span style=\"FONT-STYLE: italic\">Hệ thống sản phẩm đã ứng dụng thực tế:</span></p><p> <span style=\"FONT-STYLE: italic\">Giải Nhất:</span> Không có.</p><p> <span style=\"FONT-STYLE: italic\">Giải Nhì:</span> Không có</p><p> <span style=\"FONT-STYLE: italic\">Giải Ba:</span> 3 giải, mỗi giải trị giá 30 triệu đồng.</p><div> <span style=\"FONT-WEIGHT: bold\">1.</span> <span style=\"FONT-STYLE: italic\">“Bộ cạc xử lý tín hiệu HDTV”</span> của nhóm HD Việt Nam.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/hdtv_13b10.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nhóm HDTV Việt Nam lên nhận giải.</span></div><p> Đây là bộ cạc xử lý tín hiệu HDTV đầu tiên tại Việt Nam đạt tiêu chuẩn OpenGear. Bộ thiết bị bao gồm 2 sản phẩm là cạc khuếch đại phân chia tín hiệu HD DA và cạc xử lý tín hiệu HD FX1. Nhờ bộ cạc này mà người sử dụng cũng có thể điều chỉnh mức âm thanh hoặc video để tín hiệu của kênh tuân theo mức chuẩn và không phụ thuộc vào chương trình đầu vào.</p><div> <span style=\"FONT-WEIGHT: bold; FONT-STYLE: italic\">2.</span> <span style=\"FONT-STYLE: italic\">“Mã nguồn mở NukeViet”</span> của nhóm tác giả Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC).</div><div> &nbsp;</div><div align=\"center\"> <div> <img _fl=\"\" align=\"middle\" alt=\"NukeViet nhận giải ba Nhân tài đất Việt 2011\" src=\"/uploads/news/nukeviet-nhantaidatviet2011.jpg\" style=\"margin: 5px; width: 450px; height: 301px;\" /></div></div><p> NukeViet là CMS mã nguồn mở đầu tiên của Việt Nam có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là VINADES.,JSC - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.</p><div> <span style=\"FONT-WEIGHT: bold\">3.</span> <span style=\"FONT-STYLE: italic\">“Hệ thống ngôi nhà thông minh homeON”</span> của nhóm Smart home group.</div><div> &nbsp;</div><div align=\"center\"> <div> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16132_82014.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><p> Sản phẩm là kết quả từ những nghiên cứu miệt mài nhằm xây dựng một ngôi nhà thông minh, một cuộc sống xanh với tiêu chí: An toàn, tiện nghi, sang trọng và tiết kiệm năng lượng, hưởng ứng lời kêu gọi tiết kiệm năng lượng của Chính phủ.&nbsp;</p><p> <strong><span style=\"FONT-STYLE: italic\">* Hệ thống sản phẩm có tiềm năng ứng dụng:</span></strong></p><p> <span style=\"FONT-STYLE: italic\">Giải Nhất: </span>Không có.</p><div> <span style=\"FONT-STYLE: italic\">Giải Nhì:</span> trị giá 50 triệu đồng: <span style=\"FONT-STYLE: italic\">“Dịch vụ Thông tin và Tri thức du lịch ứng dụng cộng nghệ ngữ nghĩa - iCompanion”</span> của nhóm tác giả SIG.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/nhi_7eee0.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nhóm tác giả SIG nhận giải Nhì Nhân tài đất Việt 2011 ở hệ thống sản phẩm có tiềm năng ứng dụng.</span></div><p> ICompanion là hệ thống thông tin đầu tiên ứng dụng công nghệ ngữ nghĩa trong lĩnh vực du lịch - với đặc thù khác biệt là cung cấp các dịch vụ tìm kiếm, gợi ý thông tin “thông minh” hơn, hướng người dùng và kết hợp khai thác các tính năng hiện đại của môi trường di động.</p><p> Đại diện nhóm SIG chia sẻ: “Tinh thần sáng tạo và lòng khát khao muốn được tạo ra các sản phẩm mới có khả năng ứng dụng cao trong thực tiễn luôn có trong lòng của những người trẻ Việt Nam. Cảm ơn ban tổ chức và những nhà tài trợ đã giúp chúng tôi có một sân chơi thú vị để khuyến khích và chắp cánh thực hiện ước mơ của mình. Xin cảm ơn trường ĐH Bách Khoa đã tạo ra một môi trường nghiên cứu và sáng tạo, gắn kết 5 thành viên trong nhóm.”</p><p> <span style=\"FONT-STYLE: italic\">Giải Ba:</span> 2 giải, mỗi giải trị giá 30 triệu đồng.</p><div> <span style=\"FONT-WEIGHT: bold\">1. </span><span style=\"FONT-STYLE: italic\">“Bộ điều khiển IPNET”</span> của nhóm IPNET</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16149_ed58d.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nhà báo Phạm Huy Hoàn, Trưởng Ban Tổ chức Giải thưởng NTĐV, Tổng Biên tập báo điện tử Dân trí và ông Tạ Hữu Thanh - Phó TGĐ Jetstar Pacific trao giải cho nhóm IPNET.</span></div><p> Bằng cách sử dụng kiến thức thiên văn học để tính giờ mặt trời lặn và mọc tại vị trí cần chiếu sáng được sáng định bởi kinh độ, vĩ độ cao độ, hàng ngày sản phẩm sẽ tính lại thời gian cần bật/tắt đèn cho phù hợp với giờ mặt trời lặn/mọc.</p><div> <span style=\"FONT-WEIGHT: bold\">2.</span> <span style=\"FONT-STYLE: italic\">“Hệ thống lập kế hoạch xạ trị ung thư quản lý thông tin bệnh nhân trên web - LYNX”</span> của nhóm LYNX.</div><div> &nbsp;</div><div align=\"center\"> <div> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/3tiem-nang_32fee.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><p> Đây là loại phần mềm hoàn toàn mới ở Việt Nam, là hệ thống lập kế hoạch và quản lý thông tin của bệnh nhân ung thư qua Internet (LYNX) dựa vào nền tảng Silverlight của Microsoft và kiến thức chuyên ngành Vật lý y học. LYNX giúp ích cho các nhà khoa học, bác sĩ, kỹ sư vật lý, bệnh nhân và mọi thành viên trong việc quản lý và theo dõi hệ thống xạ trị ung thư một cách tổng thể. LYNX có thể được sử dụng thông qua các thiết bị như máy tính cá nhân, máy tính bảng… và các trình duyệt Internet Explorer, Firefox, Chrome…</p><div> Chương trình trao giải đã được truyền hình trực tiếp trên VTV2 - Đài Truyền hình Việt Nam và tường thuật trực&nbsp;tuyến trên báo điện tử Dân trí từ 20h tối 20/11/2011.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0545_c898e.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0560_c995c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16199_36a5c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <div align=\"center\"> <table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"> <tbody> <tr> <td> <div> <span style=\"FONT-WEIGHT: bold\"><span style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Khởi xướng từ năm 2005, Giải thưởng Nhân tài Đất Việt đã phát hiện và tôn vinh nhiều tài năng trong lĩnh vực CNTT-TT, Khoa học tự nhiên và Y dược, trở thành một sân chơi bổ ích cho những người yêu thích CNTT. Mỗi năm, Giải thưởng ngày càng thu hút số lượng tác giả và sản phẩm tham gia đông đảo và nhận được sự quan tâm sâu sắc của lãnh đạo Đảng, Nhà nước cũng như công chúng.</span></span></div> <div> <span style=\"FONT-WEIGHT: bold\">&nbsp;</span></div> <div> <span style=\"FONT-WEIGHT: bold\"><span style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Đối tượng tham gia Giải thưởng trong lĩnh vực CNTT là những người Việt Nam ở mọi lứa tuổi, đang sinh sống trong cũng như ngoài nước. Năm 2006, Giải thưởng có sự tham gia của thí sinh đến từ 8 nước trên thế giới và 40 tỉnh thành của Việt Nam. Từ năm 2009, Giải thưởng được mở rộng sang lĩnh vực Khoa học tự nhiên, và năm 2010 là lĩnh vực Y dược, vinh danh những nhà khoa học trong các lĩnh vực này.</span>&nbsp;</span></div> <div> <span style=\"FONT-WEIGHT: bold\">&nbsp;</span></div> </td> </tr> </tbody> </table> </div></div>', '', '', NULL, 2, '', 0, 1, 1, 1);
INSERT INTO `nv4_vi_news_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `keywords`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(11, '', '', '<div style=\"text-align: justify;\">Có hiệu lực từ ngày 20/1/2015, Thông tư này thay thế cho Thông tư 41/2009/TT-BTTTT (Thông tư 41) ngày 30/12/2009 ban hành Danh mục các sản phẩm phần mềm nguồn mở đáp ứng yêu cầu sử dụng trong cơ quan, tổ chức nhà nước.<br />\r\n<br />\r\nSản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước trong Thông tư 41/2009/TT-BTTTT vừa được Bộ TT&amp;TT ban hành, là những&nbsp;sản phẩm đã đáp ứng các tiêu chí về tính năng kỹ thuật cũng như tính mở và bền vững, và NukeViet là một trong số đó.</div>\r\n\r\n<p style=\"text-align: justify;\">Cụ thể, theo Thông tư 20, sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước phải đáp các tiêu chí về chức năng, tính năng kỹ thuật bao gồm: phần mềm có các chức năng, tính năng kỹ thuật phù hợp với các yêu cầu nghiệp vụ hoặc các quy định, hướng dẫn tương ứng về ứng dụng CNTT trong các cơ quan, tổ chức nhà nước; phần mềm đáp ứng được yêu cầu tương thích với hệ thống thông tin, cơ sở dữ liệu hiện có của các cơ quan, tổ chức.</p>\r\n\r\n<p style=\"text-align: justify;\">Bên cạnh đó, các sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước còn phải đáp ứng tiêu chí về tính mở và tính bền vững của phần mềm. Cụ thể, phần mềm phải đảm bảo các quyền: tự do sử dụng phần mềm không phải trả phí bản quyền, tự do phân phối lại phần mềm, tự do sửa đổi phần mềm theo nhu cầu sử dụng, tự do phân phối lại phần mềm đã chỉnh sửa (có thể thu phí hoặc miễn phí); phần mềm phải có bản mã nguồn, bản cài đặt được cung cấp miễn phí trên mạng; có điểm ngưỡng thất bại PoF từ 50 điểm trở xuống và điểm mô hình độ chín nguồn mở OSMM từ 60 điểm trở lên.</p>\r\n\r\n<p style=\"text-align: justify;\">Căn cứ những tiêu chuẩn trên, thông tư 20 quy định cụ thể Danh mục 31 sản phẩm thuộc 11 loại phần mềm được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước.&nbsp;NukeViet thuộc danh mục hệ quản trị nội dung nguồn mở. Chi tiết thông tư và danh sách 31 sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước có&nbsp;<a href=\"http://vinades.vn/vi/download/van-ban-luat/Thong-tu-20-2014-TT-BTTTT/\" target=\"_blank\">tại đây</a>.</p>\r\n\r\n<p style=\"text-align: justify;\">Thông tư 20/2014/TT-BTTTT quy định rõ: Các cơ quan, tổ chức nhà nước khi có nhu cầu sử dụng vốn nhà nước để đầu tư xây dựng, mua sắm hoặc thuê sử dụng các loại phần mềm có trong Danh mục hoặc các loại phần mềm trên thị trường đã có sản phẩm phần mềm nguồn mở tương ứng thỏa mãn các tiêu chí trên (quy định tại Điều 3 Thông tư 20) thì phải&nbsp;ưu tiên lựa chọn các sản phẩm phần mềm nguồn mở tương ứng, đồng thời phải thể hiện rõ sự ưu tiên này trong các tài liệu&nbsp;như thiết kế sơ bộ, thiết kế thi công, kế hoạch đấu thầu, kế hoạch đầu tư, hồ sơ mời thầu, yêu cầu chào hàng, yêu cầu báo giá hoặc các yêu cầu mua sắm khác.</p>\r\n\r\n<p style=\"text-align: justify;\">Đồng thời,&nbsp;các cơ quan, tổ chức nhà nước phải đảm bảo không đưa ra các yêu cầu, điều kiện, tính năng kỹ thuật có thể dẫn đến việc loại bỏ các sản phẩm phần mềm nguồn mở&nbsp;trong các tài liệu như thiết kế sơ bộ, thiết kế thi công, kế hoạch đấu thầu, kế hoạch đầu tư, hồ sơ mời thầu, yêu cầu chào hàng, yêu cầu báo giá hoặc các yêu cầu mua sắm khác.</p>\r\n\r\n<p style=\"text-align: justify;\">Như vậy, sau thông tư số 08/2010/TT-BGDĐT của Bộ GD&amp;ĐT ban hành ngày 01-03-2010 quy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục trong đó đưa NukeViet vào danh sách các mã nguồn mở được khuyến khích sử dụng trong giáo dục, thông tư 20/2014/TT-BTTTT đã mở đường cho NukeViet vào sử dụng cho các cơ quan, tổ chức nhà nước. Các đơn vị hỗ trợ triển khai NukeViet cho các cơ quan nhà nước có thể sử dụng quy định này để được ưu tiên triển khai cho các dự án website, cổng thông tin cho các cơ quan, tổ chức nhà nước.<br />\r\n<br />\r\nThời gian tới, Công ty cổ phần phát triển nguồn mở Việt Nam (<a href=\"http://vinades.vn/\" target=\"_blank\">VINADES.,JSC</a>) - đơn vị chủ quản của NukeViet - sẽ cùng với Ban Quản Trị NukeViet tiếp tục hỗ trợ các doanh nghiệp đào tạo nguồn nhân lực chính quy phát triển NukeViet nhằm cung cấp dịch vụ ngày một tốt hơn cho chính phủ và các cơ quan nhà nước, từng bước xây dựng và hình thành liên minh các doanh nghiệp phát triển NukeViet, đưa sản phẩm phần mềm nguồn mở Việt không những phục vụ tốt thị trường Việt Nam mà còn từng bước tiến ra thị trường khu vực và các nước đang phát triển khác trên thế giới nhờ vào lợi thế phần mềm nguồn mở đang được chính phủ nhiều nước ưu tiên phát triển.</p>', '', 'mic.gov.vn', NULL, 2, '', 0, 1, 1, 1),
(12, '', '', '<div style=\"text-align: justify;\">Trong năm 2016, chúng tôi xác định là đơn vị sát cánh cùng các đơn vị giáo dục- là đơn vị xây dựng nhiều website cho ngành giáo dục nhất trên cả nước.<br  />Với phần mềm mã nguồn mở NukeViet hiện có nhiều lợi thế:<br  />+ Được Bộ giáo dục khuyến khích sử dụng.<br  />+ Được bộ thông tin truyền thông chỉ định sử dụng trong khối cơ quan nhà nước.<br  />+Được cục công nghệ thông tin ghi rõ tên sản phẩm NukeViet nên dùng theo hướng dẫn thực hiện CNTT 2015-2016.<br  />Chúng tôi cần các bạn góp phần xây dựng nền giáo dục nước nhà ngày càng phát triển.</div><div>&nbsp;</div><table align=\"left\" border=\"1\" cellpadding=\"20\" cellspacing=\"0\" class=\"table table-striped table-bordered table-hover\" style=\"width:100%;\" width=\"653\">	<tbody>		<tr>			<td style=\"width: 27.66%;\"><strong>Vị trí tuyển dụng:</strong></td>			<td style=\"width: 72.34%;\">Nhân viên kinh doanh</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Chức vụ:</strong></td>			<td style=\"width: 72.34%;\">Nhân viên</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Ngành nghề:</strong></td>			<td style=\"width: 72.34%;\"><strong>Sản phẩm:</strong><br  />			Cổng thông tin, website cho các phòng, sở giáo dục và đào tạo các trường học.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Hình thức làm việc:</strong></td>			<td style=\"width: 72.34%;\">Toàn thời gian cố định</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Địa điểm làm việc:</strong></td>			<td style=\"width: 72.34%;\">Văn phòng công ty (Được đi công tác theo hợp đồng đã ký)</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Mức lương:</strong></td>			<td style=\"width: 72.34%;\">&nbsp;Lương cố định + Thưởng vượt doanh số + thưởng theo từng hợp đồng (từ 2-7%).</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Mô tả công việc:</strong></td>			<td style=\"width: 72.34%;\">Chúng tôi có khách hàng mục tiêu và danh sách khách hàng, công việc đòi hỏi ứng viên sử dụng thành thạo vi tính văn phòng, các phần mềm liên quan đến công việc và có laptop để phục vụ công việc.<br  />			- Sales Online, quảng bá ký kết, liên kết, với các đối tác qua INTERNET. Xây dưng mối quan hệ phát triển bền vững với các đối tác.<br  />			- Gọi điện, giới thiệu dịch vụ, sản phẩm của công ty đến đối tác.<br  />			- Xử lý các cuộc gọi của khách hàng liên quan đến, sản phẩm, dịch vụ công ty.<br  />			- Đàm phán, thương thuyết, ký kết hợp đồng với khách hàng đang có nhu cầu thiết kế website , SEO website , PR thương hiệu trên Internet&nbsp;<br  />			- Duy trì và chăm sóc mối quan hệ lâu dài với khách hàng, mở rộng khách hàng tiềm năng nhằm thúc đẩy doanh số bán hàng<br  />			- Hỗ trợ khách hàng khi được yêu cầu</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Số lượng cần tuyển:</strong></td>			<td style=\"width: 72.34%;\">05</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Quyền lợi được hưởng:</strong></td>			<td style=\"width: 72.34%;\">- Được đào tạo kĩ năng bán hàng, được công ty hỗ trợ tham gia khóa học bán hàng chuyên nghiệp.<br  />			- Lương cứng: 3.000.000 VNĐ+ hoa hồng dự án (2-7%/năm/hợp đồng). Lương trả qua ATM, được xét tăng lương 3 tháng một lần dựa trên doanh thu.<br  />			- Bậc lương xét trên năng lực bán hàng.<br  />			- Thưởng theo dự án, các ngày lễ tết.<br  />			- Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội.<br  />			- Cơ hội làm việc và gắn bó lâu dài trong công ty, được thưởng cổ phần nếu doanh thu tốt.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Số năm kinh nghiệm:</strong></td>			<td style=\"width: 72.34%;\">Trên 6 tháng</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Yêu cầu bằng cấp:</strong></td>			<td style=\"width: 72.34%;\">Cao đẳng, Đại học</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Yêu cầu giới tính:</strong></td>			<td style=\"width: 72.34%;\">Không yêu cầu</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Yêu cầu độ tuổi:</strong></td>			<td style=\"width: 72.34%;\">Không yêu cầu</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Yêu cầu khác:</strong></td>			<td style=\"width: 72.34%;\">- Yêu thích và đam mê Internet Marketing, thích online, thương mại điện tử<br  />			- Giọng nói dễ nghe, không nói ngọng.<br  />			- Có khả năng giao tiếp qua điện thoại.<br  />			- Ngoại hình ưa nhìn là một lợi thế<br  />			- Có tính cẩn thận trong công việc, luôn cố gắng học hỏi.<br  />			- Kỹ năng sales online tốt.<br  />			-Trung thực, năng động, nhiệt tình,siêng năng, nhiệt huyết trong công việc.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Hồ sơ bao gồm:</strong></td>			<td style=\"width: 72.34%;\"><strong>* Yêu cầu Hồ sơ:</strong><br  />			<strong>Cách thức đăng ký dự tuyển</strong>: Làm Hồ sơ xin việc (file mềm) và gửi về hòm thư <a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a><br  />			<br  />			<strong>Nội dung hồ sơ xin việc file mềm gồm</strong>:<br  />			<strong>+ Đơn xin việc:</strong>&nbsp;Theo hướng dẫn bên dưới.<br  />			<strong>+ Thông tin ứng viên:</strong>&nbsp;Theo mẫu của VINADES.,JSC <strong><em>(download tại đây:&nbsp;<a href=\"http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-kinh-doanh/\">Mẫu lý lịch ứng viên</a>)</em></strong><br  />			<strong>* Hồ sơ xin việc (Bản in thông thường) bao gồm</strong>:<br  />			- Giấy khám sức khoẻ của cơ quan y tế.<br  />			- Bản sao hộ khẩu (có công chứng)<br  />			- Bản sao giấy khai sinh (có công chứng)<br  />			- Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn -bằng chứng chỉ (có công chứng)<br  />			- Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.<br  />			- Thư giới thiệu (nếu có)<br  />			- Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).<br  />			<br  />			<strong>*Hướng dẫn</strong>:<br  />			- Với bản in của hồ sơ ứng tuyển, ứng viên sẽ phải nộp trước cho Ban tuyển dụng hoặc muộn nhất là mang theo khi có lịch phỏng vấn. Bản in sẽ không được trả lại ngay cả khi ứng viên không đạt yêu cầu.<br  />			- Nếu không thể bố trí thời gian phỏng vấn như sắp xếp của -Ban tuyển dụng, thí sinh cần thông báo ngay để được đổi lịch.<br  />			- Nếu có bất cứ thắc mắc gì bạn có thể liên hệ với Ms. Thu qua email: tuyendung@vinades.vn. Có thể gọi điện theo số điện thoại: 01255723353</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Hạn nộp hồ sơ:</strong></td>			<td style=\"width: 72.34%;\">Không hạn chế cho tới khi tuyển đủ.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Hình thức nộp hồ sơ:</strong></td>			<td style=\"width: 72.34%;\">Qua Email</td>		</tr>		<tr>			<td colspan=\"2\" style=\"width:100.0%;\">			<h3>THÔNG TIN LIÊN HỆ</h3>			</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Điện thoại liên hệ:</strong></td>			<td style=\"width: 72.34%;\">01255723353- Ms. Thu</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Địa chỉ liên hệ:</strong></td>			<td style=\"width: 72.34%;\">Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Email liên hệ:</strong></td><td style=\"width: 72.34%;\">tuyendung@vinades.vn</td></tr></tbody></table>', '', '', NULL, 2, '', 0, 1, 1, 1),
(14, '', '', '<p style=\"text-align: justify;\">Nếu bạn yêu thích công nghệ, thích kinh doanh hoặc lập trình web và mong muốn trải nghiệm, học hỏi, thậm chí là đi làm ngay từ khi còn ngồi trên ghế nhà trường, hãy tham gia chương trình thực tập sinh tại công ty VINADES.</p><p style=\"text-align: justify;\">Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) là đơn vị chịu trách nhiệm chính trong việc phát triển phần mềm NukeViet và có nhiệm vụ hỗ trợ cộng đồng người dùng NukeViet &#91;<u><a href=\"http://vinades.vn/vi/about/history/\" target=\"_blank\">xem thêm giới thiệu về lịch sử hình thành VINADES</a></u>&#93;. Là công ty được thành lập từ cộng đồng phần mềm nguồn mở, hàng năm công ty dành những vị trí đặc biệt cho các bạn sinh viên được học tập, trải nghiệm, làm việc tại công ty.<br  />&nbsp;</p><h2 style=\"text-align: justify;\"><b>C</b><b>ác vị trí thực tập</b></h2><ul>	<li style=\"text-align: justify;\"><strong>Kinh doanh:</strong> Cổng thông tin doanh nghiệp, Cổng thông tin giáo dục Edu Gate…</li>	<li style=\"text-align: justify;\"><strong>Kỹ thuật:</strong> Chuyên viên đồ họa, Lập trình viên…</li></ul><h2 style=\"text-align: justify;\"><b>Quyền lợi của thực tập sinh</b></h2><ul>	<li style=\"text-align: justify;\">Được&nbsp;tiếp xúc với văn hóa doanh nghiệp, trải nghiệm trong môi trường làm việc chuyên nghiệp, năng động.</li>	<li style=\"text-align: justify;\">Được&nbsp;giao tiếp và học hỏi kiến thức từ những SEO, các lập trình viên chính của đội code NukeViet; qua đó&nbsp;nâng cao không chỉ kỹ năng chuyên môn liên quan đến công việc mà còn các kỹ năng mềm trong quá trình làm việc hàng ngày.</li>	<li style=\"text-align: justify;\">Có cơ hội tìm hiểu, phát triển định hướng của bản thân.</li>	<li style=\"text-align: justify;\">Tham gia các chương trình ngoại khóa, các hoạt động nội bộ của công ty.</li>	<li style=\"text-align: justify;\">Cơ&nbsp;hội được học việc để trở thành nhân viên chính thức nếu có kết quả thực tập tốt.</li>	<li style=\"text-align: justify;\">Thực tập không hưởng lương nhưng có thể được trả thù lao cho một số công việc được giao theo đơn hàng.</li></ul><h2 style=\"text-align: justify;\"><b>Thời gian làm việc</b></h2><ul>	<li style=\"text-align: justify;\">Toàn thời gian cố định hoặc làm online.</li>	<li style=\"text-align: justify;\">Thời gian làm việc là:&nbsp;8:00 – 17:00, Thứ hai – Thứ sáu</li>	<li style=\"text-align: justify;\">Ngày làm việc và thời gian làm việc có thể thay đổi linh hoạt tùy thuộc vào điều kiện của ứng viên và tình hình thực tế.</li></ul><h2 style=\"text-align: justify;\"><b>Đối tượng và điều kiện ứng tuyển</b></h2><p style=\"text-align: justify;\">Tất cả các bạn sinh viên năm cuối/mới tốt nghiệp các trường CĐ - ĐH đáp ứng được những yêu cầu sau:</p><ul>	<li style=\"text-align: justify;\">Sinh viên khối ngành kinh tế: yêu thích marketing online, mong muốn thực tập trong lĩnh vực kinh doanh phần mềm.</li>	<li style=\"text-align: justify;\">Sinh viên khối ngành kỹ thuật: yêu thích thiết kế, lập trình web.</li></ul><p style=\"text-align: justify;\">Có kỹ năng giao tiếp và tư duy logic tốt, năng động và ham học hỏi.</p><p style=\"text-align: justify;\">Có máy tính xách tay để làm việc.</p><p style=\"text-align: justify;\">Ưu tiên các ứng viên đam mê phần mềm nguồn mở, đặc biệt là các ứng viên đã từng tham gia và có bài viết diễn đàn NukeViet (<a href=\"http://forum.nukeviet.vn/\">forum.nukeviet.vn</a>).</p><h2 style=\"text-align: justify;\"><b>Cách thức ứng tuyển</b></h2><p style=\"text-align: justify;\">Gửi bản mềm đơn đăng ký ứng tuyển tới:&nbsp;<a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a>;</p><p style=\"text-align: justify;\">Tiêu đề mail ghi rõ: &#91;Họ tên&#93; –Ứng tuyển thực tập &#91;Bộ phận ứng tuyển&#93;.</p><p style=\"text-align: justify;\">Ví dụ: Lê Văn Nam –&nbsp;Ứng tuyển thực tập sinh bộ phận đồ họa</p><p style=\"text-align: justify;\">Hồ sơ bản cứng cần chuẩn bị (sẽ gửi sau nếu đạt yêu cầu) gồm:</p><ul>	<li style=\"text-align: justify;\">Giấy khám sức khoẻ của cơ quan y tế</li>	<li style=\"text-align: justify;\">Bản sao giấy khai sinh (có công chứng).</li>	<li style=\"text-align: justify;\">Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn bằng chứng chỉ (có công chứng) nếu đã tốt nghiệp.</li>	<li style=\"text-align: justify;\">Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.</li>	<li style=\"text-align: justify;\">Chứng minh thư (photo không cần công chứng).</li>	<li style=\"text-align: justify;\">Thư giới thiệu (nếu có)</li>	<li style=\"text-align: justify;\">Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).</li></ul><p><br  /><strong>Chi tiết vui lòng tham khảo tại:</strong>&nbsp;<a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br  /><br  /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br  />Trụ sở chính: Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /><br  />- Tel: +84-24-85872007 - Fax: +84-24-35500914<br  />- Email:&nbsp;<a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a>&nbsp;- Website:&nbsp;<a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></p></blockquote>', '', '', NULL, 2, '', 0, 1, 1, 1),
(15, '', '', '<p style=\"text-align: justify;\">Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) là đơn vị chịu trách nhiệm chính trong việc phát triển phần mềm NukeViet và có nhiệm vụ hỗ trợ cộng đồng người dùng NukeViet &#91;<u><a href=\"http://vinades.vn/vi/about/history/\" target=\"_blank\">xem thêm giới thiệu về lịch sử hình thành VINADES</a></u>&#93;.</p><p style=\"text-align: justify;\">Nếu bạn yêu thích phần mềm nguồn mở, triết lý của phần mềm tự do nguồn mở hoặc đơn giản là yêu NukeViet, hãy liên hệ ngay để gia nhập công ty VINADES, cùng chúng tôi phát triển NukeViet – Phần mềm nguồn mở Việt Nam – và tạo ra những sản phẩm web tuyệt vời cho cộng đồng.</p><h2 style=\"text-align: justify;\"><b>Các vị trí nhận học việc</b></h2><ul>	<li style=\"text-align: justify;\"><strong>Kinh doanh:</strong> Cổng thông tin doanh nghiệp, Cổng thông tin giáo dục Edu Gate…</li>	<li style=\"text-align: justify;\"><strong>Kỹ thuật:</strong> Chuyên viên đồ họa, Lập trình viên…</li></ul><h2 style=\"text-align: justify;\"><b>Quyền lợi của học viên</b></h2><ul>	<li style=\"text-align: justify;\">Được hưởng trợ cấp ăn trưa.</li>	<li style=\"text-align: justify;\">Được trợ cấp vé gửi xe.</li>	<li style=\"text-align: justify;\">Được hưởng lương khoán theo từng dự án (nếu có).</li>	<li style=\"text-align: justify;\">Được hỗ trợ học phí tham gia các khóa học nâng cao các kỹ năng (nếu có).</li>	<li style=\"text-align: justify;\">Được&nbsp;tiếp xúc với văn hóa doanh nghiệp, trải nghiệm trong môi trường làm việc chuyên nghiệp, năng động.</li>	<li style=\"text-align: justify;\">Được&nbsp;giao tiếp và học hỏi kiến thức từ những SEO, các lập trình viên chính của đội code NukeViet; qua đó&nbsp;nâng cao không chỉ kỹ năng chuyên môn liên quan đến công việc mà còn các kỹ năng mềm trong quá trình làm việc hàng ngày.</li>	<li style=\"text-align: justify;\">Tham gia các chương trình ngoại khóa, các hoạt động nội bộ của công ty.</li>	<li style=\"text-align: justify;\">Cơ&nbsp;hội ưu tiên (không cần qua thử việc) trở thành nhân viên chính thức nếu có kết quả học việc tốt.</li></ul><h2 style=\"text-align: justify;\"><b>Thời gian làm việc</b></h2><ul>	<li style=\"text-align: justify;\">Toàn thời gian cố định hoặc làm online.</li>	<li style=\"text-align: justify;\">Thời gian làm việc là:&nbsp;8:00 – 17:00, Thứ hai – Thứ sáu</li>	<li style=\"text-align: justify;\">Ngày làm việc và thời gian làm việc có thể thay đổi linh hoạt tùy thuộc vào điều kiện của ứng viên và tình hình thực tế.</li></ul><h2 style=\"text-align: justify;\"><b>Đối tượng</b></h2><p style=\"text-align: justify;\">Tất cả các bạn sinh viên năm cuối/mới tốt nghiệp các trường CĐ - ĐH đáp ứng được những yêu cầu sau:</p><ul>	<li style=\"text-align: justify;\">Sinh viên khối ngành kinh tế: yêu thích marketing online, mong muốn thực tập trong lĩnh vực kinh doanh phần mềm.</li>	<li style=\"text-align: justify;\">Sinh viên khối ngành kỹ thuật: yêu thích thiết kế, lập trình web.</li></ul><p style=\"text-align: justify;\">Có kỹ năng giao tiếp và tư duy logic tốt, năng động và ham học hỏi.</p><p style=\"text-align: justify;\">Ưu tiên các ứng viên đam mê phần mềm nguồn mở, đặc biệt là các ứng viên đã từng tham gia và có bài viết diễn đàn NukeViet (<a href=\"http://forum.nukeviet.vn/\">forum.nukeviet.vn</a>)</p><h2 style=\"text-align: justify;\"><b>Điều kiện</b></h2><p style=\"text-align: justify;\">Có máy tính xách tay để làm việc.</p><p style=\"text-align: justify;\">Ứng viên sẽ được ký hợp đồng học việc (có thời hạn cụ thể). Nếu được nhận vào làm việc chính thức, người lao động phải làm ở công ty ít nhất 2 năm, nếu không làm hoặc nghỉ trước thời hạn sẽ phải hoàn lại tiền đào tạo. Chi phí này được tính là 3.000.000 VND</p><p style=\"text-align: justify;\">Nếu được cử đi học, người lao động phải làm ở công ty ít nhất 2 năm, nếu không làm hoặc nghỉ trước thời hạn sẽ phải hoàn lại tiền học phí.</p><p style=\"text-align: justify;\">Thực hiện theo các quy định khác của công ty...</p><h2 style=\"text-align: justify;\"><b>Cách thức ứng tuyển</b></h2><p style=\"text-align: justify;\">Gửi bản mềm đơn đăng ký ứng tuyển tới:&nbsp;<a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a>;</p><p style=\"text-align: justify;\">Tiêu đề mail ghi rõ: &#91;Họ tên&#93; –Ứng tuyển học việc&#91;Bộ phận ứng tuyển&#93;;</p><p style=\"text-align: justify;\">Ví dụ: Lê Văn Nam –&nbsp;Ứng tuyển học việc bộ phận đồ họa</p><p style=\"text-align: justify;\">Hồ sơ bản cứng cần chuẩn bị (sẽ gửi sau nếu đạt yêu cầu) gồm:</p><ul>	<li style=\"text-align: justify;\">Giấy khám sức khoẻ của cơ quan y tế</li>	<li style=\"text-align: justify;\">Bản sao giấy khai sinh (có công chứng).</li>	<li style=\"text-align: justify;\">Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn bằng chứng chỉ (có công chứng) nếu đã tốt nghiệp.</li>	<li style=\"text-align: justify;\">Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.</li>	<li style=\"text-align: justify;\">Chứng minh thư (photo không cần công chứng).</li>	<li style=\"text-align: justify;\">Thư giới thiệu (nếu có)</li>	<li style=\"text-align: justify;\">Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).</li></ul><p style=\"text-align: justify;\"><br  /><strong>Chi tiết vui lòng tham khảo tại:</strong>&nbsp;<a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br  /><br  /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style=\"text-align: justify;\"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br  />Trụ sở chính: Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /><br  />- Tel: +84-24-85872007 - Fax: +84-24-35500914<br  />- Email:&nbsp;<a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a>&nbsp;- Website:&nbsp;<a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></p></blockquote>', '', '', NULL, 2, '', 0, 1, 1, 1),
(16, '', '', '<div class=\"details-content clearfix\" id=\"bodytext\"><strong>Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo có gì mới?</strong><br  /><br  />Trong các hướng dẫn thực hiện nhiệm vụ CNTT từ năm 2010 đến nay liên tục chỉ đạo việc đẩy mạnh công tác triển khai sử dụng phần mềm nguồn mở trong nhà trường và các cơ quan quản lý giáo dục. Tuy nhiên Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo có nhiều thay đổi mạnh mẽ đáng chú ý, đặc biệt việc chỉ đạo triển khai các phần mềm nguồn mở vào trong các cơ sở quản lý giao dục được rõ ràng và cụ thể hơn rất nhiều.<br  /><br  />Một điểm thay đổi đáng chú ý đối với phần mềm nguồn mở, trong đó đã thay hẳn thuật ngữ &quot;phần mềm tự do mã nguồn mở&quot; hoặc &quot;phần mềm mã nguồn mở&quot; thành &quot;phần mềm nguồn mở&quot;, phản ánh xu thế sử dụng thuật ngữ phần mềm nguồn mở đã phổ biến trong cộng đồng nguồn mở thời gian vài năm trở lại đây.<br  /><br  /><strong>NukeViet - Phần mềm nguồn mở Việt - không chỉ được khuyến khích mà đã được hướng dẫn thực thi</strong><br  /><br  />Từ 5 năm trước, thông tư số 08/2010/TT-BGDĐT của Bộ GD&amp;ĐTquy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục, NukeViet đã được đưa vào danh sách các mã nguồn mở <strong>được khuyến khích sử dụng trong giáo dục</strong>. Tuy nhiên, việc sử dụng chưa được thực hiện một cách đồng bộ mà chủ yếu làm nhỏ lẻ rải rác tại một số trường, Phòng và Sở GD&amp;ĐT.<br  /><br  />Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo lần này, NukeViet&nbsp; không chỉ được khuyến khích mà đã được hướng dẫn thực thi, không những thế NukeViet còn được đưa vào hầu hết các nhiệm vụ chính, cụ thể:<div><div><div>&nbsp;</div>- <strong>Nhiệm vụ số 5</strong> &quot;<strong>Công tác bồi dưỡng ứng dụng CNTT cho giáo viên và cán bộ quản lý giáo dục</strong>&quot;, mục 5.1 &quot;Một số nội dung cần bồi dưỡng&quot; có ghi &quot;<strong>Tập huấn sử dụng phần mềm nguồn mở NukeViet.</strong>&quot;<br  />&nbsp;</div>- <strong>Nhiệm vụ số 10 &quot;Khai thác, sử dụng và dạy học bằng phần mềm nguồn mở</strong>&quot; có ghi: &quot;<strong>Khai thác và áp dụng phần mềm nguồn mở NukeViet trong giáo dục.&quot;</strong><br  />&nbsp;</div>- Phụ lục văn bản, có trong nội dung &quot;Khuyến cáo khi sử dụng các hệ thống CNTT&quot;, hạng mục số 3 ghi rõ &quot;<strong>Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.</strong><br  />&nbsp;<div>Hiện giờ văn bản này đã được đăng lên website của Bộ GD&amp;ĐT: <a href=\"http://moet.gov.vn/?page=1.10&amp;view=983&amp;opt=brpage\" target=\"_blank\">http://moet.gov.vn/?page=1.10&amp;view=983&amp;opt=brpage</a></div><p><br  />Hoặc có thể tải về tại đây: <a href=\"http://vinades.vn/vi/download/van-ban-luat/Huong-dan-thuc-hien-nhiem-vu-CNTT-nam-hoc-2015-2016/\" target=\"_blank\">http://vinades.vn/vi/download/van-ban-luat/Huong-dan-thuc-hien-nhiem-vu-CNTT-nam-hoc-2015-2016/</a></p><blockquote><p><em>Trên cơ sở hướng dẫn của Bộ GD&amp;ĐT, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&amp;ĐT, Sở GD&amp;ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT.<br  /><br  />Các Phòng, Sở GD&amp;ĐT có nhu cầu có thể xem thêm thông tin chi tiết tại đây: <a href=\"http://vinades.vn/vi/news/thong-cao-bao-chi/Ho-tro-trien-khai-dao-tao-va-trien-khai-NukeViet-cho-cac-Phong-So-GD-DT-264/\" target=\"_blank\">Hỗ trợ triển khai đào tạo và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT</a></em></p></blockquote></div>', '', '', NULL, 2, '', 0, 1, 1, 1),
(17, '', '', '<div class=\"details-content clearfix\" id=\"bodytext\"><span style=\"font-size:16px;\"><strong>Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng phần mềm nguồn mở NukeViet</strong></span><br  /><br  />Công tác hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng phần mềm nguồn mở NukeViet sẽ được thực hiện bởi đội ngũ chuyên gia giàu kinh nghiệm về NukeViet được tuyển chọn từ lực lượng lập trình viên, chuyên viên kỹ thuật hiện đang tham gia phát triển và hỗ trợ về NukeViet từ Ban Quản Trị NukeViet và Công ty cổ phần phát triển nguồn mở Việt Nam và các đối tác thuộc Liên minh phần mềm giáo dục nguồn mở NukeViet.<br  /><br  />Với kinh nghiệm tập huấn đã được tổ chức thành công cho nhiều Phòng giáo dục và đào tạo, các chuyên gia về NukeViet sẽ giúp chuyển giao giáo trình, chương trình, kịch bản đào tạo cho các Phòng, Sở GD&amp;ĐT; hỗ trợ các giáo viên và cán bộ quản lý giáo dục sử dụng trong suốt thời gian sau đào tạo.<br  /><br  />Đặc biệt, đối với các đơn vị sử dụng NukeViet làm website và cổng thông tin đồng bộ theo quy mô cấp Phòng và Sở, cán bộ tập huấn của NukeViet sẽ có nhiều chương trình hỗ trợ khác như chương trình thi đua giữa các website sử dụng NukeViet trong cùng đơn vị cấp Phòng, Sở và trên toàn quốc; Chương trình báo cáo và giám sát và xếp hạng website hàng tháng; Chương trình tập huấn nâng cao trình độ sử dụng NukeViet hàng năm cho giáo viên và cán bộ quản lý giáo dục đang thực hiện công tác quản trị các hệ thống sử dụng nền tảng NukeViet.<br  /><br  /><span style=\"font-size:16px;\"><strong>Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT</strong></span><br  /><br  />Nhằm hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT một cách toàn diện, đồng bộ và tiết kiệm, hiện tại, Liên minh phần mềm nguồn mở giáo dục NukeViet chuẩn bị ra mắt. Liên minh này do Công ty cổ phần phát triển nguồn mở Việt Nam đứng dầu và thực hiện việc điều phối công các hỗ trợ và phối hợp giữa các đơn vị trên toàn quốc. Thành viên của liên minh là các doanh nghiệp cung cấp sản phẩm và dịch vụ phần mềm hỗ trợ cho giáo dục (kể cả những đơn vị chỉ tham gia lập trình và những đơn vị chỉ tham gia khai thác thương mại). Liên minh sẽ cùng nhau làm việc để xây dựng một hệ thống phần mềm thống nhất cho giáo dục, có khả năng liên thông và kết nối với nhau, hoàn toàn dựa trên nền tảng phần mềm nguồn mở. Liên minh cũng hỗ trợ và phân phối phần mềm cho các đơn vị làm phần mềm trong ngành giáo dục với mục tiêu là tiết kiệm tối đa chi phí trong khâu thương mại, mang tới cơ hội cho các đơn vị làm phần mềm giáo dục mà không cần phải lo lắng về việc phân phối phần mềm. Các doanh nghiệp quan tâm đến cơ hội kinh doanh bằng phần mềm nguồn mở, muốn tìm hiểu và tham gia liên minh có thể đăng ký tại đây: <a href=\"http://edu.nukeviet.vn/lienminh-dangky.html\" target=\"_blank\">http://edu.nukeviet.vn/lienminh-dangky.html</a><br  /><br  />Liên minh phần mềm nguồn mở giáo dục NukeViet đang cung cấp giải pháp cổng thông tin chuyên dùng cho phòng và Sở GD&amp;ĐT (NukeViet Edu Gate) cung cấp dưới dạng dịch vụ công nghệ thông tin (theo mô hình của <a href=\"http://vinades.vn/vi/download/van-ban-luat/Quyet-dinh-80-ve-thue-dich-vu-CNTT/\" target=\"_blank\">Quyết định số 80/2014/QĐ-TTg của Thủ tướng Chính phủ</a>) có thể hỗ trợ cho các trường, Phòng và Sở GD&amp;ĐT triển khai NukeViet ngay lập tức.<br  /><br  />Giải pháp cổng thông tin chuyên dùng cho phòng và Sở GD&amp;ĐT (NukeViet Edu Gate) có tích hợp website các trường (liên thông 3 cấp: trường - phòng - sở) cho phép tích hợp hàng ngàn website của các trường cùng nhiều dịch vụ khác trên cùng một hệ thống giúp tiết kiệm chi phí đầu tư, chi phí triển khai và bảo trì hệ thống bởi toàn bộ hệ thống được vận hành bằng một phần mềm duy nhất. Ngoài giải pháp cổng thông tin giáo dục tích hợp, Liên minh phần mềm nguồn mở giáo dục NukeViet cũng đang phát triển một số&nbsp;sản phẩm phần mềm dựa trên phần mềm nguồn mở NukeViet và sẽ sớm ra mắt trong thời gian tới.<div><br  />Hiện nay,&nbsp;NukeViet Edu Gate cũng&nbsp;đã được triển khai rộng rãi và nhận được sự ủng hộ của&nbsp;nhiều Phòng, Sở GD&amp;ĐT trên toàn quốc.&nbsp;Các phòng, sở GD&amp;ĐT quan tâm đến giải pháp NukeViet Edu Gate có thể truy cập&nbsp;<a href=\"http://edu.nukeviet.vn/\" target=\"_blank\">http://edu.nukeviet.vn</a>&nbsp;để tìm hiểu thêm hoặc liên hệ:<br  /><br  /><span style=\"font-size:14px;\"><strong>Liên minh phần mềm nguồn mở giáo dục NukeViet</strong></span><br  />Đại diện: <strong>Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC)</strong><br  /><strong>Địa chỉ</strong>: Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội<br  /><strong>Email</strong>: contact@vinades.vn, Tel: 024-85872007, <strong>Fax</strong>: 024-35500914,<br  /><strong>Hotline</strong>: 0904762534 (Mr. Hùng), 0936226385 (Ms. Ngọc),&nbsp;<span style=\"color: rgb(38, 38, 38); font-family: arial, sans-serif; font-size: 13px; line-height: 16px;\">0904719186 (Mr. Hậu)</span><br  />Các Phòng GD&amp;ĐT, Sở GD&amp;ĐT có thể đăng ký tìm hiểu, tổ chức hội thảo, tập huấn, triển khai NukeViet trực tiếp tại đây: <a href=\"http://edu.nukeviet.vn/dangky.html\" target=\"_blank\">http://edu.nukeviet.vn/dangky.html</a><br  /><br  /><span style=\"font-size:16px;\"><strong>Tìm hiểu về phương thức chuyển đổi các hệ thống website cổng thông tin sang NukeViet theo mô hình tích hợp liên thông từ trưởng, lên Phòng, Sở GD&amp;ĐT:</strong></span><br  /><br  />Đối với các Phòng, Sở GD&amp;ĐT, trường Nầm non, tiểu học, THCS, THPT... chưa có website, Liên minh phần mềm nguồn mở giáo dục NukeViet sẽ hỗ trợ triển khai NukeViet theo mô hình cổng thông tin liên cấp như quy định tại <a href=\"http://vinades.vn/vi/download/van-ban-luat/Thong-tu-quy-dinh-ve-ve-to-chuc-hoat-dong-su-dung-thu-dien-tu/\" target=\"_blank\">thông tư số <strong>53/2012/TT-BGDĐT</strong> của Bộ GD&amp;ĐT</a> ban hành ngày 20-12-2012 quy định về quy định về về tổ chức hoạt động, sử dụng thư điện tử và cổng thông tin điện tử tại sở giáo dục và đào tạo, phòng giáo dục và đào tạo và các cơ sở GDMN, GDPT và GDTX.<br  /><br  />Trường hợp các đơn vị có website và đang sử dụng NukeViet theo dạng rời rạc thì việc chuyển đổi và tích hợp các website NukeViet rời rạc vào NukeViet Edu Gate của Phòng và Sở có thể thực hiện dễ dàng và giữ nguyên toàn bộ dữ liệu.<br  /><br  />Trường hợp các đơn vị có website và nhưng không sử dụng NukeViet cũng có thể chuyển đổi sang sử dụng NukeViet để hợp nhất vào hệ thống cổng thông tin giáo dục cấp Phòng, Sở. Tuy nhiên mức độ và tỉ lệ dữ liệu được chuyển đổi thành công sẽ phụ thuộc vào tình hình thực tế của từng website.</div></div>', '', '', NULL, 2, '', 0, 1, 1, 1),
(18, '', '', '<p dir=\"ltr\" style=\"text-align: justify;\">Trải qua hơn 10 năm phát triển, từ một mã nguồn chỉ mang tính cá nhân, NukeViet đã phát triển thành công theo hướng cộng đồng. Năm 2010, NukeViet 3 ra đời đánh dấu một mốc lớn trong quá trình đi lên của NukeViet, phát triển theo hướng chuyên nghiệp với sự hậu thuẫn của Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC). NukeViet 3 đã và được sử dụng rộng rãi trong cộng đồng, từ các cổng thông tin tổ chức, hệ thống giáo dục, cho đến các website cá nhân, thương mại, mang lại các trải nghiệm vượt trội của mã nguồn thương hiệu Việt so với các mã nguồn nổi tiếng khác trên thế giới.<br  /><br  />Năm 2016, NukeViet 4 ra đời được xem là một cuộc cách mạng lớn trong chuỗi sự kiện phát triển NukeViet, cũng như xu thế công nghệ hiện tại. Hệ thống gần như được đổi mới hoàn toàn từ nhân hệ thống đến giao diện, nâng cao đáng kể hiệu suất và trải nghiệm người dùng.<br  /><br  /><span style=\"line-height: 1.6;\"><strong>Dưới đây là một số thay đổi của NukeViet 4.</strong></span><br  /><strong><span style=\"line-height: 1.6;\">Các thay đổi từ nhân hệ thống:</span></strong></p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Các công nghệ mới được áp dụng.</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Sử dụng composer để quản lý các thư viện PHP được cài vào hệ thống.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Từng bước áp dụng &nbsp;các tiêu chuẩn viết code PHP theo khuyến nghị của <a href=\"http://www.php-fig.org/psr/\">http://www.php-fig.org/psr/</a></p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Sử dụng PDO để thay cho extension MySQL.</p>		</li>	</ul>	</li></ul><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Tăng cường khả năng bảo mật</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Sau khi các chuyên giả bảo mật của HP gửi đánh giá, chúng tôi đã tối ưu NukeViet 4.0 để hệ thống an toàn hơn.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Mã hóa các mật khẩu lưu trữ trong hệ thống: Các mật khẩu như FTP, SMTP,... đã được mã hóa, bảo mật thông tin người dùng.</p>		</li>	</ul>	</li></ul><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Tối ưu SEO:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">SEO được xem là một trong những ưu tiên hàng đầu được phát triển trong phiên bản này. NukeViet 4 tập trung tối ưu hóa SEO Onpage mạnh mẽ. Các công cụ hỗ trợ SEO được tập hợp lại qua module “Công cụ SEO”. Các chức năng được thêm mới:</p>		<ul>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Loại bỏ tên module khỏi URL khi không dùng đa ngôn ngữ</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Cho phép đổi đường dẫn module</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Thêm chức năng xác thực Google+ (Bản quyền tác giả)</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Thêm chức năng ping đến các công cụ tìm kiếm: Submit url mới đến google để việc hiển thị bài viết mới lên kết quả tìm kiếm nhanh chóng hơn.</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Hỗ trợ Meta OG của facebook</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Hỗ trợ chèn Meta GEO qua Cấu hình Meta-Tags</p>			</li>		</ul>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Cùng với đó, các module cũng được tối ưu hóa bằng các form hỗ trợ khai báo tiêu đề, mô tả (description), từ khóa (keywods) cho từng khu vực, từng trang. &nbsp;</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Với sự hỗ trợ tối đa này, người quản trị (admin) có thể tùy biến lại website theo phong cách SEO riêng biệt.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Thay đổi giao diện, sử dụng giao diện tuỳ biến</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Giao diện trong NukeViet 4 được làm mới, tương thích với nhiều màn hình hơn.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Sử dụng thư viện bootstrap để việc phát triển giao diện thống nhất và dễ dàng hơn.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Hệ thống nhận thông báo:&nbsp;</strong><span style=\"line-height: 1.6;\">Có thể gọi đây là một tiện ích nhỏ, song nó rất hữu dụng để admin tương tác với hệ thống một cách nhanh chóng. Admin có thể nhận thông báo từ hệ thống (hoặc từ module) khi có sự kiện nào đó.</span></p>	</li></ul><p dir=\"ltr\" style=\"text-align: justify; margin-left: 40px;\"><strong>Ví dụ:</strong> Khi có khách gửi liên hệ (qua module contact) đến thì hệ thống xuất hiện biểu tượng thông báo “Có liên hệ mới” ở góc phải, Admin sẽ nhận được ngay lập tức thông báo khi người dùng đang ở Admin control panel (ACP).</p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Thay đổi cơ chế quản lý block:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Nhận thấy việc hiển thị block ở lightbox trong NukeViet 3 dẫn đến một số bất tiện trong quá trình quản lý, NukeViet 4 đã thay thế cách hiển thị này ở dạng cửa sổ popup. Dễ nhận thấy sự thay đổi này khi admin thêm (hoặc sửa) một block nào đó.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">“Cấu hình hiển thị block trên các thiết bị” cũng được đưa vào phần cấu hình block, admin có thể tùy chọn cho phép block hiển thị trên các thiết bị nào (tất cả thiết bị, thiết bị di động, máy tính bảng, thiết bị khác).<span style=\"line-height: 1.6;\">&nbsp;</span></p>		</li>	</ul>	</li></ul><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Thêm ngôn ngữ tiếng Pháp:</strong> website cài đặt mới có sẵn 3 ngôn ngữ mặc định là Việt, Anh và Pháp.</p>	</li></ul><p dir=\"ltr\" style=\"text-align: justify;\"><strong>Các thay đổi của module:</strong></p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module menu:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Phương án quản lý menu được thay đổi hướng tới việc quản lý menu nhanh chóng, tiện lợi nhất cho admin. Admin có thể nạp nhanh menu theo các tùy chọn mà hệ thống cung cấp.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Mẫu menu cũng được thay đổi, đa dạng và hiển thị tốt với các giao diện hiện đại.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module contact (Liên hệ):</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Bổ sung các trường thông tin về bộ phận (Điện thoại, fax, email, các trường liên hệ khác,...).</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Admin có thể trả lời khách nhiều lần, hệ thống lưu lại lịch sử trao đổi đó.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module users (Tài khoản):</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thay thế OpenID bằng thư viện OAuth - hỗ trợ tích hợp đăng nhập qua tài khoản mạng xã hội</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Cho phép đăng nhập 1 lần tài khoản người dùng NukeViet với Alfresco, Zimbra, Moodle, Koha</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm chức năng tùy biến trường dữ liệu thành viên</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm chức năng phân quyền sử dụng module users</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm cấu hình: Số ký tự username, độ phức tạp mật khẩu, tạo mật khảu ngẫu nhiên,....</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Cho phép sử dụng tên truy cập, hoặc email để đăng nhập</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module about:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Module about ở NukeViet 3 được đổi tên thành module page</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm các cấu hình hỗ trợ SEO: Ảnh minh họa, chú thích ảnh minh họa, mô tả, từ khóa cho bài viết, hiển thị các công cụ tương tác với các mạng xã hội.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm RSS</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Cấu hình phương án hiển thị các bài viết trên trang chính</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module news (Tin tức):</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm phân quyền cho người quản lý module, đến từng chủ đề</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thay đổi phương án lọc từ khóa bài viết, lọc từ khóa theo các từ khóa đã có trong tags thay vì đọc từ từ điển.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Bổ sung các trạng thái bài viết</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm cấu hình mặc định hiển thị ảnh minh họa trên trang xem chi tiết bài viết</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm các công cụ tương tác với mạng xã &nbsp;hội.</p>		</li>	</ul>	</li></ul><p dir=\"ltr\" style=\"text-align: justify;\"><strong>Quản lý Bình luận</strong></p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\">Các bình luận của các module sẽ được tích hợp quản lý tập trung để cấu hình.</p>	</li>	<li dir=\"ltr\" style=\"text-align: justify;\">Khi xây dựng mới module, Chỉ cần nhúng 1 đoạn mã vào. Tránh phải việc copy mã code gây khó khăn cho bảo trì.</li></ul>', '', '', NULL, 2, '', 0, 1, 1, 1),
(19, '', '', '<strong>Hệ thống:</strong><br  />- Sửa code theo khuyến nghị của codacy: https://www.codacy.com/app/nukeviet/nukeviet/dashboard<br  />- Cải thiện an ninh hệ thống theo đánh giá của các phần mềm bảo mật OWASP ZAP 2.6<br  />- Cải tiến chức năng Rewrite<br  />- Thêm tính năng bật tắt sitemap cho các module<br  />- Thêm link hướng dẫn sử dụng website dẫn tới từng chức năng tại https://wiki.nukeviet.vn/<br  />- Cập nhật trình soạn thảo&nbsp; CKEditor 4.7.1 để hỗ trợ việc copy nội dung từ Word, Excel, Hỗ trợ việc kéo thả ảnh, file từ máy tính vào trình soạn thảo tốt hơn: http://ckeditor.com/blog/CKEditor-4.7-released<br  />- Tích hợp thêm <a href=\\\"https://nukeviet.vn/vi/news/Tin-tuc/nukeviet-4-1-se-ho-tro-redis-de-cache-435.html\\\">Redis để cache</a> cho hệ thống<br  /><br  /><strong>Module Tài khoản:</strong><br  />- Tùy biến các trường hệ thống của module users giúp quản trị có thể cho ẩn/hiện khi đăng ký và đổi tên các trường này.<br  />- Thêm chức năng&nbsp; xác thực hai bước cho từng nhóm thành viên, Cấu hình yêu cầu xác thực hai bước cho từng nhóm thành viên.<br  />- Tích hợp reCAPTCHA<br  /><br  /><strong>Module Tin tức:</strong><br  />- Thêm cấu hình có bật tính năng copy bài viết, để dùng module này đăng cái bài viết có cạc trình bày tương tự nhau.<br  />- Cải thiện tính năng cho bài viết Facebook Instant Articles<br  />- Cảnh báo tránh cùng&nbsp; một lúc nhiều người sửa bài viết.<br  /><br  /><strong>Module banners</strong><br  />- Bỏ phần quản lý khách hàng tại quảng cáo, chuyển sang dùng tài khoản chung của site<br  />- Phần cấu hình khối quảng cáo được viết lại để cấu hình nhóm&nbsp; thành viên được đăng quảng cáo ngoài site, sau đó quản trị duyệt lại quảng cáo để hiển thị ngoài site.<br  />- Thêm cấu hình về thời gian chung áp dụng cho quảng cáo theo khối.<br  />- Sửa lại link quản cáo để tránh các click ảo.<br  />- Sửa hiển thị quản lý quảng cáo để tiện quản lý hơn.<br  /><br  />Và nhiều cập nhật sửa lỗi khác, xem chi tiết tại: https://github.com/nukeviet/nukeviet/blob/develop/CHANGELOG.txt<br  />', '', 'https://nukeviet.vn/vi/news/Tin-tuc/nukeviet-4-2-co-gi-moi-505.html', NULL, 2, '', 0, 1, 1, 1),
(20, '', '', '<strong>Hệ thống:</strong><br  />- Thay đổi phần quản lý block để dễ dùng hơn khi module có quá nhiều chức năng.<br  />- Thêm các tham số cấu hình&nbsp; SSL cho&nbsp; SMTP<br  />- Module Upload: Thêm cấu hình có thể chia nhỏ các file khi upload để có thể upload<br  />- Plugin:Thêm vị trí chạy sau khi thực hiện module, cải tiến mỗi Plugin sẽ chạy được ở các vị trí nhất định theo người lập trình quy định.<br  />- Tích hợp thêm thư viện PDF.js<br  />- Thêm tính năng xuất dữ liệu mẫu để khi tiết hành cài đặt có thể dựng luôn site hoàn chỉnh tường tự như cài đặt NukeViet eGovernment<br  /><br  /><strong>Module comment: </strong><br  />- Cho phép cấu hình có sử dụng trình soạn thảo ở phần bình luận hay không.<br  />- Cho phép cấu hình có sử dụng file đính kèm ở phần bình luận hay không.<br  />- Module news: Allow deactive category, allow search for locked posts, Allows attaching files to posts<br  />- Config module display on admin index for authors<br  />&nbsp;<br  /><strong>Module Tài khoản:</strong><br  />- Module users: Allowed to delete and change status multiple account, fix block login, update Openid icon, fix sort groups, fix delete group<br  />- Người điều hành chung của site có thể cấu hình 1 số thông số. (Lúc trước chỉ quản trị tối cao mới cấu hình được)<br  />- Với mỗi tài khoản quản trị, có thể chọn module mặc định sau khi đăng nhập quản trị.<br  /><br  /><strong>Module Tin tức:</strong><br  />-&nbsp; Thay đổi chức năng quản lý chủ đề có thể: Hiển thị trên trang chủ, không hiển thị trên trang chủ hoặc Khóa chủ đề.<br  />-&nbsp; Cho phép đính kèm file vào các bài viết (Không cần thông qua trình soạn thảo)<br  />- Thêm tính năng sắp xếp các bài viết.<br  />- Cho phép cấu hình layout khi xem chi tiết bài viết (Tưong tự module page đã có trước)<br  /><br  /><strong>Module page</strong><br  />-&nbsp; Thêm cấu hình alias lower khi thêm bài viết mới.<br  /><br  />Và nhiều cập nhật sửa lỗi khác, xem chi tiết tại: <a href=\"https://github.com/nukeviet/nukeviet/blob/develop/CHANGELOG.txt\">https://github.com/nukeviet/nukeviet/blob/develop/CHANGELOG.txt</a>', '', 'https://nukeviet.vn/vi/news/Tin-tuc/nukeviet-4-3-co-gi-moi-540.html', NULL, 2, '', 0, 1, 1, 1),
(21, '', '', '<br />\r\n<a data-utm=\"Cate_XaHoi|MainList|2\" href=\"https://dantri.com.vn/xa-hoi/nhieu-tieng-no-lon-phat-ra-tu-nui-nguoi-dan-song-trong-bat-an-20201112131151882.htm#dt_source=Cate_XaHoi&amp;dt_campaign=MainList&amp;dt_medium=2\" title=\"Nhiều tiếng nổ lớn phát ra từ núi, người dân sống trong bất an\">(Dân trí)&nbsp;- Trong khi chính quyền đang lên kế hoạch di dời dân vùng có nguy cơ cao sạt lở, người dân xã Hướng Sơn vẫn sống trong sự lo lắng, bất an, khi hàng ngày nghe những tiếng nổ lớn phát ra từ phía núi.</a>', '', '', '', 2, '', 0, 1, 1, 1),
(22, '', '', '<a data-utm=\"Cate_XaHoi|Cover|1\" href=\"https://dantri.com.vn/xa-hoi/gia-dinh-co-gai-bung-150-mam-co-o-dien-bien-hua-ban-dat-de-tra-no-20201112123807566.htm#dt_source=Cate_XaHoi&amp;dt_campaign=Cover&amp;dt_medium=1\" title=\"Gia đình cô gái &#039;bùng&#039; 150 mâm cỗ ở Điện Biên hứa bán đất để trả nợ\">(Dân trí)&nbsp;- Trao đổi với phóng viên, Đại tá Tráng A Tủa, Giám đốc Công an tỉnh Điện Biên cho biết, gia đình chị Cà Thị Út hứa sẽ bán đất, tài sản để thu xếp tiền trả lại cho nhà hàng Tâm Phúc...</a>', '', '', '', 2, '', 0, 1, 1, 1);
INSERT INTO `nv4_vi_news_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `keywords`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(23, '', '', '<p>Tối 11/11, lãnh đạo huyện Bắc Trà My, Quảng Nam cho biết, đến 21h cùng ngày, lực lượng chức năng vẫn chưa tìm thấy nạn nhân được cho là mất tích trong vụ sạt lở đất xảy ra trong chiều cùng ngày.</p>\r\n\r\n<p>Nạn nhân mất tích là ông Huỳnh Văn Hạ (52 tuổi, trú huyện Thăng Bình, Quảng Nam). Còn 2 người bị thương nặng được đưa đi cấp cứu là ông Đoàn Ngọc Hùng (trú thị trấn Trà My, huyện Bắc Trà My, Quảng Nam) và ông Huỳnh Văn Thanh (trú phường Trường Xuân, TP Tam Kỳ, Quảng Nam). Ông Hùng bị gãy hai xương chân, còn ông Thanh bị chấn thương cột sống cổ, chân tay bị tê.</p>', '', '', '', 2, '', 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_logs`
--

CREATE TABLE `nv4_vi_news_logs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT 0,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_rows`
--

CREATE TABLE `nv4_vi_news_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_rows`
--

INSERT INTO `nv4_vi_news_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 12, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 0, 14, 0, 0, 0, 0, '', 0),
(7, 11, '11', 0, 1, 'Phạm Quốc Tiến', 2, 1453192400, 1453192400, 1, 11, 1453192400, 0, 2, 'Tuyển dụng lập trình viên PHP phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-PHP', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về PHP và MySQL? Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(8, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391089, 1445394192, 1, 5, 1445391060, 0, 2, 'Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet', 'Tuyen-dung-chuyen-vien-do-hoa', 'Bạn đam mê nguồn mở? Bạn là chuyên gia đồ họa? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(9, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391090, 1445394193, 1, 6, 1445391060, 0, 2, 'Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về front-end (HTML/CSS/JS)? Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 2, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 0, 1, 0, 0, 0, 0, '', 0),
(11, 1, '1', 0, 1, '', 4, 1445309676, 1445309676, 1, 3, 1445309520, 0, 2, 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 'nukeviet-duoc-uu-tien-mua-sam-su-dung-trong-co-quan-to-chuc-nha-nuoc', 'Ngày 5/12/2014, Bộ trưởng Bộ TT&TT Nguyễn Bắc Son đã ký ban hành Thông tư 20/2014/TT-BTTTT (Thông tư 20) quy định về các sản phẩm phần mềm nguồn mở (PMNM) được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước. NukeViet (phiên bản 3.4.02 trở lên) là phần mềm được nằm trong danh sách này.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 1, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0),
(12, 11, '11', 0, 1, 'Vũ Bích Ngọc', 0, 1445391061, 1445394203, 1, 4, 1445391000, 0, 2, 'Công ty VINADES tuyển dụng nhân viên kinh doanh', 'cong-ty-vinades-tuyen-dung-nhan-vien-kinh-doanh', 'Công ty cổ phần phát triển nguồn mở Việt Nam là đơn vị chủ quản của phần mềm mã nguồn mở NukeViet - một mã nguồn được tin dùng trong cơ quan nhà nước, đặc biệt là ngành giáo dục. Chúng tôi cần tuyển 05 nhân viên kinh doanh cho lĩnh vực này.', 'tuyen-dung-nvkd.png', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 7, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(15, 11, '11', 0, 1, 'Trần Thị Thu', 0, 1445391135, 1445394444, 1, 8, 1445391120, 0, 2, 'Học việc tại công ty VINADES', 'hoc-viec-tai-cong-ty-vinades', 'Công ty cổ phần phát triển nguồn mở Việt Nam tạo cơ hội việc làm và học việc miễn phí cho những ứng viên có đam mê thiết kế web, lập trình PHP… được học tập và rèn luyện cùng đội ngũ lập trình viên phát triển NukeViet.', 'hoc-viec-tai-cong-ty-vinades.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(16, 1, '1', 0, 1, '', 0, 1445391182, 1445394133, 1, 9, 1445391120, 0, 2, 'NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016', 'nukeviet-duoc-bo-gd-dt-dua-vao-huong-dan-thuc-hien-nhiem-vu-cntt-nam-hoc-2015-2016', 'Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, NukeViet được đưa vào các hạng mục: Tập huấn sử dụng phần mềm nguồn mở cho giáo viên và cán bộ quản lý giáo dục; Khai thác, sử dụng và dạy học; đặc biệt phần &quot;khuyến cáo khi sử dụng các hệ thống CNTT&quot; có chỉ rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.', 'nukeviet-cms.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 10, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0),
(18, 2, '2', 0, 1, 'VINADES', 0, 1453194455, 1453194455, 1, 13, 1453194455, 0, 2, 'NukeViet 4.0 có gì mới?', 'nukeviet-4-0-co-gi-moi', 'NukeViet 4 là phiên bản NukeViet được cộng đồng đánh giá cao, hứa hẹn nhiều điểm vượt trội về công nghệ đến thời điểm hiện tại. NukeViet 4 thay đổi gần như hoàn toàn từ nhân hệ thống đến chức năng, giao diện người dùng. Vậy, có gì mới trong phiên bản này?', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0),
(19, 2, '2', 0, 1, 'VINADES', 0, 1501837620, 1501837620, 1, 14, 1501837620, 0, 2, 'NukeViet 4.2 có gì mới?', 'nukeviet-4-2-co-gi-moi', 'NukeViet 4.2 là phiên bản nâng cấp của phiên bản NukeViet 4.0 tập trung vào việc fix các vấn đề bất cập còn tồn tại của NukeViet 4.0, Thêm các tính năng mới để tăng cường bảo mật của hệ thống cũng như tối ưu trải nghiệm của người dùng.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 1, 2, 0, 0, 0, 0, '', 0),
(20, 2, '2', 0, 1, 'VINADES', 0, 1510215907, 1510215907, 1, 15, 1510215907, 0, 2, 'NukeViet 4.3 có gì mới?', 'nukeviet-4-3-co-gi-moi', 'NukeViet 4.3 là phiên bản nâng cấp của phiên bản NukeViet 4.2 tập trung vào việc fix các vấn đề bất cập còn tồn tại, tối ưu trải nghiệm của người dùng.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 1, 2, 0, 0, 0, 0, '', 0),
(21, 1, '1,12', 0, 1, 'truongdz96', 0, 1605174449, 1605174449, 1, 16, 1605174240, 0, 2, 'Tin xã hội', 'tin-xa-hoi', '', '2020_11/cach-lam-chuong-cho.jpg', 'Cách làm chuồng chó', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(22, 1, '1,12', 0, 1, 'truong96', 0, 1605174650, 1605174650, 1, 17, 1605174540, 0, 2, 'Gia đình cô gái &quot;bùng&quot; 150 mâm cỗ ở Điện Biên hứa bán đất để trả nợ', 'gia-dinh-co-gai-bung-150-mam-co-o-dien-bien-hua-ban-dat-de-tra-no', '', '2020_11/dantri_1.jpeg', '', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0),
(23, 1, '1,8', 0, 1, 'truong96', 0, 1605177368, 1605177726, 1, 18, 1605177180, 0, 2, 'Tối 11&#x002F;11, lãnh đạo huyện Bắc Trà My, Quảng Nam cho biết, đến 21h cùng ngày, lực lượng chức năng vẫn chưa tìm thấy nạn nhân được cho là mất tích trong vụ sạt lở đất xảy ra trong chiều cùng ngày.', 'nhan-chung-ke-vu-sat-lo-nui-kinh-hoang-nguoi-chay-thuc-mang', '', '2020_11/1-1605091610535.jpg', '', 1, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_sources`
--

CREATE TABLE `nv4_vi_news_sources` (
  `sourceid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_sources`
--

INSERT INTO `nv4_vi_news_sources` (`sourceid`, `title`, `link`, `logo`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Báo Hà Nội Mới', 'http://hanoimoi.com.vn', '', 1, 1274989177, 1274989177),
(2, 'VINADES.,JSC', 'http://vinades.vn', '', 2, 1274989787, 1274989787),
(3, 'Báo điện tử Dân Trí', 'http://dantri.com.vn', '', 3, 1322685396, 1322685396),
(4, 'Bộ Thông tin và Truyền thông', 'http://http://mic.gov.vn', '', 4, 1445309676, 1445309676);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tags`
--

CREATE TABLE `nv4_vi_news_tags` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT 0,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_tags`
--

INSERT INTO `nv4_vi_news_tags` (`tid`, `numnews`, `alias`, `image`, `description`, `keywords`) VALUES
(1, 0, 'nguồn-mở', '', '', 'nguồn mở'),
(2, 0, 'quen-thuộc', '', '', 'quen thuộc'),
(3, 0, 'cộng-đồng', '', '', 'cộng đồng'),
(4, 0, 'việt-nam', '', '', 'việt nam'),
(5, 0, 'hoạt-động', '', '', 'hoạt động'),
(6, 0, 'tin-tức', '', '', 'tin tức'),
(7, 1, 'thương-mại-điện', '', '', 'thương mại điện'),
(8, 0, 'điện-tử', '', '', 'điện tử'),
(9, 13, 'nukeviet', '', '', 'nukeviet'),
(10, 8, 'vinades', '', '', 'vinades'),
(11, 3, 'lập-trình-viên', '', '', 'lập trình viên'),
(12, 3, 'chuyên-viên-đồ-họa', '', '', 'chuyên viên đồ họa'),
(13, 3, 'php', '', '', 'php'),
(14, 2, 'mysql', '', '', 'mysql'),
(15, 1, 'nhân-tài-đất-việt-2011', '', '', 'nhân tài đất việt 2011'),
(16, 9, 'mã-nguồn-mở', '', '', 'mã nguồn mở'),
(17, 2, 'nukeviet4', '', '', 'nukeviet4'),
(18, 1, 'mail', '', '', 'mail'),
(19, 1, 'fpt', '', '', 'fpt'),
(20, 1, 'smtp', '', '', 'smtp'),
(21, 1, 'bootstrap', '', '', 'bootstrap'),
(22, 1, 'block', '', '', 'block'),
(23, 1, 'modules', '', '', 'modules'),
(24, 2, 'banner', '', '', 'banner'),
(25, 1, 'liên-kết', '', '', 'liên kết'),
(26, 2, 'hosting', '', '', 'hosting'),
(27, 1, 'hỗ-trợ', '', '', 'hỗ trợ'),
(28, 1, 'hợp-tác', '', '', 'hợp tác'),
(29, 1, 'tốc-độ', '', '', 'tốc độ'),
(30, 2, 'website', '', '', 'website'),
(31, 1, 'bảo-mật', '', '', 'bảo mật'),
(32, 4, 'giáo-dục', '', '', 'giáo dục'),
(33, 1, 'edu-gate', '', '', 'edu gate'),
(34, 2, 'lập-trình', '', '', 'lập trình'),
(35, 1, 'logo', '', '', 'logo'),
(36, 1, 'code', '', '', 'code'),
(37, 1, 'thực-tập', '', '', 'thực tập'),
(38, 1, 'kinh-doanh', '', '', 'kinh doanh'),
(39, 1, 'nhân-viên', '', '', 'nhân viên'),
(40, 1, 'bộ-gd&đt', '', '', 'Bộ GD&ĐT'),
(41, 1, 'module', '', '', 'module'),
(42, 1, 'php-nuke', '', '', 'php-nuke');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tags_id`
--

CREATE TABLE `nv4_vi_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_tags_id`
--

INSERT INTO `nv4_vi_news_tags_id` (`id`, `tid`, `keyword`) VALUES
(1, 7, 'thương mại điện'),
(1, 9, 'nukeviet'),
(7, 10, 'vinades'),
(7, 9, 'nukeviet'),
(7, 11, 'lập trình viên'),
(7, 12, 'chuyên viên đồ họa'),
(7, 13, 'php'),
(7, 14, 'mysql'),
(10, 15, 'Nhân tài đất Việt 2011'),
(10, 16, 'mã nguồn mở'),
(10, 9, 'nukeviet'),
(18, 17, 'nukeviet4'),
(18, 9, 'nukeviet'),
(18, 10, 'vinades'),
(18, 13, 'php'),
(18, 14, 'mysql'),
(18, 18, 'mail'),
(18, 19, 'fpt'),
(18, 20, 'smtp'),
(18, 21, 'bootstrap'),
(18, 22, 'block'),
(18, 23, 'modules'),
(18, 16, 'mã nguồn mở'),
(6, 16, 'mã nguồn mở'),
(6, 9, 'nukeviet'),
(6, 17, 'nukeviet4'),
(6, 10, 'vinades'),
(6, 24, 'banner'),
(6, 25, 'liên kết'),
(6, 26, 'hosting'),
(6, 27, 'hỗ trợ'),
(6, 28, 'hợp tác'),
(17, 9, 'nukeviet'),
(17, 32, 'giáo dục'),
(17, 33, 'edu gate'),
(15, 16, 'mã nguồn mở'),
(15, 10, 'vinades'),
(15, 9, 'nukeviet'),
(15, 11, 'lập trình viên'),
(15, 12, 'chuyên viên đồ họa'),
(16, 9, 'nukeviet'),
(16, 16, 'mã nguồn mở'),
(16, 32, 'giáo dục'),
(8, 10, 'vinades'),
(8, 34, 'lập trình'),
(8, 35, 'logo'),
(8, 24, 'banner'),
(8, 30, 'website'),
(8, 36, 'code'),
(8, 13, 'php'),
(9, 16, 'mã nguồn mở'),
(9, 10, 'vinades'),
(9, 34, 'lập trình'),
(9, 9, 'nukeviet'),
(14, 37, 'thực tập'),
(14, 10, 'vinades'),
(14, 12, 'chuyên viên đồ họa'),
(14, 11, 'lập trình viên'),
(14, 9, 'nukeviet'),
(14, 16, 'mã nguồn mở'),
(12, 38, 'kinh doanh'),
(12, 9, 'nukeviet'),
(12, 32, 'giáo dục'),
(12, 39, 'nhân viên'),
(11, 16, 'mã nguồn mở'),
(11, 9, 'nukeviet'),
(11, 40, 'Bộ GD&ĐT'),
(11, 32, 'giáo dục'),
(1, 41, 'module'),
(1, 16, 'mã nguồn mở'),
(1, 42, 'php-nuke');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tmp`
--

CREATE TABLE `nv4_vi_news_tmp` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `time_edit` int(11) NOT NULL,
  `time_late` int(11) NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_topics`
--

CREATE TABLE `nv4_vi_news_topics` (
  `topicid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_topics`
--

INSERT INTO `nv4_vi_news_topics` (`topicid`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 'NukeViet 4', 'NukeViet-4', '', 'NukeViet 4', 1, 'NukeViet 4', 1445396011, 1445396011);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_page`
--

CREATE TABLE `nv4_vi_page` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialbutton` tinyint(4) NOT NULL DEFAULT 0,
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_page_config`
--

CREATE TABLE `nv4_vi_page_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_page_config`
--

INSERT INTO `nv4_vi_page_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_referer_stats`
--

CREATE TABLE `nv4_vi_referer_stats` (
  `host` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `month01` int(11) NOT NULL DEFAULT 0,
  `month02` int(11) NOT NULL DEFAULT 0,
  `month03` int(11) NOT NULL DEFAULT 0,
  `month04` int(11) NOT NULL DEFAULT 0,
  `month05` int(11) NOT NULL DEFAULT 0,
  `month06` int(11) NOT NULL DEFAULT 0,
  `month07` int(11) NOT NULL DEFAULT 0,
  `month08` int(11) NOT NULL DEFAULT 0,
  `month09` int(11) NOT NULL DEFAULT 0,
  `month10` int(11) NOT NULL DEFAULT 0,
  `month11` int(11) NOT NULL DEFAULT 0,
  `month12` int(11) NOT NULL DEFAULT 0,
  `last_update` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_samples`
--

CREATE TABLE `nv4_vi_samples` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(50) DEFAULT 1,
  `addtime` int(50) DEFAULT 0,
  `updatetime` int(50) DEFAULT 0,
  `weight` int(50) DEFAULT 1,
  `note` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_samples`
--

INSERT INTO `nv4_vi_samples` (`id`, `fullname`, `phone`, `email`, `gender`, `province`, `district`, `active`, `addtime`, `updatetime`, `weight`, `note`) VALUES
(10, 'Hoang Van Truong dz96', '0979454593', 'hoangtruongttat96@gmail.com', '1', '203', '10103', 1, 1604374236, 0, 1, ''),
(11, 'Hoang Van Truong 2111', '0979454593', 'hoangtruongttat96@gmail.com', '2', '209', '0', 1, 1604396592, 0, 2, 'note'),
(12, 'Hoang Van Truong 123', '0979454593', 'hoangtruongttat96@gmail.com', '2', '101', '10101', 0, 1604399548, 0, 3, 'note2'),
(13, 'Hoang Van Truong 2', '0979454593', 'hoangtruongttat96@gmail.com', '1', '401', '0', 1, 1604403544, 0, 4, ''),
(14, 'Hoang Van Truong pro', '0979454593', 'hoangtruongttat96@gmail.com', '1', '103', '0', 0, 1604405409, 0, 5, ''),
(16, 'Hoang Van Truong pro', '0979454593', 'hoangtruongttat96@gmail.com', '1', '101', '10106', 1, 1604569126, 0, 6, ''),
(21, 'Tran Van Tú', '0979454593', 'hoangtruongttat96@gmail.com', '2', '107', '10106', 0, 1604587391, 0, 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_searchkeys`
--

CREATE TABLE `nv4_vi_searchkeys` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `search_engine` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_accessories`
--

CREATE TABLE `shop_accessories` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_admin`
--

CREATE TABLE `shop_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `activated` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_category`
--

CREATE TABLE `shop_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_category`
--

INSERT INTO `shop_category` (`id`, `name`, `image`, `description`, `weight`, `created_at`, `updated_at`) VALUES
(1, 'Iphone', '', NULL, 1, NULL, NULL),
(2, 'SamSung', '', NULL, 1, NULL, NULL),
(3, 'Nokia', '', NULL, 1, NULL, NULL),
(4, 'OPPO', '', NULL, 1, NULL, NULL),
(5, 'Xiaomi', '', NULL, 1, NULL, NULL),
(6, 'ViVo', '', NULL, 1, NULL, NULL),
(7, 'Realme', '', NULL, 1, NULL, NULL),
(8, 'Vsmart', '', NULL, 1, NULL, NULL),
(9, 'HuaWei', '', NULL, 1, NULL, NULL),
(10, 'Mobel', '', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_news`
--

CREATE TABLE `shop_news` (
  `id` int(10) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date_set` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shop_order`
--

CREATE TABLE `shop_order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(50) DEFAULT NULL,
  `product_id` int(100) DEFAULT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_set` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_order_details`
--

CREATE TABLE `shop_order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(100) DEFAULT NULL,
  `total_money` float DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_phone_details`
--

CREATE TABLE `shop_phone_details` (
  `id` int(10) NOT NULL,
  `product_id` int(10) DEFAULT NULL,
  `screen` varchar(255) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `operating` varchar(255) DEFAULT NULL,
  `front_camera` varchar(10) DEFAULT NULL,
  `rear_camera` varchar(10) DEFAULT NULL,
  `CPU` varchar(10) DEFAULT NULL,
  `RAM` varchar(10) DEFAULT NULL,
  `internal_memory` varchar(50) DEFAULT NULL,
  `SIM` varchar(50) DEFAULT NULL,
  `battery_capacity` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shop_products`
--

CREATE TABLE `shop_products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `sell_price` float NOT NULL DEFAULT 0,
  `category_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `weight` int(50) DEFAULT 1,
  `addtime` int(50) DEFAULT 0,
  `updatetime` int(50) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_products`
--

INSERT INTO `shop_products` (`product_id`, `name`, `slug`, `image`, `description`, `price`, `sell_price`, `category_id`, `weight`, `addtime`, `updatetime`) VALUES
(17, 'SamSung A59', 'SamSung', '', 'Thương hiệu lâu đời', 1111110, 10, '2', 1, 1605889994, 0),
(22, 'Iphone 1', 'Iphone', '', 'thương hiệu', 10, 10, '1', 1, 1605924969, 0),
(23, 'Iphone 2', 'Iphone', '', 'thương hiệu', 10, 10, '1', 1, 1605924972, 0),
(24, 'Iphone 3', 'Iphone', '', 'thương hiệu', 10, 10, '1', 1, 1605924976, 0),
(25, 'Iphone 4', 'Iphone', '', 'thương hiệu', 10, 10, '1', 1, 1605924980, 0),
(26, 'Iphone 5', 'Iphone', '', 'thương hiệu', 10, 10, '1', 1, 1605924983, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_user`
--

CREATE TABLE `shop_user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_user`
--

INSERT INTO `shop_user` (`user_id`, `name`, `email`, `address`, `phone_number`) VALUES
(1, 'truong', '', '', ''),
(2, 'truongdz96', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nv4_authors`
--
ALTER TABLE `nv4_authors`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyname` (`keyname`);

--
-- Indexes for table `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `module` (`module`);

--
-- Indexes for table `nv4_authors_oauth`
--
ALTER TABLE `nv4_authors_oauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`,`oauth_server`,`oauth_uid`),
  ADD KEY `oauth_email` (`oauth_email`);

--
-- Indexes for table `nv4_banners_click`
--
ALTER TABLE `nv4_banners_click`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bid` (`bid`),
  ADD KEY `click_day` (`click_day`),
  ADD KEY `click_ip` (`click_ip`),
  ADD KEY `click_country` (`click_country`),
  ADD KEY `click_browse_key` (`click_browse_key`),
  ADD KEY `click_os_key` (`click_os_key`);

--
-- Indexes for table `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `clid` (`clid`);

--
-- Indexes for table `nv4_config`
--
ALTER TABLE `nv4_config`
  ADD UNIQUE KEY `lang` (`lang`,`module`,`config_name`);

--
-- Indexes for table `nv4_cookies`
--
ALTER TABLE `nv4_cookies`
  ADD UNIQUE KEY `cookiename` (`name`,`domain`,`path`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `nv4_counter`
--
ALTER TABLE `nv4_counter`
  ADD UNIQUE KEY `c_type` (`c_type`,`c_val`);

--
-- Indexes for table `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_sys` (`is_sys`);

--
-- Indexes for table `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
  ADD PRIMARY KEY (`idfile`);

--
-- Indexes for table `nv4_ips`
--
ALTER TABLE `nv4_ips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`,`type`);

--
-- Indexes for table `nv4_language`
--
ALTER TABLE `nv4_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filelang` (`idfile`,`lang_key`,`langtype`);

--
-- Indexes for table `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
  ADD PRIMARY KEY (`idfile`),
  ADD UNIQUE KEY `module` (`module`,`admin_file`);

--
-- Indexes for table `nv4_logs`
--
ALTER TABLE `nv4_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_notification`
--
ALTER TABLE `nv4_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_to` (`send_to`),
  ADD KEY `admin_view_allowed` (`admin_view_allowed`),
  ADD KEY `logic_mode` (`logic_mode`);

--
-- Indexes for table `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `plugin_file` (`plugin_file`);

--
-- Indexes for table `nv4_sessions`
--
ALTER TABLE `nv4_sessions`
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `onl_time` (`onl_time`);

--
-- Indexes for table `nv4_setup_extensions`
--
ALTER TABLE `nv4_setup_extensions`
  ADD UNIQUE KEY `title` (`type`,`title`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `nv4_setup_language`
--
ALTER TABLE `nv4_setup_language`
  ADD PRIMARY KEY (`lang`);

--
-- Indexes for table `nv4_shops_block`
--
ALTER TABLE `nv4_shops_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv4_shops_block_cat`
--
ALTER TABLE `nv4_shops_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`);

--
-- Indexes for table `nv4_shops_carrier`
--
ALTER TABLE `nv4_shops_carrier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_carrier_config`
--
ALTER TABLE `nv4_shops_carrier_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_carrier_config_items`
--
ALTER TABLE `nv4_shops_carrier_config_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_carrier_config_location`
--
ALTER TABLE `nv4_shops_carrier_config_location`
  ADD UNIQUE KEY `cid` (`cid`,`lid`);

--
-- Indexes for table `nv4_shops_catalogs`
--
ALTER TABLE `nv4_shops_catalogs`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_shops_coupons`
--
ALTER TABLE `nv4_shops_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_coupons_history`
--
ALTER TABLE `nv4_shops_coupons_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_coupons_product`
--
ALTER TABLE `nv4_shops_coupons_product`
  ADD UNIQUE KEY `cid` (`cid`,`pid`);

--
-- Indexes for table `nv4_shops_discounts`
--
ALTER TABLE `nv4_shops_discounts`
  ADD PRIMARY KEY (`did`),
  ADD KEY `begin_time` (`begin_time`,`end_time`);

--
-- Indexes for table `nv4_shops_field`
--
ALTER TABLE `nv4_shops_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Indexes for table `nv4_shops_field_value_vi`
--
ALTER TABLE `nv4_shops_field_value_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rows_id` (`rows_id`,`field_id`);

--
-- Indexes for table `nv4_shops_files`
--
ALTER TABLE `nv4_shops_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_files_rows`
--
ALTER TABLE `nv4_shops_files_rows`
  ADD UNIQUE KEY `id_files` (`id_files`,`id_rows`);

--
-- Indexes for table `nv4_shops_group`
--
ALTER TABLE `nv4_shops_group`
  ADD PRIMARY KEY (`groupid`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_shops_group_cateid`
--
ALTER TABLE `nv4_shops_group_cateid`
  ADD UNIQUE KEY `groupid` (`groupid`,`cateid`);

--
-- Indexes for table `nv4_shops_group_items`
--
ALTER TABLE `nv4_shops_group_items`
  ADD PRIMARY KEY (`pro_id`,`group_id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `nv4_shops_group_quantity`
--
ALTER TABLE `nv4_shops_group_quantity`
  ADD UNIQUE KEY `pro_id` (`pro_id`,`listgroup`);

--
-- Indexes for table `nv4_shops_location`
--
ALTER TABLE `nv4_shops_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_shops_money_vi`
--
ALTER TABLE `nv4_shops_money_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `nv4_shops_orders`
--
ALTER TABLE `nv4_shops_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_code` (`order_code`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_time` (`order_time`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `nv4_shops_orders_id`
--
ALTER TABLE `nv4_shops_orders_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderid` (`order_id`,`id`);

--
-- Indexes for table `nv4_shops_orders_id_group`
--
ALTER TABLE `nv4_shops_orders_id_group`
  ADD UNIQUE KEY `orderid` (`order_i`,`group_id`);

--
-- Indexes for table `nv4_shops_orders_shipping`
--
ALTER TABLE `nv4_shops_orders_shipping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `add_time` (`add_time`);

--
-- Indexes for table `nv4_shops_payment`
--
ALTER TABLE `nv4_shops_payment`
  ADD PRIMARY KEY (`payment`);

--
-- Indexes for table `nv4_shops_point`
--
ALTER TABLE `nv4_shops_point`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_shops_point_history`
--
ALTER TABLE `nv4_shops_point_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_review`
--
ALTER TABLE `nv4_shops_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `nv4_shops_rows`
--
ALTER TABLE `nv4_shops_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`),
  ADD KEY `listcatid` (`listcatid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`);

--
-- Indexes for table `nv4_shops_shops`
--
ALTER TABLE `nv4_shops_shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_shops_carrier`
--
ALTER TABLE `nv4_shops_shops_carrier`
  ADD UNIQUE KEY `shops_id` (`shops_id`,`carrier_id`);

--
-- Indexes for table `nv4_shops_tabs`
--
ALTER TABLE `nv4_shops_tabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_tags_id_vi`
--
ALTER TABLE `nv4_shops_tags_id_vi`
  ADD UNIQUE KEY `sid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `nv4_shops_tags_vi`
--
ALTER TABLE `nv4_shops_tags_vi`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_shops_template`
--
ALTER TABLE `nv4_shops_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_shops_transaction`
--
ALTER TABLE `nv4_shops_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `nv4_shops_units`
--
ALTER TABLE `nv4_shops_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_warehouse`
--
ALTER TABLE `nv4_shops_warehouse`
  ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `nv4_shops_warehouse_logs`
--
ALTER TABLE `nv4_shops_warehouse_logs`
  ADD PRIMARY KEY (`logid`),
  ADD KEY `wid` (`wid`);

--
-- Indexes for table `nv4_shops_warehouse_logs_group`
--
ALTER TABLE `nv4_shops_warehouse_logs_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logid` (`logid`);

--
-- Indexes for table `nv4_shops_weight_vi`
--
ALTER TABLE `nv4_shops_weight_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `nv4_shops_wishlist`
--
ALTER TABLE `nv4_shops_wishlist`
  ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `name` (`dirname`);

--
-- Indexes for table `nv4_upload_file`
--
ALTER TABLE `nv4_upload_file`
  ADD UNIQUE KEY `did` (`did`,`title`),
  ADD KEY `userid` (`userid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `nv4_users`
--
ALTER TABLE `nv4_users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idsite` (`idsite`);

--
-- Indexes for table `nv4_users_backupcodes`
--
ALTER TABLE `nv4_users_backupcodes`
  ADD UNIQUE KEY `userid` (`userid`,`code`);

--
-- Indexes for table `nv4_users_config`
--
ALTER TABLE `nv4_users_config`
  ADD PRIMARY KEY (`config`);

--
-- Indexes for table `nv4_users_edit`
--
ALTER TABLE `nv4_users_edit`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Indexes for table `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `ktitle` (`title`,`idsite`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv4_users_groups_users`
--
ALTER TABLE `nv4_users_groups_users`
  ADD PRIMARY KEY (`group_id`,`userid`);

--
-- Indexes for table `nv4_users_info`
--
ALTER TABLE `nv4_users_info`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_users_openid`
--
ALTER TABLE `nv4_users_openid`
  ADD PRIMARY KEY (`opid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
  ADD PRIMARY KEY (`qid`),
  ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- Indexes for table `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `login` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `theme` (`theme`),
  ADD KEY `module` (`module`),
  ADD KEY `position` (`position`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv4_vi_blocks_weight`
--
ALTER TABLE `nv4_vi_blocks_weight`
  ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Indexes for table `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `mod_id` (`module`,`area`,`id`),
  ADD KEY `post_time` (`post_time`);

--
-- Indexes for table `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `full_name` (`full_name`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_name` (`sender_name`);

--
-- Indexes for table `nv4_vi_contact_supporter`
--
ALTER TABLE `nv4_vi_contact_supporter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`,`mid`);

--
-- Indexes for table `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
  ADD PRIMARY KEY (`func_id`),
  ADD UNIQUE KEY `func_name` (`func_name`,`in_module`),
  ADD UNIQUE KEY `alias` (`alias`,`in_module`);

--
-- Indexes for table `nv4_vi_modthemes`
--
ALTER TABLE `nv4_vi_modthemes`
  ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Indexes for table `nv4_vi_modules`
--
ALTER TABLE `nv4_vi_modules`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `nv4_vi_news_1`
--
ALTER TABLE `nv4_vi_news_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_2`
--
ALTER TABLE `nv4_vi_news_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_8`
--
ALTER TABLE `nv4_vi_news_8`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_9`
--
ALTER TABLE `nv4_vi_news_9`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_10`
--
ALTER TABLE `nv4_vi_news_10`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_11`
--
ALTER TABLE `nv4_vi_news_11`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_12`
--
ALTER TABLE `nv4_vi_news_12`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_admins`
--
ALTER TABLE `nv4_vi_news_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Indexes for table `nv4_vi_news_block`
--
ALTER TABLE `nv4_vi_news_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_config_post`
--
ALTER TABLE `nv4_vi_news_config_post`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `nv4_vi_news_detail`
--
ALTER TABLE `nv4_vi_news_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
  ADD PRIMARY KEY (`sourceid`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_news_tags_id`
--
ALTER TABLE `nv4_vi_news_tags_id`
  ADD UNIQUE KEY `id_tid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `nv4_vi_news_tmp`
--
ALTER TABLE `nv4_vi_news_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
  ADD PRIMARY KEY (`topicid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_page_config`
--
ALTER TABLE `nv4_vi_page_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_referer_stats`
--
ALTER TABLE `nv4_vi_referer_stats`
  ADD UNIQUE KEY `host` (`host`),
  ADD KEY `total` (`total`);

--
-- Indexes for table `nv4_vi_samples`
--
ALTER TABLE `nv4_vi_samples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fullname` (`fullname`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`);

--
-- Indexes for table `nv4_vi_searchkeys`
--
ALTER TABLE `nv4_vi_searchkeys`
  ADD KEY `id` (`id`),
  ADD KEY `skey` (`skey`),
  ADD KEY `search_engine` (`search_engine`);

--
-- Indexes for table `shop_accessories`
--
ALTER TABLE `shop_accessories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_products` (`product_id`);

--
-- Indexes for table `shop_admin`
--
ALTER TABLE `shop_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `name_2` (`name`);

--
-- Indexes for table `shop_news`
--
ALTER TABLE `shop_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_order`
--
ALTER TABLE `shop_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `name` (`product_id`),
  ADD KEY `status` (`note`),
  ADD KEY `phone` (`phone_number`),
  ADD KEY `status_2` (`note`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `shop_order_details`
--
ALTER TABLE `shop_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `shop_phone_details`
--
ALTER TABLE `shop_phone_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `shop_products`
--
ALTER TABLE `shop_products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `name` (`name`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `shop_user`
--
ALTER TABLE `shop_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
  MODIFY `mid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nv4_authors_oauth`
--
ALTER TABLE `nv4_authors_oauth`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_banners_click`
--
ALTER TABLE `nv4_banners_click`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=895;

--
-- AUTO_INCREMENT for table `nv4_ips`
--
ALTER TABLE `nv4_ips`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_language`
--
ALTER TABLE `nv4_language`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_logs`
--
ALTER TABLE `nv4_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `nv4_notification`
--
ALTER TABLE `nv4_notification`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
  MODIFY `pid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_shops_block_cat`
--
ALTER TABLE `nv4_shops_block_cat`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_carrier`
--
ALTER TABLE `nv4_shops_carrier`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_carrier_config`
--
ALTER TABLE `nv4_shops_carrier_config`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_carrier_config_items`
--
ALTER TABLE `nv4_shops_carrier_config_items`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_catalogs`
--
ALTER TABLE `nv4_shops_catalogs`
  MODIFY `catid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_coupons`
--
ALTER TABLE `nv4_shops_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_coupons_history`
--
ALTER TABLE `nv4_shops_coupons_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_discounts`
--
ALTER TABLE `nv4_shops_discounts`
  MODIFY `did` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_field`
--
ALTER TABLE `nv4_shops_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_field_value_vi`
--
ALTER TABLE `nv4_shops_field_value_vi`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_files`
--
ALTER TABLE `nv4_shops_files`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_group`
--
ALTER TABLE `nv4_shops_group`
  MODIFY `groupid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_location`
--
ALTER TABLE `nv4_shops_location`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_orders`
--
ALTER TABLE `nv4_shops_orders`
  MODIFY `order_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_orders_id`
--
ALTER TABLE `nv4_shops_orders_id`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_orders_shipping`
--
ALTER TABLE `nv4_shops_orders_shipping`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_point_history`
--
ALTER TABLE `nv4_shops_point_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_review`
--
ALTER TABLE `nv4_shops_review`
  MODIFY `review_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_rows`
--
ALTER TABLE `nv4_shops_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_shops`
--
ALTER TABLE `nv4_shops_shops`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_tabs`
--
ALTER TABLE `nv4_shops_tabs`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_tags_vi`
--
ALTER TABLE `nv4_shops_tags_vi`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_template`
--
ALTER TABLE `nv4_shops_template`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_transaction`
--
ALTER TABLE `nv4_shops_transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_units`
--
ALTER TABLE `nv4_shops_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_warehouse`
--
ALTER TABLE `nv4_shops_warehouse`
  MODIFY `wid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_warehouse_logs`
--
ALTER TABLE `nv4_shops_warehouse_logs`
  MODIFY `logid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_warehouse_logs_group`
--
ALTER TABLE `nv4_shops_warehouse_logs_group`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_weight_vi`
--
ALTER TABLE `nv4_shops_weight_vi`
  MODIFY `id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_shops_wishlist`
--
ALTER TABLE `nv4_shops_wishlist`
  MODIFY `wid` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
  MODIFY `did` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `nv4_users`
--
ALTER TABLE `nv4_users`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_users_backupcodes`
--
ALTER TABLE `nv4_users_backupcodes`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
  MODIFY `group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
  MODIFY `qid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
  MODIFY `cid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
  MODIFY `rid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_contact_supporter`
--
ALTER TABLE `nv4_vi_contact_supporter`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
  MODIFY `id` mediumint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
  MODIFY `func_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `nv4_vi_news_1`
--
ALTER TABLE `nv4_vi_news_1`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `nv4_vi_news_2`
--
ALTER TABLE `nv4_vi_news_2`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `nv4_vi_news_8`
--
ALTER TABLE `nv4_vi_news_8`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `nv4_vi_news_9`
--
ALTER TABLE `nv4_vi_news_9`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nv4_vi_news_10`
--
ALTER TABLE `nv4_vi_news_10`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `nv4_vi_news_11`
--
ALTER TABLE `nv4_vi_news_11`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nv4_vi_news_12`
--
ALTER TABLE `nv4_vi_news_12`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
  MODIFY `bid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
  MODIFY `catid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
  MODIFY `sourceid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
  MODIFY `topicid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_samples`
--
ALTER TABLE `nv4_vi_samples`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `shop_accessories`
--
ALTER TABLE `shop_accessories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_admin`
--
ALTER TABLE `shop_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shop_news`
--
ALTER TABLE `shop_news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_order`
--
ALTER TABLE `shop_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shop_order_details`
--
ALTER TABLE `shop_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shop_phone_details`
--
ALTER TABLE `shop_phone_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_products`
--
ALTER TABLE `shop_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `shop_user`
--
ALTER TABLE `shop_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `shop_accessories`
--
ALTER TABLE `shop_accessories`
  ADD CONSTRAINT `shop_accessories_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`product_id`);

--
-- Constraints for table `shop_order`
--
ALTER TABLE `shop_order`
  ADD CONSTRAINT `shop_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `shop_user` (`user_id`),
  ADD CONSTRAINT `shop_order_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`product_id`);

--
-- Constraints for table `shop_order_details`
--
ALTER TABLE `shop_order_details`
  ADD CONSTRAINT `shop_order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `shop_order` (`order_id`);

--
-- Constraints for table `shop_phone_details`
--
ALTER TABLE `shop_phone_details`
  ADD CONSTRAINT `shop_phone_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
