-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 06, 2017 at 11:47 AM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mfgapplication`
--

-- --------------------------------------------------------

--
-- Table structure for table `debug_logs`
--

CREATE TABLE `debug_logs` (
  `id` int(11) NOT NULL,
  `log_id` varchar(255) NOT NULL,
  `tech_id` int(11) NOT NULL,
  `system_id` varchar(255) NOT NULL,
  `log_data` text NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `vid` varchar(255) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mac_address`
--

CREATE TABLE `mac_address` (
  `id` bigint(20) NOT NULL,
  `mac_address` varchar(17) NOT NULL,
  `status` int(1) DEFAULT '0',
  `req_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mac_address_clients`
--

CREATE TABLE `mac_address_clients` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `mac_address` varchar(17) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `block_type` varchar(50) DEFAULT NULL,
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
(13, NULL, 'MFG Master', NULL, NULL, 'fa fa-bars', 13, 'Y', 'N', 'Y', '2017-06-06 04:17:33', '2017-06-06 04:17:33'),
(14, 13, 'Device', NULL, 'mfgs/getDevice', 'fa fa-bookmark', 18, 'Y', 'N', 'Y', '2017-06-06 04:18:58', '2017-06-06 04:18:58'),
(15, 13, 'Product', NULL, 'mfgs/getProduct', 'fa fa-bars', 15, 'Y', 'N', 'Y', '2017-06-06 04:19:26', '2017-06-06 04:19:26'),
(16, 13, 'Product Family', NULL, 'mfgs/getProductFamily', 'fa fa-recycle', 14, 'Y', 'N', 'Y', '2017-06-06 04:19:46', '2017-06-06 04:19:46'),
(17, 13, 'Phase Information', NULL, 'mfgs/getPhaseInfo', 'fa fa-newspaper-o', 17, 'Y', 'N', 'Y', '2017-06-06 04:20:11', '2017-06-06 04:20:11'),
(18, 13, 'Sub Product', NULL, 'mfgs/getSubProduct', 'fa fa-industry', 16, 'Y', 'N', 'Y', '2017-06-06 04:20:32', '2017-06-06 04:20:32'),
(19, NULL, 'Log Master', NULL, NULL, 'fa fa-file', 19, 'Y', 'N', 'Y', '2017-06-06 04:21:50', '2017-06-06 04:21:50'),
(20, 19, 'Production Log', NULL, 'mfgs/getProductionLog', 'fa fa-file-archive-o', 20, 'Y', 'N', 'Y', '2017-06-06 04:22:14', '2017-06-06 04:22:45'),
(21, 19, 'Debug Log', NULL, 'mfgs/getDebugLog', 'fa fa-eraser', 21, 'Y', 'N', 'Y', '2017-06-06 04:22:34', '2017-06-06 04:22:51'),
(22, 19, 'MAC Address', NULL, 'mfgs/getMacAddress', 'fa fa-map', 22, 'Y', 'N', 'Y', '2017-06-06 04:23:13', '2017-06-06 05:01:21'),
(23, 19, 'Reserve MAC Address', NULL, 'mfgs/getReserveMac', 'fa fa-map-o', 23, 'Y', 'N', 'Y', '2017-06-06 04:23:37', '2017-06-06 04:23:37');

-- --------------------------------------------------------

--
-- Table structure for table `phase_infos`
--

CREATE TABLE `phase_infos` (
  `id` int(11) NOT NULL,
  `phase_name` varchar(255) NOT NULL,
  `phase_desc` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `production_logs`
--

CREATE TABLE `production_logs` (
  `id` int(11) NOT NULL,
  `serial_number` varchar(255) NOT NULL,
  `manufacture_date` varchar(255) NOT NULL,
  `mac_address` varchar(255) NOT NULL,
  `device_type` varchar(255) NOT NULL,
  `firmware_version` varchar(255) NOT NULL,
  `phase_type` varchar(255) NOT NULL,
  `tech_id` int(11) NOT NULL,
  `system_id` varchar(255) NOT NULL,
  `vid` varchar(255) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `product_unit_id` varchar(255) NOT NULL,
  `sub_product_unit_id` varchar(255) NOT NULL,
  `job_order` varchar(255) NOT NULL,
  `log_status` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_unit_id` varchar(255) NOT NULL,
  `product_family_id` int(11) NOT NULL,
  `phase_type` int(1) NOT NULL,
  `unit_nm` varchar(255) NOT NULL,
  `stager_on_delay` int(11) NOT NULL,
  `stager_off_delay` int(11) NOT NULL,
  `max_voltage` varchar(255) NOT NULL,
  `max_dev_cap` int(11) NOT NULL DEFAULT '0',
  `max_bank_cap` int(11) NOT NULL DEFAULT '0',
  `max_outlt_cap` int(11) NOT NULL DEFAULT '0',
  `model_name` varchar(255) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `system_name` varchar(255) DEFAULT NULL,
  `max_frequency` int(4) NOT NULL,
  `access_type` int(1) NOT NULL,
  `total_outlets` int(11) NOT NULL,
  `total_banks` int(11) NOT NULL,
  `outlets_per_bank` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_family`
--

CREATE TABLE `product_family` (
  `id` int(11) NOT NULL,
  `device_type` varchar(255) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_outlets`
--

CREATE TABLE `product_outlets` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `outlet_name` varchar(255) NOT NULL,
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
(1, 1, 1, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(2, 1, 2, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(3, 1, 3, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(4, 1, 4, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(5, 1, 5, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(6, 1, 6, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(7, 1, 7, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(8, 1, 8, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(9, 1, 9, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(10, 1, 10, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(11, 1, 11, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(12, 1, 12, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(13, 1, 13, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(14, 1, 14, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(15, 1, 15, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(16, 1, 16, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(17, 1, 17, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(18, 1, 18, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(19, 1, 19, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(20, 1, 20, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(21, 1, 21, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(22, 1, 22, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(23, 1, 23, '2017-06-06 05:02:01', '2017-06-06 05:02:01'),
(24, 2, 1, '2017-06-06 05:04:37', '2017-06-06 05:04:37'),
(25, 2, 3, '2017-06-06 05:04:37', '2017-06-06 05:04:37'),
(26, 2, 7, '2017-06-06 05:04:37', '2017-06-06 05:04:37'),
(27, 2, 8, '2017-06-06 05:04:37', '2017-06-06 05:04:37'),
(28, 2, 12, '2017-06-06 05:04:37', '2017-06-06 05:04:37'),
(29, 2, 15, '2017-06-06 05:04:37', '2017-06-06 05:04:37'),
(30, 2, 16, '2017-06-06 05:04:37', '2017-06-06 05:04:37'),
(31, 2, 18, '2017-06-06 05:04:37', '2017-06-06 05:04:37'),
(32, 2, 19, '2017-06-06 05:04:37', '2017-06-06 05:04:37'),
(33, 2, 20, '2017-06-06 05:04:37', '2017-06-06 05:04:37'),
(34, 2, 21, '2017-06-06 05:04:37', '2017-06-06 05:04:37'),
(35, 2, 22, '2017-06-06 05:04:37', '2017-06-06 05:04:37'),
(36, 2, 23, '2017-06-06 05:04:37', '2017-06-06 05:04:37'),
(37, 2, 2, '2017-06-06 05:04:37', '2017-06-06 05:04:37'),
(38, 2, 13, '2017-06-06 05:04:37', '2017-06-06 05:04:37'),
(39, 3, 1, '2017-06-06 05:05:31', '2017-06-06 05:05:31'),
(40, 3, 12, '2017-06-06 05:05:31', '2017-06-06 05:05:31'),
(41, 3, 15, '2017-06-06 05:05:31', '2017-06-06 05:05:31'),
(42, 3, 16, '2017-06-06 05:05:31', '2017-06-06 05:05:31'),
(43, 3, 18, '2017-06-06 05:05:31', '2017-06-06 05:05:31'),
(44, 3, 19, '2017-06-06 05:05:31', '2017-06-06 05:05:31'),
(45, 3, 20, '2017-06-06 05:05:31', '2017-06-06 05:05:31'),
(46, 3, 21, '2017-06-06 05:05:31', '2017-06-06 05:05:31'),
(47, 3, 22, '2017-06-06 05:05:31', '2017-06-06 05:05:31'),
(48, 3, 23, '2017-06-06 05:05:31', '2017-06-06 05:05:31'),
(49, 3, 13, '2017-06-06 05:05:31', '2017-06-06 05:05:31');

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
(10, 16, 'Product Family', 'Product Family', 'N', 'Y', '2017-06-06 04:57:46', '2017-06-06 04:57:46'),
(11, 15, 'Product', 'Product', 'N', 'Y', '2017-06-06 04:57:56', '2017-06-06 04:57:56'),
(12, 18, 'Sub Product', 'Sub Product', 'N', 'Y', '2017-06-06 04:58:07', '2017-06-06 04:58:07'),
(13, 17, 'Phase Info', 'Phase Info', 'N', 'Y', '2017-06-06 04:58:27', '2017-06-06 04:58:27'),
(14, 14, 'Device', 'Device', 'N', 'Y', '2017-06-06 04:58:37', '2017-06-06 04:58:37'),
(15, 20, 'Production Log', 'Production Log', 'N', 'Y', '2017-06-06 04:58:51', '2017-06-06 04:58:51'),
(16, 21, 'Debug Log', 'Debug Log', 'N', 'Y', '2017-06-06 04:59:02', '2017-06-06 04:59:02'),
(17, 22, 'Mac Address', 'Mac Address', 'N', 'Y', '2017-06-06 04:59:10', '2017-06-06 04:59:10'),
(18, 23, 'Reserve MAC Address', 'Reserve MAC Address', 'N', 'Y', '2017-06-06 04:59:19', '2017-06-06 04:59:19');

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
(1, 1, 1, 2, '2017-06-06 05:08:06', '2017-06-06 05:08:06'),
(2, 1, 2, 2, '2017-06-06 05:08:06', '2017-06-06 05:08:06'),
(3, 1, 3, 2, '2017-06-06 05:08:06', '2017-06-06 05:08:06'),
(4, 1, 4, 2, '2017-06-06 05:08:07', '2017-06-06 05:08:07'),
(5, 1, 5, 2, '2017-06-06 05:08:07', '2017-06-06 05:08:07'),
(6, 1, 6, 2, '2017-06-06 05:08:07', '2017-06-06 05:08:07'),
(7, 1, 7, 2, '2017-06-06 05:08:07', '2017-06-06 05:08:07'),
(8, 1, 8, 2, '2017-06-06 05:08:07', '2017-06-06 05:08:07'),
(9, 1, 9, 2, '2017-06-06 05:08:07', '2017-06-06 05:08:07'),
(10, 1, 10, 2, '2017-06-06 05:08:07', '2017-06-06 05:08:07'),
(11, 1, 11, 2, '2017-06-06 05:08:07', '2017-06-06 05:08:07'),
(12, 1, 12, 2, '2017-06-06 05:08:07', '2017-06-06 05:08:07'),
(13, 1, 13, 2, '2017-06-06 05:08:07', '2017-06-06 05:08:07'),
(14, 1, 14, 2, '2017-06-06 05:08:07', '2017-06-06 05:08:07'),
(15, 1, 15, 2, '2017-06-06 05:08:07', '2017-06-06 05:08:07'),
(16, 1, 16, 2, '2017-06-06 05:08:07', '2017-06-06 05:08:07'),
(17, 1, 17, 2, '2017-06-06 05:08:07', '2017-06-06 05:08:07'),
(18, 1, 18, 2, '2017-06-06 05:08:07', '2017-06-06 05:08:07'),
(19, 2, 1, 2, '2017-06-06 05:12:10', '2017-06-06 05:12:10'),
(20, 2, 2, 2, '2017-06-06 05:12:10', '2017-06-06 05:12:10'),
(21, 2, 7, 2, '2017-06-06 05:12:10', '2017-06-06 05:12:10'),
(22, 2, 9, 2, '2017-06-06 05:12:10', '2017-06-06 05:12:10'),
(23, 2, 10, 2, '2017-06-06 05:12:10', '2017-06-06 05:12:10'),
(24, 2, 11, 2, '2017-06-06 05:12:10', '2017-06-06 05:12:10'),
(25, 2, 12, 2, '2017-06-06 05:12:10', '2017-06-06 05:12:10'),
(26, 2, 13, 0, '2017-06-06 05:12:10', '2017-06-06 05:12:10'),
(27, 2, 14, 0, '2017-06-06 05:12:10', '2017-06-06 05:12:10'),
(28, 2, 15, 1, '2017-06-06 05:12:10', '2017-06-06 05:12:10'),
(29, 2, 16, 2, '2017-06-06 05:12:10', '2017-06-06 05:12:10'),
(30, 2, 17, 2, '2017-06-06 05:12:10', '2017-06-06 05:12:10'),
(31, 2, 18, 2, '2017-06-06 05:12:10', '2017-06-06 05:12:10'),
(32, 3, 1, 2, '2017-06-06 05:13:42', '2017-06-06 05:13:42'),
(33, 3, 10, 1, '2017-06-06 05:13:42', '2017-06-06 05:13:42'),
(34, 3, 11, 1, '2017-06-06 05:13:42', '2017-06-06 05:13:42'),
(35, 3, 12, 1, '2017-06-06 05:13:42', '2017-06-06 05:13:42'),
(36, 3, 13, 0, '2017-06-06 05:13:42', '2017-06-06 05:13:42'),
(37, 3, 14, 0, '2017-06-06 05:13:42', '2017-06-06 05:13:42'),
(38, 3, 15, 1, '2017-06-06 05:13:42', '2017-06-06 05:13:42'),
(39, 3, 16, 1, '2017-06-06 05:13:42', '2017-06-06 05:13:42'),
(40, 3, 17, 1, '2017-06-06 05:13:42', '2017-06-06 05:13:42'),
(41, 3, 18, 1, '2017-06-06 05:13:42', '2017-06-06 05:13:42');

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
(22, 4, 'app_name', 'Application Name', 'MFG Application', NULL, NULL),
(23, 4, 'app_version', 'Application Version', '1.0', NULL, NULL),
(24, 5, 'exception_debug', 'when value is 1 show PDO exception', '1', '2016-12-08 00:00:00', '2016-12-08 00:00:00'),
(25, 5, 'site_title', NULL, 'MFG Application', '2016-12-08 00:00:00', '2016-12-08 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sub_products`
--

CREATE TABLE `sub_products` (
  `id` int(11) NOT NULL,
  `product_family_id` int(11) NOT NULL,
  `phase_type` int(11) NOT NULL,
  `sub_product_unit_id` varchar(255) NOT NULL,
  `unit_id_type` varchar(255) NOT NULL,
  `unit_id_nm` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
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

INSERT INTO `users` (`id`, `username`, `password`, `api_key`, `api_key_plain`, `fullname`, `email`, `status`, `reset_token`, `reset_req`, `created`, `modified`) VALUES
(1, 'superadmin', '$2y$10$QtAW8bCcQeQqVXqRgCO5ruDyx39q.zOH5tEc.4KlGsOqcL.OlEG16', '', '', 'Jothi Kumar', 'dillipp@pkgst.com', 'Y', '988923e7860182f6c0ff04dd8faa9459', 1, '2016-10-03 00:00:00', '2017-01-03 10:28:34'),
(2, 'admin', '$2y$10$QtAW8bCcQeQqVXqRgCO5ruDyx39q.zOH5tEc.4KlGsOqcL.OlEG16', '$2y$10$62kIm94BKoSEU.4tkDElAO6R/Z.A/WAwgFxwe9g5UaZisbmoL/T8K', '62a69bc1f1bf79358f0f7b307ab79976413a8724', 'Jothi Kumar', 'jothi@aptilabs.com', 'Y', NULL, 0, '2016-12-03 13:05:03', '2017-01-03 06:30:50'),
(3, 'user', '$2y$10$QtAW8bCcQeQqVXqRgCO5ruDyx39q.zOH5tEc.4KlGsOqcL.OlEG16', '', '', 'Kamlesh ', 'kamlesh@pkgst.com', 'Y', '988923e7860182f6c0ff04dd8faa9459', 1, '2016-10-03 00:00:00', '2017-01-03 06:31:13');

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
-- Indexes for table `debug_logs`
--
ALTER TABLE `debug_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tech_id` (`tech_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mac_address`
--
ALTER TABLE `mac_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mac_address` (`mac_address`);

--
-- Indexes for table `mac_address_clients`
--
ALTER TABLE `mac_address_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phase_infos`
--
ALTER TABLE `phase_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_logs`
--
ALTER TABLE `production_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mac_address` (`mac_address`),
  ADD KEY `tech_id` (`tech_id`),
  ADD KEY `product_unit_id` (`product_unit_id`),
  ADD KEY `sub_product_unit_id` (`sub_product_unit_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_unit_id` (`product_unit_id`),
  ADD KEY `product_family_id` (`product_family_id`);

--
-- Indexes for table `product_family`
--
ALTER TABLE `product_family`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_outlets`
--
ALTER TABLE `product_outlets`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sub_products`
--
ALTER TABLE `sub_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_family_id` (`product_family_id`),
  ADD KEY `sub_product_unit_id` (`sub_product_unit_id`);

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
-- AUTO_INCREMENT for table `debug_logs`
--
ALTER TABLE `debug_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mac_address`
--
ALTER TABLE `mac_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mac_address_clients`
--
ALTER TABLE `mac_address_clients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `phase_infos`
--
ALTER TABLE `phase_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `production_logs`
--
ALTER TABLE `production_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_family`
--
ALTER TABLE `product_family`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_outlets`
--
ALTER TABLE `product_outlets`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `screens`
--
ALTER TABLE `screens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `screen_access`
--
ALTER TABLE `screen_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `sub_products`
--
ALTER TABLE `sub_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
-- Constraints for table `debug_logs`
--
ALTER TABLE `debug_logs`
  ADD CONSTRAINT `debug_logs_ibfk_1` FOREIGN KEY (`tech_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `production_logs`
--
ALTER TABLE `production_logs`
  ADD CONSTRAINT `production_logs_ibfk_1` FOREIGN KEY (`mac_address`) REFERENCES `mac_address` (`mac_address`),
  ADD CONSTRAINT `production_logs_ibfk_2` FOREIGN KEY (`tech_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `production_logs_ibfk_3` FOREIGN KEY (`product_unit_id`) REFERENCES `products` (`product_unit_id`),
  ADD CONSTRAINT `production_logs_ibfk_4` FOREIGN KEY (`sub_product_unit_id`) REFERENCES `sub_products` (`sub_product_unit_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_family_id`) REFERENCES `product_family` (`id`);

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
-- Constraints for table `sub_products`
--
ALTER TABLE `sub_products`
  ADD CONSTRAINT `sub_products_ibfk_1` FOREIGN KEY (`product_family_id`) REFERENCES `product_family` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
