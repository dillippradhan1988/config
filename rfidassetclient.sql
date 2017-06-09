-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 06, 2017 at 11:55 AM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rfidassetclient`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `client_code` varchar(255) NOT NULL,
  `rack_code` varchar(255) NOT NULL,
  `location_code` varchar(255) NOT NULL,
  `tag_id` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(200) DEFAULT NULL,
  `model` varchar(200) DEFAULT NULL,
  `serial` varchar(200) DEFAULT NULL,
  `system_name` varchar(200) DEFAULT NULL,
  `assetid` varchar(200) DEFAULT NULL,
  `id_tag` varchar(200) DEFAULT NULL,
  `project` varchar(200) DEFAULT NULL,
  `processor_type` varchar(200) DEFAULT NULL,
  `no_of_processors` varchar(200) DEFAULT NULL,
  `available_processors` varchar(200) DEFAULT NULL,
  `processor_cores` varchar(200) DEFAULT NULL,
  `cache_memory` varchar(200) DEFAULT NULL,
  `max_processor_speed` varchar(200) DEFAULT NULL,
  `memory_type` varchar(200) DEFAULT NULL,
  `memory_quantity` varchar(200) DEFAULT NULL,
  `memory_slots` varchar(200) DEFAULT NULL,
  `drives` varchar(200) DEFAULT NULL,
  `no_of_expansion_slots` varchar(200) DEFAULT NULL,
  `network_controller` varchar(200) DEFAULT NULL,
  `storage_controller` varchar(200) DEFAULT NULL,
  `rack_unit` varchar(200) DEFAULT NULL,
  `management_interface` varchar(200) DEFAULT NULL,
  `no_of_power_supplys` varchar(200) DEFAULT NULL,
  `power_supply_type` varchar(200) DEFAULT NULL,
  `rated_line_voltage` varchar(200) DEFAULT NULL,
  `rated_input_current` varchar(200) DEFAULT NULL,
  `rated_input_frequency` varchar(200) DEFAULT NULL,
  `rated_input_power` varchar(200) DEFAULT NULL,
  `operating_heat` varchar(200) DEFAULT NULL,
  `unit_occupies` varchar(250) DEFAULT NULL,
  `height` varchar(200) DEFAULT NULL,
  `length` varchar(200) DEFAULT NULL,
  `depth` varchar(200) DEFAULT NULL,
  `max_weight` varchar(200) DEFAULT NULL,
  `min_weight` varchar(200) DEFAULT NULL,
  `min_inlet_temp` varchar(200) DEFAULT NULL,
  `min_inlet_hum` varchar(200) DEFAULT NULL,
  `max_inlet_temp` varchar(200) DEFAULT NULL,
  `max_inlet_hum` varchar(200) DEFAULT NULL,
  `l_wad` varchar(200) DEFAULT NULL,
  `l_pam` varchar(200) DEFAULT NULL,
  `front_image` varchar(250) DEFAULT NULL,
  `rear_image` varchar(250) DEFAULT NULL,
  `is_update` varchar(1) DEFAULT 'N',
  `is_delete` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asset_inventories`
--

CREATE TABLE `asset_inventories` (
  `id` int(11) NOT NULL,
  `client_code` varchar(255) NOT NULL,
  `rack_code` varchar(255) NOT NULL,
  `location_code` varchar(255) NOT NULL,
  `tag_id` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(200) DEFAULT NULL,
  `model` varchar(200) DEFAULT NULL,
  `serial` varchar(200) DEFAULT NULL,
  `system_name` varchar(200) DEFAULT NULL,
  `assetid` varchar(200) DEFAULT NULL,
  `id_tag` varchar(200) DEFAULT NULL,
  `project` varchar(200) DEFAULT NULL,
  `processor_type` varchar(200) DEFAULT NULL,
  `no_of_processors` varchar(200) DEFAULT NULL,
  `available_processors` varchar(200) DEFAULT NULL,
  `processor_cores` varchar(200) DEFAULT NULL,
  `cache_memory` varchar(200) DEFAULT NULL,
  `max_processor_speed` varchar(200) DEFAULT NULL,
  `memory_type` varchar(200) DEFAULT NULL,
  `memory_quantity` varchar(200) DEFAULT NULL,
  `memory_slots` varchar(200) DEFAULT NULL,
  `drives` varchar(200) DEFAULT NULL,
  `no_of_expansion_slots` varchar(200) DEFAULT NULL,
  `network_controller` varchar(200) DEFAULT NULL,
  `storage_controller` varchar(200) DEFAULT NULL,
  `rack_unit` varchar(200) DEFAULT NULL,
  `management_interface` varchar(200) DEFAULT NULL,
  `no_of_power_supplys` varchar(200) DEFAULT NULL,
  `power_supply_type` varchar(200) DEFAULT NULL,
  `rated_line_voltage` varchar(200) DEFAULT NULL,
  `rated_input_current` varchar(200) DEFAULT NULL,
  `rated_input_frequency` varchar(200) DEFAULT NULL,
  `rated_input_power` varchar(200) DEFAULT NULL,
  `operating_heat` varchar(200) DEFAULT NULL,
  `unit_occupies` varchar(250) DEFAULT NULL,
  `height` varchar(200) DEFAULT NULL,
  `length` varchar(200) DEFAULT NULL,
  `depth` varchar(200) DEFAULT NULL,
  `max_weight` varchar(200) DEFAULT NULL,
  `min_weight` varchar(200) DEFAULT NULL,
  `min_inlet_temp` varchar(200) DEFAULT NULL,
  `min_inlet_hum` varchar(200) DEFAULT NULL,
  `max_inlet_temp` varchar(200) DEFAULT NULL,
  `max_inlet_hum` varchar(200) DEFAULT NULL,
  `l_wad` varchar(200) DEFAULT NULL,
  `l_pam` varchar(200) DEFAULT NULL,
  `front_image` varchar(250) DEFAULT NULL,
  `rear_image` varchar(250) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `client_code` varchar(255) NOT NULL,
  `client_description` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `client_code` varchar(255) NOT NULL,
  `rack_code` varchar(255) NOT NULL,
  `location_code` varchar(255) NOT NULL,
  `tag_id` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_desc` varchar(255) DEFAULT NULL,
  `menu_url` varchar(255) DEFAULT NULL,
  `menu_icon` varchar(255) DEFAULT NULL,
  `menu_order` int(11) DEFAULT NULL,
  `is_dashboard` varchar(1) DEFAULT 'Y',
  `is_home` varchar(1) DEFAULT 'N',
  `is_active` varchar(1) NOT NULL DEFAULT 'Y',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `menu_name`, `menu_desc`, `menu_url`, `menu_icon`, `menu_order`, `is_dashboard`, `is_home`, `is_active`, `created`, `modified`) VALUES
(1, NULL, 'Dashboard', NULL, 'users/getDashboard', 'fa fa-dashboard', 1, 'N', 'N', 'Y', '2016-10-03 00:00:00', '2016-12-23 10:36:20'),
(2, NULL, 'Authentication', NULL, NULL, 'fa-user-secret', 2, 'Y', 'N', 'Y', '2016-10-03 00:00:00', '2016-10-11 09:02:16'),
(3, 2, 'Users', NULL, 'users/getUser', 'fa fa-users', 6, 'Y', 'N', 'Y', '2016-10-03 00:00:00', '2016-12-02 09:45:18'),
(4, 2, 'Role', NULL, 'admin/getRole', 'fa fa-universal-access', 3, 'Y', 'N', 'Y', '2016-10-03 00:00:00', '2016-10-03 00:00:00'),
(5, 2, 'Menu', NULL, 'admin/getMenu', 'fa fa-bars', 4, 'Y', 'N', 'Y', '2016-10-03 12:36:35', '2016-10-03 12:36:35'),
(6, 2, 'Screen', NULL, 'admin/getScreen', 'fa fa-television', 5, 'Y', 'N', 'Y', '2016-10-03 12:36:56', '2016-11-24 04:16:59'),
(7, NULL, 'Security and Encryption', NULL, NULL, 'fa fa-lock', 7, 'Y', 'N', 'Y', '2016-10-07 06:17:46', '2016-11-24 04:18:24'),
(8, 7, 'Captcha', NULL, 'admin/getCaptcha', 'fa fa-newspaper-o', 8, 'Y', 'N', 'Y', '2016-10-07 06:18:51', '2016-10-07 06:18:51'),
(9, 2, 'LDAP', NULL, 'admin/getLdap', 'fa fa-database', 9, 'Y', 'N', 'Y', '2016-10-11 09:08:30', '2016-10-11 09:11:06'),
(10, NULL, 'Application Settings', NULL, NULL, 'fa fa-cog', 10, 'Y', 'N', 'Y', '2016-10-12 07:05:09', '2016-10-12 07:05:09'),
(11, 10, 'Email', NULL, 'admin/getEmail', 'fa fa-envelope-o', 11, 'Y', 'N', 'Y', '2016-10-12 07:05:56', '2016-10-12 07:05:56'),
(12, NULL, 'Profile', NULL, 'users/getProfile', '', 12, NULL, NULL, 'Y', '2016-10-20 00:00:00', '2017-01-19 06:54:35'),
(13, NULL, 'RFID', NULL, NULL, 'fa fa-area-chart', 13, 'Y', 'N', 'Y', '2017-06-06 05:59:16', '2017-06-06 05:59:16'),
(14, 13, 'Asset', NULL, 'rfids/getAsset', 'fa fa-building', 14, 'Y', 'N', 'Y', '2017-06-06 05:59:57', '2017-06-06 06:05:30'),
(15, 13, 'Asset Inventory', NULL, 'rfids/getAssetInventory', 'fa fa-history', 15, 'Y', 'N', 'Y', '2017-06-06 06:00:19', '2017-06-06 06:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `racks`
--

CREATE TABLE `racks` (
  `id` int(11) NOT NULL,
  `client_code` varchar(255) NOT NULL,
  `rack_code` varchar(255) NOT NULL,
  `rack_name` varchar(255) NOT NULL,
  `local_location` varchar(255) DEFAULT NULL,
  `rack_location` varchar(255) DEFAULT NULL,
  `row_local` varchar(255) DEFAULT NULL,
  `column_local` varchar(255) DEFAULT NULL,
  `x_off_set` varchar(255) DEFAULT NULL,
  `y_off_set` varchar(255) DEFAULT NULL,
  `facing_tile` varchar(255) DEFAULT NULL,
  `orientation` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `design_power` varchar(255) DEFAULT NULL,
  `width` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `depth` varchar(255) DEFAULT NULL,
  `no_of_assets` int(11) DEFAULT NULL,
  `dhcp` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `netmask` varchar(255) DEFAULT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `local_name` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `status`, `created`, `modified`) VALUES
(1, 'Super Admin', 1, '2016-11-18 00:00:00', '2016-11-18 00:00:00'),
(2, 'Admin', 1, '2016-11-18 00:00:00', '2017-01-03 06:21:39'),
(3, 'User', 1, '2016-11-18 00:00:00', '2016-11-18 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_menus`
--

CREATE TABLE `role_menus` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_menus`
--

INSERT INTO `role_menus` (`id`, `role_id`, `menu_id`, `created`, `modified`) VALUES
(1, 1, 1, '2017-06-06 06:00:40', '2017-06-06 06:00:40'),
(2, 1, 2, '2017-06-06 06:00:40', '2017-06-06 06:00:40'),
(3, 1, 3, '2017-06-06 06:00:40', '2017-06-06 06:00:40'),
(4, 1, 4, '2017-06-06 06:00:41', '2017-06-06 06:00:41'),
(5, 1, 5, '2017-06-06 06:00:41', '2017-06-06 06:00:41'),
(6, 1, 6, '2017-06-06 06:00:41', '2017-06-06 06:00:41'),
(7, 1, 7, '2017-06-06 06:00:41', '2017-06-06 06:00:41'),
(8, 1, 8, '2017-06-06 06:00:41', '2017-06-06 06:00:41'),
(9, 1, 9, '2017-06-06 06:00:41', '2017-06-06 06:00:41'),
(10, 1, 10, '2017-06-06 06:00:41', '2017-06-06 06:00:41'),
(11, 1, 11, '2017-06-06 06:00:41', '2017-06-06 06:00:41'),
(12, 1, 12, '2017-06-06 06:00:41', '2017-06-06 06:00:41'),
(13, 1, 13, '2017-06-06 06:00:41', '2017-06-06 06:00:41'),
(14, 1, 14, '2017-06-06 06:00:41', '2017-06-06 06:00:41'),
(15, 1, 15, '2017-06-06 06:00:41', '2017-06-06 06:00:41'),
(16, 2, 1, '2017-06-06 06:01:10', '2017-06-06 06:01:10'),
(17, 2, 3, '2017-06-06 06:01:10', '2017-06-06 06:01:10'),
(18, 2, 12, '2017-06-06 06:01:10', '2017-06-06 06:01:10'),
(19, 2, 13, '2017-06-06 06:01:10', '2017-06-06 06:01:10'),
(20, 2, 14, '2017-06-06 06:01:11', '2017-06-06 06:01:11'),
(21, 2, 15, '2017-06-06 06:01:11', '2017-06-06 06:01:11'),
(22, 2, 2, '2017-06-06 06:01:11', '2017-06-06 06:01:11'),
(23, 3, 1, '2017-06-06 06:01:41', '2017-06-06 06:01:41'),
(24, 3, 12, '2017-06-06 06:01:41', '2017-06-06 06:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `screens`
--

CREATE TABLE `screens` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `screen_name` varchar(255) DEFAULT NULL,
  `screen_desc` varchar(255) DEFAULT NULL,
  `is_home` varchar(1) NOT NULL DEFAULT 'N',
  `is_active` varchar(1) NOT NULL DEFAULT 'Y',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `screens`
--

INSERT INTO `screens` (`id`, `menu_id`, `screen_name`, `screen_desc`, `is_home`, `is_active`, `created`, `modified`) VALUES
(1, 1, 'Dashboard', 'Dashboard', 'N', 'Y', '2016-10-12 11:28:01', '2016-12-23 11:27:45'),
(2, 3, 'Users', 'Users', 'N', 'Y', '2016-10-12 11:28:38', '2016-10-21 05:13:11'),
(3, 4, 'Role', 'Role', 'N', 'Y', '2016-10-12 11:28:55', '2016-10-21 05:13:17'),
(4, 5, 'Menu', 'Menu', 'N', 'Y', '2016-10-12 11:29:10', '2016-10-21 05:13:22'),
(5, 9, 'LDAP', 'LDAP', 'N', 'Y', '2016-10-12 11:29:28', '2016-10-21 05:13:28'),
(6, 6, 'Screen', 'Screen', 'N', 'Y', '2016-10-12 11:29:47', '2016-10-21 05:13:32'),
(7, 8, 'Captcha', 'Captcha', 'N', 'Y', '2016-10-12 11:30:02', '2016-10-21 05:13:43'),
(8, 11, 'Email', 'Email', 'N', 'Y', '2016-10-12 11:30:34', '2016-10-21 05:13:51'),
(9, 12, 'Profile', 'Profile', 'N', 'Y', '2016-11-05 09:27:28', '2016-11-05 09:27:28'),
(10, 14, 'Asset', 'Asset', 'N', 'Y', '2017-06-06 06:01:58', '2017-06-06 06:01:58'),
(11, 15, 'Asset Inventory', 'Asset Inventory', 'N', 'Y', '2017-06-06 06:02:06', '2017-06-06 06:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `screen_access`
--

CREATE TABLE `screen_access` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `access_level` int(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `screen_access`
--

INSERT INTO `screen_access` (`id`, `role_id`, `screen_id`, `access_level`, `created`, `modified`) VALUES
(1, 1, 1, 2, '2017-06-06 06:03:06', '2017-06-06 06:03:06'),
(2, 1, 2, 2, '2017-06-06 06:03:06', '2017-06-06 06:03:06'),
(3, 1, 3, 2, '2017-06-06 06:03:06', '2017-06-06 06:03:06'),
(4, 1, 4, 2, '2017-06-06 06:03:06', '2017-06-06 06:03:06'),
(5, 1, 5, 2, '2017-06-06 06:03:06', '2017-06-06 06:03:06'),
(6, 1, 6, 2, '2017-06-06 06:03:06', '2017-06-06 06:03:06'),
(7, 1, 7, 2, '2017-06-06 06:03:06', '2017-06-06 06:03:06'),
(8, 1, 8, 2, '2017-06-06 06:03:06', '2017-06-06 06:03:06'),
(9, 1, 9, 2, '2017-06-06 06:03:06', '2017-06-06 06:03:06'),
(10, 1, 10, 2, '2017-06-06 06:03:06', '2017-06-06 06:03:06'),
(11, 1, 11, 2, '2017-06-06 06:03:06', '2017-06-06 06:03:06'),
(12, 2, 1, 2, '2017-06-06 06:03:49', '2017-06-06 06:03:49'),
(13, 2, 2, 2, '2017-06-06 06:03:49', '2017-06-06 06:03:49'),
(14, 2, 9, 2, '2017-06-06 06:03:49', '2017-06-06 06:03:49'),
(15, 2, 10, 2, '2017-06-06 06:03:49', '2017-06-06 06:03:49'),
(16, 2, 11, 2, '2017-06-06 06:03:50', '2017-06-06 06:03:50'),
(17, 3, 1, 2, '2017-06-06 06:04:04', '2017-06-06 06:04:04'),
(18, 3, 9, 2, '2017-06-06 06:04:04', '2017-06-06 06:04:04');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `set_key` varchar(255) NOT NULL,
  `set_key_desc` varchar(255) DEFAULT NULL,
  `set_val` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `code`, `set_key`, `set_key_desc`, `set_val`, `created`, `modified`) VALUES
(1, 1, 'site_key', NULL, '6Ldrvw0UAAAAAFimrNMp-I_-LikO7rdSrK1Y7WCf', '2017-01-04 05:32:30', '2017-01-04 05:32:30'),
(2, 1, 'site_secret', NULL, '6Ldrvw0UAAAAAJL54jL7yWo8719qHL-nwcU2gzeS', '2017-01-04 05:32:30', '2017-01-04 05:32:30'),
(3, 1, 'captcha_type', NULL, '2', '2017-01-04 05:32:30', '2017-01-04 05:32:30'),
(4, 1, 'cap_enable_time', NULL, '1', '2017-01-04 05:32:30', '2017-01-04 05:32:30'),
(5, 1, 'captcha_code', NULL, 'iapicihi', '2017-01-04 05:32:30', '2017-01-04 05:32:30'),
(6, 2, 'ldap_host', NULL, '12345678912345678912345678912345678912345678912345678', '2016-11-28 05:08:32', '2016-11-28 05:08:32'),
(7, 2, 'ldap_port', NULL, 'test', '2016-11-28 05:08:32', '2016-11-28 05:08:32'),
(8, 2, 'ldap_transport', NULL, '1', '2016-11-28 05:08:32', '2016-11-28 05:08:32'),
(9, 2, 'ldap_domain', NULL, 'test', '2016-11-28 05:08:32', '2016-11-28 05:08:32'),
(10, 2, 'ldap_search_path', NULL, 'test', '2016-11-28 05:08:32', '2016-11-28 05:08:32'),
(11, 2, 'ldap_user_name', NULL, 'test', '2016-11-28 05:08:32', '2016-11-28 05:08:32'),
(12, 2, 'ldap_pass', NULL, 'test', '2016-11-28 05:08:32', '2016-11-28 05:08:32'),
(13, 2, 'is_ldap_enable', NULL, 'N', '2016-11-28 05:08:32', '2016-11-28 05:08:32'),
(14, 3, 'is_email_enable', NULL, 'Y', '2017-01-04 06:04:31', '2017-01-04 06:04:31'),
(15, 3, 'email_host', NULL, 'ssl://smtp.gmail.com', '2017-01-04 06:04:31', '2017-01-04 06:04:31'),
(16, 3, 'email_ssl', NULL, 'Smtp', '2017-01-04 06:04:31', '2017-01-04 06:04:31'),
(17, 3, 'email_port', NULL, '465', '2017-01-04 06:04:31', '2017-01-04 06:04:31'),
(18, 3, 'email_user_name', NULL, 'epower.cyber', '2017-01-04 06:04:31', '2017-01-04 06:04:31'),
(19, 3, 'email_password', NULL, 'user@123', '2017-01-04 06:04:31', '2017-01-04 06:04:31'),
(20, 3, 'email_receiver', NULL, 'dillipp@pkgst.com', '2017-01-04 06:04:31', '2017-01-04 06:04:31'),
(21, 3, 'email_to', NULL, 'dillipp@pkgst.com', '2017-01-04 06:04:31', '2017-01-04 06:04:31'),
(22, 4, 'app_name', 'Application Name', 'RFID Client', NULL, NULL),
(23, 4, 'app_version', 'Application Version', '1.0', NULL, NULL),
(24, 5, 'exception_debug', 'when value is 1 show PDO exception', '1', '2016-12-08 00:00:00', '2016-12-08 00:00:00'),
(25, 5, 'site_title', NULL, 'RFID Client', '2016-12-08 00:00:00', '2016-12-08 00:00:00'),
(26, 5, 'rfid_client_ip', NULL, 'tcp://20.0.1.17:5559', '2017-01-04 06:04:31', '2017-01-04 06:04:31'),
(27, 5, 'rfid_server_ip', NULL, 'tcp://*:5556', '2017-01-04 06:04:31', '2017-01-04 06:04:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `client_code` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `api_key` varchar(255) NOT NULL,
  `api_key_plain` varchar(255) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'Y',
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_req` int(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `client_code`, `username`, `password`, `api_key`, `api_key_plain`, `fullname`, `email`, `status`, `reset_token`, `reset_req`, `created`, `modified`) VALUES
(1, NULL, 'superadmin', '$2y$10$QtAW8bCcQeQqVXqRgCO5ruDyx39q.zOH5tEc.4KlGsOqcL.OlEG16', '', '', 'Jothi Kumar', 'dillipp@pkgst.com', 'Y', '988923e7860182f6c0ff04dd8faa9459', 1, '2016-10-03 00:00:00', '2017-01-03 10:28:34'),
(2, NULL, 'admin', '$2y$10$QtAW8bCcQeQqVXqRgCO5ruDyx39q.zOH5tEc.4KlGsOqcL.OlEG16', '$2y$10$62kIm94BKoSEU.4tkDElAO6R/Z.A/WAwgFxwe9g5UaZisbmoL/T8K', '62a69bc1f1bf79358f0f7b307ab79976413a8724', 'Jothi Kumar', 'jothi@aptilabs.com', 'Y', NULL, 0, '2016-12-03 13:05:03', '2017-01-03 06:30:50'),
(3, NULL, 'user', '$2y$10$QtAW8bCcQeQqVXqRgCO5ruDyx39q.zOH5tEc.4KlGsOqcL.OlEG16', '', '', 'Kamlesh ', 'kamlesh@pkgst.com', 'Y', '988923e7860182f6c0ff04dd8faa9459', 1, '2016-10-03 00:00:00', '2017-01-03 06:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created`, `modified`) VALUES
(1, 1, 1, '2017-01-03 06:30:50', '2017-01-03 06:30:50'),
(2, 2, 2, '2017-01-03 06:31:13', '2017-01-03 06:31:13'),
(3, 3, 3, '2017-01-03 10:28:34', '2017-01-03 10:28:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`client_code`,`rack_code`,`location_code`),
  ADD KEY `client_code` (`client_code`),
  ADD KEY `rack_code` (`rack_code`),
  ADD KEY `location_code` (`location_code`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `asset_inventories`
--
ALTER TABLE `asset_inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_code` (`client_code`),
  ADD KEY `rack_code` (`rack_code`),
  ADD KEY `location_code` (`location_code`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `client_code` (`client_code`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`client_code`,`rack_code`,`location_code`),
  ADD KEY `client_code` (`client_code`),
  ADD KEY `location_code` (`location_code`),
  ADD KEY `id` (`id`),
  ADD KEY `rack_code` (`rack_code`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `racks`
--
ALTER TABLE `racks`
  ADD PRIMARY KEY (`client_code`,`rack_code`),
  ADD KEY `client_code` (`client_code`),
  ADD KEY `rack_code` (`rack_code`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_menus`
--
ALTER TABLE `role_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`,`menu_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `screens`
--
ALTER TABLE `screens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `screen_access`
--
ALTER TABLE `screen_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`,`screen_id`),
  ADD KEY `screen_id` (`screen_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `asset_inventories`
--
ALTER TABLE `asset_inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `racks`
--
ALTER TABLE `racks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `role_menus`
--
ALTER TABLE `role_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `screens`
--
ALTER TABLE `screens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `screen_access`
--
ALTER TABLE `screen_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_ibfk_1` FOREIGN KEY (`client_code`) REFERENCES `clients` (`client_code`),
  ADD CONSTRAINT `assets_ibfk_2` FOREIGN KEY (`rack_code`) REFERENCES `racks` (`rack_code`),
  ADD CONSTRAINT `assets_ibfk_3` FOREIGN KEY (`location_code`) REFERENCES `locations` (`location_code`);

--
-- Constraints for table `asset_inventories`
--
ALTER TABLE `asset_inventories`
  ADD CONSTRAINT `asset_inventories_ibfk_1` FOREIGN KEY (`client_code`) REFERENCES `clients` (`client_code`),
  ADD CONSTRAINT `asset_inventories_ibfk_2` FOREIGN KEY (`rack_code`) REFERENCES `racks` (`rack_code`),
  ADD CONSTRAINT `asset_inventories_ibfk_3` FOREIGN KEY (`location_code`) REFERENCES `locations` (`location_code`);

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`client_code`) REFERENCES `clients` (`client_code`),
  ADD CONSTRAINT `locations_ibfk_2` FOREIGN KEY (`rack_code`) REFERENCES `racks` (`rack_code`);

--
-- Constraints for table `racks`
--
ALTER TABLE `racks`
  ADD CONSTRAINT `racks_ibfk_1` FOREIGN KEY (`client_code`) REFERENCES `clients` (`client_code`);

--
-- Constraints for table `role_menus`
--
ALTER TABLE `role_menus`
  ADD CONSTRAINT `role_menus_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_menus_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`);

--
-- Constraints for table `screens`
--
ALTER TABLE `screens`
  ADD CONSTRAINT `screens_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`);

--
-- Constraints for table `screen_access`
--
ALTER TABLE `screen_access`
  ADD CONSTRAINT `screen_access_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `screen_access_ibfk_2` FOREIGN KEY (`screen_id`) REFERENCES `screens` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
